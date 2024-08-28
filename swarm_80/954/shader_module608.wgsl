struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(1u, 29514u, 1u), vec3<f32>(1000f, -415f, -387f));

var<private> global1: array<Struct_3, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1827f))))), _wgslsmith_f_op_f32(-arg_1.c.b.x), 1000f));
    var var_1 = Struct_2(_wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.a.x, 0u, u_input.a.x), _wgslsmith_mult_u32(44921u, arg_1.c.a.x)), 3699u, select(_wgslsmith_add_u32(arg_1.c.a.x, u_input.a.x), arg_1.c.a.x, arg_2.a))), _wgslsmith_f_op_vec3_f32(global0.b * global0.b));
    var var_2 = vec3<i32>(-2147483647i, -2147483647i, reverseBits(_wgslsmith_mult_i32(_wgslsmith_mult_i32(11040i << (0u % 32u), _wgslsmith_sub_i32(0i, arg_1.a.b)), ~1i)));
    let var_3 = arg_1;
    var var_4 = _wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a.x, 59498u), arg_1.c.a)), global0.a.x));
    return !(!vec3<bool>(var_3.b.x, arg_1.a.a.x == true, _wgslsmith_div_u32(1u, 1u) > var_1.a.x));
}

fn func_2() -> f32 {
    global0 = Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(max(~0u, 1u >> (u_input.a.x % 32u)), ~global0.a.x, _wgslsmith_mod_u32(u_input.c.x, 58902u) << (~4294967295u % 32u)), vec3<u32>(~global0.a.x, abs(_wgslsmith_sub_u32(23362u, 19609u)), _wgslsmith_dot_vec2_u32(~u_input.c.yx, firstTrailingBit(global0.a.xz))), vec3<u32>(max(global0.a.x, global0.a.x), ~1u, global0.a.x << (global0.a.x % 32u)) ^ global0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), 1193f, _wgslsmith_f_op_f32(f32(-1f) * -630f))));
    var var_0 = Struct_1(true);
    var var_1 = -u_input.b;
    let var_2 = Struct_4(Struct_3(vec2<bool>(1i < select(u_input.b, 0i, var_0.a), var_0.a), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(-18101i, u_input.b, u_input.b, -1121i), vec4<i32>(-1i, -2147483647i, u_input.b, -2147483647i) ^ vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)), -reverseBits(u_input.b) << (52566u % 32u), true), !func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -569f))), Struct_4(Struct_3(vec2<bool>(var_0.a, var_0.a), 14560i, u_input.b, var_0.a), !vec3<bool>(true, var_0.a, true), Struct_2(u_input.c, vec3<f32>(1253f, 1912f, 691f))), Struct_1(true)), Struct_2(~(~vec3<u32>(1u, 4294967295u, u_input.a.x)) & ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.a.x, u_input.c.x), u_input.d.xxx), global0.b));
    let var_3 = abs(u_input.c.x) | abs(global0.a.x);
    return var_2.c.b.x;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_i32(~vec2<i32>(~max(u_input.b, 2147483647i), _wgslsmith_sub_i32(_wgslsmith_div_i32(2431i, u_input.b), _wgslsmith_div_i32(u_input.b, 1i))), ~(-vec2<i32>(u_input.b, ~(-1i))));
    global1 = array<Struct_3, 3>();
    let var_1 = !select(select(vec4<bool>(-1i == var_0.x, true, true, all(vec3<bool>(true, true, true))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(false, true, true)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), any(vec2<bool>(false, false)))), vec4<bool>(select(true, all(vec4<bool>(true, false, true, false)), true), true, _wgslsmith_f_op_f32(func_2()) <= _wgslsmith_f_op_f32(ceil(arg_0)), true), vec4<bool>(true, false, true, _wgslsmith_mod_i32(23504i, var_0.x) != 1i));
    global1 = array<Struct_3, 3>();
    var var_2 = Struct_1(0i < _wgslsmith_div_i32(-29079i, -abs(u_input.b)));
    return -1172f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-677f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1430f * -213f))), global0.b.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(abs(global0.b.x))))));
    let var_1 = Struct_2(vec3<u32>(global0.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.a.x, 2475u, u_input.a.x), vec4<u32>(u_input.c.x, 0u, 48504u, 17434u)) >> (firstLeadingBit(u_input.d.x) % 32u), ~_wgslsmith_div_u32(~1u, 44945u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_div_f32(global0.b.x, -474f), -142f))));
    var var_2 = u_input.d;
    let var_3 = select(func_3(1000f, Struct_4(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), var_1), Struct_1(true)), func_3(var_0.x, Struct_4(global1[_wgslsmith_index_u32(firstLeadingBit(21777u), 3u)], func_3(_wgslsmith_div_f32(var_0.x, 1503f), Struct_4(global1[_wgslsmith_index_u32(4294967295u, 3u)], vec3<bool>(true, true, false), var_1), Struct_1(true)), Struct_2(~global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(510f, 525f, -691f) + global0.b))), Struct_1(true)), vec3<bool>(true, true, true));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f + _wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    var var_5 = Struct_1(!(var_3.x || any(!vec4<bool>(true, false, var_3.x, false))));
    let var_6 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(13470u, 0u), vec2<u32>(10650u, var_1.a.x)), ~_wgslsmith_add_u32(0u, var_1.a.x))), var_1.a), 3u)];
    var var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0, var_0, true)) * global0.b) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), 535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-318f, _wgslsmith_f_op_f32(trunc(var_0.x)), -361f < global0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.yz, var_0.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(~var_2.xyw, ~vec3<u32>(7822u, 0u, 19668u)), _wgslsmith_mult_u32(33632u, firstLeadingBit(global0.a.x)))), 58371i);
}

