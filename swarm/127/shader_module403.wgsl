struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-661f, 464f);

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    return ~_wgslsmith_sub_u32(max(3919u, ~4294967295u), _wgslsmith_add_u32(~(~u_input.b), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(16980u, 38576u, 1u))));
}

fn func_2() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~(~(~(~(~u_input.b)))), 26u)];
    let var_1 = func_3();
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1592f, global0.b, _wgslsmith_f_op_f32(f32(-1f) * -524f)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f)))), var_0.b, global0.b))));
    var_0 = Struct_1(var_2.x, var_2.x);
    var var_3 = ~(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(45425u, 4294967295u), vec2<u32>(41034u, var_1)), ~vec2<u32>(57316u, 21728u) >> (reverseBits(vec2<u32>(u_input.b, 39867u)) % vec2<u32>(32u))));
    return 412f;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    global0 = Struct_1(global0.b, -718f);
    let var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(arg_1.x & ~_wgslsmith_clamp_u32(arg_1.x, ~19861u, arg_1.x), 26u)];
    global2 = array<Struct_1, 11>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(abs(-442f)));
    return ~(~u_input.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> f32 {
    global1 = array<Struct_1, 26>();
    var var_0 = select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false))), true), !vec4<bool>(true, all(vec2<bool>(false, true)), any(vec2<bool>(true, false)), true), vec4<bool>(!any(vec4<bool>(false, true, false, true)), select(true, any(vec4<bool>(false, true, true, false)), false), any(vec3<bool>(false, false, true)), false)), vec4<bool>(!all(vec2<bool>(true, true)), any(vec3<bool>(true, -2147483647i == u_input.a.x, u_input.b > 12349u)), (-479f == _wgslsmith_f_op_f32(ceil(global0.a))) != all(vec3<bool>(false, true, false)), true), !select(vec4<bool>(true, true, select(false, false, true), any(vec3<bool>(true, false, true))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1177f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-340f * _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, false)))))), 1870f);
    let var_2 = var_1.xw;
    var_0 = select(select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(-24577i <= arg_2, true, false, !var_0.x), true || (var_1.x <= var_1.x)), vec4<bool>(var_0.x, true, _wgslsmith_f_op_f32(var_2.x + var_2.x) <= _wgslsmith_f_op_f32(global0.a + 1645f), !(!var_0.x)), select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, true)), vec4<bool>(true, true, true, true))), select(!vec4<bool>(select(var_0.x, var_0.x, true), var_0.x, select(var_0.x, true, var_0.x), !var_0.x), !(!vec4<bool>(true, var_0.x, true, true)), var_0.x), !(!vec4<bool>(true, true, var_0.x && true, true)));
    return _wgslsmith_f_op_f32(f32(-1f) * -271f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a))), !any(vec3<bool>(true, true, false)) && true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(func_1(u_input.c.x, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, u_input.b))), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), 11u)], firstTrailingBit(u_input.c.x) ^ ~u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.b) * _wgslsmith_f_op_f32(floor(1985f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2056f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(abs(-1401f))), u_input.b == ~21389u))));
    global1 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_dot_vec3_i32(max(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, u_input.c), vec3<i32>(u_input.c.x, -25587i, u_input.c.x)), u_input.c | _wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(-1i, u_input.a.x, 1i)), -u_input.c), u_input.c), ~(-u_input.c));
    let var_2 = ~vec2<u32>(func_3(), 1u >> (u_input.b % 32u));
    var var_3 = 37141u;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b - -1061f), -2276f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, global0.a)), _wgslsmith_div_f32(var_0.x, var_0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) * global0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, var_0.x, -222f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, -1240f, global0.b, global0.a)) + vec4<f32>(-743f, global0.a, 766f, global0.a))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.b, -910f, global0.b) + vec4<f32>(959f, 1744f, global0.b, global0.a))), vec4<f32>(_wgslsmith_f_op_f32(step(281f, 101f)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-var_0.x), var_0.x), true))), vec4<bool>(false, true, u_input.b <= _wgslsmith_mod_u32(66135u, var_2.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_2.x, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(36772u, u_input.b, var_2.x, var_2.x), vec4<u32>(var_2.x, 4294967295u, var_2.x, u_input.b), vec4<u32>(46171u, 4294967295u, u_input.b, 43546u))), min(min(vec4<u32>(0u, u_input.b, var_2.x, var_2.x), vec4<u32>(var_2.x, 13610u, var_2.x, u_input.b)), ~vec4<u32>(var_2.x, 124145u, 56186u, var_2.x)))));
}

