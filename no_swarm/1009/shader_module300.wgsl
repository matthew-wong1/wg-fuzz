struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(true, vec4<f32>(-1112f, -1000f, 1681f, 1037f), 0i, true, vec2<f32>(-844f, 275f)), Struct_1(false, vec4<f32>(965f, -509f, 601f, -1821f), -1i, false, vec2<f32>(-238f, 588f)), Struct_1(true, vec4<f32>(568f, -467f, 136f, -1199f), 35161i, true, vec2<f32>(358f, -858f)), Struct_1(false, vec4<f32>(821f, -303f, 1743f, -1325f), 1189i, true, vec2<f32>(1000f, 127f)), Struct_1(true, vec4<f32>(-729f, -2006f, 639f, -518f), 0i, true, vec2<f32>(858f, -844f)));

var<private> global1: array<Struct_2, 28>;

var<private> global2: u32;

var<private> global3: array<u32, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = u_input.a.xxz ^ u_input.a.xwx;
    let var_1 = ~vec3<u32>(_wgslsmith_div_u32(~15002u, _wgslsmith_add_u32(u_input.a.x, 1u)), _wgslsmith_sub_u32(abs(_wgslsmith_add_u32(8835u, u_input.a.x)), _wgslsmith_dot_vec4_u32(abs(u_input.a), vec4<u32>(global3[_wgslsmith_index_u32(var_0.x, 32u)], var_0.x, global3[_wgslsmith_index_u32(u_input.c, 32u)], 0u))), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.c, 32u)] ^ 0u, ~u_input.c) & ~(global3[_wgslsmith_index_u32(u_input.c, 32u)] >> (var_0.x % 32u)));
    var var_2 = -2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-432f * _wgslsmith_f_op_f32(sign(214f))), _wgslsmith_f_op_f32(f32(-1f) * -426f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.e.x * arg_0.a.e.x) - 1042f))));
}

fn func_2(arg_0: vec3<i32>) -> vec3<i32> {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 5u)], vec4<bool>(false, true, false, false), Struct_1(false, vec4<f32>(1000f, 329f, -1276f, 1293f), -41104i, true, vec2<f32>(1089f, -224f))), true)) - _wgslsmith_f_op_f32(ceil(162f))) <= _wgslsmith_f_op_f32(f32(-1f) * -1707f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, 834f, -123f, -946f)) - vec4<f32>(1000f, -1843f, -1328f, 280f)), u_input.a.x < 1u)), vec4<f32>(-1466f, 848f, -279f, _wgslsmith_f_op_f32(f32(-1f) * -622f)), true)), abs(_wgslsmith_dot_vec4_i32(select(u_input.b, vec4<i32>(arg_0.x, 0i, 37785i, arg_0.x), any(vec2<bool>(false, true))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 42635i, 1280i, 0i), u_input.b), reverseBits(vec4<i32>(arg_0.x, arg_0.x, 21080i, arg_0.x))))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, false, true))))), vec2<f32>(-1204f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-495f)) + _wgslsmith_f_op_f32(f32(-1f) * -258f))))));
    let var_1 = vec2<i32>(-arg_0.x, reverseBits(var_0.c)) | u_input.b.yy;
    global0 = array<Struct_1, 5>();
    let var_2 = global0[_wgslsmith_index_u32(max(~max(~u_input.d, ~abs(4294967295u)), _wgslsmith_sub_u32(min(59797u, ~u_input.c), _wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], u_input.c), u_input.a.wx), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.a.x), ~0u)))), 5u)];
    let var_3 = var_0;
    return countOneBits(select(-_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.x, 9139i, 1i), -arg_0), vec3<i32>(var_1.x, arg_0.x, u_input.b.x), select(select(select(vec3<bool>(var_0.a, true, var_2.a), vec3<bool>(var_3.d, var_0.d, true), vec3<bool>(false, var_3.d, var_0.a)), vec3<bool>(false, var_2.d, var_3.d), select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, true, var_2.d), true)), !vec3<bool>(true, false, var_2.a), false)));
}

fn func_1() -> vec4<f32> {
    let var_0 = func_2(u_input.b.xxz);
    var var_1 = global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~(~(~global3[_wgslsmith_index_u32(u_input.c, 32u)]) & ~abs(15535u)), 32u)], 5u)];
    global2 = ~(~(~(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 32u)] << (108208u % 32u))));
    let var_2 = max(u_input.a.wzx, ~(~u_input.a.yxy));
    let var_3 = Struct_1(all(vec2<bool>(!(var_1.a | false), !var_1.a | var_1.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)), ~_wgslsmith_div_i32(~63233i, 1i), var_1.a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1783f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(22976u, 28u)], true)), var_1.e.x)), vec2<f32>(var_1.e.x, -1379f))));
    return vec4<f32>(410f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.e.x + _wgslsmith_f_op_f32(-115f - 657f)))), 1901f, 732f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1331f, -446f, 417f, 158f), vec4<f32>(-1059f, 2427f, -995f, 224f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-625f, -261f, 985f, -269f), vec4<f32>(-267f, 119f, 964f, 334f), true)), _wgslsmith_div_vec4_f32(vec4<f32>(-297f, -392f, 1332f, 1533f), vec4<f32>(-943f, 1067f, 737f, 162f)))))));
    global3 = array<u32, 32>();
    var var_1 = global0[_wgslsmith_index_u32(~26776u, 5u)];
    let var_2 = var_1.e.x;
    global2 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(~u_input.a.wy, u_input.a.yy), global3[_wgslsmith_index_u32(~u_input.d, 32u)]);
    let var_3 = _wgslsmith_sub_vec4_u32(~(~firstTrailingBit(u_input.a << (vec4<u32>(15621u, u_input.d, 13437u, 1u) % vec4<u32>(32u)))), u_input.a);
    var var_4 = Struct_2(global0[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.wz))), 5u)], select(vec4<bool>(select(!var_1.d, true, true), any(vec2<bool>(var_1.d, var_1.d)), true, false), select(select(!vec4<bool>(true, false, true, var_1.d), !vec4<bool>(var_1.d, var_1.d, false, var_1.d), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), vec4<bool>(true, !var_1.d, true, !var_1.a), true), any(!select(vec3<bool>(var_1.a, true, var_1.d), vec3<bool>(false, true, var_1.d), vec3<bool>(false, var_1.a, var_1.d)))), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-725f + 1000f), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - -311f) - _wgslsmith_f_op_f32(var_1.b.x * var_0.x)))), var_1.b);
}

