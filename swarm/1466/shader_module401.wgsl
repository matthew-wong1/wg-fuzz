struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(1u, 1u, 0u, 27355u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(15421u, 59044u, 0u, 4294967295u), vec4<u32>(0u, 0u, 41419u, 17863u), vec4<u32>(4294967295u, 73830u, 0u, 14858u), vec4<u32>(36510u, 76761u, 94436u, 0u), vec4<u32>(0u, 57622u, 87617u, 22657u), vec4<u32>(57087u, 1u, 4294967295u, 25751u), vec4<u32>(4294967295u, 1u, 4294967295u, 31074u), vec4<u32>(4294967295u, 45945u, 0u, 37370u), vec4<u32>(4294967295u, 27661u, 11793u, 1u), vec4<u32>(0u, 1u, 47787u, 31374u), vec4<u32>(1014u, 1u, 3744u, 69353u), vec4<u32>(0u, 1u, 31503u, 93041u), vec4<u32>(1u, 0u, 3826u, 16513u), vec4<u32>(4294967295u, 4294967295u, 21800u, 55071u), vec4<u32>(53510u, 18044u, 0u, 4294967295u), vec4<u32>(75418u, 0u, 4294967295u, 4294967295u), vec4<u32>(33233u, 1u, 1u, 0u), vec4<u32>(60422u, 19855u, 0u, 0u), vec4<u32>(51957u, 17894u, 70562u, 7556u), vec4<u32>(0u, 40980u, 1u, 13972u), vec4<u32>(74295u, 26525u, 10152u, 24847u), vec4<u32>(1u, 4294967295u, 59895u, 4294967295u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(16664u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(43441u, 4294967295u, 60300u, 9478u), vec4<u32>(4988u, 40716u, 1u, 40771u), vec4<u32>(39045u, 45832u, 40619u, 3008u), vec4<u32>(31664u, 35346u, 80820u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 7672u));

var<private> global3: array<f32, 14> = array<f32, 14>(926f, -743f, 1000f, -291f, -867f, 1331f, 621f, 562f, -214f, 740f, 177f, 577f, -877f, 1370f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - 533f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1560f)) + _wgslsmith_f_op_f32(f32(-1f) * -247f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a.x + -421f))));
    var var_1 = _wgslsmith_mod_vec3_u32(~vec3<u32>(62198u, u_input.c.x, 36057u) & ~countOneBits(u_input.c), u_input.c) >> (vec3<u32>(_wgslsmith_add_u32(abs(reverseBits(u_input.d)), _wgslsmith_mult_u32(4294967295u, u_input.d) >> (u_input.c.x % 32u)), ~(~u_input.b) ^ ~abs(73463u), select(~(~1u), 0u, false)) % vec3<u32>(32u));
    var var_2 = vec3<bool>(true, arg_0.a.a, arg_0.a.a);
    var var_3 = ~64130u;
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(1343f - global1.x)), global1.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1140f - -1382f) + _wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.d, 31u)])), Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 14u)], -883f, -1000f, global3[_wgslsmith_index_u32(u_input.c.x, 14u)]), global1.x))) * global3[_wgslsmith_index_u32(~u_input.d, 14u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1108f)), _wgslsmith_f_op_f32(sign(1255f)))))), _wgslsmith_f_op_f32(select(1771f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(~0u | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(11321u, u_input.c.x, 32987u)), 14u)])), false)));
    let var_1 = var_0;
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(1u, 31u)] && global0[_wgslsmith_index_u32(~u_input.b, 31u)]);
    global2 = array<vec4<u32>, 32>();
    global0 = array<bool, 31>();
    return var_2;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_3 {
    return Struct_3(Struct_2(global0[_wgslsmith_index_u32(11898u ^ _wgslsmith_div_u32(u_input.b, 4294967295u), 31u)]));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> i32 {
    global3 = array<f32, 14>();
    let var_0 = func_4(4294967295u << (u_input.c.x % 32u), func_2(), -_wgslsmith_mod_vec4_i32(u_input.e, u_input.e));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-702f)), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.d, 14u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(-514f * global3[_wgslsmith_index_u32(54415u, 14u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global3[_wgslsmith_index_u32(129062u, 14u)], global3[_wgslsmith_index_u32(1u, 14u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-442f, arg_3, 1447f))), !select(vec3<bool>(var_0.a.a, arg_1.x, false), vec3<bool>(true, true, true), !vec3<bool>(var_0.a.a, false, arg_1.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, -344f) + vec3<f32>(1539f, global3[_wgslsmith_index_u32(73026u, 14u)], arg_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -177f, 2053f) * vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], 111f, -409f)), vec3<bool>(arg_2, false, false))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global3[_wgslsmith_index_u32(8636u, 14u)], -817f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(51085u, 14u)]))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, _wgslsmith_f_op_f32(floor(-237f)), _wgslsmith_f_op_f32(global1.x * global1.x))), select(!(!vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], arg_2)), select(vec3<bool>(false, arg_2, arg_1.x), !vec3<bool>(true, false, var_0.a.a), select(false, arg_1.x, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2, var_0.a.a, arg_1.x), vec3<bool>(arg_0, true, true), true), !global0[_wgslsmith_index_u32(u_input.d, 31u)])))));
    var var_1 = Struct_2(true);
    global3 = array<f32, 14>();
    return u_input.a;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = -arg_2.x;
    let var_1 = vec2<i32>(-_wgslsmith_mult_i32(~1i, _wgslsmith_mod_i32(reverseBits(2147483647i), arg_0 & arg_2.x)), 2147483647i);
    var var_2 = 36596u;
    let var_3 = Struct_3(Struct_2((false & global0[_wgslsmith_index_u32(4294967295u, 31u)]) || true));
    var_2 = u_input.c.x;
    return func_4(u_input.b, Struct_2(func_2().a), reverseBits(abs(vec4<i32>(u_input.e.x ^ 1i, _wgslsmith_mod_i32(u_input.e.x, arg_0), -4204i, -1i))));
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(20712u, 14u)]), global1.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d, 14u)]), -2997f) * vec4<f32>(_wgslsmith_f_op_f32(abs(704f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 14u)]), _wgslsmith_f_op_f32(f32(-1f) * -1391f), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.c.x), 14u)])))), global3[_wgslsmith_index_u32(u_input.b, 14u)]);
    let var_1 = var_0;
    var var_2 = ~_wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_mult_i32(39570i, arg_1), firstLeadingBit(-arg_1));
    var var_3 = func_5(abs(-2147483647i << (select(1u >> (u_input.c.x % 32u), _wgslsmith_sub_u32(u_input.d, 32720u), !arg_0.a.a) % 32u)), func_5(~u_input.a, arg_0, vec3<i32>(2147483647i, max(36505i, -u_input.e.x), ~_wgslsmith_sub_i32(arg_1, 2147483647i)), func_5(0i, arg_0, firstLeadingBit(u_input.e.yyy) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-21457i, arg_1, 1i), u_input.e.zzx, u_input.e.xyx), arg_0)), u_input.e.wyz, Struct_3(arg_0.a)).a;
    var var_4 = vec2<bool>(any(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], arg_0.a.a, false, true))) | false, arg_0.a.a || false);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(global1.xz, global1.xz, true));
    let var_2 = func_6(func_5(func_1(any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], global0[_wgslsmith_index_u32(5060u, 31u)], global0[_wgslsmith_index_u32(29586u, 31u)], false)), !select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)]), global0[_wgslsmith_index_u32(1u, 31u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~4294967295u, u_input.d), 31u)], -1058f), func_4(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 0u), u_input.c), _wgslsmith_add_u32(u_input.d, 7962u)), Struct_2(true), -(vec4<i32>(u_input.e.x, u_input.e.x, -13349i, u_input.a) >> (global2[_wgslsmith_index_u32(78276u, 32u)] % vec4<u32>(32u)))), vec3<i32>(abs(u_input.e.x), ~countOneBits(1i), 1i), Struct_3(func_4(u_input.b >> (u_input.d % 32u), Struct_2(global0[_wgslsmith_index_u32(87266u, 31u)]), u_input.e).a)), ~max(~abs(u_input.e.x), -30321i));
    global3 = array<f32, 14>();
    global2 = array<vec4<u32>, 32>();
    var_0 = ~16960u;
    global3 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(606f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 14u)], var_1.x)))), ~(~73509u), ~(select(select(vec3<u32>(1u, 21846u, u_input.d), vec3<u32>(u_input.c.x, 1u, u_input.d), global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.d), vec3<u32>(u_input.c.x, u_input.c.x, 0u)), all(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)]))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(94015u, 1u, u_input.d), vec3<u32>(u_input.c.x, u_input.c.x, 58887u))));
}

