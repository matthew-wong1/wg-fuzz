struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = Struct_1(arg_1.d, -7500i, ~(-2147483647i), any(select(vec2<bool>(true == arg_1.a, true), vec2<bool>(true, true), arg_1.a)));
    var_0 = Struct_1(~u_input.b.x == ~(~1u), 37576i, min(countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -1i, 39911i, -1i), vec4<i32>(-2147483647i, arg_1.c, arg_1.c, 2147483647i)), arg_1.b)), abs(~(~1i))), all(vec4<bool>(true, arg_1.a, all(!vec3<bool>(false, true, var_0.d)), false)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1707f)), -248f, _wgslsmith_f_op_f32(f32(-1f) * -1172f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1482f, -116f, -819f) * vec3<f32>(-201f, 1520f, 713f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -792f), -581f))));
    var_0 = Struct_1(!((~arg_2.x <= 1u) | var_0.a), ~(-1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.b, arg_1.c), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, -5481i, 24347i), vec3<i32>(var_0.c, 0i, arg_0))), true);
    var var_2 = Struct_2(select(!vec4<bool>(true, all(vec2<bool>(true, true)), var_0.a || false, var_0.d), vec4<bool>(-407i >= _wgslsmith_div_i32(-2147483647i, arg_0), (var_0.a && arg_1.a) && all(vec3<bool>(false, arg_1.a, var_0.d)), all(select(vec3<bool>(false, var_0.a, true), vec3<bool>(true, true, var_0.d), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -362f) != _wgslsmith_f_op_f32(var_1.x + 841f)), true), 1i, all(!vec2<bool>(u_input.c <= u_input.d, true)), arg_1);
    return -4177i;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> vec4<i32> {
    var var_0 = Struct_2(!select(!(!vec4<bool>(true, arg_0, true, arg_3)), select(select(vec4<bool>(true, arg_3, arg_0, arg_0), vec4<bool>(arg_0, false, true, true), arg_0), select(vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(arg_3, arg_3, arg_3, true), arg_0), !arg_3), false), arg_1.x, !(!(arg_1.x >= ~12441i)), Struct_1(true, _wgslsmith_div_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, i32(-1i) * -32052i, -1i), 2147483647i), min(func_3(-1i, Struct_1(arg_0, -1i, -788i, arg_0), _wgslsmith_add_vec4_u32(u_input.a, u_input.a)), arg_1.x), true || arg_3));
    let var_1 = arg_3;
    let var_2 = _wgslsmith_add_vec2_i32(-vec2<i32>(-_wgslsmith_div_i32(-63917i, arg_1.x), i32(-1i) * -var_0.d.b), ~vec2<i32>(_wgslsmith_clamp_i32(~arg_1.x, ~2147483647i, -arg_1.x), -27803i));
    var_0 = Struct_2(var_0.a, ~(-5456i), false, var_0.d);
    let var_3 = var_0.d;
    return -(_wgslsmith_clamp_vec4_i32(arg_1, arg_1, vec4<i32>(firstLeadingBit(var_0.b), ~42370i, -var_3.c, max(1i, 14524i))) ^ reverseBits(vec4<i32>(-var_0.d.c, ~0i, ~(-38710i), -28174i)));
}

fn func_1(arg_0: vec3<bool>) -> vec3<i32> {
    let var_0 = func_2(!arg_0.x, -vec4<i32>(-70121i, 0i, firstLeadingBit(1i), _wgslsmith_mult_i32(1286i, -2789i)), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mult_u32(34391u, 0u)) >> (u_input.a.x % 32u), u_input.d), true);
    let var_1 = 1u << (u_input.c % 32u);
    var var_2 = max(u_input.a, vec4<u32>(var_1, ~u_input.a.x, 0u, _wgslsmith_div_u32(firstLeadingBit(var_1), ~u_input.d))) | firstLeadingBit(firstLeadingBit(~vec4<u32>(0u, 14561u, 1u, 0u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2142f, -198f), _wgslsmith_f_op_f32(step(984f, 168f)))))) <= _wgslsmith_f_op_f32(f32(-1f) * -1335f), firstLeadingBit(var_0.x), _wgslsmith_add_i32(-var_0.x, -2147483647i), arg_0.x);
    var var_4 = var_3.b;
    return -var_0.zwy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~select(~(-vec3<i32>(-7543i, 40580i, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(10049i, -77688i, -28497i), func_1(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), !vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), ~u_input.a.x >= _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(1u, 4294967295u)), all(vec4<bool>(true, false, true, false))), -select(~1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-13532i, -2147483647i, 0i), vec3<i32>(27585i, 2147483647i, 47488i)), vec3<i32>(1i, 1i, 1i)), true), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(false, true, false))), true)));
    var var_1 = _wgslsmith_mod_i32(-30120i, ~34248i);
    let var_2 = Struct_2(!vec4<bool>(!var_0.b.x, true, all(var_0.b), true), ~countOneBits(abs(var_0.a.x)), false | select(var_0.b.x, any(vec3<bool>(false, var_0.d.x, var_0.b.x)), select(false, var_0.b.x, false)), Struct_1(false, var_0.c, -18424i, true));
    var_1 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_add_vec2_i32(firstLeadingBit(var_0.a.zy), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.d.b, -1i), var_0.a.zy) & vec2<i32>(var_2.d.c, -1i)), true), var_0.a.yy);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(741f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-295f, 1580f), _wgslsmith_f_op_f32(f32(-1f) * -950f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -2122f) - -2765f)), _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1165f * 910f), _wgslsmith_f_op_f32(max(-1000f, 175f)), false))))));
    var_1 = var_2.d.b;
    let var_4 = select(var_2.a, select(var_2.a, var_2.a, select(!select(vec4<bool>(true, var_0.b.x, var_0.d.x, false), var_2.a, vec4<bool>(false, false, false, var_0.d.x)), var_2.a, true)), select(vec4<bool>(var_0.d.x, var_0.b.x, !(!var_2.a.x), any(select(var_0.b.xz, vec2<bool>(true, false), true))), !var_2.a, var_2.a));
    var var_5 = var_0.a.xx;
    let var_6 = firstTrailingBit(-10286i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x >> (_wgslsmith_mod_u32(~u_input.d, u_input.d) % 32u), select(4294967295u, abs(~u_input.d | u_input.c), !any(vec2<bool>(true, false))), vec4<u32>(u_input.d, u_input.c, min(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 70958u), ~u_input.a.xy)), _wgslsmith_clamp_u32(min(14881u, u_input.d), ~u_input.a.x, 19254u)), u_input.b);
}

