struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_2(37550i, -1i)), Struct_4(Struct_2(i32(-2147483648), -3225i)), Struct_4(Struct_2(0i, 0i)), Struct_4(Struct_2(-13581i, -32305i)), Struct_4(Struct_2(-1i, -71633i)), Struct_4(Struct_2(-1i, -31333i)), Struct_4(Struct_2(0i, -27963i)), Struct_4(Struct_2(2147483647i, 2147483647i)), Struct_4(Struct_2(-59728i, i32(-2147483648))), Struct_4(Struct_2(18704i, 0i)), Struct_4(Struct_2(1i, i32(-2147483648))), Struct_4(Struct_2(27551i, -9978i)), Struct_4(Struct_2(1i, i32(-2147483648))), Struct_4(Struct_2(79915i, -24500i)), Struct_4(Struct_2(13833i, -5097i)), Struct_4(Struct_2(-26012i, 1i)), Struct_4(Struct_2(29538i, -38850i)), Struct_4(Struct_2(-26712i, -22587i)), Struct_4(Struct_2(2147483647i, -47334i)), Struct_4(Struct_2(i32(-2147483648), 5437i)), Struct_4(Struct_2(-59797i, -1i)), Struct_4(Struct_2(-15098i, -1i)));

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_i32(-(~u_input.a.x), -1i);
    global3 = array<vec3<bool>, 1>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f)));
    let var_2 = _wgslsmith_f_op_f32(ceil(1412f));
    let var_3 = firstTrailingBit(u_input.a) | -u_input.e.yz;
    return !(!(var_2 < _wgslsmith_f_op_f32(abs(1803f))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = select(vec3<i32>(~(-2147483647i), ~abs(-19758i & u_input.a.x), 1i), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e.yzw, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e.xyw, vec3<i32>(u_input.b, u_input.b, u_input.e.x)), firstTrailingBit(vec3<i32>(u_input.b, 56619i, -17791i)))), u_input.e.zyw), vec3<bool>(func_3(Struct_1(_wgslsmith_f_op_f32(trunc(585f)))), true && any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true))));
    global0 = array<Struct_4, 22>();
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, firstTrailingBit(-7722i), _wgslsmith_dot_vec2_i32(var_0.xx, var_0.zz)), -max(vec3<i32>(0i, var_0.x, -1i), vec3<i32>(u_input.a.x, u_input.b, u_input.b))), u_input.a.x), var_0.zx);
    global3 = array<vec3<bool>, 1>();
    let var_1 = _wgslsmith_sub_vec4_i32(u_input.e ^ ~(~_wgslsmith_add_vec4_i32(u_input.e, u_input.e)), -reverseBits(abs(abs(u_input.e))));
    return Struct_2(var_1.x, -var_1.x);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)))))));
    let var_1 = arg_2.xy;
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(1771f)));
    var var_2 = 615f;
    var var_3 = select(arg_1, select(!(!vec4<bool>(true, false, true, var_1.x)), vec4<bool>(true, any(select(arg_2, arg_2, false)), any(arg_1.xw), var_1.x), var_1.x), !vec4<bool>(arg_2.x, var_1.x, var_1.x, !var_1.x | any(vec4<bool>(arg_2.x, true, true, false))));
    return Struct_3(vec4<u32>(35595u, ~4294967295u, _wgslsmith_div_u32(~(~17838u), 4294967295u), ~u_input.d.x));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    let var_0 = func_4(arg_2.x, vec4<bool>(all(arg_1), arg_1.x, arg_1.x, max(u_input.a.x, firstTrailingBit(1i)) >= -11566i), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(10577u, u_input.d.x & 1621u), 1u)], func_2(abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), ~13281u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(select(arg_3, -1009f, arg_1.x)))), -1151f, -183f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_3 + arg_2.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -706f, 577f, -779f) * vec4<f32>(-1000f, 1108f, -1284f, arg_3)) * vec4<f32>(-769f, arg_2.x, 448f, arg_3)), vec4<f32>(-1066f, _wgslsmith_f_op_f32(arg_2.x * 699f), arg_3, _wgslsmith_f_op_f32(arg_3 - 678f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_3, 2253f, arg_2.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, 1149f, arg_3, arg_2.x))), true))));
    global0 = array<Struct_4, 22>();
    global3 = array<vec3<bool>, 1>();
    let var_2 = arg_0.a.x;
    return func_2(arg_0.a.x);
}

fn func_5(arg_0: Struct_2) -> f32 {
    var var_0 = -2147483647i;
    let var_1 = select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u ^ ~u_input.c, abs(62080u)), 1u)], vec3<bool>(true, true, true), true);
    global2 = 0i;
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(func_4(246f, vec4<bool>(false, true, var_1.x, var_1.x), vec3<bool>(false, var_1.x, false), arg_0).a.x, 1u), ~0u, min(u_input.c << (7661u % 32u), u_input.c)) | abs(max(vec3<u32>(0u, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 95786u, 71093u), vec3<u32>(1u, u_input.d.x, 4294967295u)))), ~(vec3<u32>(func_4(-315f, vec4<bool>(true, var_1.x, false, var_1.x), var_1, Struct_2(u_input.e.x, u_input.a.x)).a.x, ~u_input.c, u_input.d.x) << (vec3<u32>(1u, countOneBits(4294967295u), ~57278u) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(962f, 209f)) - _wgslsmith_f_op_f32(f32(-1f) * -1119f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(320f))), -817f)), _wgslsmith_f_op_f32(max(-595f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(224f, 1190f, var_1.x)) * -1975f))))));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(arg_3 + 179f);
    global3 = array<vec3<bool>, 1>();
    let var_1 = u_input.e >> (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 15142u, 1u, u_input.c), vec4<u32>(15234u, u_input.c, u_input.c, 54408u)), ~vec4<u32>(1u, u_input.c, u_input.d.x, 1u), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)), max(func_4(156f, vec4<bool>(false, false, true, false), vec3<bool>(true, false, true), Struct_2(14394i, 1i)).a, vec4<u32>(136u, 54753u, u_input.c, 0u) & vec4<u32>(u_input.c, u_input.d.x, 1u, u_input.d.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, u_input.c), u_input.d.x << (u_input.c % 32u), u_input.d.x, u_input.c), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 23791u), vec4<u32>(1u, 29199u, 1u, u_input.d.x)))) % vec4<u32>(32u));
    global0 = array<Struct_4, 22>();
    global0 = array<Struct_4, 22>();
    return StorageBuffer(vec4<i32>(39030i, var_1.x << (~(u_input.d.x << (u_input.c % 32u)) % 32u), firstLeadingBit(var_1.x), arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(970f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(481f * -1604f) + _wgslsmith_f_op_f32(min(777f, -697f))) + 832f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-525f * -1771f)) - _wgslsmith_f_op_f32(func_5(func_1(Struct_3(vec4<u32>(u_input.c, u_input.c, 0u, u_input.d.x)), vec3<bool>(false, false, false), vec2<f32>(-1670f, -740f), -1000f)))))), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(21850i, u_input.a.x, u_input.a.x, -2147483647i)) << (u_input.c % 32u), 29292i | u_input.b, 57803i, u_input.e.x) >> (select(~vec4<u32>(4294967295u, 42010u, 28238u, u_input.c), reverseBits(~vec4<u32>(0u, 0u, 1u, u_input.d.x)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(-1000f)));
}

