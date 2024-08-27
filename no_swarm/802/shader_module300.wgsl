struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, true, false, false), 1i);

var<private> global1: array<i32, 5> = array<i32, 5>(1i, -1i, 2147483647i, -10152i, 38639i);

var<private> global2: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global3: Struct_3 = Struct_3(vec4<bool>(true, true, false, false), -66761i);

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> u32 {
    var var_0 = 796f;
    return firstLeadingBit(u_input.c.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = abs(~vec4<u32>(~arg_0.c, ~(~arg_0.c), u_input.c.x, ~1u));
    let var_1 = vec4<i32>(max(u_input.d, (firstLeadingBit(-33254i) << (_wgslsmith_mult_u32(0u, 0u) % 32u)) & u_input.d), 2147483647i, _wgslsmith_add_i32(-36899i, firstTrailingBit(firstLeadingBit(1i))), 39697i);
    global0 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(floor(arg_0.a.x))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0.a.x)))), true, true, !all(global0.a.wy)), ~(u_input.b >> (~var_0.x % 32u)));
    let var_2 = arg_0;
    var var_3 = -1i;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a.x, -2099f))) * _wgslsmith_f_op_f32(978f - _wgslsmith_f_op_f32(min(var_2.a.x, -983f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.x, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1664f), arg_0.a.x)))) + vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_1(arg_0.yx, vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 5u)], min(max(global3.b << (u_input.c.x % 32u), ~1i), global3.b), _wgslsmith_clamp_i32(1i, -(~global1[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_mod_i32(-global3.b, ~35743i))), u_input.a.x);
    global4 = array<Struct_1, 22>();
    var var_1 = max(-18946i, reverseBits(_wgslsmith_div_i32(global3.b, 12566i)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)), arg_0.yx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, arg_0.x, var_0.a.x, var_0.a.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1000f, 805f, -173f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -2165f, var_0.a.x, arg_0.x) - vec4<f32>(var_0.a.x, -136f, var_0.a.x, var_0.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, 143f, arg_0.x, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(823f, -584f, arg_0.x, var_0.a.x)))))));
    global3 = Struct_3(!(!select(global3.a, select(vec4<bool>(global3.a.x, true, false, global3.a.x), vec4<bool>(true, global3.a.x, false, false), global0.a.x), true)), 1i);
    return _wgslsmith_div_u32(u_input.c.x, 0u);
}

fn func_1(arg_0: f32) -> f32 {
    global2 = array<vec3<bool>, 12>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-216f, arg_0)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(265f, arg_0)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-528f, arg_0)))))))), ~vec3<i32>(~(-40418i << (u_input.a.x % 32u)), -reverseBits(global0.b), (i32(-1i) * -20988i) >> (func_2() % 32u)), u_input.a.x);
    var var_1 = ~vec4<i32>(1i, 1i, -22462i, var_0.b.x) | -(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], var_0.b.x, 1i, global1[_wgslsmith_index_u32(31061u, 5u)]) | ((vec4<i32>(1i, 2147483647i, global0.b, global1[_wgslsmith_index_u32(0u, 5u)]) ^ vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 5u)], 1i, global0.b)) & (vec4<i32>(45005i, global3.b, global3.b, global0.b) ^ vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 5u)], 26820i, -1i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 681f, -929f, arg_0)))))));
    var var_3 = ~(~vec3<u32>(_wgslsmith_mod_u32(~0u, min(37374u, var_0.c)), u_input.a.x, func_4(_wgslsmith_f_op_vec3_f32(func_3(global4[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a.x, Struct_3(global3.a, -2147483647i))), select(global3.a.xxy, vec3<bool>(false, false, false), global3.a.x))));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a + arg_1.a), _wgslsmith_div_vec2_f32(arg_1.a, vec2<f32>(-1171f, 3129f))) * arg_1.a), arg_1.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 632f, arg_1.a.x, 213f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 640f, arg_2, 1205f) - vec4<f32>(-1000f, arg_2, -1903f, -364f)), select(vec4<bool>(true, global3.a.x, true, global3.a.x), global0.a, true))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, arg_1.a.x, arg_0, arg_2), vec4<f32>(arg_2, arg_2, arg_1.a.x, arg_0), global3.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, arg_1.a.x, arg_0))))), vec4<f32>(_wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(exp2(arg_1.a.x))), -2150f, arg_2, arg_1.a.x))));
    var var_1 = Struct_3(!vec4<bool>(max(0u, arg_1.c) >= 4294967295u, false, !any(global3.a.ww), any(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)) & true), max(~arg_1.b.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, arg_1.b.x, global1[_wgslsmith_index_u32(4294967295u, 5u)], arg_1.b.x), vec4<i32>(36975i, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(arg_1.c, 5u)], -7739i)))));
    let var_2 = firstLeadingBit(-7552i);
    var var_3 = select(vec2<i32>(u_input.b, firstLeadingBit(global0.b)), vec2<i32>(u_input.d | ~(-2147483647i), -1i), vec2<bool>(true && any(vec4<bool>(true, var_1.a.x, var_1.a.x, true)), all(select(global3.a.zwx, global2[_wgslsmith_index_u32(u_input.c.x, 12u)], global2[_wgslsmith_index_u32(u_input.c.x, 12u)])) == !select(true, var_1.a.x, false)));
    let var_4 = ~global1[_wgslsmith_index_u32(~(~(arg_1.c & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 78545u, 130466u), vec3<u32>(u_input.c.x, 1u, 4294967295u)))), 5u)];
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.x)) - arg_1.a.x), -665f)), 432f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 + var_0.a), _wgslsmith_f_op_f32(-903f * var_0.c.x))))), var_0.c);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> StorageBuffer {
    global1 = array<i32, 5>();
    let var_0 = countOneBits(global0.b);
    global1 = array<i32, 5>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), 335f) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_0.a) - arg_0.b)))), vec2<f32>(1000f, arg_0.c.x), false)), reverseBits(-vec3<i32>(global0.b, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 5076i) & (-vec3<i32>(u_input.d, var_0, -2147483647i) >> (~vec3<u32>(2680u, 24502u, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_sub_u32(4294967295u, ~(~u_input.c.x)));
    global2 = array<vec3<bool>, 12>();
    return StorageBuffer(reverseBits(var_1.b), vec3<u32>(var_1.c, u_input.a.x, var_1.c), _wgslsmith_dot_vec2_i32(var_1.b.zy, var_1.b.zx), ~abs(~reverseBits(vec4<u32>(20844u, var_1.c, 0u, 688u))), abs(61719u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 12>();
    let x = u_input.a;
    s_output = func_6(func_5(_wgslsmith_f_op_f32(func_1(1849f)), global4[_wgslsmith_index_u32(4294967295u, 22u)], 628f), func_5(1f, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1181f, -277f) + vec2<f32>(-464f, -2310f)), vec2<f32>(1316f, -1475f))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.b, -1i), vec3<i32>(-25028i, global1[_wgslsmith_index_u32(22506u, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -7525i, global0.b), vec3<i32>(2147483647i, u_input.d, -2147483647i))), 67555u ^ _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 76791u)), 1680f), vec3<bool>(false, global3.a.x, true));
}

