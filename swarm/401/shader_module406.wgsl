struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_sub_i32(u_input.a, 0i);
    var var_2 = 14633i;
    var_2 = u_input.a;
    let var_3 = 0i;
    return _wgslsmith_mod_vec2_i32(abs(_wgslsmith_div_vec2_i32(-vec2<i32>(-16755i, -30680i), vec2<i32>(u_input.c, 1i) | vec2<i32>(5886i, var_3))) & -vec2<i32>(min(0i, -1i), ~1i), ~(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.a, u_input.c))));
}

fn func_4(arg_0: vec2<i32>) -> i32 {
    var var_0 = u_input.b ^ ~vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(12854u, _wgslsmith_mod_u32(u_input.b.x, 1u)), u_input.b.x);
    var var_1 = arg_0.x;
    let var_2 = var_0.zz;
    var_0 = ~(~u_input.b);
    let var_3 = var_0.x;
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(6709i, _wgslsmith_add_i32(u_input.a, arg_0.x)), _wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, -58335i), arg_0), max(vec2<i32>(arg_0.x, -2147483647i), arg_0)), vec2<i32>(1i, _wgslsmith_clamp_i32(min(arg_0.x, u_input.c), ~5977i, -1i))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> i32 {
    let var_0 = true || !(!(firstTrailingBit(1u) >= 85945u));
    var var_1 = Struct_2(Struct_1(vec4<bool>(true, all(select(vec4<bool>(false, var_0, false, false), vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, var_0, true, var_0))), var_0, reverseBits(u_input.c) >= -arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1363f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(395f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1676f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.xwy, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1216f, 439f, -351f), vec3<f32>(arg_2.x, -258f, 1524f)))))));
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_add_i32(func_4(_wgslsmith_mod_vec2_i32(~vec2<i32>(-4982i, 1i), firstTrailingBit(func_3(Struct_2(var_1.a, arg_2.wyx))))), -47334i);
    var_1 = Struct_2(Struct_1(var_1.a.a), _wgslsmith_f_op_vec3_f32(exp2(arg_2.wyy)));
    return u_input.c;
}

fn func_5(arg_0: i32) -> Struct_2 {
    var var_0 = true || !(2612f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(928f, 1000f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -2100f)));
    var_0 = !(!(-2147483647i > _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, u_input.c, 11591i), arg_0)));
    var var_1 = select(select(select(vec4<bool>(true, any(vec3<bool>(true, true, false)), true, 0i >= arg_0), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, false)), true, all(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, true, true)))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), false), !select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(all(vec2<bool>(true, true)), true, all(vec4<bool>(false, false, false, true)), all(vec4<bool>(false, false, true, false)))), select(select(vec4<bool>(u_input.b.x != u_input.b.x, true, false, all(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), false), vec4<bool>(false, select(u_input.c <= u_input.c, all(vec2<bool>(true, false)), any(vec2<bool>(false, true))), false, false), all(vec2<bool>(true, false)) && true));
    return Struct_2(Struct_1(!vec4<bool>(var_1.x, var_1.x || var_1.x, true, false)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(140f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(744f + -623f), _wgslsmith_div_f32(129f, 453f))), -303f));
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(~(func_2(-vec4<i32>(1i, u_input.c, u_input.a, 15650i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-473f, 454f, -1000f, -304f) * vec4<f32>(-1865f, -1411f, 375f, -154f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-685f, -325f, 1462f, -839f)))) >> (8610u % 32u)));
    var var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.b.x, u_input.b.x, ~u_input.b.x), ~vec3<u32>(u_input.b.x, 1u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)));
    let var_2 = true;
    let var_3 = false;
    var_1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_1.x, reverseBits(4294967295u)), abs(vec3<u32>(var_1.x, u_input.b.x, 49405u)) ^ vec3<u32>(var_1.x, u_input.b.x, 1u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 4294967295u, 20419u), vec3<u32>(0u, 9298u, u_input.b.x)), u_input.b, select(!vec3<bool>(true, var_0.a.a.x, true), var_0.a.a.wxz, select(true, var_0.a.a.x, var_0.a.a.x))), ~min(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b) | select(~vec3<u32>(var_1.x, 0u, 1u), vec3<u32>(0u, var_1.x, 26931u), func_5(u_input.c).a.a.zwy));
    return Struct_3(var_0.a.a.wy, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.x, 612f)) + func_5(u_input.c).b.x), _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_div_f32(var_0.b.x, -1000f)))), ~(-29393i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(abs(u_input.c), countOneBits(countOneBits(u_input.a)), u_input.c);
    let var_1 = func_1();
    var var_2 = select(max(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 56957u, u_input.b.x), vec4<u32>(1630u, 1u, 29221u, 2860u)), vec4<u32>(1u, 7746u, u_input.b.x, u_input.b.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(14986u, 20244u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 39458u, 43532u, 52973u))) | min(_wgslsmith_mult_vec4_u32(~vec4<u32>(2372u, 46612u, 0u, 0u), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), firstTrailingBit(vec4<u32>(4294967295u, 1u, 0u, 21352u))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 0u), ~vec4<u32>(27177u, 0u, 4784u, u_input.b.x)), vec4<u32>(~_wgslsmith_div_u32(u_input.b.x, 4294967295u), ~u_input.b.x, _wgslsmith_div_u32(1u, min(1u, u_input.b.x)), 4294967295u)), false);
    var var_3 = var_1.b.x;
    var_3 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, var_0, 1u, func_5(var_1.c | -2147483647i).b.x, ~var_0);
}

