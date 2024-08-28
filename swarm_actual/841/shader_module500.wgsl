struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec3<bool>(true, true, false), vec4<i32>(-3693i, 9591i, i32(-2147483648), -27254i), false, 0u, 661f), Struct_4(vec3<bool>(false, true, true), vec4<i32>(0i, -15792i, 25801i, -1i), true, 13908u, -872f), Struct_4(vec3<bool>(false, true, true), vec4<i32>(28755i, -63429i, -59240i, -1i), true, 28352u, 1840f), Struct_4(vec3<bool>(true, false, true), vec4<i32>(-1i, 2147483647i, -1i, -11262i), false, 35051u, 2136f), Struct_4(vec3<bool>(false, false, true), vec4<i32>(-1i, -1i, 0i, -10430i), true, 27446u, 187f), Struct_4(vec3<bool>(false, true, true), vec4<i32>(-21295i, -47563i, -21456i, 14699i), true, 4294967295u, -1838f), Struct_4(vec3<bool>(true, false, true), vec4<i32>(2147483647i, 71215i, 46436i, -18603i), false, 4719u, -739f), Struct_4(vec3<bool>(true, true, false), vec4<i32>(0i, -1i, -23462i, 1349i), true, 24300u, 1000f), Struct_4(vec3<bool>(true, true, false), vec4<i32>(-1i, i32(-2147483648), 26767i, 0i), true, 8286u, 1000f), Struct_4(vec3<bool>(false, false, true), vec4<i32>(0i, -1i, i32(-2147483648), 1i), true, 4294967295u, -3591f), Struct_4(vec3<bool>(false, false, false), vec4<i32>(-22647i, 52237i, 0i, -33007i), false, 11907u, 1705f), Struct_4(vec3<bool>(false, true, false), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -2731i), false, 1u, 1094f), Struct_4(vec3<bool>(false, true, false), vec4<i32>(20118i, 0i, 2147483647i, -3623i), false, 4294967295u, -487f), Struct_4(vec3<bool>(true, true, true), vec4<i32>(1i, 24484i, -1i, i32(-2147483648)), true, 4294967295u, -354f), Struct_4(vec3<bool>(false, true, true), vec4<i32>(-1i, 29824i, -1i, -1i), true, 44368u, 915f), Struct_4(vec3<bool>(true, true, true), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), true, 1u, 318f));

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(2722u, Struct_1(vec3<i32>(-54750i, -12390i, -29145i), vec4<i32>(1i, 23377i, 2147483647i, 0i), 1i, -1189f, vec4<i32>(-24910i, 26194i, i32(-2147483648), 8462i))), Struct_3(56978u, Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)), vec4<i32>(-39851i, 0i, -63502i, 5647i), 1i, -450f, vec4<i32>(i32(-2147483648), 2147483647i, -4871i, 0i))), Struct_3(39099u, Struct_1(vec3<i32>(2147483647i, 1i, -51515i), vec4<i32>(1i, -1639i, -1i, 85292i), 2147483647i, 631f, vec4<i32>(0i, 8822i, i32(-2147483648), -1i))), Struct_3(0u, Struct_1(vec3<i32>(16621i, 0i, 2147483647i), vec4<i32>(-18558i, i32(-2147483648), -45148i, 0i), 24099i, 632f, vec4<i32>(0i, i32(-2147483648), -10871i, 1i))), Struct_3(0u, Struct_1(vec3<i32>(-25345i, 10294i, 0i), vec4<i32>(26395i, -63409i, 2092i, 40510i), 11978i, -1388f, vec4<i32>(0i, -3867i, i32(-2147483648), 1i))));

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(1u, Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), vec4<i32>(11381i, -44163i, -1i, -1i), -1i, 346f, vec4<i32>(10310i, -1i, 12393i, 0i))), Struct_3(4294967295u, Struct_1(vec3<i32>(-84027i, i32(-2147483648), 44148i), vec4<i32>(1i, -1i, 19787i, 2147483647i), 25821i, 1799f, vec4<i32>(-1i, -7745i, -42536i, 1i))), Struct_3(1u, Struct_1(vec3<i32>(2246i, 0i, 3903i), vec4<i32>(20878i, 1i, 1i, 28469i), 110i, 1910f, vec4<i32>(-3666i, 0i, 1i, 32309i))), Struct_3(4294967295u, Struct_1(vec3<i32>(-14026i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-14913i, 2147483647i, -6228i, 0i), i32(-2147483648), 1000f, vec4<i32>(-1i, -505i, i32(-2147483648), -18356i))), Struct_3(4294967295u, Struct_1(vec3<i32>(2147483647i, -19027i, 39834i), vec4<i32>(0i, i32(-2147483648), -37717i, 2147483647i), -1i, 198f, vec4<i32>(-49858i, 43910i, 41068i, 27939i))), Struct_3(12034u, Struct_1(vec3<i32>(-1i, 0i, -3868i), vec4<i32>(44151i, -39242i, -32000i, 2147483647i), i32(-2147483648), -919f, vec4<i32>(i32(-2147483648), -18505i, 31086i, 1i))), Struct_3(53643u, Struct_1(vec3<i32>(1i, -11855i, i32(-2147483648)), vec4<i32>(75098i, -6519i, -1i, i32(-2147483648)), -61569i, -874f, vec4<i32>(10390i, 9556i, 2147483647i, i32(-2147483648)))), Struct_3(91112u, Struct_1(vec3<i32>(55413i, -45999i, 1i), vec4<i32>(2147483647i, -4925i, 16991i, -1i), 73037i, -859f, vec4<i32>(0i, -1i, 1i, 2147483647i))), Struct_3(21206u, Struct_1(vec3<i32>(-37896i, -1i, -44799i), vec4<i32>(18522i, i32(-2147483648), 0i, 1i), i32(-2147483648), -979f, vec4<i32>(-42160i, -13125i, 1i, 0i))), Struct_3(52480u, Struct_1(vec3<i32>(14395i, 1i, i32(-2147483648)), vec4<i32>(0i, 51096i, 4690i, -1i), -14660i, -723f, vec4<i32>(59232i, 58244i, i32(-2147483648), 0i))), Struct_3(19926u, Struct_1(vec3<i32>(2147483647i, -1i, -1i), vec4<i32>(i32(-2147483648), 33377i, -46932i, 1i), i32(-2147483648), -404f, vec4<i32>(0i, -4901i, 1i, -4582i))), Struct_3(4941u, Struct_1(vec3<i32>(25380i, -1i, 41550i), vec4<i32>(33484i, 0i, 1i, 1i), 60077i, 821f, vec4<i32>(2147483647i, -10i, 1i, 23866i))), Struct_3(0u, Struct_1(vec3<i32>(-1i, -65583i, 0i), vec4<i32>(56823i, 2147483647i, 23408i, 1i), 1i, -810f, vec4<i32>(-42617i, 61129i, 1i, 26775i))), Struct_3(12072u, Struct_1(vec3<i32>(26261i, 2147483647i, 1i), vec4<i32>(20110i, 2147483647i, -1i, 1i), i32(-2147483648), -339f, vec4<i32>(33753i, 18899i, 7236i, i32(-2147483648)))));

