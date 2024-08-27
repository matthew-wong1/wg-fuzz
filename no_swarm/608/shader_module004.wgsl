struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec2<i32>(0i, 0i), 16333u, 10073i), false, Struct_1(vec2<i32>(-1i, -22049i), 4809u, 15191i), true), Struct_2(Struct_1(vec2<i32>(0i, -1119i), 4294967295u, 69362i), false, Struct_1(vec2<i32>(-21562i, 2147483647i), 59846u, -29602i), false), Struct_2(Struct_1(vec2<i32>(1i, 1i), 32083u, 0i), false, Struct_1(vec2<i32>(0i, -1i), 4294967295u, -25184i), false), Struct_2(Struct_1(vec2<i32>(2147483647i, 25491i), 0u, 37695i), false, Struct_1(vec2<i32>(-12510i, -47874i), 4294967295u, -1i), false), Struct_2(Struct_1(vec2<i32>(-31378i, i32(-2147483648)), 4294967295u, i32(-2147483648)), false, Struct_1(vec2<i32>(2147483647i, 0i), 112524u, -18922i), true), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 76597u, i32(-2147483648)), false, Struct_1(vec2<i32>(3827i, 28760i), 1u, i32(-2147483648)), true), Struct_2(Struct_1(vec2<i32>(-15726i, 750i), 49133u, 57169i), false, Struct_1(vec2<i32>(-1i, -37023i), 0u, 66123i), false), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -19943i), 4294967295u, -30870i), true, Struct_1(vec2<i32>(-1i, -1i), 4294967295u, 1i), true), Struct_2(Struct_1(vec2<i32>(2147483647i, -14828i), 80421u, 1i), false, Struct_1(vec2<i32>(-6096i, -34284i), 4294u, 15171i), true), Struct_2(Struct_1(vec2<i32>(2525i, 2147483647i), 4294967295u, 1i), true, Struct_1(vec2<i32>(-1i, 1i), 9236u, 1i), true), Struct_2(Struct_1(vec2<i32>(2326i, 33114i), 0u, 1i), true, Struct_1(vec2<i32>(0i, 48326i), 56450u, 1i), false), Struct_2(Struct_1(vec2<i32>(2358i, -3095i), 0u, -56934i), true, Struct_1(vec2<i32>(0i, -19298i), 1u, i32(-2147483648)), true), Struct_2(Struct_1(vec2<i32>(-1i, i32(-2147483648)), 12628u, i32(-2147483648)), false, Struct_1(vec2<i32>(48417i, 1i), 4294967295u, -8128i), true), Struct_2(Struct_1(vec2<i32>(0i, 25262i), 20289u, i32(-2147483648)), true, Struct_1(vec2<i32>(2147483647i, 0i), 1u, 26046i), false), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 19414i), 39092u, 1i), false, Struct_1(vec2<i32>(-11838i, -1i), 19526u, -1i), true), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), 4294967295u, 0i), false, Struct_1(vec2<i32>(-43728i, 2625i), 58824u, -1i), false), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), 89u, 2147483647i), false, Struct_1(vec2<i32>(2147483647i, 1i), 13021u, 0i), true), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), 4294967295u, -1i), true, Struct_1(vec2<i32>(-7725i, 17677i), 36074u, 2147483647i), true), Struct_2(Struct_1(vec2<i32>(-1i, -1i), 10312u, 19279i), true, Struct_1(vec2<i32>(678i, -1i), 0u, 2147483647i), false), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 19972i), 24125u, 2147483647i), true, Struct_1(vec2<i32>(29352i, i32(-2147483648)), 0u, i32(-2147483648)), false), Struct_2(Struct_1(vec2<i32>(62070i, 1i), 0u, 91666i), false, Struct_1(vec2<i32>(-1i, -25363i), 24221u, 72360i), false), Struct_2(Struct_1(vec2<i32>(11501i, -21160i), 70440u, -8938i), false, Struct_1(vec2<i32>(2147483647i, 4660i), 1u, 2147483647i), false), Struct_2(Struct_1(vec2<i32>(0i, 0i), 87143u, 0i), true, Struct_1(vec2<i32>(-1i, -64508i), 23142u, 2147483647i), true), Struct_2(Struct_1(vec2<i32>(-10236i, 1i), 79717u, -45346i), false, Struct_1(vec2<i32>(385i, 1i), 1u, -1i), false), Struct_2(Struct_1(vec2<i32>(0i, 1i), 22400u, 1i), true, Struct_1(vec2<i32>(-11787i, -39585i), 1u, 57724i), false), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 9175i), 30877u, 2147483647i), false, Struct_1(vec2<i32>(46559i, -15473i), 0u, 41567i), false), Struct_2(Struct_1(vec2<i32>(65769i, 1i), 30039u, 0i), true, Struct_1(vec2<i32>(0i, -1i), 72485u, 2147483647i), true), Struct_2(Struct_1(vec2<i32>(-30642i, 0i), 1u, -1i), true, Struct_1(vec2<i32>(-24782i, 2147483647i), 27099u, -1i), true), Struct_2(Struct_1(vec2<i32>(0i, -21120i), 1u, i32(-2147483648)), true, Struct_1(vec2<i32>(1i, i32(-2147483648)), 99722u, 1i), true), Struct_2(Struct_1(vec2<i32>(-1i, -1i), 47266u, i32(-2147483648)), true, Struct_1(vec2<i32>(-2403i, -1i), 15865u, 2147483647i), true));

