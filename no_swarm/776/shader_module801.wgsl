struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: Struct_1 = Struct_1(-1i, vec4<f32>(1158f, -1034f, 126f, 893f));

var<private> global2: bool;

var<private> global3: array<bool, 18>;

var<private> global4: vec3<u32> = vec3<u32>(0u, 4294967295u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(global4.x, ~(~(~0u))), min(~4294967295u & ~global4.x, var_0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(407f)) + -1016f)), 481f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1455f)) * arg_1.x)), 820f));
    var_2 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(712f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -1019f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(-1294f, _wgslsmith_f_op_f32(abs(-887f))), global1.b.x))));
    var var_3 = -(~vec2<i32>(-1i, max(arg_3, firstLeadingBit(arg_3))));
    return arg_2.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global3 = array<bool, 18>();
    let var_0 = Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(ceil(global1.b)));
    global0 = array<i32, 7>();
    global4 = vec3<u32>(arg_0.x, ~global4.x, ~_wgslsmith_dot_vec4_u32(~(~arg_0), vec4<u32>(4294967295u, func_3(true, var_0.b.yy, arg_0, 8706i), _wgslsmith_dot_vec4_u32(arg_0, arg_0), global4.x << (arg_0.x % 32u))));
    global3 = array<bool, 18>();
    return Struct_1(-2147483647i << (arg_0.x % 32u), vec4<f32>(1313f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(-454f * 1376f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f * 473f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -509f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1.b.x, var_0.b.x)))), _wgslsmith_f_op_f32(round(global1.b.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(~vec4<u32>(4294967295u, 4294967295u, 0u, global4.x) >> (~vec4<u32>(4294967295u, ~global4.x, select(47107u, 0u, global3[_wgslsmith_index_u32(global4.x, 18u)]), ~global4.x) % vec4<u32>(32u)));
    global1 = Struct_1(0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, 1908f, global1.b.x), var_0.b), vec4<f32>(805f, global1.b.x, 1470f, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(1523f, 1110f, var_0.b.x, 247f)), _wgslsmith_f_op_vec4_f32(-var_0.b))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), var_0.b.x, _wgslsmith_f_op_f32(abs(397f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.b.x)), _wgslsmith_f_op_f32(abs(global1.b.x)), global1.b.x)))));
    var var_2 = vec3<bool>(true, true, _wgslsmith_f_op_f32(global1.b.x - -315f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.x)) - var_1.x));
    let var_3 = Struct_1(-9115i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.b))) + _wgslsmith_f_op_vec4_f32(trunc(global1.b))));
    return Struct_1(-global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-800f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(trunc(var_1.x))), global1.b.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = all(select(vec3<bool>(!select(global3[_wgslsmith_index_u32(global4.x, 18u)], true, global3[_wgslsmith_index_u32(140u, 18u)]), true, true), !vec3<bool>(global3[_wgslsmith_index_u32(~1u, 18u)], all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 18u)], false, false)), true), !select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 18u)], false, false), select(vec3<bool>(global3[_wgslsmith_index_u32(65072u, 18u)], true, global3[_wgslsmith_index_u32(33281u, 18u)]), vec3<bool>(true, true, global3[_wgslsmith_index_u32(global4.x, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(67950u, 18u)], global3[_wgslsmith_index_u32(16548u, 18u)], true)), all(vec3<bool>(true, global3[_wgslsmith_index_u32(global4.x, 18u)], global3[_wgslsmith_index_u32(global4.x, 18u)])))));
    let var_1 = any(vec4<bool>(any(vec3<bool>(all(vec2<bool>(false, true)), false, !global3[_wgslsmith_index_u32(34554u, 18u)])), false, global3[_wgslsmith_index_u32(max(22578u, _wgslsmith_div_u32(4294967295u, global4.x)) | ~global4.x, 18u)], _wgslsmith_f_op_f32(step(660f, _wgslsmith_f_op_f32(-global1.b.x))) == global1.b.x));
    let var_2 = arg_0.b.zz;
    global3 = array<bool, 18>();
    global4 = vec3<u32>(0u, 23435u, global4.x);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    global1 = Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_2.b)))));
    var var_0 = !select(!vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 18u)], true, false, true)), global3[_wgslsmith_index_u32(~global4.x, 18u)]), !vec3<bool>(global3[_wgslsmith_index_u32(~global4.x, 18u)], global3[_wgslsmith_index_u32(82193u, 18u)], true), !((false || global3[_wgslsmith_index_u32(global4.x, 18u)]) | select(false, global3[_wgslsmith_index_u32(11097u, 18u)], global3[_wgslsmith_index_u32(73663u, 18u)])));
    let var_1 = !(!(!vec4<bool>(var_0.x, all(vec3<bool>(true, true, var_0.x)), global3[_wgslsmith_index_u32(1u, 18u)] || false, 1835i >= arg_2.a)));
    var var_2 = _wgslsmith_f_op_f32(-2380f * _wgslsmith_f_op_f32(117f - _wgslsmith_f_op_f32(f32(-1f) * -1352f))) < arg_2.b.x;
    var_0 = var_1.wzw;
    return select(!var_1.wzy, var_1.xyy, var_1.xzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b.x))));
    var var_1 = global3[_wgslsmith_index_u32(50228u, 18u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f * -1283f))));
    let var_3 = vec3<bool>(any(func_5(func_4(func_1()), var_2, func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(60824u, 1u, global4.x, 4294967295u), vec4<u32>(global4.x, global4.x, global4.x, 4294967295u))))), all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, global3[_wgslsmith_index_u32(global4.x, 18u)], false), false), vec3<bool>(false, global3[_wgslsmith_index_u32(global4.x, 18u)], global3[_wgslsmith_index_u32(global4.x, 18u)]), all(vec2<bool>(global3[_wgslsmith_index_u32(10157u, 18u)], true))), vec3<bool>(select(global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(global4.x, 18u)], false), true, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(72246u, global4.x), 18u)]), false)), any(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(9425u, 18u)], global3[_wgslsmith_index_u32(global4.x, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], false, global3[_wgslsmith_index_u32(37277u, 18u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(global4.x, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)])))));
    var_1 = ~_wgslsmith_mult_i32(max(func_4(Struct_1(-1i, vec4<f32>(global1.b.x, -454f, 1000f, var_2))).a, -24319i), 0i) != global0[_wgslsmith_index_u32(38203u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(select(vec2<i32>(-51437i, -1i), vec2<i32>(global0[_wgslsmith_index_u32(global4.x, 7u)], 10771i), vec2<bool>(false, global3[_wgslsmith_index_u32(6149u, 18u)]))) | _wgslsmith_clamp_vec2_i32(min(vec2<i32>(global1.a, global1.a), vec2<i32>(global1.a, global1.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global1.a), vec2<i32>(2147483647i, u_input.a)), select(vec2<i32>(global1.a, u_input.a), vec2<i32>(global0[_wgslsmith_index_u32(global4.x, 7u)], 17994i), var_3.yy))), vec4<f32>(func_1().b.x, 936f, _wgslsmith_f_op_f32(exp2(global1.b.x)), 406f), (-(vec3<i32>(global1.a, global1.a, 3527i) & vec3<i32>(global0[_wgslsmith_index_u32(global4.x, 7u)], 2147483647i, u_input.a)) & max(_wgslsmith_mult_vec3_i32(vec3<i32>(-93909i, 60432i, global0[_wgslsmith_index_u32(global4.x, 7u)]), vec3<i32>(u_input.a, global1.a, 18755i)), ~vec3<i32>(1i, u_input.a, 2147483647i))) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(64077u, global4.x, 1u), vec3<u32>(0u, global4.x, global4.x)) & vec3<u32>(1u, 35835u, global4.x), vec3<u32>(global4.x, global4.x, func_3(true, vec2<f32>(var_2, global1.b.x), vec4<u32>(global4.x, 43285u, global4.x, global4.x), global1.a)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global4.x, 4294967295u, global4.x), vec3<u32>(0u, global4.x, 1668u)), vec3<u32>(1u, global4.x, global4.x) << (vec3<u32>(4294967295u, global4.x, 55217u) % vec3<u32>(32u)), any(vec3<bool>(false, true, var_3.x)))) % vec3<u32>(32u)));
}

