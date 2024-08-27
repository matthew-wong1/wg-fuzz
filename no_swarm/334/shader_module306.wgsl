struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(vec3<f32>(-1341f, -1118f, -754f), 2147483647i), Struct_2(vec4<bool>(false, false, true, false), i32(-2147483648)), 1u, -1000f, -277f), Struct_3(Struct_1(vec3<f32>(209f, -2716f, -613f), 1i), Struct_2(vec4<bool>(true, false, false, false), 0i), 31217u, 683f, -984f), Struct_3(Struct_1(vec3<f32>(-844f, -531f, 1000f), 1i), Struct_2(vec4<bool>(true, true, false, true), i32(-2147483648)), 0u, 1172f, 1582f), Struct_3(Struct_1(vec3<f32>(1479f, -1215f, -252f), 0i), Struct_2(vec4<bool>(true, true, false, true), -19498i), 0u, -1000f, -256f), Struct_3(Struct_1(vec3<f32>(1041f, 251f, -1094f), 0i), Struct_2(vec4<bool>(true, false, true, true), -3511i), 4294967295u, 450f, -1140f), Struct_3(Struct_1(vec3<f32>(263f, -888f, 640f), -7117i), Struct_2(vec4<bool>(false, false, false, true), -65248i), 72954u, -111f, 830f), Struct_3(Struct_1(vec3<f32>(-310f, -131f, 1299f), 24097i), Struct_2(vec4<bool>(false, true, false, true), -14054i), 1u, -1166f, -1712f), Struct_3(Struct_1(vec3<f32>(-760f, 252f, 399f), 0i), Struct_2(vec4<bool>(false, false, false, false), -1i), 31421u, -1446f, -784f), Struct_3(Struct_1(vec3<f32>(311f, -1000f, -616f), 0i), Struct_2(vec4<bool>(true, false, false, true), 2147483647i), 4294967295u, -457f, -540f), Struct_3(Struct_1(vec3<f32>(495f, -1656f, 2074f), i32(-2147483648)), Struct_2(vec4<bool>(true, false, true, false), 1i), 4698u, -329f, -1113f), Struct_3(Struct_1(vec3<f32>(-1086f, 1650f, -138f), -4438i), Struct_2(vec4<bool>(true, false, true, false), 0i), 0u, 394f, -419f), Struct_3(Struct_1(vec3<f32>(744f, -508f, -748f), -41346i), Struct_2(vec4<bool>(true, true, false, true), -55560i), 1u, -224f, -1318f), Struct_3(Struct_1(vec3<f32>(2240f, 188f, 1000f), -18245i), Struct_2(vec4<bool>(true, false, true, true), -1i), 4294967295u, -559f, 1717f), Struct_3(Struct_1(vec3<f32>(1718f, -199f, 323f), -30412i), Struct_2(vec4<bool>(false, true, false, false), -58819i), 4294967295u, 265f, -392f), Struct_3(Struct_1(vec3<f32>(1152f, 1137f, -2536f), -32186i), Struct_2(vec4<bool>(true, false, false, false), 19615i), 11657u, 226f, -802f));

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(vec3<f32>(1117f, 1000f, 121f), -1i), Struct_2(vec4<bool>(false, true, true, true), -8896i), 1u, 1000f, 604f), Struct_3(Struct_1(vec3<f32>(-264f, 238f, 2281f), 0i), Struct_2(vec4<bool>(false, true, false, false), 11569i), 8599u, -1753f, 440f), Struct_3(Struct_1(vec3<f32>(-529f, -797f, 1000f), -3475i), Struct_2(vec4<bool>(true, true, false, false), -1i), 21717u, -524f, 1000f), Struct_3(Struct_1(vec3<f32>(-1130f, -878f, -985f), i32(-2147483648)), Struct_2(vec4<bool>(true, true, true, true), 5885i), 0u, -1150f, 120f), Struct_3(Struct_1(vec3<f32>(415f, 278f, 364f), 1i), Struct_2(vec4<bool>(true, true, true, true), -36582i), 48158u, -1000f, -1744f), Struct_3(Struct_1(vec3<f32>(138f, -2568f, -957f), 0i), Struct_2(vec4<bool>(true, true, false, false), i32(-2147483648)), 94093u, 206f, -2034f), Struct_3(Struct_1(vec3<f32>(-1283f, 1130f, 1371f), 0i), Struct_2(vec4<bool>(true, false, false, false), -10267i), 51489u, 688f, -499f), Struct_3(Struct_1(vec3<f32>(1000f, 335f, -435f), -1i), Struct_2(vec4<bool>(true, true, false, true), 2147483647i), 0u, 107f, 1000f), Struct_3(Struct_1(vec3<f32>(2750f, -253f, 1290f), 1865i), Struct_2(vec4<bool>(false, false, false, true), 27179i), 66131u, 1530f, 2066f), Struct_3(Struct_1(vec3<f32>(450f, 392f, 669f), 14934i), Struct_2(vec4<bool>(false, true, false, false), 2147483647i), 5308u, -375f, 366f), Struct_3(Struct_1(vec3<f32>(-1008f, 144f, 465f), -11466i), Struct_2(vec4<bool>(true, true, true, true), 44811i), 1u, 191f, -935f), Struct_3(Struct_1(vec3<f32>(-1237f, 1000f, -1000f), i32(-2147483648)), Struct_2(vec4<bool>(false, true, true, false), 33913i), 20792u, -1351f, -505f));

