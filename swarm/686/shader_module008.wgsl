struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 24> = array<u32, 24>(4294967295u, 1u, 31760u, 0u, 0u, 4294967295u, 45886u, 4294967295u, 40019u, 560u, 4294967295u, 386u, 32937u, 4294967295u, 1u, 35163u, 3467u, 1u, 12183u, 1u, 83924u, 24733u, 4294967295u, 7773u);

var<private> global2: vec3<u32> = vec3<u32>(78723u, 66121u, 25174u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f)), -474f, abs(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a)), -2147483647i, select(62463i, u_input.a, false), u_input.d.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 34399i, u_input.a << (global1[_wgslsmith_index_u32(u_input.b, 24u)] % 32u)), -(u_input.d ^ vec3<i32>(0i, u_input.d.x, 2147483647i))), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.a, -22462i), vec3<i32>(-1i, u_input.a, u_input.d.x)), u_input.a))));
    let var_1 = 17919u;
    var var_2 = _wgslsmith_sub_u32(firstTrailingBit(~(~abs(var_1))), ~(~(~_wgslsmith_sub_u32(50331u, 1u))));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -820f, var_3.b) - vec3<f32>(var_3.b, var_0.a, 789f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, global0.x, var_0.a)), select(true, true, true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, -808f, global0.x), vec3<f32>(-587f, 512f, -1360f), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 660f, global0.x) * vec3<f32>(global0.x, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, -765f, global0.x) - vec3<f32>(global0.x, global0.x, -928f)))))));
    return var_3.d;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(-1013f)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, 1i), 2147483647i, func_3(), 0i), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_2 << (global2.zx % vec2<u32>(32u)), vec2<i32>(2147483647i, 1i) ^ vec2<i32>(2147483647i, u_input.a)), _wgslsmith_mult_i32(~arg_2.x, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_2.x, u_input.a, u_input.d.x))), -45633i, max(0i, u_input.a))), reverseBits(abs(u_input.a)));
    global1 = array<u32, 24>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), arg_0, -_wgslsmith_mod_vec4_i32(firstTrailingBit(select(vec4<i32>(arg_2.x, arg_2.x, u_input.a, -21002i), var_0.c, vec4<bool>(arg_3.x, arg_3.x, arg_1.x, true))), ~vec4<i32>(-35846i, arg_2.x, 70652i, -1i) << (max(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 109302u, global1[_wgslsmith_index_u32(77098u, 24u)], 39912u), vec4<u32>(global2.x, global1[_wgslsmith_index_u32(1857u, 24u)], 1u, global2.x)) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(select(var_0.d, u_input.a, false), arg_2.x, ~1i) & vec3<i32>(20695i, ~arg_2.x, func_3()), countOneBits(u_input.d)));
    var var_2 = -1000f;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.b, -758f), -990f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1061f, arg_0) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, var_1.a) * vec2<f32>(1915f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -527f), vec2<f32>(-944f, -129f))))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(global0.x, vec2<bool>(true, true), vec2<i32>(22044i, arg_2.c.x), vec4<bool>(false, false, false, false)).a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1400f, arg_1.a) + _wgslsmith_f_op_f32(arg_0.b * global0.x))))), vec2<bool>(false, false), arg_1.c.yz << (~u_input.c % vec2<u32>(32u)), vec4<bool>(!all(vec4<bool>(true, true, true, true)), true, true, arg_2.a >= _wgslsmith_f_op_f32(exp2(arg_2.b))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), 1109f, _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_div_i32(var_0.d, arg_2.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -57629i), countOneBits(vec2<i32>(arg_0.c.x, u_input.d.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, 22912i, -1i, 29942i) >> (vec4<u32>(global2.x, 0u, 4294967295u, global2.x) % vec4<u32>(32u)), max(vec4<i32>(-2147483647i, 1i, arg_2.d, -44919i), arg_2.c)), countOneBits(max(-35807i, arg_0.d))), _wgslsmith_mod_vec4_i32(func_2(-913f, vec2<bool>(true, true), -var_0.c.ww, select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))).c, firstLeadingBit(abs(arg_2.c)))), u_input.a);
    var var_2 = _wgslsmith_div_f32(456f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1459f))))) == _wgslsmith_div_f32(-2205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1000f - 679f))));
    var var_3 = select(select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), vec3<bool>(any(vec2<bool>(true, true)), select(true, true, true) | true, true), true), vec3<bool>(false, !(global1[_wgslsmith_index_u32(u_input.e, 24u)] != 0u) | ((var_1.a == var_1.a) | true), true), false);
    var var_4 = 4294967295u;
    return -arg_1.c;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~global1[_wgslsmith_index_u32(16882u, 24u)];
    let var_1 = arg_0;
    global1 = array<u32, 24>();
    var_0 = firstTrailingBit(select(~u_input.b, 4294967295u, (var_1.a <= var_1.a) | true) | ~24236u);
    let var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_div_f32(arg_0.b, var_1.b), countOneBits(var_2.c), var_1.c.x);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: i32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1728f) + vec2<f32>(-137f, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 954f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -883f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x))), vec2<f32>(-1005f, 1084f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-701f, -984f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, global0.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1643f, global0.x) + vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 139f), vec2<f32>(global0.x, global0.x), arg_2)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -100f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-385f, global0.x)))))));
    var var_0 = any(!select(!vec4<bool>(arg_0, arg_0, arg_2, arg_0), select(vec4<bool>(true, arg_0, arg_2, arg_0), vec4<bool>(true, false, true, false), arg_2), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, true, false, arg_2), vec4<bool>(true, true, arg_0, arg_0)))) != (select(true, arg_2, any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_2)))) & false);
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), 427f, func_4(func_2(_wgslsmith_f_op_f32(-383f - global0.x), !vec2<bool>(false, arg_2), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, arg_3), u_input.d.xx), vec4<bool>(arg_2, arg_0, arg_2, true)), func_2(global0.x, vec2<bool>(true, true), vec2<i32>(u_input.d.x, arg_3), !vec4<bool>(true, false, arg_2, true)), func_2(global0.x, vec2<bool>(false, true), func_2(global0.x, vec2<bool>(true, true), vec2<i32>(2699i, u_input.a), vec4<bool>(arg_0, false, false, false)).c.ww, vec4<bool>(arg_0, arg_2, arg_0, arg_0))), u_input.d.x));
    global1 = array<u32, 24>();
    return (vec3<i32>((u_input.d.x & u_input.a) >> (48843u % 32u), 1i, arg_3) >> (~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(15614u, 20715u, u_input.e)), select(vec3<u32>(1u, arg_1, 70012u), vec3<u32>(global1[_wgslsmith_index_u32(59924u, 24u)], 0u, 37126u), arg_2)) % vec3<u32>(32u))) | u_input.d;
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = arg_2;
    global1 = array<u32, 24>();
    let var_1 = func_5(func_5(func_5(func_2(_wgslsmith_f_op_f32(665f - -808f), vec2<bool>(true, true), _wgslsmith_add_vec2_i32(u_input.d.xy, arg_2.c.zy), vec4<bool>(true, true, true, false)))));
    var var_2 = global2.x;
    var var_3 = _wgslsmith_f_op_f32(select(1513f, _wgslsmith_f_op_f32(-global0.x), !select(true, true, true)));
    return !(!select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!func_6(firstTrailingBit(countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(68541u, 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31041u, 24u)], 24u)], global1[_wgslsmith_index_u32(9408u, 24u)]))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.d.x, -43032i) << (vec3<u32>(global1[_wgslsmith_index_u32(global2.x, 24u)], u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35633u, 24u)], 24u)]) % vec3<u32>(32u)), func_1(false, 51541u, false, 1i)), func_5(Struct_1(1496f, global0.x, vec4<i32>(u_input.d.x, 6390i, u_input.d.x, u_input.d.x), 2147483647i)), vec4<i32>(-21931i, u_input.a, 26220i, abs(u_input.a))));
    let var_1 = Struct_1(-611f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1346f - _wgslsmith_f_op_f32(trunc(-1112f))))), vec4<i32>(-1i) * -countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, u_input.d.x), vec4<i32>(u_input.a, -11455i, u_input.d.x, 1i))), u_input.d.x);
    global2 = firstLeadingBit(vec3<u32>(reverseBits(max(25323u, 1u)) ^ ~(u_input.c.x << (0u % 32u)), ~(~abs(39113u)), max(~1u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(global1[_wgslsmith_index_u32(13672u, 24u)], 43531u, 4700u), vec3<u32>(u_input.e, u_input.c.x, u_input.e)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 6294u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], u_input.e))))));
    let var_2 = _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(global2.x, 1u, 28926u, 2473u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 2062u, 32729u, u_input.b), vec4<u32>(23196u, 41234u, u_input.e, global1[_wgslsmith_index_u32(77579u, 24u)]), vec4<u32>(u_input.c.x, 13215u, 67708u, global2.x)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b ^ global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)] & global1[_wgslsmith_index_u32(global2.x, 24u)], 1u, 1u), max(vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(u_input.e, 24u)], global2.x) >> (vec4<u32>(44399u, 51715u, 4294967295u, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(global2.x, 0u, 18605u, 4294967295u) << (vec4<u32>(global2.x, 4294967295u, u_input.b, 32533u) % vec4<u32>(32u))), vec4<u32>(max(0u, 1u), countOneBits(global1[_wgslsmith_index_u32(global2.x, 24u)]), 0u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 34183u), 24u)])) | abs(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, global2.x, global2.x, global2.x)), ~vec4<u32>(u_input.e, global2.x, 35647u, u_input.e))));
    var var_3 = !(!select(true, false, true));
    global1 = array<u32, 24>();
    var var_4 = var_1;
    var var_5 = func_5(func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -454f), global0.x, var_1.c, ~var_1.c.x)));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_4.b), global0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b, var_4.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(690f, 834f)), _wgslsmith_f_op_f32(sign(259f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(func_5(func_5(var_1)).b, var_1.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_5.a, -1311f))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true)))), any(vec4<bool>(true, true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global2.x, global1[_wgslsmith_index_u32(var_2.x, 24u)])), ~var_2.xw));
}