var<private> global3: Struct_4 = Struct_4(vec3<bool>(false, false, true), vec4<i32>(98152i, -19650i, 47325i, -4082i), true, 44264u, -558f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -500f, 1000f, 2281f) - vec4<f32>(arg_1, arg_1, 372f, 1541f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e, global3.e, global3.e, 177f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(146f, global3.e, arg_2.x, global3.e) * vec4<f32>(global3.e, 1186f, arg_2.x, -785f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1196f, arg_2.x, arg_1, global3.e))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, global3.e, -414f, 1063f), vec4<f32>(arg_1, -1501f, -505f, 1073f), vec4<bool>(false, false, global3.a.x, false)))))))));
    global3 = Struct_4(global3.a, vec4<i32>(select(arg_0.x, 0i, (global3.c && false) | true), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.x, arg_0.x, 0i) >> (vec4<u32>(global3.d, global3.d, 34676u, 1u) % vec4<u32>(32u)), global3.b), u_input.b, 12067i), -(global3.b.x ^ arg_0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(45157i, -42357i, global3.b.x, -11791i), vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, global3.b.x))), u_input.a.x)), any(select(!select(vec4<bool>(false, false, global3.a.x, global3.c), vec4<bool>(true, true, false, true), false), !vec4<bool>(false, global3.a.x, false, true), vec4<bool>(any(vec4<bool>(false, false, true, false)), !global3.c, global3.a.x, !global3.c))), reverseBits(reverseBits(firstTrailingBit(arg_3.x) << (~4294967295u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1519f)))), 324f)));
    var var_1 = Struct_2(~(((global3.b.zyx ^ global3.b.wxz) ^ max(vec3<i32>(arg_0.x, -1i, arg_0.x), vec3<i32>(u_input.a.x, 6299i, u_input.a.x))) >> (arg_3 % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, global3.e)))));
    return 1053f;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(202f, -1279f, arg_1.b.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(125f, global3.e, arg_1.b.d) + vec3<f32>(arg_1.b.d, global3.e, -1000f)), !global3.a.x)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(func_3(global3.b.wy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zx) * var_0.yy), ~countOneBits(vec3<u32>(arg_0.x, arg_0.x, 4294967295u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.e, var_0.x, true)) - global3.e)));
    var var_2 = true;
    var var_3 = Struct_4(vec3<bool>(any(!vec2<bool>(arg_2.x, false)), any(!(!vec2<bool>(global3.a.x, true))), any(arg_2.xx)), (_wgslsmith_add_vec4_i32(vec4<i32>(25684i, -6089i, arg_1.b.e.x, -50519i), -vec4<i32>(-10421i, global3.b.x, -42200i, -39811i)) | -(u_input.a >> (vec4<u32>(arg_1.a, 4294967295u, 0u, arg_1.a) % vec4<u32>(32u)))) ^ min(select(vec4<i32>(-2147483647i, arg_1.b.e.x, arg_1.b.a.x, 4727i), vec4<i32>(1i, u_input.a.x, -1i, 2147483647i), true), _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, u_input.a.x, global3.b.x, u_input.a.x), -vec4<i32>(arg_1.b.c, arg_1.b.c, -2147483647i, arg_1.b.a.x), global3.b)), arg_2.x, global3.d, arg_1.b.d);
    var var_4 = ~abs(vec4<u32>(~(~0u), ~4294967295u, 99767u, 1u));
    return vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(42136u, global3.d), (global3.d << (2612u % 32u)) << (~37687u % 32u))), _wgslsmith_add_u32(firstLeadingBit(global3.d), ~(~max(arg_0.x, 39004u))), _wgslsmith_dot_vec3_u32(~select(var_4.yxz, vec3<u32>(arg_1.a, 25218u, var_4.x), vec3<bool>(arg_2.x, arg_2.x, true)) >> (vec3<u32>(~var_3.d, ~15583u, 18046u) % vec3<u32>(32u)), var_4.zwy), _wgslsmith_dot_vec2_u32(var_4.yx, _wgslsmith_mod_vec2_u32(max(vec2<u32>(global3.d, arg_0.x), ~vec2<u32>(var_4.x, 0u)), _wgslsmith_div_vec2_u32(var_4.wx, vec2<u32>(var_4.x, arg_1.a)))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> u32 {
    global2 = array<Struct_3, 14>();
    var var_0 = -(~(-2147483647i));
    var var_1 = arg_2;
    var var_2 = ~(~(func_2(vec2<u32>(arg_0.d, arg_0.d), Struct_3(global3.d, Struct_1(vec3<i32>(-2147483647i, arg_2, 0i), vec4<i32>(arg_1.c, -25688i, -1i, -2147483647i), arg_2, 587f, arg_0.b)), vec4<bool>(arg_0.c, global3.a.x, true, global3.c), global3.b.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 77836u, 38766u, global3.d), vec4<u32>(49449u, global3.d, 38023u, 5341u)) % vec4<u32>(32u))) ^ ~vec4<u32>(global3.d, global3.d, 1u, countOneBits(global3.d)));
    var var_3 = Struct_5(~1u, vec2<f32>(-656f, 144f), vec3<u32>(_wgslsmith_sub_u32(global3.d, _wgslsmith_dot_vec3_u32(~vec3<u32>(8839u, var_2.x, arg_0.d), var_2.yxy)), _wgslsmith_mult_u32(reverseBits(var_2.x >> (1u % 32u)), ~arg_0.d), abs(var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1464f, 215f, arg_0.e) * vec3<f32>(241f, global3.e, -351f))))) + vec3<f32>(403f, -232f, _wgslsmith_f_op_f32(max(1854f, _wgslsmith_f_op_f32(-211f + -318f))))));
    return max(_wgslsmith_div_u32(arg_0.d, arg_0.d ^ 4351u), 48068u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(select(select(select(global3.a, global3.a, false && global3.a.x), global3.a, !(!global3.c)), !global3.a, vec3<bool>(global3.a.x == global3.c, select(!global3.c, true, global3.e == 1000f), !global3.a.x)), ~_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(global3.b.x, 2147483647i, u_input.b, u_input.a.x)), vec4<i32>(-48348i, -1i >> (0u % 32u), u_input.b | u_input.b, global3.b.x)), !global3.c, global3.d, 1284f);
    var var_1 = global3.b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e))))));
    var var_3 = _wgslsmith_div_vec2_u32(~vec2<u32>(~func_1(global0[_wgslsmith_index_u32(36919u, 16u)], Struct_1(global3.b.xxz, vec4<i32>(var_0.b.x, var_0.b.x, 5822i, -2101i), 18977i, 810f, vec4<i32>(var_0.b.x, -34702i, -2147483647i, -10558i)), 15605i), global3.d), select(vec2<u32>(select(63580u, global3.d, global3.c), var_0.d) ^ vec2<u32>(countOneBits(1u), 1u), countOneBits(~vec2<u32>(75514u, 34263u)), all(!global3.a)));
    let var_4 = any(!vec4<bool>(!var_0.a.x, !(282f >= var_2.x), global3.e > -348f, any(global3.a.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1795f, var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(117f - -954f)), _wgslsmith_f_op_f32(max(1240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e)))))), -2147483647i, vec3<u32>(0u, 24463u, reverseBits((70334u ^ global3.d) ^ 47700u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_0.e, var_0.e, -906f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.e, var_0.e, -772f, var_2.x), vec4<f32>(var_0.e, var_0.e, global3.e, var_2.x), var_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-298f, 212f, global3.e, global3.e))))), select(_wgslsmith_sub_i32(-1i, 2147483647i), u_input.a.x, false | global3.a.x) >= var_0.b.x)), _wgslsmith_f_op_f32(round(var_0.e)));
}

