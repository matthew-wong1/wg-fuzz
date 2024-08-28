struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(422f, 705f);

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-574f, 1000f, 1000f), vec3<f32>(304f, -1190f, 269f), vec3<f32>(-1000f, -723f, 314f), vec3<f32>(1503f, 762f, -1000f), vec3<f32>(724f, -236f, 214f), vec3<f32>(725f, 737f, -921f), vec3<f32>(1108f, 911f, -1156f), vec3<f32>(-235f, 192f, 906f), vec3<f32>(105f, 217f, -643f), vec3<f32>(-356f, 332f, 1632f), vec3<f32>(798f, -1349f, -464f), vec3<f32>(-163f, 512f, 1093f), vec3<f32>(-1861f, 1000f, -1295f), vec3<f32>(-531f, 408f, 2114f), vec3<f32>(-1542f, -551f, 1467f), vec3<f32>(1892f, -151f, 2126f), vec3<f32>(1269f, 529f, 668f), vec3<f32>(-1000f, -256f, 813f), vec3<f32>(-861f, 1159f, -215f), vec3<f32>(-357f, 128f, -788f), vec3<f32>(-835f, 1308f, -258f), vec3<f32>(1000f, 816f, -890f), vec3<f32>(345f, 600f, -1584f), vec3<f32>(-888f, -1148f, 1110f), vec3<f32>(-240f, 2524f, 1418f));

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<f32>(209f, 770f, -940f), vec4<i32>(-4829i, 2147483647i, -21774i, 1i), -1105f, vec3<u32>(46168u, 6816u, 1u), 1u), Struct_1(vec3<f32>(-900f, 155f, -731f), vec4<i32>(-32349i, 25612i, -18506i, 2147483647i), 468f, vec3<u32>(62292u, 20218u, 3692u), 1u), Struct_1(vec3<f32>(-811f, -1227f, 298f), vec4<i32>(1i, 0i, i32(-2147483648), 1i), -588f, vec3<u32>(75922u, 4294967295u, 0u), 0u), Struct_1(vec3<f32>(-887f, 1525f, 215f), vec4<i32>(-39767i, -514i, 2147483647i, -5472i), -335f, vec3<u32>(47075u, 1u, 0u), 4294967295u), Struct_1(vec3<f32>(138f, 226f, -993f), vec4<i32>(-1i, 1i, 40434i, 30939i), -426f, vec3<u32>(4294967295u, 4294967295u, 1u), 4294967295u), Struct_1(vec3<f32>(317f, 244f, 616f), vec4<i32>(1i, i32(-2147483648), -30064i, i32(-2147483648)), -290f, vec3<u32>(1u, 4294967295u, 83653u), 42575u), Struct_1(vec3<f32>(331f, -1519f, -1122f), vec4<i32>(20682i, -48095i, 20376i, i32(-2147483648)), 1595f, vec3<u32>(59556u, 12887u, 0u), 0u));

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> f32 {
    return 950f;
}

