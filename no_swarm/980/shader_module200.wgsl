struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(2766u, vec2<u32>(16481u, 81339u), vec4<i32>(i32(-2147483648), 8155i, 15341i, -1i), vec3<bool>(true, true, false)), Struct_1(22221u, vec2<u32>(46050u, 24030u), vec4<i32>(-1i, -27610i, 5642i, -48867i), vec3<bool>(true, true, false)), Struct_1(0u, vec2<u32>(4294967295u, 4294967295u), vec4<i32>(3026i, 10804i, -1i, -12978i), vec3<bool>(true, true, true)), Struct_1(47611u, vec2<u32>(1u, 4294967295u), vec4<i32>(-5838i, 2147483647i, i32(-2147483648), -43008i), vec3<bool>(false, false, true)), Struct_1(0u, vec2<u32>(4294967295u, 1u), vec4<i32>(i32(-2147483648), -787i, 2147483647i, 1i), vec3<bool>(true, true, true)), Struct_1(20465u, vec2<u32>(0u, 0u), vec4<i32>(8479i, -18417i, 0i, -31622i), vec3<bool>(false, true, false)), Struct_1(30941u, vec2<u32>(4294967295u, 68195u), vec4<i32>(0i, 6790i, 0i, 0i), vec3<bool>(true, false, true)), Struct_1(20276u, vec2<u32>(4294967295u, 25933u), vec4<i32>(0i, i32(-2147483648), 1i, 22866i), vec3<bool>(false, false, false)), Struct_1(4294967295u, vec2<u32>(1u, 0u), vec4<i32>(0i, 2147483647i, i32(-2147483648), 2147483647i), vec3<bool>(false, true, false)), Struct_1(10975u, vec2<u32>(29494u, 31927u), vec4<i32>(-25333i, 34337i, 35281i, 14738i), vec3<bool>(true, true, false)), Struct_1(30009u, vec2<u32>(21387u, 1u), vec4<i32>(2147483647i, 0i, 21958i, -1i), vec3<bool>(false, true, true)), Struct_1(4294967295u, vec2<u32>(0u, 55474u), vec4<i32>(-1i, 72420i, 1i, -45438i), vec3<bool>(true, false, false)), Struct_1(57265u, vec2<u32>(29323u, 36848u), vec4<i32>(i32(-2147483648), -35175i, 35266i, 11607i), vec3<bool>(true, false, false)), Struct_1(72749u, vec2<u32>(22397u, 18266u), vec4<i32>(16333i, i32(-2147483648), 0i, 18608i), vec3<bool>(true, false, false)), Struct_1(78959u, vec2<u32>(0u, 1u), vec4<i32>(-1i, 41148i, 18702i, 0i), vec3<bool>(false, true, true)), Struct_1(21936u, vec2<u32>(0u, 1u), vec4<i32>(-1i, i32(-2147483648), 1i, 0i), vec3<bool>(true, false, true)), Struct_1(2342u, vec2<u32>(36317u, 31889u), vec4<i32>(35107i, -26610i, -1i, -1i), vec3<bool>(false, true, true)), Struct_1(1u, vec2<u32>(4294967295u, 24155u), vec4<i32>(1i, 1i, i32(-2147483648), -1817i), vec3<bool>(false, false, false)), Struct_1(43228u, vec2<u32>(7368u, 40417u), vec4<i32>(-23068i, i32(-2147483648), 23180i, 2147483647i), vec3<bool>(true, true, true)), Struct_1(2503u, vec2<u32>(41601u, 23537u), vec4<i32>(2147483647i, 24978i, -4373i, -1i), vec3<bool>(true, true, false)));

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(1u, 4707u), vec2<u32>(4294967295u, 25305u), vec2<u32>(4294967295u, 0u), vec2<u32>(14129u, 66343u), vec2<u32>(0u, 4294967295u), vec2<u32>(14572u, 2101u), vec2<u32>(79237u, 18471u), vec2<u32>(32670u, 80323u), vec2<u32>(39948u, 30899u), vec2<u32>(34669u, 12806u), vec2<u32>(0u, 78541u), vec2<u32>(61003u, 0u), vec2<u32>(14859u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(21242u, 58790u), vec2<u32>(1u, 1u), vec2<u32>(31241u, 4294967295u), vec2<u32>(1u, 11197u), vec2<u32>(0u, 39117u), vec2<u32>(4294967295u, 7587u), vec2<u32>(0u, 57657u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(16963u, 40797u), vec2<u32>(29u, 4294967295u), vec2<u32>(48550u, 1u));

var<private> global3: array<f32, 28>;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(18284u, vec2<u32>(67257u, 30654u), vec4<i32>(0i, 2147483647i, 0i, i32(-2147483648)), vec3<bool>(false, true, true)), Struct_1(4294967295u, vec2<u32>(37278u, 1u), vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648)), vec3<bool>(true, false, false)), Struct_1(115274u, vec2<u32>(4294967295u, 0u), vec4<i32>(-1i, 45852i, -1i, 2147483647i), vec3<bool>(true, false, false)), Struct_1(11953u, vec2<u32>(0u, 1u), vec4<i32>(0i, -1648i, 0i, 4540i), vec3<bool>(true, true, true)), Struct_1(0u, vec2<u32>(3312u, 4294967295u), vec4<i32>(0i, -12466i, 24347i, 2147483647i), vec3<bool>(true, false, true)), Struct_1(0u, vec2<u32>(0u, 4294967295u), vec4<i32>(2147483647i, -1i, -1i, -32758i), vec3<bool>(true, false, false)), Struct_1(43810u, vec2<u32>(4495u, 24410u), vec4<i32>(1i, -24215i, i32(-2147483648), 1i), vec3<bool>(true, true, false)), Struct_1(68399u, vec2<u32>(60488u, 4294967295u), vec4<i32>(-12254i, -1i, 22636i, 34447i), vec3<bool>(false, false, false)), Struct_1(40652u, vec2<u32>(111663u, 20196u), vec4<i32>(27091i, i32(-2147483648), -5551i, 48872i), vec3<bool>(true, false, false)), Struct_1(55961u, vec2<u32>(2935u, 4294967295u), vec4<i32>(1i, 0i, -1i, i32(-2147483648)), vec3<bool>(true, true, true)), Struct_1(8847u, vec2<u32>(1u, 1u), vec4<i32>(2147483647i, 2147483647i, -45859i, 1i), vec3<bool>(false, false, true)), Struct_1(4294967295u, vec2<u32>(45452u, 19716u), vec4<i32>(-1i, i32(-2147483648), 2147483647i, -27403i), vec3<bool>(true, false, true)), Struct_1(0u, vec2<u32>(88976u, 64039u), vec4<i32>(-1i, i32(-2147483648), 0i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_1(60195u, vec2<u32>(0u, 23461u), vec4<i32>(2147483647i, 54611i, 2147483647i, -2381i), vec3<bool>(true, false, false)), Struct_1(3275u, vec2<u32>(76678u, 4294967295u), vec4<i32>(-28792i, i32(-2147483648), -41793i, 2147483647i), vec3<bool>(false, false, false)), Struct_1(56240u, vec2<u32>(2094u, 0u), vec4<i32>(1i, 43910i, -33317i, 1i), vec3<bool>(false, false, true)), Struct_1(4294967295u, vec2<u32>(12735u, 1u), vec4<i32>(-43775i, 76731i, 29543i, -53402i), vec3<bool>(false, true, false)), Struct_1(1u, vec2<u32>(59364u, 4294967295u), vec4<i32>(22147i, -1i, 2147483647i, 0i), vec3<bool>(false, true, false)), Struct_1(39346u, vec2<u32>(0u, 0u), vec4<i32>(27207i, i32(-2147483648), -18083i, 2147483647i), vec3<bool>(false, true, false)), Struct_1(0u, vec2<u32>(0u, 28378u), vec4<i32>(0i, 2147483647i, 2147483647i, i32(-2147483648)), vec3<bool>(true, false, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = ~u_input.e.x;
    var var_1 = Struct_2(select(arg_0.a, arg_0.a, vec4<bool>(arg_0.a.x, false, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d, 28u)]) <= -1000f, true)));
    var var_2 = arg_0.a.x;
    global3 = array<f32, 28>();
    global0 = array<Struct_1, 20>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 28u)], 803f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 28u)]), -722f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(var_0, 28u)], global3[_wgslsmith_index_u32(u_input.d, 28u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(304f, -1322f, global3[_wgslsmith_index_u32(1u, 28u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, 2393f, -833f) * vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)], -903f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(80925u, 28u)], global3[_wgslsmith_index_u32(var_0, 28u)], -1877f) * vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(u_input.d, 28u)], 1369f))))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> bool {
    global0 = array<Struct_1, 20>();
    let var_0 = -(min(vec2<i32>(firstLeadingBit(global1.x), -1i), vec2<i32>(u_input.b.x, 17679i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 22189u), vec2<u32>(arg_1, arg_1)) % vec2<u32>(32u))) << (~global2[_wgslsmith_index_u32(firstLeadingBit(8934u), 27u)] % vec2<u32>(32u)));
    let var_1 = max(~vec2<i32>(-1i, ~global1.x), vec2<i32>(_wgslsmith_sub_i32(max(u_input.b.x, -31339i), i32(-1i) * -global1.x), -39368i));
    var var_2 = 28724u;
    global1 = ~vec2<i32>(~abs(-var_1.x), _wgslsmith_mult_i32(~arg_2 << (0u % 32u), -1i));
    return !(!(!any(vec4<bool>(arg_0.a.x, false, true, false))));
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(!vec4<bool>(true, true, arg_0, arg_1)))), vec3<f32>(global3[_wgslsmith_index_u32(~u_input.a.x, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(17356u, 28u)]))))))));
    var var_1 = !select(vec2<bool>(arg_1, arg_0), vec2<bool>(arg_0, arg_1), !arg_1);
    var var_2 = Struct_2(select(!vec4<bool>(75346u > u_input.d, func_3(Struct_2(vec4<bool>(arg_1, var_1.x, arg_1, arg_1)), 9254u, global1.x), false, true), select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, global3[_wgslsmith_index_u32(u_input.e.x, 28u)] >= -1000f, false, !arg_1), vec4<bool>(true, 0i != u_input.b.x, var_1.x, true)), true));
    global3 = array<f32, 28>();
    var_2 = Struct_2(select(select(vec4<bool>(u_input.c < u_input.a.x, arg_0, false, true), !var_2.a, arg_0), vec4<bool>(any(select(vec3<bool>(var_1.x, arg_0, true), var_2.a.yyy, true)), any(select(vec2<bool>(arg_0, var_2.a.x), var_2.a.zx, vec2<bool>(true, false))), !(!var_1.x), all(var_2.a.yyw)), var_2.a));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1116f) - _wgslsmith_f_op_f32(751f + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1288f, global3[_wgslsmith_index_u32(u_input.d, 28u)])) + 1426f), !all(var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)) == false));
    let var_1 = vec3<i32>(global1.x, -2147483647i, i32(-1i) * -1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~u_input.e.x), 28u)], _wgslsmith_f_op_f32(func_1(true, true)), global3[_wgslsmith_index_u32(countOneBits(~1u), 28u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), -940f))) - vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec4<bool>(var_0, false, false, var_0)))).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(11786u, 28u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(430f, global3[_wgslsmith_index_u32(u_input.c, 28u)]))), _wgslsmith_f_op_f32(step(-137f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.d, 28u)], global3[_wgslsmith_index_u32(u_input.e.x, 28u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(countOneBits(-vec3<i32>(var_1.x, 1i, 2147483647i)) ^ (_wgslsmith_mod_vec3_i32(var_1, vec3<i32>(1849i, 0i, 48717i)) | vec3<i32>(-14706i, u_input.b.x, var_1.x)), vec3<i32>(-1i, 1i, -u_input.b.x)));
}

