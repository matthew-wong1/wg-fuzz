struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, 1951f, 1i, true), Struct_1(true, -188f, 1i, true), Struct_1(false, 991f, 1i, true), 0i);

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(true, Struct_2(Struct_1(true, -1292f, -35579i, false), Struct_1(false, -430f, 20526i, false), Struct_1(false, -961f, 2147483647i, false), -1i), vec2<f32>(-1300f, -343f), vec4<u32>(3779u, 4294967295u, 2044u, 4294967295u)), Struct_3(false, Struct_2(Struct_1(true, 451f, -17398i, true), Struct_1(false, 166f, 1i, true), Struct_1(true, -749f, -1i, false), -43415i), vec2<f32>(-193f, -565f), vec4<u32>(0u, 26611u, 22241u, 1u)), Struct_3(false, Struct_2(Struct_1(true, -641f, -7767i, false), Struct_1(false, -952f, 76796i, true), Struct_1(false, -1000f, i32(-2147483648), true), 6729i), vec2<f32>(1000f, 164f), vec4<u32>(12754u, 1u, 15413u, 0u)), Struct_3(true, Struct_2(Struct_1(false, -539f, -15095i, true), Struct_1(false, -1679f, 0i, false), Struct_1(false, -1000f, 2147483647i, false), 1i), vec2<f32>(-215f, -778f), vec4<u32>(0u, 0u, 33842u, 4294967295u)), Struct_3(true, Struct_2(Struct_1(true, 349f, 2147483647i, false), Struct_1(false, 1000f, 0i, true), Struct_1(false, 532f, 15608i, true), i32(-2147483648)), vec2<f32>(-1000f, 1000f), vec4<u32>(4294967295u, 1u, 15748u, 4294967295u)), Struct_3(false, Struct_2(Struct_1(false, -604f, 2147483647i, true), Struct_1(true, -1112f, i32(-2147483648), true), Struct_1(true, -1187f, -6753i, false), 0i), vec2<f32>(-1447f, 2270f), vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_3(true, Struct_2(Struct_1(false, 156f, 55695i, false), Struct_1(true, -1388f, 2147483647i, false), Struct_1(true, 1121f, 0i, true), -3096i), vec2<f32>(-623f, 803f), vec4<u32>(55072u, 13477u, 0u, 5126u)), Struct_3(true, Struct_2(Struct_1(false, 278f, 0i, false), Struct_1(true, -1000f, 1i, false), Struct_1(true, 1206f, -1i, false), -37198i), vec2<f32>(-280f, 1334f), vec4<u32>(4294967295u, 17884u, 0u, 26208u)), Struct_3(true, Struct_2(Struct_1(false, 809f, -65636i, false), Struct_1(false, 1104f, 2147483647i, false), Struct_1(false, 395f, 2147483647i, false), -296i), vec2<f32>(202f, -1055f), vec4<u32>(4294967295u, 16496u, 14737u, 23899u)), Struct_3(true, Struct_2(Struct_1(true, -482f, 2147483647i, false), Struct_1(false, 1318f, -21047i, false), Struct_1(false, 622f, 0i, false), 7522i), vec2<f32>(-1000f, 1306f), vec4<u32>(52503u, 4294967295u, 22511u, 4294967295u)), Struct_3(true, Struct_2(Struct_1(false, -569f, -1i, true), Struct_1(true, -1279f, -1i, true), Struct_1(true, 1379f, -51690i, true), 1i), vec2<f32>(-204f, 251f), vec4<u32>(4294967295u, 93278u, 50559u, 0u)), Struct_3(true, Struct_2(Struct_1(false, 559f, 0i, true), Struct_1(false, -975f, -59295i, true), Struct_1(false, -1066f, -1i, true), -18362i), vec2<f32>(-173f, -1930f), vec4<u32>(68269u, 0u, 50511u, 1u)), Struct_3(false, Struct_2(Struct_1(false, 1399f, 0i, false), Struct_1(false, -1794f, 19622i, true), Struct_1(true, 1139f, 0i, false), -40393i), vec2<f32>(-1402f, -728f), vec4<u32>(4294967295u, 39320u, 4294967295u, 4294967295u)), Struct_3(true, Struct_2(Struct_1(true, 217f, 0i, false), Struct_1(false, -1001f, 43365i, false), Struct_1(true, 155f, -1i, true), 4857i), vec2<f32>(1951f, -524f), vec4<u32>(0u, 1u, 1u, 19758u)), Struct_3(true, Struct_2(Struct_1(true, -751f, -1i, true), Struct_1(false, 1133f, -16243i, false), Struct_1(false, -1398f, 2147483647i, false), 2147483647i), vec2<f32>(291f, -853f), vec4<u32>(0u, 4294967295u, 82820u, 0u)), Struct_3(false, Struct_2(Struct_1(true, 882f, -1i, true), Struct_1(true, -527f, -1i, true), Struct_1(false, -920f, i32(-2147483648), true), -1i), vec2<f32>(2876f, -525f), vec4<u32>(22321u, 0u, 1u, 0u)), Struct_3(false, Struct_2(Struct_1(false, -1015f, 16487i, true), Struct_1(false, 589f, -11175i, false), Struct_1(false, 1634f, 2147483647i, false), 0i), vec2<f32>(-1962f, 625f), vec4<u32>(28078u, 1u, 53479u, 4294967295u)), Struct_3(true, Struct_2(Struct_1(false, 997f, i32(-2147483648), true), Struct_1(true, 432f, -9080i, true), Struct_1(true, 1193f, 1i, true), 28195i), vec2<f32>(551f, 367f), vec4<u32>(4294967295u, 8177u, 0u, 0u)), Struct_3(true, Struct_2(Struct_1(false, -633f, 18554i, true), Struct_1(true, 328f, 1i, true), Struct_1(false, -1256f, -51085i, false), 2144i), vec2<f32>(1688f, -1000f), vec4<u32>(4294967295u, 23029u, 10760u, 4294967295u)), Struct_3(true, Struct_2(Struct_1(true, -1000f, 58453i, false), Struct_1(true, 718f, 0i, true), Struct_1(false, 224f, 0i, false), -20111i), vec2<f32>(-723f, -781f), vec4<u32>(35349u, 4294967295u, 1u, 42781u)), Struct_3(false, Struct_2(Struct_1(true, -1698f, 0i, false), Struct_1(false, 1720f, -1i, true), Struct_1(false, -1695f, 11550i, false), -1i), vec2<f32>(-1425f, 105f), vec4<u32>(46233u, 23641u, 1u, 4294967295u)), Struct_3(false, Struct_2(Struct_1(false, 1000f, 6348i, true), Struct_1(false, -1000f, 2147483647i, false), Struct_1(false, 1366f, 40187i, false), -26985i), vec2<f32>(237f, -2392f), vec4<u32>(1343u, 0u, 1u, 0u)), Struct_3(true, Struct_2(Struct_1(true, 192f, -43725i, true), Struct_1(false, -678f, 19033i, false), Struct_1(false, -970f, -3195i, false), 14289i), vec2<f32>(373f, -743f), vec4<u32>(22246u, 4294967295u, 1u, 1u)), Struct_3(true, Struct_2(Struct_1(false, 347f, 1i, false), Struct_1(true, 304f, 2513i, true), Struct_1(false, -264f, -46706i, false), 0i), vec2<f32>(1000f, 357f), vec4<u32>(83361u, 1u, 0u, 1055u)));

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(arg_3, arg_3)))))), _wgslsmith_f_op_vec3_f32(select(arg_3, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1332f, 2036f) - -1000f), arg_0.x, _wgslsmith_f_op_f32(-arg_3.x)), global0.a.d))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(983f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f + global0.b.b)))));
    let var_2 = 4294967295u;
    var var_3 = u_input.a;
    global1 = array<Struct_3, 24>();
    return vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a << (56642u % 32u)), var_2);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    global2 = ~60556u;
    let var_0 = ~(~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(arg_1, 29146u)), func_3(vec3<f32>(716f, global0.c.b, global0.a.b), -global0.a.c, ~vec4<u32>(6646u, arg_0.x, 22455u, 122373u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-698f, global0.a.b, global0.a.b), vec3<f32>(global0.c.b, global0.c.b, global0.a.b)))), arg_0.yz));
    global2 = ~(firstLeadingBit(_wgslsmith_sub_u32(~43456u, u_input.a)) | 4294967295u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b, 194f, global0.c.b)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.b, -1207f, global0.c.b), vec3<f32>(global0.b.b, -961f, global0.c.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.b, global0.c.b, global0.c.b), vec3<f32>(-1679f, global0.b.b, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b, global0.a.b, global0.a.b)))))));
    let var_2 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))))));
    return Struct_2(Struct_1(select(true, true, global0.b.d), _wgslsmith_f_op_f32(global0.b.b + -150f), -2147483647i, -64335i < global0.a.c), global0.c, Struct_1(true, 1f, 2147483647i, arg_0.x >= _wgslsmith_mult_u32(arg_0.x, u_input.a)), 28914i | ~firstTrailingBit(global0.a.c));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.b + arg_2.b.b)));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 24u)];
    let var_2 = (_wgslsmith_sub_vec3_i32(select(-arg_1, max(vec3<i32>(-2147483647i, 14916i, 13133i), vec3<i32>(var_1.b.a.c, arg_2.a.c, global0.b.c)), select(vec3<bool>(arg_2.c.d, arg_2.c.a, true), vec3<bool>(var_1.b.b.a, true, var_1.b.a.d), true)), vec3<i32>(~arg_2.c.c, 17539i | global0.d, countOneBits(arg_1.x))) ^ ~vec3<i32>(~1i, -9425i, -1i ^ arg_1.x)) >> (~(~(~(~var_1.d.yyx))) % vec3<u32>(32u));
    let var_3 = func_2(~var_1.d.xwy, u_input.a).c;
    let var_4 = ~global0.c.c;
    return true;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(480f, vec3<i32>(global0.d, -abs(global0.d), 10956i), func_2(~vec3<u32>(u_input.a << (0u % 32u), 1u, ~1375u), u_input.a));
    global1 = array<Struct_3, 24>();
    var var_1 = !(~_wgslsmith_add_i32(-71369i, firstTrailingBit(global0.a.c)) >= _wgslsmith_div_i32(1i, ~(i32(-1i) * -2147483647i)));
    let var_2 = global1[_wgslsmith_index_u32(~(~13748u), 24u)];
    var var_3 = func_2(vec3<u32>(1u, u_input.a, ~u_input.a), var_2.d.x);
    return Struct_2(func_2(min(~firstLeadingBit(vec3<u32>(29203u, 4294967295u, 14292u)), var_2.d.zyw), ~(u_input.a << (countOneBits(var_2.d.x) % 32u))).c, var_2.b.c, func_2(var_2.d.zzz, firstTrailingBit(_wgslsmith_div_u32(30035u, max(var_2.d.x, 30957u)))).c, var_2.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 24>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1405f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-579f - global0.a.b) + 1764f)))));
    global2 = 0u;
    global1 = array<Struct_3, 24>();
    var var_1 = vec4<u32>(u_input.a, u_input.a, abs(~1u), _wgslsmith_clamp_u32(4294967295u, ~13219u, ~1u));
    var var_2 = Struct_1(!(93421u <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, u_input.a), vec4<u32>(8083u, var_1.x, var_1.x, 9177u))) & true, _wgslsmith_f_op_f32(global0.c.b - -316f), reverseBits(15989i), true);
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1866f))), var_0, global0.c.c ^ _wgslsmith_add_i32(var_2.c, -1i));
}

