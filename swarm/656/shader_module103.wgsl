struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: Struct_1;

var<private> global2: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = !(!vec2<bool>(~50279i > arg_1, true));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, arg_2.d.x))))), global1.a.x, !global1.b.x));
    global1 = arg_2;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-662f, global1.d.x)));
    let var_2 = select(vec3<bool>(var_0.x, var_0.x, arg_2.b.x), vec3<bool>(!any(select(global1.b.xw, arg_2.b.wx, false)), all(arg_2.b.xzx), var_0.x | true), !(select(-24665i, arg_1 & arg_1, false) < 36972i));
    return ~(~(vec2<u32>(4294967295u, 0u) >> (select(vec2<u32>(34230u, global0[_wgslsmith_index_u32(u_input.a, 24u)]), vec2<u32>(0u, 58033u), global1.b.zw) % vec2<u32>(32u))) >> (abs(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_2.c), vec2<u32>(global1.c, 4294967295u)))) % vec2<u32>(32u)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(max(_wgslsmith_sub_i32(1i << (~u_input.a % 32u), firstTrailingBit(_wgslsmith_clamp_i32(-12184i, 1i, -53667i))), -2147483647i));
    let var_1 = min(var_0.a ^ abs(-1i), var_0.a) >> (1u % 32u);
    global0 = array<u32, 24>();
    var var_2 = var_1;
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, -387f, global1.a.x) + _wgslsmith_div_vec3_f32(global1.a, vec3<f32>(global1.a.x, global1.d.x, global1.d.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(global1.a.x, 251f, -542f)), vec3<f32>(global1.d.x, global1.d.x, 306f), !global1.b.wwz)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -411f, global1.d.x))))), !global1.b, _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(45596u, global1.c) << (vec2<u32>(34525u, global0[_wgslsmith_index_u32(global1.c, 24u)]) % vec2<u32>(32u)), ~vec2<u32>(38477u, 6005u)), _wgslsmith_add_vec2_u32(func_3(~global0[_wgslsmith_index_u32(25565u, 24u)], 2147483647i, Struct_1(global1.a, global1.b, 9583u, vec2<f32>(global1.d.x, global1.a.x))), abs(abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], u_input.a))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.d))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(global1.d, vec2<f32>(global1.a.x, global1.d.x))))), select(global1.b.xy, !global1.b.yz, vec2<bool>(true, false)))))));
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, 2130f, 1508f, global1.d.x))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(873f, -890f, _wgslsmith_f_op_f32(ceil(global1.d.x)), global1.a.x)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, -136f, global1.d.x)))))));
    global1 = func_2();
    var var_1 = global1.b.x;
    var var_2 = func_3(~105534u, -25094i, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 725f, 1000f), vec3<f32>(var_0.x, global1.a.x, var_0.x)))), global1.b, ~(4425u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 18095u, 1u), vec3<u32>(28640u, u_input.a, 10276u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1709f, global1.d.x))), vec2<f32>(-385f, global1.a.x)))));
    var var_3 = select(max(~vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 40198u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], arg_0.x), vec4<u32>(arg_0.x, 1u, 13872u, global1.c)), global1.c), ~vec3<u32>(25501u, global0[_wgslsmith_index_u32(4294967295u, 24u)] | var_2.x, ~4294967295u)), vec3<u32>(~arg_0.x, _wgslsmith_mod_u32(4294967295u, arg_0.x) | var_2.x, u_input.a), vec3<bool>(global1.b.x, true, all(!vec3<bool>(false, true, global1.b.x))));
    return StorageBuffer(-max(vec3<i32>(~(-2147483647i), reverseBits(12381i), 1i), _wgslsmith_div_vec3_i32(vec3<i32>(18717i, 4824i, 9114i), vec3<i32>(-2147483647i, -11478i, -54634i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec2<u32>(~_wgslsmith_mod_u32(56699u, global1.c) ^ 4294967295u, global1.c));
}

