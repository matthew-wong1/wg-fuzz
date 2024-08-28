struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-1425f, 0i, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = Struct_3(global0.a);
    var var_0 = u_input.b;
    let var_1 = vec3<bool>(false, global0.a.c, select(false, global0.a.c, !global0.a.c));
    var_0 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~u_input.b), u_input.b), vec3<u32>(abs(0u & arg_0.x), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 96469u, 0u), vec4<u32>(arg_0.x, 0u, 4294967295u, 67553u)))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1012f, -420f))), -742f, global0.a.c))));
    return _wgslsmith_f_op_f32(-global0.a.a);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(global0.a.a));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-759f))), 27489i, false));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b, u_input.a.x, 4294967295u))) + _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1135f + var_0) - _wgslsmith_f_op_f32(-var_0))), -2147483647i, true));
    var var_1 = reverseBits(select(vec4<i32>(_wgslsmith_clamp_i32(-1i, 1i, 30176i >> (0u % 32u)), -1i, ~(-global0.a.b), -_wgslsmith_clamp_i32(global0.a.b, global0.a.b, -2147483647i)), ~vec4<i32>(_wgslsmith_div_i32(global0.a.b, 10938i), -2147483647i, max(1i, global0.a.b), i32(-1i) * -1i), !vec4<bool>(true, any(vec4<bool>(global0.a.c, true, global0.a.c, global0.a.c)), false, global0.a.c)));
    var_1 = select(~(-((vec4<i32>(global0.a.b, global0.a.b, global0.a.b, -2147483647i) ^ vec4<i32>(2147483647i, 0i, 76444i, -9427i)) ^ select(vec4<i32>(16505i, 2147483647i, 0i, var_1.x), vec4<i32>(0i, var_1.x, global0.a.b, 805i), vec4<bool>(global0.a.c, global0.a.c, true, global0.a.c)))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(23103i, global0.a.b, global0.a.b, -66702i) | _wgslsmith_mult_vec4_i32(vec4<i32>(-4411i, 2147483647i, global0.a.b, -2147483647i), vec4<i32>(26142i, var_1.x, global0.a.b, var_1.x)), firstTrailingBit(select(vec4<i32>(global0.a.b, 2147483647i, 2147483647i, 29733i), vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x), vec4<bool>(global0.a.c, false, global0.a.c, true))), min(~vec4<i32>(39220i, var_1.x, var_1.x, var_1.x), -vec4<i32>(var_1.x, global0.a.b, var_1.x, global0.a.b))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.a.b, global0.a.b, var_1.x, -2147483647i), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -1i, global0.a.b, -16049i), vec4<i32>(-2472i, 1i, -7089i, -71752i), vec4<i32>(global0.a.b, -58561i, var_1.x, -2147483647i))))), select(vec4<bool>(all(!vec4<bool>(global0.a.c, global0.a.c, global0.a.c, global0.a.c)), !global0.a.c | (global0.a.c || global0.a.c), all(select(vec2<bool>(true, global0.a.c), vec2<bool>(true, global0.a.c), global0.a.c)), all(!vec4<bool>(global0.a.c, global0.a.c, global0.a.c, false))), vec4<bool>(~u_input.a.x > _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), u_input.a), global0.a.c, true, global0.a.c), global0.a.c));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1689f)) + _wgslsmith_f_op_f32(select(var_0, global0.a.a, global0.a.c))), _wgslsmith_f_op_f32(round(-924f)), false))), -23433i, true);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    global0 = Struct_3(global0.a);
    var var_0 = func_2();
    var var_1 = Struct_3(func_2());
    var_0 = global0.a;
    var_1 = Struct_3(func_2());
    return Struct_3(Struct_1(var_1.a.a, ~0i, !var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(u_input.a, Struct_3(global0.a), Struct_1(_wgslsmith_f_op_f32(floor(global0.a.a)), -min(min(global0.a.b, 1i), 0i), true));
    let var_1 = func_1(var_0.b.a, _wgslsmith_div_f32(var_0.c.a, global0.a.a));
    let var_2 = Struct_2(378f, !select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, global0.a.c, global0.a.c), vec3<bool>(true, false, false), true), !vec3<bool>(true, var_0.b.a.c, global0.a.c)), vec3<bool>(var_0.b.a.c, true, false), false), Struct_1(-566f, _wgslsmith_dot_vec3_i32(~(vec3<i32>(global0.a.b, global0.a.b, global0.a.b) >> (vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) % vec3<u32>(32u))), vec3<i32>(var_1.a.b, ~global0.a.b, abs(var_0.c.b))), all(!(!vec3<bool>(var_1.a.c, true, var_1.a.c)))), Struct_1(var_0.b.a.a, _wgslsmith_mod_i32(-5286i, -var_0.c.b), var_1.a.c), Struct_1(-546f, func_2().b, !func_2().c | !global0.a.c));
    let var_3 = vec4<u32>(var_0.a.x, ~0u, 1u, reverseBits(u_input.a.x));
    let var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.a + -490f), global0.a.a, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(var_3, ~(vec4<u32>(var_3.x, u_input.b, 0u, var_0.a.x) | var_3)), var_3 & ~vec4<u32>(85796u, 55920u, u_input.b, var_3.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-164f, 438f, -740f, var_0.b.a.a)))) * vec4<f32>(_wgslsmith_f_op_f32(step(global0.a.a, var_2.e.a)), -591f, var_0.c.a, _wgslsmith_f_op_f32(-1256f - -801f))))));
}

