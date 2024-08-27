struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = u_input.a.x;
    let var_1 = arg_1;
    let var_2 = !arg_0;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_3.yz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-621f, arg_1.a.x) - var_1.a))), vec2<bool>(true, !var_1.b.a))), arg_1.a)), Struct_1(all(select(!global0.xx, select(vec2<bool>(arg_1.c, false), global0.zw, global0.xx), global0.xw)), var_1.e == _wgslsmith_div_f32(151f, -1344f), ~15784i), arg_1.b.a | any(vec2<bool>(true, arg_0)), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-236f)) + _wgslsmith_div_f32(var_1.a.x, -1466f))));
    let var_4 = ~u_input.b.wx;
    return u_input.b;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = select(u_input.a, select(max(~u_input.b, countOneBits(vec4<u32>(0u, 45171u, 40004u, 26809u))), ~(~u_input.b), false), !vec4<bool>(arg_1, arg_2 > arg_2, true, any(vec2<bool>(arg_0.b.b, arg_1)))) & (func_3(_wgslsmith_f_op_f32(-1291f * 1000f) > _wgslsmith_f_op_f32(arg_0.a.x + arg_0.e), Struct_3(_wgslsmith_f_op_vec2_f32(round(arg_0.a)), Struct_1(false, false, arg_0.d), true || arg_0.c, -21233i, _wgslsmith_f_op_f32(floor(arg_0.e))), Struct_1(true, arg_0.c, arg_0.b.c), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -157f), 1446f, _wgslsmith_f_op_f32(369f - -929f))) >> (u_input.b % vec4<u32>(32u)));
    var var_1 = _wgslsmith_mod_i32(arg_0.b.c, ~(-u_input.c.x));
    var var_2 = Struct_2(arg_0.b, arg_0.b.c, arg_1, !arg_0.b.a, Struct_1(!(u_input.d > ~(-2147483647i)), true, abs(8923i)));
    var var_3 = Struct_2(Struct_1(!arg_0.c, true, ~var_2.b), u_input.d, all(!global0.zyy), global0.x, arg_0.b);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(abs(arg_0.e))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(876f, _wgslsmith_f_op_f32(f32(-1f) * -430f))))), 412f, -252f, arg_2);
    return arg_0.b.c;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = ~(vec4<i32>(_wgslsmith_mod_i32(max(u_input.c.x, -2147483647i), arg_3.e.c | 2147483647i), -u_input.d, ~(u_input.c.x ^ -1i), ~(-arg_3.a.c)) & -vec4<i32>(-11299i << (u_input.b.x % 32u), select(arg_3.b, u_input.d, global0.x), arg_3.b, func_2(Struct_3(vec2<f32>(349f, arg_2), Struct_1(true, arg_0, -1i), true, u_input.d, 991f), arg_1, arg_2)));
    var var_1 = arg_3;
    var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-968f, arg_2)), arg_2, global0.x));
    var_0 = abs(vec4<i32>(-1i, 1i << (func_3(true, Struct_3(vec2<f32>(1231f, 331f), arg_3.e, var_1.a.b, u_input.c.x, -1001f), Struct_1(arg_1, true, -9819i), vec3<f32>(-839f, 130f, -2142f)).x % 32u), arg_3.e.c, 16805i) << (u_input.b % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, -964f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, arg_2), vec2<f32>(-555f, 284f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(true, global0.x, _wgslsmith_f_op_f32(trunc(578f)), Struct_2(Struct_1(true, true, u_input.c.x), 12613i, global0.x, global0.x, Struct_1(global0.x, true, 0i))))) * vec2<f32>(1738f, _wgslsmith_f_op_f32(round(-1000f)))), Struct_1(!(!select(true, true, global0.x)), any(vec4<bool>(select(true, true, global0.x), global0.x, global0.x || global0.x, !global0.x)), -countOneBits(-2147483647i)), global0.x, select(-u_input.d, countOneBits(firstTrailingBit(1i)), true), _wgslsmith_f_op_f32(ceil(-468f)));
    var var_1 = Struct_1(true, true, -_wgslsmith_clamp_i32(-u_input.d, u_input.d, var_0.b.c));
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(405f)))), var_0.a.x), var_0.b, var_1.a, -2147483647i, _wgslsmith_f_op_f32(floor(var_0.a.x)));
    var var_3 = _wgslsmith_add_i32(1i, var_1.c << ((0u >> (1u % 32u)) % 32u));
    let var_4 = abs(_wgslsmith_mult_vec2_u32(max(firstLeadingBit(u_input.a.yy), ~vec2<u32>(47038u, 34038u)), abs(countOneBits(vec2<u32>(51940u, 18688u)))));
    var_3 = i32(-1i) * -1i;
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-296f, var_0.e, var_0.e, 296f), vec4<f32>(2615f, 1490f, var_0.e, var_0.a.x), vec4<bool>(true, false, var_1.b, var_2.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.e, var_2.a.x, var_0.e)), vec4<bool>(false, var_0.b.a, false, var_2.c)))))));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-max(27724i, reverseBits(1i)) & abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -25747i, -1i) << (u_input.a.yzz % vec3<u32>(32u)), vec3<i32>(-21221i, var_1.c, var_2.b.c))), u_input.a.zxw | u_input.a.wxz);
}

