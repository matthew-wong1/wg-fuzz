struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<f32>(205f, -566f, -1428f), 1i, 68034u, 0u));

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<f32>(-126f, 347f, 408f), -13685i, 65723u, 1u), Struct_3(vec3<f32>(397f, -756f, -918f), 2147483647i, 1906u, 35387u), Struct_3(vec3<f32>(1544f, -1037f, -755f), 0i, 2533u, 4294967295u), Struct_3(vec3<f32>(484f, 397f, -278f), i32(-2147483648), 4294967295u, 1u), Struct_3(vec3<f32>(541f, -111f, -2016f), 39825i, 37284u, 0u), Struct_3(vec3<f32>(-453f, 635f, 847f), -23228i, 57644u, 25089u), Struct_3(vec3<f32>(1415f, -417f, 2660f), 12854i, 1u, 0u), Struct_3(vec3<f32>(-194f, -187f, 231f), 0i, 14971u, 0u), Struct_3(vec3<f32>(1000f, -1187f, 250f), 2147483647i, 26360u, 4294967295u), Struct_3(vec3<f32>(428f, -1053f, -500f), 1i, 4294967295u, 28992u), Struct_3(vec3<f32>(270f, -1000f, -152f), 32849i, 4294967295u, 1u), Struct_3(vec3<f32>(311f, -1308f, 517f), i32(-2147483648), 34348u, 35233u));

var<private> global2: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(Struct_3(vec3<f32>(320f, -248f, -607f), -9909i, 14246u, 9349u), Struct_1(vec3<bool>(true, true, false), 0u, true, 1u), vec3<f32>(-152f, -2026f, 1211f), Struct_1(vec3<bool>(true, false, false), 0u, false, 9294u), vec2<f32>(1421f, -518f)), Struct_4(Struct_3(vec3<f32>(451f, -1303f, 486f), 21336i, 1u, 38191u), Struct_1(vec3<bool>(true, false, true), 56671u, false, 1u), vec3<f32>(-547f, 607f, 1000f), Struct_1(vec3<bool>(false, false, false), 9449u, true, 1u), vec2<f32>(-282f, 1094f)), Struct_4(Struct_3(vec3<f32>(-1276f, 636f, -362f), -14373i, 0u, 4294967295u), Struct_1(vec3<bool>(true, false, true), 8351u, true, 28062u), vec3<f32>(-919f, 1395f, -114f), Struct_1(vec3<bool>(true, true, false), 1u, true, 87118u), vec2<f32>(-611f, 682f)), Struct_4(Struct_3(vec3<f32>(-139f, -2060f, 509f), -74200i, 1u, 49697u), Struct_1(vec3<bool>(false, false, false), 29379u, false, 4294967295u), vec3<f32>(-1576f, 1046f, 464f), Struct_1(vec3<bool>(false, false, false), 1u, true, 17498u), vec2<f32>(225f, 1804f)), Struct_4(Struct_3(vec3<f32>(-1032f, -1342f, -1000f), 1i, 39449u, 1u), Struct_1(vec3<bool>(false, false, false), 25691u, false, 14310u), vec3<f32>(-1166f, 785f, -1124f), Struct_1(vec3<bool>(false, true, false), 70303u, false, 10435u), vec2<f32>(-164f, -868f)));

var<private> global3: vec3<u32> = vec3<u32>(40602u, 0u, 1u);

var<private> global4: Struct_4 = Struct_4(Struct_3(vec3<f32>(-1212f, -1174f, 1248f), -36769i, 0u, 23561u), Struct_1(vec3<bool>(true, false, false), 15757u, true, 50790u), vec3<f32>(-562f, 793f, 1010f), Struct_1(vec3<bool>(true, true, true), 32531u, true, 4294967295u), vec2<f32>(-1234f, 597f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    global2 = array<Struct_4, 5>();
    return -111f;
}

fn func_3() -> u32 {
    return 20371u & (~global3.x << (select(u_input.a.x, _wgslsmith_sub_u32(4294967295u, global3.x), !(global4.b.a.x & false)) % 32u));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> StorageBuffer {
    let var_0 = Struct_3(arg_1.c, global4.a.b, 12960u, func_3());
    global1 = array<Struct_3, 12>();
    var var_1 = 15378i;
    let var_2 = _wgslsmith_dot_vec2_u32(max(_wgslsmith_div_vec2_u32(global3.xx, vec2<u32>(global3.x, 0u)), global3.yx) >> (~vec2<u32>(var_0.d, 4294967295u) % vec2<u32>(32u)), min(u_input.a ^ ~global3.xz, countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), global3.yy)))) >= abs(43846u);
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(0u, u_input.a.x, 4294967295u), global3.x), 5u)];
    return StorageBuffer(global4.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.e.x, global4.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.e.x) * -639f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(275f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -896f))))) - vec4<f32>(222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e.x)) - -213f), 1830f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(global4.a.a.x, 877f), _wgslsmith_f_op_f32(global4.c.x - global4.e.x))))));
    global2 = array<Struct_4, 5>();
    var var_1 = ~(~_wgslsmith_mult_u32(~min(0u, 4294967295u), _wgslsmith_clamp_u32(global4.a.c, 21198u, ~global3.x)));
    var var_2 = vec3<f32>(160f, global4.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f)) - _wgslsmith_f_op_f32(func_1(vec3<bool>(!global4.b.c, false, !global4.d.a.x), global4.e.x))));
    global1 = array<Struct_3, 12>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(978f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), var_0.x));
    let var_4 = 0i;
    global2 = array<Struct_4, 5>();
    global0 = array<Struct_3, 1>();
    let x = u_input.a;
    s_output = func_2(var_4, global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(~global4.d.b, ~global4.a.c, u_input.a.x), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.a.x, 75589u), ~vec3<u32>(global4.a.d, u_input.a.x, 4294967295u))), u_input.a.x), 5u)], var_2.x);
}

