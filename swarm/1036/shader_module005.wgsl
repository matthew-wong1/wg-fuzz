struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<i32>(20845i, 11719i), 63365u, vec2<f32>(1000f, 1062f), vec3<u32>(37691u, 41134u, 125u)), Struct_1(vec2<i32>(-1i, 2147483647i), 0u, vec2<f32>(-952f, -392f), vec3<u32>(4294967295u, 87337u, 0u)), vec4<i32>(i32(-2147483648), -1i, -1i, -1i), i32(-2147483648)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 1u, vec2<f32>(1000f, 229f), vec3<u32>(16083u, 74763u, 1u)), Struct_1(vec2<i32>(3683i, -25501i), 4294967295u, vec2<f32>(899f, 1107f), vec3<u32>(1u, 75070u, 43003u)), vec4<i32>(-38704i, 33157i, 23122i, 240i), 0i), Struct_2(Struct_1(vec2<i32>(-42400i, -1i), 0u, vec2<f32>(1823f, 2121f), vec3<u32>(1u, 32354u, 47891u)), Struct_1(vec2<i32>(-1187i, 0i), 0u, vec2<f32>(-262f, 1135f), vec3<u32>(79828u, 0u, 35717u)), vec4<i32>(2147483647i, -30966i, 0i, 1i), 16954i), Struct_2(Struct_1(vec2<i32>(-14790i, -1i), 47133u, vec2<f32>(525f, -700f), vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec2<i32>(-43908i, 18478i), 20961u, vec2<f32>(1043f, 1069f), vec3<u32>(4294967295u, 101180u, 1u)), vec4<i32>(33010i, 8176i, 2147483647i, -26361i), -32044i), Struct_2(Struct_1(vec2<i32>(-36121i, i32(-2147483648)), 9718u, vec2<f32>(-1000f, 608f), vec3<u32>(11348u, 17536u, 4294967295u)), Struct_1(vec2<i32>(12006i, -8154i), 34634u, vec2<f32>(522f, -878f), vec3<u32>(42301u, 34640u, 16608u)), vec4<i32>(i32(-2147483648), -1i, -1i, -26408i), 6100i), Struct_2(Struct_1(vec2<i32>(-36742i, -1i), 1u, vec2<f32>(-519f, -2375f), vec3<u32>(26000u, 7460u, 4294967295u)), Struct_1(vec2<i32>(-18680i, -64674i), 14293u, vec2<f32>(608f, -2392f), vec3<u32>(4294967295u, 13216u, 4294967295u)), vec4<i32>(-14461i, -1i, i32(-2147483648), 1i), -47038i), Struct_2(Struct_1(vec2<i32>(1i, i32(-2147483648)), 2045u, vec2<f32>(1000f, -291f), vec3<u32>(40043u, 0u, 23916u)), Struct_1(vec2<i32>(31550i, -6179i), 59934u, vec2<f32>(-1000f, 811f), vec3<u32>(1u, 40929u, 4294967295u)), vec4<i32>(0i, 38475i, i32(-2147483648), -14585i), -16843i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_2(Struct_1(vec2<i32>(-1i, firstLeadingBit(34508i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -5720i), vec2<i32>(-1i, -2147483647i))), min(min(u_input.a >> (u_input.a % 32u), u_input.a | u_input.a), reverseBits(~4294967295u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(575f, -1111f), -2180f))), ~(_wgslsmith_add_vec3_u32(vec3<u32>(3397u, u_input.a, 6308u), vec3<u32>(u_input.a, u_input.a, u_input.a)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(51696u, 0u, u_input.a), vec3<u32>(u_input.a, 1u, 26666u)) % vec3<u32>(32u)))), Struct_1(vec2<i32>(14662i, 2147483647i), _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, -1083f)))), _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(u_input.a), reverseBits(u_input.a), min(u_input.a, u_input.a)), vec3<u32>(reverseBits(u_input.a), 35107u, _wgslsmith_mult_u32(0u, u_input.a)))), ~max(vec4<i32>(1i, 10560i, -2147483647i, -1i) >> (vec4<u32>(u_input.a, u_input.a, 20800u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-32162i, -1i, 2147483647i, -1i)) >> (((vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 1u, 53477u, 4294967295u) % vec4<u32>(32u))) | ~(vec4<u32>(49379u, 0u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 0u, 75545u, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u)), 1i);
    let var_1 = vec2<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(select(122f, var_0.b.c.x, !all(vec4<bool>(true, false, false, true)))));
    let var_2 = vec3<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_0.b.c.x, var_0.b.c.x));
    var var_3 = firstLeadingBit(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, u_input.a, reverseBits(var_0.b.d.x)), 0u));
    return _wgslsmith_sub_u32(var_0.b.d.x, _wgslsmith_mod_u32(abs(_wgslsmith_add_u32(14058u, 0u)), u_input.a)) | ~4294967295u;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_1(firstLeadingBit(vec2<i32>(~arg_0, -1i)), 41052u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1530f))))), ~vec3<u32>(~u_input.a, func_3(), 4294967295u));
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_1 = -1936f;
    return Struct_3(global0[_wgslsmith_index_u32(firstTrailingBit(~(~(~var_0.b))), 7u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1464f)), 2111f, _wgslsmith_f_op_f32(1262f - _wgslsmith_f_op_f32(sign(885f))))), any(vec2<bool>(select(true, true, all(vec3<bool>(false, false, true))), select(2392f == var_1, all(vec4<bool>(true, true, true, false)), true))), abs(4294967295u) << (_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(0u, abs(u_input.a))) % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> bool {
    global0 = array<Struct_2, 7>();
    let var_0 = -2197f;
    global0 = array<Struct_2, 7>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_1);
    return 631f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x)));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = ~reverseBits(arg_3.b.d << (abs(select(arg_3.b.d, arg_3.a.d, arg_2.wzx)) % vec3<u32>(32u)));
    return func_2(arg_3.b.a.x).a;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_3 {
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_2(func_5(~reverseBits(func_2(-2147483647i).a.c), ~min(54354u, func_2(arg_0.b.a.x).a.b.b), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), !(3216i <= arg_0.c.x)), func_5(-vec4<i32>(arg_0.c.x, arg_0.d, 5564i, -21501i) & func_5(vec4<i32>(-2147483647i, arg_0.b.a.x, arg_0.b.a.x, 11722i), 77866u, vec4<bool>(false, false, true, false), Struct_2(arg_0.a, Struct_1(vec2<i32>(arg_0.d, 2147483647i), 18223u, vec2<f32>(arg_2.x, arg_2.x), vec3<u32>(4203u, 1u, 60880u)), arg_0.c, arg_0.b.a.x)).c, ~25195u, select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, false)), func_2(func_2(1158i).a.a.a.x).a)).a, arg_0.a, _wgslsmith_mult_vec4_i32(vec4<i32>(~arg_0.d, _wgslsmith_sub_i32(func_2(1i).a.a.a.x, abs(arg_0.d)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, arg_0.b.a.x), abs(9482i)), -_wgslsmith_mod_i32(-32902i, arg_0.c.x)), vec4<i32>(~0i, _wgslsmith_add_i32(0i, _wgslsmith_add_i32(arg_0.b.a.x, arg_0.c.x)), arg_0.b.a.x, max(abs(arg_0.c.x), min(arg_0.b.a.x, -52889i)))), arg_0.d);
    let var_1 = func_2(2147483647i).b.x;
    global0 = array<Struct_2, 7>();
    let var_2 = Struct_3(Struct_2(func_5(~(~var_0.c), 14039u, !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), Struct_2(arg_0.a, Struct_1(vec2<i32>(0i, var_0.d), var_0.b.d.x, vec2<f32>(104f, -1651f), var_0.a.d), select(vec4<i32>(2147483647i, -29100i, arg_0.c.x, 1i), var_0.c, vec4<bool>(true, true, true, true)), 1i)).b, func_2(0i >> (min(var_0.b.d.x, arg_0.a.b) % 32u)).a.b, select(var_0.c, var_0.c, select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), 71268u == arg_0.a.b)), -reverseBits(-54289i)), arg_2, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_4(Struct_3(Struct_2(Struct_1(arg_0.a.a, 4294967295u, arg_2.yx, vec3<u32>(4294967295u, arg_0.a.b, 4294967295u)), Struct_1(vec2<i32>(-27561i, arg_0.a.a.x), 0u, vec2<f32>(arg_2.x, -2250f), var_0.b.d), vec4<i32>(1i, 32067i, -51597i, arg_0.c.x), 1i), arg_2, false, 15864u), vec4<f32>(arg_2.x, 368f, -1000f, -756f), false)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false)))), select(func_3(), ~(~firstLeadingBit(15247u)), (~arg_0.c.x > select(-12444i, 1268i, false)) || func_2(2147483647i).c));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_3 {
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_1(abs(abs(-vec2<i32>(1i, 1i))), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(285f, -219f), vec2<f32>(-1263f, 1578f), false)))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 12688u, ~(~u_input.a)), vec3<u32>(u_input.a, ~select(u_input.a, 1876u, arg_0), ~(~u_input.a)), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = ~var_0.a.x;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(172f + var_0.c.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-942f, -411f)), var_0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(344f - 213f) - -289f), _wgslsmith_f_op_f32(f32(-1f) * -2502f)))), -1085f);
    global0 = array<Struct_2, 7>();
    return func_6(func_5(vec4<i32>(arg_1, countOneBits(-44129i << (var_0.d.x % 32u)), i32(-1i) * -22767i, -var_1), _wgslsmith_add_u32(37423u, _wgslsmith_mult_u32(56740u, _wgslsmith_mod_u32(u_input.a, 31271u))), vec4<bool>(arg_0 & arg_0, arg_0, arg_0, func_4(func_2(21817i), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_0.c.x, var_0.c.x, -1818f) + vec4<f32>(1780f, -943f, var_2.x, -604f)), true)), Struct_2(Struct_1(func_2(-1i).a.a.a, 51721u, vec2<f32>(var_2.x, var_0.c.x), var_0.d), func_2(1i).a.b, vec4<i32>(~var_1, func_2(-23832i).a.c.x, 1i, countOneBits(117i)), -(var_0.a.x << (var_0.d.x % 32u)))), var_0.d & vec3<u32>(u_input.a ^ ~var_0.d.x, ~(~4272u), 50294u), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_div_f32(1825f, _wgslsmith_f_op_f32(-610f - 2118f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-505f, -338f)));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    global0 = array<Struct_2, 7>();
    var var_0 = Struct_2(Struct_1(vec2<i32>(abs(arg_2.a.d) << (32086u % 32u), select(0i, 1i, arg_2.c | true)), 0u, func_6(Struct_2(Struct_1(arg_1.b.a, 1u, vec2<f32>(arg_0.a.b.c.x, arg_1.a.c.x), vec3<u32>(50262u, u_input.a, arg_2.d)), Struct_1(arg_0.a.b.a, u_input.a, vec2<f32>(arg_1.b.c.x, arg_1.b.c.x), arg_2.a.a.d), arg_2.a.c, arg_2.a.d), _wgslsmith_mult_vec3_u32(arg_0.a.a.d, vec3<u32>(u_input.a, arg_0.a.a.b, 27772u) << (arg_1.b.d % vec3<u32>(32u))), vec3<f32>(-1709f, arg_1.b.c.x, -805f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(775f, 2499f)) + _wgslsmith_div_f32(-2137f, arg_1.a.c.x))).a.b.c, arg_2.a.a.d), Struct_1(_wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a.a.x, 1i), arg_2.a.b.a), max(arg_1.b.a, -vec2<i32>(-12149i, 2147483647i)), _wgslsmith_div_vec2_i32(arg_0.a.a.a, func_6(arg_0.a, arg_1.a.d, arg_2.b, arg_0.a.a.c.x).a.a.a)), 0u, _wgslsmith_div_vec2_f32(func_6(Struct_2(Struct_1(arg_0.a.b.a, 0u, vec2<f32>(380f, 391f), vec3<u32>(27604u, arg_1.a.b, arg_0.d)), Struct_1(vec2<i32>(arg_2.a.a.a.x, 2147483647i), 48945u, vec2<f32>(-2009f, arg_1.a.c.x), vec3<u32>(1u, 1u, u_input.a)), arg_2.a.c, arg_2.a.d), select(vec3<u32>(arg_2.d, 1u, 1u), arg_1.a.d, false), _wgslsmith_f_op_vec3_f32(select(arg_0.b, arg_2.b, vec3<bool>(true, arg_0.c, true))), _wgslsmith_div_f32(167f, 546f)).a.a.c, arg_2.a.b.c), arg_2.a.a.d), ~(vec4<i32>(arg_1.a.a.x, ~arg_0.a.d, arg_1.a.a.x << (0u % 32u), 1i) << (vec4<u32>(32670u, _wgslsmith_mult_u32(1u, 22570u), arg_1.a.d.x, ~arg_2.a.b.d.x) % vec4<u32>(32u))), firstTrailingBit(1i));
    var_0 = func_2(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-27584i, arg_1.b.a.x), _wgslsmith_mult_i32(-6016i, 35841i), var_0.a.a.x), ~arg_0.a.c.wxz))).a;
    var var_1 = 1213i;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(~0u, 7u)], vec3<f32>(arg_1.a.c.x, arg_0.a.a.c.x, 937f), arg_2.c, abs(_wgslsmith_dot_vec2_u32((arg_0.a.b.d.zy | arg_0.a.a.d.xy) ^ _wgslsmith_mod_vec2_u32(arg_1.a.d.zx, vec2<u32>(arg_0.a.b.b, 1u)), min(~vec2<u32>(arg_2.d, arg_1.b.b), arg_0.a.a.d.xx))));
    return Struct_1(func_5(vec4<i32>(_wgslsmith_mod_i32(arg_1.b.a.x, 0i), _wgslsmith_div_i32(arg_2.a.d, arg_0.a.c.x), arg_1.d, 36224i) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(9941u, 5412u, 0u, arg_1.a.b), vec4<u32>(var_0.a.d.x, 0u, arg_0.a.a.d.x, arg_1.b.d.x), vec4<u32>(arg_1.b.d.x, 1u, arg_2.d, 69372u)) << (vec4<u32>(0u, var_0.a.d.x, arg_1.b.b, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(4294967295u), vec4<bool>(!arg_2.c, arg_0.c, func_4(Struct_3(Struct_2(arg_1.b, var_2.a.a, vec4<i32>(var_0.d, arg_2.a.a.a.x, 0i, arg_0.a.d), arg_2.a.b.a.x), arg_0.b, var_2.c, arg_0.a.b.d.x), vec4<f32>(407f, var_2.a.b.c.x, -1000f, var_0.b.c.x), true) | arg_0.c, true), Struct_2(func_6(arg_2.a, func_6(Struct_2(Struct_1(vec2<i32>(1i, arg_0.a.d), 18752u, vec2<f32>(var_2.b.x, -896f), vec3<u32>(arg_0.a.b.d.x, var_0.b.b, var_2.d)), Struct_1(vec2<i32>(arg_2.a.b.a.x, -45565i), 0u, vec2<f32>(1643f, var_0.b.c.x), arg_2.a.a.d), var_0.c, var_0.b.a.x), var_0.b.d, vec3<f32>(arg_1.b.c.x, 1298f, arg_0.a.b.c.x), var_2.a.a.c.x).a.b.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-865f, 757f, var_0.b.c.x)), _wgslsmith_div_f32(1062f, 954f)).a.a, Struct_1(vec2<i32>(-2147483647i, arg_1.b.a.x) << (vec2<u32>(4294967295u, 48252u) % vec2<u32>(32u)), ~arg_1.b.d.x, _wgslsmith_f_op_vec2_f32(-arg_2.b.zx), abs(arg_2.a.a.d)), ~arg_1.c | arg_1.c, -2147483647i)).a.a, 74380u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c.x) - _wgslsmith_f_op_f32(select(-452f, -893f, true)))), func_1(arg_2.c, -19973i).b.x), min(~countOneBits(var_2.a.a.d), ~(~var_0.b.d << (arg_0.a.a.d % vec3<u32>(32u)))));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.b.b, 7u)];
    let var_1 = func_6(func_1(!select(true, func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(arg_0.c.x, 0i), arg_1.d.x, arg_1.c, arg_1.d), var_0.a, vec4<i32>(47083i, -53555i, 13562i, -1i), arg_1.a.x), vec3<f32>(arg_1.c.x, var_0.b.c.x, arg_0.a.c.x), true, var_0.b.d.x), vec4<f32>(arg_1.c.x, 1000f, -542f, 829f), true), true), arg_0.d).a, var_0.a.d, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * 727f)), -270f, _wgslsmith_f_op_f32(f32(-1f) * -713f)))), arg_1.c.x).a.b;
    var var_2 = true;
    global0 = array<Struct_2, 7>();
    var_2 = !(!(all(vec4<bool>(false, false, false, true)) || false));
    return func_2(_wgslsmith_dot_vec3_i32(var_0.c.wwz, _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(arg_0.d), ~1i, var_1.a.x), vec3<i32>(var_0.b.a.x, var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 18315i, 1i, arg_0.d), var_0.c)), arg_0.c.xxw))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_8(Struct_2(Struct_1(select(vec2<i32>(-49342i, 0i), vec2<i32>(1i, 12607i), vec2<bool>(false, false)), 0u, vec2<f32>(832f, -1783f), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 0u, 38523u))), func_7(func_1(false, 39209i), func_5(vec4<i32>(-1i, -19168i, -24246i, 29094i), u_input.a, vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(u_input.a, 7u)]), func_1(true, -52967i)), countOneBits(vec4<i32>(-73007i, 45930i, 34602i, 0i)), -2147483647i), Struct_1(vec2<i32>(func_1(true, -2147483647i).a.c.x, ~28899i), func_5(vec4<i32>(10884i, 1i, -36854i, -11097i), ~u_input.a, vec4<bool>(true, false, true, true), Struct_2(Struct_1(vec2<i32>(-78887i, -74387i), u_input.a, vec2<f32>(418f, 1027f), vec3<u32>(1622u, 14611u, u_input.a)), Struct_1(vec2<i32>(25188i, -2147483647i), 33317u, vec2<f32>(-144f, 1000f), vec3<u32>(u_input.a, 1u, 8168u)), vec4<i32>(0i, 31284i, 49646i, 1308i), 1i)).a.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1594f, -405f))), func_5(func_5(vec4<i32>(-1i, -22840i, 2147483647i, -1i), u_input.a, vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(10449u, 7u)]).c, _wgslsmith_dot_vec4_u32(vec4<u32>(19045u, 4294967295u, u_input.a, u_input.a), vec4<u32>(25153u, u_input.a, 0u, 0u)), vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(u_input.a, 7u)]).b.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1618f, -978f) * func_8(global0[_wgslsmith_index_u32(1u, 7u)], Struct_1(vec2<i32>(8149i, 24347i), 0u, vec2<f32>(378f, 1820f), vec3<u32>(u_input.a, 1u, 33090u))).a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1328f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f - -1000f) + _wgslsmith_f_op_f32(2094f * -588f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, -423f, 875f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1030f, 1658f, -420f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1773f, -848f, -1000f), vec3<f32>(1000f, 1481f, 837f))))), true, u_input.a ^ 1u);
    let var_1 = -(~(-1i & ~reverseBits(var_0.a.d)));
    let var_2 = _wgslsmith_f_op_f32(-1274f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(-var_1).a.b.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))))));
    global0 = array<Struct_2, 7>();
    var var_3 = var_0;
    let var_4 = 24316u;
    let var_5 = var_0;
    var var_6 = select(select(!select(!vec3<bool>(true, var_3.c, var_3.c), vec3<bool>(var_5.c, true, var_3.c), !vec3<bool>(var_0.c, true, true)), vec3<bool>(any(select(vec3<bool>(false, var_3.c, false), vec3<bool>(var_0.c, var_3.c, var_3.c), true)), _wgslsmith_f_op_f32(abs(var_0.b.x)) == func_7(var_0, Struct_2(Struct_1(vec2<i32>(var_1, var_3.a.a.a.x), var_4, var_5.a.a.c, var_3.a.a.d), Struct_1(vec2<i32>(-28547i, var_1), var_4, vec2<f32>(276f, var_0.b.x), vec3<u32>(4294967295u, 22052u, var_4)), vec4<i32>(var_3.a.a.a.x, 65842i, var_0.a.c.x, -2147483647i), var_5.a.d), Struct_3(Struct_2(Struct_1(var_5.a.c.xy, 50809u, vec2<f32>(265f, var_0.a.b.c.x), vec3<u32>(var_3.a.b.b, var_3.d, 1u)), Struct_1(var_3.a.b.a, var_4, var_0.b.zy, var_3.a.b.d), vec4<i32>(var_5.a.a.a.x, var_3.a.d, var_1, 366i), var_0.a.a.a.x), vec3<f32>(-269f, -1000f, -1597f), var_3.c, 25518u)).c.x, any(vec2<bool>(var_3.c, true))), !vec3<bool>(any(vec3<bool>(true, var_0.c, false)), any(vec2<bool>(var_0.c, var_0.c)), var_3.c | false)), !select(select(select(vec3<bool>(var_3.c, false, true), vec3<bool>(false, true, false), vec3<bool>(false, var_3.c, var_0.c)), vec3<bool>(var_0.c, var_5.c, var_0.c), var_0.c | var_5.c), select(!vec3<bool>(false, var_5.c, false), vec3<bool>(false, false, var_0.c), !vec3<bool>(var_5.c, var_3.c, var_3.c)), true), select(select(!(!vec3<bool>(var_5.c, var_5.c, var_0.c)), vec3<bool>(true, true, true), true), vec3<bool>(func_4(Struct_3(Struct_2(var_0.a.a, var_5.a.b, var_3.a.c, 8598i), var_0.b, true, 18710u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1000f, 974f, var_2)), false), !select(false, false, false), false), !(_wgslsmith_f_op_f32(383f * var_0.a.a.c.x) >= var_2)));
    let var_7 = _wgslsmith_f_op_vec2_f32(ceil(var_0.b.zx));
    let x = u_input.a;
    s_output = StorageBuffer(select(~reverseBits(reverseBits(vec4<u32>(4294967295u, 0u, 0u, var_0.a.a.d.x))), vec4<u32>(var_5.a.a.b, 64707u, var_3.d, ~var_3.d) ^ vec4<u32>(~var_4, var_4 & var_5.a.b.d.x, var_3.a.b.b, u_input.a << (var_4 % 32u)), select(select(vec4<bool>(var_3.c, false, true, var_0.c), !vec4<bool>(false, true, var_6.x, true), any(vec2<bool>(var_0.c, var_0.c))), !vec4<bool>(false, true, var_6.x, false), !select(vec4<bool>(false, var_5.c, false, false), vec4<bool>(var_0.c, true, false, var_0.c), true))), 63401u, vec4<u32>(var_4, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.a.b, var_4, var_5.d), vec4<u32>(4294967295u, 4453u, 46773u, var_4)), 5044u, var_5.a.b.b));
}

