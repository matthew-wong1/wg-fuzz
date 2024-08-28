struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = ~(~countOneBits(39807u));
    var var_1 = 1396f;
    var var_2 = var_0;
    var var_3 = _wgslsmith_mod_u32(25684u, ~u_input.b.x);
    var_3 = 6001u;
    return select(reverseBits(~21820u), _wgslsmith_div_u32(firstTrailingBit(var_0 & u_input.a), ~(1u >> (u_input.e.x % 32u))), all(vec2<bool>(global0[_wgslsmith_index_u32(~u_input.b.x, 9u)], true))) ^ _wgslsmith_div_u32(var_0, var_0);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = array<Struct_1, 31>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.e.x, 14u)];
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 6783u, 4294967295u, 34700u), ~u_input.b >> (u_input.b % vec4<u32>(32u)), u_input.b), ~(vec4<u32>(_wgslsmith_mod_u32(arg_0, 4294967295u), arg_0, 0u, ~21600u) & vec4<u32>(~16069u, _wgslsmith_div_u32(arg_0, 4294967295u), arg_0, 52998u)));
    var_0 = Struct_1(vec3<bool>(false, _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.x - -961f), var_0.b.x), true), var_0.b, select(_wgslsmith_mod_vec4_i32(-(vec4<i32>(0i, -4368i, -7644i, -2147483647i) ^ var_0.c), vec4<i32>(i32(-1i) * -3769i, ~var_0.c.x, -1i, ~u_input.c)), u_input.d, !vec4<bool>(!var_1.x, global0[_wgslsmith_index_u32(4294967295u, 9u)], var_1.x, global0[_wgslsmith_index_u32(1u, 9u)] == true)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(11643u, abs(func_3() << (func_3() % 32u))), 9u)], vec4<f32>(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - -479f), var_0.b.x), -1672f, var_0.b.x));
    return global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(u_input.e.x ^ 12617u), abs(~0u)) & _wgslsmith_sub_u32(4294967295u, 1u >> (firstTrailingBit(_wgslsmith_sub_u32(arg_0, 44208u)) % 32u)), 14u)];
}

fn func_1() -> f32 {
    let var_0 = func_2(~(~(~countOneBits(u_input.e.x))));
    var var_1 = ~_wgslsmith_mod_u32(u_input.b.x, ~min(u_input.a, 1u) ^ 4294967295u);
    global0 = array<bool, 9>();
    global1 = array<Struct_1, 14>();
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(floor(132f));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0.e.x;
    let var_1 = Struct_1(func_2(~(~1948u & u_input.b.x)).a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1334f, var_0, arg_0.e.x, arg_0.b.x) * _wgslsmith_f_op_vec4_f32(min(arg_0.e, vec4<f32>(-675f, -337f, var_0, -1051f)))), _wgslsmith_f_op_vec4_f32(arg_0.b * _wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(var_0, 100f, arg_0.b.x, -363f)))))), vec4<i32>(~(-arg_1), u_input.d.x, 1i, arg_1), (all(arg_0.a.xx) & true) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-158f)) * _wgslsmith_f_op_f32(-var_0)) > var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * var_0), _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-161f, var_0, 529f, arg_0.b.x)))), arg_0.b, select(vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), vec4<bool>(false, false, true, true), func_2(29528u).d)))));
    global0 = array<bool, 9>();
    global2 = array<Struct_1, 31>();
    let var_2 = all(!func_2(4294967295u).a);
    return Struct_1(!arg_0.a, vec4<f32>(600f, var_0, var_0, -336f), arg_0.c, var_2, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~82u, 14u)];
    let var_1 = global2[_wgslsmith_index_u32(~abs(firstLeadingBit(u_input.e.x)), 31u)];
    global1 = array<Struct_1, 14>();
    global0 = array<bool, 9>();
    var var_2 = func_4(Struct_1(!vec3<bool>(var_1.d, false, true), _wgslsmith_f_op_vec4_f32(max(var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1018f, 278f, 215f, 534f), var_0.b, var_1.a.x))))), u_input.d, any(vec2<bool>(true, true)), vec4<f32>(1082f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(var_1.b.x * var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.e.x)) + _wgslsmith_f_op_f32(var_0.e.x - -619f)))), min(reverseBits(-2147483647i), -987i & var_0.c.x));
    let var_3 = firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.wy, vec2<i32>(var_0.c.x, u_input.d.x)), i32(-1i) * -45187i) ^ vec2<i32>(var_2.c.x, var_2.c.x));
    let var_4 = var_0.c.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~(~u_input.b.x), u_input.e.x, 4294967295u), u_input.b.x), u_input.a, abs(~(u_input.b ^ vec4<u32>(u_input.a, 1u, u_input.b.x, u_input.a))));
}

