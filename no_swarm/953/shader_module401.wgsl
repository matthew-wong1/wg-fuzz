struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5>;

var<private> global1: array<u32, 7>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    global1 = array<u32, 7>();
    let var_0 = vec4<bool>(true, any(!arg_1.a.zz), !any(!vec2<bool>(arg_1.a.x, false)), !arg_1.a.x);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(273f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1154f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-504f, 174f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-321f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f) + -1068f), !(arg_0.x <= arg_0.x)))));
    var var_3 = (_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(firstTrailingBit(u_input.a), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -1i), _wgslsmith_add_vec4_i32(u_input.a, u_input.a))) << (firstTrailingBit(vec4<u32>(arg_1.b, 22343u, 1u, 1u & global1[_wgslsmith_index_u32(var_1.b, 7u)])) % vec4<u32>(32u))) >> (firstTrailingBit(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.x, arg_1.b, var_1.b), vec4<u32>(25004u, global1[_wgslsmith_index_u32(var_1.b, 7u)], arg_0.x, 30630u)) >> (firstTrailingBit(vec4<u32>(2455u, global1[_wgslsmith_index_u32(arg_0.x, 7u)], 78831u, 14724u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = vec3<i32>(firstTrailingBit(10671i), 11274i, u_input.a.x) & max(vec3<i32>(_wgslsmith_mult_i32(0i, func_3(vec3<u32>(48290u, global1[_wgslsmith_index_u32(4294967295u, 7u)], 0u), Struct_1(vec3<bool>(false, arg_0.a.x, false), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)]))), u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, -38158i, 2147483647i), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a))), vec3<i32>(reverseBits(func_3(vec3<u32>(global1[_wgslsmith_index_u32(6950u, 7u)], global1[_wgslsmith_index_u32(55727u, 7u)], global1[_wgslsmith_index_u32(arg_0.b, 7u)]), arg_0)), u_input.a.x, 6848i));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b | reverseBits(global1[_wgslsmith_index_u32(0u, 7u)]), 4294967295u) << (vec2<u32>(~(~global1[_wgslsmith_index_u32(22213u, 7u)]), abs(1u)) % vec2<u32>(32u)), ~(countOneBits(vec2<u32>(4513u, global1[_wgslsmith_index_u32(1u, 7u)])) | _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(arg_0.b, arg_0.b) % vec2<u32>(32u)), min(vec2<u32>(1u, 26173u), vec2<u32>(global1[_wgslsmith_index_u32(34716u, 7u)], 40467u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b, 82291u), vec2<u32>(arg_0.b, 44316u)))));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<vec4<f32>, 5>();
    let var_0 = arg_0;
    global1 = array<u32, 7>();
    global1 = array<u32, 7>();
    var var_1 = Struct_1(!vec3<bool>(false, true, arg_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(13650u & arg_0.b, reverseBits(0u), ~arg_0.b & ~4294967295u, func_2(Struct_1(vec3<bool>(true, arg_0.a.x, true), arg_0.b), 263f, _wgslsmith_f_op_f32(404f + -1420f), arg_0.a.x)), ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], var_0.b, 1u >> (var_0.b % 32u), var_0.b)));
    return reverseBits(~var_0.b) < 12821u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(true, !(all(vec3<bool>(true, true, true)) | true), any(vec4<bool>(all(vec2<bool>(false, false)), func_1(Struct_1(vec3<bool>(true, true, false), 58887u)), true, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50815u, 7u)], 7u)], 7u)], 7u)] == 4294967295u))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7505u, 7u)], 7u)], 7u)], 7u)], _wgslsmith_mod_u32(41005u, global1[_wgslsmith_index_u32(1u, 7u)]), global1[_wgslsmith_index_u32(54241u, 7u)]), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(754u, 7u)], 7u)], global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36250u, 7u)], 7u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 0u, global1[_wgslsmith_index_u32(46592u, 7u)])), vec3<u32>(23738u, global1[_wgslsmith_index_u32(0u, 7u)], 4294967295u) & vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 14915u))), 7u)] & 15859u, 7u)]);
    var var_1 = Struct_1(var_0.a, 0u);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1650f * -1115f)))))));
    global1 = array<u32, 7>();
    let var_3 = Struct_1(var_0.a, _wgslsmith_div_u32(~firstLeadingBit(~0u), reverseBits(countOneBits(var_1.b))));
    var_1 = var_0;
    let var_4 = Struct_1(!var_3.a, min(var_1.b, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(var_0.b, var_0.b, 35670u), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.b, 4294967295u, 35057u), vec3<u32>(var_0.b, 4294967295u, global1[_wgslsmith_index_u32(11812u, 7u)])), !vec3<bool>(var_0.a.x, true, var_3.a.x)), vec3<u32>(reverseBits(var_0.b), ~8979u, ~var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(313u, 7u)], 7u)] ^ var_1.b, 0u & var_0.b, u_input.a.x == u_input.a.x)), abs(~_wgslsmith_clamp_u32(var_4.b, var_1.b, global1[_wgslsmith_index_u32(82907u, 7u)]))), u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -932f) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(trunc(var_2))), -451f)), var_2, func_3(~(abs(vec3<u32>(var_4.b, 1u, 47014u)) << ((vec3<u32>(64301u, var_0.b, 92897u) >> (vec3<u32>(0u, var_1.b, var_0.b) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_1(vec3<bool>(var_0.a.x != var_1.a.x, var_0.a.x, true), ~select(var_3.b, var_3.b, true))));
}

