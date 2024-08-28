struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<i32, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_1(vec2<i32>(-(~global1[_wgslsmith_index_u32(29365u, 4u)]) ^ firstTrailingBit(global1[_wgslsmith_index_u32(63241u, 4u)]), u_input.c), _wgslsmith_sub_i32(~abs(-1i), ~global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(31446u, u_input.a, arg_0.x, arg_0.x), vec4<u32>(u_input.a, arg_3, 12839u, 4294967295u)), arg_0.x, true), 4u)]), countOneBits(arg_3));
    global0 = array<f32, 30>();
    var var_1 = select(select(vec3<bool>(any(vec4<bool>(arg_1.x, false, true, arg_1.x)), false, arg_2), !vec3<bool>(false, all(vec4<bool>(true, arg_1.x, true, arg_2)), all(vec3<bool>(true, arg_2, false))), select(!select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, arg_2, true), true), select(vec3<bool>(false, true, arg_1.x), !vec3<bool>(arg_1.x, true, true), all(arg_1)), true)), select(!vec3<bool>(!arg_2, false, all(arg_1)), select(select(!vec3<bool>(arg_2, false, false), !vec3<bool>(arg_2, arg_2, arg_2), arg_2), select(select(vec3<bool>(arg_1.x, false, false), vec3<bool>(true, false, false), arg_2), !vec3<bool>(false, arg_2, true), true), !select(vec3<bool>(arg_2, true, arg_1.x), vec3<bool>(true, true, true), vec3<bool>(arg_1.x, true, arg_1.x))), select(vec3<bool>(true, false, true), vec3<bool>(any(vec3<bool>(true, arg_2, true)), true, true), arg_2)), select(!vec3<bool>(select(true, arg_2, arg_2), true, arg_1.x), !(!select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, true, false), vec3<bool>(arg_2, true, false))), true));
    var_1 = select(select(vec3<bool>(true, select(arg_2, any(vec3<bool>(true, var_1.x, arg_1.x)), arg_2 | arg_1.x), false), vec3<bool>(arg_1.x, arg_1.x && false, !(0u >= u_input.a)), vec3<bool>(arg_2, (-293f != global0[_wgslsmith_index_u32(20978u, 30u)]) | true, true)), select(select(select(select(vec3<bool>(arg_2, var_1.x, false), vec3<bool>(arg_1.x, false, true), arg_2), !vec3<bool>(false, arg_2, arg_2), arg_1.x), vec3<bool>(arg_2, arg_1.x, false), !select(vec3<bool>(true, var_1.x, arg_1.x), vec3<bool>(false, true, true), vec3<bool>(var_1.x, var_1.x, false))), vec3<bool>(any(!var_1.zx), all(vec4<bool>(arg_2, arg_2, true, arg_1.x)), false || arg_1.x), false), arg_1.x);
    var_1 = select(select(!(!vec3<bool>(var_1.x, true, arg_1.x)), !select(!vec3<bool>(true, arg_1.x, false), !vec3<bool>(arg_1.x, arg_2, true), false), !(!var_1.x) || any(!var_1.xz)), select(select(select(vec3<bool>(true, true, arg_1.x), !vec3<bool>(var_1.x, false, arg_1.x), !vec3<bool>(var_1.x, var_1.x, arg_1.x)), vec3<bool>(true, 0i < global1[_wgslsmith_index_u32(57994u, 4u)], var_0.a.x <= -8499i), all(!vec4<bool>(true, false, false, var_1.x))), vec3<bool>(arg_2, select(any(vec3<bool>(false, arg_2, var_1.x)), var_1.x, true), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(36007u, 30u)])) < _wgslsmith_f_op_f32(trunc(1761f))), select(select(vec3<bool>(arg_2, false, true), !vec3<bool>(true, arg_2, true), true), select(!vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(var_1.x, arg_1.x, true), !vec3<bool>(arg_1.x, var_1.x, true)), arg_2)), true);
    return !vec4<bool>(any(var_1.zx) && (reverseBits(var_0.a.x) >= _wgslsmith_mult_i32(-1i, 61888i)), var_1.x, var_1.x, !any(!vec3<bool>(var_1.x, var_1.x, var_1.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = all(vec4<bool>(false, false, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))));
    global0 = array<f32, 30>();
    let var_1 = !func_3(reverseBits(~arg_0), select(vec2<bool>(true, true), !vec2<bool>(var_0, var_0), select(select(vec2<bool>(false, var_0), vec2<bool>(false, false), vec2<bool>(true, true)), !vec2<bool>(false, var_0), vec2<bool>(false, false))), true, u_input.a);
    let var_2 = arg_0.x;
    var var_3 = arg_1;
    return 0i;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_1(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], ~func_2(vec2<u32>(4294967295u, 37767u), Struct_1(arg_3.xy, global1[_wgslsmith_index_u32(164u, 4u)], u_input.a), Struct_1(u_input.d.yx, arg_3.x, 36975u))), -min(firstTrailingBit(abs(-2147483647i)), ~min(-2147483647i, -2147483647i)), countOneBits(max(_wgslsmith_mod_u32(58571u, 4294967295u), u_input.a | 11372u) ^ 30275u));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, max(1u, ~1u), 1u), ~(~max(vec4<u32>(76177u, 0u, 81952u, var_0.c), vec4<u32>(var_0.c, 0u, arg_2, 58294u)) ^ (select(vec4<u32>(45892u, 1u, 0u, var_0.c), vec4<u32>(arg_2, u_input.a, var_0.c, 1u), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) << (firstTrailingBit(vec4<u32>(0u, arg_2, var_0.c, 30574u)) % vec4<u32>(32u))))), 4u)];
    var_1 = arg_3.x;
    let var_2 = -31686i;
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(-arg_3.x, _wgslsmith_add_i32(countOneBits(1i), arg_3.x & 0i)), -(~var_2) & firstLeadingBit(_wgslsmith_div_i32(u_input.c, global1[_wgslsmith_index_u32(1u, 4u)]))), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(~65194i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 4u)], 2147483647i))), arg_3.xz), 0u);
    return !any(!select(vec3<bool>(false, arg_0.x, arg_0.x), select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, false, false), arg_0.x), !vec3<bool>(arg_0.x, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(select(vec2<bool>(true, true), vec2<bool>(true, func_1(vec2<bool>(false, false), vec4<f32>(1467f, global0[_wgslsmith_index_u32(u_input.a, 30u)], 402f, 1412f), u_input.a, u_input.d)), !(global0[_wgslsmith_index_u32(23563u, 30u)] >= -492f)));
    let var_1 = Struct_1(_wgslsmith_div_vec2_i32(u_input.d.xx, _wgslsmith_mult_vec2_i32(vec2<i32>(abs(u_input.c), u_input.b & global1[_wgslsmith_index_u32(2570u, 4u)]), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], u_input.c)))), ~abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.d), ~u_input.d)), ~(~min(countOneBits(u_input.a), max(u_input.a, 61144u))));
    global1 = array<i32, 4>();
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.xz, vec2<i32>(var_1.b, var_1.a.x)), vec2<i32>(u_input.d.x, var_1.b)) | u_input.d.zy, -_wgslsmith_div_i32(0i, global1[_wgslsmith_index_u32(var_1.c, 4u)]), ~12862u);
    let var_3 = 20422i;
    var var_4 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.b, u_input.d.x), var_1.a), ~(~var_2.a.x), abs(_wgslsmith_add_u32(0u, var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(var_2.c, 30u)], global0[_wgslsmith_index_u32(2067u, 30u)]))) - vec2<f32>(global0[_wgslsmith_index_u32(var_1.c, 30u)], global0[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(var_2.c, 30u)]) - vec2<f32>(-350f, -736f))))));
}

