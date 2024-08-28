struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(634f - -212f))) * _wgslsmith_f_op_f32(sign(-1131f))), true);
    var var_1 = var_0.b;
    let var_2 = Struct_1(~(~(~_wgslsmith_mult_u32(16699u, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, var_0.a))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -970f) + vec2<f32>(var_0.a, var_0.a)))))));
    return -977f;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-835f, _wgslsmith_f_op_f32(-940f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f * 657f))), -794f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1780f, _wgslsmith_f_op_f32(abs(778f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-120f, -1151f, -1792f), vec3<f32>(758f, 268f, 452f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1290f, 311f, -409f) + vec3<f32>(-1000f, 1000f, -1192f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1977f, 984f, -987f)))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)))), !vec3<bool>(true, any(vec2<bool>(true, true)), true)));
    var var_2 = u_input.a.x;
    return Struct_1(firstLeadingBit(11946u), var_1.yy);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec4<f32> {
    var var_0 = func_2();
    let var_1 = ~(min(firstLeadingBit(vec3<u32>(20530u, 0u, arg_1.a)) >> (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, arg_1.a, arg_1.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(1u, 45221u, arg_1.a)))) & vec3<u32>(1u, var_0.a, _wgslsmith_mod_u32(arg_1.a, 41835u) ^ 0u));
    var_0 = Struct_1(~(~(~select(var_1.x, 4294967295u, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2060f, arg_1.b.x)))) * _wgslsmith_f_op_vec2_f32(min(var_0.b, var_0.b))));
    var var_2 = func_2();
    var_2 = arg_1;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1216f), 265f, arg_0.a, _wgslsmith_f_op_f32(trunc(656f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-508f, arg_0.a, 1000f, arg_0.a))) - _wgslsmith_div_vec4_f32(vec4<f32>(943f, var_0.b.x, var_0.b.x, -133f), vec4<f32>(var_2.b.x, -300f, -1167f, -151f))), vec4<f32>(1495f, arg_0.a, _wgslsmith_f_op_f32(-631f - 1350f), _wgslsmith_div_f32(-688f, 1904f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 1159f, 295f, 2104f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a, arg_0.a, -198f, -1000f))), vec4<f32>(2170f, -1526f, var_2.b.x, 932f))), true))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    let var_0 = abs(reverseBits(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(arg_3.a, u_input.b, arg_3.a, 0u)), vec4<u32>(1u, arg_3.a, arg_1, u_input.b) << (vec4<u32>(u_input.b, 0u, u_input.b, 53234u) % vec4<u32>(32u))))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_1, arg_1, arg_3.a, arg_3.a)), ~vec4<u32>(1u, 4294967295u, 78331u, 38873u)) ^ (vec4<u32>(17046u, 4294967295u, arg_3.a, arg_3.a) >> (select(vec4<u32>(1u, arg_1, arg_1, 1u), vec4<u32>(arg_1, 2129u, 4294967295u, u_input.b), arg_2.b) % vec4<u32>(32u))), vec4<u32>(arg_1, 4294967295u, ~func_2().a, 1u)) % vec4<u32>(32u));
    let var_1 = u_input.a;
    var var_2 = false;
    var var_3 = u_input.a.x;
    let var_4 = ~var_0;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(max(var_1.x, 20780i), var_1.x, 1i), max(vec3<i32>(-39195i, _wgslsmith_mult_i32(47377i, u_input.a.x), var_1.x), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-11344i, u_input.a.x, var_1.x), vec3<i32>(16642i, -2147483647i, -2147483647i)))) << (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_u32(u_input.b, ~1u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(-394f)), 1199f))), vec2<f32>(1f, -670f)));
    var var_1 = ~(-u_input.a.x);
    var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-var_0.b));
    var_0 = Struct_1(17362u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1121f, 1375f)) + _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b)))));
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1085f, var_0.b.x, var_0.b.x, var_0.b.x) * vec4<f32>(445f, -211f, var_0.b.x, var_0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 347f))), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(-237f, true), Struct_1(1u, vec2<f32>(var_0.b.x, -120f)), any(vec2<bool>(false, true)), false))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, 441f, var_0.b.x) - vec4<f32>(var_0.b.x, var_0.b.x, -1308f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-525f, -1042f, var_0.b.x, var_0.b.x), vec4<f32>(-435f, -168f, var_0.b.x, 1077f)))))), ~var_0.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(291f)), var_0.b.x) * -803f), false), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 1u);
}

