struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_5 = Struct_5(Struct_2(vec4<u32>(32043u, 1u, 1u, 44220u), Struct_1(vec4<u32>(1u, 74896u, 25505u, 4294967295u), vec3<bool>(false, false, true), -54079i)), 39706u, 54995u, Struct_1(vec4<u32>(1259u, 1u, 0u, 134130u), vec3<bool>(true, true, false), 0i));

var<private> global2: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false));

var<private> global3: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = arg_1.a.a.xyy;
    let var_1 = Struct_5(Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~1u, _wgslsmith_dot_vec4_u32(global1.d.a, vec4<u32>(var_0.x, arg_1.a.a.x, 4294967295u, arg_1.c)), ~0u), firstTrailingBit(vec4<u32>(0u, global1.d.a.x, 0u, 41478u))), global1.d), global1.d.a.x, 4294967295u & _wgslsmith_dot_vec2_u32(arg_1.a.b.a.zy, arg_1.a.b.a.zx), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(abs(4294967295u), abs(85889u), arg_1.a.a.x ^ 0u, select(var_0.x, 19092u, arg_1.a.b.b.x)), vec4<u32>(arg_1.b, countOneBits(1u), _wgslsmith_dot_vec3_u32(global1.a.a.zxx, vec3<u32>(0u, 1u, arg_1.a.b.a.x)), _wgslsmith_div_u32(global1.d.a.x, var_0.x))), arg_1.d.b, 55592i));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(769f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1042f, 321f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-762f, 134f), -733f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-117f, -2256f))), -329f))));
    let var_2 = 4294967295u;
    global2 = array<vec4<bool>, 15>();
    return vec2<bool>(true, global1.d.b.x);
}

fn func_2() -> Struct_5 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(min(global1.a.b.c, _wgslsmith_div_i32(global1.d.c, 12766i)), -1i), ~(global1.d.c << (global1.a.a.x % 32u)), max(min(0i, ~(-7632i)), i32(-1i) * -2408i));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(818f, -457f), vec2<f32>(1170f, -1463f)), vec2<f32>(_wgslsmith_f_op_f32(step(916f, 648f)), _wgslsmith_f_op_f32(f32(-1f) * -847f)), !global1.a.b.b.x || true)))), select(firstLeadingBit(~select(global1.d.a.zx, global1.d.a.zy, true)), global1.d.a.yz, func_3(-28479i, Struct_5(Struct_2(vec4<u32>(global1.d.a.x, global1.d.a.x, global1.b, global1.c), global1.a.b), 76468u, 64036u | global1.a.b.a.x, global1.a.b))), global1.a.b, global1.a, max(firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(global1.a.a.x, global1.d.a.x), 1u)), ~max(vec2<u32>(global1.d.a.x, 4294967295u), abs(global1.d.a.yw))));
    let var_2 = global1.d.a;
    var var_3 = func_3(_wgslsmith_div_i32(-28355i, var_0.x << (var_2.x % 32u)), Struct_5(Struct_2(vec4<u32>(var_2.x, 4294967295u, var_2.x, 0u) << ((vec4<u32>(122586u, var_1.e.x, 0u, global1.a.a.x) | vec4<u32>(4294967295u, 4294967295u, global1.d.a.x, var_2.x)) % vec4<u32>(32u)), Struct_1(~var_1.d.a, select(vec3<bool>(false, global1.a.b.b.x, global1.a.b.b.x), var_1.c.b, global1.d.b.x), _wgslsmith_clamp_i32(34844i, u_input.a.x, global1.a.b.c))), 4294967295u, 1u & abs(firstTrailingBit(0u)), var_1.d.b));
    global2 = array<vec4<bool>, 15>();
    return Struct_5(Struct_2(vec4<u32>(0u, 4294967295u, 1u, 0u) & var_1.c.a, Struct_1(select(~var_1.d.a, min(var_1.d.b.a, global1.d.a), !var_3.x), vec3<bool>(-7690i != var_0.x, false, var_3.x), 2147483647i)), ~4294967295u, var_1.b.x, var_1.c);
}

fn func_1(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = reverseBits(firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), abs(u_input.a.yy)))) << (10657u % 32u);
    global2 = array<vec4<bool>, 15>();
    var var_1 = 1i;
    global1 = func_2();
    global3 = array<vec3<bool>, 11>();
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) * -1188f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -218f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f - 138f)) - 965f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1946f * 198f))) - -1644f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1(global1.d.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(664f - 1737f))))));
    let var_1 = func_2().a;
    var var_2 = var_1.b.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(min(global1.a.a.x & var_1.b.a.x, 0u >> (var_1.b.a.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1f))));
}

