struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

var<private> global1: i32;

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(1i, 6236i, i32(-2147483648), 0i), vec4<i32>(-67844i, 0i, -42593i, 0i));

var<private> global3: array<bool, 25>;

var<private> global4: array<f32, 32> = array<f32, 32>(629f, -483f, 1000f, -1309f, -181f, -139f, -1317f, 1617f, 1000f, -674f, 509f, -571f, -930f, -1438f, -166f, 155f, -762f, 465f, -621f, 649f, -804f, 2054f, 1259f, -1438f, 439f, 1487f, 354f, 996f, 1384f, 226f, 1653f, 789f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, arg_0.b.x, arg_0.e, arg_0.d.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 562f, -540f, 1749f) + vec4<f32>(-270f, arg_0.a.x, global4[_wgslsmith_index_u32(20972u, 32u)], arg_0.a.x)), vec4<f32>(global4[_wgslsmith_index_u32(14644u, 32u)], 1108f, 241f, 945f)))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)))), arg_0.e, _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(1u, 32u)])), var_0.x));
    let var_2 = vec3<u32>(select(1u, firstLeadingBit(~1u), (arg_0.c.x && global3[_wgslsmith_index_u32(85301u, 25u)]) | (-278f != arg_0.a.x)) >> (0u % 32u), _wgslsmith_mult_u32(~(~30446u), ~(~(~4294967295u))), 1u);
    global4 = array<f32, 32>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.zx, vec2<u32>(var_2.x, var_2.x)) ^ var_2.x, 32u)]), u_input.a, 31894i);
    return _wgslsmith_dot_vec4_i32(max(~_wgslsmith_div_vec4_i32(vec4<i32>(36590i, u_input.a, u_input.a, u_input.a), global2[_wgslsmith_index_u32(var_2.x, 2u)]), global2[_wgslsmith_index_u32(0u, 2u)]) & abs(-vec4<i32>(3945i, u_input.a, u_input.a, u_input.a) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 88795u, 87368u, var_2.x), vec4<u32>(63050u, var_2.x, 18970u, var_2.x), vec4<u32>(1u, 62197u, var_2.x, 41852u)) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, var_2.x), 2u)] ^ vec4<i32>(_wgslsmith_clamp_i32(2147483647i | var_3.c, -1i, 1i), _wgslsmith_add_i32(2147483647i, -u_input.a), u_input.a, abs(_wgslsmith_add_i32(var_3.c, u_input.a))));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = vec4<i32>(-2147483647i, ~(func_3(Struct_2(vec2<f32>(-1179f, -184f), vec3<f32>(global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)], -1255f), global0[_wgslsmith_index_u32(4294967295u, 10u)], vec2<f32>(-1000f, global4[_wgslsmith_index_u32(1u, 32u)]), 2128f)) >> (1u % 32u)), 1i, arg_0);
    var var_1 = Struct_1(2183f, 58459i, 2147483647i);
    global4 = array<f32, 32>();
    let var_2 = ~vec4<i32>(arg_0, ~min(var_1.c, arg_0 & 0i), _wgslsmith_mod_i32(countOneBits(var_0.x), arg_0) >> (_wgslsmith_add_u32(0u, firstLeadingBit(0u)) % 32u), _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, arg_0, u_input.a), select(vec3<i32>(-27296i, arg_0, 2232i), var_0.zzy, false)), -(var_0.zxy << (vec3<u32>(0u, 1u, 4294967295u) % vec3<u32>(32u)))));
    var var_3 = global0[_wgslsmith_index_u32(0u, 10u)];
    return var_3.x;
}

fn func_1() -> u32 {
    global3 = array<bool, 25>();
    var var_0 = vec2<bool>(true, func_2(u_input.a));
    global1 = ~u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(0u, 32u)]))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(6324u, 32u)], 1313f)))))), -4731i, u_input.a);
    global4 = array<f32, 32>();
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(4294967295u << (select(~1u, 0u, -1885f < global4[_wgslsmith_index_u32(1u, 32u)]) % 32u)) >> (select(1u, abs(func_1()), global3[_wgslsmith_index_u32(max(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 40113u, 0u))), 25u)]) % 32u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 10472u), vec2<u32>(10935u, 18270u), vec2<u32>(4294967295u, 40183u)), ~(~vec2<u32>(0u, 10752u))), 32u)]), u_input.a, 0i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(64545u, 32u)])), 2147483647i, -44122i);
    var var_3 = reverseBits(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    global4 = array<f32, 32>();
    global4 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(779f)), _wgslsmith_f_op_f32(sign(var_1.a)))), 1f);
}

