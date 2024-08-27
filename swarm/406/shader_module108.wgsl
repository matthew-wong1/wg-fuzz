struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-1i, vec4<u32>(4524u, 4294967295u, 1u, 30642u), vec4<u32>(30069u, 21301u, 1u, 1u), vec2<f32>(413f, -471f)), Struct_1(31821i, vec4<u32>(0u, 4294967295u, 1u, 2512u), vec4<u32>(1u, 1u, 0u, 0u), vec2<f32>(-1000f, -359f)), Struct_1(i32(-2147483648), vec4<u32>(17050u, 1u, 12284u, 1u), vec4<u32>(0u, 77165u, 31935u, 40022u), vec2<f32>(1429f, -853f)), Struct_1(-14157i, vec4<u32>(1u, 5665u, 0u, 1u), vec4<u32>(0u, 9767u, 1u, 91861u), vec2<f32>(1697f, 699f)), Struct_1(1i, vec4<u32>(1u, 30265u, 4294967295u, 0u), vec4<u32>(64839u, 52598u, 4294967295u, 23806u), vec2<f32>(-136f, -622f)), Struct_1(-13355i, vec4<u32>(37317u, 0u, 26235u, 0u), vec4<u32>(4650u, 35032u, 14579u, 89655u), vec2<f32>(-634f, 493f)), Struct_1(31541i, vec4<u32>(0u, 17212u, 4294967295u, 44326u), vec4<u32>(1199u, 0u, 58462u, 22107u), vec2<f32>(516f, 1977f)), Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 88222u, 52244u, 38356u), vec4<u32>(0u, 13046u, 34694u, 44504u), vec2<f32>(827f, 1000f)), Struct_1(-30923i, vec4<u32>(53736u, 1u, 45586u, 37854u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec2<f32>(-774f, 163f)), Struct_1(7421i, vec4<u32>(1u, 13158u, 28947u, 0u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec2<f32>(-1000f, 1072f)), Struct_1(i32(-2147483648), vec4<u32>(31773u, 4294967295u, 69419u, 4294967295u), vec4<u32>(4294967295u, 22060u, 0u, 11441u), vec2<f32>(-596f, -237f)), Struct_1(0i, vec4<u32>(43090u, 16223u, 5221u, 43719u), vec4<u32>(4294967295u, 4294967295u, 9531u, 4294967295u), vec2<f32>(266f, 579f)), Struct_1(29085i, vec4<u32>(42335u, 11582u, 4294967295u, 6012u), vec4<u32>(10336u, 1u, 4294967295u, 23649u), vec2<f32>(-302f, -706f)), Struct_1(1i, vec4<u32>(46406u, 712u, 4294967295u, 25411u), vec4<u32>(4294967295u, 12602u, 25554u, 1u), vec2<f32>(1000f, -343f)), Struct_1(-9414i, vec4<u32>(1u, 27980u, 10737u, 25176u), vec4<u32>(14331u, 48801u, 4294967295u, 1u), vec2<f32>(-1000f, 801f)), Struct_1(i32(-2147483648), vec4<u32>(12798u, 12431u, 62630u, 62089u), vec4<u32>(0u, 36127u, 4294967295u, 0u), vec2<f32>(149f, -1222f)), Struct_1(-28177i, vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(0u, 10887u, 110342u, 11381u), vec2<f32>(-133f, -163f)));

var<private> global1: array<f32, 27>;

var<private> global2: Struct_4 = Struct_4(vec2<f32>(974f, 538f), -21272i, 8402u, -824f);

var<private> global3: array<vec3<bool>, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    var var_0 = !vec2<bool>(~(u_input.b.x & -33344i) < (_wgslsmith_add_i32(u_input.b.x, u_input.b.x) ^ u_input.b.x), true);
    let var_1 = vec4<bool>(true, var_0.x, true, all(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), !vec3<bool>(false, var_0.x, var_0.x))));
    let var_2 = 1405f;
    let var_3 = -1873f;
    global2 = Struct_4(arg_0.a, -8485i, 0u, 1592f);
    return global2.c >> (_wgslsmith_mod_u32(~firstTrailingBit(388u), 1u) % 32u);
}

fn func_2() -> Struct_4 {
    global2 = Struct_4(global2.a, 0i, ~_wgslsmith_mod_u32(global2.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.c, u_input.a.x), u_input.a), ~u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -925f));
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a)))), ~u_input.b.x, func_3(Struct_4(global2.a, ~countOneBits(u_input.b.x), ~_wgslsmith_mult_u32(global2.c, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d + 425f))), _wgslsmith_f_op_f32(sign(global2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(564f, _wgslsmith_f_op_f32(-323f - -570f), true)) - -609f));
    var var_0 = u_input.a;
    var var_1 = u_input.b;
    var var_2 = vec2<u32>(func_3(Struct_4(vec2<f32>(258f, global2.d), var_1.x, 36623u, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), _wgslsmith_f_op_f32(-global2.d)) << (u_input.c % 32u), u_input.c) & u_input.a.yx;
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(select(global2.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(floor(global2.a.x)))), true)), -1294f), -(~_wgslsmith_mod_i32(~(-54598i), reverseBits(-2147483647i))), global2.c, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(0u, 4294967295u)) >> (~35028u % 32u), 27u)]));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global2 = func_2();
    let var_0 = Struct_2(-u_input.b.ww, Struct_1(u_input.b.x, _wgslsmith_add_vec4_u32(max(max(vec4<u32>(1651u, global2.c, 0u, u_input.a.x), vec4<u32>(48619u, 149u, 4294967295u, 4294967295u)), vec4<u32>(4294967295u, 96081u, 31792u, 4294967295u) << (vec4<u32>(u_input.a.x, u_input.c, 1u, u_input.c) % vec4<u32>(32u))), vec4<u32>(~u_input.c, 4294967295u, max(u_input.c, global2.c), global2.c)), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global2.c, 53389u, u_input.c), vec4<u32>(4294967295u, 54742u, u_input.a.x, global2.c)), max(vec4<u32>(0u, 4294967295u, global2.c, 4294967295u) ^ vec4<u32>(0u, 3689u, 58462u, u_input.a.x), reverseBits(vec4<u32>(38768u, u_input.a.x, global2.c, global2.c)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.c, 27u)]), _wgslsmith_f_op_f32(1180f * global1[_wgslsmith_index_u32(u_input.c, 27u)]))))));
    global0 = array<Struct_1, 17>();
    return StorageBuffer(vec2<u32>(global2.c, ~u_input.c) | _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_0.b.c.yw ^ vec2<u32>(var_0.b.c.x, 4294967295u), vec2<u32>(4294967295u, 1u)), vec2<u32>(0u, var_0.b.b.x) & ~u_input.a.zy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(0u, 0u) & u_input.c), 27u)] > _wgslsmith_f_op_f32(exp2(global2.a.x)));
}

