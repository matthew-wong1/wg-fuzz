struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 16>;

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(abs(countOneBits(u_input.c.x)), 16u)];
    global1 = arg_0;
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x << (54118u % 32u), u_input.e << (4294967295u % 32u), ~4294967295u), vec3<u32>(_wgslsmith_add_u32(12105u, 0u), ~51870u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), 16u)], select(vec2<bool>(false, all(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~u_input.b.x <= max(u_input.c.x, u_input.b.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)))), Struct_1(countOneBits(~vec4<i32>(arg_0.d.x, global1.a.x, u_input.d.x, u_input.d.x)), _wgslsmith_mult_vec3_i32(global1.a.zwx, arg_0.a.yxz), firstLeadingBit(var_0.a.x), -vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, var_0.a.x), _wgslsmith_add_i32(-33053i, -1i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1189f)), _wgslsmith_f_op_f32(1072f * -938f), true))))));
    let var_2 = !vec4<bool>(var_1.b.x || all(!vec4<bool>(true, var_1.b.x, false, true)), !var_1.b.x, true, true);
    global1 = Struct_1(var_1.a.a, select(global1.a.yzw, arg_0.b, vec3<bool>(true || var_2.x, true, false)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(reverseBits(-8406i), var_0.a.x)), ~_wgslsmith_sub_i32(1i, arg_0.a.x), u_input.a.x), -(vec2<i32>(global1.b.x, max(28626i, -1i)) | abs(min(global1.b.zz, vec2<i32>(-2147483647i, u_input.a.x)))), _wgslsmith_f_op_f32(trunc(956f)));
    return var_1.c.e;
}

