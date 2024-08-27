struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(27704u, 3791u), vec2<u32>(0u, 0u), vec2<u32>(1u, 37569u), vec2<u32>(4294967295u, 25565u), vec2<u32>(27811u, 30717u), vec2<u32>(1u, 1u), vec2<u32>(19661u, 1u), vec2<u32>(94727u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(101201u, 0u), vec2<u32>(11090u, 1u), vec2<u32>(3729u, 29339u), vec2<u32>(1u, 0u), vec2<u32>(29164u, 0u), vec2<u32>(4466u, 16945u), vec2<u32>(4294967295u, 112151u), vec2<u32>(27563u, 1u), vec2<u32>(82901u, 4294967295u), vec2<u32>(7941u, 4294967295u), vec2<u32>(74313u, 4294967295u), vec2<u32>(0u, 21893u), vec2<u32>(1u, 12066u), vec2<u32>(58581u, 2535u), vec2<u32>(4294967295u, 0u), vec2<u32>(33441u, 14137u), vec2<u32>(981u, 25458u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(26306u, 25117u), vec2<u32>(4652u, 18516u), vec2<u32>(58321u, 1485u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<u32> {
    global1 = array<vec2<u32>, 32>();
    let var_0 = Struct_2(select(_wgslsmith_mult_vec3_u32(vec3<u32>(select(33032u, 0u, false), 0u, 1u), ~abs(vec3<u32>(0u, 82489u, 4294967295u))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 16187u), vec3<u32>(1u, ~4294967295u, select(4336u, 31969u, true))), true));
    var var_1 = var_0;
    var var_2 = var_0;
    let var_3 = ~53075u;
    return vec4<u32>(35436u, var_2.a.x, var_2.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.a.x << (_wgslsmith_mult_u32(var_1.a.x, 0u) % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), global1[_wgslsmith_index_u32(49363u, 32u)])), max(_wgslsmith_clamp_u32(~var_2.a.x, 42848u, ~70044u), 5752u)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1100f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -904f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(764f - -1043f))) + 454f)));
    let var_2 = false & arg_3;
    return Struct_2(vec3<u32>(~(~(~arg_1.a.x)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(11460u, arg_1.a.x, arg_1.a.x, arg_1.a.x)), func_3()), abs(~8906u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global0 = (arg_1.a.x | select(~26714u ^ firstTrailingBit(arg_1.a.x), arg_1.a.x >> (arg_1.a.x % 32u), !arg_2.a)) >> (firstLeadingBit(~4294967295u & firstTrailingBit(~1u)) % 32u);
    var var_0 = 695f;
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.b - 199f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-541f))))) + _wgslsmith_f_op_f32(abs(1311f))));
    global0 = arg_1.a.x;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3().x << (((arg_1.a.x << (min(44362u, arg_1.a.x) % 32u)) << (arg_1.a.x % 32u)) % 32u), max(~(arg_1.a.x << (4294967295u % 32u)), _wgslsmith_clamp_u32(66356u, 0u, 4294967295u)) | ~_wgslsmith_add_u32(arg_1.a.x, _wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x))), 32u)];
    return var_1;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    global1 = array<vec2<u32>, 32>();
    var var_0 = any(select(vec3<bool>((arg_3.a | false) | true, select(any(vec4<bool>(arg_3.a, true, arg_3.a, arg_3.a)), false, !arg_3.a), arg_3.a), !select(vec3<bool>(arg_3.a, true, arg_3.a), select(vec3<bool>(false, arg_3.a, arg_3.a), vec3<bool>(arg_3.a, arg_3.a, true), vec3<bool>(arg_3.a, arg_3.a, arg_3.a)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_3.a), vec3<bool>(false, arg_3.a, arg_3.a))), !any(select(vec4<bool>(false, false, arg_3.a, arg_3.a), vec4<bool>(arg_3.a, false, true, arg_3.a), false))));
    let var_1 = 1u;
    var var_2 = arg_3;
    global0 = ~(~var_1 ^ select(var_1, 19395u, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, arg_3.b));
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    var_0 = any(!vec4<bool>(false, false, false, all(vec2<bool>(false, false))));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1358f + _wgslsmith_f_op_f32(138f - -764f)) + 1000f), _wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i) | u_input.d.zz, u_input.d.yx), max(~(-2147483647i), -43323i), firstLeadingBit(vec2<i32>(-11527i, u_input.a)), func_4(vec3<bool>(true, true, true), func_2(u_input.a, Struct_2(vec3<u32>(83567u, 20389u, 62632u)), -6584i, false), Struct_1(false, 456f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2163f))) != func_4(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), Struct_2(vec3<u32>(54630u, 28612u, 81435u)), Struct_1(true, -229f)).b)));
    var var_2 = -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i << (~4294967295u % 32u), -15713i, -5944i, u_input.b), _wgslsmith_div_vec4_i32(~abs(vec4<i32>(u_input.e, u_input.d.x, 26001i, 2147483647i)), select(vec4<i32>(-27382i, -20875i, 28339i, 18008i), vec4<i32>(u_input.b, 0i, 1i, u_input.a) >> (vec4<u32>(4294967295u, 15408u, 1878u, 16508u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true))));
    global0 = 4294967295u;
    return var_1;
}

