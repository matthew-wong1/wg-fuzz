struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: bool;

var<private> global2: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-1341f, -1585f), vec2<f32>(-619f, -494f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = select(select(select(vec4<bool>(any(vec2<bool>(arg_0.a.x, true)), any(vec2<bool>(global0.x, arg_0.a.x)), all(vec4<bool>(arg_0.a.x, false, global0.x, false)), true), vec4<bool>(any(vec4<bool>(global0.x, false, global0.x, false)), true, global0.x, !arg_0.a.x), vec4<bool>(true, 2463f != arg_2.x, true, arg_0.a.x)), !vec4<bool>(arg_0.a.x, global0.x, select(false, true, arg_0.a.x), true), vec4<bool>(-arg_1.x >= ~(-36713i), _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(-27307i, 2147483647i)) != ~arg_1.x, !global0.x, false)), !(!select(select(vec4<bool>(false, true, arg_0.a.x, false), vec4<bool>(arg_0.a.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, true, arg_0.a.x)), !vec4<bool>(false, arg_0.a.x, global0.x, true), vec4<bool>(false, arg_0.a.x, true, global0.x))), !vec4<bool>(arg_0.a.x, !global0.x | global0.x, all(vec4<bool>(false, global0.x, true, arg_0.a.x)), true || global0.x));
    var var_0 = -468f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    var var_2 = !vec4<bool>(false, select(!all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x)), countOneBits(arg_0.c) > arg_0.e.x, false), arg_0.a.x, !(_wgslsmith_f_op_f32(floor(var_1)) == _wgslsmith_f_op_f32(-1000f + -1273f)));
    global0 = vec4<bool>(true, global0.x, all(vec4<bool>(true, true, true, true)), true & arg_0.a.x);
    return !(!vec4<bool>(true, all(select(global0.zwz, vec3<bool>(false, true, false), vec3<bool>(true, var_2.x, false))), any(vec3<bool>(false, arg_0.a.x, false)), _wgslsmith_mult_i32(-13244i, arg_1.x) >= -u_input.c));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = global0.xy;
    global0 = select(vec4<bool>(var_0.x, false, false, !(!global0.x)), select(select(func_3(Struct_4(vec2<bool>(false, false), u_input.a, 10980u, vec3<i32>(-37706i, -8165i, -1i), vec3<u32>(0u, 1u, u_input.b)), ~vec2<i32>(-1i, u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -517f, 154f, 167f) - vec4<f32>(-1472f, 930f, arg_1, 977f))), select(func_3(Struct_4(arg_0.xx, vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.b, vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), vec2<i32>(24736i, u_input.c), vec4<f32>(1069f, 231f, arg_1, -211f)), vec4<bool>(false, true, true, arg_0.x), arg_0.x), vec4<bool>(u_input.b < 55856u, true, !arg_0.x, false)), vec4<bool>(var_0.x, !(arg_1 > arg_1), _wgslsmith_div_u32(u_input.a.x, 63059u) < _wgslsmith_add_u32(u_input.a.x, 33447u), -182f > arg_1), _wgslsmith_f_op_f32(select(-1083f, _wgslsmith_f_op_f32(-390f - arg_1), -2905f != arg_1)) <= _wgslsmith_div_f32(1968f, -227f)), any(!select(vec2<bool>(var_0.x, global0.x), vec2<bool>(var_0.x, true), vec2<bool>(arg_0.x, true))));
    var var_1 = global0.zy;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(~(~1u), 2u)] - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1))))) + global2[_wgslsmith_index_u32(u_input.b, 2u)]);
    global1 = !var_1.x;
    return Struct_2(!var_0.x, global2[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_f32(-544f - _wgslsmith_f_op_f32(sign(1006f))), abs(abs(-vec4<i32>(u_input.c, -51305i, 11795i, u_input.c))) & vec4<i32>(-2147483647i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -24880i, u_input.c, 12516i), vec4<i32>(-18938i, -41067i, -18792i, u_input.c) | vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), u_input.c), firstTrailingBit(max(~vec2<i32>(358i, u_input.c), -vec2<i32>(72470i, -1i))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(global0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(~max(0u, u_input.a.x), 2u)] * _wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, arg_2.b.x))) - vec2<f32>(arg_2.c, -1059f)), arg_2.c, countOneBits(_wgslsmith_sub_vec4_i32(-arg_2.d, firstLeadingBit(vec4<i32>(arg_2.d.x, -1859i, 2147483647i, arg_2.d.x)))) ^ (vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2147483647i, -2147483647i, arg_1.a.x)), abs(func_2(!(!vec3<bool>(arg_2.a, global0.x, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.b.x)), _wgslsmith_f_op_f32(arg_2.c + -188f))).e));
    global2 = array<vec2<f32>, 2>();
    let var_1 = Struct_4(!global0.wz, ~vec3<u32>(~firstTrailingBit(arg_0), ~130970u, u_input.b), ~(~4294967295u), max(~_wgslsmith_mod_vec3_i32(abs(var_0.d.www), arg_2.d.yxz), vec3<i32>(~0i, _wgslsmith_clamp_i32(firstTrailingBit(2464i), _wgslsmith_div_i32(var_0.d.x, arg_2.e.x), 1i), firstTrailingBit(firstLeadingBit(-21873i)))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~arg_0, 5397u, u_input.b << (51562u % 32u)), u_input.a), ~max(vec3<u32>(u_input.b, 0u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(12012u, u_input.a.x, 4294967295u), vec3<u32>(0u, u_input.a.x, 16535u)))));
    var var_2 = vec3<u32>(32781u, 1u, ~(arg_0 & var_1.b.x));
    var_2 = countOneBits(var_1.e);
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    global2 = array<vec2<f32>, 2>();
    var var_0 = _wgslsmith_sub_u32(func_4(~(~1u), arg_2, func_2(vec3<bool>(arg_0, true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f) - _wgslsmith_f_op_f32(round(1000f))))), ~u_input.b);
    var var_1 = Struct_4(global0.xx, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b, 12796u), firstTrailingBit(u_input.a.x), ~u_input.b), ~vec3<u32>(u_input.b, 23262u, 0u)) >> (~vec3<u32>(u_input.b, 83000u, 12990u) % vec3<u32>(32u)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(abs(48035u ^ u_input.b), firstLeadingBit(~0u))), reverseBits(abs(vec3<i32>(~arg_1.a.x, 51238i, min(arg_1.a.x, arg_1.a.x)))), ~(~(~vec3<u32>(50062u, u_input.a.x, u_input.a.x)) ^ ~u_input.a));
    let var_2 = false;
    var var_3 = Struct_1(abs(~((vec4<i32>(0i, arg_2.a.x, 1i, arg_2.a.x) & vec4<i32>(27586i, u_input.c, -54861i, var_1.d.x)) & min(vec4<i32>(var_1.d.x, var_1.d.x, 82938i, arg_1.a.x), arg_1.a))));
    return vec4<i32>(-316i, u_input.c, _wgslsmith_clamp_i32(0i, countOneBits(254i << (_wgslsmith_clamp_u32(u_input.b, u_input.a.x, var_1.c) % 32u)), 1i & -var_1.d.x), _wgslsmith_mod_i32(var_3.a.x << (_wgslsmith_sub_u32(0u, 4294967295u << (u_input.a.x % 32u)) % 32u), _wgslsmith_div_i32(var_3.a.x, _wgslsmith_sub_i32(arg_1.a.x, i32(-1i) * -34658i))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(956f)) * 139f)))), _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_div_f32(_wgslsmith_div_f32(818f, arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(-arg_2.c)))), -1000f);
    let var_1 = Struct_4(!vec2<bool>(true, func_3(Struct_4(vec2<bool>(global0.x, true), u_input.a, arg_0.x, vec3<i32>(arg_3.x, -53077i, u_input.c), u_input.a), vec2<i32>(38770i, arg_3.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-250f, arg_2.c, -2218f, arg_2.c), vec4<f32>(var_0.x, 1104f, -194f, var_0.x)))).x), _wgslsmith_sub_vec3_u32(firstTrailingBit(arg_0.wyz), ~(~_wgslsmith_add_vec3_u32(arg_0.xwy, arg_0.yxx))), countOneBits(0u), arg_2.d.xyx, u_input.a);
    var var_2 = min(~(~select(countOneBits(vec4<u32>(8334u, 1u, arg_1.x, arg_0.x)), ~vec4<u32>(0u, u_input.b, 0u, var_1.c), vec4<bool>(false, var_1.a.x, arg_2.a, false))), reverseBits(countOneBits(max(min(arg_0, vec4<u32>(1u, arg_1.x, 18156u, u_input.b)), ~vec4<u32>(arg_0.x, var_1.e.x, 17987u, 17964u)))));
    let var_3 = max(_wgslsmith_mult_vec3_u32(arg_0.ywy, ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, arg_0.x, var_2.x), select(vec3<u32>(130773u, arg_1.x, u_input.a.x), vec3<u32>(var_1.c, arg_1.x, 62048u), vec3<bool>(true, false, true)))), vec3<u32>(_wgslsmith_mult_u32(arg_1.x, ~(~var_2.x)), ~max(4294967295u, ~4294967295u), 64039u));
    let var_4 = vec3<bool>(any(!func_3(Struct_4(vec2<bool>(false, global0.x), var_1.e, 66737u, arg_2.d.ywy, vec3<u32>(20075u, 0u, u_input.a.x)), var_1.d.yy, _wgslsmith_f_op_vec4_f32(vec4<f32>(-190f, var_0.x, var_0.x, -851f) + vec4<f32>(606f, -1000f, 547f, arg_2.c)))), all(!global0.xxz), arg_2.a);
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_4) -> u32 {
    var var_0 = min(arg_3.e.x, arg_3.b.x);
    var var_1 = vec4<u32>(u_input.b, ~arg_3.e.x, _wgslsmith_sub_u32(min(73601u, ~54686u), _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_3.c, 2481u), u_input.b)), 0u);
    var var_2 = global0.ywx;
    var var_3 = func_5(vec4<u32>(func_4(_wgslsmith_add_u32(135630u, u_input.a.x), Struct_3(arg_3.d), Struct_2(true, vec2<f32>(1000f, 256f), _wgslsmith_f_op_f32(trunc(-1780f)), func_2(global0.xyy, 120f).d, ~arg_0.d.wy)), ~firstTrailingBit(~arg_3.b.x), ~0u, 47456u), u_input.a.zz, arg_0, ~arg_3.d).d.x;
    global2 = array<vec2<f32>, 2>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, 0u, 1u, 4294967295u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 64919u, 43937u, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u)), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 24323u), !global0.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, 0u)), vec2<u32>(u_input.a.x, 4294967295u)), ~u_input.a.yz), Struct_2(max(u_input.c, 0i) < firstTrailingBit(10231i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.b, 2u)] - vec2<f32>(332f, 710f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1626f, -1275f)))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 38649i, u_input.c, -2147483647i), vec4<i32>(u_input.c, u_input.c, 47060i, u_input.c), vec4<i32>(u_input.c, u_input.c, -17582i, u_input.c)), func_1(global0.x, Struct_1(vec4<i32>(0i, u_input.c, u_input.c, u_input.c)), Struct_3(vec3<i32>(6821i, u_input.c, 0i))), firstTrailingBit(vec4<i32>(u_input.c, u_input.c, 11934i, 0i))), vec2<i32>(0i, _wgslsmith_mod_i32(-2147483647i, u_input.c))), -(vec3<i32>(-1i) * -vec3<i32>(u_input.c, u_input.c, u_input.c))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, 1u, 57765u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 83044u, 397u), vec4<u32>(1u, u_input.a.x, 31753u, u_input.a.x))) != u_input.b, vec3<f32>(-1029f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1856f) + _wgslsmith_f_op_f32(-1527f + -337f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(226f, 1771f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) - _wgslsmith_f_op_f32(select(420f, -286f, global0.x))) * _wgslsmith_f_op_f32(floor(793f)))), Struct_4(!func_3(Struct_4(global0.wz, vec3<u32>(1u, u_input.a.x, 10928u), u_input.a.x, vec3<i32>(u_input.c, -8835i, u_input.c), vec3<u32>(u_input.a.x, 10615u, u_input.b)), vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(4294967295u, 7109u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, 478f, 455f, 1243f))).yy, vec3<u32>(1178u, _wgslsmith_div_u32(35714u, u_input.b >> (1u % 32u)), u_input.a.x), u_input.b, reverseBits(firstLeadingBit(abs(vec3<i32>(-6211i, u_input.c, -1i)))), vec3<u32>(firstLeadingBit(21516u), countOneBits(69995u), _wgslsmith_sub_u32(1u, u_input.a.x)) | u_input.a));
    global1 = min(func_1(func_5(vec4<u32>(1u, u_input.a.x, 38513u, 1u), u_input.a.yy, Struct_2(true, global2[_wgslsmith_index_u32(u_input.b, 2u)], 581f, vec4<i32>(0i, 4137i, -2147483647i, u_input.c), vec2<i32>(22764i, -2147483647i)), -vec3<i32>(0i, -1i, u_input.c)).a, Struct_1(-vec4<i32>(-37173i, 2147483647i, 67092i, -2147483647i)), Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(u_input.c, 0i, u_input.c)))).x, func_1(false, Struct_1(func_2(vec3<bool>(true, true, global0.x), 1822f).d), Struct_3(firstTrailingBit(vec3<i32>(2147483647i, 0i, -1i)))).x) >= u_input.c;
    let var_1 = global0.x || global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(854f, -888f, 206f, -741f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-143f, -1000f, 1816f, 827f), vec4<f32>(1f, 1f, 1f, 1f)))))), min(vec2<u32>(u_input.a.x, min(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, var_0)), countOneBits(4294967295u))), ~abs(u_input.a.zz << (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u)))), vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, 2147483647i) & vec3<i32>(22600i, u_input.c, -24054i), vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(_wgslsmith_add_i32(26453i, 23266i), -88673i, -13900i)), ~0i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1069f, _wgslsmith_f_op_f32(-593f + -1000f)))), 1f), 72975u);
}

