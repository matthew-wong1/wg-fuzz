struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_1(vec2<bool>(true, true), 2147483647i, -3116i, 2920i, 4294967295u), vec3<bool>(false, true, false), 8788i, Struct_3(vec2<i32>(20484i, 26846i), Struct_2(vec2<u32>(28056u, 15780u), 74431u)), 18373u), Struct_4(Struct_1(vec2<bool>(true, true), -1i, 19026i, -1i, 55796u), vec3<bool>(false, false, true), -10636i, Struct_3(vec2<i32>(42828i, -29084i), Struct_2(vec2<u32>(4294967295u, 4294967295u), 106693u)), 24097u), Struct_4(Struct_1(vec2<bool>(true, true), -4781i, 1i, 0i, 1u), vec3<bool>(true, false, true), -12855i, Struct_3(vec2<i32>(9715i, 2147483647i), Struct_2(vec2<u32>(25767u, 42937u), 0u)), 4294967295u), Struct_4(Struct_1(vec2<bool>(false, false), 2147483647i, -14032i, -9725i, 4294967295u), vec3<bool>(false, true, true), 2147483647i, Struct_3(vec2<i32>(i32(-2147483648), 25963i), Struct_2(vec2<u32>(39537u, 13146u), 1u)), 0u), Struct_4(Struct_1(vec2<bool>(false, true), 2147483647i, -1i, 1i, 0u), vec3<bool>(true, true, true), 2147483647i, Struct_3(vec2<i32>(i32(-2147483648), -1i), Struct_2(vec2<u32>(0u, 29011u), 1u)), 4294967295u), Struct_4(Struct_1(vec2<bool>(false, false), -1i, 0i, -6553i, 2373u), vec3<bool>(false, true, true), 2147483647i, Struct_3(vec2<i32>(17617i, -25768i), Struct_2(vec2<u32>(1u, 4294967295u), 1u)), 3800u), Struct_4(Struct_1(vec2<bool>(false, true), 8621i, 0i, 4164i, 4294967295u), vec3<bool>(true, true, true), 26277i, Struct_3(vec2<i32>(12042i, 0i), Struct_2(vec2<u32>(4294967295u, 26746u), 13847u)), 18257u), Struct_4(Struct_1(vec2<bool>(false, true), i32(-2147483648), 0i, 0i, 42458u), vec3<bool>(true, false, true), -69675i, Struct_3(vec2<i32>(70067i, i32(-2147483648)), Struct_2(vec2<u32>(1u, 4294967295u), 28006u)), 1u), Struct_4(Struct_1(vec2<bool>(false, false), 0i, 20801i, -1i, 1u), vec3<bool>(true, false, true), -5513i, Struct_3(vec2<i32>(-26506i, 596i), Struct_2(vec2<u32>(29618u, 31243u), 60478u)), 46355u), Struct_4(Struct_1(vec2<bool>(true, false), 10240i, 31452i, 34126i, 38355u), vec3<bool>(false, false, false), 2147483647i, Struct_3(vec2<i32>(-57774i, 2147483647i), Struct_2(vec2<u32>(0u, 4294967295u), 67971u)), 0u), Struct_4(Struct_1(vec2<bool>(false, true), 0i, 20267i, -23798i, 20784u), vec3<bool>(false, false, true), 2147483647i, Struct_3(vec2<i32>(-30451i, -36905i), Struct_2(vec2<u32>(19191u, 0u), 1u)), 19913u), Struct_4(Struct_1(vec2<bool>(false, false), 0i, -69209i, -16972i, 4294967295u), vec3<bool>(true, true, true), -23094i, Struct_3(vec2<i32>(-1i, 1i), Struct_2(vec2<u32>(1u, 152898u), 93727u)), 1u), Struct_4(Struct_1(vec2<bool>(true, false), 1i, -1i, 16733i, 54630u), vec3<bool>(false, true, true), -8025i, Struct_3(vec2<i32>(-42159i, 52358i), Struct_2(vec2<u32>(1u, 4294967295u), 28352u)), 133004u), Struct_4(Struct_1(vec2<bool>(false, true), 52527i, 2147483647i, -15332i, 1u), vec3<bool>(false, false, false), 2147483647i, Struct_3(vec2<i32>(30142i, 0i), Struct_2(vec2<u32>(4294967295u, 40723u), 0u)), 17759u), Struct_4(Struct_1(vec2<bool>(true, false), 60363i, -1i, 26923i, 4294967295u), vec3<bool>(false, true, true), -1i, Struct_3(vec2<i32>(97701i, -22785i), Struct_2(vec2<u32>(28681u, 27355u), 6876u)), 4294967295u), Struct_4(Struct_1(vec2<bool>(false, true), -78716i, 22807i, 2147483647i, 105731u), vec3<bool>(true, false, true), -12883i, Struct_3(vec2<i32>(2147483647i, 12i), Struct_2(vec2<u32>(0u, 24466u), 0u)), 5888u), Struct_4(Struct_1(vec2<bool>(false, false), 0i, i32(-2147483648), 1i, 19370u), vec3<bool>(true, false, false), 0i, Struct_3(vec2<i32>(53451i, 2147483647i), Struct_2(vec2<u32>(2202u, 39682u), 1u)), 4294967295u), Struct_4(Struct_1(vec2<bool>(true, true), 2147483647i, i32(-2147483648), -5785i, 36219u), vec3<bool>(true, true, true), i32(-2147483648), Struct_3(vec2<i32>(-1i, 1i), Struct_2(vec2<u32>(14857u, 4294967295u), 17255u)), 0u), Struct_4(Struct_1(vec2<bool>(true, true), -20141i, -2471i, 2147483647i, 0u), vec3<bool>(true, true, true), 39451i, Struct_3(vec2<i32>(1i, -37750i), Struct_2(vec2<u32>(0u, 4294967295u), 88755u)), 3684u), Struct_4(Struct_1(vec2<bool>(true, true), -1i, 2147483647i, 2147483647i, 1u), vec3<bool>(false, true, false), 7220i, Struct_3(vec2<i32>(1i, -1i), Struct_2(vec2<u32>(4294967295u, 4294967295u), 0u)), 78409u), Struct_4(Struct_1(vec2<bool>(true, false), 101720i, 2147483647i, 46312i, 54894u), vec3<bool>(true, true, false), 0i, Struct_3(vec2<i32>(i32(-2147483648), 2147483647i), Struct_2(vec2<u32>(1u, 7332u), 38285u)), 0u), Struct_4(Struct_1(vec2<bool>(false, true), i32(-2147483648), 2147483647i, -19624i, 68117u), vec3<bool>(false, false, false), -1i, Struct_3(vec2<i32>(-1i, 2147483647i), Struct_2(vec2<u32>(1u, 3269u), 1u)), 1u), Struct_4(Struct_1(vec2<bool>(false, true), -61023i, 1i, 1i, 4294967295u), vec3<bool>(true, true, false), 22245i, Struct_3(vec2<i32>(2147483647i, -18399i), Struct_2(vec2<u32>(0u, 0u), 59513u)), 1u), Struct_4(Struct_1(vec2<bool>(false, false), 2147483647i, 0i, 2147483647i, 0u), vec3<bool>(true, true, true), 0i, Struct_3(vec2<i32>(0i, -6138i), Struct_2(vec2<u32>(1240u, 20320u), 4294967295u)), 21062u), Struct_4(Struct_1(vec2<bool>(true, false), 0i, -17073i, -1i, 68630u), vec3<bool>(false, true, true), 2147483647i, Struct_3(vec2<i32>(0i, 22491i), Struct_2(vec2<u32>(50136u, 21514u), 45464u)), 82183u), Struct_4(Struct_1(vec2<bool>(true, true), 3086i, 2147483647i, 2147483647i, 4294967295u), vec3<bool>(false, false, true), 0i, Struct_3(vec2<i32>(-16039i, 1i), Struct_2(vec2<u32>(0u, 4294967295u), 4294967295u)), 9207u), Struct_4(Struct_1(vec2<bool>(true, true), 57314i, -44921i, -13912i, 4294967295u), vec3<bool>(false, true, false), 2147483647i, Struct_3(vec2<i32>(30809i, 38929i), Struct_2(vec2<u32>(0u, 4294967295u), 1u)), 0u), Struct_4(Struct_1(vec2<bool>(false, false), -1i, -47660i, i32(-2147483648), 1483u), vec3<bool>(true, false, true), 12230i, Struct_3(vec2<i32>(30066i, 53839i), Struct_2(vec2<u32>(0u, 23971u), 60386u)), 22198u));

