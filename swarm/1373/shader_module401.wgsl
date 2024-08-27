struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 22878u;

var<private> global2: array<i32, 12>;

var<private> global3: array<Struct_4, 20>;

var<private> global4: vec3<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -259f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1196f * arg_1.b.x))), all(!(!select(vec2<bool>(true, arg_0.a.c.b), vec2<bool>(arg_0.a.a.b, true), vec2<bool>(false, global0.a.c.b)))));
    let var_1 = global0.a;
    global1 = max(u_input.a.x, ~(~max(global4.x, global4.x)));
    var var_2 = select(vec3<bool>(false, true, arg_0.a.c.b || (true && (1i >= global0.b))), vec3<bool>(true, all(select(!vec3<bool>(global0.a.c.b, false, var_1.c.b), select(vec3<bool>(true, var_1.a.b, true), vec3<bool>(false, arg_1.a.b, var_1.a.b), vec3<bool>(false, true, global0.a.a.b)), select(vec3<bool>(arg_0.a.a.b, global0.a.a.b, var_0.b), vec3<bool>(false, arg_1.a.b, true), vec3<bool>(true, false, true)))), !(var_1.a.b & !var_0.b)), select(!(!(!vec3<bool>(global0.a.c.b, var_0.b, true))), !(!vec3<bool>(arg_1.c.b, global0.a.c.b, true)), !(!(!vec3<bool>(false, var_0.b, arg_0.a.c.b)))));
    let var_3 = global4.x;
    return ~arg_0.b;
}

fn func_2() -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, global0.a.a.a.x, global0.a.a.a.x)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.c.a.x, global0.a.a.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(2633f, -772f) * global0.a.c.a.zz))), global0.a.c), -(~_wgslsmith_div_i32(func_3(Struct_3(global0.a, global0.b), Struct_2(global0.a.c, global0.a.b, Struct_1(global0.a.a.a, global0.a.a.b))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.x, global4.x), 12u)])));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = global0.a;
    global0 = func_2();
    global2 = array<i32, 12>();
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(floor(-114f)) != var_0.b.x, false, 5609i >= firstTrailingBit(2147483647i), all(vec2<bool>(4294967295u != _wgslsmith_add_u32(1u, global4.x), false)));
    global1 = ~(~arg_0);
    return Struct_3(func_2().a, _wgslsmith_div_i32(abs(global0.b), reverseBits(global2[_wgslsmith_index_u32(0u, 12u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(27235u, global4.x, u_input.a.x, 4294967295u) | vec4<u32>(u_input.a.x, global4.x, 85017u, global4.x))), vec4<u32>(35692u, _wgslsmith_mod_u32(global4.x, 4294967295u & global4.x), global4.x, 2907u)));
    var var_1 = func_1(countOneBits(~_wgslsmith_mult_u32(0u, u_input.a.x))).a.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.a.x, 248f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.a.a.a.yx))))))));
    global4 = _wgslsmith_sub_vec3_u32(u_input.a.wyy, abs(_wgslsmith_div_vec3_u32(max(abs(vec3<u32>(u_input.a.x, 0u, 60519u)), _wgslsmith_clamp_vec3_u32(u_input.a.zyy, u_input.a.wxy, u_input.a.zxz)), ~u_input.a.ywz)));
    var var_3 = Struct_2(func_1(~(~(~u_input.a.x))).a.c, func_1(~(u_input.a.x ^ ~u_input.a.x)).a.c.a.yy, func_1(u_input.a.x).a.a);
    global2 = array<i32, 12>();
    var var_4 = !(!vec3<bool>(!(var_1.b & true), select(37061u, u_input.a.x, false) != global4.x, false));
    var_3 = Struct_2(func_2().a.a, _wgslsmith_f_op_vec2_f32(-func_2().a.c.a.yx), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * 1000f) + _wgslsmith_div_f32(-1626f, var_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, var_3.c.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1376f, -1141f)))), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-859f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(1153f * func_2().a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(289f, -1767f))) + func_2().a.c.a.x)));
}

