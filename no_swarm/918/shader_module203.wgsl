struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(0u, vec4<f32>(-1040f, -1010f, 1293f, 445f), 0i, vec4<i32>(0i, 85491i, i32(-2147483648), -2464i)), Struct_5(4294967295u, vec4<f32>(-472f, -149f, -828f, 946f), 0i, vec4<i32>(-44774i, -59438i, i32(-2147483648), -12989i)), Struct_5(41927u, vec4<f32>(787f, 325f, -1029f, 1000f), 1i, vec4<i32>(6394i, i32(-2147483648), -32021i, 29038i)), Struct_5(71233u, vec4<f32>(-1131f, 1034f, 3010f, -175f), 33656i, vec4<i32>(-40609i, 0i, 2147483647i, -1i)), Struct_5(32275u, vec4<f32>(686f, 313f, -1397f, -163f), -1i, vec4<i32>(17980i, 23713i, 1i, -13112i)), Struct_5(0u, vec4<f32>(-492f, -220f, -679f, 2200f), -42084i, vec4<i32>(35164i, i32(-2147483648), -26012i, -21238i)), Struct_5(1u, vec4<f32>(-144f, -1000f, -116f, 387f), 7769i, vec4<i32>(0i, 43635i, 2147483647i, 0i)), Struct_5(29301u, vec4<f32>(-111f, 949f, 161f, -484f), -23400i, vec4<i32>(-39719i, 12254i, -9854i, 41182i)), Struct_5(1u, vec4<f32>(995f, 1120f, -968f, -1000f), 1i, vec4<i32>(i32(-2147483648), -31320i, 24280i, i32(-2147483648))), Struct_5(4294967295u, vec4<f32>(-1252f, -999f, 1766f, 1246f), -1i, vec4<i32>(0i, -28290i, -25253i, -2765i)), Struct_5(0u, vec4<f32>(817f, -400f, -259f, 872f), i32(-2147483648), vec4<i32>(-44650i, 2147483647i, i32(-2147483648), 0i)), Struct_5(55560u, vec4<f32>(-507f, -534f, -870f, -1989f), 752i, vec4<i32>(0i, 1i, -1i, 12117i)), Struct_5(0u, vec4<f32>(1292f, -257f, -664f, 1000f), 14328i, vec4<i32>(-20391i, i32(-2147483648), 1i, 8660i)), Struct_5(4294967295u, vec4<f32>(129f, 920f, -1348f, -389f), -1i, vec4<i32>(-2453i, -11124i, -12395i, 6217i)), Struct_5(7097u, vec4<f32>(-503f, -332f, -440f, 177f), -42161i, vec4<i32>(2989i, 1i, -1i, -13538i)), Struct_5(0u, vec4<f32>(903f, 1708f, 625f, -757f), 60923i, vec4<i32>(2147483647i, i32(-2147483648), -1i, -14559i)), Struct_5(54838u, vec4<f32>(800f, 1368f, 597f, -221f), -1236i, vec4<i32>(1i, -46655i, -24080i, -1i)), Struct_5(22083u, vec4<f32>(-2471f, -739f, -558f, 185f), -28638i, vec4<i32>(-56898i, 4411i, -1i, 25367i)), Struct_5(1634u, vec4<f32>(-1732f, 436f, 1874f, 912f), i32(-2147483648), vec4<i32>(-14309i, -1i, -60435i, i32(-2147483648))), Struct_5(0u, vec4<f32>(-308f, -1234f, 1592f, 822f), 0i, vec4<i32>(1i, 22946i, 1809i, -1i)), Struct_5(1u, vec4<f32>(1141f, -1698f, 297f, -424f), 2147483647i, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 17903i)), Struct_5(4294967295u, vec4<f32>(-1252f, -781f, 427f, 378f), 0i, vec4<i32>(-1i, -48519i, -53603i, 0i)), Struct_5(0u, vec4<f32>(1363f, 614f, -324f, -230f), 0i, vec4<i32>(78261i, -36691i, 1i, 24846i)), Struct_5(61059u, vec4<f32>(1416f, -190f, -583f, 365f), 2147483647i, vec4<i32>(-11546i, i32(-2147483648), -9472i, 36739i)), Struct_5(78636u, vec4<f32>(-383f, 321f, 533f, -1553f), 59309i, vec4<i32>(46821i, -1i, 1i, -1i)), Struct_5(44135u, vec4<f32>(-1070f, -661f, 646f, -641f), -52i, vec4<i32>(0i, 0i, -34535i, 2147483647i)));

var<private> global2: Struct_3;

