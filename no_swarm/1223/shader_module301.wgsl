struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: vec2<f32> = vec2<f32>(547f, 1000f);

var<private> global2: Struct_2 = Struct_2(vec2<i32>(-1i, 0i), 1743f, vec2<f32>(2016f, 380f));

var<private> global3: array<i32, 22> = array<i32, 22>(825i, -3651i, 0i, 14914i, -39657i, 5840i, -1i, 2147483647i, -9682i, -1i, 49706i, 17776i, i32(-2147483648), -58533i, -46300i, -36372i, -1i, -13593i, 2147483647i, 1i, 0i, -22396i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec2<i32> {
    var var_0 = true;
    return abs(~global2.a);
}

fn func_3(arg_0: f32) -> vec2<f32> {
    let var_0 = select(select(reverseBits(vec3<i32>(abs(global2.a.x), -2147483647i, global2.a.x)), ~vec3<i32>(~global3[_wgslsmith_index_u32(u_input.b.x, 22u)], reverseBits(global3[_wgslsmith_index_u32(57172u, 22u)]), global2.a.x), false), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], global2.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 22u)]), reverseBits(vec3<i32>(select(-8964i, global3[_wgslsmith_index_u32(1u, 22u)], false), ~global2.a.x, -2147483647i))), true);
    global0 = array<Struct_3, 2>();
    var var_1 = Struct_4(_wgslsmith_add_u32(~firstTrailingBit(u_input.a.x), countOneBits(17741u)));
    global1 = _wgslsmith_f_op_vec2_f32(floor(global2.c));
    global1 = _wgslsmith_f_op_vec2_f32(floor(global2.c));
    return global2.c;
}

fn func_1() -> f32 {
    let var_0 = u_input.b.xz;
    global2 = Struct_2(func_2(), _wgslsmith_f_op_f32(599f - 644f), vec2<f32>(389f, global1.x));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(1000f))));
    let var_1 = vec3<f32>(global1.x, global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global2.c.x) - -1000f)))));
    var var_2 = Struct_2(vec2<i32>(2147483647i, -firstTrailingBit(global3[_wgslsmith_index_u32(~16780u, 22u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global2.b, _wgslsmith_f_op_f32(-313f * _wgslsmith_f_op_f32(global1.x + 1636f)), !all(vec2<bool>(false, false)))))), _wgslsmith_f_op_vec2_f32(var_1.zy - vec2<f32>(global1.x, var_1.x)));
    return -917f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = Struct_1(global1.x, vec3<bool>(false, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false))), select(false, true, true) || (-global2.a.x >= reverseBits(-2147483647i))), ~(vec3<u32>(~u_input.a.x, ~4629u, 12635u) | (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 78594u, u_input.b.x), u_input.a) >> (vec3<u32>(u_input.a.x, 4294967295u, 59619u) % vec3<u32>(32u)))));
    let var_2 = Struct_4(abs(_wgslsmith_mod_u32(var_1.c.x, _wgslsmith_dot_vec2_u32(u_input.a.xy, var_1.c.xx)) & 72730u));
    var var_3 = vec2<i32>(-2147483647i ^ global2.a.x, global2.a.x);
    var var_4 = 119f;
    var_4 = _wgslsmith_f_op_f32(-global2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u >> (firstLeadingBit(~0u) % 32u), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), select(56904u, 10733u, var_1.b.x)), var_2.a), vec4<i32>(var_3.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(29342u, 22u)], global2.a.x), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 15895i, -2147483647i), vec3<i32>(global2.a.x, global3[_wgslsmith_index_u32(var_1.c.x, 22u)], global2.a.x)))), -2147483647i, global3[_wgslsmith_index_u32(1u, 22u)] | ~min(global2.a.x, 12964i)), global2.c.x, min(6640u, ~33262u));
}

