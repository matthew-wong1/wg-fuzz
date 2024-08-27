struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: vec3<f32> = vec3<f32>(-795f, 823f, -2521f);

var<private> global2: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(2147483647i, Struct_2(vec4<i32>(-2315i, -1i, 52570i, -183i), vec2<bool>(true, true), vec2<f32>(870f, -989f), vec2<u32>(9440u, 1u)), vec2<i32>(50490i, -1i), Struct_1(i32(-2147483648))), Struct_4(1i, Struct_2(vec4<i32>(-49455i, 5372i, -1i, 60010i), vec2<bool>(false, false), vec2<f32>(721f, -829f), vec2<u32>(1u, 0u)), vec2<i32>(-29758i, 4545i), Struct_1(-39152i)), Struct_4(0i, Struct_2(vec4<i32>(-23589i, -19325i, 2147483647i, 2147483647i), vec2<bool>(true, false), vec2<f32>(-1831f, -486f), vec2<u32>(4294967295u, 54865u)), vec2<i32>(-12081i, -64296i), Struct_1(62658i)), Struct_4(-1i, Struct_2(vec4<i32>(0i, 24686i, 1092i, -1i), vec2<bool>(true, false), vec2<f32>(629f, 1000f), vec2<u32>(1u, 1u)), vec2<i32>(0i, 1500i), Struct_1(2147483647i)), Struct_4(2147483647i, Struct_2(vec4<i32>(i32(-2147483648), -1i, -2767i, 2147483647i), vec2<bool>(false, true), vec2<f32>(-1008f, -686f), vec2<u32>(1u, 111058u)), vec2<i32>(-36614i, i32(-2147483648)), Struct_1(-14135i)), Struct_4(-21525i, Struct_2(vec4<i32>(24217i, -1i, i32(-2147483648), 39892i), vec2<bool>(true, true), vec2<f32>(546f, 643f), vec2<u32>(4837u, 119870u)), vec2<i32>(49420i, -1i), Struct_1(-15198i)), Struct_4(2147483647i, Struct_2(vec4<i32>(1i, -63000i, 21693i, 2147483647i), vec2<bool>(true, true), vec2<f32>(-1003f, 1385f), vec2<u32>(1u, 39974u)), vec2<i32>(i32(-2147483648), 41632i), Struct_1(i32(-2147483648))), Struct_4(2147483647i, Struct_2(vec4<i32>(-7013i, -33529i, 7070i, -13746i), vec2<bool>(false, true), vec2<f32>(-330f, 362f), vec2<u32>(4294967295u, 61832u)), vec2<i32>(0i, -19292i), Struct_1(13649i)), Struct_4(-18410i, Struct_2(vec4<i32>(41213i, 32174i, 0i, 11464i), vec2<bool>(true, true), vec2<f32>(-1000f, 1194f), vec2<u32>(44970u, 77912u)), vec2<i32>(-29074i, 2147483647i), Struct_1(2147483647i)), Struct_4(-9747i, Struct_2(vec4<i32>(3539i, -1i, -1i, 13055i), vec2<bool>(true, false), vec2<f32>(-235f, -1229f), vec2<u32>(33588u, 1u)), vec2<i32>(0i, -51109i), Struct_1(7274i)), Struct_4(34853i, Struct_2(vec4<i32>(0i, 2147483647i, i32(-2147483648), -1i), vec2<bool>(true, false), vec2<f32>(-2957f, -901f), vec2<u32>(7773u, 0u)), vec2<i32>(51902i, 70282i), Struct_1(2147483647i)), Struct_4(2147483647i, Struct_2(vec4<i32>(2147483647i, -6099i, 19982i, i32(-2147483648)), vec2<bool>(false, false), vec2<f32>(-1000f, -158f), vec2<u32>(16352u, 38199u)), vec2<i32>(1i, 35669i), Struct_1(-20758i)), Struct_4(-1i, Struct_2(vec4<i32>(i32(-2147483648), -16300i, 17288i, -8821i), vec2<bool>(false, true), vec2<f32>(423f, -649f), vec2<u32>(4294967295u, 43488u)), vec2<i32>(0i, 22983i), Struct_1(40414i)), Struct_4(1i, Struct_2(vec4<i32>(-35319i, 36075i, 1i, -1i), vec2<bool>(true, false), vec2<f32>(-187f, 294f), vec2<u32>(0u, 0u)), vec2<i32>(1i, 18201i), Struct_1(1i)), Struct_4(1i, Struct_2(vec4<i32>(1i, 15600i, 0i, -13977i), vec2<bool>(false, false), vec2<f32>(-1000f, -683f), vec2<u32>(43297u, 1u)), vec2<i32>(-25719i, 0i), Struct_1(36814i)), Struct_4(i32(-2147483648), Struct_2(vec4<i32>(39710i, -65281i, -25953i, 17157i), vec2<bool>(true, true), vec2<f32>(560f, -130f), vec2<u32>(44712u, 12220u)), vec2<i32>(i32(-2147483648), -27499i), Struct_1(-42993i)), Struct_4(1i, Struct_2(vec4<i32>(2147483647i, 0i, 0i, -24557i), vec2<bool>(false, true), vec2<f32>(-1010f, -354f), vec2<u32>(4294967295u, 1u)), vec2<i32>(40158i, 116i), Struct_1(1i)), Struct_4(-9837i, Struct_2(vec4<i32>(10463i, 1i, -12170i, 8252i), vec2<bool>(true, true), vec2<f32>(-315f, -386f), vec2<u32>(15120u, 0u)), vec2<i32>(-25135i, 0i), Struct_1(59692i)), Struct_4(i32(-2147483648), Struct_2(vec4<i32>(2147483647i, 2147483647i, 1i, 2147483647i), vec2<bool>(true, true), vec2<f32>(1041f, -534f), vec2<u32>(4294967295u, 0u)), vec2<i32>(-19161i, 0i), Struct_1(-9744i)), Struct_4(i32(-2147483648), Struct_2(vec4<i32>(i32(-2147483648), -67917i, i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true), vec2<f32>(-400f, 339f), vec2<u32>(4294967295u, 25571u)), vec2<i32>(0i, 27405i), Struct_1(0i)), Struct_4(15420i, Struct_2(vec4<i32>(-39341i, 14352i, 18258i, -22211i), vec2<bool>(true, true), vec2<f32>(1332f, 1168f), vec2<u32>(1266u, 4294967295u)), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(-20317i)), Struct_4(19464i, Struct_2(vec4<i32>(15576i, i32(-2147483648), -13588i, 8124i), vec2<bool>(false, false), vec2<f32>(253f, -245f), vec2<u32>(53299u, 4294967295u)), vec2<i32>(-1i, -63629i), Struct_1(-26831i)), Struct_4(24398i, Struct_2(vec4<i32>(0i, -1764i, 1i, 40040i), vec2<bool>(true, true), vec2<f32>(-764f, 558f), vec2<u32>(94384u, 1u)), vec2<i32>(-1i, -14246i), Struct_1(2147483647i)), Struct_4(-1i, Struct_2(vec4<i32>(i32(-2147483648), 23676i, 0i, -15641i), vec2<bool>(false, true), vec2<f32>(-1170f, 1422f), vec2<u32>(4294967295u, 18983u)), vec2<i32>(1i, -4966i), Struct_1(-8858i)), Struct_4(-39763i, Struct_2(vec4<i32>(16087i, 4332i, i32(-2147483648), 0i), vec2<bool>(false, false), vec2<f32>(-870f, 299f), vec2<u32>(9675u, 10298u)), vec2<i32>(0i, -15204i), Struct_1(-3010i)), Struct_4(0i, Struct_2(vec4<i32>(1i, 0i, 2147483647i, -1i), vec2<bool>(true, false), vec2<f32>(315f, -1067f), vec2<u32>(1u, 151958u)), vec2<i32>(-40913i, i32(-2147483648)), Struct_1(-50850i)), Struct_4(-3788i, Struct_2(vec4<i32>(-1i, i32(-2147483648), -7758i, 12407i), vec2<bool>(true, true), vec2<f32>(-1407f, -317f), vec2<u32>(87899u, 0u)), vec2<i32>(2753i, 34697i), Struct_1(73123i)), Struct_4(-17889i, Struct_2(vec4<i32>(36099i, -1i, -34471i, 34980i), vec2<bool>(true, false), vec2<f32>(-781f, 746f), vec2<u32>(4294967295u, 1u)), vec2<i32>(2147483647i, 6238i), Struct_1(2147483647i)), Struct_4(2147483647i, Struct_2(vec4<i32>(1i, -1i, 12754i, -1i), vec2<bool>(false, true), vec2<f32>(-875f, 2120f), vec2<u32>(19392u, 0u)), vec2<i32>(2147483647i, 48461i), Struct_1(2147483647i)), Struct_4(-15428i, Struct_2(vec4<i32>(0i, 19898i, -1i, 2147483647i), vec2<bool>(true, true), vec2<f32>(1000f, -2150f), vec2<u32>(18761u, 57127u)), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(-20417i)));

