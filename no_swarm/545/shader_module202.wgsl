struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, false, true, false, false, true, true, false, false, true, false, true, true, true, false, true, false, true, false, true, false, true, false, false, true, false, false, false, true, true, false);

var<private> global2: array<vec4<u32>, 5>;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    global0 = array<f32, 21>();
    var var_0 = Struct_1(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global4.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]))));
    var var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), ~vec2<u32>(u_input.b.x, u_input.a)), 10030u)), 21u)]);
    global0 = array<f32, 21>();
    global3 = 13063i;
    return vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global4.a.x, false, global1[_wgslsmith_index_u32(1u << ((firstTrailingBit(max(u_input.a, 1u)) << (select(u_input.a, max(54280u, u_input.b.x), false) % 32u)) % 32u), 32u)]);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = Struct_1(global4.a);
    global1 = array<bool, 32>();
    var_0 = Struct_1(global4.a);
    var var_1 = Struct_3(select(func_3(), !vec4<bool>(arg_0.a.x, arg_1 || true, true, u_input.a <= 0u), (firstTrailingBit(38823u) < _wgslsmith_mult_u32(u_input.a, u_input.b.x)) && false), Struct_1(!(!func_3().yyx)), arg_0, arg_0);
    let var_2 = var_1.b;
    return 36558u;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2193f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 21u)] * global0[_wgslsmith_index_u32(u_input.a, 21u)])))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-1303f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(353f, arg_2)) + vec2<f32>(-1429f, _wgslsmith_f_op_f32(arg_2 * arg_2)))));
    var var_1 = u_input.b.x;
    global4 = Struct_1(!vec3<bool>(global4.a.x, global4.a.x, true));
    var var_2 = 0i;
    var_2 = ~(-13117i);
    return Struct_1(select(arg_0, select(arg_0, !select(global4.a, arg_0, global4.a), vec3<bool>(true, true, true)), all(select(arg_0, vec3<bool>(true, true, true), arg_0.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_3.b;
    var var_1 = abs(_wgslsmith_sub_vec4_u32(~(~(~global2[_wgslsmith_index_u32(u_input.b.x, 5u)])), ~global2[_wgslsmith_index_u32(18215u, 5u)] >> (select(global2[_wgslsmith_index_u32(u_input.a, 5u)], ~global2[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(true, true, arg_1.a.x, false)) % vec4<u32>(32u))));
    var var_2 = func_4(vec3<bool>(~func_2(arg_3.c, true) <= u_input.a, global4.a.x, all(select(!arg_3.a, vec4<bool>(false, arg_2.a.x, false, arg_3.b.a.x), arg_3.a))), all(!var_0.a), -1375f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f + 409f))));
    let var_3 = global0[_wgslsmith_index_u32(~var_1.x, 21u)];
    var var_4 = vec2<i32>((i32(-1i) * -34163i) << (~var_1.x % 32u), abs(arg_0.x));
    return Struct_3(!vec4<bool>(all(select(vec2<bool>(false, var_2.a.x), vec2<bool>(true, arg_3.b.a.x), true)), all(arg_3.b.a), !any(vec2<bool>(true, arg_3.d.a.x)), func_3().x), arg_3.c, Struct_1(!var_2.a), func_4(!vec3<bool>(true, -7751i != var_4.x, true), true, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b.x, 21u)])))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    return _wgslsmith_add_i32(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(493i, 1678i, 0i), 21499i, reverseBits(12765i)), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(44022i, -1i), vec2<i32>(18732i, -61710i))))) | _wgslsmith_div_i32(_wgslsmith_mod_i32(~41497i, 1i), _wgslsmith_sub_i32(firstTrailingBit(2147483647i) << (_wgslsmith_add_u32(u_input.b.x, 0u) % 32u), ~(i32(-1i) * -20874i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 25980u;
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(~func_5(func_1(vec3<i32>(1i, -10856i, 28141i), Struct_1(global4.a), Struct_1(global4.a), Struct_3(vec4<bool>(global4.a.x, false, true, false), Struct_1(global4.a), Struct_1(vec3<bool>(global4.a.x, false, true)), Struct_1(global4.a))), func_4(global4.a, global4.a.x, 1083f, 501f)), -1i), _wgslsmith_div_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(-1i, -1510i), 10483i), -(-vec2<i32>(-2147483647i, 0i) | _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-4834i, 32963i), vec2<i32>(-2147483647i, -70586i)))));
    global2 = array<vec4<u32>, 5>();
    var var_2 = func_4(global4.a, true, _wgslsmith_div_f32(-2073f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 21u)] + global0[_wgslsmith_index_u32(var_0, 21u)])))), 170f).a;
    let var_3 = !global4.a.x;
    var var_4 = abs(~countOneBits(~0u)) << (~(_wgslsmith_dot_vec3_u32(~vec3<u32>(42568u, 11075u, var_0), vec3<u32>(0u, 10751u, u_input.b.x)) | ~(~1u)) % 32u);
    let var_5 = func_1(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(abs(-1938i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_1.x, 1i, 55704i)), -33033i), firstLeadingBit(~vec3<i32>(73117i, var_1.x, var_1.x)))), Struct_1(func_3().xwx), func_4(!func_1(-vec3<i32>(var_1.x, var_1.x, -2147483647i), Struct_1(vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 32u)])), func_4(vec3<bool>(global4.a.x, var_2.x, global4.a.x), true, -673f, 391f), Struct_3(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 32u)], var_2.x, true), Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(var_0, 32u)])), Struct_1(vec3<bool>(true, false, global4.a.x)), Struct_1(vec3<bool>(var_2.x, global4.a.x, global4.a.x)))).b.a, true, -771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 21u)] - -904f) * 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)])))), func_1(_wgslsmith_mod_vec3_i32(~max(vec3<i32>(-13554i, var_1.x, 55252i), vec3<i32>(-2147483647i, 2147483647i, var_1.x)), ~(vec3<i32>(-1i, -21678i, var_1.x) >> (vec3<u32>(4294967295u, 2504u, 4294967295u) % vec3<u32>(32u)))), func_4(func_1(vec3<i32>(29264i, -1i, -1i), Struct_1(global4.a), func_4(global4.a, true, -530f, global0[_wgslsmith_index_u32(var_0, 21u)]), Struct_3(vec4<bool>(false, true, false, global4.a.x), Struct_1(global4.a), Struct_1(vec3<bool>(false, var_3, var_3)), Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 32u)], true)))).a.yxy, global4.a.x, global0[_wgslsmith_index_u32(30722u, 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-447f, global0[_wgslsmith_index_u32(var_0, 21u)])) * _wgslsmith_f_op_f32(round(1847f)))), func_1(max(countOneBits(vec3<i32>(42382i, -38472i, 2147483647i)), -vec3<i32>(var_1.x, -31342i, var_1.x)), Struct_1(vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 32u)])), Struct_1(global4.a), Struct_3(select(vec4<bool>(global4.a.x, global4.a.x, global4.a.x, false), vec4<bool>(global4.a.x, true, true, true), var_3), Struct_1(global4.a), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(var_0, 32u)], true, global4.a.x)), func_1(vec3<i32>(var_1.x, var_1.x, 5955i), Struct_1(global4.a), Struct_1(global4.a), Struct_3(vec4<bool>(var_2.x, var_3, false, var_3), Struct_1(global4.a), Struct_1(vec3<bool>(false, global4.a.x, var_2.x)), Struct_1(vec3<bool>(var_2.x, var_3, true)))).b)).c, func_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(16092i, 1i, 8976i), vec3<i32>(-42814i, -1i, 0i)), vec3<i32>(2147483647i, var_1.x, -1i)), func_1(vec3<i32>(var_1.x, -68570i, -10740i), Struct_1(vec3<bool>(var_2.x, var_2.x, false)), func_4(global4.a, var_2.x, global0[_wgslsmith_index_u32(98675u, 21u)], global0[_wgslsmith_index_u32(var_0, 21u)]), Struct_3(vec4<bool>(false, false, true, var_3), Struct_1(vec3<bool>(false, var_2.x, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(global4.a.x, var_3, var_3)))).d, Struct_1(select(global4.a, global4.a, global4.a)), Struct_3(vec4<bool>(global4.a.x, var_3, global1[_wgslsmith_index_u32(0u, 32u)], true), func_1(vec3<i32>(var_1.x, -32729i, -2147483647i), Struct_1(global4.a), Struct_1(global4.a), Struct_3(vec4<bool>(false, global4.a.x, false, true), Struct_1(global4.a), Struct_1(global4.a), Struct_1(global4.a))).d, Struct_1(global4.a), func_4(global4.a, var_2.x, global0[_wgslsmith_index_u32(65854u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(trunc(-608f)), -568f), -507f, vec3<f32>(-483f, -1344f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(countOneBits(select(var_0, 1u, false)), 21u)]))), _wgslsmith_add_vec4_u32(firstLeadingBit(global2[_wgslsmith_index_u32(~u_input.b.x, 5u)]), vec4<u32>(~1u, countOneBits(u_input.a), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(5868u, 4294967295u)) & ~u_input.a, u_input.b.x)));
}

