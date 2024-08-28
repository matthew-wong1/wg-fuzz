struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(0i, -16820i, 31492i, 34454i), vec4<i32>(1i, 25586i, i32(-2147483648), -4441i), vec4<i32>(2147483647i, 0i, -16016i, 10808i), vec4<i32>(-1i, i32(-2147483648), -42984i, 2147483647i), vec4<i32>(34325i, i32(-2147483648), -1i, 1246i), vec4<i32>(-1i, -995i, -37502i, 0i), vec4<i32>(1i, -11371i, -11060i, 1i), vec4<i32>(-1i, -16619i, -22128i, 0i), vec4<i32>(1i, 0i, 15493i, -1i), vec4<i32>(-55375i, -30742i, 2147483647i, 1i), vec4<i32>(-21534i, -27696i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, 17977i, -15403i, 17714i), vec4<i32>(-1i, -1i, 2147483647i, -9165i), vec4<i32>(5107i, 1i, 1i, 2147483647i), vec4<i32>(2147483647i, -29914i, -1i, i32(-2147483648)), vec4<i32>(56232i, 0i, 0i, 1i), vec4<i32>(0i, -1i, 0i, 5754i), vec4<i32>(-48012i, 1i, -1i, 15094i), vec4<i32>(2147483647i, 31160i, i32(-2147483648), 1i), vec4<i32>(1i, -32846i, 0i, 18107i), vec4<i32>(432i, -32338i, -1i, 26544i), vec4<i32>(-22094i, 2147483647i, 0i, -91905i), vec4<i32>(-69045i, 2147483647i, -34703i, 1i), vec4<i32>(41272i, -45577i, -37783i, 2147483647i), vec4<i32>(-1i, -81129i, -3593i, 0i), vec4<i32>(2147483647i, 1i, -23392i, 1i));

var<private> global1: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(i32(-2147483648), -52670i), vec2<i32>(25725i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(-61443i, -66678i), vec2<i32>(-20195i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(2959i, -6842i), vec2<i32>(i32(-2147483648), 38127i), vec2<i32>(25707i, 44770i), vec2<i32>(i32(-2147483648), -6946i), vec2<i32>(6546i, 22897i), vec2<i32>(1i, 1i), vec2<i32>(-13191i, 2147483647i), vec2<i32>(4781i, i32(-2147483648)), vec2<i32>(-14031i, 59044i), vec2<i32>(-26755i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(-26355i, 33738i), vec2<i32>(29569i, 29718i));

var<private> global2: Struct_1 = Struct_1(699f, vec2<bool>(false, true));

var<private> global3: array<Struct_2, 25>;

var<private> global4: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-1000f, 2065f, 909f, -820f), vec4<f32>(338f, 745f, -1000f, -2448f), vec4<f32>(-1252f, 620f, -229f, -528f), vec4<f32>(1686f, -335f, 916f, -1000f), vec4<f32>(1590f, 1467f, -1318f, 1197f), vec4<f32>(-792f, -199f, 995f, 1840f), vec4<f32>(-1536f, -567f, 1000f, -213f), vec4<f32>(697f, -1203f, -1521f, -973f), vec4<f32>(-1478f, -145f, -1623f, -601f), vec4<f32>(1025f, -2248f, 609f, -1121f), vec4<f32>(-942f, 965f, -1000f, 329f), vec4<f32>(331f, -600f, 652f, -1241f), vec4<f32>(184f, 551f, 2016f, 316f), vec4<f32>(1687f, -1124f, 704f, -371f), vec4<f32>(887f, 974f, -130f, -818f), vec4<f32>(473f, -340f, 363f, 2612f), vec4<f32>(956f, -1805f, 1089f, 972f), vec4<f32>(1000f, 122f, -683f, 1139f), vec4<f32>(-227f, 1000f, -268f, -1000f), vec4<f32>(543f, -976f, -1256f, -472f), vec4<f32>(-1199f, 393f, 225f, 897f), vec4<f32>(-1084f, 521f, 737f, -1000f), vec4<f32>(-215f, 646f, -1000f, -1341f), vec4<f32>(-1000f, -1665f, 918f, 2436f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> f32 {
    global3 = array<Struct_2, 25>();
    global3 = array<Struct_2, 25>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 25u)];
    let var_1 = global3[_wgslsmith_index_u32(~(~(1u ^ _wgslsmith_div_u32(var_0.a, var_0.a))) >> (1u % 32u), 25u)];
    global3 = array<Struct_2, 25>();
    return -1268f;
}

fn func_1(arg_0: i32) -> u32 {
    global2 = Struct_1(_wgslsmith_f_op_f32(func_2(true)), !vec2<bool>(global2.b.x, false));
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(u_input.b.xxx, ~vec3<u32>(u_input.b.x, 1u, u_input.a.x), !vec3<bool>(global2.b.x, global2.b.x, true)), u_input.b.xxy), u_input.b.x) & 72930u;
    var var_1 = u_input.b;
    global0 = array<vec4<i32>, 26>();
    let var_2 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(global2.a * -501f), global2.b), Struct_1(global2.a, select(global2.b, !select(global2.b, vec2<bool>(false, global2.b.x), global2.b.x), any(vec4<bool>(false, true, global2.b.x, global2.b.x)))));
    return select(0u, 14485u, true);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_1(-1168f, !global2.b);
    let var_1 = Struct_2(abs(u_input.a.x), Struct_1(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(trunc(arg_0.x))))), var_0.b), Struct_1(_wgslsmith_f_op_f32(sign(1013f)), vec2<bool>((global2.a <= 548f) | global2.b.x, abs(u_input.b.x) == 43888u)));
    global3 = array<Struct_2, 25>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_1.c.a) - 1239f))), var_0.b);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a - _wgslsmith_f_op_f32(-525f + var_2.a)))), !(!(!select(vec2<bool>(var_2.b.x, var_1.b.b.x), vec2<bool>(false, var_2.b.x), var_0.b.x))));
    return ~2100u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(1u, 25u)];
    let var_1 = 11367i & countOneBits(-u_input.c.x);
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(func_1(u_input.c.x), ~_wgslsmith_mod_u32(func_3(vec2<f32>(global2.a, 232f)), 0u), ~func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-861f, -1000f), vec2<f32>(203f, 512f), var_0.c.b))), u_input.b.x), u_input.b);
    var var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.b.wzz, vec3<u32>(u_input.a.x, reverseBits(u_input.a.x), u_input.a.x | u_input.a.x)), 25u)];
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a * -840f), _wgslsmith_f_op_f32(func_2(false))), _wgslsmith_f_op_f32(sign(949f)))), global2.a, var_3.c.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-760f - var_3.b.a), _wgslsmith_f_op_f32(abs(global2.a)), 1920f, _wgslsmith_div_f32(-556f, var_0.c.a)) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, var_0.c.a, var_0.c.a, var_0.b.a), vec4<f32>(global2.a, 500f, -435f, -894f)), vec4<f32>(-1498f, -357f, global2.a, var_0.c.a)))));
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.a))), vec2<bool>(false, all(!global2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_f_op_f32(-1056f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.b.a)), var_4.x)));
}