var<private> global3: i32;

var<private> global4: i32 = 0i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec3<f32> {
    let var_0 = ~(abs(vec2<u32>(arg_2.x, _wgslsmith_dot_vec2_u32(arg_2.zz, vec2<u32>(arg_2.x, u_input.c)))) ^ ~firstLeadingBit(~vec2<u32>(1u, 4294967295u)));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), global1.x, _wgslsmith_f_op_f32(select(global1.x, 1585f, false))) + vec3<f32>(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-global1.x))))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_2(arg_3.b.a, !arg_1, _wgslsmith_f_op_vec2_f32(arg_3.b.c - arg_2.zx), ~vec2<u32>(0u, 15864u));
    var var_1 = arg_3.b;
    let var_2 = arg_3.a;
    let var_3 = 609f;
    var var_4 = Struct_2(-vec4<i32>(reverseBits(~var_2), _wgslsmith_add_i32(~var_2, ~var_1.a.x), ~(-u_input.d.x), _wgslsmith_mod_i32(10908i, arg_3.d.a) >> (0u % 32u)), var_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(348f, var_3)))), var_1.d);
    return max(_wgslsmith_mult_i32(~(-(var_0.a.x << (10413u % 32u))), ~(~(-2147483647i))), ~1i | firstLeadingBit((i32(-1i) * -23233i) << (~var_4.d.x % 32u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    global4 = -8765i;
    global3 = func_3(1000f, select(vec2<bool>(true, select(all(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 18u)])), u_input.c >= 4294967295u, true)), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(19498u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]), select(vec2<bool>(false, false), vec2<bool>(arg_2, global0[_wgslsmith_index_u32(arg_0.x, 18u)]), false), arg_2), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(40934u, 18u)]), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), global0[_wgslsmith_index_u32(~1u, 18u)]), true), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x >> (69268u % 32u), 18u)], any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(func_2(countOneBits(-1i), select(vec2<i32>(~(-1i), _wgslsmith_sub_i32(arg_3.x, 2147483647i)), vec2<i32>(-1i) * -arg_1, !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], arg_2), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], arg_2), arg_2)), max(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.x, arg_0.x, 62000u), ~vec3<u32>(89061u, 15826u, u_input.c)), vec3<u32>(82384u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(1u, 59727u, arg_0.x, u_input.c)))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(7783i, -2147483647i, arg_3.x), vec3<i32>(0i, -2147483647i, 23851i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, u_input.c, u_input.c), vec3<u32>(arg_0.x, u_input.c, u_input.c)) % vec3<u32>(32u)))), Struct_4(~_wgslsmith_div_i32(u_input.b, arg_1.x) & abs(arg_1.x), Struct_2(-vec4<i32>(arg_3.x, arg_1.x, arg_1.x, arg_1.x), select(vec2<bool>(true, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), vec2<bool>(false, false)), !vec2<bool>(arg_2, false)), vec2<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), -104f), ~vec2<u32>(u_input.c, 4294967295u)), vec2<i32>(_wgslsmith_div_i32(arg_1.x, arg_3.x), arg_3.x) ^ -_wgslsmith_mult_vec2_i32(vec2<i32>(-19414i, arg_3.x), vec2<i32>(arg_3.x, arg_1.x)), Struct_1(1i)));
    let var_0 = max(u_input.c, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 67069u, 15612u, arg_0.x), ~vec4<u32>(u_input.c, u_input.c, arg_0.x, 28469u))) ^ arg_0.x);
    var var_1 = ~(~(~(~vec4<u32>(1u, 4294967295u, 0u, 36739u)) >> ((~vec4<u32>(31045u, 4294967295u, 28936u, 8178u) << (vec4<u32>(var_0, u_input.c, 1u, 67960u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_1 = ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~18415u, 0u), var_0), var_0, abs(4294967295u), arg_0.x);
    return ~arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -715f, 1477f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-162f, 608f, -384f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(round(-862f)), 179f)));
    global3 = -u_input.a.x << (_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(u_input.c, 10464u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(59108u, u_input.c) | vec2<u32>(u_input.c, u_input.c), reverseBits(vec2<u32>(u_input.c, u_input.c))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 10300u, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, 34517u, 18809u)), ~1u))) % 32u);
    global3 = func_1(vec2<u32>(~(~50969u), u_input.c) >> (reverseBits(firstTrailingBit(~vec2<u32>(u_input.c, 78668u))) % vec2<u32>(32u)), u_input.a.xz, false, min(firstTrailingBit(u_input.a), _wgslsmith_sub_vec3_i32(u_input.a, ~vec3<i32>(u_input.b, 1i, u_input.b)) >> (~vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))));
    let var_0 = Struct_3(Struct_2(vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.b) << (_wgslsmith_sub_u32(u_input.c, u_input.c) % 32u), min(1i, u_input.a.x) ^ 29558i, _wgslsmith_sub_i32(u_input.d.x, 3090i) >> ((u_input.c & u_input.c) % 32u), u_input.a.x), vec2<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], false)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], false, false))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))), vec2<u32>(~(~4294967295u), reverseBits(2147u))), Struct_2(_wgslsmith_div_vec4_i32(-(vec4<i32>(-74511i, -22475i, -4938i, -1i) >> (vec4<u32>(u_input.c, 29362u, 31500u, u_input.c) % vec4<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 44714i, 2147483647i, -15297i), vec4<i32>(-1i, 10119i, u_input.b, u_input.d.x)))), select(!vec2<bool>(global0[_wgslsmith_index_u32(46438u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]), !select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(64867u, 18u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 18u)]), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], false), vec2<bool>(global0[_wgslsmith_index_u32(72533u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], true)), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]))), _wgslsmith_f_op_vec2_f32(-global1.yz), ~select(~vec2<u32>(u_input.c, 4294967295u), abs(vec2<u32>(71071u, 51298u)), global0[_wgslsmith_index_u32(1u, 18u)] | global0[_wgslsmith_index_u32(u_input.c, 18u)])), Struct_1(u_input.a.x), u_input.d.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 1050f), -107f)) * -283f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-101f, var_0.b.c.x, 643f, 743f), vec4<f32>(519f, -1415f, var_1, var_0.b.c.x))))));
}

