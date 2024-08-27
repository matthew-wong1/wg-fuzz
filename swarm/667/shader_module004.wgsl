struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-1i, 1i, -27289i, 1143i, i32(-2147483648), 38924i, i32(-2147483648), -6951i, 2147483647i, -29765i, 1i, 2147483647i, 1i);

var<private> global1: array<vec3<u32>, 26>;

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = u_input.d;
    var var_1 = Struct_1(_wgslsmith_sub_i32(~2147483647i, global0[_wgslsmith_index_u32(~min(firstTrailingBit(4294967295u), 1u), 13u)]), select(vec4<bool>(-u_input.d != u_input.a.x, any(vec4<bool>(false, true, false, false)), !all(vec4<bool>(false, true, false, true)), true), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), false), vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)), true, true, true)), var_0, -296f);
    return var_1.d;
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 13>();
    var var_0 = ~(~(~firstTrailingBit(~65073u)));
    global0 = array<i32, 13>();
    let var_1 = vec4<f32>(-1526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f * -193f)) - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-806f))), _wgslsmith_f_op_f32(step(-636f, _wgslsmith_f_op_f32(select(1f, -629f, _wgslsmith_f_op_f32(select(-1018f, 637f, true)) > _wgslsmith_f_op_f32(f32(-1f) * -872f))))));
    var var_2 = 0u;
    return Struct_1(-14042i, !vec4<bool>(true, true, all(vec2<bool>(false, false)), false & (u_input.a.x != global0[_wgslsmith_index_u32(4294967295u, 13u)])), -(~1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 1f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    let var_0 = true;
    var var_1 = vec4<u32>(firstLeadingBit(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 7770u)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u)))), 0u, countOneBits(4294967295u), ~(~(~select(4294967295u, 4294967295u, true))));
    global0 = array<i32, 13>();
    let var_2 = !(!func_2().b);
    var_1 = vec4<u32>(~reverseBits(reverseBits(~var_1.x)), firstTrailingBit(~48522u & var_1.x), min(reverseBits(1u) & _wgslsmith_dot_vec4_u32(~vec4<u32>(56063u, 3777u, 0u, 4294967295u), firstLeadingBit(vec4<u32>(31332u, 0u, var_1.x, 6756u))), 1u), max(~abs(~66796u), abs(_wgslsmith_mult_u32(var_1.x, firstTrailingBit(var_1.x)))));
    return (_wgslsmith_add_i32(3802i, max(-31532i, 41144i)) << (var_1.x % 32u)) >> (countOneBits(63407u) % 32u);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = reverseBits(min(func_4(func_2(), ~u_input.c.zz), u_input.c.x));
    var var_1 = arg_2.b.c;
    var var_2 = countOneBits(4294967295u);
    var_1 = func_2();
    let var_3 = Struct_1(8028i, func_2().b, _wgslsmith_mult_i32(select(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 13u)], countOneBits(1i)), arg_2.b.e << (29015u % 32u), any(vec3<bool>(true, true, arg_0.x)) || false), _wgslsmith_mod_i32(64659i | arg_1.x, select(max(-24303i, var_0), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(22044u, 1u), vec2<u32>(0u, 1u)), 13u)], true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(960f + -292f))));
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = true;
    global0 = array<i32, 13>();
    let var_1 = reverseBits(select(1u, ~_wgslsmith_add_u32(0u, 1u), false));
    global0 = array<i32, 13>();
    return arg_1.a;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<f32> {
    global1 = array<vec3<u32>, 26>();
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(1u), 26u)];
    global2 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_mod_vec3_i32(u_input.c, u_input.c << (vec3<u32>(_wgslsmith_mod_u32(~5300u, 4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(25171u, 27741u), vec2<u32>(0u, 1u)), select(vec2<u32>(19676u, 28322u), vec2<u32>(8479u, 0u), arg_1.a.b.x)), ~firstTrailingBit(23146u)) % vec3<u32>(32u)));
    global0 = array<i32, 13>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-999f, _wgslsmith_f_op_f32(520f - 334f)) + _wgslsmith_f_op_f32(arg_1.a.d * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.a.d, 387f), _wgslsmith_f_op_f32(arg_2.a.d + arg_2.a.d))))), arg_2.a.d);
}