var<private> global1: array<f32, 11>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(-54812i, 3936i), 0u, 1i), false, Struct_1(vec2<i32>(44969i, -68151i), 4294967295u, 1i), false);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(57786i, max(_wgslsmith_mod_i32(-4941i, 2147483647i), u_input.a.x << (19039u % 32u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(reverseBits(u_input.b), ~1u), global2.c.b), arg_1.a.x >> (~43262u % 32u)), !select(false, any(!vec2<bool>(global2.b, global2.b)), true), arg_1, all(vec2<bool>(false, false)));
    var var_1 = var_0.a;
    let var_2 = arg_0;
    var var_3 = global0[_wgslsmith_index_u32(4426u, 30u)];
    var var_4 = -(u_input.a ^ u_input.a);
    return select(10312i, -(~(~global2.c.a.x)), false) | (select(0i, global2.a.a.x, !any(vec3<bool>(true, global2.b, false))) << (min(~(~var_1.b), _wgslsmith_add_u32(4294967295u ^ global2.c.b, var_1.b)) % 32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global1 = array<f32, 11>();
    return Struct_2(Struct_1(_wgslsmith_add_vec2_i32(u_input.a.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, arg_1), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, arg_2.c.c), vec2<i32>(-14100i, u_input.a.x)))), ~global2.c.b ^ arg_3.b, arg_2.a.a.x & func_3(firstTrailingBit(vec2<u32>(arg_2.a.b, arg_3.b)), global2.c)), true, Struct_1(vec2<i32>(0i, select(arg_2.c.a.x, arg_3.c, arg_0.x) ^ -9228i), ~arg_2.a.b, -arg_3.c), !select(true, !arg_0.x == global2.b, true && !arg_2.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_0 = func_2(arg_0, min(global2.a.c, ~25383i), global0[_wgslsmith_index_u32(4294967295u, 30u)], global2.c);
    let var_1 = 0u & (_wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(32609u, u_input.b & 32827u)) | u_input.b);
    var var_2 = vec3<u32>(u_input.b, ~(~firstTrailingBit(_wgslsmith_div_u32(0u, u_input.b))), ~(~u_input.b));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 468f;
    let var_1 = Struct_2(func_1(!(!vec4<bool>(true, global2.b, global2.b, true)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1524f - var_0))), global1[_wgslsmith_index_u32(global2.a.b, 11u)], _wgslsmith_f_op_f32(f32(-1f) * -1644f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(45196u ^ u_input.b, 11u)]))), true, global2.c, _wgslsmith_sub_i32(~(-46619i), _wgslsmith_sub_i32(global2.a.c, firstTrailingBit(0i))) >= max(firstTrailingBit(~(-34735i)), -2147483647i));
    var var_2 = reverseBits(~global2.c.b);
    var var_3 = ~global2.a.b;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~u_input.b, 11u)], _wgslsmith_f_op_f32(f32(-1f) * -576f), all(vec2<bool>(global2.b, var_1.d)))), -710f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1384f, 773f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 931f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1226f, var_0) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 11u)], var_0))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1327f, -484f) - vec2<f32>(var_0, var_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(38961u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]) - vec2<f32>(-1149f, var_0))))), !vec2<bool>(global2.b & true, false))));
    var var_5 = global2.a;
    let var_6 = vec4<u32>(min(~(~min(u_input.b, u_input.b)), u_input.b), var_1.c.b, var_1.c.b | (firstLeadingBit(_wgslsmith_add_u32(u_input.b, var_1.c.b)) >> (0u % 32u)), var_1.c.b & countOneBits(max(1u, global2.a.b)));
    var var_7 = func_2(select(select(!vec4<bool>(false, global2.d, var_1.d, true), !select(vec4<bool>(var_1.b, global2.d, false, var_1.b), vec4<bool>(global2.d, var_1.d, false, var_1.b), vec4<bool>(var_1.d, global2.d, var_1.d, false)), select(vec4<bool>(false, true, false, global2.d), !vec4<bool>(global2.d, global2.b, var_1.b, global2.d), false)), !vec4<bool>(true, true, var_1.b & global2.d, !var_1.b), global2.b), -u_input.a.x, Struct_2(var_1.a, func_2(vec4<bool>(all(vec2<bool>(global2.b, var_1.b)), false, !var_1.d, true), u_input.a.x, func_2(select(vec4<bool>(false, true, var_1.b, global2.d), vec4<bool>(var_1.d, false, false, global2.d), global2.b), _wgslsmith_mult_i32(global2.a.c, -1i), Struct_2(var_1.a, global2.b, var_1.a, true), func_1(vec4<bool>(var_1.d, true, var_1.d, global2.b), vec4<f32>(-1000f, -1916f, var_4.x, 1352f))), global2.a).b, func_2(select(vec4<bool>(true, var_1.b, true, global2.d), vec4<bool>(var_1.b, false, false, false), global2.a.b != 1u), i32(-1i) * -310i, Struct_2(func_2(vec4<bool>(true, true, global2.b, global2.d), u_input.a.x, var_1, Struct_1(vec2<i32>(var_5.c, 0i), 13439u, var_5.c)).a, true, Struct_1(vec2<i32>(var_5.a.x, var_1.c.a.x), 4294967295u, -17550i), global2.b || global2.d), func_2(select(vec4<bool>(global2.b, false, var_1.d, var_1.d), vec4<bool>(true, false, var_1.d, var_1.d), var_1.b), _wgslsmith_mult_i32(var_5.c, u_input.a.x), func_2(vec4<bool>(global2.b, var_1.b, true, true), -1i, var_1, Struct_1(vec2<i32>(-25863i, 33998i), var_5.b, -4500i)), var_1.c).c).c, true == all(!vec2<bool>(true, var_1.d))), var_1.c);
    var_2 = 43369u;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.c, -1172f);
}

