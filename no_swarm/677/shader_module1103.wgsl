struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<vec4<i32>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) - arg_3) + arg_3));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1814f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -363f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-619f))))));
    var_2 = Struct_5(_wgslsmith_div_f32(192f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a)))));
    let var_3 = 1261f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(-3101f + _wgslsmith_f_op_f32(-var_2.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1041f)) - 767f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(floor(arg_1.a))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1331f, arg_2)), _wgslsmith_f_op_f32(abs(arg_2))))))));
    var var_2 = arg_3.b;
    let var_3 = Struct_2(-firstLeadingBit(vec2<i32>(0i, u_input.a << (29069u % 32u))), Struct_1(var_2.a, !any(vec2<bool>(arg_0.b.a.x, true))), firstTrailingBit(arg_0.c), !vec3<bool>(any(!vec4<bool>(global0[_wgslsmith_index_u32(33891u, 26u)], false, true, global0[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(min(var_1, var_1)) == _wgslsmith_f_op_f32(arg_2 - arg_2), all(!arg_0.b.a)), ~(1u | u_input.b.x));
    var var_4 = var_3.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), _wgslsmith_f_op_f32(floor(arg_1.a)), true)) * 386f);
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 26>();
    var var_0 = Struct_5(_wgslsmith_f_op_f32(sign(-172f)));
    let var_1 = u_input.b;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-979f)))), _wgslsmith_f_op_f32(trunc(580f)), _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(2147483647i, u_input.a)) >> (var_1.xz % vec2<u32>(32u)), Struct_1(vec3<bool>(true, true, true), all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]))), vec4<u32>(1u, var_1.x, reverseBits(var_1.x), _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xy)), select(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 26u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], false, true), vec3<bool>(false, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)])), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)])), var_1.x), Struct_5(1085f), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(13868i, 14391i, Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), true), var_0.a)), _wgslsmith_div_f32(395f, var_0.a))), Struct_2(min(firstLeadingBit(vec2<i32>(u_input.a, 39040i)), vec2<i32>(u_input.a, u_input.a)), Struct_1(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), global0[_wgslsmith_index_u32(var_1.x, 26u)] && true), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, var_1.x, 50598u), vec4<u32>(42292u, var_1.x, var_1.x, u_input.b.x)), !vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)]), u_input.b.x))));
    var_0 = Struct_5(740f);
    return Struct_1(vec3<bool>(any(select(!vec3<bool>(global0[_wgslsmith_index_u32(65526u, 26u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec3<bool>(true, true, true), true)), all(vec2<bool>(!global0[_wgslsmith_index_u32(var_1.x, 26u)], true)), true), !global0[_wgslsmith_index_u32(~u_input.b.x, 26u)] && (_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_div_f32(1825f, var_0.a), any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)])))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.x, var_2.x)))));
}

fn func_1() -> vec2<u32> {
    var var_0 = min(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x) << (min(u_input.b.x, 1u) % 32u), ~firstLeadingBit(u_input.b.x)), ~u_input.b.x));
    var var_1 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(~abs(u_input.a), 1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a)), -vec2<i32>(u_input.a, 28336i))), abs(vec3<i32>(firstTrailingBit(25392i), -1i & u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a)))), Struct_3(Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], false))), func_2(), vec4<bool>(true, true, true, true)), !select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(12362u, 26u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(4490u, 26u)])), vec2<bool>(false, true), true), select(!vec2<bool>(global0[_wgslsmith_index_u32(45855u, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(92067u, 26u)]), !global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec2<bool>(global0[_wgslsmith_index_u32(23843u, 26u)], false)), func_2());
    var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.xz, abs(u_input.b.xx)), 0u);
    var var_2 = ~vec3<u32>(~u_input.b.x >> (u_input.b.x % 32u), u_input.b.x, ~(~61163u));
    global0 = array<bool, 26>();
    return _wgslsmith_add_vec2_u32(vec2<u32>(~(~1u) | var_2.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 1u, var_2.x, var_2.x)), vec4<u32>(1u, var_2.x, 1u, var_2.x) | abs(vec4<u32>(50345u, 4294967295u, var_2.x, 11026u)))), var_2.zy);
}

fn func_5(arg_0: u32, arg_1: vec4<f32>) -> vec4<f32> {
    global1 = array<vec4<i32>, 7>();
    var var_0 = vec4<bool>(true, true, !(!select(false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])) && global0[_wgslsmith_index_u32(u_input.b.x, 26u)], !(!any(func_2().a)));
    let var_1 = Struct_3(func_2(), func_2(), vec4<bool>(!(!any(vec3<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(arg_0, 26u)]))), true, !(global0[_wgslsmith_index_u32(9690u, 26u)] && true), !(var_0.x && global0[_wgslsmith_index_u32(~101581u, 26u)])));
    var var_2 = _wgslsmith_mod_u32(max(~_wgslsmith_dot_vec4_u32(~vec4<u32>(8452u, 22595u, u_input.b.x, 93475u), firstTrailingBit(vec4<u32>(7432u, 30885u, arg_0, 1u))), min(u_input.b.x, ~reverseBits(12334u))), u_input.b.x);
    let var_3 = firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(u_input.a, 0i), ~u_input.a, ~53018i | u_input.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 7>();
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(7818u, u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), u_input.b.x), ~u_input.b.yz);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, func_1()), _wgslsmith_mult_u32(80865u, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(825f, 1188f, 122f, -1195f), vec4<f32>(-2807f, -909f, 844f, -670f), vec4<bool>(true, false, true, false))), vec4<f32>(412f, -1198f, 589f, -628f))) + vec4<f32>(374f, _wgslsmith_f_op_f32(-1132f + 811f), 1f, _wgslsmith_div_f32(785f, -122f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(986f, _wgslsmith_f_op_f32(func_4(Struct_2(vec2<i32>(u_input.a, -1i), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(820u, 26u)], true, global0[_wgslsmith_index_u32(var_0.x, 26u)]), true), vec4<u32>(19127u, u_input.b.x, var_0.x, u_input.b.x), vec3<bool>(true, false, false), 4294967295u), Struct_5(-880f), -616f, Struct_2(vec2<i32>(-11015i, u_input.a), Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<u32>(u_input.b.x, var_0.x, u_input.b.x, u_input.b.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1199f), -3120f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_i32(abs(-10358i), ~u_input.a)), vec4<i32>(u_input.a, _wgslsmith_clamp_i32(14623i, -u_input.a, ~u_input.a), 0i, -1i));
}

