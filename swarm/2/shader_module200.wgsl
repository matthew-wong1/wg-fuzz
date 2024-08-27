struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 21> = array<f32, 21>(-288f, -249f, -851f, -620f, 122f, -941f, 1532f, -1030f, -1001f, 2286f, -423f, -1802f, -2486f, -168f, -446f, 1723f, 360f, 1000f, 357f, 352f, 2316f);

var<private> global2: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-349f, _wgslsmith_f_op_f32(floor(-1514f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 21u)])))));
    let var_1 = arg_0;
    var var_2 = var_1;
    global0 = arg_0;
    let var_3 = Struct_1(global3.x);
    return vec3<bool>(false || all(!vec3<bool>(true, arg_1.a, var_3.a)), global3.x, !arg_0.a);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec3_u32(select(~vec3<u32>(~1u, u_input.c.x, u_input.b.x >> (34316u % 32u)), u_input.b << (vec3<u32>(firstTrailingBit(u_input.c.x), 113389u, select(u_input.b.x, u_input.c.x, false)) % vec3<u32>(32u)), select(!func_3(arg_1, Struct_1(true)), func_3(arg_1, arg_1), arg_1.a)), u_input.c.xyy);
    var var_1 = -779f;
    var var_2 = -7556i;
    var var_3 = global2[_wgslsmith_index_u32(~1u, 21u)];
    var_0 = vec3<u32>(var_0.x, 1u, u_input.c.x & (_wgslsmith_div_u32(var_0.x, ~3615u) >> (max(u_input.b.x, ~var_0.x) % 32u)));
    return !(!vec3<bool>(true, true, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 21u)]) != global1[_wgslsmith_index_u32(4294967295u, 21u)]));
}

fn func_1() -> vec3<i32> {
    var var_0 = select(vec4<bool>(true, global0.a | any(vec3<bool>(false, true, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global1[_wgslsmith_index_u32(1u, 21u)]) + 169f) <= _wgslsmith_f_op_f32(-483f * _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 21u)]))), any(select(!vec3<bool>(global0.a, false, global3.x), func_2(-2147483647i, Struct_1(global3.x)), true))), select(select(select(select(vec4<bool>(global3.x, global3.x, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global3.x, global0.a), vec4<bool>(false, global3.x, global3.x, true)), !vec4<bool>(true, true, global3.x, true), true), vec4<bool>(global0.a, true, !global3.x, all(vec4<bool>(true, global0.a, global0.a, global0.a))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(false, global3.x, true, global3.x)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, global3.x, global0.a), vec4<bool>(global3.x, global0.a, true, global0.a)), !global0.a)), vec4<bool>(global0.a, any(vec2<bool>(true, true)), false, all(!vec2<bool>(global0.a, global0.a))), select(select(!vec4<bool>(global3.x, global0.a, false, false), vec4<bool>(global0.a, false, global0.a, false), !vec4<bool>(global3.x, global0.a, false, global3.x)), !(!vec4<bool>(false, global3.x, false, global0.a)), !global0.a)), func_3(Struct_1(true), Struct_1(false)).x);
    var var_1 = u_input.a;
    global1 = array<f32, 21>();
    var var_2 = Struct_1(true);
    var var_3 = false;
    return abs(vec3<i32>(_wgslsmith_add_i32(1i, -u_input.a | 9697i), abs(_wgslsmith_clamp_i32(~u_input.a, _wgslsmith_sub_i32(-2147483647i, 0i), min(u_input.a, u_input.a))), firstTrailingBit(_wgslsmith_sub_i32(~0i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!all(!vec3<bool>(false, false, global0.a)));
    let var_1 = var_0;
    let var_2 = var_1;
    global2 = array<vec2<bool>, 21>();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -703f), global1[_wgslsmith_index_u32(u_input.c.x << (23143u % 32u), 21u)])), global1[_wgslsmith_index_u32(84708u, 21u)], global0.a)))), select(_wgslsmith_div_vec4_i32(vec4<i32>(-31725i, -51005i, abs(19874i), var_3.x), vec4<i32>(func_1().x, -var_3.x, -u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a))), max(vec4<i32>(-u_input.a, var_3.x, -u_input.a, var_3.x), vec4<i32>(-1i) * -vec4<i32>(var_3.x, u_input.a, 35460i, 1i)), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, global0.a, false, true)), vec4<bool>(func_3(Struct_1(false), Struct_1(false)).x, true, var_3.x < u_input.a, var_0.a), !select(var_1.a, global3.x, var_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(59666u, 21u)])) - vec2<f32>(_wgslsmith_f_op_f32(step(1419f, global1[_wgslsmith_index_u32(70948u, 21u)])), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(52705u, 21u)], 246f))))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~var_3.x, _wgslsmith_mod_i32(var_3.x, u_input.a), 2147483647i, 0i & u_input.a), countOneBits(vec4<i32>(var_3.x, 60805i, var_3.x, u_input.a))), -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(719f, global1[_wgslsmith_index_u32(13241u, 21u)], 1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)] - global1[_wgslsmith_index_u32(u_input.c.x, 21u)]), _wgslsmith_f_op_f32(trunc(-685f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 1245f, global1[_wgslsmith_index_u32(37087u, 21u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(22374u, 21u)], global1[_wgslsmith_index_u32(36406u, 21u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1037f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]) - vec3<f32>(-258f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(85511u, 21u)])) * vec3<f32>(-691f, 817f, -240f)))));
}

