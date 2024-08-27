struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(16565i, 29047i, 54617i);

var<private> global1: array<Struct_4, 1>;

var<private> global2: array<Struct_3, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global1 = array<Struct_4, 1>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1238f, _wgslsmith_f_op_f32(f32(-1f) * -2039f))), 1000f, false)))) + 1185f);
    var var_1 = ~countOneBits(vec2<u32>(4960u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u) ^ vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(1u, u_input.b))));
    var var_2 = vec2<u32>(14785u, 20309u);
    let var_3 = 800f;
    return Struct_1(all(!select(vec2<bool>(false, true), vec2<bool>(true, arg_0.a), !vec2<bool>(arg_1, false))), arg_0.b, ~(~global0.x));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    global0 = ~vec3<i32>(u_input.a ^ -9105i, 58542i, u_input.a);
    var var_0 = vec4<bool>(!(u_input.b == min(15222u, 4294967295u)), any(vec2<bool>(true, true)) && (func_2(func_2(Struct_1(false, u_input.a, 64122i), true), u_input.b <= u_input.b).a && any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), false, any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return func_2(func_2(Struct_1(var_0.x || true, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(23162i, u_input.a), global0.xx), u_input.a ^ 1i), global0.x), true), _wgslsmith_dot_vec2_u32(abs(arg_0.xy) & vec2<u32>(9742u, u_input.b), arg_0.yy) > _wgslsmith_sub_u32(~(~4294967295u), u_input.b)).a;
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = -4815i;
    let var_1 = Struct_3(func_2(Struct_1(true, 1i, -48743i), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-343f, -1028f, 1440f, -1000f) - vec4<f32>(1248f, 659f, 1388f, -792f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-250f, 970f, 249f, -467f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(667f, -606f, -983f, -270f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, -1373f, -1000f, -2533f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1846f)), _wgslsmith_div_f32(1511f, -294f), _wgslsmith_f_op_f32(floor(437f)), _wgslsmith_f_op_f32(sign(992f)))))), Struct_1(!func_3(~vec3<u32>(u_input.b, 1u, arg_0.x)), -2147483647i, global0.x), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1658f, 358f, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1403f * -426f), 278f, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1503f * -435f))))), Struct_1(true, u_input.a, 23216i));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-var_1.b.x), var_1.a, abs(_wgslsmith_clamp_u32(countOneBits(90366u), u_input.b, 45185u) >> ((457u | arg_0.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_1.d.x)) + _wgslsmith_f_op_f32(trunc(var_1.b.x))));
    global2 = array<Struct_3, 6>();
    global1 = array<Struct_4, 1>();
    return select(global0.x, reverseBits(-12613i), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(106165u, 6u)];
    var var_1 = var_0.b;
    global0 = ~vec3<i32>(min(-(~var_0.a.b), global0.x), -(-3295i | _wgslsmith_dot_vec3_i32(vec3<i32>(-31780i, 2147483647i, var_0.e.c), vec3<i32>(global0.x, 19318i, -1i))), u_input.a);
    var var_2 = !(func_1(vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b, u_input.b, 7845u)) <= (0i | abs(u_input.a)));
    var var_3 = -firstLeadingBit(-13643i);
    global1 = array<Struct_4, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), var_0.d.x, vec2<u32>(u_input.b, ~_wgslsmith_add_u32(u_input.b, 0u)), -1i);
}

