struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 24412i, 4180i, i32(-2147483648));

var<private> global2: Struct_1 = Struct_1(1u, 1u, true, vec3<u32>(0u, 0u, 501u));

var<private> global3: array<vec4<f32>, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = Struct_1(~arg_0.x, ~firstLeadingBit(23506u), -33710i != _wgslsmith_dot_vec3_i32(~(vec3<i32>(10246i, global1.x, 20891i) | u_input.b.ywz), global1.zwz), ~min(_wgslsmith_mod_vec3_u32(max(global2.d, vec3<u32>(1u, global2.d.x, u_input.c.x)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), ~select(u_input.c.wzw, u_input.c.xxw, vec3<bool>(true, true, false))));
    let var_1 = vec3<i32>(-49506i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -global1.x, 1i), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, global1.xyw), u_input.b.ywz, global1.xyx), vec3<i32>(-1i) * -global1.zzy)), -(~2147483647i));
    let var_2 = _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(u_input.c.x, 11u)] - vec4<f32>(-1764f, _wgslsmith_div_f32(-1993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2092f, arg_3)))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346f + _wgslsmith_f_op_f32(arg_3 - arg_3)))));
    let var_3 = arg_3;
    global2 = arg_2.d;
    return 0u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32) -> vec3<u32> {
    global0 = array<Struct_3, 12>();
    return u_input.c.xxw;
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    global3 = array<vec4<f32>, 11>();
    let var_0 = Struct_1(global2.a, 1u, !(-748f != _wgslsmith_f_op_f32(-arg_1)), u_input.c.zyz);
    global0 = array<Struct_3, 12>();
    let var_1 = !any(vec2<bool>(0u == (u_input.c.x << (4294967295u % 32u)), true));
    global0 = array<Struct_3, 12>();
    return -328f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 11>();
    global2 = Struct_1(88529u, ~func_1(u_input.c.xx ^ ~vec2<u32>(global2.d.x, global2.a), select(!vec3<bool>(true, global2.c, false), !vec3<bool>(true, true, global2.c), true), Struct_2(!global2.c, _wgslsmith_add_i32(global1.x, global1.x), select(vec4<u32>(0u, u_input.c.x, 1u, 4294967295u), u_input.c, global2.c), Struct_1(16587u, global2.b, global2.c, vec3<u32>(u_input.c.x, 22363u, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(879f * 273f) - _wgslsmith_div_f32(-1328f, 1532f))), global2.c, min(abs(vec3<u32>(~40604u, ~90889u, ~u_input.c.x)), func_2(vec2<u32>(global2.b, 1u) >> (global2.d.xy % vec2<u32>(32u)), select(vec2<bool>(false, true), vec2<bool>(global2.c, false), vec2<bool>(true, false)), i32(-1i) * -1i) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global2.b, global2.d.x), u_input.c.xww), vec3<u32>(u_input.c.x, 47201u, 19814u), ~u_input.c.wwx) % vec3<u32>(32u))));
    global0 = array<Struct_3, 12>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-2147483647i, -1131f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1956f)))));
    var var_1 = global2.c;
    var var_2 = -1i;
    var var_3 = Struct_4(Struct_2(any(vec2<bool>(global2.c && false, true)), 0i, u_input.c, Struct_1(_wgslsmith_clamp_u32(global2.d.x, 4294967295u, 1u) ^ _wgslsmith_clamp_u32(global2.a, u_input.c.x, 0u), u_input.c.x, !global2.c, countOneBits(abs(vec3<u32>(u_input.c.x, global2.a, u_input.c.x))))));
    global1 = ~_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, _wgslsmith_div_vec4_i32(-u_input.b ^ u_input.b, -min(vec4<i32>(-5800i, -40276i, 1i, var_3.a.b), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1090f, var_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 566f)))))), var_3.a.d.b, u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))));
}