var<private> global1: f32 = -688f;

var<private> global2: Struct_5;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_5(global2.a, global2.b, max(vec3<i32>(global2.c.x, global2.c.x, global2.c.x), global2.c), vec4<f32>(-163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - global2.d.x)), _wgslsmith_f_op_f32(global2.d.x + 326f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b + 242f)))))), vec3<bool>(true, false, !(max(11708i, 0i) != _wgslsmith_div_i32(u_input.c, u_input.c))));
    let var_1 = var_0.d.x;
    global0 = array<Struct_4, 28>();
    global1 = _wgslsmith_f_op_f32(-1302f + global2.d.x);
    var var_2 = any(vec3<bool>(true, ~(var_0.a.a.x & 4970u) < (_wgslsmith_mod_u32(11992u, u_input.b.x) >> ((var_0.a.b & u_input.b.x) % 32u)), false));
    return var_0.c.yx >> (countOneBits(global2.a.a) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: bool) -> vec3<i32> {
    var var_0 = Struct_4(arg_0.a, vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-625f, global2.d.x), _wgslsmith_f_op_f32(global2.d.x + global2.d.x))) <= _wgslsmith_f_op_f32(global2.d.x + global2.b), global2.e.x, arg_0.a.a.x), -2147483647i, Struct_3(select(~select(u_input.d.yy, global2.c.zz, true), func_3(arg_0.b) >> (u_input.b.zx % vec2<u32>(32u)), !arg_2.xy), global2.a), ~_wgslsmith_div_u32(0u ^ ~u_input.b.x, 4294967295u));
    let var_1 = var_0.a.a.x;
    global1 = _wgslsmith_div_f32(-360f, global2.b);
    global2 = Struct_5(Struct_2(vec2<u32>(29973u, 4294967295u), arg_0.e), global2.d.x, _wgslsmith_div_vec3_i32(~vec3<i32>(-6063i, 2147483647i, 34916i), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.c.x, -39489i, -1i), global2.c)) ^ ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c.x, 25119i), vec2<i32>(global2.c.x, -538i)), -1i, -global2.c.x), global2.d, arg_2);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.d.x, _wgslsmith_f_op_f32(-1210f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b * global2.d.x), _wgslsmith_f_op_f32(sign(global2.b)), global2.e.x | var_0.a.a.x))))));
    return -abs(firstTrailingBit(~min(vec3<i32>(0i, arg_0.a.c, 1i), vec3<i32>(2147483647i, 0i, 4287i))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>) -> f32 {
    let var_0 = arg_2;
    global2 = Struct_5(global2.a, 380f, ~(~func_2(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], arg_1.b, global2.e, global2.e.x)) & var_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(global2.d)), _wgslsmith_f_op_vec4_f32(round(global2.d)), !vec4<bool>(true, global2.e.x, global2.e.x, global2.e.x))) - global2.d), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global2.d)))))), vec3<bool>(!all(select(vec4<bool>(global2.e.x, false, true, global2.e.x), vec4<bool>(true, true, global2.e.x, false), global2.e.x)), false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.d.x), global2.b)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.b * global2.b)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x));
    global0 = array<Struct_4, 28>();
    let var_2 = arg_1;
    return 1094f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    var var_0 = 37786u;
    var var_1 = global2.b;
    global0 = array<Struct_4, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(global2.a.a.x, 4294967295u << (~u_input.a % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(max(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - 1773f) - _wgslsmith_f_op_f32(func_1(u_input.a, Struct_3(vec2<i32>(global2.c.x, u_input.c), global2.a), vec3<i32>(global2.c.x, 514i, global2.c.x)))))), -649f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.d.x, global2.d.x)))))));
}

