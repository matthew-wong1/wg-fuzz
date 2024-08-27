struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_1(any(vec4<bool>(arg_0.a.x < arg_0.a.x, select(all(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, false, true)), false), true, -355f > _wgslsmith_f_op_f32(step(988f, -172f)))), 0i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -491f)) * -1471f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(2178f))))), false)));
    let var_2 = Struct_1(!all(!(!vec3<bool>(var_0.a, false, false))), var_0.b);
    var var_3 = u_input.b.yy;
    var var_4 = u_input.b.x;
    return (var_2.a == true) | var_0.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = all(vec2<bool>(!(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) >= 2147483647i), false));
    let var_1 = reverseBits(4294967295u);
    var var_2 = Struct_3(Struct_1(false, min(~(-13557i), _wgslsmith_div_i32(~(-46066i), select(u_input.a.x, u_input.c, var_0)))));
    var var_3 = ~var_2.a.b;
    var_2 = Struct_3(Struct_1(false, _wgslsmith_mult_i32(9234i, _wgslsmith_add_i32(abs(-8355i), _wgslsmith_mod_i32(-31545i, var_2.a.b)))));
    return Struct_1(!any(select(vec4<bool>(var_2.a.a, true, true, true), vec4<bool>(false, true, var_0, false), func_3(Struct_2(vec3<i32>(u_input.a.x, 3914i, u_input.a.x))))), select(_wgslsmith_dot_vec2_i32(u_input.a.ww, countOneBits(~vec2<i32>(-11368i, 2147483647i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.a.b, var_2.a.b, 0i, var_2.a.b), _wgslsmith_mod_vec4_i32(vec4<i32>(4923i, u_input.a.x, u_input.a.x, 6625i), ~vec4<i32>(u_input.a.x, u_input.c, 2147483647i, var_2.a.b))), !var_0));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = 24509i ^ (func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1061f), 216f, arg_0.a))).b | (-(0i << (1u % 32u)) << (select(_wgslsmith_sub_u32(104144u, 69145u), u_input.b.x, all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a))) % 32u)));
    let var_1 = !all(!select(vec2<bool>(true, true), vec2<bool>(true, arg_0.a), false));
    var var_2 = Struct_4(Struct_2(u_input.a.wzy), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(180f * _wgslsmith_f_op_f32(round(1990f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1054f)), _wgslsmith_div_f32(-461f, -633f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1338f + 1477f)))), vec4<bool>(true, arg_0.a, (9902u >= reverseBits(u_input.b.x)) == !(!var_1), false));
    var_2 = Struct_4(Struct_2(vec3<i32>(-33157i, -2147483647i, ~(53106i | arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_2.b, var_2.b)), _wgslsmith_div_vec3_f32(var_2.b, vec3<f32>(var_2.b.x, 1424f, 235f)), true)), vec3<f32>(var_2.b.x, -135f, _wgslsmith_div_f32(var_2.b.x, -307f))))), select(vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.a, var_1, arg_0.a), var_1)), false, true, var_1), select(var_2.c, vec4<bool>(true, arg_0.a, false, arg_0.a), true), select(select(vec4<bool>(var_1, false, var_2.c.x, arg_0.a), !var_2.c, true), !vec4<bool>(false, var_1, arg_0.a, var_1), vec4<bool>(true, u_input.b.x != 27838u, false, all(vec2<bool>(false, var_1))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.b.x, 588f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.xy) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(711f, var_2.b.x), vec2<f32>(var_2.b.x, -1615f)))))))));
    return 1u;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = (_wgslsmith_dot_vec4_u32(vec4<u32>(~70629u, 21808u, u_input.b.x, u_input.b.x), vec4<u32>(_wgslsmith_add_u32(37542u, u_input.b.x), 11862u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x)) | (24201u & u_input.b.x)) <= u_input.b.x;
    var var_1 = arg_0.a;
    let var_2 = (_wgslsmith_dot_vec4_u32(vec4<u32>(20539u, 4294967295u, 59340u, 0u) >> (~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u) % vec4<u32>(32u)), u_input.b) << (u_input.b.x % 32u)) << (abs(select(func_4(func_2(-321f)), ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), func_3(arg_0) & true)) % 32u);
    let var_3 = false;
    var var_4 = 1253f;
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1712f, -1603f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(u_input.a.xzw, vec3<i32>(u_input.c, -10999i, -1i))));
    let var_1 = Struct_4(Struct_2(abs(vec3<i32>(~var_0.b, _wgslsmith_add_i32(1i, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(0i, u_input.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-175f, -301f, var_0.a)))), -1606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(176f, _wgslsmith_f_op_f32(step(-1000f, 575f)))))), !select(select(vec4<bool>(true, true, false, var_0.a), !vec4<bool>(false, true, var_0.a, var_0.a), !var_0.a), select(select(vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(true, var_0.a, var_0.a, false)), vec4<bool>(true, var_0.a, false, var_0.a), !vec4<bool>(var_0.a, false, true, var_0.a)), !var_0.a));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))), 235f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(var_1.b.x, var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_1.b.x - -892f)))) * var_1.b), ~reverseBits(var_1.a.a.x), u_input.b.x, var_2, _wgslsmith_f_op_f32(f32(-1f) * -292f));
}

