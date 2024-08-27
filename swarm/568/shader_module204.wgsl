struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: u32 = 1u;

var<private> global3: array<bool, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec3<bool> {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.d.a), vec3<bool>(select(true, global1.c.d, global3[_wgslsmith_index_u32(arg_2.x, 8u)]) & true, all(vec4<bool>(global1.c.b.x, false, true, false)), global1.a.a.x >= _wgslsmith_f_op_f32(abs(1651f))), u_input.b.zz, false), 22614i, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-527f, global1.a.a.x))) + _wgslsmith_f_op_vec2_f32(-global1.c.a)), global1.c.b, reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-58943i, -2147483647i), -global1.c.c)), true), global1.a);
    var var_0 = Struct_2(global1.a, _wgslsmith_add_i32(countOneBits(u_input.a.x), 27455i ^ arg_0.x), global1.d, global1.c);
    var_0 = Struct_2(global1.c, i32(-1i) * -1i, var_0.c, var_0.d);
    global1 = Struct_2(var_0.a, arg_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a.a.x + var_0.c.a.x), 950f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-623f, 1161f)))), select(select(select(global1.d.b, var_0.c.b, var_0.d.b), !var_0.c.b, global1.c.b), select(global1.c.b, !var_0.c.b, true), true), var_0.d.c, var_0.a.a.x != -694f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.d.a.x + -767f), _wgslsmith_div_f32(-915f, var_0.d.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f + var_0.d.a.x) * _wgslsmith_f_op_f32(-654f + 1051f))), !select(vec3<bool>(true, true, true), select(var_0.a.b, vec3<bool>(arg_1.x, var_0.d.d, true), vec3<bool>(true, var_0.a.b.x, false)), select(global1.a.b, vec3<bool>(false, false, global1.c.b.x), true)), vec2<i32>(57278i, ~u_input.b.x), !global3[_wgslsmith_index_u32(arg_2.x, 8u)]));
    var var_1 = vec4<i32>(select(4949i, -14250i, arg_2.x > arg_2.x), var_0.b, ~(-24327i), ~(-58115i));
    return !select(global1.d.b, select(select(vec3<bool>(true, true, true), !global1.d.b, select(vec3<bool>(var_0.a.b.x, true, global1.d.d), global1.d.b, vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 8u)], true, false))), !var_0.a.b, select(global1.c.b, vec3<bool>(false, var_0.c.b.x, global3[_wgslsmith_index_u32(0u, 8u)]), true)), true);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(global1.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.a.x, 171f), global1.c.a, global1.c.b.zy))))))), select(global1.a.b, func_3(u_input.b.zy, vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0.x, 8u)]), _wgslsmith_div_vec3_u32(arg_0, vec3<u32>(arg_0.x, arg_0.x, u_input.d))), global1.a.b), ~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(max(u_input.a, global1.c.c), abs(vec2<i32>(u_input.a.x, -25796i))), abs(global1.d.c | vec2<i32>(global1.d.c.x, -2147483647i))), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    global1 = Struct_2(arg_0, _wgslsmith_clamp_i32(-7708i, _wgslsmith_div_i32(-(~(-15749i)), arg_0.c.x), 45861i), arg_0, func_2(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(1u, u_input.d, u_input.c) >> (vec3<u32>(1u, u_input.d, u_input.d) % vec3<u32>(32u)))));
    let var_0 = -1198f;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1046f, global1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f + -314f) + _wgslsmith_f_op_f32(global1.d.a.x + global1.a.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * var_0) - -433f))), -490f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-384f, func_2(vec3<u32>(1u, 0u, u_input.c)).a.x) * -635f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-943f, _wgslsmith_f_op_f32(258f * 1000f))))));
    var var_2 = 13011u;
    var_2 = ~(u_input.c >> (1u % 32u));
    return _wgslsmith_f_op_f32(751f * 1079f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_1(global1.a, abs(-vec3<i32>(0i, u_input.a.x, u_input.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f)), global1.c.a.x)), global1.a.b, ~u_input.b.yy, true);
    global3 = array<bool, 8>();
    global3 = array<bool, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(global1.c.a));
    let var_2 = vec2<u32>(u_input.c, (min(u_input.d & u_input.c, u_input.c) << (max(_wgslsmith_clamp_u32(u_input.d, u_input.d, 0u), 1u) % 32u)) | _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), u_input.c), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.d), vec3<u32>(u_input.c, u_input.c, 18335u), vec3<u32>(u_input.c, 3173u, 1u)), vec3<u32>(u_input.c, 39337u, u_input.d))));
    var var_3 = -61672i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

