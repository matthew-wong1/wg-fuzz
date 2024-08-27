struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(49332i, -37111i, -42546i), vec3<i32>(4209i, 30911i, 0i), vec3<i32>(-1i, -7196i, -6705i), vec3<i32>(18316i, 19035i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(3461i, 31780i, -1i), vec3<i32>(-1i, 8543i, -3582i), vec3<i32>(1i, 2147483647i, -27746i), vec3<i32>(i32(-2147483648), -39534i, 2147483647i), vec3<i32>(-36070i, 2147483647i, -16851i), vec3<i32>(i32(-2147483648), 12513i, 2147483647i), vec3<i32>(2147483647i, 10063i, 50949i), vec3<i32>(-18855i, i32(-2147483648), -55162i), vec3<i32>(-9621i, -17580i, -1i), vec3<i32>(32230i, 47866i, 2147483647i), vec3<i32>(-11563i, 18687i, -31352i), vec3<i32>(0i, 14621i, 0i), vec3<i32>(39952i, 1i, 42406i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(i32(-2147483648), -25450i, -11619i), vec3<i32>(2147483647i, i32(-2147483648), 62122i), vec3<i32>(-7333i, -25252i, 2147483647i), vec3<i32>(17151i, i32(-2147483648), 0i), vec3<i32>(2147483647i, 34955i, i32(-2147483648)), vec3<i32>(3161i, -57373i, 19846i), vec3<i32>(i32(-2147483648), 63562i, 1i), vec3<i32>(-9921i, -39424i, -25444i), vec3<i32>(1i, 1i, 1i), vec3<i32>(-7720i, 20660i, 2147483647i), vec3<i32>(56843i, 58090i, 0i));

var<private> global1: Struct_3;

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(1i, 14384i, -1i), vec3<i32>(0i, 2147483647i, -19510i), vec3<i32>(-44816i, -12176i, -11592i), vec3<i32>(0i, -26011i, 45165i), vec3<i32>(-8823i, 34144i, -8558i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 1912i, -7081i), vec3<i32>(23208i, -1i, 35372i), vec3<i32>(-18975i, -1i, -1i), vec3<i32>(-17112i, 20967i, -1i), vec3<i32>(-1i, 32122i, 65294i), vec3<i32>(2147483647i, 14682i, -1i), vec3<i32>(26587i, i32(-2147483648), -1i), vec3<i32>(1i, -1i, 33007i), vec3<i32>(43150i, -1i, -17524i), vec3<i32>(8853i, 30989i, 1i), vec3<i32>(7896i, -1i, 1i), vec3<i32>(2147483647i, 20746i, i32(-2147483648)), vec3<i32>(-1i, 19488i, 44161i));

var<private> global3: array<i32, 20> = array<i32, 20>(-1i, 2147483647i, 2147483647i, -1i, -11748i, 7624i, -56768i, 1i, 1i, -17977i, -5641i, -1i, 1i, 15562i, 1i, i32(-2147483648), 27606i, -1i, -23823i, 2147483647i);

var<private> global4: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    global3 = array<i32, 20>();
    let var_0 = 15774i;
    global3 = array<i32, 20>();
    global2 = array<vec3<i32>, 19>();
    global3 = array<i32, 20>();
    return arg_3;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(-(u_input.a.x << (u_input.b.x % 32u)), 1i), global1.b.b, global1.b.d, global1.c.x));
    global4 = _wgslsmith_f_op_f32(-global1.c.x);
    let var_1 = global1.b;
    var var_2 = _wgslsmith_clamp_vec4_u32(global1.d, vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(var_1.a, u_input.b.x), ~0u), select(vec3<u32>(47772u, u_input.b.x, global1.b.b.b), global1.d.yyx & global1.d.yww, true && var_1.c)), abs(abs(~var_1.a)), ~reverseBits(abs(var_1.b.b))), vec4<u32>(5812u, ~63009u, ~firstTrailingBit(u_input.b.x), ~(~firstLeadingBit(54226u))));
    let var_3 = 0u;
    return !global1.b.c != true;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_4 {
    let var_0 = func_2();
    global2 = array<vec3<i32>, 19>();
    global2 = array<vec3<i32>, 19>();
    let var_1 = global1.c.x > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-389f * arg_0.x), _wgslsmith_f_op_f32(547f + arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(553f, -939f))))));
    let var_2 = Struct_2(~reverseBits(u_input.b.x), global1.a.b, !all(vec4<bool>(!var_1, false == global1.a.c, var_0, false)), Struct_1(vec4<i32>(global1.b.b.a.x, global1.b.d.a.x, u_input.a.x, -16356i), reverseBits(~1u) << (u_input.b.x % 32u)));
    return Struct_4(global1.b.d, global1.d.zzw, Struct_2(35893u, global1.a.d, !any(vec3<bool>(var_0, false, false)) || (1u == ~u_input.b.x), Struct_1(vec4<i32>(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 20u)], global1.b.d.a.x), -40848i, _wgslsmith_add_i32(-1i, 1i), global1.b.b.a.x), ~1u)), global1.b.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 20>();
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.c.x, global1.c.x, global1.c.x), vec3<f32>(global1.c.x, global1.c.x, 466f))), true))), vec3<u32>(27344u, global1.a.a, u_input.b.x));
    global1 = Struct_3(func_1(global1.c, ~firstLeadingBit(~global1.d.zyx)).c, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1631f, global1.c.x)), -205f, global1.c.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.a.b >> (21385u % 32u), 18371u & u_input.b.x), vec3<u32>(~global1.d.x, u_input.b.x, var_0.c.d.b), _wgslsmith_add_vec3_u32(max(var_0.b, global1.d.xyx), ~vec3<u32>(var_0.d, 0u, global1.a.a)))).c, global1.c, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, _wgslsmith_dot_vec2_u32(~var_0.b.xz, ~var_0.b.yz)), _wgslsmith_clamp_vec4_u32(select(abs(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 60109u)), ~global1.d, select(vec4<bool>(global1.b.c, var_0.c.c, global1.a.c, var_0.c.c), vec4<bool>(false, true, false, false), vec4<bool>(global1.a.c, var_0.c.c, global1.a.c, global1.a.c))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global1.d, global1.d), global1.d), vec4<u32>(1710u, ~1u, ~global1.b.d.b, 43366u))));
    global2 = array<vec3<i32>, 19>();
    let var_1 = var_0.c;
    var var_2 = var_0.c.d.b;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(640f, _wgslsmith_mod_u32(func_1(vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(abs(740f)), global1.c.x), vec3<u32>(~var_1.d.b, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 3468u, 21387u), global1.d))).d, ~var_1.a), -1426f, ~(~(~(u_input.b.x << (4294967295u % 32u)))));
}