fn func_7(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> bool {
    global0 = array<i32, 13>();
    var var_0 = ~1u;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-150f, arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), 817f)), vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-783f, -1060f, 2451f))))))));
    var_0 = ~(~_wgslsmith_div_u32(4294967295u, ~countOneBits(0u)));
    let var_2 = func_5(Struct_1(15547i, func_1(select(vec2<bool>(true, arg_2), vec2<bool>(false, false), arg_1), -vec2<i32>(0i, global0[_wgslsmith_index_u32(45442u, 13u)]), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(828f, 540f)), Struct_3(Struct_2(Struct_1(41489i, vec4<bool>(arg_2, arg_1, false, false), global0[_wgslsmith_index_u32(8979u, 13u)], var_1.x)), global2[_wgslsmith_index_u32(17193u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(33283i, vec4<bool>(arg_2, false, arg_2, false), 11215i, 1135f), u_input.a.x), vec3<i32>(-2147483647i, 22690i, u_input.a.x))).b, global0[_wgslsmith_index_u32(0u, 13u)], func_5(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 1u), 26u)], Struct_3(func_5(Struct_1(1i, vec4<bool>(arg_2, arg_2, false, arg_2), u_input.c.x, 583f), Struct_3(Struct_2(Struct_1(2147483647i, vec4<bool>(arg_1, true, false, false), u_input.c.x, var_1.x)), global2[_wgslsmith_index_u32(0u, 26u)], Struct_1(u_input.b, vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(4294967295u, 13u)], var_1.x), Struct_1(global0[_wgslsmith_index_u32(94942u, 13u)], vec4<bool>(false, arg_1, true, arg_1), u_input.c.x, var_1.x), global0[_wgslsmith_index_u32(30876u, 13u)])), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 26u)], func_1(vec2<bool>(arg_1, false), vec2<i32>(global0[_wgslsmith_index_u32(94203u, 13u)], -26198i), Struct_5(vec2<f32>(-1119f, var_1.x), Struct_3(Struct_2(Struct_1(-1i, vec4<bool>(false, false, arg_2, true), 4086i, -385f)), Struct_1(u_input.b, vec4<bool>(arg_2, arg_2, arg_1, true), global0[_wgslsmith_index_u32(77025u, 13u)], var_1.x), Struct_1(1548i, vec4<bool>(false, arg_2, arg_2, true), u_input.c.x, -670f), global2[_wgslsmith_index_u32(25017u, 26u)], 0i), u_input.a)), func_1(vec2<bool>(arg_1, arg_1), u_input.a.zx, Struct_5(vec2<f32>(var_1.x, arg_0.x), Struct_3(Struct_2(global2[_wgslsmith_index_u32(16981u, 26u)]), global2[_wgslsmith_index_u32(17779u, 26u)], global2[_wgslsmith_index_u32(14349u, 26u)], global2[_wgslsmith_index_u32(21121u, 26u)], 0i), vec3<i32>(2147483647i, -81592i, u_input.a.x))), u_input.b)).a.d), Struct_3(Struct_2(func_5(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 82178u), 26u)], Struct_3(Struct_2(Struct_1(u_input.c.x, vec4<bool>(arg_1, arg_2, false, arg_2), global0[_wgslsmith_index_u32(15451u, 13u)], -2018f)), global2[_wgslsmith_index_u32(0u, 26u)], Struct_1(global0[_wgslsmith_index_u32(0u, 13u)], vec4<bool>(false, true, false, arg_1), 58488i, 519f), Struct_1(2147483647i, vec4<bool>(false, arg_2, false, true), 0i, -1669f), 0i)).a), global2[_wgslsmith_index_u32(60825u, 26u)], global2[_wgslsmith_index_u32(64492u, 26u)], global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~10288u, 1u), 26u)], min(u_input.d, _wgslsmith_sub_i32(u_input.c.x, ~u_input.a.x)))).a.b.www;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-181f, -699f) * vec2<f32>(-103f, 796f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1109f, 1520f)))), _wgslsmith_f_op_vec2_f32(func_6(~(vec2<i32>(-1i, global0[_wgslsmith_index_u32(1u, 13u)]) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), func_5(func_1(vec2<bool>(false, true), u_input.a.zy, Struct_5(vec2<f32>(-2078f, 530f), Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 26u)]), global2[_wgslsmith_index_u32(10360u, 26u)], Struct_1(global0[_wgslsmith_index_u32(4294967295u, 13u)], vec4<bool>(true, true, false, true), 1i, 207f), global2[_wgslsmith_index_u32(1u, 26u)], 2147483647i), vec3<i32>(22385i, u_input.c.x, 10534i))), Struct_3(Struct_2(Struct_1(u_input.d, vec4<bool>(true, false, true, true), u_input.d, 850f)), global2[_wgslsmith_index_u32(1u, 26u)], Struct_1(-1i, vec4<bool>(false, false, false, true), global0[_wgslsmith_index_u32(4294967295u, 13u)], -549f), Struct_1(global0[_wgslsmith_index_u32(0u, 13u)], vec4<bool>(true, false, false, false), -12452i, -1262f), u_input.b)), func_5(func_1(vec2<bool>(false, false), u_input.a.yx, Struct_5(vec2<f32>(-226f, -573f), Struct_3(Struct_2(Struct_1(0i, vec4<bool>(false, true, true, true), u_input.d, 262f)), global2[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(u_input.d, vec4<bool>(false, true, false, true), global0[_wgslsmith_index_u32(1u, 13u)], 938f), Struct_1(0i, vec4<bool>(true, false, true, true), 1i, -1909f), -27459i), u_input.c)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(26994u, 26u)]), Struct_1(u_input.b, vec4<bool>(false, false, true, false), -1i, 497f), global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], u_input.b)))))), true, !func_2().b.x);
    var_0 = true;
    let var_1 = select(func_5(func_5(Struct_1(u_input.d, vec4<bool>(true, true, true, true), -u_input.b, _wgslsmith_f_op_f32(ceil(530f))), Struct_3(func_5(global2[_wgslsmith_index_u32(53173u, 26u)], Struct_3(Struct_2(Struct_1(u_input.c.x, vec4<bool>(false, false, false, true), 17179i, 3409f)), global2[_wgslsmith_index_u32(1u, 26u)], Struct_1(global0[_wgslsmith_index_u32(1u, 13u)], vec4<bool>(false, true, true, false), -1i, 1319f), global2[_wgslsmith_index_u32(11529u, 26u)], u_input.c.x)), Struct_1(u_input.b, vec4<bool>(true, true, true, true), u_input.c.x, -1107f), global2[_wgslsmith_index_u32(65178u, 26u)], func_1(vec2<bool>(false, true), vec2<i32>(-4366i, 0i), Struct_5(vec2<f32>(978f, 423f), Struct_3(Struct_2(Struct_1(8876i, vec4<bool>(true, false, true, true), -2147483647i, 130f)), Struct_1(u_input.c.x, vec4<bool>(true, false, true, true), -1i, 949f), global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(1u, 13u)]), vec3<i32>(u_input.d, -28763i, u_input.b))), 1i)).a, Struct_3(func_5(global2[_wgslsmith_index_u32(0u, 26u)], Struct_3(Struct_2(Struct_1(21466i, vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(38738u, 13u)], 1082f)), Struct_1(global0[_wgslsmith_index_u32(39352u, 13u)], vec4<bool>(true, true, false, false), 23458i, 2026f), Struct_1(1i, vec4<bool>(false, true, false, true), u_input.c.x, 2302f), global2[_wgslsmith_index_u32(1u, 26u)], 2625i)), Struct_1(-u_input.a.x, func_5(global2[_wgslsmith_index_u32(9296u, 26u)], Struct_3(Struct_2(Struct_1(51932i, vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(1u, 13u)], 1350f)), Struct_1(u_input.d, vec4<bool>(false, true, false, false), u_input.b, -339f), global2[_wgslsmith_index_u32(0u, 26u)], Struct_1(0i, vec4<bool>(true, true, true, false), 2147483647i, 296f), -25903i)).a.b, func_1(vec2<bool>(false, false), vec2<i32>(global0[_wgslsmith_index_u32(13471u, 13u)], 2147483647i), Struct_5(vec2<f32>(-374f, -415f), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 13u)], vec4<bool>(true, false, false, false), u_input.a.x, 588f)), global2[_wgslsmith_index_u32(0u, 26u)], Struct_1(1i, vec4<bool>(false, false, true, false), -4928i, -240f), Struct_1(global0[_wgslsmith_index_u32(92731u, 13u)], vec4<bool>(false, true, true, true), -4998i, 179f), u_input.d), vec3<i32>(2147483647i, 21436i, -19754i))).c, _wgslsmith_f_op_f32(f32(-1f) * -256f)), global2[_wgslsmith_index_u32(36876u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], countOneBits(1i))).a.b.x, true, reverseBits(_wgslsmith_mult_i32(20939i, 0i)) != abs(firstLeadingBit(-global0[_wgslsmith_index_u32(35225u, 13u)])));
    global0 = array<i32, 13>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1136f)), -106f, _wgslsmith_f_op_f32(1129f + -999f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1147f, -177f, -308f)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2029f, -510f, 1888f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(341f, -691f, -116f), vec3<f32>(-444f, 157f, -133f))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1130f, -614f, false)), -542f)), _wgslsmith_f_op_f32(func_2().d - -1521f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_div_f32(-803f, -803f), !var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_div_f32(-1000f, var_2.x)) + vec2<f32>(324f, var_2.x)) + var_2.yy), max(firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(45070u, 13u)], 2147483647i, 61547i), vec4<i32>(u_input.d, global0[_wgslsmith_index_u32(69994u, 13u)], u_input.c.x, 0i)))), vec4<i32>(~u_input.a.x, ~(~global0[_wgslsmith_index_u32(4294967295u, 13u)]), 1i, 3772i)));
}