fn func_4(arg_0: f32) -> bool {
    global4 = vec3<bool>(all(vec2<bool>(true, !any(vec4<bool>(true, false, global4.x, global4.x)))), firstTrailingBit(firstTrailingBit(select(u_input.c, u_input.b, global4.x))) >= -_wgslsmith_sub_i32(_wgslsmith_sub_i32(-15325i, 1i), -2147483647i), !(any(vec4<bool>(global4.x, global4.x, global4.x, true)) || (all(vec3<bool>(false, true, true)) || any(vec2<bool>(true, false)))));
    global3 = array<Struct_1, 7>();
    global4 = !(!(!vec3<bool>(global4.x, false, !global4.x)));
    let var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_0)))), global0.x, -1075f), -firstLeadingBit(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.b)) << (vec4<u32>(select(u_input.a, 0u, false), u_input.e, u_input.e, ~u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(arg_0 - arg_0), vec3<u32>(_wgslsmith_div_u32(1u, 54187u) & ~u_input.d, u_input.a, (u_input.a | u_input.e) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, u_input.d), vec4<u32>(1u, 40327u, u_input.e, 4294967295u))), u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global2[_wgslsmith_index_u32(u_input.a, 25u)])))), ~vec4<i32>(-33412i, reverseBits(u_input.c), _wgslsmith_clamp_i32(u_input.c, u_input.c, -61386i), 34228i), -1747f, min(vec3<u32>(0u << (u_input.a % 32u), abs(12397u), _wgslsmith_div_u32(u_input.d, 1u)), abs(vec3<u32>(u_input.e, 53062u, u_input.e))), ~(_wgslsmith_clamp_u32(u_input.d, u_input.a, 1u) ^ 12468u)), global3[_wgslsmith_index_u32(8155u, 7u)], max(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.e, 0u) >> (vec3<u32>(u_input.d, u_input.e, 16973u) % vec3<u32>(32u)), ~vec3<u32>(1u, 4294967295u, 7365u))), u_input.e));
    var var_1 = var_0.b.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-392f)))), 1379f, false)) - arg_0) <= arg_0;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: i32) -> u32 {
    global1 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-1000f)), _wgslsmith_f_op_f32(trunc(-1788f))) * _wgslsmith_f_op_f32(abs(arg_0))))));
    var var_0 = arg_1.x;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1197f * arg_0)) - vec3<f32>(_wgslsmith_f_op_f32(ceil(598f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1006f))), vec4<i32>((21167i >> (0u % 32u)) >> (firstLeadingBit(4294967295u) % 32u), ~min(2147483647i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_2, arg_2, arg_2) ^ vec4<i32>(-2147483647i, -1i, 16209i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, u_input.b, arg_2, -2147483647i), vec4<i32>(arg_2, 1i, 26968i, arg_2))), i32(-1i) * -9019i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 708f))), _wgslsmith_sub_vec3_u32(vec3<u32>(~0u, u_input.d, u_input.a), vec3<u32>(u_input.a, 1u, 74307u) ^ ~vec3<u32>(u_input.e, u_input.e, u_input.a)), ~_wgslsmith_mult_u32(85800u, u_input.a)), Struct_1(global2[_wgslsmith_index_u32(~(~(16163u << (u_input.d % 32u))), 25u)], vec4<i32>(-(arg_2 << (1u % 32u)), 45844i, 1i, arg_2), arg_0, _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(0u, 1175u, 0u)), ~(~vec3<u32>(0u, u_input.d, 4294967295u))), u_input.d), Struct_1(vec3<f32>(_wgslsmith_div_f32(-1213f, _wgslsmith_f_op_f32(-524f - 3110f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-881f))), arg_0), vec4<i32>(-1i) * -abs(vec4<i32>(23712i, -1i, arg_2, u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + arg_0), global0.x), ~vec3<u32>(4294967295u, min(u_input.e, 4294967295u), u_input.d), 48461u), 1u);
    let var_2 = arg_2;
    var var_3 = vec4<bool>(true, u_input.d < (var_1.d & 0u), all(!select(vec3<bool>(arg_1.x, false, true), vec3<bool>(true, true, true), true != global4.x)), !(any(!arg_1) || !(var_1.a.d.x < var_1.d)));
    return u_input.e;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = !all(!vec3<bool>(global4.x, global4.x, global4.x));
    let var_0 = Struct_2(Struct_1(arg_0.a, abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-38013i, arg_0.b.x, u_input.b, 3989i), arg_0.b, vec4<i32>(u_input.b, u_input.b, u_input.c, arg_0.b.x)) << (~vec4<u32>(4294967295u, 1u, 63986u, 92757u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(trunc(global0.x)))), vec3<u32>(func_2(_wgslsmith_f_op_f32(global0.x + global0.x), !vec4<bool>(false, true, global4.x, false), abs(-43123i)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), arg_0.d.xx), max(0u, u_input.d)), _wgslsmith_dot_vec2_u32(arg_0.d.xy, ~vec2<u32>(u_input.e, arg_0.e)) | u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global2[_wgslsmith_index_u32(22304u, 25u)])), arg_0.a, global4.x)), min(vec4<i32>(_wgslsmith_clamp_i32(u_input.c, -1i, 1i), firstLeadingBit(arg_0.b.x), _wgslsmith_div_i32(17193i, -7916i), u_input.c), arg_0.b), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(842f - global0.x)))), firstTrailingBit(countOneBits(vec3<u32>(u_input.e, 57782u, u_input.a))), u_input.e), global3[_wgslsmith_index_u32(~max(arg_0.e, ~abs(22453u)), 7u)], arg_0.d.x & select(_wgslsmith_div_u32(reverseBits(102355u), abs(arg_0.e)), 46715u, !(!global4.x)));
    global3 = array<Struct_1, 7>();
    var var_1 = var_0;
    var var_2 = Struct_2(arg_0, var_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-813f - -824f), -692f, global0.x)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.a.x)) - -1374f)), select(~(~vec3<u32>(3350u, arg_0.e, arg_0.e)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(13124u, 1u, 73835u), var_0.a.d, var_0.c.d)), ~5719u < var_0.d), 22776u), arg_0.d.x);
    return Struct_1(var_0.a.a, vec4<i32>(abs(var_1.c.b.x), 1i, select(3734i, ~1i, true), -1i), -490f, ~(~(~var_0.b.d)), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.e, ~max(var_0.d, 59243u)), _wgslsmith_sub_u32(var_2.d, 50130u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    global4 = !(!(!select(select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(false, global4.x, false), vec3<bool>(global4.x, global4.x, global4.x)), vec3<bool>(global4.x, global4.x, false), !vec3<bool>(global4.x, true, global4.x))));
    global2 = array<vec3<f32>, 25>();
    var var_0 = 67344i == arg_0.a.b.x;
    let var_1 = vec4<bool>(true, global4.x & (global4.x || (arg_0.b.b.x > u_input.b)), true, global4.x);
    let var_2 = vec2<i32>(~(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-42500i, u_input.b, u_input.b, arg_0.b.b.x), vec4<i32>(-5234i, arg_0.b.b.x, u_input.b, 2147483647i)), abs(arg_0.b.b.x)) | u_input.c), ~_wgslsmith_clamp_i32(-69359i, -1i, -reverseBits(arg_0.c.b.x)));
    return func_1(func_1(func_1(global3[_wgslsmith_index_u32(abs(u_input.d), 7u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(global3[_wgslsmith_index_u32(~20753u >> (_wgslsmith_mult_u32(3712u, u_input.d) % 32u), 7u)], func_1(global3[_wgslsmith_index_u32(33770u, 7u)]), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(21352u, 25u)], global2[_wgslsmith_index_u32(43195u, 25u)])), ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), 1f, max(vec3<u32>(u_input.e, 58587u, u_input.d), vec3<u32>(1u, 1u, 15526u)), ~75079u)), 40788u), vec3<f32>(_wgslsmith_f_op_f32(-func_1(func_1(Struct_1(vec3<f32>(global0.x, -1262f, -788f), vec4<i32>(-23672i, u_input.b, u_input.c, -35666i), 230f, vec3<u32>(32919u, u_input.a, 0u), u_input.d))).c), -382f, _wgslsmith_f_op_f32(-global0.x)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))) * global0.x)));
    var var_2 = Struct_1(vec3<f32>(1394f, _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -960f)))), vec4<i32>(abs(56813i << (_wgslsmith_div_u32(u_input.a, var_0.e) % 32u)), u_input.b, _wgslsmith_clamp_i32(-(-1i | u_input.b), -18378i, _wgslsmith_clamp_i32(1i >> (0u % 32u), -58802i, firstTrailingBit(2147483647i))), u_input.c), _wgslsmith_f_op_f32(exp2(global0.x)), vec3<u32>(firstLeadingBit(u_input.e) | 18730u, firstLeadingBit(var_0.d.x & u_input.a), var_0.e) & vec3<u32>(min(_wgslsmith_sub_u32(var_0.e, u_input.d), abs(u_input.a)), 1301u, 4294967295u), (_wgslsmith_mod_u32(0u, func_5(Struct_2(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(var_0.d.x, 7u)], Struct_1(vec3<f32>(global0.x, var_0.c, var_0.a.x), var_0.b, 560f, vec3<u32>(var_0.d.x, 0u, u_input.a), 1u), var_0.d.x), vec3<f32>(-1079f, -164f, global0.x)).e) << (~min(17328u, u_input.a) % 32u)) & 4294967295u);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~var_0.d, vec3<u32>(5792u, var_0.e, 11312u)), abs(~var_2.d)), ~(~u_input.a)), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(442f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.c), -729f))))));
}

