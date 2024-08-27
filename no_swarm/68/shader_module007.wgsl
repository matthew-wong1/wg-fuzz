struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29>;

var<private> global1: array<i32, 12>;

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_vec2_u32(~(~u_input.d), select(u_input.d, u_input.d, true));
    var var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(var_0.x, _wgslsmith_mult_u32(var_0.x, (var_0.x ^ 22377u) ^ 32421u)), arg_0.c), 12u)];
    var var_2 = !all(vec2<bool>(true, true));
    var var_3 = global1[_wgslsmith_index_u32(~1u >> (_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 0u, 22363u), vec3<u32>(1u, 0u, 3511u) >> (vec3<u32>(var_0.x, 0u, arg_0.c) % vec3<u32>(32u)))), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c, 62310u, var_0.x), ~vec3<u32>(2688u, 1618u, u_input.b)))) % 32u), 12u)];
    var_2 = true | (!(any(vec3<bool>(true, true, true)) | all(vec3<bool>(true, true, true))) && !select(var_0.x >= 1u, true, true));
    return vec3<u32>(firstLeadingBit(~_wgslsmith_mod_u32(4294967295u, ~3484u)), _wgslsmith_div_u32(17756u, ~u_input.d.x), _wgslsmith_clamp_u32(firstLeadingBit(u_input.b), 72750u, 1u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = !arg_0;
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, abs(1u)), 12u)]);
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(~0u, _wgslsmith_mult_u32(116984u, u_input.d.x), u_input.d.x), func_3(Struct_3(_wgslsmith_f_op_f32(global2.x + global2.x), var_1, 1896u), _wgslsmith_sub_vec2_i32(u_input.a.zy >> (u_input.d % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-39516i, 356i), u_input.a.wy)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -182f, 351f)), vec3<f32>(-1290f, global2.x, global2.x), arg_0)))), vec3<u32>(~(~u_input.d.x), select(8481u, 36163u, arg_0) >> (_wgslsmith_add_u32(max(1u, u_input.d.x), u_input.d.x) % 32u), ~firstLeadingBit(reverseBits(u_input.d.x))));
    global0 = array<vec4<i32>, 29>();
    var var_3 = !(!select(vec4<bool>(true, !arg_0, !arg_0, !arg_0), !(!vec4<bool>(true, arg_0, arg_0, false)), vec4<bool>(any(vec4<bool>(arg_0, arg_0, true, arg_0)), arg_0, arg_0, all(vec4<bool>(arg_0, arg_0, true, arg_0)))));
    return Struct_1(!vec2<bool>(all(vec4<bool>(true, arg_0, arg_0, arg_0)), all(vec4<bool>(true, arg_0, arg_0, var_3.x)) || (global2.x != -503f)), firstTrailingBit(min(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, var_2.x, u_input.d.x, 4294967295u), firstLeadingBit(vec4<u32>(u_input.e, 5142u, 64174u, 88889u))), ~(vec4<u32>(4294967295u, var_2.x, u_input.d.x, 8571u) | vec4<u32>(var_2.x, 0u, u_input.d.x, u_input.d.x)))));
}

fn func_1(arg_0: bool) -> u32 {
    global1 = array<i32, 12>();
    let var_0 = Struct_5(func_2(false), Struct_2(2147483647i));
    var var_1 = select(vec3<bool>(true, false, !select(true, var_0.a.a.x, var_0.a.a.x) || any(vec3<bool>(arg_0, true, var_0.a.a.x))), select(!select(select(vec3<bool>(var_0.a.a.x, false, false), vec3<bool>(true, var_0.a.a.x, var_0.a.a.x), vec3<bool>(false, false, false)), vec3<bool>(arg_0, var_0.a.a.x, arg_0), arg_0), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, var_0.a.a.x), select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.a.a.x, var_0.a.a.x), vec3<bool>(true, true, false))), true), arg_0);
    var var_2 = any(!select(select(!vec3<bool>(true, false, arg_0), vec3<bool>(false, true, false), true), vec3<bool>(false, arg_0, var_0.a.a.x), vec3<bool>(true, true, false)));
    var_1 = select(select(!(!vec3<bool>(false, true, var_1.x)), !select(vec3<bool>(var_0.a.a.x, true, var_1.x), !vec3<bool>(arg_0, false, false), select(vec3<bool>(arg_0, var_1.x, var_0.a.a.x), vec3<bool>(var_0.a.a.x, false, arg_0), vec3<bool>(arg_0, true, true))), !vec3<bool>(false, all(vec3<bool>(true, false, true)), true)), vec3<bool>(true, false, true), vec3<bool>(arg_0, var_0.a.a.x, true));
    return firstTrailingBit(abs(var_0.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~select(u_input.e >> (u_input.e % 32u), ~4294967295u, true)), abs(abs(func_1(true))), u_input.b);
    var_0 = ~firstTrailingBit(~(vec3<u32>(u_input.e, var_0.x, u_input.b) >> ((vec3<u32>(var_0.x, u_input.e, var_0.x) ^ vec3<u32>(var_0.x, 14432u, var_0.x)) % vec3<u32>(32u))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, -1260f, global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1000f, -103f, -767f) * vec4<f32>(global2.x, 817f, 470f, global2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2032f, global2.x, global2.x, -769f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.x + 1305f), -538f)) * vec2<f32>(global2.x, -520f)), _wgslsmith_f_op_f32(min(global2.x, global2.x)), global2.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))));
}

