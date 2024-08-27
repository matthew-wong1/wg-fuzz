struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 30888u);

var<private> global2: array<f32, 3>;

var<private> global3: Struct_5 = Struct_5(vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(-734f, -483f, -154f), -577f), false, 1i, vec3<i32>(i32(-2147483648), 2147483647i, 9067i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> u32 {
    global0 = array<f32, 16>();
    global1 = ~_wgslsmith_sub_vec2_u32((vec2<u32>(arg_2, 1u) << (vec2<u32>(49730u, 4541u) % vec2<u32>(32u))) | vec2<u32>(63327u, arg_2), min(vec2<u32>(arg_2, 6642u) >> (vec2<u32>(8747u, 8002u) % vec2<u32>(32u)), vec2<u32>(0u, 60329u))) ^ _wgslsmith_clamp_vec2_u32((_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(arg_2, arg_1)) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) ^ vec2<u32>(0u, ~300u), _wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(44967u), _wgslsmith_clamp_u32(15332u, global1.x, 4294967295u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1361u, 0u), vec2<u32>(13474u, 12128u))), vec2<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 1u, global1.x, 0u), vec4<u32>(global1.x, 23152u, arg_2, 52768u)), 1u), arg_1));
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(global3.d, 1i), -abs(u_input.a >> (4294967295u % 32u))) >> (~_wgslsmith_mult_u32(arg_1, u_input.b) % 32u);
    var var_1 = any(!select(global3.a.wwy, !global3.a.yzw, global3.a.xxx));
    let var_2 = select(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(23555u, arg_1), vec2<u32>(~global1.x, ~4294967295u), select(~vec2<u32>(u_input.b, 0u), vec2<u32>(0u, u_input.b), vec2<bool>(global3.a.x, false))), vec2<u32>(1u, _wgslsmith_clamp_u32(91688u, _wgslsmith_add_u32(0u, arg_1), 1u))), select(vec2<u32>(4294967295u, ~arg_1) ^ ~firstTrailingBit(vec2<u32>(89831u, arg_1)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, 45283u), max(vec2<u32>(1u, 85206u), vec2<u32>(69223u, 91891u))) << (~firstTrailingBit(vec2<u32>(u_input.b, global1.x)) % vec2<u32>(32u)), true), select(select(global3.a.wy, vec2<bool>(global3.a.x | false, arg_1 >= global1.x), global3.a.yy), vec2<bool>(u_input.a > global3.e.x, !(arg_1 >= 1u)), global3.a.x));
    return ~46636u;
}

fn func_2(arg_0: u32) -> Struct_5 {
    global0 = array<f32, 16>();
    global3 = Struct_5(global3.a, global3.b, global3.c, min(2147483647i, _wgslsmith_mod_i32(u_input.a, u_input.a)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, u_input.a) >> (func_3(vec2<f32>(global3.b.b, -1659f), 0u, 0u, global3.b) % 32u), ~_wgslsmith_mult_i32(19973i, 0i)), _wgslsmith_dot_vec3_i32(global3.e, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), firstLeadingBit(vec3<i32>(1i, global3.e.x, -19798i)), firstLeadingBit(global3.e))), -global3.e.x));
    let var_0 = (abs(1u) & _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 1u, 40249u), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, global1.x, u_input.b), vec3<u32>(arg_0, arg_0, 4294967295u))))) << (0u % 32u);
    let var_1 = 0i;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(global3.b.a.zz * global3.b.a.yy), abs(~u_input.a));
    return Struct_5(!(!global3.a), global3.b, false, _wgslsmith_clamp_i32(var_2.b, global3.e.x, _wgslsmith_mult_i32(global3.e.x, _wgslsmith_div_i32(11503i, -1i))), ~global3.e);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: bool) -> vec2<bool> {
    global0 = array<f32, 16>();
    global3 = func_2(global1.x);
    global0 = array<f32, 16>();
    var var_0 = Struct_3(u_input.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 3u)]), -429f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 3u)]))))), global3.a.x);
    global0 = array<f32, 16>();
    return global3.a.yw;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_5(vec4<bool>(all(global3.a), all(!select(global3.a.zxx, global3.a.yzw, global3.a.x)), all(!func_1(u_input.a, vec4<i32>(global3.e.x, u_input.a, -2147483647i, u_input.a), true)), false), func_2(u_input.b).b, false, 1774i, ~global3.e);
    global2 = array<f32, 3>();
    global3 = func_2(0u);
    let var_0 = func_2(global1.x);
    global2 = array<f32, 3>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.b).b.a.zy * vec2<f32>(global3.b.b, -1000f)))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, global1.x, ~24215u), ~abs(global1.x)) & 4294967295u, var_1.a.x, _wgslsmith_add_vec3_u32(vec3<u32>(0u, ~global1.x, global1.x), vec3<u32>(u_input.b & global1.x, 4294967295u | (0u ^ u_input.b), ~1u >> (global1.x % 32u))));
}