fn func_6(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec2<u32>, 32>();
    let var_0 = 22201u;
    let var_1 = !vec3<bool>(arg_3.a, false, any(!(!vec4<bool>(true, true, arg_2.x, true))));
    var var_2 = false;
    let var_3 = func_2(~u_input.c, func_2(-(~2147483647i) & ~(~u_input.b), func_2(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.e), _wgslsmith_mult_i32(u_input.a, u_input.a)), Struct_2(vec3<u32>(24142u, arg_0, var_0)), _wgslsmith_mult_i32(0i, u_input.c), true), 39274i, true), _wgslsmith_mod_i32(max(-40237i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(13245i, -45771i), u_input.e << (1u % 32u), 38837i)), u_input.d.x), select(_wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(45089u, 32u)], _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(8681u, 32u)])) > abs(38958u), var_1.x, !func_1().a));
    return arg_3;
}

fn func_7(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(all(vec4<bool>(false, _wgslsmith_f_op_f32(-arg_1) < 1608f, arg_2.a, !arg_2.a | true)), func_1().b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(515f, func_4(!vec3<bool>(arg_2.a, true, arg_2.a), Struct_2(vec3<u32>(1u, 13939u, 14434u)), var_0).b), arg_2.b, true)));
    let var_2 = var_0;
    let var_3 = select(!(!(!(!vec2<bool>(var_0.a, var_0.a)))), vec2<bool>(reverseBits(~10683u) != abs(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)])), true), vec2<bool>(var_0.a, !var_2.a));
    global1 = array<vec2<u32>, 32>();
    return Struct_2(func_2(~_wgslsmith_mult_i32(arg_0.x, _wgslsmith_mult_i32(u_input.d.x, 2147483647i)), func_2(~(~11071i), Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(31083u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 2600u))), -(~arg_0.x), select(true, true, arg_0.x > -1i)), firstTrailingBit(2147483647i), true).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(u_input.d.yz, -336f, func_6(reverseBits(~(~6075u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec2<bool>(true, true), func_1()));
    global0 = var_0.a.x;
    let var_1 = func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-39228i, 36905i, 2147483647i)), vec3<i32>(u_input.b, 20137i, 52175i) ^ u_input.d), countOneBits(vec3<i32>(-54607i, u_input.d.x, -1i))), u_input.d), func_7(u_input.d.xz, -452f, func_1()), 23334i, true);
    global0 = 48728u;
    let var_2 = !(!select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), true), !(u_input.a != 62012i)));
    global0 = var_0.a.x;
    global1 = array<vec2<u32>, 32>();
    global0 = _wgslsmith_div_u32(min(min(~4294967295u, ~(~13693u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.a.x, ~var_1.a.x), 3022u, abs(_wgslsmith_div_u32(0u, 4294967295u)))), func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_i32(-11229i, -u_input.a) >> (22314u % 32u)) >> (max(_wgslsmith_clamp_u32(99376u, 4294967295u, var_1.a.x) | 4297u, _wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_0.a.x, var_1.a.x, var_0.a.x), vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_0.a.x)))) % 32u), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f) + _wgslsmith_f_op_f32(680f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2546f)))))), 3608i);
}

