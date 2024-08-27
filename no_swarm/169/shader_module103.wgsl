struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-32789i, 1i, 1i, 0i), vec4<i32>(2147483647i, -1i, 35058i, -1i), vec4<i32>(2147483647i, 1i, 23681i, 0i), vec4<i32>(27065i, 0i, -50811i, 4347i), vec4<i32>(20731i, 1i, 2390i, 1i), vec4<i32>(-11440i, 14887i, -3197i, i32(-2147483648)), vec4<i32>(-17575i, 73091i, 36841i, 1i), vec4<i32>(2147483647i, -1i, -14424i, -32348i), vec4<i32>(-44842i, 1i, 10939i, 0i), vec4<i32>(63520i, 40818i, -22569i, 23195i), vec4<i32>(0i, 2147483647i, 2147483647i, 0i), vec4<i32>(1i, -1i, -1i, -1i), vec4<i32>(27945i, 0i, i32(-2147483648), 50181i), vec4<i32>(-1i, 0i, 0i, 1i), vec4<i32>(-38004i, -1i, 38413i, 18246i), vec4<i32>(2147483647i, 12783i, -44001i, -14229i), vec4<i32>(-28490i, 1i, -13012i, 1i), vec4<i32>(1i, 13682i, 2147483647i, -32440i), vec4<i32>(-5641i, -10520i, 0i, 2147483647i), vec4<i32>(0i, -23302i, -1i, 7709i), vec4<i32>(985i, -16779i, 0i, 17258i), vec4<i32>(2147483647i, 4056i, 0i, 1i), vec4<i32>(-3624i, i32(-2147483648), 1i, 1347i));

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<f32>(-182f, -463f, 1000f, -1190f), vec2<u32>(13603u, 24085u), Struct_2(Struct_1(true, 1u, true, vec2<i32>(2147483647i, 0i)), Struct_1(true, 74507u, false, vec2<i32>(2254i, -44775i)), false), vec2<f32>(-1000f, 1801f)), Struct_3(vec4<f32>(-1000f, -259f, 731f, -1503f), vec2<u32>(23852u, 0u), Struct_2(Struct_1(false, 1074u, false, vec2<i32>(3721i, 8289i)), Struct_1(true, 0u, false, vec2<i32>(-56262i, 78579i)), false), vec2<f32>(-275f, 1035f)), Struct_3(vec4<f32>(-420f, -720f, -1645f, 301f), vec2<u32>(617u, 4294967295u), Struct_2(Struct_1(false, 26716u, false, vec2<i32>(i32(-2147483648), -35396i)), Struct_1(false, 4294967295u, true, vec2<i32>(38862i, -1851i)), true), vec2<f32>(459f, -559f)), Struct_3(vec4<f32>(-521f, -3322f, -1169f, -920f), vec2<u32>(4294967295u, 4294967295u), Struct_2(Struct_1(false, 4294967295u, true, vec2<i32>(-1i, 50837i)), Struct_1(true, 52530u, true, vec2<i32>(-23106i, 2147483647i)), false), vec2<f32>(168f, -284f)), Struct_3(vec4<f32>(-424f, 393f, 1000f, -692f), vec2<u32>(1u, 175u), Struct_2(Struct_1(true, 0u, true, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(false, 46779u, false, vec2<i32>(2147483647i, -8401i)), true), vec2<f32>(1301f, 364f)), Struct_3(vec4<f32>(-867f, -1000f, -466f, -2614f), vec2<u32>(48373u, 16185u), Struct_2(Struct_1(true, 23982u, true, vec2<i32>(0i, -24480i)), Struct_1(true, 0u, true, vec2<i32>(17240i, 0i)), true), vec2<f32>(-168f, -858f)), Struct_3(vec4<f32>(-1179f, 1248f, 1000f, -240f), vec2<u32>(82204u, 89605u), Struct_2(Struct_1(false, 9127u, false, vec2<i32>(0i, 1i)), Struct_1(false, 4294967295u, false, vec2<i32>(-42411i, -4050i)), true), vec2<f32>(-1290f, 1476f)), Struct_3(vec4<f32>(-1000f, 882f, 1307f, 1791f), vec2<u32>(4294967295u, 0u), Struct_2(Struct_1(true, 0u, true, vec2<i32>(-22607i, -1i)), Struct_1(false, 0u, true, vec2<i32>(-15497i, i32(-2147483648))), true), vec2<f32>(-259f, -282f)), Struct_3(vec4<f32>(-186f, -1000f, 1026f, -451f), vec2<u32>(4294967295u, 13445u), Struct_2(Struct_1(false, 96990u, true, vec2<i32>(-1i, 2147483647i)), Struct_1(true, 4294967295u, false, vec2<i32>(-1i, 1i)), false), vec2<f32>(333f, 1165f)), Struct_3(vec4<f32>(1000f, -110f, 2345f, 1105f), vec2<u32>(54774u, 1688u), Struct_2(Struct_1(false, 59638u, true, vec2<i32>(48450i, -34348i)), Struct_1(true, 4294967295u, true, vec2<i32>(-2406i, 2147483647i)), false), vec2<f32>(-262f, 451f)), Struct_3(vec4<f32>(701f, -806f, -611f, 484f), vec2<u32>(93494u, 30715u), Struct_2(Struct_1(true, 0u, true, vec2<i32>(1i, i32(-2147483648))), Struct_1(false, 4294967295u, true, vec2<i32>(6302i, -36019i)), false), vec2<f32>(115f, 215f)), Struct_3(vec4<f32>(-234f, 598f, 1811f, 546f), vec2<u32>(1u, 0u), Struct_2(Struct_1(false, 4294967295u, false, vec2<i32>(4102i, -4239i)), Struct_1(true, 7024u, true, vec2<i32>(-1i, 13216i)), true), vec2<f32>(-590f, 857f)), Struct_3(vec4<f32>(464f, -802f, -413f, -141f), vec2<u32>(0u, 51006u), Struct_2(Struct_1(true, 10212u, false, vec2<i32>(16169i, -1i)), Struct_1(true, 1u, false, vec2<i32>(2147483647i, i32(-2147483648))), true), vec2<f32>(-1000f, 296f)), Struct_3(vec4<f32>(1292f, -1816f, 1227f, -2678f), vec2<u32>(31364u, 4294967295u), Struct_2(Struct_1(false, 11326u, true, vec2<i32>(23322i, -1i)), Struct_1(true, 68936u, false, vec2<i32>(-1i, 40054i)), true), vec2<f32>(2133f, 559f)), Struct_3(vec4<f32>(-1194f, -2333f, 1000f, 1011f), vec2<u32>(62933u, 13888u), Struct_2(Struct_1(true, 0u, false, vec2<i32>(18695i, 1i)), Struct_1(false, 0u, false, vec2<i32>(15601i, -14873i)), true), vec2<f32>(1000f, 1601f)), Struct_3(vec4<f32>(-605f, 481f, 663f, 1000f), vec2<u32>(49018u, 0u), Struct_2(Struct_1(false, 1u, false, vec2<i32>(1i, 2147483647i)), Struct_1(true, 110831u, false, vec2<i32>(-44215i, 2147483647i)), true), vec2<f32>(2359f, 2920f)), Struct_3(vec4<f32>(-709f, -951f, -569f, 890f), vec2<u32>(4294967295u, 4294967295u), Struct_2(Struct_1(false, 4294967295u, true, vec2<i32>(-21856i, 0i)), Struct_1(false, 14696u, false, vec2<i32>(i32(-2147483648), 2147483647i)), true), vec2<f32>(-616f, 897f)));

