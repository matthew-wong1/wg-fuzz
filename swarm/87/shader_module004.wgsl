struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 12u)];
    var var_1 = ~u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(513f, var_0.a.x, -101f, -692f) + vec4<f32>(-1000f, var_0.a.x, var_0.a.x, -112f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -988f, var_0.a.x) * vec4<f32>(801f, -305f, 572f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1079f, var_0.a.x, -541f, 545f))))), vec4<f32>(-540f, _wgslsmith_f_op_f32(ceil(-1484f)), _wgslsmith_f_op_f32(trunc(503f)), var_0.a.x), !select(!vec4<bool>(true, true, true, var_0.c), !vec4<bool>(false, false, var_0.c, false), vec4<bool>(var_0.c, true, var_0.c, var_0.c)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(723f, _wgslsmith_f_op_f32(784f + -1069f), 359f, _wgslsmith_f_op_f32(sign(-948f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-600f, -2032f, -1000f, -688f), vec4<f32>(437f, var_0.a.x, -171f, var_0.a.x), true)))))));
    var var_3 = 2147483647i;
    let var_4 = u_input.b.x;
    return firstLeadingBit(arg_1);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x)))), _wgslsmith_f_op_f32(-759f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-426f, arg_3.a.x)), -1787f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a.x)))))), _wgslsmith_sub_i32(~reverseBits(abs(33073i)), u_input.d.x), any(vec4<bool>(!arg_3.c, arg_1, arg_1, true)));
    let var_1 = global0[_wgslsmith_index_u32(1195u, 12u)];
    var var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a.x, 899f, 545f, -1508f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(539f, arg_2.a.x, var_0.a.x, var_0.a.x))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.a.x, var_1.a.x, -717f, arg_3.a.x)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.a.x, -1176f, _wgslsmith_f_op_f32(-var_0.a.x))))), 20469i, u_input.a.x <= u_input.b.x);
    return var_0.b;
}

fn func_1() -> vec4<u32> {
    let var_0 = ~(-func_3(vec3<bool>(true, true, true), true, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(677f, -800f, 177f), vec3<f32>(130f, 1987f, 970f), false)), 2147483647i, true), global0[_wgslsmith_index_u32(select(abs(u_input.a.x), func_2(-835f, 1u), true), 12u)]));
    var var_1 = vec2<u32>(~(select(u_input.b.x, u_input.b.x, false) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(40646u, u_input.a.x, u_input.a.x), u_input.a) % 32u)) >> (u_input.b.x % 32u), 41041u);
    var var_2 = vec2<bool>(false, any(vec4<bool>(true, true, true, true)));
    let var_3 = ~(~(~(u_input.a >> (vec3<u32>(4294967295u, var_1.x, 0u) % vec3<u32>(32u)))));
    return ~vec4<u32>(~var_3.x << (u_input.b.x % 32u), ~u_input.b.x, min(min(19955u, min(u_input.b.x, u_input.b.x)), u_input.a.x), ~40700u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    var var_0 = ~(~min(vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 9930u), u_input.a.yy), firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), vec4<u32>(firstLeadingBit(4294967295u), ~u_input.a.x, countOneBits(u_input.a.x), ~34263u)));
    var_0 = select(_wgslsmith_mult_vec4_u32(func_1(), _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, var_0.x, ~0u, 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(39113u, var_0.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 20794u, var_0.x, 47894u) >> (vec4<u32>(4294967295u, u_input.b.x, var_0.x, var_0.x) % vec4<u32>(32u))))), abs(func_1()) ^ reverseBits(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 4294967295u) & countOneBits(vec4<u32>(4294967295u, u_input.b.x, var_0.x, 57596u))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), !all(vec4<bool>(true, false, true, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1722f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1165f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-989f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1055f)) + _wgslsmith_f_op_f32(-1179f * -116f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3136f + -624f)))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(663f, -483f))), -992f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1392f)), 814f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(269f, -1000f, -1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-561f, -542f, -219f))))))));
    var_0 = vec4<u32>(1u, 0u, 0u, 0u);
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~min(u_input.a.x, u_input.b.x)), min(min(_wgslsmith_sub_u32(u_input.b.x, 20171u), _wgslsmith_div_u32(9553u, var_0.x)), u_input.a.x)));
}