var<private> global3: array<f32, 3>;

var<private> global4: Struct_2 = Struct_2(vec4<bool>(false, false, true, true), 20356i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<bool> {
    global1 = array<Struct_3, 15>();
    global1 = array<Struct_3, 15>();
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(27952u, 1u, global0.c, u_input.a.x), ~(vec4<u32>(u_input.a.x, 49800u, 30375u, 19743u) ^ u_input.a)) | u_input.a, vec4<u32>(global0.c, u_input.a.x, 33533u, 105709u));
    let var_1 = global0.a;
    let var_2 = vec4<u32>(_wgslsmith_div_u32(1u, 14050u), 0u, 24449u, 1u);
    return global0.b.a;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(select(select(arg_1.a, vec4<bool>(true, global4.a.x, true, true), !select(global4.a, arg_1.a, true)), vec4<bool>(!(!global4.a.x), true, true, true), all(vec3<bool>(global0.b.a.x, false, global0.b.a.x))), ~7510i);
    var_0 = Struct_2(!vec4<bool>(global4.a.x, all(vec3<bool>(arg_1.a.x, global4.a.x, global0.b.a.x)), global0.b.a.x, (global0.a.b | 2147483647i) < -24607i), var_0.b);
    var var_1 = vec4<i32>(countOneBits(u_input.b.x), arg_1.b, -(~(i32(-1i) * -7704i)), -1i);
    var_1 = -vec4<i32>(_wgslsmith_add_i32(global4.b, _wgslsmith_div_i32(~1095i, ~global4.b)), ~u_input.b.x, 1i, arg_1.b);
    var_0 = Struct_2(func_3(), -_wgslsmith_mult_i32(countOneBits(-global4.b), ~(~global0.b.b)));
    return Struct_2(select(arg_1.a, global4.a, global0.b.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(~global4.b, _wgslsmith_mult_i32(var_1.x, global0.a.b ^ -2147483647i)), select(~_wgslsmith_div_vec2_i32(var_1.zy, var_1.xy), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b, global0.a.b), u_input.b), vec2<bool>(true, any(global0.b.a)))));
}

fn func_1() -> StorageBuffer {
    global4 = func_2(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_2(global4.a, global0.b.b));
    let var_0 = !global4.a.x;
    global4 = global0.b;
    global0 = global2[_wgslsmith_index_u32(34u, 12u)];
    var var_1 = global1[_wgslsmith_index_u32(0u, 15u)];
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_1.a.a.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(487f, 530f), var_1.a.a.xz, var_1.b.a.xw)))), var_1.b.a.xy)), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(35417u, global0.c), u_input.a.x, var_1.d < global3[_wgslsmith_index_u32(~global0.c, 3u)]), 3u)])), u_input.a.wyw, -464f, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 15>();
    let var_0 = Struct_1(global0.a.a, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(global0.a.b, -13979i, 0i)), vec3<i32>(global0.a.b, u_input.b.x, global4.b) << (u_input.a.yyw % vec3<u32>(32u))), -vec3<i32>(min(global4.b, global0.a.b), _wgslsmith_div_i32(-1i, 13934i), global4.b)));
    var var_1 = ~abs(reverseBits(global0.c));
    let var_2 = _wgslsmith_f_op_f32(-925f * 1000f);
    global1 = array<Struct_3, 15>();
    global3 = array<f32, 3>();
    let x = u_input.a;
    s_output = func_1();
}

