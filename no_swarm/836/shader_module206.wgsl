struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = firstTrailingBit(29737u);
    var var_1 = Struct_2(vec4<bool>(false || all(vec3<bool>(false, true, true)), select(any(vec2<bool>(false, true)), false, true), true, true), vec4<i32>(u_input.a.x, ~abs(_wgslsmith_div_i32(1i, u_input.a.x)), max(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, -54746i, u_input.a.x, -31962i)), -u_input.a.x), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, false)), -vec4<i32>(18160i, u_input.a.x, u_input.a.x, 2147483647i))), ~vec3<i32>(u_input.a.x, -u_input.a.x, _wgslsmith_sub_i32(-1i >> (u_input.b % 32u), 16606i)), -1000f, vec2<bool>(false, false));
    var var_2 = select(var_1.a.zy, vec2<bool>(any(!select(var_1.a, var_1.a, true)), (-16919i == u_input.a.x) | (_wgslsmith_add_u32(u_input.b, u_input.b) <= (u_input.b << (4430u % 32u)))), any(!select(!var_1.e, select(vec2<bool>(false, true), vec2<bool>(var_1.e.x, true), var_1.e), all(vec3<bool>(false, false, false)))));
    var_0 = ~reverseBits(countOneBits(~1u));
    var var_3 = Struct_4(u_input.b, !vec2<bool>(!(u_input.b != u_input.b), -233f < _wgslsmith_f_op_f32(max(var_1.d, 926f))), u_input.b);
    return true;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = -5273i;
    var_0 = u_input.a.x;
    let var_1 = !func_3();
    var_0 = ~(-44649i);
    let var_2 = Struct_4(~(~(~1553u) ^ u_input.b), vec2<bool>(all(!select(vec3<bool>(true, false, false), vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, false))), select(any(select(vec3<bool>(false, false, var_1), vec3<bool>(var_1, true, var_1), var_1)), !any(vec3<bool>(var_1, var_1, true)), false)), ~(~arg_0 << (arg_0 % 32u)) >> (arg_0 % 32u));
    return Struct_2(!select(vec4<bool>(var_1, true, all(vec2<bool>(var_2.b.x, var_1)), true), select(!vec4<bool>(var_1, var_1, false, var_1), select(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), vec4<bool>(var_1, false, var_2.b.x, true), vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x)), false), vec4<bool>(all(vec3<bool>(true, var_1, var_1)), all(vec3<bool>(var_1, true, var_1)), var_2.b.x | var_1, all(vec4<bool>(var_2.b.x, true, var_2.b.x, false)))), vec4<i32>(reverseBits(u_input.a.x & 83i) | u_input.a.x, -35454i, _wgslsmith_div_i32(1i, u_input.a.x), ~u_input.a.x), -(reverseBits(u_input.a) & ~_wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f - _wgslsmith_f_op_f32(step(731f, -172f)))), 703f)), var_2.b);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = func_2(37787u);
    var var_1 = countOneBits(1u);
    var_1 = u_input.b;
    var_1 = _wgslsmith_mod_u32(u_input.b << (_wgslsmith_div_u32(1u, ~u_input.b) % 32u), ~firstTrailingBit(_wgslsmith_mult_u32(u_input.b, u_input.b)));
    let var_2 = func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(54838u, 21971u, u_input.b), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(4294967295u, u_input.b, 1u)), vec3<u32>(u_input.b >> (35254u % 32u), 0u, 4294967295u)))).a.xwz;
    return select(!select(var_2.x || var_0.a.x, !var_0.e.x, var_0.e.x) || var_0.a.x, func_2(~(~u_input.b)).e.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(true, func_1(Struct_1(-18276i, vec4<f32>(1721f, -1049f, -1000f, -946f), false, vec4<i32>(u_input.a.x, u_input.a.x, 62645i, 33678i)))));
    let var_1 = all(vec4<bool>(true, true, true, !(!any(vec2<bool>(false, false)))));
    var var_2 = Struct_3(Struct_1(-(~firstTrailingBit(u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(522f, 601f, 1144f, 372f))), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_1, true, var_1), false)))), func_2(16862u).a.x || (func_3() & false), abs(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -25418i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)))), -max(u_input.a.yx, select(_wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(30217i, 36366i)), ~u_input.a.zx, true)));
    let var_3 = var_2.a;
    var_2 = Struct_3(Struct_1(max(min(25172i, 1i), 2147483647i), var_2.a.b, !all(select(vec3<bool>(var_0.x, var_2.a.c, false), vec3<bool>(var_0.x, var_3.c, false), var_1)), max(-_wgslsmith_mult_vec4_i32(var_3.d, var_2.a.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, var_3.d.x), select(var_3.d, var_2.a.d, vec4<bool>(false, true, var_1, true)), var_3.d & var_3.d))), firstLeadingBit(_wgslsmith_div_vec2_i32(var_3.d.zy, _wgslsmith_sub_vec2_i32(-u_input.a.zz, u_input.a.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstTrailingBit(u_input.b), ~12182u) << (min(countOneBits(vec2<u32>(u_input.b, u_input.b)), min(vec2<u32>(u_input.b, 18916u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(52623u, u_input.b), vec2<u32>(u_input.b, u_input.b)))) % vec2<u32>(32u)), u_input.b, var_3.b.xyw, var_3.b.zw, var_3.b.x);
}

