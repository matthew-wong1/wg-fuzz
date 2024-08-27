struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 1i, 1i);

var<private> global2: array<i32, 9>;

var<private> global3: array<vec4<i32>, 15>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    global1 = (-global3[_wgslsmith_index_u32(u_input.a.x, 15u)] ^ -select(-global3[_wgslsmith_index_u32(20303u, 15u)], _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global1.x, global2[_wgslsmith_index_u32(arg_0, 9u)], arg_1.x), vec4<i32>(1i, arg_1.x, 2147483647i, 1i)), true)) | ~_wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.b, global1.x, global2[_wgslsmith_index_u32(20375u, 9u)], 44785i)), ~global3[_wgslsmith_index_u32(44731u, 15u)] >> (vec4<u32>(37615u, arg_0, 0u, u_input.a.x) % vec4<u32>(32u)));
    global2 = array<i32, 9>();
    var var_0 = ~_wgslsmith_mult_i32(-min(i32(-1i) * -28642i, select(9917i, global1.x, false)), _wgslsmith_dot_vec2_i32(~arg_1.xz, firstLeadingBit(global1.xx)));
    let var_1 = arg_1.x;
    global3 = array<vec4<i32>, 15>();
    return arg_2;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = ~vec3<u32>(u_input.a.x, u_input.a.x, func_3(~7907u >> ((u_input.a.x | u_input.a.x) % 32u), ~vec3<i32>(u_input.b, global1.x, global1.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 23872u >> (0u % 32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.x, arg_1.x, arg_1.x, arg_3.x))) + _wgslsmith_f_op_vec4_f32(arg_3 + arg_3)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_3.x, arg_3.x, arg_1.x)), vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -1646f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_3))))));
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 20u)];
    global2 = array<i32, 9>();
    let var_3 = Struct_3(arg_0, false, global0[_wgslsmith_index_u32(abs(countOneBits(var_2.a)) | 21725u, 20u)], any(select(arg_0.a.yzw, !vec3<bool>(false, arg_0.a.x, true), select(!vec3<bool>(arg_0.a.x, arg_0.a.x, false), select(arg_0.a.zxw, arg_0.a.wwz, arg_0.a.xzy), arg_0.a.x))), var_1.x);
    return _wgslsmith_f_op_f32(-var_3.e);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = ((global1.x << (48014u % 32u)) ^ abs(global1.x)) <= ~(arg_0.x | global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_1, arg_1), 9u)]);
    var var_1 = _wgslsmith_div_u32(32407u, ~(~(~reverseBits(16379u))));
    global2 = array<i32, 9>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1003f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-113f)), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, true, true, false)), vec2<f32>(1161f, 785f), arg_0.yx, vec4<f32>(537f, 307f, 465f, -156f))), select(false, true, true)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1787f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-415f - -247f)))));
    let var_3 = max(vec2<i32>(-44683i, firstLeadingBit(-19022i)), global1.wz);
    return global0[_wgslsmith_index_u32(1u, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 9>();
    global2 = array<i32, 9>();
    var var_0 = func_1(global3[_wgslsmith_index_u32(max(~(~u_input.a.x), u_input.a.x), 15u)] ^ (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(1u, 9u)], 31876i, -24407i), ~global3[_wgslsmith_index_u32(u_input.a.x, 15u)]) >> (_wgslsmith_div_vec4_u32(u_input.a, u_input.a | vec4<u32>(1u, u_input.a.x, 41275u, u_input.a.x)) % vec4<u32>(32u))), 29637u);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1634f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f * 175f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(false, true, false, true)), vec2<f32>(-279f, -547f), global1.ww, vec4<f32>(1000f, -1245f, -950f, 599f)))))), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(317f, 1159f))) * _wgslsmith_div_vec2_f32(vec2<f32>(799f, -713f), vec2<f32>(404f, -615f))), -global1.yy, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(379f, -481f, 2385f, -105f), vec4<f32>(318f, -145f, 1075f, -1015f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1235f, 275f, -161f, 1698f))))));
    var var_2 = any(select(vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), all(vec4<bool>(false, false, true, false))), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), u_input.a.x <= var_0.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(1196f, 2147483647i | countOneBits(~(1023i | global2[_wgslsmith_index_u32(1u, 9u)])), abs(select(vec3<u32>(~u_input.a.x, 4294967295u, ~u_input.a.x), ~(~vec3<u32>(0u, u_input.a.x, 4294967295u)), vec3<bool>(true, true, true))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(414f * _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-948f - var_1.x))), _wgslsmith_f_op_f32(-var_1.x)));
}

