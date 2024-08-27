struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-30397i, 2147483647i, 41337i), vec3<i32>(-29357i, i32(-2147483648), 1i), vec3<i32>(40672i, -1i, 5657i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~(~firstTrailingBit(~reverseBits(u_input.b.x))), 3u)];
    var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(u_input.d.x), 1i, var_0.x), vec3<i32>(~var_0.x, ~(-1i), ~1i)) & ((select(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.e.x, 3u)], vec3<bool>(true, false, false)) & abs(vec3<i32>(9477i, 63477i, u_input.a))) << (vec3<u32>(u_input.e.x ^ 4294967295u, 64840u, countOneBits(u_input.b.x)) % vec3<u32>(32u))), max(vec3<i32>(_wgslsmith_sub_i32(var_0.x, reverseBits(-12052i)), _wgslsmith_mod_i32(0i, u_input.d.x | u_input.d.x), ~var_0.x), abs(vec3<i32>(1i, 1i ^ var_0.x, ~(-14558i)))));
    var var_1 = vec4<u32>(1u, 0u, abs(~4294967295u), u_input.e.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(min(_wgslsmith_mult_u32(4294967295u, var_1.x), _wgslsmith_mod_u32(u_input.e.x, u_input.c)), u_input.c, u_input.e.x, _wgslsmith_mult_u32(u_input.e.x, abs(var_1.x))) ^ (~(~u_input.b) ^ (u_input.b ^ u_input.b))), 3u)];
    var var_3 = vec2<i32>(var_0.x >> (_wgslsmith_dot_vec4_u32(~(~u_input.b), u_input.b) % 32u), firstLeadingBit(var_2.x));
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(select(arg_2.a, arg_2.a, arg_2.b.x)))))), select(!(!(!vec3<bool>(false, arg_2.b.x, false))), vec3<bool>(func_3(), false, true), all(select(vec4<bool>(arg_2.b.x, false, arg_2.b.x, false), vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.b.x), true)) & (_wgslsmith_clamp_u32(arg_0, 0u, arg_0) > u_input.c)), max(vec4<i32>(~select(1i, -69099i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 20831i), select(vec2<i32>(2147483647i, arg_2.c.x), vec2<i32>(1i, -1i), arg_2.b.xz)), 6442i, min(-u_input.d.x, abs(u_input.a))), min(firstLeadingBit(vec4<i32>(-2147483647i, u_input.d.x, 14126i, 2147483647i)), arg_2.c) >> (vec4<u32>(29714u, arg_0 << (u_input.c % 32u), ~1u, u_input.e.x) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = !vec3<bool>(!select(arg_0.b.x && false, arg_0.b.x, -223f > arg_0.a), func_3(), false);
    global0 = array<vec3<i32>, 3>();
    let var_1 = vec3<bool>(var_0.x, all(!(!select(vec4<bool>(var_0.x, arg_0.b.x, true, var_0.x), vec4<bool>(arg_0.b.x, false, var_0.x, false), vec4<bool>(false, true, arg_0.b.x, true)))), !(arg_0.b.x || false));
    let var_2 = arg_0;
    let var_3 = vec3<f32>(var_2.a, arg_0.a, -546f);
    return 0i;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = arg_1;
    global0 = array<vec3<i32>, 3>();
    return -vec4<i32>(func_4(func_2(u_input.e.x, -arg_1.a.c.zww, var_0.a)), abs(var_0.a.c.x), 49314i, -1i);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = -910f;
    var_0 = 898f;
    let var_1 = !arg_0.a.b.xy;
    global0 = array<vec3<i32>, 3>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.a.a), vec3<bool>(select(true, arg_0.a.b.x, arg_0.a.b.x), !all(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), arg_0.a.b.x), arg_0.a.c));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1201f;
    var var_1 = func_5(Struct_2(Struct_1(var_0, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), true), func_1(vec4<bool>(false, true, true, true), Struct_2(Struct_1(var_0, vec3<bool>(false, false, true), vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.a)))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))), _wgslsmith_f_op_f32(-2707f + -173f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    let var_3 = func_2(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(0u, u_input.c), 4294967295u, ~35307u)), vec3<u32>(1972u, u_input.c, abs(2076u))), vec3<i32>(u_input.a << (u_input.b.x % 32u), var_1.a.c.x, 2147483647i), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(func_2(24383u, var_1.a.c.ywx, Struct_1(852f, vec3<bool>(false, var_1.a.b.x, var_1.a.b.x), vec4<i32>(u_input.a, 25598i, -1i, 66112i))).a, _wgslsmith_f_op_f32(f32(-1f) * -390f)))), func_5(Struct_2(var_1.a)).a.b, var_1.a.c));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a))), -213f, _wgslsmith_f_op_f32(select(var_0, -1353f, var_1.a.b.x)), _wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1.a.a, var_0)))))), -func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -819f), !vec3<bool>(var_3.b.x, true, false), vec4<i32>(u_input.a, 2147483647i, -2147483647i, var_1.a.c.x))));
}

