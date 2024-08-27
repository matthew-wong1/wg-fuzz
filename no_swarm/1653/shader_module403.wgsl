struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 21>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    var var_0 = arg_1.x;
    var var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(u_input.b), -1i | u_input.e), u_input.c.xy) & ~(u_input.d.x & _wgslsmith_sub_i32(-45135i, -15206i));
    let var_2 = Struct_1(vec4<u32>(79058u, arg_1.x, 0u, firstTrailingBit(~61120u)) ^ ~firstLeadingBit(select(vec4<u32>(arg_1.x, 0u, 7676u, 59338u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 46775u), true)), -14599i);
    global1 = array<vec4<f32>, 21>();
    let var_3 = u_input.c.yz;
    return 1295f;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> vec4<u32> {
    global0 = 215f;
    let var_0 = -473f;
    global1 = array<vec4<f32>, 21>();
    global0 = _wgslsmith_f_op_f32(func_3(((59433i ^ abs(arg_1)) >> (~firstLeadingBit(arg_0.a.x) % 32u)) >= _wgslsmith_mult_i32(arg_0.b, arg_1), arg_0.a.zww));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, 1u) << (arg_0.a.x % 32u), ~(arg_0.a.x | arg_0.a.x)), vec2<u32>(_wgslsmith_div_u32(~arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 0u))), arg_0.a.x | arg_0.a.x)), 21u)];
    return ~countOneBits(~(~vec4<u32>(arg_0.a.x, 1457u, arg_0.a.x, arg_0.a.x)) & vec4<u32>(min(arg_0.a.x, 0u), arg_0.a.x, ~0u, 1u));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> u32 {
    global0 = -1202f;
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -228f);
    var var_1 = Struct_1(max(_wgslsmith_add_vec4_u32(func_2(arg_0, abs(arg_0.b), arg_0.b, vec4<bool>(false, false, true, false)), arg_0.a & min(arg_0.a, arg_0.a)), select(arg_0.a, arg_0.a, true)), 1i);
    var var_2 = arg_0;
    var var_3 = vec2<i32>(max(_wgslsmith_div_i32(var_2.b, arg_0.b), min(arg_0.b, arg_0.b)), -16980i);
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.zy;
    global1 = array<vec4<f32>, 21>();
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~(90603u >> (1u % 32u)), countOneBits(28194u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 22342u), vec2<u32>(34213u, 4294967295u))), ~(~21009u)), vec4<u32>(firstLeadingBit(1u), 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(16758u, 0u)), 1u)), 1i);
    global1 = array<vec4<f32>, 21>();
    var var_2 = ~func_1(var_1, var_1.a.x, min(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), abs(u_input.e)) << (_wgslsmith_sub_u32(var_1.a.x, abs(11435u)) % 32u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(773f - 391f), _wgslsmith_f_op_f32(1275f + 218f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(2041f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f))), -1371f);
}

