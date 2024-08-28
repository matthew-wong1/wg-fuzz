struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<u32, 5> = array<u32, 5>(0u, 4294967295u, 0u, 4294967295u, 7090u);

var<private> global2: array<vec3<bool>, 8>;

var<private> global3: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    global3 = Struct_1(-2147483647i);
    global0 = array<bool, 21>();
    let var_0 = arg_1;
    var var_1 = !global0[_wgslsmith_index_u32(8531u, 21u)];
    var var_2 = var_0;
    return 2147483647i;
}

fn func_2() -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_i32(1i, reverseBits(~(~global3.a)));
    var var_1 = ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]), u_input.d)), 5u)], 5u)];
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d, _wgslsmith_div_vec2_u32(u_input.d, (u_input.d ^ vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)])) | (vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]) | vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(70876u, 5u)])))), ~u_input.d);
    global0 = array<bool, 21>();
    var_1 = u_input.d.x;
    return Struct_1(global3.a | (max(_wgslsmith_clamp_i32(var_0, 59705i, global3.a), ~(-74805i)) | (func_3(vec4<i32>(4850i, global3.a, -2147483647i, var_0), Struct_1(-1i)) | ~(-2147483647i))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 10626i;
    let var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a, arg_1.x) >> (~arg_0 % 32u), max(~arg_0, 71230u >> (arg_0 % 32u))), ~arg_1.xz);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(728f, 425f, -180f, 156f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-701f, -1510f, 298f, 190f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 451f, -1093f, -900f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(floor(1211f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1526f), _wgslsmith_f_op_f32(-1301f - 268f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1869f * -508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f - -562f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-606f))))), 1249f));
    var var_3 = arg_1;
    var var_4 = false | all(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 21u)], true))));
    return Struct_1(arg_3.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = func_4(88586u, vec4<u32>(u_input.c, 0u, 1u, 929u), func_2(), func_2());
    let var_1 = select(select(!(!select(arg_0.zx, vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50794u, 5u)], 21u)]), arg_0.x)), arg_0.yy, vec2<bool>(all(!vec2<bool>(arg_0.x, arg_0.x)), arg_0.x)), arg_0.xy, vec2<bool>(arg_0.x, all(select(!vec4<bool>(false, false, false, arg_0.x), vec4<bool>(true, true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 21u)], false, false, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 21u)], true), global0[_wgslsmith_index_u32(u_input.b, 21u)])))));
    var var_2 = !(!(!(!select(var_1, vec2<bool>(global0[_wgslsmith_index_u32(33498u, 21u)], var_1.x), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 5u)], 21u)])))));
    var var_3 = max(~u_input.d, arg_3.yx);
    var_2 = !(!(!vec2<bool>(var_1.x, arg_1.a >= -37449i)));
    return func_4(~countOneBits(u_input.c) | ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.x, 1u), 5u)], vec4<u32>(75370u, global1[_wgslsmith_index_u32(arg_3.x, 5u)], 1u, ~4294967295u), var_0, var_0);
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(-1i);
    global0 = array<bool, 21>();
    global1 = array<u32, 5>();
    let var_1 = _wgslsmith_clamp_u32(abs(59767u), u_input.c, 3140u);
    let var_2 = func_2();
    return min(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(84128u, u_input.d.x)) ^ vec2<u32>(global1[_wgslsmith_index_u32(~u_input.b, 5u)], arg_1.x & 26945u), vec2<u32>(4294967295u, ~(~4294967295u))), u_input.d.x & 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 21>();
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(~0u, 4139u), u_input.d), ~vec2<u32>(_wgslsmith_add_u32(28423u, max(u_input.c, 4294967295u)), func_5(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 5u)], _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(267u, 5u)], global1[_wgslsmith_index_u32(u_input.c, 5u)], 30261u), vec3<u32>(u_input.c, 58802u, u_input.c)), func_1(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63471u, 5u)], 8u)], Struct_1(-1223i), Struct_1(global3.a), vec4<u32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 5u)], 1u)))));
    let var_1 = select(~vec4<u32>(47901u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(var_0.x, 5u)], u_input.d.x), _wgslsmith_mod_u32(var_0.x, u_input.b), min(var_0.x, global1[_wgslsmith_index_u32(79325u, 5u)])) & ~(~vec4<u32>(var_0.x, 108001u, u_input.d.x, 11034u) >> (~vec4<u32>(var_0.x, var_0.x, 1u, 9620u) % vec4<u32>(32u))), countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(82069u, 1u, global1[_wgslsmith_index_u32(var_0.x, 5u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 7435u, global1[_wgslsmith_index_u32(12818u, 5u)]), vec3<u32>(4294967295u, 31853u, 0u), vec3<u32>(u_input.c, 0u, 4294967295u))), u_input.c, u_input.d.x, _wgslsmith_mult_u32(9010u, ~4294967295u))), !select(!select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19239u, 5u)], 21u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 21u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], false, false)), vec4<bool>(true && global0[_wgslsmith_index_u32(var_0.x, 21u)], !global0[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 21u)] || global0[_wgslsmith_index_u32(121145u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15370u, 5u)], 21u)])), global0[_wgslsmith_index_u32(4294967295u, 21u)], var_0.x == var_0.x, !global0[_wgslsmith_index_u32(0u, 21u)])));
    let var_2 = var_1.yyw;
    global0 = array<bool, 21>();
    global1 = array<u32, 5>();
    var var_3 = !vec2<bool>(true, all(vec2<bool>(any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 21u)])), !global0[_wgslsmith_index_u32(2854u, 21u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1170f, -1845f, -125f), vec3<f32>(149f, 729f, 338f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2464f, 391f, 908f))))), vec3<f32>(-1608f, 1208f, _wgslsmith_f_op_f32(657f + -594f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1512f + -645f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2422f)), _wgslsmith_div_f32(-1466f, 572f)), -1075f)), vec3<u32>(1u & abs(u_input.a), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d), abs(var_2.zz)) << (0u % 32u), ~(~var_2.x)), _wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(1u), 10536u), abs(global1[_wgslsmith_index_u32(countOneBits(3251u), 5u)])) & 0u);
}

