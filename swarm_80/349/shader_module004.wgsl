struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-29608i, 1i, -1i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(-4114i, 2147483647i, 0i), vec3<i32>(0i, 1i, 8642i), vec3<i32>(40014i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, -6429i), vec3<i32>(i32(-2147483648), -32720i, 13i), vec3<i32>(-34697i, 20081i, 25617i), vec3<i32>(1i, i32(-2147483648), 0i));

var<private> global1: Struct_5;

var<private> global2: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(23672u, 1u), vec2<u32>(4294967295u, 3047u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(53174u, 0u), vec2<u32>(4294967295u, 8134u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33114u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4424u, 17264u), vec2<u32>(53037u, 0u), vec2<u32>(1u, 1u), vec2<u32>(57914u, 58916u), vec2<u32>(10383u, 80495u), vec2<u32>(12396u, 61863u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4579u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(8968u, 38373u), vec2<u32>(6554u, 1u), vec2<u32>(37487u, 1u), vec2<u32>(33685u, 1u), vec2<u32>(4294967295u, 12994u), vec2<u32>(30415u, 4294967295u), vec2<u32>(87494u, 11214u), vec2<u32>(4294967295u, 30103u), vec2<u32>(28378u, 12161u));

var<private> global3: array<Struct_5, 19>;

var<private> global4: array<vec4<bool>, 27>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f - _wgslsmith_f_op_f32(-global1.a.a.d)) - -289f)), true, max(_wgslsmith_mult_u32(50107u | arg_0, 4294967295u), global1.a.b.x));
    var var_1 = var_0.c;
    var var_2 = arg_2;
    let var_3 = vec3<i32>(reverseBits(-1i) & ~global1.a.a.b, global1.a.a.b, ~global1.a.a.b);
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1929f) + var_0.a.a))), abs(u_input.b.x), _wgslsmith_mod_vec3_u32(min(~abs(global1.a.a.c), reverseBits(vec3<u32>(73982u, global1.a.a.c.x, 3214u))), _wgslsmith_div_vec3_u32(global1.a.a.c & vec3<u32>(arg_2.c, arg_0, var_2.c), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.a.e, 2787u, 0u), vec3<u32>(var_2.c, global1.a.a.e, arg_0))) ^ select(vec3<u32>(0u, global1.a.a.c.x, var_2.c), ~global1.a.a.c, vec3<bool>(var_2.b, arg_2.b, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(541f))))))), 1u);
    return _wgslsmith_clamp_u32(abs(global1.a.b.x), 1u, abs(37221u) & global1.a.a.e);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(global1.a.a, ~(~global2[_wgslsmith_index_u32(reverseBits(func_3(54797u, global1.a.a.a, Struct_2(Struct_1(-1000f), false, global1.a.a.e))), 28u)]));
    global0 = array<vec3<i32>, 9>();
    global1 = global3[_wgslsmith_index_u32(global1.a.b.x, 19u)];
    global2 = array<vec2<u32>, 28>();
    let var_1 = global2[_wgslsmith_index_u32(~global1.a.a.c.x, 28u)];
    return Struct_4(global1.a.a, ~(min(var_0.b, var_0.b >> (vec2<u32>(63141u, 1u) % vec2<u32>(32u))) | global2[_wgslsmith_index_u32(global1.a.a.e, 28u)]));
}

fn func_1() -> StorageBuffer {
    var var_0 = 828f;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global1.a.a.a.a, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global1.a.a.d, -1032f, true)), -1382f, true)), 133f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-630f, global1.a.a.d, global1.a.a.d), vec3<f32>(-1000f, 1000f, -1274f))), _wgslsmith_div_vec3_f32(vec3<f32>(234f, global1.a.a.a.a, global1.a.a.a.a), vec3<f32>(-1149f, 765f, -2211f))))))));
    global1 = Struct_5(func_2());
    global3 = array<Struct_5, 19>();
    global0 = array<vec3<i32>, 9>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.a.a.a, var_1.x, -3094f, global1.a.a.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, 2062f), vec4<f32>(global1.a.a.d, var_1.x, -1395f, var_1.x), global4[_wgslsmith_index_u32(7691u, 27u)])), !global4[_wgslsmith_index_u32(47922u, 27u)]))) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.a.a.a, _wgslsmith_f_op_f32(897f + 371f), _wgslsmith_f_op_f32(433f - var_1.x), var_1.x), vec4<f32>(-131f, 2247f, -311f, _wgslsmith_f_op_f32(abs(var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.a.a.c.x, global1.a.a.c.x) ^ abs(~(29894u | global1.a.b.x)), global1.a.b.x, 0u);
    global3 = array<Struct_5, 19>();
    global4 = array<vec4<bool>, 27>();
    global3 = array<Struct_5, 19>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global1.a.a.a.a - global1.a.a.a.a), _wgslsmith_f_op_f32(340f - 1986f));
    global1 = Struct_5(global1.a);
    let x = u_input.a;
    s_output = func_1();
}

