struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<f32>(-619f, -444f)), Struct_1(vec2<f32>(-1050f, 386f)), Struct_1(vec2<f32>(-479f, -706f)), Struct_1(vec2<f32>(1711f, 1566f)), Struct_1(vec2<f32>(-807f, -1006f)), Struct_1(vec2<f32>(-2609f, 750f)), Struct_1(vec2<f32>(-1366f, -679f)), Struct_1(vec2<f32>(971f, -805f)), Struct_1(vec2<f32>(1000f, 322f)), Struct_1(vec2<f32>(-797f, -184f)), Struct_1(vec2<f32>(750f, 1797f)));

var<private> global1: vec2<f32> = vec2<f32>(467f, -223f);

var<private> global2: array<vec3<f32>, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_add_vec2_u32(~(~min(vec2<u32>(var_0.x, u_input.d.x), vec2<u32>(u_input.d.x, 18579u))), vec2<u32>(var_0.x, _wgslsmith_mod_u32(countOneBits(4294967295u), 1u))) ^ max(u_input.d.yx, _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0.x, var_0.x)), u_input.d.xx ^ vec2<u32>(u_input.d.x, 79422u)));
    let var_2 = _wgslsmith_div_i32(u_input.c.x, ~(~u_input.c.x));
    var var_3 = global1.x;
    global0 = array<Struct_1, 11>();
    return global0[_wgslsmith_index_u32(var_1.x, 11u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), arg_0.a.x)))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.x + 1427f), _wgslsmith_f_op_f32(arg_1.x + var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -175f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(arg_1.x, -2956f)) * var_0.a)));
    global1 = _wgslsmith_f_op_vec2_f32(arg_0.a * func_2().a);
    global0 = array<Struct_1, 11>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a));
    return select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 0i, _wgslsmith_sub_i32(1i, -18963i)), vec3<i32>(10079i, i32(-1i) * -2147483647i, u_input.a.x)) << (u_input.d.wyx % vec3<u32>(32u)), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x), true);
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(239f, 1360f), 827f));
    global2 = array<vec3<f32>, 18>();
    var var_1 = _wgslsmith_div_u32(60288u, _wgslsmith_mod_u32(u_input.d.x, ~u_input.d.x));
    var var_2 = ~u_input.d.x;
    var var_3 = func_3(func_2(), global2[_wgslsmith_index_u32(u_input.d.x, 18u)], u_input.d);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2160f, 773f, var_0.a.x, -156f) - vec4<f32>(1011f, -171f, -1077f, var_0.a.x)), vec4<f32>(var_0.a.x, global1.x, var_0.a.x, -1799f)), vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), var_0.a.x, -1000f, global1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(1000f - var_0.a.x), _wgslsmith_div_f32(global1.x, -1000f), -1607f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -606f, -389f, -1432f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, true, true))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, true, true))), vec4<f32>(func_2().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f) - -479f)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(-1848f));
    global0 = array<Struct_1, 11>();
    var var_2 = func_2();
    var var_3 = -1i >= firstTrailingBit(-1i);
    let var_4 = _wgslsmith_dot_vec4_i32(u_input.b, -(~u_input.c) ^ abs(select(_wgslsmith_div_vec4_i32(u_input.c, u_input.b), u_input.b, true)));
    var var_5 = !(!vec4<bool>(true, true, true, all(vec2<bool>(true, false))));
    let var_6 = Struct_1(var_0.xz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(_wgslsmith_sub_i32(abs(-24282i), var_4)), 24105i, -var_4));
}

