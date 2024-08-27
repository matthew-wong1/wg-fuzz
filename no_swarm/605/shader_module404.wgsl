struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: array<i32, 32>;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(530f, -1000f, -200f), 11489i), Struct_1(vec3<f32>(-531f, -1161f, 205f), 0i), Struct_1(vec3<f32>(357f, 278f, -2225f), 1i), Struct_1(vec3<f32>(-1000f, -544f, 132f), 27749i), Struct_1(vec3<f32>(-769f, -923f, 945f), i32(-2147483648)), Struct_1(vec3<f32>(-922f, 1528f, -830f), -24891i), Struct_1(vec3<f32>(-673f, 920f, -880f), 1i), Struct_1(vec3<f32>(-620f, 206f, 782f), 1i));

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = 4294967295u < arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.a.x, 842f, global4.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1379f, -375f, global4.x)))))) + global4.wzz), min(arg_3, arg_3));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-769f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.a.x, arg_2.a.x)))))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(551f * _wgslsmith_f_op_f32(-arg_1.x)) * -869f), arg_1.x)), _wgslsmith_f_op_f32(abs(-1127f)), 1144f, -283f);
    let var_1 = vec4<u32>(~u_input.c.x ^ u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x >> (24765u % 32u));
    global1 = array<vec2<bool>, 18>();
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-var_0.x), all(vec4<bool>(true, false, true, false)))) * -1451f), _wgslsmith_f_op_f32(-var_0.x), arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1521f, -1679f, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, var_0.x) * 1112f))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))), -1467f, arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(4294967295u, arg_2, Struct_1(vec3<f32>(arg_3.a.x, 836f, arg_1.x), arg_2.x), 12754i))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-450f, -216f, arg_3.a.x, var_0.x)))), _wgslsmith_div_vec4_f32(arg_1, vec4<f32>(var_0.x, arg_3.a.x, global4.x, global4.x))))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(trunc(581f)), var_0.x), ~firstLeadingBit(arg_2.x));
    return ~2147483647i;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(~u_input.d) | select(81522u, 12534u, false), 8u)];
    global0 = array<vec2<bool>, 16>();
    var var_1 = global3[_wgslsmith_index_u32(1u, 8u)];
    global2 = array<i32, 32>();
    let var_2 = global4.x > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.a.x))));
    return 55721u;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    var var_1 = abs(~vec2<u32>(max(u_input.d, 4294967295u) ^ firstTrailingBit(u_input.d), countOneBits(max(u_input.d, u_input.d))));
    global3 = array<Struct_1, 8>();
    var var_2 = select(~firstTrailingBit(u_input.d), ~func_4(u_input.c, func_2(abs(-1828i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, var_0.a.x, -852f, 1000f)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b, 11050i, 1i), vec3<i32>(1i, -22035i, -1i)), global3[_wgslsmith_index_u32(~69354u, 8u)])), false);
    global2 = array<i32, 32>();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, any(global1[_wgslsmith_index_u32(u_input.d, 18u)])));
    global2 = array<i32, 32>();
    global2 = array<i32, 32>();
    var var_1 = abs(u_input.c << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(0u, u_input.c.x) ^ u_input.c) % vec2<u32>(32u)));
    let var_2 = Struct_1(vec3<f32>(global4.x, _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f) - _wgslsmith_f_op_f32(func_1(var_0.x, Struct_1(global4.ywz, 12401i))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + global4.x)))))), -11830i);
    global3 = array<Struct_1, 8>();
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(var_2.a.yy));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 1u, abs(_wgslsmith_mult_u32(firstLeadingBit(var_1.x), var_1.x)), func_4(countOneBits(u_input.c), countOneBits(i32(-1i) * -41388i))), vec4<u32>(0u | u_input.d, u_input.d ^ ~(~u_input.d), u_input.c.x, u_input.d), vec2<i32>(~firstLeadingBit(1i), 1i));
}

