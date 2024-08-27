struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<f32>(-1051f, 277f, -819f, -414f), 84722i), Struct_1(vec4<f32>(-674f, -429f, -791f, 715f), -7617i), Struct_1(vec4<f32>(-1919f, 1356f, -477f, 130f), -2432i), Struct_1(vec4<f32>(972f, 1352f, 910f, 738f), 1i), Struct_1(vec4<f32>(634f, -139f, -1027f, 1731f), i32(-2147483648)), Struct_1(vec4<f32>(-460f, -1000f, 410f, -165f), 1i), Struct_1(vec4<f32>(2316f, -768f, -1269f, -501f), -1080i), Struct_1(vec4<f32>(-476f, 193f, -958f, 1262f), -1i), Struct_1(vec4<f32>(523f, 1144f, 834f, -358f), -63206i), Struct_1(vec4<f32>(425f, 298f, 241f, -924f), -15320i), Struct_1(vec4<f32>(1286f, -198f, 234f, -1000f), 15314i), Struct_1(vec4<f32>(-580f, -260f, 367f, 123f), i32(-2147483648)), Struct_1(vec4<f32>(469f, -175f, -320f, -1159f), 1i), Struct_1(vec4<f32>(241f, 914f, -531f, 1163f), 55746i), Struct_1(vec4<f32>(-919f, -657f, -1819f, -1056f), 41178i), Struct_1(vec4<f32>(1551f, -424f, -444f, 1202f), -21869i), Struct_1(vec4<f32>(828f, 189f, -538f, 511f), 5227i), Struct_1(vec4<f32>(-254f, 1000f, 1440f, 274f), i32(-2147483648)), Struct_1(vec4<f32>(410f, 1000f, -373f, -661f), 2147483647i), Struct_1(vec4<f32>(397f, -1065f, 152f, -770f), 0i), Struct_1(vec4<f32>(-1672f, 301f, -1474f, -825f), 0i), Struct_1(vec4<f32>(865f, -134f, 1399f, 572f), 0i), Struct_1(vec4<f32>(166f, 302f, 1185f, -639f), -1i), Struct_1(vec4<f32>(-2304f, -345f, 235f, 2649f), 0i), Struct_1(vec4<f32>(-932f, -127f, -1447f, -822f), 1i), Struct_1(vec4<f32>(-1000f, -185f, -789f, 261f), 39645i), Struct_1(vec4<f32>(398f, 681f, 779f, 819f), 17973i));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(-126f, -1885f, 392f, 1981f), 0i), Struct_1(vec4<f32>(475f, -2646f, -553f, -145f), 82470i), Struct_1(vec4<f32>(742f, 3024f, -1336f, 2658f), 3636i), Struct_1(vec4<f32>(-662f, 1999f, 843f, -1730f), 2147483647i), Struct_1(vec4<f32>(398f, -1378f, 351f, 1194f), 2147483647i), Struct_1(vec4<f32>(-645f, -1478f, -690f, 1158f), -1916i), Struct_1(vec4<f32>(-526f, -390f, 916f, -2297f), -11210i), Struct_1(vec4<f32>(283f, -650f, -235f, -381f), -43196i), Struct_1(vec4<f32>(2233f, 344f, 935f, -1446f), 1i), Struct_1(vec4<f32>(-588f, 1896f, -1525f, -1172f), i32(-2147483648)), Struct_1(vec4<f32>(-232f, -915f, -1577f, 921f), 2147483647i), Struct_1(vec4<f32>(125f, -1658f, 260f, 1637f), 1i), Struct_1(vec4<f32>(714f, 357f, 205f, 1020f), 2147483647i), Struct_1(vec4<f32>(-1706f, 775f, -1866f, -1680f), -85529i), Struct_1(vec4<f32>(244f, -262f, 195f, -108f), 32710i), Struct_1(vec4<f32>(349f, 226f, -1000f, -927f), i32(-2147483648)), Struct_1(vec4<f32>(-2245f, 158f, 221f, -247f), -1i), Struct_1(vec4<f32>(-411f, -1000f, -1457f, 3062f), 45480i), Struct_1(vec4<f32>(391f, 611f, 279f, 2005f), 0i), Struct_1(vec4<f32>(1673f, 712f, 1016f, 1229f), 32903i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = global1.zy;
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 27u)];
    var var_2 = arg_1;
    var var_3 = !vec4<bool>(!(!(!global1.x)), var_0.x, any(vec2<bool>(true, false)), true);
    let var_4 = ~vec4<u32>(abs(u_input.b), u_input.d.x, ~min(u_input.c.x, u_input.d.x) ^ u_input.d.x, 0u);
    return true;
}

