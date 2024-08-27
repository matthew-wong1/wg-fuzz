struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<f32> {
    global0 = i32(-1i) * -1i;
    let var_0 = ~(~_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, u_input.b)), reverseBits(vec2<u32>(0u, 56294u) << (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u)))));
    global0 = arg_2.x;
    var var_1 = Struct_2(vec3<i32>(-32567i, arg_2.x, countOneBits(u_input.e.x)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1068f)), _wgslsmith_f_op_f32(-181f - -2522f))), _wgslsmith_f_op_f32(-1847f * _wgslsmith_f_op_f32(-281f * _wgslsmith_f_op_f32(exp2(arg_1.b)))), -247f), arg_3);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - arg_0.c.b)))))), _wgslsmith_f_op_f32(min(arg_3.c, 236f)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1253f), _wgslsmith_f_op_f32(var_1.b.x + 1816f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, 1412f)), _wgslsmith_f_op_f32(-var_1.b.x))) - 803f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_3.c))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = ~(~_wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c, 5795u, u_input.c), vec4<u32>(63997u, 1u, 6796u, 1u), vec4<u32>(46358u, u_input.a, 11516u, 1u))), ~vec4<u32>(u_input.c, u_input.a, 4294967295u, 26785u), ~vec4<u32>(u_input.c, 4294967295u, 22039u, u_input.b) ^ ~vec4<u32>(u_input.c, u_input.b, u_input.a, u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_2, arg_2.c, ~(vec3<i32>(-1i) * -vec3<i32>(0i, -2147483647i, arg_2.a.x)), arg_2.c)).x);
    var var_2 = ~var_0.yx;
    let var_3 = _wgslsmith_mult_vec3_u32(reverseBits(max(vec3<u32>(u_input.a, var_0.x, u_input.b), vec3<u32>(1u, 4294967295u, var_2.x)) | ~_wgslsmith_sub_vec3_u32(var_0.wyz, vec3<u32>(u_input.a, var_0.x, u_input.a))), _wgslsmith_mod_vec3_u32(var_0.zzz & _wgslsmith_mod_vec3_u32(var_0.zyx, ~var_0.yxz), vec3<u32>(3424u, ~4294967295u, ~var_0.x)));
    let var_4 = arg_2.c.a;
    return arg_1.d;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = _wgslsmith_add_i32(select(func_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_1.a, vec3<f32>(1073f, arg_0.b.x, arg_1.b.x), Struct_1(arg_0.c.a, -923f, arg_1.c.b, -677i)), arg_0.c, vec3<i32>(1i, u_input.e.x, arg_1.a.x), Struct_1(vec3<bool>(arg_1.c.a.x, false, arg_1.c.a.x), arg_0.c.c, arg_1.b.x, 4640i))), Struct_1(select(arg_1.c.a, vec3<bool>(true, false, arg_1.c.a.x), vec3<bool>(arg_1.c.a.x, false, arg_0.c.a.x)), _wgslsmith_f_op_f32(select(arg_1.b.x, -160f, true)), _wgslsmith_f_op_f32(182f * -916f), select(arg_0.c.d, arg_1.c.d, false)), Struct_2(~vec3<i32>(33454i, 23009i, arg_1.a.x), arg_1.b, arg_0.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.d, u_input.d), max(-arg_0.a.yz, ~arg_1.a.xz)), arg_1.c.a.x), i32(-1i) * -arg_1.c.d);
    var_0 = arg_0.a.x;
    let var_1 = u_input.b;
    var var_2 = Struct_2(arg_0.a, vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b + arg_1.b.x) * _wgslsmith_f_op_f32(sign(arg_0.b.x)))))), Struct_1(vec3<bool>(all(vec3<bool>(arg_1.c.a.x, arg_1.c.a.x, arg_1.c.a.x)) || (var_1 != 0u), arg_0.c.a.x, !(var_1 >= var_1)), -1000f, arg_0.c.c, 6170i));
    global0 = var_2.c.d;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)), arg_1.b));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0.c;
    let var_1 = u_input.b;
    let var_2 = Struct_1(select(arg_0.c.a, !var_0.a, true), _wgslsmith_div_f32(-513f, -2032f), _wgslsmith_div_f32(arg_0.c.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1099f * -1456f)))), -(~_wgslsmith_add_i32(-5489i, 500i)));
    var var_3 = -2147483647i;
    var var_4 = select(~(vec2<i32>(min(arg_1, -45753i), var_0.d) << (vec2<u32>(~35528u, ~var_1) % vec2<u32>(32u))), ~(-u_input.e), vec2<bool>(var_0.c == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b, -1292f))), _wgslsmith_f_op_f32(f32(-1f) * -716f) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.b))))));
    return Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f + var_0.b)), var_2.b, _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -607f))))), arg_0.c);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-2530i, u_input.e.x, abs(-46829i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.e.x, u_input.e.x, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-34938i, -1i, u_input.d), vec3<i32>(0i, 1i, 1i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec3<i32>(u_input.d, 61420i, u_input.e.x), vec3<f32>(1189f, -490f, 601f), Struct_1(vec3<bool>(true, false, false), -368f, -2424f, u_input.d)), Struct_2(vec3<i32>(u_input.d, -2147483647i, 2147483647i), vec3<f32>(665f, 853f, -248f), Struct_1(vec3<bool>(false, false, true), 585f, -1208f, u_input.d))))))), Struct_1(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(640f, 389f)), _wgslsmith_f_op_f32(-276f * 1018f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 1284f))), 1i)), 25058i);
    let var_1 = 613f;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1191f, -926f, var_0.b.x, var_1))))));
    var var_3 = var_0.c.a.x;
    let var_4 = vec4<bool>(any(!(!vec3<bool>(false, true, var_0.c.a.x))), !var_0.c.a.x, any(!var_0.c.a), false);
    return Struct_2(~vec3<i32>(_wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_sub_i32(-55543i, -13600i), 1i), _wgslsmith_add_i32(1i, -1i), 1i), vec3<f32>(-805f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.x, -308f), _wgslsmith_f_op_f32(f32(-1f) * -189f), all(vec2<bool>(false, var_4.x)))) + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x))))), Struct_1(var_4.yyw, -334f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i & var_0.c.d, var_0.a.x), -(~5503i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.c.b;
    global0 = -var_0.c.d;
    let var_2 = var_0.c.a.yz;
    var var_3 = var_0.b.x;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c)), var_0.c.c)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_0.a, vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(min(103f, var_0.b.x)), _wgslsmith_f_op_f32(-var_0.c.c)), func_5(func_5(Struct_2(var_0.a, var_0.b, Struct_1(vec3<bool>(true, false, var_2.x), var_0.b.x, 687f, var_0.a.x)), -2147483647i), _wgslsmith_add_i32(-1i, u_input.d)).c), func_1().c, countOneBits(vec3<i32>(3020i, u_input.d, -19182i)), func_1().c)).x);
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1281f - _wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.c), 734f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(u_input.b)) ^ u_input.b, vec4<u32>(~1u, u_input.b, ~1u, 0u), ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, 1u, 17035u), vec4<u32>(34824u, 0u, 0u, u_input.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec3<i32>(-1i, u_input.d, 20394i), vec3<f32>(var_0.b.x, var_0.c.b, var_0.b.x), func_5(Struct_2(vec3<i32>(0i, var_0.c.d, -13859i), vec3<f32>(var_0.b.x, 254f, var_0.c.c), Struct_1(vec3<bool>(true, var_2.x, var_0.c.a.x), 895f, -218f, u_input.e.x)), -32897i).c), func_5(func_5(Struct_2(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, var_0.c.c), var_0.c), u_input.d), _wgslsmith_mult_i32(1i, var_0.c.d)))).x * var_0.b.x), _wgslsmith_f_op_f32(round(-1009f)));
}

