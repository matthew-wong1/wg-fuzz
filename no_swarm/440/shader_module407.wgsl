struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
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

var<private> global0: Struct_1 = Struct_1(false, 25511i, vec3<u32>(29162u, 1u, 0u), vec4<bool>(false, false, true, true));

var<private> global1: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-1i, -18520i), vec2<i32>(0i, 1i), vec2<i32>(-1i, -1i));

var<private> global2: array<bool, 3> = array<bool, 3>(true, true, false);

var<private> global3: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> vec4<i32> {
    var var_0 = Struct_2(u_input.b.x, Struct_1(any(!vec4<bool>(true, global3.b.a, true, false)) || any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 3u)])), 0i, vec3<u32>(_wgslsmith_div_u32(~global0.c.x, u_input.e.x), min(u_input.e.x, select(global3.c.x, 4294967295u, arg_3.x)), global3.a), vec4<bool>(true, true, true, true)), vec3<u32>(~(~u_input.b.x), abs(18865u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.c.x, u_input.b.x, 4294967295u, 4294967295u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, global0.c.x, global3.c.x), 38989u, countOneBits(0u), ~1u))), countOneBits(-2147483647i));
    let var_1 = _wgslsmith_f_op_f32(step(-661f, 336f));
    global2 = array<bool, 3>();
    var var_2 = vec3<i32>(u_input.c, arg_0, max(~global0.b, arg_2.x));
    let var_3 = Struct_1(arg_3.x, ~(-55577i), vec3<u32>((firstTrailingBit(global3.a) >> (global0.c.x % 32u)) ^ ~(~u_input.e.x), _wgslsmith_dot_vec3_u32(~global0.c, _wgslsmith_sub_vec3_u32(global0.c, var_0.c) | vec3<u32>(u_input.b.x, 25064u, var_0.b.c.x)), ~23405u), var_0.b.d);
    return abs(firstLeadingBit(-(arg_2 >> (abs(vec4<u32>(var_0.a, global0.c.x, 1277u, 80073u)) % vec4<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(global0.b, global0.b, global3.d, _wgslsmith_mod_i32(28481i, -global3.b.b));
    global3 = Struct_2(u_input.e.x << (global0.c.x % 32u), Struct_1(false || (all(global0.d) != true), firstLeadingBit(u_input.d.x), vec3<u32>(5017u, ~global0.c.x, ~2499u), select(!select(global0.d, global0.d, global0.d), !global3.b.d, 34273i >= -global0.b)), min(firstTrailingBit(global0.c), ~(~vec3<u32>(4294967295u, 2742u, 4294967295u))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.x, global0.b, u_input.c), -vec4<i32>(-2147483647i, var_0.x, u_input.c, 2147483647i)), reverseBits(func_3(var_0.x, vec2<i32>(1i, global3.b.b), vec4<i32>(-2147483647i, -1i, 1i, -875i), vec2<bool>(global0.a, global2[_wgslsmith_index_u32(0u, 3u)])))));
    let var_1 = global3.b;
    let var_2 = var_1.c;
    let var_3 = Struct_2(abs(global3.c.x), Struct_1(!(var_0.x > ~var_0.x), ~firstTrailingBit(-u_input.a), u_input.b, !(!(!global0.d))), u_input.b, 29294i);
    return var_3.b;
}

fn func_1() -> Struct_1 {
    global3 = Struct_2(1u, global3.b, global0.c, ~(-2147483647i));
    let var_0 = Struct_2(~(~u_input.e.x), func_2(), max(vec3<u32>(_wgslsmith_sub_u32(max(1u, global3.b.c.x), u_input.b.x), ~(~global0.c.x), ~4294967295u), abs(~select(global3.c, vec3<u32>(u_input.e.x, global0.c.x, u_input.e.x), global0.d.yxz))), u_input.d.x);
    global2 = array<bool, 3>();
    global2 = array<bool, 3>();
    let var_1 = select(global3.b.d, func_2().d, select(select(select(vec4<bool>(var_0.b.a, true, global0.d.x, false), global0.d, func_2().d), !(!var_0.b.d), vec4<bool>(any(vec2<bool>(global3.b.d.x, false)), var_0.b.d.x, true, var_0.b.a)), vec4<bool>(false, global0.d.x, !any(vec2<bool>(true, global0.d.x)), true), false));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d;
    global0 = global3.b;
    global0 = func_1();
    let var_1 = global3.b;
    let var_2 = 1000f;
    var var_3 = select(-2147483647i, global0.b, false);
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, -2065f))), -244f)), 1776f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x))))), 4294967295u, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4201u, 4294967295u, var_1.c.x, u_input.b.x), vec4<u32>(4294967295u, global0.c.x, global0.c.x, 37266u)), reverseBits(56739u), _wgslsmith_mod_u32(global0.c.x, 1u) & ~u_input.b.x, var_1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-492f + var_2), var_2));
}

