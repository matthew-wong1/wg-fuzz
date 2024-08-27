struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 12119i;

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_2, 6>;

var<private> global3: vec3<i32> = vec3<i32>(-1i, -57396i, 69093i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -798f))));
    var var_1 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(~max(reverseBits(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 45556u)), global1[_wgslsmith_index_u32(~firstTrailingBit(global1[_wgslsmith_index_u32(1u, 13u)]), 13u)]), global1[_wgslsmith_index_u32(firstLeadingBit(~(~0u)), 13u)] & 1u, select((_wgslsmith_f_op_f32(ceil(-1000f)) == _wgslsmith_f_op_f32(abs(-337f))) && false, all(arg_0.xw), arg_1)), 13u)], 6u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, var_1.a.a, -800f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.a, 1606f, var_1.b.a), vec3<f32>(-229f, 975f, -2069f), arg_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, 2144f, -215f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.a, _wgslsmith_f_op_f32(var_1.a.a - 1946f)) * -1604f), _wgslsmith_f_op_f32(-var_1.b.a), -171f), false | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a - var_1.b.a)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(806f)) - var_1.b.a))));
    let var_3 = abs((~u_input.a.x << (firstTrailingBit(global1[_wgslsmith_index_u32(1u, 13u)]) % 32u)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28604u, 13u)], 13u)], 100691u), vec2<u32>(global1[_wgslsmith_index_u32(49490u, 13u)], global1[_wgslsmith_index_u32(101844u, 13u)])) % 32u)) >= -_wgslsmith_dot_vec4_i32(-max(vec4<i32>(-13685i, global3.x, 71825i, -24728i), vec4<i32>(global3.x, 29787i, var_1.a.b, 2147483647i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.b, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 22204i, -41095i, u_input.a.x)));
    var var_4 = true;
    return StorageBuffer(global1[_wgslsmith_index_u32(max(0u, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(72394u, 13521u)) & _wgslsmith_add_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31666u, 13u)], 13u)], 13u)], 13u)], 13u)]), 0u), 13u)]), 13u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.xz ^ ~select(~vec2<i32>(0i, 2147483647i) >> (~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14129u, 13u)], 13u)]) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -1i), -u_input.a.yz), true);
    global2 = array<Struct_2, 6>();
    var_0 = vec2<i32>(var_0.x, 70346i);
    global0 = -31331i ^ global3.x;
    global1 = array<u32, 13>();
    var var_1 = _wgslsmith_mod_vec4_u32(~(vec4<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(86445u, 13u)], 13u)], 0u, 4294967295u & global1[_wgslsmith_index_u32(42272u, 13u)], ~global1[_wgslsmith_index_u32(14467u, 13u)]) << (vec4<u32>(~19323u, ~global1[_wgslsmith_index_u32(4294967295u, 13u)], 24408u, _wgslsmith_mod_u32(1u, 22332u)) % vec4<u32>(32u))), ~(~(~vec4<u32>(129698u, 56924u, global1[_wgslsmith_index_u32(10050u, 13u)], 1u))));
    let x = u_input.a;
    s_output = func_1(select(vec4<bool>(select(true, false, true), _wgslsmith_add_i32(-20206i, var_0.x) >= -1i, !(79081u <= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 13u)], 13u)], 13u)]), true), vec4<bool>(true, all(vec2<bool>(true, true)), true, true), abs(23490i) > ~firstTrailingBit(u_input.a.x)), select(true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)) && true));
}