fn func_3() -> vec4<bool> {
    let var_0 = max(vec4<u32>(max(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(44095u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 89146u), u_input.c.wy))), ~_wgslsmith_dot_vec2_u32(u_input.c.zw, u_input.d.xz) ^ 1u, ~1u >> (0u % 32u), ~u_input.d.x), vec4<u32>(u_input.c.x, ~(~_wgslsmith_clamp_u32(70428u, u_input.b, 13962u)), ~(~u_input.d.x), firstLeadingBit(~9606u)));
    var var_1 = ~vec2<u32>(4294967295u, ~u_input.c.x);
    global1 = vec4<bool>(!global1.x, true, global1.x, all(vec3<bool>(!any(global1.yyw), max(u_input.a, u_input.a) < ~u_input.a, true)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_0.x), ~_wgslsmith_add_u32(u_input.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, var_1.x), ~57031u))), 20u)];
    var var_3 = global2[_wgslsmith_index_u32(104536u, 20u)];
    return vec4<bool>(!global1.x, false | global1.x, global1.x, global1.x);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = max(arg_2.wy, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a | arg_2.x, ~arg_2.x), _wgslsmith_sub_vec2_i32(arg_2.wy, vec2<i32>(-1i, arg_2.x)), -arg_2.zx));
    var var_1 = ~_wgslsmith_div_i32(2147483647i, var_0.x);
    global1 = select(vec4<bool>(true, true & any(global1.zy), true & func_2(Struct_1(vec4<f32>(-148f, -576f, -1024f, -209f), u_input.a), global2[_wgslsmith_index_u32(~44585u, 20u)]), true), vec4<bool>(global1.x, func_2(Struct_1(vec4<f32>(-157f, -756f, -1667f, 558f), u_input.a), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 1u), 20u)]) && true, all(func_3()), all(global1.zyz)), true);
    var var_2 = var_0;
    global1 = !vec4<bool>(false, any(select(!global1.ywx, global1.yzy, global1.yzw)), global1.x, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -321f, -318f, -1037f) + vec4<f32>(552f, -412f, 812f, -247f)), reverseBits(15526i)), global0[_wgslsmith_index_u32((arg_1.x | arg_1.x) >> (~u_input.d.x % 32u), 27u)]));
    return global1.zzz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 4294967295u) | u_input.c.x, ~min(firstLeadingBit(u_input.d.x), abs(u_input.c.x)), ~u_input.c.x), u_input.d.xz, reverseBits(select(~vec4<i32>(2147483647i, u_input.a, u_input.a, 11976i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<i32>(u_input.a, -21452i, u_input.a, u_input.a), global1.x) << (_wgslsmith_mult_vec4_u32(select(u_input.c, u_input.c, vec4<bool>(true, true, global1.x, true)), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c)) % vec4<u32>(32u))));
    let var_1 = vec4<u32>(26524u, u_input.c.x, min(_wgslsmith_add_u32(u_input.b, 17308u), 4294967295u), ~_wgslsmith_dot_vec3_u32(u_input.d, abs(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(20780u, 43113u, u_input.c.x)))));
    var var_2 = reverseBits(-1i);
    global0 = array<Struct_1, 27>();
    let var_3 = global0[_wgslsmith_index_u32(~0u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(vec3<i32>(70048i, 2147483647i, -35786i) << ((vec3<u32>(u_input.d.x, var_1.x, var_1.x) >> (vec3<u32>(u_input.c.x, 4294967295u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))), vec2<i32>(_wgslsmith_mult_i32(1i, -1i), 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_3.a.x)))));
}

