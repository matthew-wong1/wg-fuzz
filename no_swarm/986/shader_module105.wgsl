struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<f32>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = select(select(vec2<bool>(-517f >= _wgslsmith_f_op_f32(floor(-1371f)), true), select(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), true), !vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), false)), vec2<bool>(arg_0, -1i >= u_input.b), arg_0), vec2<bool>(all(!vec4<bool>(arg_0, true, arg_0, false)), arg_0)), vec2<bool>(arg_0, arg_0), true);
    global0 = firstTrailingBit(min(abs(select(vec4<i32>(u_input.a, 0i, u_input.b, u_input.a), vec4<i32>(2147483647i, -2622i, 0i, global0.x) << (vec4<u32>(59706u, 46014u, 34308u, 1u) % vec4<u32>(32u)), all(vec3<bool>(true, true, arg_0)))), -vec4<i32>(4748i, i32(-1i) * -3294i, i32(-1i) * -10608i, countOneBits(13278i))));
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, firstTrailingBit(4294967295u), _wgslsmith_mod_u32(~1u, 1u << (0u % 32u))), 16u)]);
    var var_2 = 0u < firstLeadingBit(firstTrailingBit(1u));
    let var_3 = abs(vec4<u32>(max(var_1.a.b.x, 4294967295u), abs(abs(var_1.a.b.x)), var_1.a.b.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x, 4294967295u)), vec4<u32>(4294967295u, 4172u, 4294967295u, var_1.a.b.x) ^ vec4<u32>(0u, var_1.a.b.x, var_1.a.b.x, var_1.a.b.x)) | _wgslsmith_clamp_u32(~var_1.a.b.x, 4294967295u, var_1.a.b.x)));
    return !(!(!vec4<bool>(!var_0.x, any(vec3<bool>(false, false, true)), -2301f == global1.x, arg_0)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = select(func_3(!all(vec4<bool>(arg_2.a.a.x, arg_1, true, arg_2.a.a.x))), !vec4<bool>(false, (arg_2.a.b.x <= arg_0.b.x) && true, !arg_2.a.a.x, false), func_3(func_3(arg_0.a.x).x));
    var var_1 = ~global0.wz;
    global0 = firstLeadingBit(-((vec4<i32>(-2758i, u_input.c.x, 0i, var_1.x) >> (vec4<u32>(8922u, arg_0.b.x, 34138u, arg_0.b.x) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(vec4<i32>(-1577i, -13876i, var_1.x, global0.x), vec4<i32>(global0.x, global0.x, 9844i, -37710i))) & -(select(vec4<i32>(-1i, var_1.x, var_1.x, global0.x), vec4<i32>(u_input.c.x, 15158i, var_1.x, 16226i), false) << (abs(vec4<u32>(arg_2.a.b.x, 13223u, 17068u, arg_2.a.b.x)) % vec4<u32>(32u))));
    let var_2 = 57067i;
    var_1 = vec2<i32>(global0.x, -var_2);
    return !select(arg_0.a, !func_3(var_0.x).zz, arg_0.a);
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(!(!func_2(Struct_1(vec2<bool>(true, true), vec2<u32>(46917u, 19759u)), true, Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 1u))))), vec2<u32>(0u, 4294967295u)));
    var var_1 = Struct_1(!select(select(!var_0.a.a, func_3(var_0.a.a.x).xw, all(vec4<bool>(false, var_0.a.a.x, false, true))), vec2<bool>(true, global1.x > 1622f), false), countOneBits(vec2<u32>(~(~var_0.a.b.x), var_0.a.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b.x, 22136u), var_0.a.b) % 32u))));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -969f, _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(max(global1.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(189f))))))));
    var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-global1.x)), var_3.x, -590f, _wgslsmith_f_op_f32(-var_3.x));
    return vec3<u32>(var_2.a.b.x, var_2.a.b.x, 1u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> StorageBuffer {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(~(~firstTrailingBit(0u)), 16u)]);
    var var_1 = !vec2<bool>(!var_0.a.a.x, all(select(select(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(true, false, false, false), vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, true)), !vec4<bool>(true, var_0.a.a.x, true, true), vec4<bool>(true, false, false, var_0.a.a.x))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, global1.x)) * global1.x) - 545f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1483f))), -707f))), all(var_0.a.a)));
    var var_3 = all(select(vec4<bool>(all(var_0.a.a), false, var_1.x, !any(vec3<bool>(true, false, var_0.a.a.x))), !(!vec4<bool>(true, true, var_0.a.a.x, var_0.a.a.x)), any(vec4<bool>(any(var_0.a.a), 11546i == global0.x, var_0.a.a.x || var_1.x, true))));
    var var_4 = !(!(!(!(!vec3<bool>(false, var_1.x, var_0.a.a.x)))));
    return StorageBuffer(arg_1.x, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2, 645f))))))), vec2<f32>(_wgslsmith_f_op_f32(round(var_2)), -1754f), -u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 16>();
    var var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(false, false))), false), reverseBits(vec2<u32>(~(~4294967295u), max(46552u, 29605u))));
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-187f, 459f, -1000f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(576f, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, -1136f, 595f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 855f, -1000f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(984f, global1.x, -481f), vec3<f32>(global1.x, -1175f, -462f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 201f)))), vec3<bool>(!any(vec4<bool>(true, var_0.a.x, var_0.a.x, false)), 1i >= reverseBits(u_input.b), true))), vec4<i32>(countOneBits(i32(-1i) * -85554i) | firstTrailingBit(u_input.a), -_wgslsmith_mult_i32(2147483647i, 1i), -abs(-2147483647i), ~(-33553i)));
}

