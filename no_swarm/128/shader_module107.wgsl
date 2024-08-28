struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: vec4<f32> = vec4<f32>(-684f, -1272f, -824f, -547f);

var<private> global2: Struct_4 = Struct_4(vec4<i32>(44329i, -24726i, 2147483647i, -34157i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<f32> {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(1660f + global1.x)), -643f, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-global1.x), true)), -2028f)));
    let var_1 = Struct_2(10160i, !any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), _wgslsmith_f_op_f32(global1.x + var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x))))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.yw, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(-248f)), global1.x)))));
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))), _wgslsmith_f_op_vec2_f32(-global1.zy));
    global0 = array<i32, 11>();
    var var_1 = Struct_1(!vec3<bool>(all(vec3<bool>(false, false, true)) && false, all(vec3<bool>(false, true, true)) || false, true), 1i);
    global2 = arg_0;
    var var_2 = !all(!vec2<bool>(false, !var_1.a.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -442f);
}

fn func_1() -> f32 {
    let var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(false, false, false)), false));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(step(-413f, 2198f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))), global1.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f + global1.x) + global1.x) - _wgslsmith_f_op_f32(func_2(Struct_4(vec4<i32>(u_input.a, -21874i, global0[_wgslsmith_index_u32(u_input.c.x, 11u)], u_input.a)), u_input.b))))));
    let var_1 = Struct_1(!vec3<bool>(false, !var_0.x, var_0.x), 1i);
    global0 = array<i32, 11>();
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x * global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -341f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-478f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -275f)), -886f, _wgslsmith_f_op_f32(-2204f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), -2762f)))) - vec4<f32>(_wgslsmith_f_op_f32(func_1()), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-248f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(global2.a), u_input.c.x)))), _wgslsmith_f_op_f32(sign(1178f))));
    var var_1 = Struct_3(global2.a, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 11u)], -1i), Struct_1(vec3<bool>(true, true, true), 5042i), vec3<bool>(true, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))));
    global0 = array<i32, 11>();
    global2 = Struct_4(select(vec4<i32>(26089i, 0i, 2147483647i, ~0i), -(~vec4<i32>(var_1.b, global0[_wgslsmith_index_u32(u_input.b, 11u)], -27419i, 48901i)), !any(select(var_1.c.a.yy, var_1.c.a.zx, vec2<bool>(true, var_1.c.a.x)))));
    var var_2 = global1.wzw;
    global2 = Struct_4(_wgslsmith_add_vec4_i32(var_1.a, vec4<i32>(1i << (countOneBits(u_input.b) % 32u), ~(-1i), _wgslsmith_mod_i32(u_input.d, -1i) >> (u_input.b % 32u), u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 66940u, 3172u), vec4<u32>(31147u, 4294967295u, u_input.c.x, 75275u), vec4<u32>(54322u, u_input.c.x, 4294967295u, 4294967295u)) >> (select(vec4<u32>(1u, u_input.c.x, u_input.b, 112068u), vec4<u32>(83682u, u_input.b, u_input.c.x, u_input.c.x), var_1.c.a.x) % vec4<u32>(32u))), vec4<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(60232u, u_input.c.x, 4294967295u)), ~vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_mod_u32(u_input.b, _wgslsmith_mult_u32(0u, u_input.c.x)), 38886u), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c.x, 1u, 75000u) | vec4<u32>(u_input.b, u_input.b, 102834u, 7181u), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u)), (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<u32>(u_input.b, 11980u, 23502u, 1u)) | vec4<u32>(u_input.b, u_input.b, 14855u, 41625u))), select(~reverseBits(reverseBits(vec3<u32>(u_input.b, 1u, u_input.b))), (_wgslsmith_mod_vec3_u32(vec3<u32>(85558u, 4294967295u, u_input.b), vec3<u32>(1u, 10035u, 0u)) ^ min(vec3<u32>(u_input.b, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, u_input.b, 0u))) << (vec3<u32>(~u_input.c.x, 4294967295u, u_input.c.x) % vec3<u32>(32u)), all(var_1.c.a.xx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(868f + 1717f))), 754f, -1583f)));
}

