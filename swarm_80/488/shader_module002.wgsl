struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -1i), 35003i, -76078i, vec4<f32>(-850f, 925f, 739f, 431f), true), Struct_1(vec3<i32>(-1i, 61528i, 0i), -48601i, -1877i, vec4<f32>(224f, 453f, 2336f, 1197f), false), Struct_1(vec3<i32>(-1i, 2147483647i, 10880i), 0i, 0i, vec4<f32>(-1584f, 850f, 1122f, 680f), true), Struct_1(vec3<i32>(53312i, 0i, 0i), 12626i, -1i, vec4<f32>(-162f, -258f, -1000f, 1546f), false), Struct_1(vec3<i32>(i32(-2147483648), -40256i, i32(-2147483648)), -3594i, -120593i, vec4<f32>(-707f, -616f, 1487f, 803f), true), Struct_1(vec3<i32>(1i, 1i, -4651i), 26145i, 0i, vec4<f32>(-776f, 1732f, -1000f, 2438f), true), Struct_1(vec3<i32>(63130i, 0i, 67862i), i32(-2147483648), i32(-2147483648), vec4<f32>(-246f, 1811f, -218f, 767f), true), Struct_1(vec3<i32>(-16071i, 2147483647i, 2147483647i), -7279i, 0i, vec4<f32>(135f, -818f, -165f, -106f), true), Struct_1(vec3<i32>(57740i, 2147483647i, -51186i), 1i, 2147483647i, vec4<f32>(781f, -1100f, -530f, 639f), true), Struct_1(vec3<i32>(-1i, -715i, -54425i), -3226i, i32(-2147483648), vec4<f32>(-830f, 601f, 563f, 568f), false), Struct_1(vec3<i32>(50208i, 38254i, 1i), 25436i, -5968i, vec4<f32>(400f, -577f, -571f, 199f), false), Struct_1(vec3<i32>(1i, -2282i, 2147483647i), 0i, 422i, vec4<f32>(1071f, 150f, 249f, -1029f), true));

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(46320i, 46433i, 24897i, -1i), vec4<i32>(1i, -37183i, 52275i, 72783i), vec4<i32>(1i, i32(-2147483648), -13849i, -17555i), vec4<i32>(10137i, -4398i, 0i, 1i), vec4<i32>(-36329i, -34982i, i32(-2147483648), -8168i), vec4<i32>(-1i, 42074i, 41212i, -1i), vec4<i32>(1i, 2147483647i, -15883i, 2147483647i), vec4<i32>(-5549i, 0i, -7646i, -18054i), vec4<i32>(77619i, -90984i, 1i, 45317i));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<i32>(0i, -59731i, 2147483647i), 1i, 29484i, vec4<f32>(338f, -1303f, 446f, -428f), false), Struct_1(vec3<i32>(10658i, 45058i, -12914i), -26246i, -23907i, vec4<f32>(1464f, -156f, 466f, 1484f), false), Struct_1(vec3<i32>(-20354i, -3033i, i32(-2147483648)), 0i, i32(-2147483648), vec4<f32>(-480f, -121f, -788f, 399f), false), Struct_1(vec3<i32>(2147483647i, 1i, -1i), i32(-2147483648), 1i, vec4<f32>(881f, 219f, -908f, 811f), true), Struct_1(vec3<i32>(-28231i, 2147483647i, -5325i), 0i, 46133i, vec4<f32>(1000f, -2064f, 1821f, -774f), true), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 16001i, 46390i, vec4<f32>(1000f, -410f, 654f, -404f), false), Struct_1(vec3<i32>(-58930i, 38226i, -1i), 885i, -20750i, vec4<f32>(-1839f, 696f, -430f, -453f), true), Struct_1(vec3<i32>(0i, -30820i, 1i), -1i, 15042i, vec4<f32>(-601f, -416f, 369f, 797f), false), Struct_1(vec3<i32>(i32(-2147483648), 8259i, 41699i), i32(-2147483648), -5775i, vec4<f32>(-554f, -2173f, 1070f, 178f), true), Struct_1(vec3<i32>(2147483647i, 3378i, 0i), 23455i, 2147483647i, vec4<f32>(177f, 1336f, 529f, 477f), false), Struct_1(vec3<i32>(-41171i, i32(-2147483648), 18176i), 1i, 11573i, vec4<f32>(-362f, 770f, -803f, 1277f), false), Struct_1(vec3<i32>(i32(-2147483648), -31564i, 45810i), -20064i, -33514i, vec4<f32>(1071f, -1117f, 110f, 274f), true), Struct_1(vec3<i32>(45917i, -1i, 0i), 26152i, 0i, vec4<f32>(1106f, 487f, -1753f, -245f), false), Struct_1(vec3<i32>(0i, 0i, -10229i), -13477i, 2147483647i, vec4<f32>(-133f, 374f, 1534f, -715f), false), Struct_1(vec3<i32>(-1528i, 0i, -24856i), 32205i, -1i, vec4<f32>(-725f, 248f, -393f, 1063f), false), Struct_1(vec3<i32>(0i, 0i, 0i), 58272i, 43691i, vec4<f32>(-898f, -1676f, 723f, 1037f), true), Struct_1(vec3<i32>(-4751i, -10261i, 0i), i32(-2147483648), 18566i, vec4<f32>(2009f, 226f, -266f, -771f), true), Struct_1(vec3<i32>(33716i, 113i, -36404i), 1i, -5948i, vec4<f32>(1033f, 543f, 463f, -1000f), true));

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    global2 = Struct_1(~(~(-countOneBits(global2.a))), 0i, firstTrailingBit(2147483647i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f + _wgslsmith_div_f32(-270f, -1504f)) + _wgslsmith_f_op_f32(trunc(139f))), -532f, global4.d.x, _wgslsmith_f_op_f32(step(global4.d.x, global2.d.x))), global2.e);
    global4 = global0[_wgslsmith_index_u32(~u_input.b, 12u)];
    var var_0 = 474f;
    global0 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, _wgslsmith_clamp_u32(~1u, 4294967295u, ~u_input.a), u_input.a), firstLeadingBit(~reverseBits(countOneBits(vec3<u32>(76425u, u_input.b, u_input.e)))));
    return all(!select(!(!vec3<bool>(false, false, global2.e)), vec3<bool>(true, true, true), !all(vec2<bool>(true, global2.e))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = vec2<bool>(false, global2.e);
    let var_1 = !(!func_3(-u_input.d.x)) & (_wgslsmith_f_op_f32(round(arg_0.x)) > global4.d.x);
    var var_2 = Struct_1(-vec3<i32>(_wgslsmith_add_i32(~global2.b, -11008i), global4.b, -global4.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-(u_input.d >> (vec2<u32>(u_input.e, 1u) % vec2<u32>(32u))), ~u_input.d, min(global2.a.xy, u_input.d)), -vec2<i32>(_wgslsmith_dot_vec2_i32(global4.a.yy, u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.c, 2147483647i), vec2<i32>(global4.b, global2.c)))), -11648i, _wgslsmith_f_op_vec4_f32(ceil(global4.d)), ~u_input.c >= _wgslsmith_add_u32(u_input.b, 83885u));
    var_2 = Struct_1(-global2.a, _wgslsmith_dot_vec2_i32(max(u_input.d, global4.a.yy), global4.a.yy), global2.c, _wgslsmith_f_op_vec4_f32(global2.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(exp2(var_2.d.x)), _wgslsmith_f_op_f32(sign(arg_0.x))))), false);
    let var_3 = 34035i ^ var_2.a.x;
    return _wgslsmith_f_op_f32(select(global4.d.x, 821f, global2.e));
}

