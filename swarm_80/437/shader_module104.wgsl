struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(1i, i32(-2147483648), 44368i, -9862i, i32(-2147483648), 0i, -1146i, 18820i, 2147483647i, -2671i, -1i, 59298i, 2147483647i, -32935i, 5895i, i32(-2147483648), i32(-2147483648), -21421i, -29979i, 1761i, -1i, -13138i, -11790i, i32(-2147483648), -32542i, -44484i, -56150i, 23320i, -1i, 0i, -21335i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<i32, 31>();
    let var_0 = ~(~u_input.c.zz) | vec2<u32>(_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_mod_u32(~u_input.b.x, ~1u)), u_input.c.x);
    global0 = array<i32, 31>();
    var var_1 = vec3<f32>(1f, 1f, 1f);
    let var_2 = 0i;
    return Struct_1(global0[_wgslsmith_index_u32(3689u, 31u)]);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = countOneBits(u_input.c);
    var_0 = reverseBits(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 57902u, 70897u)), firstTrailingBit(u_input.c))) & vec3<u32>(~_wgslsmith_sub_u32(1u, var_0.x), ~firstLeadingBit(var_0.x | 79183u), _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.b << (vec2<u32>(4294967295u, 1287u) % vec2<u32>(32u))));
    var var_1 = arg_2;
    var var_2 = Struct_1(-1i);
    let var_3 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, true, false))), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, false, false)), select(false, true, false), true)), any(vec3<bool>(any(vec2<bool>(true, true)), u_input.e.x >= -34660i, true))));
    return 549f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1022f, -991f, 496f) + vec3<f32>(-346f, 863f, 959f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -289f, 661f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(-136f, 11794u, Struct_1(u_input.e.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-176f, -651f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(603f, 1118f)) * _wgslsmith_f_op_f32(1548f + 2388f)))));
    var var_1 = abs(~countOneBits(_wgslsmith_sub_i32(~1i, 20277i)));
    var_0 = vec3<f32>(242f, _wgslsmith_f_op_f32(max(var_0.x, 1415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(937f, var_0.x))))));
    let var_2 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(2326f * 1458f), var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(238f * 1427f), 327f, _wgslsmith_div_f32(var_0.x, -903f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-814f, 395f, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -740f, 288f) * vec3<f32>(633f, var_0.x, var_0.x)))))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true)))));
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(func_1((any(vec2<bool>(true, false)) || true) | true));
    var var_1 = func_2(Struct_1(_wgslsmith_mod_i32(30909i, firstLeadingBit(1319i)) >> (_wgslsmith_mod_u32(u_input.d, 61832u << (u_input.c.x % 32u)) % 32u)));
    let var_2 = ~u_input.d;
    var var_3 = countOneBits(vec4<i32>(1i, func_1(any(vec4<bool>(true, false, false, true)) | true).a, 113i, firstTrailingBit(-1i)));
    let var_4 = Struct_1(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4779u, u_input.a) & var_2, 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~(~(~20777u)), 31u)], 1809f, firstTrailingBit(countOneBits(~(~vec2<u32>(u_input.d, var_2)))));
}

