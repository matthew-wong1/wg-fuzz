struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(22440i, -61889i, -76918i, i32(-2147483648), 0i);

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = Struct_2(-1609f);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(962f, _wgslsmith_f_op_f32(round(var_0.a)), -352f, var_0.a), vec4<f32>(_wgslsmith_div_f32(arg_1.a.d, arg_1.a.d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -717f))), 1000f, 375f))));
    global1 = select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.b, 5u)] <= abs(0i), any(vec4<bool>(arg_3, arg_2, global1.x, arg_3)), all(!vec4<bool>(arg_2, false, true, global1.x)), !arg_3 | global1.x), !vec4<bool>(true, false, true || arg_3, any(global1.xzw)), all(global1.zy)), vec4<bool>(false, arg_2, true, true), vec4<bool>(arg_3, false, global1.x, arg_2));
    let var_2 = ~(~firstTrailingBit(~vec3<u32>(0u, 1u, u_input.a.x)) << ((~(~arg_1.a.c) >> (firstTrailingBit(arg_1.a.c) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(var_0.a, var_1.x)) + -457f) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -1115f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f * -710f) - var_0.a))));
    return var_3.a;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(290f);
    var var_1 = Struct_3(Struct_1(u_input.a.x, _wgslsmith_sub_u32(4294967295u, 1u), u_input.a << (vec3<u32>(countOneBits(48597u), u_input.a.x, ~u_input.a.x) % vec3<u32>(32u)), -1259f, reverseBits(u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(func_3(vec2<i32>(~11777i, reverseBits(~var_1.a.e.x)), Struct_3(Struct_1(countOneBits(u_input.a.x), max(u_input.a.x, 4294967295u), _wgslsmith_clamp_vec3_u32(u_input.a, var_1.a.c, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(659f))), -(vec3<i32>(-13053i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]) >> (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))))), global1.x, !global1.x));
    global0 = array<i32, 5>();
    return Struct_3(Struct_1(0u, select(firstLeadingBit(firstTrailingBit(0u)), 0u, true), countOneBits(firstTrailingBit(u_input.a) & vec3<u32>(1u, var_1.a.c.x, 96668u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))) - var_0.a), vec3<i32>(~(-37178i), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 5u)] ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -1i), vec3<i32>(global0[_wgslsmith_index_u32(97867u, 5u)], 13669i, 1i)), global0[_wgslsmith_index_u32(var_1.a.c.x, 5u)])));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> bool {
    let var_0 = vec4<f32>(897f, -1000f, arg_0.a.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(297f - arg_0.a.d) + _wgslsmith_f_op_f32(trunc(arg_0.a.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -702f))))), _wgslsmith_div_f32(-825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.d)))), select(select(false, global1.x, global1.x) | global1.x, false, all(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, false), true))))));
    global1 = select(vec4<bool>(true, (true != global1.x) & all(vec2<bool>(global1.x, global1.x)), firstTrailingBit(i32(-1i) * -23871i) == abs(81i), all(select(global1.wx, select(vec2<bool>(true, global1.x), global1.zy, false), global1.wy))), select(select(!select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, true, false, true), true), !select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), global1.x), all(vec3<bool>(false, global1.x, global1.x))), !vec4<bool>(true, !global1.x, global1.x, global1.x), select(vec4<bool>(true, global1.x, all(vec3<bool>(global1.x, true, true)), true), !(!vec4<bool>(false, true, global1.x, global1.x)), select(vec4<bool>(global1.x, global1.x, global1.x, false), !vec4<bool>(global1.x, global1.x, global1.x, false), true))), !any(select(vec2<bool>(global1.x, global1.x), global1.yw, global1.zx)));
    global1 = vec4<bool>(any(global1.yy), true, true, any(!vec3<bool>(true, global1.x, global1.x | global1.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(611f, var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.d, arg_3.a.d) * arg_0.a.d) - 1125f), _wgslsmith_f_op_f32(-244f + 974f))));
    global1 = select(select(vec4<bool>(true, abs(arg_1.a.c.x) >= ~arg_0.a.c.x, false, global1.x), !(!vec4<bool>(false, global1.x, global1.x, global1.x)), vec4<bool>(false, select(false, all(global1.xw), any(vec2<bool>(global1.x, true))), global1.x, 1u <= func_2(u_input.b.x).a.a)), vec4<bool>(true, true, !all(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x))), select(any(vec3<bool>(global1.x, global1.x, global1.x)), all(!vec2<bool>(true, global1.x)), !(global0[_wgslsmith_index_u32(arg_0.a.b, 5u)] != arg_2))), vec4<bool>(false, global1.x, select(true, global1.x, global1.x), select(global1.x, !(global1.x & false), global1.x)));
    return global1.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> bool {
    global1 = vec4<bool>(!(!arg_1.x), false, (true | arg_2.x) && ((_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.b.x) < (u_input.b.x >> (25424u % 32u))) || (~arg_0.x <= reverseBits(arg_0.x))), true);
    var var_0 = global1.x && (select(arg_2.x, true, func_4(func_2(u_input.b.x), func_2(-18527i), select(u_input.b.x, 0i, false), Struct_3(Struct_1(u_input.a.x, 1u, vec3<u32>(0u, 20475u, u_input.a.x), -557f, vec3<i32>(-7122i, -2147483647i, -522i))))) | select(true, any(select(arg_1, arg_1, true)), true));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!select(vec4<bool>(global1.x | global1.x, func_1(vec4<u32>(34167u, u_input.a.x, u_input.a.x, 1u), vec4<bool>(global1.x, global1.x, global1.x, true), vec2<bool>(true, global1.x)), all(vec2<bool>(false, global1.x)), true), !select(vec4<bool>(false, true, global1.x, true), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, global1.x, true, false)), vec4<bool>(global1.x, false, global1.x, true)));
    var var_0 = func_2(select(max(-(~(-44203i)), -68735i), i32(-1i) * -(~(-9805i)), all(vec2<bool>(global1.x, false))));
    global1 = !select(vec4<bool>(!global1.x, true, true, func_1(~vec4<u32>(23015u, u_input.a.x, u_input.a.x, var_0.a.b), !vec4<bool>(false, global1.x, false, true), vec2<bool>(false, global1.x))), !vec4<bool>(true, global1.x, global1.x & false, true), vec4<bool>(true, all(vec2<bool>(true, global1.x)) & true, global1.x, global1.x));
    var_0 = Struct_3(func_2(func_2(u_input.b.x).a.e.x).a);
    global1 = select(!select(select(select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false), !vec4<bool>(global1.x, false, global1.x, false), false), vec4<bool>(func_4(Struct_3(Struct_1(u_input.a.x, u_input.a.x, vec3<u32>(0u, 28666u, 33100u), 575f, var_0.a.e)), Struct_3(var_0.a), global0[_wgslsmith_index_u32(0u, 5u)], Struct_3(var_0.a)), any(global1.xw), all(vec3<bool>(true, true, global1.x)), u_input.a.x >= 42175u), vec4<bool>(all(vec4<bool>(global1.x, true, global1.x, global1.x)), global1.x, true, global1.x)), !(!(!vec4<bool>(false, false, global1.x, false))), any(select(vec4<bool>(any(global1.yxy), true, global1.x, false && global1.x), select(select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, global1.x, false, false), global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(global1.x, false, global1.x, true)), false)));
    var var_1 = u_input.b;
    var_1 = select(select(vec3<i32>(func_2(-1i).a.e.x, abs(var_1.x), ~(-25318i)), vec3<i32>(u_input.b.x & 2147483647i, var_1.x, -var_1.x) & (var_0.a.e | u_input.b), !global1.zzz), -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b >> (u_input.a % vec3<u32>(32u)), var_0.a.e), var_0.a.e), all(select(select(global1.wwz, !vec3<bool>(false, global1.x, false), global1.x), vec3<bool>(true, false, global1.x), select(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global1.x, true)), !global1.zzx, select(global1.x, global1.x, global1.x)))));
    let var_2 = ~vec4<i32>(u_input.b.x, 61141i, _wgslsmith_mod_i32(firstLeadingBit(18273i), -countOneBits(u_input.b.x)), var_0.a.e.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1013f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) + -765f)), var_0.a.d, _wgslsmith_f_op_f32(-var_0.a.d), 1004f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, var_0.a.d, -829f, 1054f) - vec4<f32>(var_0.a.d, var_0.a.d, var_0.a.d, var_0.a.d)))))) * vec4<f32>(1234f, -2792f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-147f + var_0.a.d))), var_0.a.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), max(~(~(-vec2<i32>(40991i, -1i))), vec2<i32>(~(~var_1.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 0i, 2147483647i), vec3<i32>(-17983i, var_0.a.e.x, 44046i)), ~vec3<i32>(30617i, var_1.x, 2147483647i)))));
}