var<private> global2: array<i32, 12> = array<i32, 12>(2147483647i, -7625i, -49965i, i32(-2147483648), -1i, 1i, 2147483647i, -1i, 13270i, -15705i, 6432i, i32(-2147483648));

var<private> global3: f32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-870f * 1534f), 958f)))), 602f, -260f), ~(~countOneBits(u_input.c.xx)), Struct_2(Struct_1(true, _wgslsmith_sub_u32(14785u, ~u_input.c.x), true, _wgslsmith_div_vec2_i32(-vec2<i32>(-56857i, u_input.d), _wgslsmith_mod_vec2_i32(u_input.b, u_input.b))), Struct_1(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false)), ~abs(u_input.a), true, _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(11411i, global2[_wgslsmith_index_u32(u_input.a, 12u)]))), true), vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)))), _wgslsmith_f_op_f32(f32(-1f) * -591f)));
    let var_1 = firstLeadingBit(min(var_0.b.x, abs(var_0.b.x ^ firstTrailingBit(var_0.c.b.b))));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u & var_1, 17u)];
    global2 = array<i32, 12>();
    let var_3 = min(~_wgslsmith_div_i32(firstTrailingBit(-33154i), 2147483647i), var_2.c.a.d.x);
    return 658f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -429f))))) + _wgslsmith_f_op_f32(floor(1768f)));
    var var_0 = Struct_1(all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(12373u > u_input.e, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false))), ~u_input.a, all(vec3<bool>(true, false, true)), -vec2<i32>(firstLeadingBit(-2147483647i), abs(-2147483647i)));
    let var_1 = !(!(!(!vec3<bool>(false, var_0.c, true))));
    let var_2 = Struct_1(true, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.c.x << (~0u % 32u), 82365u), ~(~var_0.b << (~u_input.c.x % 32u))), true, select(-_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.d, arg_0.xy), vec2<i32>(arg_1.x, arg_1.x)), vec2<i32>(_wgslsmith_sub_i32(arg_1.x, var_0.d.x), _wgslsmith_div_i32(-2147483647i, arg_1.x)) << (vec2<u32>(reverseBits(1u), var_0.b) % vec2<u32>(32u)), true));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(507f, _wgslsmith_f_op_f32(func_3()))));
    return Struct_1(select(any(!vec4<bool>(var_1.x, false, false, true)), var_1.x | !var_1.x, all(select(vec4<bool>(var_1.x, var_2.c, var_1.x, false), vec4<bool>(false, var_0.c, false, var_0.c), var_1.x))) & all(select(select(vec4<bool>(var_2.c, var_0.c, false, true), vec4<bool>(var_1.x, false, true, var_0.a), vec4<bool>(false, true, var_0.c, var_1.x)), vec4<bool>(true, var_2.a, false, true), vec4<bool>(var_0.c, false, false, var_0.c))), _wgslsmith_sub_u32(~43600u, 19865u), var_0.a, u_input.b);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var_0 = func_2(~(~global0[_wgslsmith_index_u32(~abs(arg_3.b), 23u)]), ~_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-32835i, 1i, arg_2.c.b.d.x)), vec3<i32>(_wgslsmith_add_i32(3583i, var_0.d.x), -u_input.b.x, 1i)));
    global3 = arg_2.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a.x) == -2265f, 0u, true, -arg_3.d);
    let var_2 = _wgslsmith_f_op_f32(step(2338f, _wgslsmith_f_op_f32(func_3())));
    return -(-2147483647i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 54483u), vec2<u32>(_wgslsmith_add_u32(arg_2.b.x, arg_3.b), arg_2.b.x)) % 32u));
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = true;
    let var_1 = Struct_1(true, _wgslsmith_sub_u32(_wgslsmith_div_u32(22367u, ~1u) & ~u_input.a, countOneBits(u_input.c.x)), min(u_input.e, u_input.c.x) > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 18956u), ~reverseBits(vec2<u32>(u_input.a, u_input.a))), ~vec2<i32>(func_4(~vec4<u32>(80936u, u_input.a, u_input.c.x, 4294967295u), vec2<bool>(true, true), Struct_3(vec4<f32>(arg_0.x, arg_0.x, 1780f, -391f), vec2<u32>(27578u, u_input.e), Struct_2(Struct_1(true, 4294967295u, false, u_input.b), Struct_1(true, 40078u, false, vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.e, 12u)])), false), vec2<f32>(arg_0.x, 1151f)), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], vec3<i32>(global2[_wgslsmith_index_u32(0u, 12u)], 54443i, 1i))), ~_wgslsmith_add_i32(0i, global2[_wgslsmith_index_u32(u_input.c.x, 12u)])));
    global1 = array<Struct_3, 17>();
    global2 = array<i32, 12>();
    global0 = array<vec4<i32>, 23>();
    return select(!vec2<bool>(func_2(vec4<i32>(u_input.d, var_1.d.x, global2[_wgslsmith_index_u32(0u, 12u)], 19610i), -vec3<i32>(global2[_wgslsmith_index_u32(64417u, 12u)], 46882i, -41351i)).c, var_1.a), vec2<bool>(~(~u_input.a) == _wgslsmith_dot_vec2_u32(~u_input.c.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(u_input.a, u_input.c.x))), var_1.a), var_1.a == select(var_1.c, !any(vec3<bool>(var_1.c, var_1.c, true)), !(var_1.a || true)));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> i32 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_2(Struct_1(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, arg_2, arg_2))) * vec3<f32>(arg_2, -912f, arg_2))).x, ~(~countOneBits(64638u)), all(!arg_1), u_input.b), func_2(_wgslsmith_sub_vec4_i32(select(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), select(vec4<i32>(-38571i, u_input.b.x, global2[_wgslsmith_index_u32(u_input.e, 12u)], u_input.d), global0[_wgslsmith_index_u32(u_input.c.x, 23u)], true), vec4<bool>(true, arg_0, arg_1.x, false)), global0[_wgslsmith_index_u32(~(~28502u), 23u)]), vec3<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.e, 12u)] & u_input.d, 50168i), _wgslsmith_add_i32(1i, -1i), select(global2[_wgslsmith_index_u32(~u_input.e, 12u)], u_input.b.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -721f) + _wgslsmith_f_op_f32(ceil(-1228f))) > _wgslsmith_div_f32(1741f, arg_2));
    global1 = array<Struct_3, 17>();
    var var_2 = vec4<i32>(_wgslsmith_div_i32(-_wgslsmith_add_i32(u_input.d, u_input.d), u_input.d), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.e, 12u)], u_input.b.x), -vec2<i32>(global2[_wgslsmith_index_u32(15761u, 12u)], -2147483647i)), _wgslsmith_sub_vec2_i32(var_1.a.d, abs(vec2<i32>(u_input.d, global2[_wgslsmith_index_u32(64810u, 12u)])))), firstTrailingBit(var_1.a.d.x), _wgslsmith_add_i32(-27017i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~25758u, firstTrailingBit(var_1.a.b)) | var_1.b.b, 12u)]));
    let var_3 = var_1.b;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 12>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -835f), 1f));
    let var_1 = true || (func_5(false, !func_1(vec3<f32>(-352f, -474f, -1223f)), _wgslsmith_f_op_f32(f32(-1f) * -602f)) > -2147483647i);
    let var_2 = Struct_2(Struct_1(var_1, min(firstLeadingBit(u_input.a) >> (u_input.e % 32u), u_input.e), u_input.a != u_input.a, vec2<i32>(func_4(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u), !vec2<bool>(var_1, true), global1[_wgslsmith_index_u32(firstTrailingBit(1u), 17u)], Struct_1(true, 4294967295u, true, vec2<i32>(-1i, u_input.d))), select(u_input.b.x, -2147483647i, !var_1))), Struct_1(true, ~17343u, all(select(vec3<bool>(true, false, true), select(vec3<bool>(false, var_1, false), vec3<bool>(true, var_1, var_1), var_1), !vec3<bool>(var_1, false, var_1))), _wgslsmith_div_vec2_i32(~firstTrailingBit(u_input.b), ~firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(u_input.e, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)])))), any(select(vec2<bool>(var_1, u_input.a <= 31564u), !vec2<bool>(var_1, var_1), !any(vec4<bool>(false, false, var_1, var_1)))));
    global2 = array<i32, 12>();
    let var_3 = vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(u_input.b, var_2.b.d, -select(vec2<i32>(u_input.d, 2147483647i), var_2.a.d, vec2<bool>(false, var_2.a.c)));
    var var_4 = ~(~(~1i));
    global0 = array<vec4<i32>, 23>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(950f, 382f)) * 157f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(734f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f), -1022f))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(var_2.a.d.x | -var_2.b.d.x, -569i), ~_wgslsmith_mod_i32(firstLeadingBit(-2147483647i), -7047i));
}

