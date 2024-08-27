struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> f32 {
    var var_0 = -reverseBits(~(-(vec4<i32>(arg_1.e.x, -2147483647i, 1i, -33356i) | vec4<i32>(2147483647i, arg_0, arg_1.d, 2147483647i))));
    var var_1 = Struct_3(reverseBits(-arg_1.e));
    let var_2 = _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.a.x, _wgslsmith_clamp_i32(-30764i, reverseBits(0i), var_1.a.x >> (42759u % 32u)), arg_1.e.x, reverseBits(2147483647i)), min(vec4<i32>(countOneBits(33230i), 0i ^ arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.a, arg_0, 1i), vec4<i32>(arg_1.a, 47439i, arg_1.e.x, var_0.x)), var_1.a.x), min(countOneBits(vec4<i32>(arg_0, arg_1.a, var_1.a.x, var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d, arg_1.a, -15307i, 1i), vec4<i32>(-1i, arg_1.a, -2147483647i, 3373i)))) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(arg_0, arg_0, 15944i, arg_0), -(~vec4<i32>(var_0.x, 1i, -50712i, 110i))));
    var var_3 = firstLeadingBit(_wgslsmith_div_vec3_u32(reverseBits(~(~vec3<u32>(u_input.a, 1u, arg_2))), firstTrailingBit(~firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    global0 = arg_1.b;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f), 1182f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.b.b.x)), _wgslsmith_f_op_f32(abs(arg_1.b.b.x)))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b + global0.a.yxy), global0.b))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1330f))), _wgslsmith_div_f32(global0.b.x, -529f))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(-1000f, global0.a.x, global0.a.x, global0.b.x)))), global0.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 295f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(func_3(-1i, Struct_4(arg_2.a.x, Struct_1(global0.a, global0.a.xwy), arg_1.xxx, arg_2.a.x, arg_0.xx), 1u))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(global0.a.zyz)), global0.a.xyy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(392f, global0.a.x, 295f) + global0.a.wxw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -809f, global0.a.x)), false))))));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(firstLeadingBit(arg_0.x), 1i), Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(14703i, arg_2.a.x), arg_2.a), Struct_1(global0.a, vec3<f32>(432f, 1000f, global0.a.x)), arg_1.www, firstTrailingBit(arg_2.a.x), arg_0.xx ^ vec2<i32>(-1i, arg_2.a.x)), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x)))), global0.b.x, 236f), global0.b);
    let var_0 = !all(!select(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.yw, true), select(arg_1.yz, vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_3, true)), true));
    let var_1 = u_input.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * 764f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(76364i, Struct_4(arg_2.a.x, Struct_1(vec4<f32>(global0.b.x, global0.a.x, global0.b.x, global0.b.x), vec3<f32>(global0.b.x, global0.a.x, global0.a.x)), arg_1.zxx, arg_0.x, vec2<i32>(-1i, 17160i)), u_input.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-343f, global0.a.x), _wgslsmith_f_op_f32(min(global0.a.x, -287f)))), 1000f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b.x)), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(863f + global0.b.x) + 394f), 352f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> i32 {
    global0 = func_2(vec3<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(~1i ^ -arg_1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 2147483647i, 24046i), vec3<i32>(arg_1.x, 37976i, -6144i)), ~(-62960i))), 0i), !select(vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), Struct_3(vec2<i32>(-1i) * -(~vec2<i32>(arg_1.x, arg_1.x))), !(!all(vec3<bool>(false, true, false))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(201f, global0.b.x, global0.b.x, -717f))))), _wgslsmith_f_op_vec3_f32(-global0.b));
    let var_0 = u_input.a;
    global0 = func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-26840i, abs(arg_1.x), max(-2147483647i, -2304i >> (1u % 32u))), vec3<i32>(~0i, ~21038i, min(arg_1.x, 19470i)) ^ ~vec3<i32>(2147483647i, arg_1.x, 17531i)), select(select(vec4<bool>(true, true, 1267f >= global0.b.x, all(vec3<bool>(false, false, true))), vec4<bool>(false, true, global0.a.x <= -190f, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(trunc(2195f)) >= _wgslsmith_f_op_f32(global0.b.x + -150f), any(vec2<bool>(true, false)), true & any(vec3<bool>(true, true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), Struct_3(select(arg_1, arg_1 ^ arg_1, select(false, true, false) & all(vec4<bool>(true, false, false, false)))), true);
    var var_1 = ~min(select(countOneBits(~vec4<i32>(arg_1.x, arg_1.x, -2147483647i, arg_1.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(-31769i, arg_1.x, 0i, arg_1.x) << (vec4<u32>(u_input.a, 69298u, u_input.a, 0u) % vec4<u32>(32u))), true), abs(~(-vec4<i32>(-8972i, 25282i, 1i, arg_1.x))));
    return max(abs(-2147483647i), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~(~_wgslsmith_mult_i32(1i, -28951i)), 40687i);
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(func_1(vec3<u32>(0u, 1u, u_input.a) & vec3<u32>(u_input.a, 4294967295u, 80026u), reverseBits(vec2<i32>(-2147483647i, 39526i))), i32(-1i) * -1i, ~0i) << (vec3<u32>(u_input.a, firstTrailingBit(u_input.a), 4294967295u) % vec3<u32>(32u)), -(~abs(firstTrailingBit(vec3<i32>(var_0.x, var_0.x, -2147483647i)))));
    var var_2 = abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, ~_wgslsmith_sub_u32(1u, u_input.a), ~4294967295u), abs(u_input.a & 1u) << (1u % 32u)));
    let var_3 = !select(vec3<bool>(true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), any(vec2<bool>(true, true)) || true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(_wgslsmith_div_f32(global0.b.x, global0.b.x) <= func_2(vec3<i32>(var_0.x, -2147483647i, var_0.x), vec4<bool>(false, true, false, false), Struct_3(var_1.yy), false).b.x, !all(vec3<bool>(true, true, false)), true));
    let var_4 = Struct_4(-15599i, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, -548f, _wgslsmith_f_op_f32(global0.b.x * -526f), global0.b.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, 1043f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-242f, global0.b.x, global0.a.x) - vec3<f32>(global0.b.x, global0.a.x, -1051f)))))), vec3<bool>(!all(vec2<bool>(false, true)), var_3.x, var_3.x), firstTrailingBit(-9003i), abs(vec2<i32>(-1i) * -(~var_1.zz)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_4.b.b.x), global0.b.x, _wgslsmith_f_op_f32(trunc(global0.b.x)), 641f))), var_4.b.a, all(!(!vec4<bool>(false, var_4.c.x, true, true))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.b.x, 1333f, var_4.b.a.x), _wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(-1831f, global0.a.x, var_4.b.a.x)))))))));
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), -470f, _wgslsmith_div_f32(var_4.b.b.x, _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(global0.b.x - 277f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-964f))), 1159f, func_2(vec3<i32>(-2147483647i, var_4.e.x, var_1.x), !vec4<bool>(var_3.x, false, true, var_3.x), Struct_3(vec2<i32>(var_0.x, -17632i)), !var_3.x).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.x)) * _wgslsmith_f_op_f32(var_4.b.b.x - 776f))), select(!(!vec4<bool>(var_3.x, false, true, false)), vec4<bool>(all(vec4<bool>(var_4.c.x, false, false, var_4.c.x)), all(vec3<bool>(var_4.c.x, var_4.c.x, false)), u_input.a != u_input.a, var_3.x), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1872f, var_4.b.b.x, var_4.b.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_4.b.a + var_4.b.a)))), 1f, vec4<u32>(countOneBits(_wgslsmith_div_u32(u_input.a, u_input.a)), firstLeadingBit(_wgslsmith_mult_u32(1055u, u_input.a)), 1u, 22483u) | (select(vec4<u32>(0u, u_input.a, 64491u, u_input.a), select(vec4<u32>(u_input.a, 78073u, 37475u, 1u), vec4<u32>(0u, 0u, 18928u, 85515u), false), select(vec4<bool>(true, false, false, var_4.c.x), vec4<bool>(var_3.x, true, true, var_4.c.x), true)) ^ ~(vec4<u32>(u_input.a, 31839u, 1u, 34275u) << (vec4<u32>(45389u, u_input.a, 0u, 0u) % vec4<u32>(32u)))));
}

