struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -14355i, -1i);

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(true, 81815i, vec2<f32>(1000f, -392f), false, 1066f), Struct_1(false, 1i, vec2<f32>(-1603f, -1392f), true, 883f), Struct_1(true, i32(-2147483648), vec2<f32>(667f, 105f), false, -749f)), Struct_2(Struct_1(false, 9863i, vec2<f32>(-568f, 1158f), true, 1445f), Struct_1(true, 20033i, vec2<f32>(839f, -557f), true, 362f), Struct_1(false, 3691i, vec2<f32>(899f, -1944f), false, -1747f)), Struct_2(Struct_1(false, 40123i, vec2<f32>(-2183f, 518f), false, 539f), Struct_1(true, -59451i, vec2<f32>(-324f, -837f), false, -876f), Struct_1(false, 1i, vec2<f32>(-1431f, -605f), false, 944f)), Struct_2(Struct_1(true, 34800i, vec2<f32>(-655f, -120f), true, 114f), Struct_1(true, 2147483647i, vec2<f32>(-531f, 337f), true, -1074f), Struct_1(false, 1i, vec2<f32>(1172f, 585f), false, -546f)), Struct_2(Struct_1(false, 61900i, vec2<f32>(-1000f, 1060f), true, 1453f), Struct_1(false, -1i, vec2<f32>(870f, 952f), false, -1402f), Struct_1(false, -14860i, vec2<f32>(921f, 1000f), false, 668f)), Struct_2(Struct_1(false, 0i, vec2<f32>(-141f, 794f), false, -1605f), Struct_1(true, 0i, vec2<f32>(410f, 1000f), true, 1000f), Struct_1(true, 1i, vec2<f32>(-1426f, -421f), false, -1495f)), Struct_2(Struct_1(false, 37724i, vec2<f32>(-301f, -789f), false, 1000f), Struct_1(false, -15976i, vec2<f32>(-1745f, 746f), false, -780f), Struct_1(true, 0i, vec2<f32>(351f, -222f), true, 1090f)), Struct_2(Struct_1(true, 21438i, vec2<f32>(499f, 2448f), false, 583f), Struct_1(false, 0i, vec2<f32>(-2086f, -508f), true, 561f), Struct_1(false, 7265i, vec2<f32>(-455f, 486f), false, 642f)), Struct_2(Struct_1(false, -25124i, vec2<f32>(136f, -654f), true, -1611f), Struct_1(true, 2540i, vec2<f32>(-1972f, 116f), true, 1570f), Struct_1(true, 0i, vec2<f32>(-618f, 1124f), false, 250f)), Struct_2(Struct_1(false, 2147483647i, vec2<f32>(-1937f, -290f), true, -1324f), Struct_1(true, 0i, vec2<f32>(-989f, -286f), true, 1124f), Struct_1(false, 0i, vec2<f32>(-671f, -759f), true, 618f)), Struct_2(Struct_1(true, 2147483647i, vec2<f32>(1414f, -365f), true, 464f), Struct_1(false, i32(-2147483648), vec2<f32>(-113f, 811f), true, -1800f), Struct_1(true, 1i, vec2<f32>(-1000f, 1495f), true, 807f)), Struct_2(Struct_1(false, 11815i, vec2<f32>(-478f, -491f), true, -310f), Struct_1(false, 15113i, vec2<f32>(1155f, -548f), true, 400f), Struct_1(false, 2147483647i, vec2<f32>(1529f, -975f), false, -1470f)), Struct_2(Struct_1(false, 1i, vec2<f32>(-1045f, 1376f), false, 147f), Struct_1(false, -1i, vec2<f32>(-2541f, -464f), false, 1135f), Struct_1(false, 8108i, vec2<f32>(-247f, -1665f), true, 1382f)), Struct_2(Struct_1(true, 22971i, vec2<f32>(-755f, -238f), true, 1237f), Struct_1(false, -1i, vec2<f32>(894f, 633f), false, 1000f), Struct_1(true, -36808i, vec2<f32>(-980f, 374f), true, 693f)), Struct_2(Struct_1(true, 2147483647i, vec2<f32>(-1170f, 316f), true, 655f), Struct_1(false, 4610i, vec2<f32>(1499f, -616f), false, 557f), Struct_1(false, -1i, vec2<f32>(266f, 1000f), true, 381f)), Struct_2(Struct_1(false, i32(-2147483648), vec2<f32>(-932f, 526f), false, -961f), Struct_1(true, 34876i, vec2<f32>(-805f, -1000f), true, 138f), Struct_1(false, i32(-2147483648), vec2<f32>(247f, -1382f), false, 821f)), Struct_2(Struct_1(false, 0i, vec2<f32>(-1513f, -1266f), true, -713f), Struct_1(false, 8957i, vec2<f32>(117f, 290f), false, -176f), Struct_1(false, -1211i, vec2<f32>(316f, 608f), false, -163f)), Struct_2(Struct_1(true, 59931i, vec2<f32>(1554f, 646f), false, 328f), Struct_1(true, -34798i, vec2<f32>(-222f, 808f), false, 1000f), Struct_1(false, -7331i, vec2<f32>(1000f, -964f), false, -370f)), Struct_2(Struct_1(true, -7081i, vec2<f32>(1861f, 1177f), false, 1753f), Struct_1(false, 2147483647i, vec2<f32>(-264f, -617f), false, -467f), Struct_1(true, 0i, vec2<f32>(500f, 380f), false, 292f)), Struct_2(Struct_1(false, 2147483647i, vec2<f32>(1000f, 1890f), true, 1425f), Struct_1(true, -1098i, vec2<f32>(410f, 308f), true, -1308f), Struct_1(false, 25957i, vec2<f32>(-205f, -1051f), false, 758f)), Struct_2(Struct_1(true, -1i, vec2<f32>(1156f, -882f), false, 791f), Struct_1(true, 36212i, vec2<f32>(438f, 611f), false, 203f), Struct_1(true, -1i, vec2<f32>(494f, -134f), true, 1147f)), Struct_2(Struct_1(true, -1i, vec2<f32>(485f, -106f), true, -392f), Struct_1(false, 1i, vec2<f32>(-2249f, -304f), true, -465f), Struct_1(false, 0i, vec2<f32>(669f, 151f), true, -1445f)), Struct_2(Struct_1(true, 48264i, vec2<f32>(-342f, 134f), true, 1405f), Struct_1(true, 32053i, vec2<f32>(724f, -358f), false, 1111f), Struct_1(false, 2147483647i, vec2<f32>(711f, 797f), false, -1871f)), Struct_2(Struct_1(false, 1i, vec2<f32>(-1162f, -309f), false, -1941f), Struct_1(false, 0i, vec2<f32>(-414f, -179f), true, -1725f), Struct_1(false, 21797i, vec2<f32>(1376f, -944f), true, 436f)));

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = true;
    var var_1 = vec2<u32>(7418u, ~arg_0.a);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global2.e), -292f, -1585f, arg_2.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(976f, global2.c.x, 404f, arg_2.e)), vec4<f32>(160f, global2.e, 558f, global2.c.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1639f, -852f, arg_2.e, global2.c.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.e), 770f, _wgslsmith_div_f32(global2.e, 2321f), _wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(-arg_2.c.x)))));
    var var_3 = 1i;
    let var_4 = arg_2;
    return ~arg_0.a;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(10420u, _wgslsmith_div_u32(max(countOneBits(0u), reverseBits(35439u)), func_3(Struct_3(0u), all(vec2<bool>(global2.a, true)), Struct_1(global2.d, 1i, vec2<f32>(global2.e, global2.c.x), global2.a, -1655f), 10308i)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(4294967295u, 25445u, 46853u, 8050u)), firstTrailingBit(vec4<u32>(72734u, 45890u, 0u, 1u))), vec4<u32>(func_3(Struct_3(47541u), false, Struct_1(global2.a, -16142i, global2.c, global2.a, -1089f), global0.x), 1u, countOneBits(4294967295u), reverseBits(4294967295u)))), vec3<u32>(_wgslsmith_sub_u32(64566u | _wgslsmith_dot_vec2_u32(vec2<u32>(51295u, 4294967295u), vec2<u32>(7266u, 1u)), 1u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 31719u)), countOneBits(firstTrailingBit(vec2<u32>(1u, 22963u)))), 4294967295u));
    let var_1 = select(select(!(!vec3<bool>(true, false, global2.a)), !select(select(vec3<bool>(global2.a, global2.a, true), vec3<bool>(true, global2.a, false), vec3<bool>(true, true, true)), select(vec3<bool>(global2.d, true, false), vec3<bool>(global2.a, true, true), vec3<bool>(true, true, global2.a)), !vec3<bool>(global2.a, global2.d, global2.a)), select(vec3<bool>(global2.a, any(vec3<bool>(global2.a, global2.a, global2.a)), global2.d), select(select(vec3<bool>(global2.d, false, true), vec3<bool>(global2.a, false, global2.a), vec3<bool>(true, global2.d, global2.a)), select(vec3<bool>(true, global2.d, false), vec3<bool>(global2.a, false, global2.a), vec3<bool>(global2.d, true, global2.d)), true), true)), select(select(vec3<bool>(any(vec4<bool>(global2.a, global2.a, false, global2.d)), !global2.d, global2.d), !select(vec3<bool>(true, global2.d, false), vec3<bool>(global2.a, true, true), true), true), vec3<bool>(any(vec2<bool>(false, false)) && (global2.a & global2.a), true, true), !vec3<bool>(13812u > var_0, global2.e > global2.c.x, true)), _wgslsmith_clamp_i32(0i, ~u_input.a.x, max(global0.x, _wgslsmith_clamp_i32(global2.b, -2147483647i, 2147483647i))) > ~(global2.b << (var_0 % 32u)));
    let var_2 = false;
    global1 = array<Struct_2, 24>();
    var var_3 = _wgslsmith_f_op_f32(max(global2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, 1000f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1072f)) - _wgslsmith_f_op_f32(-global2.c.x))));
    return Struct_1(false, global2.b, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e)), _wgslsmith_f_op_f32(-global2.e)), _wgslsmith_f_op_vec2_f32(-global2.c))), all(var_1), global2.c.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    global1 = array<Struct_2, 24>();
    var var_0 = select(_wgslsmith_div_vec3_i32(u_input.a, ~vec3<i32>(_wgslsmith_sub_i32(1i, arg_2.b), -1i | arg_2.b, arg_2.b)), _wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b, -1i, u_input.a.x), u_input.a)), select(u_input.a & -vec3<i32>(global0.x, global2.b, global2.b), -_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), true)), arg_2.a);
    var var_1 = select(firstTrailingBit(firstTrailingBit(reverseBits(vec4<i32>(u_input.a.x, -41307i, global0.x, 4034i)))) ^ abs(abs(vec4<i32>(var_0.x, 0i, -2147483647i, 6229i)) | reverseBits(vec4<i32>(u_input.a.x, var_0.x, 15852i, global0.x))), select(_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.a.x, -20415i, -65958i, 1i)), abs(vec4<i32>(global2.b, u_input.a.x, var_0.x, -2147483647i))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.b, global2.b, u_input.a.x, arg_2.b) >> (vec4<u32>(41463u, 33356u, 1u, 22584u) % vec4<u32>(32u)), min(vec4<i32>(global0.x, -2147483647i, arg_1.b, arg_1.b), vec4<i32>(global0.x, u_input.a.x, 1i, arg_2.b))), firstLeadingBit(-vec4<i32>(arg_2.b, -33876i, global2.b, u_input.a.x))), select(vec4<bool>(arg_1.a, false, true, !arg_0), !vec4<bool>(arg_1.a, false, true, global2.d), select(arg_1.d, !global2.a, true))), select(arg_2.d, true, !all(vec4<bool>(arg_2.a, global2.d, true, true)) | false));
    let var_2 = select(max(4294967295u, 1u), 4294967295u, arg_0 & true) << (~1u % 32u);
    var var_3 = var_2 <= firstLeadingBit(_wgslsmith_clamp_u32(~var_2 | ~var_2, var_2, var_2));
    return Struct_3(~1u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    global2 = Struct_1(true, countOneBits(_wgslsmith_mult_i32(firstTrailingBit(-27257i), 26862i) | arg_2.b.b), _wgslsmith_f_op_vec2_f32(arg_2.b.c + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.e, arg_0.c.x) * global2.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.e, arg_0.e))))), any(select(!(!vec4<bool>(true, arg_0.d, arg_0.d, true)), vec4<bool>(true != arg_2.a.d, all(arg_3.yw), any(vec3<bool>(false, global2.a, global2.a)), arg_0.a), select(!arg_3, vec4<bool>(false, false, arg_2.a.d, true), vec4<bool>(arg_0.d, false, false, global2.a)))), _wgslsmith_f_op_f32(-1963f + _wgslsmith_f_op_f32(exp2(arg_0.c.x))));
    return global1[_wgslsmith_index_u32(arg_1.a, 24u)];
}

