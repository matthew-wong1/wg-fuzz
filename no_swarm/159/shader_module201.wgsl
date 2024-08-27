struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -204f;

var<private> global1: array<u32, 4>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    let var_0 = Struct_1(u_input.c.x, ~(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(0u, u_input.b), 4u)], 4u)]) & abs(vec3<u32>(global1[_wgslsmith_index_u32(20833u, 4u)], 4294967295u, 1u))));
    var var_1 = var_0;
    return -1161f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> vec4<f32> {
    let var_0 = 1u != arg_0.b.x;
    var var_1 = 42988u;
    var var_2 = !(!(!vec3<bool>(var_0, !var_0, select(true, true, var_0))));
    global1 = array<u32, 4>();
    var var_3 = !(!(!any(!vec3<bool>(var_2.x, var_2.x, true))));
    return arg_1;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_1(u_input.a, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15388u, 4u)], 4u)], 1u, u_input.b), vec3<u32>(86274u, 1u, 24725u), vec3<u32>(0u, 3214u, u_input.b)) | min(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], u_input.b, u_input.b), ~vec3<u32>(72241u, u_input.b, 1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1203f * _wgslsmith_f_op_f32(sign(827f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(219f, -1000f, false)))), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(707f, -546f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -784f, -255f) + vec3<f32>(367f, -472f, 147f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1447f, -222f, 1458f))), vec3<f32>(1000f, _wgslsmith_f_op_f32(1000f - -740f), _wgslsmith_f_op_f32(sign(-504f))), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_div_f32(-2201f, -783f), _wgslsmith_f_op_f32(func_3()), 581f))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(var_0 + var_0), Struct_1(u_input.a, vec3<u32>(21413u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 1u)), Struct_2(var_0.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(400f))), var_0.x, _wgslsmith_f_op_f32(-var_0.x))));
    global0 = _wgslsmith_f_op_f32(-var_0.x);
    global1 = array<u32, 4>();
    let var_2 = any(!(!vec2<bool>(false, all(vec3<bool>(false, false, false)))));
    return Struct_2(_wgslsmith_f_op_f32(-var_0.x), vec3<f32>(962f, _wgslsmith_f_op_f32(f32(-1f) * -160f), var_0.x));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    return arg_0;
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(func_2());
    var var_1 = !any(select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), true), vec4<bool>(all(vec4<bool>(false, true, true, true)), select(false, false, true), true, true), vec4<bool>(all(vec2<bool>(true, false)), var_0.b.x < -750f, select(false, false, false), true)));
    var_1 = true;
    let var_2 = max(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b | 48203u), vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(~firstTrailingBit(u_input.b), global1[_wgslsmith_index_u32(u_input.b, 4u)])), vec2<u32>(u_input.b, 70087u));
    var var_3 = Struct_1(1i, ~select(vec3<u32>(firstTrailingBit(29897u), 4294967295u, 3299u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 53586u, u_input.b), ~vec3<u32>(18562u, 0u, var_2.x)), any(vec2<bool>(true, true))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(-1i, vec3<u32>(_wgslsmith_add_u32(var_2.x, global1[_wgslsmith_index_u32(u_input.b, 4u)]), 7360u, select(1u, u_input.b, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(u_input.c.x, var_3.b), vec4<f32>(var_0.a, -149f, 355f, -682f), _wgslsmith_f_op_vec3_f32(-var_0.b), vec4<f32>(var_0.a, var_0.a, -730f, 1156f)))), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, -1000f, -1000f, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2192f, 1569f, -1000f, var_0.a) - vec4<f32>(var_0.b.x, var_0.a, 918f, var_0.a)))))), Struct_1(var_3.a, var_3.b), func_5(Struct_2(135f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1543f, 2147f, var_0.a) - var_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_mult_i32(2147483647i, u_input.a), vec3<u32>(~u_input.b << (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(74721u, var_0.b.b.x), var_0.b.b.x, 10971u ^ var_0.b.b.x) % 32u), 4294967295u, _wgslsmith_add_u32(u_input.b, ~firstLeadingBit(1u))));
    let var_2 = Struct_1(1i ^ var_1.a, ~var_1.b);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1742f);
    var var_3 = var_0.c;
    var var_4 = select(select(vec3<bool>(true && select(false, true, true), true, all(vec4<bool>(false, true, false, true))), select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), all(vec2<bool>(true, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), select(true, select(false, true, false), true) || !(var_0.a.x <= 326f)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), true);
    var var_5 = -var_0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, var_1.a), vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-35158i, u_input.c.x), u_input.c)), ~var_0.b.a)), max(min(1u, var_1.b.x), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.b.b.x, var_1.b.x, 98130u), vec4<u32>(4294967295u, 6821u, var_2.b.x, var_1.b.x)), 4u)]), ~(~_wgslsmith_sub_vec3_u32(var_1.b, var_2.b)) & var_1.b, var_2.a);
}

