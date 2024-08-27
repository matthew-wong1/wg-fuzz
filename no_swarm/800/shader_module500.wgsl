struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec3<bool>(false, false, true), 5647u), vec2<u32>(1059u, 33867u), vec2<u32>(0u, 32591u), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(true, true, true), 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(false, false, true), 71761u), vec2<u32>(4294967295u, 1u), vec2<u32>(1534u, 45447u), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(true, false, true), 12947u), vec2<u32>(1u, 32232u), vec2<u32>(4294967295u, 73125u), vec2<bool>(true, false)), Struct_2(Struct_1(vec3<bool>(false, false, true), 4294967295u), vec2<u32>(18944u, 1u), vec2<u32>(127194u, 4294967295u), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(true, true, false), 4294967295u), vec2<u32>(50948u, 14591u), vec2<u32>(211u, 46084u), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(true, true, false), 4294967295u), vec2<u32>(14053u, 4294967295u), vec2<u32>(0u, 78013u), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(false, true, true), 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<bool>(true, true, false), 1u), vec2<u32>(44708u, 4770u), vec2<u32>(33060u, 1u), vec2<bool>(false, false)));

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<f32, 25> = array<f32, 25>(643f, -363f, 562f, -1000f, 604f, 187f, -545f, -1727f, 1705f, -501f, 746f, -1784f, -1670f, 1029f, -101f, -220f, 541f, -290f, -129f, 1328f, 591f, -1563f, -168f, 278f, -596f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    global2 = array<f32, 25>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 25u)] - global2[_wgslsmith_index_u32(5191u, 25u)]))) + _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(114605u, 25u)], -1308f)))));
    let var_1 = Struct_3(-14855i, i32(-1i) * -reverseBits(countOneBits(14977i)), select(0u, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 74501u), u_input.a.x), max(~9528u, _wgslsmith_mult_u32(0u, u_input.a.x))), !(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) <= _wgslsmith_clamp_u32(1u, u_input.a.x, 130166u))));
    global1 = array<Struct_2, 19>();
    let var_2 = 2147483647i;
    return true;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_2, 9>();
    var var_0 = Struct_3(~(~(-_wgslsmith_add_i32(-2147483647i, -1i))), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(1i, 1i)), vec2<i32>(reverseBits(-1i), abs(_wgslsmith_mult_i32(-36435i, -31882i)))), ~u_input.a.x);
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a, 24555i, 2147483647i, var_0.b), vec4<i32>(var_0.b, var_0.a, var_0.a, var_0.b)), var_0.a, var_0.a);
    let var_2 = Struct_3(_wgslsmith_mod_i32(~var_0.b, -19522i), _wgslsmith_mult_i32(2147483647i, max(~(-2147483647i), -13102i) & (_wgslsmith_mod_i32(var_0.b, -10985i) >> (_wgslsmith_mod_u32(arg_0.x, 1u) % 32u))), u_input.a.x);
    var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(select(min(1i, var_0.a), -var_2.a, true) & 39712i, ~0i, ~var_2.a), max(-(vec3<i32>(-1i) * -vec3<i32>(15217i, var_0.b, var_1.x)), -firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, -37202i, var_2.a), vec3<i32>(62417i, var_0.b, -709i)))));
    return Struct_2(Struct_1(vec3<bool>(true, false, true), var_0.c), vec2<u32>(abs(~_wgslsmith_clamp_u32(arg_0.x, 1u, arg_0.x)), select(1u, arg_0.x, true) >> (34376u % 32u)), arg_0.yw, vec2<bool>(!select(false, true, func_3()), false));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(max(_wgslsmith_sub_vec4_u32(~vec4<u32>(40405u, u_input.a.x, 4294967295u, 36653u), ~(~vec4<u32>(u_input.a.x, 24073u, u_input.a.x, u_input.a.x))), abs((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 20563u) & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 100667u)) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))));
    var var_1 = Struct_1(vec3<bool>(var_0.a.a.x, var_0.d.x, false), 1u);
    let var_2 = Struct_3(-abs(reverseBits(_wgslsmith_mod_i32(40618i, -2147483647i))), min(-min(~12549i, 1i), countOneBits(-(i32(-1i) * -24336i))), _wgslsmith_add_u32(0u, ~max(u_input.a.x, 47421u) << (~(~0u) % 32u)));
    var var_3 = var_2.a;
    let var_4 = vec4<bool>(any(!(!(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)))), -675f != _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(24441u, 25u)] + global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_1.b, u_input.a.x), 25u)]), all(vec3<bool>(all(vec3<bool>(var_1.a.x, true, false)), any(vec3<bool>(var_1.a.x, var_1.a.x, false)) & !var_1.a.x, !(1132f >= global2[_wgslsmith_index_u32(var_0.b.x, 25u)]))), select(all(select(!vec4<bool>(var_0.a.a.x, false, true, true), !vec4<bool>(true, var_1.a.x, true, var_1.a.x), any(var_0.d))), true, true));
    return func_2(~(~select(vec4<u32>(56183u, 4294967295u, 11054u, 69556u), ~vec4<u32>(2410u, 4294967295u, 1u, 17652u), var_4)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(((func_1().a.b | 4294967295u) ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 0u) & arg_0.a.b, ~74387u)) ^ ~59226u, 19u)];
    global2 = array<f32, 25>();
    var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(vec3<bool>(true, arg_0.a.a.x, any(select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.a.a.x, true), vec4<bool>(arg_0.a.a.x, arg_1.d.x, true, arg_1.a.a.x), vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, false, var_0.d.x)))), _wgslsmith_add_u32(u_input.a.x, firstLeadingBit(arg_0.a.b))), ~vec2<u32>(~(~u_input.a.x), ~max(arg_0.a.b, 0u)), ~func_1().c, func_1().a.a.zx);
    var_0 = func_2(~select(~vec4<u32>(u_input.a.x, arg_0.b.x, u_input.a.x, 17780u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.x, var_0.b.x, u_input.a.x, arg_0.b.x), vec4<u32>(24844u, 42099u, 0u, u_input.a.x)), ~(vec4<u32>(26834u, var_0.b.x, var_1.c.x, u_input.a.x) | vec4<u32>(6945u, var_0.a.b, 1998u, var_0.c.x)), !select(vec4<bool>(false, var_1.d.x, var_1.a.a.x, false), vec4<bool>(false, var_1.d.x, false, arg_1.d.x), false)));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    global2 = array<f32, 25>();
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), abs(_wgslsmith_div_u32(firstTrailingBit(14277u), min(10073u, 24381u)))), u_input.a.xx, vec2<u32>(0u, u_input.a.x), select(select(vec2<bool>(any(vec4<bool>(false, false, false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), func_4(func_1(), func_1()), true));
    let var_1 = var_0.a;
    var var_2 = func_2(vec4<u32>(~_wgslsmith_clamp_u32(var_0.b.x, ~var_0.b.x, ~0u), var_1.b, var_1.b, _wgslsmith_mod_u32(abs(75266u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) >> (u_input.a.x % 32u))).a;
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var_0 = func_2(select(((vec4<u32>(var_2.b, u_input.a.x, var_2.b, var_2.b) & vec4<u32>(u_input.a.x, var_0.c.x, var_1.b, 60302u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(15320u, 0u, u_input.a.x, 71228u), vec4<u32>(u_input.a.x, var_1.b, var_0.c.x, u_input.a.x), vec4<u32>(0u, var_2.b, var_0.c.x, 4294967295u)) % vec4<u32>(32u))) << (vec4<u32>(var_1.b << (40394u % 32u), abs(var_0.a.b), abs(58504u), 1u) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.a.x, var_2.b, var_1.b, 34873u)) & ~vec4<u32>(12504u, var_2.b, var_0.a.b, 1u), var_1.a.x));
    let var_3 = _wgslsmith_div_vec3_u32(u_input.a >> (_wgslsmith_add_vec3_u32(firstLeadingBit(select(u_input.a, vec3<u32>(var_0.b.x, 26298u, 54307u), var_2.a)), vec3<u32>(~4294967295u, 1u, 30003u | var_0.b.x)) % vec3<u32>(32u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(56323u, 25u)]), func_1().b, abs(u_input.a.x), vec4<i32>(2147483647i, reverseBits(firstLeadingBit(~0i)), 5597i, -2147483647i));
}

