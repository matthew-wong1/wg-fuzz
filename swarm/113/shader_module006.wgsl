struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, true, false, true, true, false, true, true, false, true, false, false, true, true, false);

var<private> global2: vec4<f32> = vec4<f32>(-500f, -645f, -256f, -1860f);

var<private> global3: f32 = -1506f;

var<private> global4: vec3<i32> = vec3<i32>(-1i, 32309i, i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_0.a, _wgslsmith_div_u32(arg_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 8u)])), 17u)], global1[_wgslsmith_index_u32(~countOneBits(1u) ^ global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(min(arg_0.a, 11153u), 8u)], select(arg_0.a, 1u, global1[_wgslsmith_index_u32(23185u, 17u)])), 8u)], 17u)], false, all(vec2<bool>(global1[_wgslsmith_index_u32(max(u_input.a.x, global0[_wgslsmith_index_u32(arg_0.a, 8u)]), 17u)], true))), select(vec4<bool>(!(!global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 17u)]), global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(81390u, 8u)], u_input.a.x)), 17u)], any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], true)), global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(11675u, 17u)], false, global1[_wgslsmith_index_u32(1u, 17u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(arg_0.a, 17u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 8u)], 17u)], false, false)), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 17u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 8u)], 17u)], global1[_wgslsmith_index_u32(74762u, 17u)], true), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], false, true)), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 17u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 17u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], false), false)), !(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(arg_0.a, 17u)])), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(6559u, 17u)], false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 17u)], true, true), global1[_wgslsmith_index_u32(11300u, 17u)]), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(0u, 17u)]), true)), !select(!vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14644u, 8u)], 17u)], false, false, false), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)], false, global1[_wgslsmith_index_u32(arg_0.a, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), all(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 8u)], 17u)], true)))), !vec4<bool>(!(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51290u, 8u)], 17u)] & global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], true, global1[_wgslsmith_index_u32(arg_0.a, 17u)], false)), all(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a, 17u)], true, true, global1[_wgslsmith_index_u32(12725u, 17u)])) || (global2.x > 1461f), true));
    global3 = global2.x;
    let var_1 = Struct_4(u_input.a.x, _wgslsmith_div_f32(143f, 680f));
    global1 = array<bool, 17>();
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(0u) >> ((76463u >> (arg_0.a % 32u)) % 32u), 8u)];
    return !(!var_0.wz);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = 5096u;
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 12216i, ~global4.x), vec3<i32>(u_input.b, global4.x, u_input.c));
    var var_2 = vec4<u32>(4294967295u, _wgslsmith_div_u32(10622u, _wgslsmith_sub_u32(~1u, global0[_wgslsmith_index_u32(~u_input.a.x, 8u)])), ~(~(max(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(38990u, 8u)]) >> (41467u % 32u))), 37143u);
    var var_3 = vec3<bool>(~var_2.x <= firstTrailingBit(global0[_wgslsmith_index_u32(~1u, 8u)]), arg_1.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) == _wgslsmith_f_op_f32(-1332f + global2.x)) | true);
    let var_4 = _wgslsmith_sub_u32(select(~u_input.a.x, countOneBits(reverseBits(global0[_wgslsmith_index_u32(12569u, 8u)])), false) | 5226u, ~_wgslsmith_add_u32(max(abs(0u), 0u), 2331u));
    return vec4<bool>(var_3.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_4, ~66273u), 17u)], false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, _wgslsmith_mod_u32(arg_2.b, var_4), _wgslsmith_div_u32(var_4, global0[_wgslsmith_index_u32(arg_2.b, 8u)])), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.x | var_4, _wgslsmith_mult_u32(var_4, var_2.x), 1u), vec3<u32>(1u, u_input.a.x, ~arg_2.b))), 17u)]);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = func_4(arg_0, func_3(Struct_4(max(abs(global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), abs(0u)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(trunc(-215f)))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-17315i, arg_1, arg_0.x), vec3<i32>(1i, 0i, global4.x)), vec3<i32>(u_input.c, -33348i, arg_1)), _wgslsmith_mod_i32(~arg_0.x, arg_2))), Struct_3(global1[_wgslsmith_index_u32(4294967295u, 17u)], 1u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global2.zxz, global2.xzy))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-493f, -1547f, 813f), vec3<f32>(-1611f, global2.x, global2.x), vec3<bool>(var_0.x, true, var_0.x)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) * _wgslsmith_f_op_f32(trunc(global2.x))));
    var var_2 = select(_wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -21617i, 1i & arg_1, u_input.b >> (37579u % 32u), u_input.b) | (vec4<i32>(-2147483647i, 8960i, arg_2, -11655i) & -vec4<i32>(0i, arg_1, u_input.b, global4.x)), firstLeadingBit(select(vec4<i32>(arg_1, -7978i, u_input.b, -20708i) >> (vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 10310u) % vec4<u32>(32u)), vec4<i32>(-1i, arg_0.x, -15315i, 12284i), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), reverseBits(~(-vec4<i32>(arg_1, -3736i, global4.x, arg_2)) << ((max(vec4<u32>(0u, u_input.a.x, 77557u, 0u), vec4<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(48748u, 8u)], 4294967295u)) & ~vec4<u32>(33685u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), false);
    global0 = array<u32, 8>();
    var var_3 = firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(u_input.c, -35039i), -select(arg_2, var_2.x, false), ~(-24006i)));
    return Struct_1(vec4<i32>(_wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), -var_3.x, arg_0.x), 1i, global4.x & -2147483647i, ~(var_3.x << (25549u % 32u)) & ((arg_2 | arg_0.x) ^ ~(-36054i))), any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], false)), var_0);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    global4 = arg_1.a.yxw;
    global3 = 539f;
    let var_0 = 62u;
    return global0[_wgslsmith_index_u32(~var_0, 8u)];
}

