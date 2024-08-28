struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(1i, -33457i, -1i, 1i);

var<private> global1: array<vec3<i32>, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), 1000f);
    var var_1 = Struct_1(vec4<bool>(any(select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), !var_0.a, vec4<bool>(false, false, false, var_0.a.x))), true, !var_0.a.x, all(!select(var_0.a, vec4<bool>(true, true, var_0.a.x, var_0.a.x), var_0.a))), _wgslsmith_f_op_f32(step(1752f, _wgslsmith_f_op_f32(f32(-1f) * -476f))));
    global0 = array<i32, 4>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
    var_2 = var_1.b;
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = 0i;
    var var_1 = arg_3;
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let var_2 = false & var_1.a.x;
    return firstLeadingBit(_wgslsmith_add_u32(select(u_input.a.x, ~u_input.a.x, all(vec3<bool>(false, true, true))), u_input.a.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = abs(func_4(arg_2, arg_2.a.yyw, arg_2, Struct_1(!select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(true, false, arg_2.a.x, false), arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.x)) * _wgslsmith_f_op_f32(-arg_2.b)))));
    var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * 265f) - -699f) - arg_2.b);
    let var_2 = any(!select(select(vec3<bool>(false, true, true), select(vec3<bool>(arg_1.x, arg_2.a.x, arg_2.a.x), vec3<bool>(false, false, true), true), true), vec3<bool>(!arg_2.a.x, !arg_2.a.x, 29871u == u_input.a.x), select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !arg_2.a.xyz, !arg_2.a.x)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(191f))));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    var var_0 = func_2(-_wgslsmith_clamp_vec2_i32(abs(-vec2<i32>(-22379i, global0[_wgslsmith_index_u32(arg_3, 4u)])), ~countOneBits(vec2<i32>(-2147483647i, -6727i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(arg_3, 4u)]), vec2<i32>(-28729i, -10386i))), arg_2.a.zy, Struct_1(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), func_2(firstTrailingBit(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(arg_3, 4u)])) & ~vec2<i32>(23834i, -22041i), vec2<bool>(false, true), arg_1).b));
    let var_1 = _wgslsmith_mult_i32(-1i, global0[_wgslsmith_index_u32(arg_3, 4u)]);
    let var_2 = !var_0.a.x;
    global1 = array<vec3<i32>, 6>();
    let var_3 = _wgslsmith_div_i32(-2147483647i, -_wgslsmith_mult_i32(-4836i, -10861i));
    return vec2<i32>(-(firstTrailingBit(26175i) | -abs(var_3)), firstLeadingBit(-4077i));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(~abs(-(~arg_2)), vec2<bool>(arg_1 < _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(6939u, 4u)], global0[_wgslsmith_index_u32(317u, 4u)]), arg_2), -vec2<i32>(arg_2.x, -2147483647i)), !(true & arg_0.a.x)), arg_3);
    let var_1 = var_0.a.zy;
    let var_2 = -_wgslsmith_add_i32(2147483647i, arg_1);
    var var_3 = select(select(vec3<bool>(true, true, false), select(arg_3.a.zyz, !(!vec3<bool>(true, var_1.x, var_1.x)), select(vec3<bool>(false, var_0.a.x, arg_3.a.x), vec3<bool>(true, true, var_0.a.x), true)), _wgslsmith_mod_i32(-var_2, 63321i ^ arg_2.x) >= abs(-var_2)), vec3<bool>(all(arg_0.a.yyz) || !arg_3.a.x, select(!var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 4u)])) >= _wgslsmith_f_op_f32(max(var_0.b, 136f))), true), !arg_0.a.zzx);
    global0 = array<i32, 4>();
    return Struct_1(vec4<bool>(arg_3.a.x, true, true, true), _wgslsmith_f_op_f32(round(var_0.b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true;
    global0 = array<i32, 4>();
    var var_1 = arg_0;
    let var_2 = vec2<i32>(47065i & global0[_wgslsmith_index_u32(1u, 4u)], 0i);
    var_1 = func_6(Struct_1(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(613f * arg_1.b)))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_2 | var_2, vec2<i32>(0i, -1i)), -vec2<i32>(var_2.x, var_2.x)), ~(-24172i), var_2.x), func_5(arg_1, Struct_1(!var_1.a, var_1.b), func_2(_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, 14559i), _wgslsmith_mod_vec2_i32(var_2, var_2)), var_1.a.zw, Struct_1(select(vec4<bool>(true, arg_0.a.x, true, false), vec4<bool>(true, arg_0.a.x, false, true), true), -277f)), ~u_input.a.x), Struct_1(var_1.a, _wgslsmith_f_op_f32(-arg_0.b)));
    return Struct_1(vec4<bool>(arg_1.a.x, all(select(!arg_1.a, vec4<bool>(arg_0.a.x, true, true, arg_0.a.x), var_1.a.x)), false, arg_1.b >= func_6(func_2(var_2, arg_0.a.xz, Struct_1(vec4<bool>(arg_1.a.x, true, false, arg_0.a.x), arg_0.b)), 1i, ~var_2, arg_0).b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(848f + 1386f)), func_6(arg_1, ~global0[_wgslsmith_index_u32(96813u, 4u)], firstTrailingBit(vec2<i32>(var_2.x, global0[_wgslsmith_index_u32(29105u, 4u)])), arg_0).b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 6>();
    var var_0 = func_1(Struct_1(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, false), vec4<bool>(all(vec3<bool>(true, false, true)), true, false, false), true || all(vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f) - _wgslsmith_f_op_f32(max(697f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(825f, -532f))))), Struct_1(vec4<bool>(all(vec2<bool>(false, false)), true & all(vec2<bool>(true, false)), false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(440f, -1351f)))));
    let var_1 = Struct_1(vec4<bool>(!((var_0.b != -1574f) || !var_0.a.x), select(all(var_0.a.yxy), false, func_1(Struct_1(vec4<bool>(false, var_0.a.x, var_0.a.x, false), -403f), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), -1168f)).a.x), func_6(Struct_1(!vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), _wgslsmith_f_op_f32(-var_0.b)), ~(~(-1i)), abs(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(25740u, 4u)]) ^ vec2<i32>(71026i, 12954i)), func_1(Struct_1(var_0.a, -1409f), func_6(Struct_1(var_0.a, 1150f), 16508i, vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 5978i), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), var_0.b)))).a.x, false), var_0.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(975f, var_0.b, var_1.b, var_0.b)))))));
    var_0 = func_1(func_1(func_6(var_1, global0[_wgslsmith_index_u32(~(~1u), 4u)], vec2<i32>(min(-2147483647i, global0[_wgslsmith_index_u32(20557u, 4u)]), 58267i), func_6(func_2(vec2<i32>(0i, -6732i), vec2<bool>(var_1.a.x, var_1.a.x), Struct_1(var_1.a, 284f)), ~(-39194i), -vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(53376u, 4u)]), Struct_1(var_0.a, var_2.x))), var_1), Struct_1(var_0.a, var_2.x));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1376f, 992f, 120f, -924f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -2001f, -1825f) - vec4<f32>(1000f, var_2.x, 1695f, var_1.b))), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(-var_0.b), -855f, _wgslsmith_f_op_f32(-1000f + 2299f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-484f, -740f, var_0.b, var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 264f, var_2.x, var_1.b), vec4<f32>(var_1.b, 607f, 935f, var_2.x)) * vec4<f32>(-1330f, var_2.x, var_0.b, var_2.x))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.b * -1730f), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -260f)))))));
    global1 = array<vec3<i32>, 6>();
    global1 = array<vec3<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4744u, u_input.a.x), 4u)]) ^ abs(-101523i), 1145f, 0i);
}