fn func_1() -> f32 {
    var var_0 = Struct_3(_wgslsmith_sub_u32(68679u, 0u));
    var var_1 = _wgslsmith_div_i32(-(~54126i), 49713i);
    var var_2 = func_5(Struct_1(global2.d, i32(-1i) * -15690i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e, 466f)), !(_wgslsmith_f_op_f32(-global2.c.x) < _wgslsmith_f_op_f32(abs(global2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e - global2.c.x))), func_4(select(global2.d, !(global2.c.x < 106f), false), func_2(), Struct_1(u_input.a.x >= 1i, select(1i, 2147483647i & global2.b, func_2().d), vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(floor(468f))), any(!vec2<bool>(global2.d, true)), _wgslsmith_f_op_f32(round(1000f)))), global1[_wgslsmith_index_u32(1u << ((_wgslsmith_sub_u32(var_0.a >> (0u % 32u), var_0.a) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, var_0.a)) % 32u)) % 32u), 24u)], select(!vec4<bool>(false, -577f <= global2.e, true, true == global2.a), !select(!vec4<bool>(global2.d, false, false, false), select(vec4<bool>(true, global2.d, false, false), vec4<bool>(false, true, global2.a, global2.a), vec4<bool>(global2.d, false, global2.d, false)), vec4<bool>(global2.a, true, true, false)), select(!vec4<bool>(global2.d, true, global2.d, false), vec4<bool>(global2.d != global2.d, global2.d, false, global2.d), all(!vec2<bool>(false, global2.d)))));
    let var_3 = select(select(select(!(!vec4<bool>(var_2.c.d, false, false, false)), select(vec4<bool>(var_2.b.d, global2.d, true, var_2.b.a), select(vec4<bool>(true, false, false, var_2.a.a), vec4<bool>(true, global2.d, var_2.b.a, global2.d), true), true), !(!vec4<bool>(var_2.a.a, true, false, var_2.c.a))), !(!(!vec4<bool>(var_2.c.a, global2.a, true, true))), global2.a), vec4<bool>(!(_wgslsmith_f_op_f32(abs(global2.e)) <= _wgslsmith_f_op_f32(var_2.b.c.x + 861f)), !(!var_2.c.d & true), false, func_2().d), !(!(_wgslsmith_f_op_f32(133f + global2.e) == _wgslsmith_f_op_f32(global2.e + 1000f))));
    let var_4 = select(!select(vec3<bool>(true, true, true), var_3.xzw, -global0.x > ~global2.b), select(var_3.yzy, var_3.yzw, vec3<bool>(any(var_3), false | global2.a, true && (u_input.a.x >= global2.b))), select(select(select(var_3.wxw, vec3<bool>(false, false, false), var_3.x), select(!var_3.zxx, select(var_3.yxx, vec3<bool>(global2.d, true, var_3.x), var_3.zzy), true), global2.d), vec3<bool>(all(!var_3), !(var_0.a < 15512u), var_2.c.d), false));
    return _wgslsmith_div_f32(var_2.a.c.x, func_5(var_2.b, Struct_3(_wgslsmith_mod_u32(func_3(Struct_3(8211u), false, Struct_1(var_3.x, 0i, vec2<f32>(var_2.c.c.x, -801f), var_4.x, 114f), global2.b), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a, var_0.a, var_0.a), vec4<u32>(var_0.a, var_0.a, var_0.a, 0u)))), Struct_2(var_2.b, func_2(), Struct_1(var_2.b.d, var_2.c.b | global0.x, _wgslsmith_div_vec2_f32(var_2.b.c, vec2<f32>(724f, 1428f)), true, _wgslsmith_f_op_f32(793f + -1094f))), var_3).b.e);
}

