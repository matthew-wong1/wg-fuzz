struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<i32>(23865i, 31887i, 2147483647i, 1i)), vec4<f32>(411f, -572f, 1169f, 185f), 1562u, vec2<i32>(-52592i, -14060i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<u32> {
    global1 = Struct_3(global0[_wgslsmith_index_u32(4294967295u << (~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.xz, u_input.d.xx), _wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(22234u, 0u))) % 32u), 25u)], _wgslsmith_f_op_vec4_f32(-global1.b), global1.c, _wgslsmith_clamp_vec2_i32(~global1.a.a.zz, select(_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.a.x, global1.a.a.x), select(vec2<i32>(global1.d.x, u_input.c), global1.a.a.wx, false)), vec2<i32>(-2593i, -1i), true), abs(vec2<i32>(~0i, global1.d.x << (39921u % 32u)))));
    let var_0 = vec2<bool>(!all(vec3<bool>(true, true, true)) | !any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true);
    let var_1 = vec4<i32>(~(-34180i) << (global1.c % 32u), u_input.c, i32(-1i) * -29115i, abs(-_wgslsmith_mult_i32(26909i, global1.a.a.x)));
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), global1.b.x)) < _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_div_f32(699f, _wgslsmith_f_op_f32(max(global1.b.x, -785f)))), true);
    var_2 = !vec2<bool>((1u == global1.c) & false, var_0.x);
    return ~vec4<u32>(~(~global1.c << (firstLeadingBit(90487u) % 32u)), global1.c, global1.c, _wgslsmith_dot_vec2_u32(~u_input.d.zy, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.a))) >> (56834u % 32u));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = global1.a;
    let var_1 = ~vec2<u32>(1u, max(_wgslsmith_dot_vec4_u32(func_3(), max(vec4<u32>(global1.c, arg_2.a.x, u_input.a, arg_2.b.x), vec4<u32>(22178u, global1.c, global1.c, 1u))), 0u));
    global0 = array<Struct_2, 25>();
    let var_2 = abs(firstTrailingBit(-vec2<i32>(u_input.c, select(-28790i, var_0.a.x, arg_0))));
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(550f, _wgslsmith_div_f32(-671f, arg_1.x), -302f, global1.b.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)))), select(true, all(!vec3<bool>(true, arg_0, true)), all(!vec2<bool>(arg_0, arg_0))))), ~max(~(~67605u), _wgslsmith_sub_u32(reverseBits(0u), 0u)), select(vec2<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(global1.a.a.x, global1.d.x, u_input.c)), -31420i), vec2<i32>(~(~(-2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global1.a.a.x, var_0.a.x), ~vec3<i32>(u_input.c, u_input.c, u_input.c))), true));
    return Struct_3(global1.a, global1.b, abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47170u, 4294967295u), vec2<u32>(139773u, global1.c)), global1.c)), var_0.a.zw << (~func_3().zy % vec2<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec3<u32> {
    global0 = array<Struct_2, 25>();
    global1 = func_2(arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1))), Struct_1(vec2<u32>(global1.c, 41650u), vec3<u32>(_wgslsmith_mod_u32(arg_0, 26483u) >> ((4294967295u >> (u_input.d.x % 32u)) % 32u), arg_0, global1.c)));
    let var_0 = global1.d.x;
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(~(~u_input.d.zz)), func_1(u_input.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global1.b.x - 681f), 446f))), vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global1.b.wy);
    let var_2 = global1.a.a;
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_3 = var_0;
    var var_4 = !((global1.d.x ^ _wgslsmith_mod_i32(_wgslsmith_add_i32(global1.a.a.x, u_input.c), global1.d.x & var_2.x)) < ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), select(global1.d, global1.a.a.wy, vec2<bool>(false, true))));
    var var_5 = vec4<bool>(false, (1u <= var_3.b.x) && select(true, (0u << (var_0.a.x % 32u)) < var_0.b.x, true), true, true);
    var_5 = vec4<bool>(any(vec3<bool>(!any(var_5.zw), true, true && (var_5.x == var_5.x))), any(vec4<bool>(any(!vec4<bool>(var_5.x, true, false, var_5.x)), true, false, all(!vec4<bool>(var_5.x, false, true, var_5.x)))), var_5.x, !all(var_5.ww));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(262f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - global1.b.x)), _wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global1.b.x, 476f, var_1.x)), global1.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1070f, global1.b.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, var_1.x, global1.b.x, -238f) + vec4<f32>(-124f, var_1.x, 266f, 901f))))), firstLeadingBit(vec4<i32>(u_input.c, firstTrailingBit(global1.a.a.x), u_input.c, -2147483647i ^ var_2.x)));
}

