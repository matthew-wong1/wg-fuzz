struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = global2[_wgslsmith_index_u32(abs(4294967295u), 4u)];
    global2 = array<Struct_1, 4>();
    var var_1 = global2[_wgslsmith_index_u32(max(1u, 1u), 4u)];
    var_1 = global2[_wgslsmith_index_u32(1u, 4u)];
    var var_2 = 1607u;
    return reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(~69007u, 0u), max(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(31423u, 4294967295u)), firstTrailingBit(vec2<u32>(16453u, 9502u)))));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = reverseBits(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(min(0u, 213u), 1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4294967295u), func_3(899f))));
    global2 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1636f, _wgslsmith_f_op_f32(ceil(-876f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1507f)), arg_0.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.e, _wgslsmith_f_op_vec3_f32(arg_0.e - arg_0.e))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.e - arg_0.e) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1255f, arg_0.e.x, arg_0.e.x) + arg_0.e)))))));
    var_1 = arg_0.e;
    let var_2 = arg_0;
    return arg_0.c;
}

fn func_1() -> vec2<bool> {
    let var_0 = !vec3<bool>(true, true, all(vec4<bool>(func_2(Struct_1(174f, true, false, vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), vec3<f32>(-175f, 796f, 1033f))), u_input.b >= 65332i, true, any(vec3<bool>(true, false, false)))));
    let var_1 = select(select(vec3<bool>(false, true, any(vec2<bool>(var_0.x, var_0.x))), vec3<bool>(var_0.x | func_2(global2[_wgslsmith_index_u32(17504u, 4u)]), var_0.x, true), var_0), var_0, var_0);
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    global1 = 2240u;
    return vec2<bool>(any(var_1), select(true, all(select(select(vec3<bool>(var_1.x, true, var_0.x), global0[_wgslsmith_index_u32(9943u, 15u)], var_0), select(vec3<bool>(true, var_1.x, var_1.x), var_0, var_0.x), var_1.x)), abs(4294967295u) > ~firstTrailingBit(66499u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<f32>) -> StorageBuffer {
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), arg_3.x), _wgslsmith_div_f32(309f, _wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.x, arg_3.x))), -1014f, any(vec3<bool>(true, true, true))))) + arg_3);
    let var_2 = true;
    global0 = array<vec3<bool>, 15>();
    let var_3 = global2[_wgslsmith_index_u32(min(arg_1.x, func_3(arg_3.x).x), 4u)];
    return StorageBuffer(_wgslsmith_clamp_vec2_i32(-u_input.a, _wgslsmith_clamp_vec2_i32((u_input.a ^ var_3.d.xy) ^ _wgslsmith_div_vec2_i32(var_3.d.zx, vec2<i32>(38954i, u_input.a.x)), vec2<i32>(32868i, u_input.a.x) ^ max(var_3.d.xx, u_input.a), firstTrailingBit(reverseBits(u_input.a))), u_input.a | (-vec2<i32>(u_input.b, 8799i) | var_3.d.xx)), vec4<f32>(_wgslsmith_f_op_f32(-var_3.e.x), -1015f, _wgslsmith_f_op_f32(exp2(var_3.e.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a)))))), countOneBits(vec2<i32>(2147483647i, 1i)), abs(firstTrailingBit(vec4<i32>(var_3.d.x, max(var_3.d.x, 31485i), abs(-1i), u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global0 = array<vec3<bool>, 15>();
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(976u, 1u)), 4u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.e.x)), _wgslsmith_f_op_f32(-1392f * -1390f), _wgslsmith_f_op_f32(floor(1000f)), var_1.e.x) - vec4<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x + var_1.e.x) - _wgslsmith_f_op_f32(min(-310f, var_1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e.x, var_1.e.x)) + _wgslsmith_f_op_f32(max(var_1.e.x, 247f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2145f, var_1.a))))) + vec4<f32>(_wgslsmith_f_op_f32(round(-431f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e.x - 204f))))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-280f, -1207f)))));
    var var_3 = _wgslsmith_f_op_f32(round(var_2.x));
    let var_4 = true;
    let x = u_input.a;
    s_output = func_4(select(select(!vec2<bool>(var_1.b, true), func_1(), !all(global0[_wgslsmith_index_u32(4294967295u, 15u)])), vec2<bool>(_wgslsmith_f_op_f32(max(var_2.x, -996f)) < var_1.a, func_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 21473u), 4u)])), !(0i <= _wgslsmith_dot_vec3_i32(var_1.d, var_1.d))), vec4<u32>(4294967295u, 0u, ~1u, 23121u), firstLeadingBit(~firstTrailingBit(23143u) & ~countOneBits(4294967295u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(405f, var_1.e.x, 1372f, 115f)))))));
}

