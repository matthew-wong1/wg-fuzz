struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1553f;

var<private> global1: array<bool, 10> = array<bool, 10>(true, true, true, false, true, false, true, true, false, false);

var<private> global2: array<Struct_2, 19>;

var<private> global3: i32;

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global2 = array<Struct_2, 19>();
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_2.c)));
    let var_0 = u_input.e.x;
    global2 = array<Struct_2, 19>();
    global2 = array<Struct_2, 19>();
    return arg_2.b;
}

fn func_2(arg_0: i32) -> bool {
    global1 = array<bool, 10>();
    let var_0 = select(!(!vec4<bool>(!global1[_wgslsmith_index_u32(34812u, 10u)], !global1[_wgslsmith_index_u32(52601u, 10u)], global1[_wgslsmith_index_u32(56823u, 10u)] && false, 30715u > u_input.e.x)), !vec4<bool>(global1[_wgslsmith_index_u32(~1u, 10u)], all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], true)) && global1[_wgslsmith_index_u32(~u_input.e.x, 10u)], global1[_wgslsmith_index_u32(4058u, 10u)], func_3(Struct_2(-47138i, 487f), _wgslsmith_f_op_f32(f32(-1f) * -354f), Struct_1(u_input.d, false, vec2<f32>(global4.x, -934f), -1i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 1u), u_input.e), 19u)])), select(vec4<bool>(any(vec3<bool>(false, false, false)), !(global4.x < global4.x), all(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(1u, 10u)])) & any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(12225u, 10u)])), false), vec4<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(abs(global4.x)) > _wgslsmith_f_op_f32(ceil(global4.x)), false, true & !global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec4<bool>(all(!vec4<bool>(global1[_wgslsmith_index_u32(5929u, 10u)], true, false, false)), global1[_wgslsmith_index_u32(95770u, 10u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 10u)])));
    var var_1 = ~1u;
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global4.x, -194f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.x, global4.x), vec2<f32>(global4.x, global4.x)))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, global4.x))));
    global2 = array<Struct_2, 19>();
    return global1[_wgslsmith_index_u32(4294967295u, 10u)] && global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.e.x, _wgslsmith_sub_u32(u_input.e.x, 4294967295u)) << (_wgslsmith_clamp_u32(~u_input.e.x, _wgslsmith_mod_u32(50288u, u_input.e.x), min(61362u, 25226u)) % 32u), firstLeadingBit(abs(u_input.e.x))), 10u)];
}

fn func_1(arg_0: i32) -> vec4<bool> {
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1390f, global4.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1342f, -1432f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -776f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1872f, -1719f))), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(80554u, 10u)])))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) + vec2<f32>(1000f, 444f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, 686f), vec2<f32>(-368f, 1205f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x)))))));
    let var_0 = select(select(vec3<bool>(func_2(_wgslsmith_add_i32(30534i, u_input.b.x)), !func_2(u_input.b.x), all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 10u)])))), !vec3<bool>(true, all(vec2<bool>(global1[_wgslsmith_index_u32(3414u, 10u)], false)), all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 10u)]))), !vec3<bool>(!global1[_wgslsmith_index_u32(1u, 10u)], any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], false, true, false)), true)), vec3<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)], true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), true), true)), global1[_wgslsmith_index_u32(~(2455u ^ u_input.e.x), 10u)] | true, any(vec3<bool>(any(vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 10u)], false)), false, false))), select(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], true, global1[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(71693u, 10u)], global1[_wgslsmith_index_u32(9609u, 10u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])), vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(~u_input.e.x, 10u)]), select(!(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], false, global1[_wgslsmith_index_u32(56848u, 10u)])), vec3<bool>(global1[_wgslsmith_index_u32(abs(0u), 10u)], func_3(global2[_wgslsmith_index_u32(u_input.e.x, 19u)], global4.x, Struct_1(1i, false, vec2<f32>(global4.x, global4.x), arg_0), global2[_wgslsmith_index_u32(1u, 19u)]), global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), select(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], false), global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(20315u, 10u)], false), any(vec4<bool>(true, false, true, true)))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), firstTrailingBit(vec3<u32>(u_input.e.x, u_input.e.x, 33258u))), 10u)]));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u) >> (1u % 32u), _wgslsmith_mod_u32(~2716u, 5369u), firstLeadingBit(14457u)) >> (~(~vec3<u32>(0u, 4294967295u, u_input.e.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(53878u, 24232u, u_input.e.x) >> (vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x) % vec3<u32>(32u))) ^ max(vec3<u32>(16531u, 2892u, 0u), ~vec3<u32>(66438u, 40086u, u_input.e.x)), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.e.x, u_input.e.x, 43784u)), _wgslsmith_mult_vec3_u32(vec3<u32>(64668u, u_input.e.x, 4294967295u), vec3<u32>(4294967295u, u_input.e.x, 1u))))), 19u)];
    let var_2 = ~abs(~(~(~u_input.e.x)));
    let var_3 = all(!(!vec4<bool>(!global1[_wgslsmith_index_u32(var_2, 10u)], global1[_wgslsmith_index_u32(18051u, 10u)] | var_0.x, var_0.x || false, all(vec4<bool>(var_0.x, true, false, false)))));
    return !(!(!vec4<bool>(global1[_wgslsmith_index_u32(16023u, 10u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2), u_input.e), 10u)], var_0.x || true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 10>();
    var var_0 = _wgslsmith_f_op_f32(select(-215f, -283f, false));
    let var_1 = func_1(abs(abs(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, -17088i, u_input.b.x, -2147483647i)), select(vec4<i32>(u_input.c, -5848i, -1i, -15359i) << (vec4<u32>(4294967295u, u_input.e.x, 1u, 13195u) % vec4<u32>(32u)), reverseBits(vec4<i32>(27883i, 2147483647i, u_input.a, u_input.c)), any(vec3<bool>(var_1.x, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], false)))) & vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -36206i), u_input.b.zx), -1i, _wgslsmith_add_i32(0i, ~u_input.d), u_input.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global4.x)), _wgslsmith_f_op_f32(-global4.x))), -u_input.c, select(_wgslsmith_mult_i32(-15704i, 1i), firstLeadingBit(abs(~u_input.d)), var_1.x), u_input.e.x);
}