fn func_2() -> Struct_1 {
    var var_0 = 841f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(func_3(Struct_1(global1.a, u_input.a.xwz, global1.a.x, vec2<i32>(global1.a.x, 17869i), global1.e), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, global1.e, global3.x, global3.x), vec4<f32>(global1.e, global1.e, global3.x, -1468f))))))))));
    global2 = array<Struct_1, 16>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 2449f) * vec2<f32>(-669f, global1.e))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1046f, 1211f) + vec2<f32>(global3.x, global1.e)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e, global1.e)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(global1.e + 991f)), -1906f)));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(min(58264u << (abs(10979u << (u_input.b.x % 32u)) % 32u), 1u), 16u)], !select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), Struct_1(vec4<i32>(abs(-1i), 2147483647i, _wgslsmith_dot_vec3_i32(~global1.b, vec3<i32>(2147483647i, u_input.d.x, -1i)), -_wgslsmith_sub_i32(45552i, u_input.d.x)), select(vec3<i32>(-16744i << (u_input.c.x % 32u), max(2147483647i, 2147483647i), _wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(-2147483647i, u_input.d.x, -1i))), min(vec3<i32>(u_input.a.x, u_input.a.x, 1i) | vec3<i32>(u_input.d.x, 0i, -1i), global1.a.wwx), vec3<bool>(true, true, true)), -32872i, global1.d, _wgslsmith_f_op_f32(-global1.e)));
    return global2[_wgslsmith_index_u32(~abs(u_input.e), 16u)];
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = global1.b.xz;
    global1 = Struct_1(abs(arg_0.a), countOneBits(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_0.a.x, 1i), arg_0.c, 1i) >> (~vec3<u32>(45026u, 38133u, 4294967295u) % vec3<u32>(32u))), i32(-1i) * -6174i, vec2<i32>(-17194i, ~_wgslsmith_sub_i32(-2147483647i, arg_0.a.x)) & global1.a.yy, _wgslsmith_f_op_f32(trunc(func_2().e)));
    var var_1 = Struct_2(arg_0, !select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), false), true), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(u_input.d.x), reverseBits(arg_0.a.x), select(arg_0.c, global1.b.x, true), 0i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 25169i, 1073i, -2147483647i), u_input.d), var_0.x >> (u_input.c.x % 32u), 40302i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.a.x, u_input.d.x, arg_0.b.x), vec4<i32>(602i, -2147483647i, u_input.d.x, global1.c)))), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.d.x, -8512i, var_0.x), firstTrailingBit(min(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(global1.d.x, -1i, -2193i)))), var_0.x, _wgslsmith_mult_vec2_i32(~vec2<i32>(0i, -1i), global1.d), 235f));
    let var_2 = -592f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.e + global1.e))), _wgslsmith_f_op_f32(max(-2072f, _wgslsmith_f_op_f32(758f - arg_0.e))), -670f, _wgslsmith_div_f32(var_1.c.e, -608f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.e), var_2, _wgslsmith_f_op_f32(step(218f, 2916f)), _wgslsmith_f_op_f32(f32(-1f) * -337f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-568f, 217f, -894f, arg_0.e), vec4<f32>(-1182f, 1000f, -631f, 515f), var_1.b.x)))))));
    return var_3.zz;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec2_f32(func_4(func_2()));
    var var_0 = Struct_1(abs(-vec4<i32>(~2147483647i, -1i >> (1u % 32u), select(15152i, 2147483647i, arg_2.b.x), 31034i)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, arg_2.c.d.x, arg_2.a.c), vec3<i32>(abs(global1.d.x), i32(-1i) * -1i, min(-15632i, arg_2.c.c)), countOneBits(firstTrailingBit(vec3<i32>(-2147483647i, u_input.d.x, arg_2.a.b.x))))), 2147483647i, vec2<i32>(_wgslsmith_dot_vec4_i32(global1.a, -arg_2.c.a), ~(~(~u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.e))));
    let var_1 = vec4<f32>(var_0.e, global1.e, arg_2.a.e, _wgslsmith_f_op_f32(1538f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - 508f)))));
    var var_2 = 0i;
    var_0 = global2[_wgslsmith_index_u32(90386u, 16u)];
    return Struct_1(arg_2.a.a, ~_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, 2147483647i, -9563i), -firstLeadingBit(vec3<i32>(2183i, 1631i, arg_2.c.c))), _wgslsmith_mod_i32(countOneBits(global1.d.x), min(min(var_0.c, 58403i) >> (_wgslsmith_sub_u32(1u, arg_0) % 32u), arg_2.c.b.x)), u_input.a.yy, _wgslsmith_div_f32(-356f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1061f, _wgslsmith_div_f32(var_0.e, arg_2.c.e)) - _wgslsmith_f_op_f32(266f - _wgslsmith_f_op_f32(exp2(var_1.x))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(734f, 231f)) * -1212f)));
    let var_1 = global2[_wgslsmith_index_u32(0u, 16u)];
    var var_2 = func_2();
    let var_3 = any(select(select(arg_3.b, vec2<bool>(true, any(vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, true))), select(true, false | arg_3.b.x, true)), vec2<bool>(-1i < -var_2.c, !all(vec4<bool>(arg_3.b.x, arg_3.b.x, true, false))), all(select(!vec2<bool>(arg_3.b.x, arg_3.b.x), arg_3.b, arg_3.b.x))));
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> bool {
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), global1.e), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.x, -1075f))))), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-182f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.e, -320f), global3.x))) - vec2<f32>(_wgslsmith_f_op_vec2_f32(func_4(func_2())).x, func_2().e)));
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    let var_0 = Struct_2(func_1(_wgslsmith_add_u32(52971u, ~(~u_input.c.x)), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), Struct_2(func_2(), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), func_5(vec3<f32>(-254f, 550f, 669f), Struct_1(u_input.d, global1.b, 18409i, arg_2.b.zy, arg_2.e), u_input.b.x | arg_1, Struct_2(Struct_1(vec4<i32>(2147483647i, global1.c, 1i, -30254i), vec3<i32>(u_input.d.x, arg_2.a.x, global1.d.x), u_input.a.x, u_input.d.zx, -904f), vec2<bool>(false, false), arg_2)))), select(vec2<bool>(false, true | select(false, true, false)), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), true), Struct_1(u_input.d, (arg_2.a.yzz | func_5(vec3<f32>(arg_2.e, arg_2.e, -886f), Struct_1(global1.a, global1.b, global1.d.x, vec2<i32>(arg_2.d.x, 12292i), global1.e), u_input.b.x, Struct_2(Struct_1(vec4<i32>(40681i, u_input.d.x, 0i, 0i), vec3<i32>(-2147483647i, arg_0, -11395i), -13938i, vec2<i32>(arg_2.a.x, arg_3), arg_2.e), vec2<bool>(false, false), global2[_wgslsmith_index_u32(1u, 16u)])).b) >> (min(firstLeadingBit(u_input.b), vec3<u32>(arg_1, 4294967295u, 33904u)) % vec3<u32>(32u)), 745i, countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a.x), -vec2<i32>(global1.a.x, arg_0))), -574f));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(528f, global1.e))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, var_0.c.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e, 256f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.e, global1.e), vec2<f32>(arg_2.e, global3.x), var_0.b.x)))))));
    return any(select(select(!select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(true, false, var_0.b.x)), vec3<bool>(all(vec2<bool>(var_0.b.x, false)), !var_0.b.x, false), select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(true, false, var_0.b.x), var_0.b.x)), select(vec3<bool>(false, true && var_0.b.x, all(vec3<bool>(var_0.b.x, true, var_0.b.x))), vec3<bool>(any(vec3<bool>(true, var_0.b.x, true)), any(vec4<bool>(false, var_0.b.x, true, var_0.b.x)), all(vec4<bool>(var_0.b.x, true, false, true))), select(select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(true, var_0.b.x, false), vec3<bool>(true, true, true)), !vec3<bool>(false, var_0.b.x, true), vec3<bool>(var_0.b.x, false, var_0.b.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(49015u, u_input.b.x), 16u)];
    let var_0 = func_6(firstLeadingBit(max(-1i, i32(-1i) * -57712i)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 14060u, u_input.c.x, u_input.c.x), firstLeadingBit(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 65680u))), (vec4<u32>(1u, u_input.c.x, u_input.b.x, u_input.e) ^ vec4<u32>(48233u, u_input.c.x, 35314u, 39512u)) | (vec4<u32>(1u, 8970u, 0u, u_input.e) & vec4<u32>(25934u, 1u, 4294967295u, 4294967295u))), func_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.e, global1.e, -1091f))), func_1(~46245u, vec2<bool>(true, true), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], vec2<bool>(false, true), Struct_1(vec4<i32>(-55973i, -2147483647i, global1.a.x, -2147483647i), vec3<i32>(global1.a.x, 1i, 0i), 5399i, vec2<i32>(50364i, u_input.d.x), global1.e))), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.c.x, u_input.e), firstTrailingBit(u_input.b)), Struct_2(Struct_1(vec4<i32>(31009i, 2147483647i, 4377i, 67737i), u_input.a.zww, -2147483647i, vec2<i32>(0i, global1.a.x), global3.x), select(vec2<bool>(false, false), vec2<bool>(false, true), false), func_1(0u, vec2<bool>(true, true), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 16u)], vec2<bool>(false, false), global2[_wgslsmith_index_u32(u_input.c.x, 16u)])))), _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 9035i), vec2<i32>(-2147483647i, -1i)), ~(-71950i))) && true;
    let var_1 = func_1(u_input.e, !select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, true)), select(!vec2<bool>(var_0, true), vec2<bool>(true, true), !vec2<bool>(var_0, true)), vec2<bool>(all(vec3<bool>(true, false, var_0)), false)), Struct_2(global2[_wgslsmith_index_u32(~12555u, 16u)], !(!(!vec2<bool>(true, var_0))), func_2()));
    var var_2 = any(vec4<bool>(true, func_6(var_1.c, u_input.b.x, Struct_1(vec4<i32>(24077i, var_1.a.x, 11575i, 2147483647i), global1.a.wzx, 4734i, vec2<i32>(2147483647i, global1.c), -170f), ~u_input.a.x), true, var_0)) && true;
    var var_3 = _wgslsmith_div_i32(var_1.a.x, 1i);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(var_1.e + 462f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(384f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1477f, 432f)), !vec2<bool>(var_0, false)))))));
    var var_5 = ~(~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, var_1.d.x), vec2<i32>(global1.b.x, u_input.d.x)))) | _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(var_1.d, var_1.d), u_input.d.xz);
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.e), -408f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(33270i, -2147483647i), -35395i), firstTrailingBit(u_input.a.x), abs(min(vec4<i32>(func_5(vec3<f32>(-520f, 1327f, -1000f), Struct_1(vec4<i32>(var_5.x, -9876i, 2147483647i, u_input.a.x), global1.a.wzz, -4409i, global1.b.zx, -916f), 4294967295u, Struct_2(Struct_1(global1.a, vec3<i32>(2443i, -2227i, u_input.a.x), 49516i, u_input.d.zy, -362f), vec2<bool>(false, true), Struct_1(var_1.a, u_input.a.wyy, -59190i, vec2<i32>(var_5.x, -28429i), 692f))).d.x, var_5.x << (87765u % 32u), 734i, u_input.a.x), vec4<i32>(~var_1.d.x, 40364i, var_5.x, 4557i))), _wgslsmith_clamp_u32(u_input.e, max(~82909u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), vec3<u32>(u_input.c.x, 216u, u_input.e))), 4294967295u) >> (4294967295u % 32u));
}