fn func_6(arg_0: f32) -> Struct_3 {
    global2 = func_5(Struct_1(true, select(global2.b, u_input.a.x, func_2().d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.e, 735f))) * _wgslsmith_f_op_vec2_f32(global2.c - vec2<f32>(global2.e, -1361f))), global2.c), false, arg_0), func_4(true, Struct_1(all(vec3<bool>(global2.d, true, false)), ~(~2147483647i), global2.c, all(!vec4<bool>(global2.d, global2.d, false, global2.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(108f, arg_0)))), Struct_1(false, -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-108f, arg_0)))), global2.a, _wgslsmith_f_op_f32(-1205f * _wgslsmith_f_op_f32(-389f + 261f)))), global1[_wgslsmith_index_u32(~(~4294967295u), 24u)], select(select(select(vec4<bool>(global2.a, false, true, true), select(vec4<bool>(global2.a, false, global2.d, global2.a), vec4<bool>(global2.a, global2.d, global2.a, global2.d), global2.d), select(false, global2.d, false)), !select(vec4<bool>(false, global2.a, global2.a, global2.d), vec4<bool>(true, global2.d, false, global2.d), vec4<bool>(true, global2.a, global2.d, false)), false), vec4<bool>(global2.a, global2.a, global2.d, true), !vec4<bool>(false != global2.a, true, true, -33864i == global0.x))).c;
    let var_0 = ~reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6019u, 16476u), vec2<u32>(0u, 0u)), ~0u)) << (countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_sub_vec3_i32(-min(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, global0.x, 1i), -u_input.a), _wgslsmith_sub_vec3_i32(u_input.a, select(u_input.a, u_input.a, vec3<bool>(true, false, global2.d)))), vec3<i32>(min(~10033i, ~(i32(-1i) * -30672i)), 2147483647i, global2.b));
    var var_2 = func_4(!func_5(Struct_1(select(true, true, true), global2.b, _wgslsmith_f_op_vec2_f32(-global2.c), true, _wgslsmith_div_f32(-953f, global2.e)), func_4(global2.d, func_5(Struct_1(global2.a, -72345i, vec2<f32>(global2.e, -333f), global2.a, 242f), Struct_3(var_0.x), global1[_wgslsmith_index_u32(1u, 24u)], vec4<bool>(true, global2.d, true, global2.d)).c, func_2()), global1[_wgslsmith_index_u32(reverseBits(var_0.x), 24u)], select(select(vec4<bool>(global2.a, global2.d, global2.d, global2.d), vec4<bool>(true, global2.a, true, global2.d), true), !vec4<bool>(global2.a, global2.a, global2.d, global2.a), !vec4<bool>(global2.a, false, global2.a, global2.d))).c.a, func_5(Struct_1(true, global0.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.e, global2.e), global2.c)), vec2<f32>(arg_0, global2.c.x))), any(select(vec3<bool>(global2.a, global2.d, true), vec3<bool>(true, false, global2.a), false)), _wgslsmith_f_op_f32(round(arg_0))), Struct_3(~(~var_0.x)), Struct_2(func_5(Struct_1(false, u_input.a.x, vec2<f32>(-841f, arg_0), true, global2.e), Struct_3(0u), func_5(Struct_1(false, u_input.a.x, global2.c, global2.d, arg_0), Struct_3(11317u), global1[_wgslsmith_index_u32(5333u, 24u)], vec4<bool>(false, global2.d, global2.a, global2.d)), select(vec4<bool>(global2.a, true, global2.d, global2.a), vec4<bool>(true, global2.d, global2.a, false), vec4<bool>(true, global2.d, false, false))).c, func_2(), func_2()), vec4<bool>(func_2().a, all(vec2<bool>(global2.d, true)), global2.a, global2.a)).b, Struct_1(!(global2.d || (-754f > global2.e)), 16018i, global2.c, select(global2.a, all(vec4<bool>(true, global2.a, true, global2.d)), false) || any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-2547f, _wgslsmith_f_op_f32(min(-211f, arg_0))))))));
    let var_3 = 1u;
    return Struct_3(_wgslsmith_dot_vec2_u32(~(~var_0), var_0));
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    var var_0 = global2.e;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(global2.e, global2.c.x), -1822f, -893f, -218f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.e, -724f, 354f, global2.c.x), vec4<f32>(global2.c.x, global2.e, global2.c.x, global2.e)))), vec4<bool>(all(select(vec3<bool>(global2.d, global2.a, global2.a), vec3<bool>(true, true, true), vec3<bool>(global2.d, true, false))), !any(vec4<bool>(false, false, true, global2.d)), !(!global2.d), !func_5(Struct_1(false, -15384i, global2.c, false, global2.e), Struct_3(13454u), Struct_2(Struct_1(global2.a, -2147483647i, global2.c, true, -1563f), Struct_1(global2.a, 787i, global2.c, global2.a, global2.c.x), Struct_1(global2.a, global0.x, global2.c, false, 548f)), vec4<bool>(true, true, global2.a, global2.d)).b.a))));
    let var_2 = func_2();
    global1 = array<Struct_2, 24>();
    let var_3 = vec2<i32>(0i & reverseBits(min(u_input.a.x, global2.b)), 60379i) << (vec2<u32>(32789u, 65229u) % vec2<u32>(32u));
    return Struct_1(false, var_3.x, var_1.zx, true && !all(vec2<bool>(global2.a, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2().c.x, -688f)) * _wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(182f + 842f))) + var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, global2.e) + _wgslsmith_f_op_f32(func_1())))));
    var var_0 = func_7(Struct_3(1136u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(5177u, 1u, 0u), vec3<u32>(0u, 95889u, 19306u))) % 32u)));
    let var_1 = vec3<bool>(true != all(select(select(vec4<bool>(true, true, global2.a, var_0.a), vec4<bool>(global2.a, global2.a, true, true), vec4<bool>(global2.d, global2.d, var_0.d, true)), select(vec4<bool>(var_0.d, true, true, var_0.a), vec4<bool>(global2.d, true, global2.d, var_0.a), false), false)), all(select(select(select(vec4<bool>(false, var_0.d, true, false), vec4<bool>(false, var_0.d, var_0.d, var_0.d), vec4<bool>(true, global2.a, true, false)), !vec4<bool>(true, global2.a, global2.a, var_0.d), !var_0.d), !(!vec4<bool>(global2.a, var_0.a, true, false)), global2.d)), _wgslsmith_f_op_f32(-1090f * global2.c.x) < _wgslsmith_f_op_f32(func_5(Struct_1(global2.a, -2147483647i, vec2<f32>(var_0.c.x, -751f), var_0.a, -1629f), Struct_3(22436u), Struct_2(Struct_1(true, u_input.a.x, var_0.c, var_0.a, global2.e), Struct_1(true, global0.x, vec2<f32>(448f, -339f), false, global2.c.x), Struct_1(false, 10328i, vec2<f32>(global2.c.x, 142f), global2.a, 549f)), select(vec4<bool>(var_0.d, var_0.d, global2.a, true), vec4<bool>(var_0.a, false, true, global2.d), vec4<bool>(true, global2.d, true, false))).a.e - global2.e));
    let var_2 = 27859i;
    global2 = func_5(Struct_1(any(var_1), firstLeadingBit(i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c - vec2<f32>(global2.e, 594f))))), all(!vec2<bool>(false, var_0.d)), _wgslsmith_f_op_f32(-1073f + _wgslsmith_f_op_f32(f32(-1f) * -849f))), func_4(-622f <= var_0.e, func_2(), Struct_1(func_7(Struct_3(4294967295u)).e >= var_0.c.x, ~(i32(-1i) * -1i), _wgslsmith_div_vec2_f32(vec2<f32>(global2.e, -1000f), global2.c), var_1.x, -733f)), func_5(func_2(), Struct_3(7780u << (1u % 32u)), Struct_2(Struct_1(false, var_2 & 0i, vec2<f32>(-984f, 843f), var_1.x, _wgslsmith_f_op_f32(abs(-1122f))), func_7(Struct_3(60174u)), Struct_1(select(false, true, var_1.x), -62252i, vec2<f32>(global2.e, -1000f), all(vec4<bool>(var_1.x, true, var_1.x, var_0.d)), _wgslsmith_f_op_f32(-1707f + global2.e))), select(vec4<bool>(true, !var_0.a, false, !global2.a), vec4<bool>(global2.a | global2.a, true, true, true), global2.a)), select(select(select(!vec4<bool>(false, global2.a, false, var_1.x), vec4<bool>(false, false, false, var_0.d), false), !vec4<bool>(true, var_1.x, global2.a, true), !all(vec4<bool>(var_0.d, var_0.d, var_1.x, false))), select(!vec4<bool>(true, false, false, var_0.d), vec4<bool>(global2.d | var_0.d, global2.d, all(vec4<bool>(global2.d, true, var_0.d, var_1.x)), var_1.x & var_1.x), !(!var_0.d)), select(vec4<bool>(select(true, var_1.x, true), true, var_1.x, false), !vec4<bool>(false, true, global2.d, true), true))).a;
    var var_3 = func_5(Struct_1(any(vec4<bool>(global2.a, !var_0.a, true, all(var_1.zy))), reverseBits(u_input.a.x & global2.b) ^ ~global2.b, vec2<f32>(-832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e))), ~var_2 >= var_0.b, _wgslsmith_f_op_f32(exp2(func_7(Struct_3(20242u)).e))), func_6(-953f), Struct_2(func_5(Struct_1(global2.d, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, -8633i, -12166i), vec4<i32>(17632i, 2147483647i, global0.x, 2147483647i)), func_7(Struct_3(1u)).c, all(vec2<bool>(var_0.a, false)), var_0.c.x), Struct_3(firstTrailingBit(4294967295u)), Struct_2(Struct_1(true, global2.b, vec2<f32>(global2.c.x, global2.c.x), false, -1319f), func_7(Struct_3(47575u)), func_2()), vec4<bool>(false, var_0.d, var_1.x, !global2.d)).c, func_5(Struct_1(false, 1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e, 763f)), !var_1.x, var_0.e), func_6(_wgslsmith_f_op_f32(var_0.e + global2.e)), Struct_2(func_7(Struct_3(1u)), func_7(Struct_3(1u)), func_5(Struct_1(false, global2.b, vec2<f32>(-620f, -1926f), true, global2.c.x), Struct_3(29055u), global1[_wgslsmith_index_u32(36327u, 24u)], vec4<bool>(false, var_1.x, false, true)).b), select(!vec4<bool>(var_1.x, false, true, var_0.a), !vec4<bool>(var_1.x, true, var_1.x, global2.a), vec4<bool>(false, global2.a, global2.d, true))).b, Struct_1(all(select(vec2<bool>(true, var_0.a), vec2<bool>(false, var_0.a), var_1.xz)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.x, -1i), var_0.b ^ 0i, -2147483647i), vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-global2.c.x)), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.e), -1024f, false)))), select(select(!select(vec4<bool>(false, var_1.x, false, global2.d), vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_0.a, global2.d, false, global2.a)), !vec4<bool>(false, true, false, global2.a), !select(vec4<bool>(global2.d, true, false, true), vec4<bool>(global2.d, var_1.x, global2.a, var_1.x), false)), !(!select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, false, var_0.d))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u)));
}

