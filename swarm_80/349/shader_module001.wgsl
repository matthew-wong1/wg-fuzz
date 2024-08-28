struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
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

var<private> global0: array<u32, 12> = array<u32, 12>(63365u, 56533u, 0u, 799u, 4294967295u, 4294967295u, 45585u, 4294967295u, 13902u, 4294967295u, 4294967295u, 0u);

var<private> global1: vec3<f32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = 0u;
    global0 = array<u32, 12>();
    var var_1 = -375f;
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, u_input.b, max(arg_2, -arg_2), _wgslsmith_mult_i32(u_input.b, -34327i)), vec4<i32>(-u_input.b, i32(-1i) * -u_input.b, -u_input.b, u_input.b)));
    let var_3 = Struct_3(true);
    return Struct_1(vec4<i32>(0i, _wgslsmith_div_i32(u_input.b, -19788i), var_2.a.x ^ (arg_2 >> (reverseBits(0u) % 32u)), _wgslsmith_mult_i32(u_input.b, var_2.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x)) + global1.zz)));
    global0 = array<u32, 12>();
    let var_1 = min(~(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 23498u), vec2<u32>(118768u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)])) & u_input.a), _wgslsmith_add_vec2_u32(~(~u_input.a), ~(~reverseBits(u_input.a))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, global1.x))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(129f, global1.x, 305f), vec3<f32>(211f, 354f, 928f))))))));
    return arg_1.a.xzz;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_1(~arg_1.a.a);
    let var_1 = Struct_2(Struct_1(reverseBits(-arg_1.b.a)), arg_0, select(vec4<bool>(all(!arg_1.e), any(arg_1.e.xz), true, true), arg_1.e, any(arg_1.e) & !(31236u <= u_input.a.x)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, global1.x, global1.x, -1648f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -213f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) * _wgslsmith_div_f32(-151f, 363f)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(434f + 1000f)), 1825f), -select(1i, arg_1.b.a.x, true)), arg_1.e);
    var var_2 = Struct_3(arg_1.c.x);
    let var_3 = arg_1.b;
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(global1.zz));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.x, _wgslsmith_f_op_f32(-var_4.x), -206f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-645f)), _wgslsmith_f_op_f32(var_4.x - var_4.x))), 498f, -678f)), 731f < _wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(global1.x, -1655f))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = !select(vec4<bool>(!select(arg_0.a, false, false), all(!vec2<bool>(arg_0.a, true)), true, false), vec4<bool>((false | arg_0.a) | arg_0.a, false, arg_0.a, arg_0.a), false && arg_0.a);
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1170f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -223f))), -1316f), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(firstLeadingBit(vec4<i32>(u_input.b, 41465i, 9431i, -21904i))), Struct_2(Struct_1(~vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)), Struct_1(~vec4<i32>(u_input.b, -1i, u_input.b, -32338i)), vec4<bool>(var_0.x, !arg_0.a, var_0.x, false), Struct_1(vec4<i32>(-1i, u_input.b, u_input.b, 36321i)), !vec4<bool>(var_0.x, arg_0.a, arg_0.a, true)), func_3(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -1049f) * vec4<f32>(global1.x, global1.x, 662f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), -u_input.b), Struct_1(select(vec4<i32>(1i, -867i, u_input.b, 35549i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), arg_0.a)), 885i), u_input.a | u_input.a)), any(!select(vec3<bool>(true, false, false), var_0.xww, all(var_0.ww)))));
    let var_1 = u_input.b < _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 14248i, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -45860i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.b, 1i, u_input.b, 71499i), vec4<i32>(0i, 0i, u_input.b, u_input.b)), vec4<i32>(42147i, u_input.b, u_input.b, 45795i)));
    global0 = array<u32, 12>();
    let var_2 = true;
    return Struct_1(vec4<i32>(~u_input.b | u_input.b, firstTrailingBit(u_input.b), firstLeadingBit(u_input.b), firstTrailingBit(2147483647i)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = func_1(arg_3);
    var var_1 = !(!vec3<bool>(true, false, all(vec4<bool>(true, true, arg_3.a, arg_3.a))));
    let var_2 = false;
    var var_3 = reverseBits(firstTrailingBit(abs(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 12u)], 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(4036u, 12u)]), vec3<u32>(51989u, 4294967295u, 61086u))))));
    var var_4 = arg_3;
    return arg_3;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = arg_3.a;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(arg_3), Struct_2(func_1(Struct_3(arg_3.a)), func_1(func_5(vec2<bool>(false, arg_1), Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, -69913i)), global1.x, Struct_3(arg_3.a))), vec4<bool>(true, true, u_input.a.x > arg_2, arg_3.a), Struct_1(max(vec4<i32>(2147483647i, 86895i, 1i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec4<bool>(u_input.a.x <= 45636u, arg_1, true, any(vec3<bool>(false, true, true)))), -abs(-vec3<i32>(u_input.b, u_input.b, u_input.b)), select(abs(vec2<u32>(arg_2, u_input.a.x)), countOneBits(u_input.a), any(vec3<bool>(arg_0.a, true, arg_0.a)) & (arg_3.a && arg_3.a)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1017f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x))), 460f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 389f), 641f, global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(9413i, -u_input.b);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1189f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1376f * global1.x))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), -1246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x)));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1669f, global1.x, 1774f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, global1.x))))))), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(-2406f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(639f)))), all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_6(func_5(vec2<bool>(true, true), func_1(Struct_3(false)), _wgslsmith_f_op_f32(f32(-1f) * -2677f), Struct_3(false)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), 1u, func_5(vec2<bool>(true, true), func_2(vec4<f32>(global1.x, 880f, global1.x, -447f), vec3<f32>(-252f, 1000f, -539f), var_0.x), -689f, func_5(vec2<bool>(false, false), Struct_1(vec4<i32>(var_0.x, 0i, -1992i, -2147483647i)), global1.x, Struct_3(true))))))));
    global0 = array<u32, 12>();
    var var_1 = countOneBits(min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_mod_i32(u_input.b, 0i), -1i, func_3(Struct_1(vec4<i32>(-10395i, u_input.b, var_0.x, -1i)), Struct_1(vec4<i32>(-67877i, -2147483647i, 10991i, u_input.b)), 16334i).x), vec4<i32>(select(-46320i, 2147483647i, false), -2147483647i, -2147483647i, 1i >> (global0[_wgslsmith_index_u32(17988u, 12u)] % 32u))), vec4<i32>(var_0.x, -6195i, 2147483647i, ~var_0.x)));
    var var_2 = u_input.a;
    var var_3 = Struct_2(Struct_1(abs(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_0.x, var_1.x, u_input.b), vec4<i32>(2147483647i, -16139i, var_1.x, var_0.x), vec4<i32>(var_0.x, var_1.x, var_0.x, -2147483647i)), vec4<i32>(var_1.x, -22710i, -1i, 1i)))), func_1(func_5(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), Struct_1(select(vec4<i32>(1i, var_0.x, var_1.x, var_1.x), vec4<i32>(var_1.x, 1i, -2507i, u_input.b), false)), _wgslsmith_f_op_f32(953f - global1.x), Struct_3(false))), !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), func_2(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.x)), global1.x, 930f, _wgslsmith_div_f32(-1252f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))), -u_input.b), !select(vec4<bool>(all(vec3<bool>(false, true, false)), select(false, true, false), false, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false), true));
    let var_4 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(~60340u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-788f)))))), global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 554f, global1.x, 1238f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, -794f, global1.x, global1.x)), vec4<f32>(global1.x, 1476f, 618f, 980f)))));
}

