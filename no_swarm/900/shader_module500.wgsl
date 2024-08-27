struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(true, vec3<f32>(-936f, -468f, -142f), -31807i, vec4<bool>(false, true, true, false)), vec2<u32>(3583u, 4844u), 1739f), Struct_2(Struct_1(true, vec3<f32>(-166f, 659f, 1000f), 2147483647i, vec4<bool>(true, false, true, false)), vec2<u32>(6206u, 4294967295u), -1249f), Struct_2(Struct_1(true, vec3<f32>(532f, 421f, -758f), 0i, vec4<bool>(false, false, true, false)), vec2<u32>(4294967295u, 4294967295u), 820f), Struct_2(Struct_1(true, vec3<f32>(-1199f, -323f, -773f), 11845i, vec4<bool>(false, true, false, false)), vec2<u32>(14057u, 4294967295u), -120f), Struct_2(Struct_1(false, vec3<f32>(669f, -282f, 1099f), 2147483647i, vec4<bool>(true, false, true, true)), vec2<u32>(22870u, 21419u), 1000f), Struct_2(Struct_1(false, vec3<f32>(-1397f, -1000f, -432f), -1i, vec4<bool>(false, false, true, true)), vec2<u32>(82843u, 25430u), 1153f), Struct_2(Struct_1(true, vec3<f32>(-1661f, 731f, -974f), -26573i, vec4<bool>(true, false, false, true)), vec2<u32>(7996u, 46896u), 1021f), Struct_2(Struct_1(true, vec3<f32>(1135f, -513f, 1162f), 2692i, vec4<bool>(false, false, true, true)), vec2<u32>(0u, 74436u), -1912f), Struct_2(Struct_1(false, vec3<f32>(349f, 983f, -1814f), -20095i, vec4<bool>(true, false, true, true)), vec2<u32>(0u, 0u), 637f), Struct_2(Struct_1(false, vec3<f32>(383f, 1000f, -729f), 0i, vec4<bool>(true, true, false, true)), vec2<u32>(1u, 11600u), 834f), Struct_2(Struct_1(true, vec3<f32>(-1204f, 240f, -197f), -40844i, vec4<bool>(true, false, false, false)), vec2<u32>(56302u, 41436u), -200f), Struct_2(Struct_1(false, vec3<f32>(315f, 230f, 937f), -18393i, vec4<bool>(true, false, false, false)), vec2<u32>(1u, 0u), -370f), Struct_2(Struct_1(true, vec3<f32>(351f, -1563f, 417f), 1i, vec4<bool>(false, false, true, true)), vec2<u32>(4294967295u, 4294967295u), 976f), Struct_2(Struct_1(true, vec3<f32>(639f, -260f, 2058f), -54316i, vec4<bool>(true, false, true, true)), vec2<u32>(110982u, 8710u), -675f), Struct_2(Struct_1(true, vec3<f32>(-784f, 343f, -1301f), 0i, vec4<bool>(true, false, true, true)), vec2<u32>(1u, 0u), 836f), Struct_2(Struct_1(true, vec3<f32>(1000f, 306f, -379f), 17335i, vec4<bool>(false, true, false, false)), vec2<u32>(0u, 74167u), -1816f), Struct_2(Struct_1(false, vec3<f32>(1052f, -590f, 513f), 1i, vec4<bool>(false, true, false, true)), vec2<u32>(51061u, 1u), -461f), Struct_2(Struct_1(true, vec3<f32>(156f, -1056f, 631f), -1i, vec4<bool>(false, true, true, false)), vec2<u32>(0u, 0u), 1527f), Struct_2(Struct_1(true, vec3<f32>(957f, 709f, 1516f), 60507i, vec4<bool>(false, false, true, true)), vec2<u32>(12017u, 1u), -1280f), Struct_2(Struct_1(true, vec3<f32>(-1267f, -1167f, 1367f), i32(-2147483648), vec4<bool>(true, true, false, true)), vec2<u32>(1u, 6397u), -1933f), Struct_2(Struct_1(true, vec3<f32>(-568f, 1000f, -337f), -11766i, vec4<bool>(true, true, true, true)), vec2<u32>(4294967295u, 9916u), 444f), Struct_2(Struct_1(true, vec3<f32>(1640f, -2341f, -731f), 54994i, vec4<bool>(false, true, false, false)), vec2<u32>(53973u, 29630u), 2021f), Struct_2(Struct_1(false, vec3<f32>(475f, -376f, -565f), 56456i, vec4<bool>(true, false, false, false)), vec2<u32>(4294967295u, 1u), 1830f), Struct_2(Struct_1(false, vec3<f32>(1674f, 573f, -821f), -1i, vec4<bool>(false, true, true, true)), vec2<u32>(1u, 0u), -187f), Struct_2(Struct_1(false, vec3<f32>(428f, 1000f, -471f), 0i, vec4<bool>(false, true, true, false)), vec2<u32>(36470u, 0u), 613f), Struct_2(Struct_1(false, vec3<f32>(-879f, 1000f, -553f), 2147483647i, vec4<bool>(true, false, false, false)), vec2<u32>(52046u, 35141u), -986f));

