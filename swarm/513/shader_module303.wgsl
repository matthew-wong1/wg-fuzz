struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: Struct_1 = Struct_1(854f, vec3<i32>(i32(-2147483648), 1i, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> bool {
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(782f, global0.a.a.a)))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(step(1842f, arg_0))), vec2<bool>(all(vec4<bool>(false, true, false, false)), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), ~(~global0.d) & ~_wgslsmith_mod_u32(abs(0u), u_input.b.x));
    var var_0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.b), global0.b)), _wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-865f)))))))), 4294967295u);
    var var_1 = select(u_input.b, ~select(vec4<u32>(~var_0.d, _wgslsmith_mult_u32(global0.d, global0.d), 4294967295u & arg_1, arg_1), ~(vec4<u32>(4294967295u, arg_1, 68903u, arg_1) ^ vec4<u32>(1u, 74994u, 69940u, 36022u)), vec4<bool>(true, true, true, true)), ~(~(~arg_1)) == 0u);
    let var_2 = select(~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(24451i, arg_2.x), ~vec2<i32>(-1i, 29840i)), arg_2.zy), vec2<i32>(arg_2.x, var_0.a.a.b.x), vec2<bool>(!select(false, true, false) == !any(vec3<bool>(true, false, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1922f, var_0.b.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global0.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(var_0.b)))), true))), _wgslsmith_f_op_f32(f32(-1f) * -1330f), var_1.x);
    return ~global2.b.x == ~var_0.a.b;
}

fn func_2() -> vec2<f32> {
    var var_0 = !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), any(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false))), vec3<bool>(func_3(401f, 0u & global0.d, vec4<i32>(-2147483647i, global2.b.x, 8874i, -1i) ^ vec4<i32>(global2.b.x, 1i, u_input.c, -22940i), 0i), true, any(vec3<bool>(false, true, true))), vec3<bool>(func_3(-1676f, ~17535u, max(vec4<i32>(global2.b.x, global2.b.x, u_input.c, global0.a.c.b.x), vec4<i32>(u_input.c, global0.a.c.b.x, -2147483647i, -37412i)), firstLeadingBit(-2147483647i)), true, any(vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.c, -2534f, false)), 1467f)), global0.a.c.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(603f, global0.a.c.a)))))));
    global1 = array<vec2<bool>, 8>();
    global1 = array<vec2<bool>, 8>();
    var var_2 = false;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(ceil(1111f)));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    global2 = Struct_1(-2645f, select(select(_wgslsmith_mod_vec3_i32(global2.b, vec3<i32>(global2.b.x, global0.a.c.b.x, global0.a.b)), select(vec3<i32>(-15632i, global2.b.x, u_input.a.x), vec3<i32>(u_input.c, global2.b.x, 28710i), vec3<bool>(false, false, true)), true) << (select(vec3<u32>(u_input.b.x, global0.d, 4294967295u), ~vec3<u32>(1u, u_input.b.x, 26626u), true) % vec3<u32>(32u)), vec3<i32>(global0.a.c.b.x, 30133i, _wgslsmith_dot_vec2_i32(countOneBits(global2.b.zy), select(global2.b.zx, vec2<i32>(17303i, 7987i), false))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))));
    var var_1 = global0.a.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, -137f))), _wgslsmith_f_op_f32(457f - -2408f), global0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1029f - global2.a)))))));
    let var_3 = global0.a;
    return StorageBuffer(-global2.b.x, firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d ^ 2303u, _wgslsmith_sub_u32(global0.d, global0.d), _wgslsmith_add_u32(11703u, u_input.b.x), countOneBits(global0.d)), vec4<u32>(11229u, ~4294967295u, global0.d, u_input.b.x), u_input.b)), -134f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, _wgslsmith_div_f32(var_1.a, var_2.x))), ~max(u_input.b.zx, u_input.b.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 8u)];
    let x = u_input.a;
    s_output = func_1();
}