fn func_1() -> vec2<bool> {
    let var_0 = true;
    let var_1 = abs(~(~(select(vec4<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a.x), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 8u)], u_input.a.x, global0[_wgslsmith_index_u32(19435u, 8u)]), vec4<bool>(true, true, var_0, true)) & reverseBits(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], 1u, 58905u)))));
    let var_2 = vec4<bool>(~func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-792f, 1832f) * global2.xx), func_2(vec2<i32>(-1i, -2147483647i), -1i, u_input.b)) >= u_input.a.x, !(!(!global1[_wgslsmith_index_u32(var_1.x, 17u)] || global1[_wgslsmith_index_u32(~0u, 17u)])), true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.wzx, ~vec3<u32>(~u_input.a.x, 4294967295u, _wgslsmith_mult_u32(22916u, global0[_wgslsmith_index_u32(1u, 8u)]))), 17u)]);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.x + -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - 375f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) - -647f))), 872f);
    var var_4 = vec2<bool>(!all(!var_2), var_2.x);
    return select(func_3(Struct_4(~27718u, -921f), vec2<i32>(~(-2147483647i), firstTrailingBit(global4.x))), vec2<bool>(false, any(var_2)), !(!var_2.yy));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> i32 {
    var var_0 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - global2.x)) + _wgslsmith_f_op_f32(global2.x * global2.x)));
    let var_1 = reverseBits(global4.xz);
    global4 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(select(global4.yy, global4.xz & vec2<i32>(global4.x, -1i), arg_1.x), var_1), abs(-42782i), ~_wgslsmith_clamp_i32(-2147483647i, func_2(global4.yy, u_input.c, var_1.x).a.x, var_1.x)), vec3<i32>(1i, var_1.x, (-18115i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 1u, 20657u, global0[_wgslsmith_index_u32(0u, 8u)]), vec4<u32>(arg_2.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a.x, 1926u)) % 32u)) | var_1.x));
    var var_2 = max(vec2<i32>(-(~(var_1.x | var_1.x)), ~_wgslsmith_add_i32(var_1.x, u_input.b & u_input.c)), select(global4.yx, select(global4.zz, ~countOneBits(vec2<i32>(38416i, 2147483647i)), global1[_wgslsmith_index_u32(func_5(vec2<f32>(global2.x, global2.x), Struct_1(vec4<i32>(2147483647i, 0i, 1i, -18137i), arg_1.x, vec4<bool>(true, arg_1.x, false, false))) & global0[_wgslsmith_index_u32(~10370u, 8u)], 17u)]), arg_0.x));
    let var_3 = vec4<bool>(func_5(vec2<f32>(_wgslsmith_f_op_f32(698f * var_0.x), _wgslsmith_f_op_f32(floor(var_0.x))), func_2(vec2<i32>(var_2.x, -2147483647i), ~77216i, _wgslsmith_mod_i32(global4.x, global4.x))) == (global0[_wgslsmith_index_u32(u_input.a.x, 8u)] | ~_wgslsmith_mult_u32(u_input.a.x, arg_2.x)), all(select(vec4<bool>(-1i != var_1.x, !global1[_wgslsmith_index_u32(1u, 17u)], true, true), vec4<bool>(true, any(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(57175u, 17u)])), arg_1.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)] | global0[_wgslsmith_index_u32(arg_2.x, 8u)], 17u)]), func_2(vec2<i32>(0i, 26825i) << (vec2<u32>(u_input.a.x, 10932u) % vec2<u32>(32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 2147483647i, 1i, var_2.x), vec4<i32>(global4.x, -3296i, u_input.b, var_2.x)), _wgslsmith_mod_i32(u_input.c, u_input.b)).c)), arg_0.x, -6519i < ~_wgslsmith_sub_i32(min(-2147483647i, -2147483647i), u_input.c));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<i32>(reverseBits(u_input.c), func_6(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 17u)])), !func_1(), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 20856u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(u_input.a.x, 13030u), global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 1u) | ~(~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 74361u, u_input.a.x))), u_input.c >> (~(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)]) << (select(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], false) % 32u)) % 32u));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) + 1228f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-274f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-786f, global2.x)))))));
    let var_0 = Struct_4(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    global4 = ~func_2(max(firstLeadingBit(max(vec2<i32>(u_input.c, u_input.b), global4.xx)), vec2<i32>(-global4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(23453i, 30100i, u_input.c, -2147483647i), vec4<i32>(31915i, 53364i, -2147483647i, global4.x)))), -2147483647i, firstTrailingBit(global4.x)).a.yyx;
    var var_1 = any(vec3<bool>(func_4(_wgslsmith_div_vec2_i32(~global4.xz, global4.yy), vec2<bool>(global1[_wgslsmith_index_u32(45608u >> (var_0.a % 32u), 17u)], true), Struct_3(all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], 17u)])), ~0u)).x, !any(vec2<bool>(false, global1[_wgslsmith_index_u32(77960u, 17u)])), !global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u | global0[_wgslsmith_index_u32(u_input.a.x, 8u)], ~u_input.a.x), 17u)]));
    global0 = array<u32, 8>();
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(trunc(var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_2.xz, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1298f), 1678f, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - global2.x)))), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) - _wgslsmith_f_op_f32(-global2.x)), -134f, var_0.b))));
}

