struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: bool;

var<private> global1: array<u32, 13> = array<u32, 13>(115845u, 0u, 14287u, 9192u, 15357u, 1u, 27999u, 4294967295u, 37089u, 1u, 1u, 54206u, 57795u);

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(-1316f, false), Struct_2(1000f, true), Struct_2(123f, false), Struct_2(1097f, false), Struct_2(-155f, false), Struct_2(-1994f, true), Struct_2(-1357f, true), Struct_2(-1000f, false), Struct_2(-1416f, false), Struct_2(-162f, true));

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -542f))), 1496f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-338f, -1000f) + vec2<f32>(-787f, 1362f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-923f - -1026f), -361f))));
    let var_1 = select(vec4<bool>(false, !select(true, any(vec3<bool>(false, false, false)), false), !any(vec2<bool>(false, true)) & (var_0.x >= _wgslsmith_f_op_f32(floor(-1401f))), !(!(2147483647i != u_input.a.x))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, select(false, false, true), false, 1i > u_input.a.x), true), true);
    global3 = array<Struct_1, 10>();
    global3 = array<Struct_1, 10>();
    let var_2 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~1u, ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52167u, 13u)], 13u)]), global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2813u, 13u)], 13u)], 13u)]), 13u)])), countOneBits(~vec3<u32>(global1[_wgslsmith_index_u32(13845u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], 30459u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55315u, 13u)], 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27303u, 13u)], 13u)], 37594u) | vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46957u, 13u)], 13u)], 13u)], 13u)], 13u)], 1u, 7399u))));
    return -(~firstLeadingBit(-u_input.a));
}

fn func_2() -> Struct_1 {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(54479u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30239u, 13u)], 13u)], 13u)]), vec2<u32>(global1[_wgslsmith_index_u32(45503u, 13u)], 35961u)), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, 19685u), vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32704u, 13u)], 13u)], 13u)]))), reverseBits(vec2<u32>(87959u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35277u, 13u)], 13u)], 13u)], 13u)])), abs(select(vec2<u32>(11343u, 1u), vec2<u32>(54287u, 0u), vec2<bool>(true, true)) >> (~vec2<u32>(67255u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29987u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)]) % vec2<u32>(32u))));
    var var_1 = func_3();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-109f, 983f), _wgslsmith_f_op_f32(select(1000f, -1000f, true)), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1543f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -345f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(583f, 626f))), -107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f - 459f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-705f, -1692f, -817f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-614f, 395f, 966f), vec3<f32>(-2684f, -1477f, -1658f))), vec3<bool>(false, true, true))))));
    let var_3 = vec3<f32>(_wgslsmith_div_f32(-645f, -895f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * -1357f))) - 959f) * -2237f), _wgslsmith_f_op_f32(-var_2.x));
    global2 = array<Struct_2, 10>();
    return Struct_1(-449f, var_3, 1u ^ (0u << (_wgslsmith_clamp_u32(5588u, ~1u, 4294967295u) % 32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(var_2.yz)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1197f, 1340f)))))))), _wgslsmith_mod_vec2_i32(countOneBits(~(~var_1.yz)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-25397i, 2147483647i), vec2<i32>(var_1.x, 0i)), u_input.a.xx), (u_input.a.xw ^ var_1.xx) | vec2<i32>(var_1.x, var_1.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = func_2();
    let var_2 = !vec4<bool>(var_0, true, true, true);
    global0 = !var_0;
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 10u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1836f, _wgslsmith_f_op_f32(-1000f * -951f));
}

