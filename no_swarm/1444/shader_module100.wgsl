struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(false, true), 19286u), Struct_1(vec2<bool>(true, true), 4294967295u), Struct_1(vec2<bool>(false, true), 79762u), Struct_1(vec2<bool>(false, false), 1u), Struct_1(vec2<bool>(true, true), 0u), Struct_1(vec2<bool>(false, false), 1u), Struct_1(vec2<bool>(false, true), 10976u), Struct_1(vec2<bool>(false, false), 92304u), Struct_1(vec2<bool>(false, true), 19248u), Struct_1(vec2<bool>(true, true), 73012u), Struct_1(vec2<bool>(true, true), 67828u), Struct_1(vec2<bool>(true, true), 1u));

var<private> global2: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-1i, 2147483647i, 58708i), vec3<i32>(-47050i, 2147483647i, 41714i), vec3<i32>(2147483647i, 2147483647i, -62030i), vec3<i32>(-31214i, -44175i, 979i), vec3<i32>(-21051i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 18586i, 6598i), vec3<i32>(1i, 1i, -24698i), vec3<i32>(0i, -6432i, 2147483647i), vec3<i32>(-27376i, i32(-2147483648), 5629i), vec3<i32>(13105i, -1i, 21655i), vec3<i32>(-9728i, i32(-2147483648), -5222i), vec3<i32>(-1i, 0i, 10989i));

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_f_op_f32(-526f * global0.b), 1000f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, global0.b, global0.b) * vec4<f32>(373f, -162f, global0.b, global0.b)))))));
    global1 = array<Struct_1, 12>();
    let var_1 = 69435i;
    let var_2 = false;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -772f, 394f, -301f), vec4<f32>(-277f, 1129f, 994f, var_0.x), true))))), vec4<f32>(_wgslsmith_f_op_f32(-356f - var_0.x), global0.b, global0.b, var_0.x));
    return -2147483647i;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    global3 = array<Struct_1, 19>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) - _wgslsmith_f_op_f32(select(1000f, -1353f, false))), _wgslsmith_f_op_f32(arg_0 * 404f), arg_0);
    global0 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(select(-2147483647i, 0i, true)), -func_3(1u)), u_input.c.x), 1028f, _wgslsmith_mult_vec2_u32(max(_wgslsmith_sub_vec2_u32(~arg_3.c, ~global0.c), ~_wgslsmith_sub_vec2_u32(arg_1.xx, vec2<u32>(12904u, 51415u))), vec2<u32>(1u, _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(70302u, 54907u)))), arg_1.x);
    var_0 = vec3<f32>(global0.b, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(301f, -520f)))));
    let var_1 = true;
    return reverseBits(arg_2.d & ~(~u_input.d));
}

fn func_2() -> vec4<i32> {
    global3 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) - global0.b))) * -1298f) * 711f);
    let var_1 = _wgslsmith_f_op_f32(step(-1025f, -1000f));
    let var_2 = _wgslsmith_add_u32(global0.c.x, 74181u) >= ~u_input.d;
    var var_3 = ~(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2304f)), _wgslsmith_mod_vec3_u32(~u_input.b.zzx, abs(u_input.b.zyz)), Struct_3(func_3(37851u), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_add_vec2_u32(u_input.b.zx, vec2<u32>(global0.c.x, 28655u)), u_input.b.x), Struct_3(u_input.c.x, var_1, vec2<u32>(4294967295u, 4294967295u), ~12249u)) ^ 1805u);
    return countOneBits(vec4<i32>(~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(37892i, global0.a, global0.a) & _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0.a, global0.a), global2[_wgslsmith_index_u32(23735u, 12u)], global2[_wgslsmith_index_u32(global0.c.x, 12u)]), vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, 1i, u_input.c.x), u_input.c.x ^ u_input.c.x, u_input.c.x)), 2147483647i, global0.a));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = false;
    let var_1 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a, 0i, arg_0.a, arg_0.a) ^ min(vec4<i32>(u_input.c.x, global0.a, arg_0.a, 0i), vec4<i32>(1i, u_input.c.x, -22273i, global0.a)), countOneBits(~vec4<i32>(17938i, -28486i, u_input.c.x, global0.a))), abs(vec4<i32>(0i ^ global0.a, i32(-1i) * -62841i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-2147483647i, arg_0.a)), 1i))), -func_2());
    let var_2 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_3 = ~u_input.c.x;
    var var_4 = Struct_1(select(vec2<bool>(!var_0, var_0), !vec2<bool>(any(vec3<bool>(false, true, true)), var_2 == arg_0.b), u_input.d >= (arg_2.x >> (_wgslsmith_sub_u32(arg_2.x, global0.c.x) % 32u))), firstLeadingBit(_wgslsmith_add_u32(2296u, countOneBits(~u_input.a))));
    return vec4<i32>(-_wgslsmith_dot_vec3_i32(~(~global2[_wgslsmith_index_u32(59523u, 12u)]), -global2[_wgslsmith_index_u32(1733u, 12u)] >> (arg_2.xxy % vec3<u32>(32u))), _wgslsmith_sub_i32(~var_3, global0.a ^ -2147483647i), -2147483647i, firstTrailingBit(var_1 | 2147483647i) ^ _wgslsmith_mod_i32(func_3(u_input.b.x) >> (~78626u % 32u), 1i & (1i << (arg_2.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(_wgslsmith_mult_u32(u_input.d, ~0u), u_input.a, global0.c.x, u_input.a)), _wgslsmith_add_u32(~20555u, 792u), -_wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-50517i, -1i, -7191i, 0i), vec4<i32>(global0.a, 28450i, global0.a, 41167i))), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a, global0.a, -14277i, u_input.c.x), vec4<i32>(-1i, global0.a, global0.a, u_input.c.x))), func_1(Struct_3(-74959i, global0.b, global0.c, 1u), vec4<f32>(-145f, -1124f, 704f, 1985f), vec4<u32>(u_input.d, 14874u, global0.c.x, global0.c.x)) ^ (vec4<i32>(-63009i, 2147483647i, 0i, 0i) ^ vec4<i32>(u_input.c.x, global0.a, u_input.c.x, -21180i))));
}

