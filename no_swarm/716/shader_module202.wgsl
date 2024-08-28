struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(-1i, 14666i, -720i), true), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), false), Struct_1(vec3<i32>(1i, 1i, 0i), true), Struct_1(vec3<i32>(1i, 2147483647i, 20076i), false), Struct_1(vec3<i32>(-1i, -29511i, 44441i), true));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec3<u32>) -> bool {
    let var_0 = arg_0;
    global0 = array<Struct_2, 20>();
    global1 = Struct_4(!all(vec3<bool>(var_0.a, arg_0.a || true, global1.a || true)), ~(~(var_0.b & vec2<u32>(4294967295u, arg_2.x))), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -376f) * var_0.e)), _wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_f_op_f32(1f - 566f))));
    global0 = array<Struct_2, 20>();
    let var_1 = true;
    return var_0.a;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec2<u32> {
    let var_0 = max(u_input.b, max(firstTrailingBit(select(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, u_input.b.x, 0i), vec3<i32>(-53370i, arg_0, -1i)), u_input.b, func_3(Struct_4(global1.a, global1.b, global1.c, -661f, 2123f), arg_1, vec3<u32>(global1.b.x, global1.b.x, 1u)))), _wgslsmith_sub_vec3_i32(~vec3<i32>(-1100i, 0i, arg_0), vec3<i32>(max(u_input.b.x, 0i), select(-8979i, u_input.b.x, true), 15162i))));
    global2 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_f_op_f32(-global1.e);
    var var_2 = _wgslsmith_div_f32(1200f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-570f)), _wgslsmith_f_op_f32(trunc(350f)))));
    global1 = Struct_4(true, ~(~select(~global1.b, _wgslsmith_sub_vec2_u32(global1.b, global1.b), vec2<bool>(arg_1.x, arg_1.x))), -1516f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_2.x))))))), -681f);
    return _wgslsmith_add_vec2_u32(abs(~(global1.b | ~vec2<u32>(global1.b.x, 52510u))), global1.b);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> u32 {
    global2 = array<Struct_1, 5>();
    let var_0 = Struct_4(arg_1, func_2(_wgslsmith_div_i32(arg_0 >> (u_input.a % 32u), -1i) | (u_input.b.x & 1i), select(vec2<bool>(all(vec2<bool>(arg_2.b, global1.a)), global1.d < global1.e), select(select(vec2<bool>(arg_2.b, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(arg_1, true), !vec2<bool>(arg_2.b, false)), global1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.c, -1000f), vec2<f32>(-1029f, 583f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e, global1.e) * vec2<f32>(1612f, -1769f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f)), _wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(602f, global1.d)))))));
    let var_1 = var_0;
    var var_2 = global1.b.x;
    let var_3 = 882f;
    return _wgslsmith_mult_u32(var_0.b.x, 15422u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = Struct_4(global1.a, vec2<u32>(_wgslsmith_mult_u32(global1.b.x, ~(~u_input.a)), _wgslsmith_add_u32(func_1(~u_input.b.x, false, global2[_wgslsmith_index_u32(~global1.b.x, 5u)]), global1.b.x)), -1000f, _wgslsmith_f_op_f32(-global1.d), _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(trunc(-357f))));
    global0 = array<Struct_2, 20>();
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    var var_2 = !(!vec4<bool>(any(vec4<bool>(true, true, true, true)), !select(global1.a, global1.a, global1.a), global1.a, true));
    global2 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, select(select(select(vec4<i32>(-1365i, 1i, u_input.b.x, -14261i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(false, false, true, var_1.a)), vec4<i32>(-20247i, 1i, u_input.b.x, u_input.b.x), !global1.a) >> (countOneBits(vec4<u32>(global1.b.x, 1u, 15200u, 1u) & vec4<u32>(36833u, 28166u, 1u, 18535u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, -70997i << (0u % 32u), -u_input.b.x), ~(~vec4<i32>(2147483647i, -2147483647i, -1i, u_input.b.x))), any(select(var_2.zxw, var_2.yxy, !vec3<bool>(true, var_2.x, var_1.a)))));
}