var<private> global3: array<vec4<i32>, 11>;

var<private> global4: vec3<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: Struct_4) -> vec3<i32> {
    global1 = array<Struct_5, 26>();
    var var_0 = _wgslsmith_mod_vec2_i32(abs(_wgslsmith_mult_vec2_i32(arg_1.yy, u_input.b.xz)), _wgslsmith_clamp_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, arg_3.d)), -u_input.b.yx, vec2<i32>(arg_2.c, _wgslsmith_sub_i32(-1i, u_input.a))));
    let var_1 = abs(-reverseBits(firstTrailingBit(-4066i)));
    var var_2 = arg_3.b;
    global3 = array<vec4<i32>, 11>();
    return _wgslsmith_sub_vec3_i32(arg_2.d.yzz, (vec3<i32>(var_1, 29861i, -10800i) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a, arg_2.a, 4294967295u), vec3<u32>(arg_2.a, arg_2.a, arg_2.a), vec3<u32>(arg_2.a, arg_2.a, arg_2.a)) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_2.a, arg_2.a, 31929u)), vec3<u32>(_wgslsmith_div_u32(arg_2.a, 1u), arg_2.a << (1u % 32u), ~13990u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> u32 {
    var var_0 = func_3(global2.b.a, global3[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(0u, 26u)], arg_1) & ((vec3<i32>(arg_1.d, 3454i, 0i) << (abs(vec3<u32>(23567u, 51533u, 790u)) % vec3<u32>(32u))) ^ -vec3<i32>(firstTrailingBit(-1i), reverseBits(-60720i), -5364i));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 2126f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b.a * _wgslsmith_f_op_f32(global2.b.a - 840f)), 678f))), global2.b.a, _wgslsmith_f_op_f32(global2.b.a + global2.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f - global2.b.a))));
    let var_2 = ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 32469u, 57958u), reverseBits(vec3<u32>(22490u, 1u, 1u)), vec3<u32>(0u, 1u, 37494u)) | select(_wgslsmith_mod_vec3_u32(vec3<u32>(82669u, 0u, 4294967295u), min(vec3<u32>(26586u, 43371u, 33019u), vec3<u32>(60606u, 35253u, 20856u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 25044u, 13167u), ~vec3<u32>(1u, 0u, 1u)), (arg_1.c.a & true) && true));
    let var_3 = Struct_3(((-7540i << (~var_2.x % 32u)) & global2.a) << (var_2.x % 32u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -2151f)), select(select(!vec2<bool>(global4.x, global2.b.b.x), vec2<bool>(arg_0, true), select(global2.b.b, global2.b.b, vec2<bool>(arg_0, false))), vec2<bool>(true, arg_0), global2.b.b), global2.b.c));
    var var_4 = arg_1;
    return 0u;
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global0 = ~(~(~(~_wgslsmith_add_u32(59057u, 36186u))));
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, ~20558u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 25091u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), func_2(false, Struct_4(Struct_2(false), Struct_2(false), Struct_2(false), u_input.b.x))), ~reverseBits(1u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, _wgslsmith_add_u32(func_2(false || arg_0.x, Struct_4(Struct_2(global4.x), Struct_2(global2.b.c), Struct_2(global2.b.b.x), 23721i)), ~0u), 0u));
    let var_1 = u_input.c.x;
    global0 = firstTrailingBit(var_0.x);
    let var_2 = Struct_1(global2.b.a, select(global4.zy, arg_0, arg_0), true);
    return Struct_3(20429i, Struct_1(584f, vec2<bool>(!select(global2.b.c, global4.x, true), global2.b.b.x), !(467f < global2.b.a) || !all(vec2<bool>(false, var_2.c))));
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = 0i;
    let var_1 = global1[_wgslsmith_index_u32(1u, 26u)];
    global3 = array<vec4<i32>, 11>();
    return var_1.a > abs(max(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 4294967295u, var_1.a, 40158u), vec4<u32>(var_1.a, 1u, 89899u, var_1.a)), _wgslsmith_sub_u32(var_1.a, var_1.a)), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~vec4<u32>(~0u, 83118u, reverseBits(_wgslsmith_div_u32(7046u, 5013u)), reverseBits(4294967295u)));
    global3 = array<vec4<i32>, 11>();
    let var_1 = !vec4<bool>(func_4(func_1(vec2<bool>(true, global2.b.b.x))), false, any(select(vec2<bool>(global4.x, global2.b.b.x), vec2<bool>(false, false), global4.x)) && global4.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.wz), ~(~(var_0.x << (var_0.x % 32u))));
}

