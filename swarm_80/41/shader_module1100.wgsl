struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<f32, 2>;

var<private> global2: array<f32, 5> = array<f32, 5>(469f, -688f, 698f, 1106f, 208f);

var<private> global3: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    global0 = array<f32, 22>();
    global3 = array<vec2<bool>, 30>();
    var var_0 = abs(vec4<u32>(~countOneBits(14797u), _wgslsmith_mult_u32(1u, ~10998u), abs(abs(1u)), ~(~(~1210u))));
    global1 = array<f32, 2>();
    let var_1 = Struct_1(729f);
    return var_1;
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    let var_1 = false;
    var var_2 = !arg_1;
    let var_3 = vec3<bool>(any(vec3<bool>(!select(arg_1.x, arg_1.x, var_1), all(var_2.ww), var_2.x)), select(false, arg_1.x, all(var_2.yy)), select(true, true && arg_1.x, true));
    var var_4 = func_2(!var_1, -(~u_input.a));
    return _wgslsmith_add_i32(min(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2528i, u_input.a, -1i)), u_input.a), (~u_input.a ^ -4325i) << (~40385u % 32u)) | u_input.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<bool> {
    global1 = array<f32, 2>();
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(4294967295u, 0u)) | select(~(~4294967295u), 4294967295u, true), 5u)]);
    var var_1 = u_input.a;
    let var_2 = arg_0.c;
    var var_3 = -arg_2.yy | _wgslsmith_mod_vec2_i32(max(arg_2.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(arg_2.x, arg_2.x)) | (vec2<i32>(u_input.a, arg_2.x) >> (vec2<u32>(4294967295u, 38085u) % vec2<u32>(32u)))), arg_2.wx);
    return !vec4<bool>(!(!(!arg_0.a)), arg_1.a, any(vec4<bool>(true, true, true, true)), !arg_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = u_input.a;
    let var_1 = 622f;
    global1 = array<f32, 2>();
    let var_2 = arg_0;
    let var_3 = true;
    return func_4(Struct_2(var_3, var_2, func_2(true, -1i)), Struct_2(!(arg_0.a <= _wgslsmith_f_op_f32(exp2(arg_0.a))), Struct_1(1226f), var_2), vec4<i32>(func_3(4294967295u, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, var_3, false), true), arg_0), 50556i, _wgslsmith_mult_i32(1i, arg_2.x), func_3(~(~arg_1), vec4<bool>(true, true, true, all(vec2<bool>(var_3, false))), func_2(var_3 | var_3, arg_2.x))));
}

fn func_5(arg_0: bool) -> Struct_1 {
    global3 = array<vec2<bool>, 30>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(75724u, 22u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(false, u_input.a).a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1007f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-782f - global2[_wgslsmith_index_u32(4294967295u, 5u)]))))), -945f, 2016f);
    var var_1 = func_4(Struct_2(arg_0, Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~16644u, 5u)] + -396f)), Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 2u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12968u, 22u)] - global1[_wgslsmith_index_u32(8480u, 2u)])))), Struct_2(!(~1u >= firstTrailingBit(0u)), Struct_1(func_2(true, u_input.a << (4294967295u % 32u)).a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(27076u, 2u)]))))), select(firstLeadingBit(vec4<i32>(~2147483647i, 20313i, -2147483647i, _wgslsmith_mod_i32(u_input.a, -43525i))), countOneBits(vec4<i32>(-1i | u_input.a, u_input.a, u_input.a, select(u_input.a, -2147483647i, arg_0))), !select(!vec4<bool>(arg_0, arg_0, false, false), !vec4<bool>(true, arg_0, arg_0, true), false & arg_0)));
    var var_2 = select(1u, _wgslsmith_mult_u32(1u, ~4294967295u), false) & firstTrailingBit(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12379u, 0u), vec3<u32>(1u, 73316u, 1u))));
    let var_3 = vec2<u32>(40915u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 4294967295u, 70168u), vec3<u32>(1u, 1u, 1u), !vec3<bool>(arg_0, false, var_1.x)), reverseBits(vec3<u32>(1u, 1u, 1u)))) | vec2<u32>(1u, 1u);
    return func_2(false, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~firstLeadingBit(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a)), ~(-7747i))));
    global1 = array<f32, 2>();
    global2 = array<f32, 5>();
    var var_1 = var_0.zy;
    let var_2 = func_5(true && !all(func_1(Struct_1(global1[_wgslsmith_index_u32(1u, 2u)]), 0u, var_0.yx)));
    global1 = array<f32, 2>();
    var var_3 = abs(_wgslsmith_dot_vec2_u32(countOneBits(select(select(vec2<u32>(0u, 0u), vec2<u32>(32606u, 4294967295u), true), vec2<u32>(4294967295u, 1u), global3[_wgslsmith_index_u32(select(4294967295u, 3208u, true), 30u)])), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(262u, 660u))) << (reverseBits(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(2147483647i, 1i ^ u_input.a, select(var_0.x, -7510i, false)), _wgslsmith_add_vec3_i32(var_0, min(var_0, var_0))) | var_0, vec3<i32>(u_input.a, 31423i ^ -_wgslsmith_sub_i32(var_1.x, 0i), -29709i), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, ~36394u, 1u, 0u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(7237u, 17112u, 0u, 4294967295u)), vec4<u32>(~1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1090u, 4294967295u, 32665u, 25562u), vec4<u32>(34036u, 75069u, 0u, 4294967295u)), _wgslsmith_clamp_u32(80159u, 0u, 56869u)))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(~1i, i32(-1i) * -61375i), _wgslsmith_clamp_i32(u_input.a, 1i, -var_1.x), var_1.x, _wgslsmith_mult_i32(~u_input.a, -var_0.x)), -vec4<i32>(1i, 5593i, 2147483647i, func_3(1u, vec4<bool>(true, true, false, true), var_2))), 4294967295u);
}

