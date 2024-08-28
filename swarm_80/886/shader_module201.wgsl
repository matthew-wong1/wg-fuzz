struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, false, true, false, false, true, true, false, true, false, false, true, true, true, false, true, true, true, true, false, true, true, false, true, false, false, true, true, true, false);

var<private> global1: u32 = 46935u;

var<private> global2: i32;

var<private> global3: vec2<u32> = vec2<u32>(29219u, 1u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>) -> i32 {
    let var_0 = arg_0.xz;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 754f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-490f)), -1000f));
    var var_2 = vec3<i32>(-1i) * -(select(vec3<i32>(-55701i, 12237i, -1i), vec3<i32>(-51825i, 45866i, -10037i), true) & _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, -1i, -2147483647i), max(vec3<i32>(83368i, 7258i, 11i), vec3<i32>(-1i, 0i, -1i))));
    global2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_2.x, _wgslsmith_clamp_i32(~var_2.x ^ (var_2.x >> (46561u % 32u)), var_2.x, ~var_2.x)), _wgslsmith_sub_i32(-27635i, firstTrailingBit(var_2.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_1)), -vec4<i32>(2147483647i, var_2.x, 1i, -1i), arg_1);
    return i32(-1i) * -_wgslsmith_add_i32(abs(2147483647i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.x, 2147483647i, var_2.x), vec3<i32>(-47026i, -2147483647i, var_2.x))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<bool, 31>();
    global3 = u_input.a.ww;
    var var_1 = Struct_1(arg_1.x, countOneBits(-vec4<i32>(min(var_0.b.x, var_0.b.x), var_0.b.x, 34498i, abs(var_0.b.x))), _wgslsmith_f_op_f32(997f * _wgslsmith_f_op_f32(trunc(arg_1.x))));
    var var_2 = Struct_1(-1000f, ~select(var_1.b, -(arg_0.b << (vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(abs(~40665u), 31u)]), arg_0.a);
    return Struct_1(-945f, vec4<i32>(~(~func_3(vec3<bool>(arg_2, global0[_wgslsmith_index_u32(global3.x, 31u)], arg_2), arg_0.a, u_input.a.xy)), -1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(reverseBits(-30623i), -arg_0.b.x), i32(-1i) * -194i), firstLeadingBit(var_0.b.x) >> (_wgslsmith_add_u32(~7738u, reverseBits(global3.x)) % 32u)), var_2.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2437f - arg_1.a), 1f, arg_1.c));
    var var_1 = var_0;
    global3 = countOneBits(min(arg_2, vec2<u32>(60612u, abs(u_input.b) ^ ~9492u)));
    var var_2 = vec2<i32>(abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.x, arg_0.x), _wgslsmith_mult_i32(-arg_0.x, arg_0.x))), arg_1.b.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, var_1.x, -257f, arg_1.c) * vec4<f32>(var_0.x, var_0.x, var_1.x, -1172f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c, var_1.x, -1000f, -173f), vec4<f32>(647f, 1000f, arg_1.a, 106f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1818f, 1577f, 256f, -414f)) - vec4<f32>(var_0.x, var_0.x, var_1.x, 1479f)))));
    return arg_2.x;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = ~_wgslsmith_mult_u32(0u, func_4(vec2<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), countOneBits(2147483647i)), func_2(Struct_1(-476f, vec4<i32>(-25004i, 0i, -1i, 0i), arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(527f, -1751f, -442f) - vec3<f32>(arg_0, 1240f, arg_0)), global0[_wgslsmith_index_u32(global3.x, 31u)]), u_input.a.xw));
    let var_1 = ~(~(-1i));
    let var_2 = ~_wgslsmith_div_u32(34415u, 22742u);
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f))), _wgslsmith_clamp_vec4_i32(countOneBits(~vec4<i32>(var_1, var_1, 0i, -2147483647i)), ~(vec4<i32>(1329i, 34340i, var_1, -50856i) << (vec4<u32>(0u, global3.x, u_input.b, 4294967295u) % vec4<u32>(32u))), vec4<i32>(-var_1, -var_1, countOneBits(var_1), -var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(arg_0))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 782f, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, -1385f, -1760f))))))), global0[_wgslsmith_index_u32(1u, 31u)]);
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(select(_wgslsmith_add_u32(~4294967295u >> ((u_input.b >> (u_input.a.x % 32u)) % 32u), ~u_input.a.x), ~0u, global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(593f + -335f)), 31u)] && any(select(vec2<bool>(true, false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b, 31u)]))), 30157u, ~firstTrailingBit(global3.x));
    let var_1 = vec3<bool>(true, all(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 31u)], true)) | (global0[_wgslsmith_index_u32(func_4(~vec2<i32>(-1i, 1i), func_2(Struct_1(1215f, vec4<i32>(2147483647i, 1i, 20052i, 12610i), -1964f), vec3<f32>(-1340f, -1757f, -1000f), global0[_wgslsmith_index_u32(var_0.x, 31u)]), vec2<u32>(global3.x, 49625u)), 31u)] & (!global0[_wgslsmith_index_u32(u_input.a.x, 31u)] || !global0[_wgslsmith_index_u32(0u, 31u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(func_1(-1000f), 31u)], any(vec3<bool>(false, global0[_wgslsmith_index_u32(17252u, 31u)], false)) || global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 49815u, var_0.x, 9223u)), 31u)], false, !all(vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true, false)))));
    let var_2 = !(!(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], false, true, var_1.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-func_2(Struct_1(-529f, vec4<i32>(21706i, 2147483647i, -2080i, -2147483647i), -1023f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, 1000f, 203f) - vec3<f32>(-1412f, -560f, 1291f)), true).c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -753f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-480f)))));
    var var_4 = vec3<i32>(~(~(~(~0i))), select(abs(select(-36795i, 1i, global0[_wgslsmith_index_u32(u_input.b, 31u)] | var_1.x)), ~(-2147483647i), false), _wgslsmith_dot_vec3_i32(select(firstTrailingBit(vec3<i32>(2147483647i, -38602i, 18076i)) & vec3<i32>(2147483647i, 1i, 12628i), ~(vec3<i32>(51759i, -3182i, -2147483647i) << (vec3<u32>(44535u, global3.x, 1u) % vec3<u32>(32u))), var_1), vec3<i32>(1i, i32(-1i) * -36909i, -abs(0i))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-37566i, -1i)), var_4.xy), func_2(func_2(Struct_1(var_3.x, vec4<i32>(-13399i, 2147483647i, -69381i, var_4.x), var_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-735f, 2140f, 932f) + vec3<f32>(var_3.x, 1089f, 185f)), var_2.x | var_2.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(803f, var_3.x, -1631f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1296f, -497f, -412f))), !(-48744i <= var_4.x)), ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(22415u, 0u), vec2<u32>(55805u, 38842u), u_input.a.xw) | ~u_input.a.xw)), min(11439u, max(30126u, 1u)) | ~_wgslsmith_div_u32(var_0.x, var_0.x));
}

