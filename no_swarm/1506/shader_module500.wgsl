struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: Struct_2 = Struct_2(-4060i, Struct_1(vec4<f32>(1000f, 2750f, 461f, 1285f), vec3<u32>(0u, 1u, 26462u), vec3<u32>(4294967295u, 12410u, 49470u)), vec2<bool>(false, false), 943f);

var<private> global2: Struct_1 = Struct_1(vec4<f32>(1154f, -992f, 1000f, -203f), vec3<u32>(1u, 0u, 0u), vec3<u32>(87245u, 4294967295u, 12783u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_1(global1.b.a, global1.b.b, global2.c);
    let var_1 = vec4<i32>(34728i, u_input.a.x, u_input.a.x, 12870i);
    return vec4<bool>(all(!select(select(vec3<bool>(global1.c.x, global1.c.x, global1.c.x), vec3<bool>(false, true, global1.c.x), vec3<bool>(true, true, global1.c.x)), select(vec3<bool>(true, true, global1.c.x), vec3<bool>(global1.c.x, false, false), global1.c.x), vec3<bool>(global1.c.x, true, false))), global1.c.x, !(!(_wgslsmith_f_op_f32(global2.a.x * -374f) <= _wgslsmith_f_op_f32(trunc(-1000f)))), true);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_2) -> i32 {
    return -global1.a;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = global1.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.a * global1.b.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1299f, 786f, 2106f) * global1.b.a)), vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-836f + arg_0), _wgslsmith_f_op_f32(select(global2.a.x, arg_0, false)), _wgslsmith_f_op_f32(floor(1000f))))));
    global0 = array<i32, 19>();
    global1 = Struct_2(func_4(_wgslsmith_f_op_f32(-global1.d), Struct_3(1i), func_3(global1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b.a.zz, vec2<f32>(arg_0, var_1.x)))), Struct_2(firstTrailingBit(_wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(24218u, 19u)])), global1.b, !select(vec2<bool>(global1.c.x, true), vec2<bool>(false, true), vec2<bool>(global1.c.x, true)), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(trunc(-655f))))), global1.b, global1.c, 1437f);
    let var_2 = true;
    return Struct_2(i32(-1i) * -69125i, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), 971f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-390f, global1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f))), vec3<u32>((global2.b.x >> (57634u % 32u)) << (50121u % 32u), 0u, global2.b.x), max(vec3<u32>(4294967295u, countOneBits(global2.c.x), _wgslsmith_mod_u32(global2.c.x, global2.c.x)), vec3<u32>(reverseBits(1u), 0u | global2.c.x, global2.b.x))), global1.c, _wgslsmith_f_op_f32(round(global2.a.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_1(global2.a, global2.c, ~(~vec3<u32>(_wgslsmith_clamp_u32(arg_1.x, 4294967295u, arg_2), _wgslsmith_mod_u32(51457u, arg_1.x), abs(arg_1.x))));
    global2 = Struct_1(global1.b.a, vec3<u32>(~arg_2, _wgslsmith_dot_vec3_u32(~vec3<u32>(81109u, global1.b.b.x, global2.b.x), ~(~vec3<u32>(4294967295u, 67334u, 4294967295u))), firstTrailingBit(4294967295u)), vec3<u32>(4294967295u, ~20341u, global2.b.x) | global1.b.c);
    global0 = array<i32, 19>();
    global1 = func_2(var_0.a.x);
    global0 = array<i32, 19>();
    return vec3<bool>(arg_3.x, ((global1.c.x | global1.c.x) | any(!vec4<bool>(arg_3.x, global1.c.x, true, global1.c.x))) && func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1356f - global1.b.a.x), global2.a.x, all(global1.c)))).c.x, all(!vec4<bool>(all(vec2<bool>(arg_3.x, arg_3.x)), arg_3.x, !global1.c.x, true)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = global2.a.zx;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + func_2(arg_0.a.x).b.a.x), _wgslsmith_f_op_f32(417f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.x)))));
    global2 = Struct_1(global1.b.a, ~firstTrailingBit(vec3<u32>(arg_0.c.x, global1.b.c.x, 7992u)) & global2.b, arg_0.c);
    var var_2 = 2147483647i;
    var_2 = -2147483647i;
    return func_2(_wgslsmith_f_op_f32(ceil(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(Struct_1(global1.b.a, global2.b, ~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(96278u, global1.b.b.x, 0u)), vec3<u32>(global2.c.x, 65708u, 12148u) << (global1.b.c % vec3<u32>(32u)))), !(!select(func_1(u_input.a, vec2<u32>(1u, 38253u), 51091u, vec2<bool>(global1.c.x, global1.c.x)), !vec3<bool>(global1.c.x, global1.c.x, global1.c.x), global1.c.x)));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global2.a, global1.b.a, vec4<bool>(all(!global1.c), 767f <= global1.b.a.x, !global1.c.x, any(vec3<bool>(global1.c.x, global1.c.x, true))))), _wgslsmith_sub_vec3_u32(global2.c, vec3<u32>(global2.b.x, min(4294967295u, global2.b.x >> (global2.c.x % 32u)), 6552u)), global2.b);
    global1 = func_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.d))), global1.b.a.x)).d);
    global1 = Struct_2(~(-17978i), func_2(207f).b, vec2<bool>(true, false), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_0 = Struct_2(_wgslsmith_add_i32((~u_input.a.x | u_input.a.x) << (_wgslsmith_div_u32(~global2.c.x, 4294967295u) % 32u), ~(~(-16204i))), global1.b, !(!vec2<bool>(func_3(-716f, global1.b.a.yw).x, global1.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global2.a.x)), -1682f)));
    global0 = array<i32, 19>();
    var var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(ceil(var_0.b.a.x))).a);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, abs(-44613i) & func_4(_wgslsmith_f_op_f32(1450f * global2.a.x), Struct_3(2147483647i), vec4<bool>(global1.c.x, global1.c.x, var_0.c.x, true), var_0), ~func_2(-1000f).a, 39373i), vec4<i32>(-10539i << (firstTrailingBit(56609u) % 32u), 1i, ~(~2147483647i), -48428i));
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(114f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, 1353f, global2.a.x) - vec3<f32>(func_5(global1.b, vec3<bool>(var_0.c.x, false, var_0.c.x)).b.a.x, 238f, -427f)));
}