var<private> global1: array<i32, 25> = array<i32, 25>(i32(-2147483648), 2147483647i, -49035i, 2147483647i, 17742i, 1i, -1i, 3941i, 12188i, i32(-2147483648), -1i, i32(-2147483648), -57243i, 0i, 1408i, 29434i, 2147483647i, 2147483647i, 48440i, -35671i, i32(-2147483648), 1i, 57989i, -1i, 0i);

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true, vec3<f32>(-929f, -887f, 1000f), 56031i, vec4<bool>(true, true, true, false)), Struct_1(false, vec3<f32>(1173f, 2103f, -150f), 0i, vec4<bool>(false, true, true, false)), Struct_1(false, vec3<f32>(1000f, -214f, -575f), 27136i, vec4<bool>(true, true, false, false)), Struct_1(true, vec3<f32>(-869f, -1583f, -151f), 2147483647i, vec4<bool>(false, false, false, true)), Struct_1(false, vec3<f32>(1094f, -1648f, 1000f), 1i, vec4<bool>(false, true, true, false)), Struct_1(true, vec3<f32>(-1001f, -1121f, -1466f), -15493i, vec4<bool>(false, false, true, false)), Struct_1(true, vec3<f32>(939f, 1762f, 1685f), -1368i, vec4<bool>(true, false, false, true)), Struct_1(false, vec3<f32>(-1444f, 674f, 802f), 0i, vec4<bool>(true, true, false, false)), Struct_1(false, vec3<f32>(446f, 581f, 1042f), 34458i, vec4<bool>(true, true, true, true)), Struct_1(false, vec3<f32>(-1000f, 222f, -967f), 1i, vec4<bool>(false, false, false, false)), Struct_1(true, vec3<f32>(-1125f, -1000f, -366f), 0i, vec4<bool>(false, false, true, false)), Struct_1(true, vec3<f32>(1879f, 844f, -1331f), 39079i, vec4<bool>(false, false, false, false)), Struct_1(true, vec3<f32>(871f, -1333f, -312f), 50191i, vec4<bool>(true, false, false, true)), Struct_1(false, vec3<f32>(930f, 605f, 3190f), -2615i, vec4<bool>(false, false, false, false)), Struct_1(false, vec3<f32>(1771f, -1000f, 149f), 3327i, vec4<bool>(false, true, true, false)), Struct_1(true, vec3<f32>(860f, 1030f, 652f), 59065i, vec4<bool>(false, true, true, false)), Struct_1(false, vec3<f32>(518f, -971f, 462f), 28980i, vec4<bool>(false, false, false, true)));

var<private> global3: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    var var_0 = ~global3.b;
    return Struct_2(global2[_wgslsmith_index_u32(~51539u, 17u)], _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, ~4294967295u), vec2<u32>(1u, 25829u)), -1146f);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(func_2().a, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(26740u, ~4294967295u), ~arg_3.b.x), ~arg_3.b >> (arg_3.b % vec2<u32>(32u))), _wgslsmith_f_op_f32(-723f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(348f, arg_2.x)) * -311f) - -1000f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b.x, 2524f, arg_2.x)), vec3<f32>(_wgslsmith_div_f32(global3.c, arg_3.c), _wgslsmith_f_op_f32(min(global3.a.b.x, 794f)), global3.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-844f, var_0.a.b.x, 457f))))));
    let var_2 = var_0.a.b.zy;
    global0 = array<Struct_2, 26>();
    let var_3 = func_2();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-global3.c) != -1465f, func_2().a.b, -_wgslsmith_mult_i32(min(global3.a.c, global3.a.c), -1i), !global3.a.d), max(var_0.b, firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 0u), global3.b.x))), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - -198f) + var_3.c)));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = func_3(select(true, _wgslsmith_mod_u32(~39736u, global3.b.x) < u_input.a.x, true), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, i32(-1i) * -11456i), vec2<i32>(2748i, ~(~(-1i)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.a.b.x)), global3.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.c)), 885f)))), func_2());
    var var_1 = !global3.a.a;
    let var_2 = var_0.a.d.wy;
    let var_3 = any(func_3(global3.c != -114f, countOneBits(firstLeadingBit(36760i)), var_0.a.b, var_0).a.d);
    let var_4 = var_0.b.x > abs(global3.b.x);
    return vec4<bool>(false, !var_3, false, global3.a.a && (true | (!var_0.a.d.x & (-1586f == var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    global0 = array<Struct_2, 26>();
    let var_1 = !select(func_1(~vec4<u32>(global3.b.x, global3.b.x, global3.b.x, u_input.a.x) << (abs(vec4<u32>(u_input.a.x, global3.b.x, global3.b.x, global3.b.x)) % vec4<u32>(32u))), !global3.a.d, global3.a.d.x);
    global0 = array<Struct_2, 26>();
    var var_2 = u_input.a.x;
    global3 = Struct_2(global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 17u)], _wgslsmith_div_vec2_u32(vec2<u32>(37858u, 9660u) ^ _wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(0u, u_input.a.x)), ~func_2().b) ^ ~vec2<u32>(global3.b.x, 9537u), func_2().a.b.x);
    var var_3 = all(!global3.a.d);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1126f * global3.a.b.x) * global3.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-202f, 1243f))))));
    var var_5 = ~global3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.b.x, vec4<u32>(global3.b.x, ((4294967295u & u_input.a.x) << (~14340u % 32u)) ^ ~u_input.a.x, global3.b.x, ~4294967295u), 0i, -1i);
}