fn func_1() -> vec3<i32> {
    global1 = array<vec4<i32>, 9>();
    var var_0 = u_input.e;
    let var_1 = Struct_1(~vec3<i32>(~_wgslsmith_mod_i32(-1599i, global4.a.x), -78895i >> (u_input.b % 32u), -2147483647i), -21131i, ~global4.b, vec4<f32>(1193f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.d.x, global4.d.x))))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global4.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -951f)), !any(vec2<bool>(global2.e, true)))), 788f), all(vec3<bool>(false, true, true)));
    var var_2 = Struct_1(global2.a, global4.a.x, _wgslsmith_mod_i32(-(~(-2147483647i)), u_input.d.x), _wgslsmith_f_op_vec4_f32(-global2.d), !global2.e);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d.x)));
    return _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(~6963i, ~u_input.d.x, _wgslsmith_clamp_i32(global2.c, -27636i, -72992i))) ^ abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.x, var_2.b, u_input.d.x), global2.a)), var_2.a, abs(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b, 9264i, 1i), global2.a) ^ ~vec3<i32>(1i, global2.b, global2.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-54257i, var_1.b, var_1.a.x) >> (vec3<u32>(4294967295u, u_input.c, u_input.e) % vec3<u32>(32u)), vec3<i32>(global2.c, 0i, 5558i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(false, any(vec4<bool>(false | global4.e, all(vec2<bool>(false, global2.e)), !global2.e, any(vec3<bool>(true, global4.e, false)))), false, false);
    global4 = global0[_wgslsmith_index_u32(u_input.b, 12u)];
    var var_1 = u_input.d.x;
    var var_2 = global1[_wgslsmith_index_u32(~u_input.a, 9u)];
    var var_3 = Struct_1(func_1(), firstTrailingBit(-global2.a.x), u_input.d.x, global4.d, false);
    let var_4 = 42848i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.d.x, global4.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2.d, vec4<f32>(-1140f, global2.d.x, 833f, global4.d.x)))) * global2.d)), firstLeadingBit(_wgslsmith_mult_i32(max(9235i, -19355i), countOneBits(var_4))) & _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(~abs(u_input.a), 9u)], vec4<i32>(~2147483647i, u_input.d.x ^ var_4, i32(-1i) * -32320i, 0i)), var_3.d.x, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x)))), _wgslsmith_f_op_f32(select(-1169f, _wgslsmith_f_op_f32(min(global4.d.x, _wgslsmith_f_op_f32(select(global4.d.x, global2.d.x, global2.e)))), !func_3(-23912i)))));
}

