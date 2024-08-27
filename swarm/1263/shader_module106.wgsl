struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: Struct_5 = Struct_5(-315f, vec4<f32>(-1082f, 240f, -441f, 539f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> vec4<f32> {
    let var_0 = ~(~max(4374i, u_input.a.x));
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))) + _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.x))), any(arg_0)))), _wgslsmith_f_op_vec4_f32(-global0.b));
    var var_1 = Struct_4(vec4<i32>(-7023i, 0i, -(i32(-1i) * -var_0), countOneBits(firstLeadingBit(1i))), Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(73944i, arg_1, 19806i), vec3<i32>(-2147483647i, arg_1 | -47064i, -1i), -vec3<i32>(11430i, arg_1, 41120i)), -535f), Struct_3(1i, 4294967295u, u_input.a, 4294967295u), vec2<bool>(true, any(vec2<bool>(all(vec4<bool>(true, arg_0.x, false, false)), arg_0.x))));
    global0 = Struct_5(574f, global0.b);
    let var_2 = vec2<u32>(arg_2, firstLeadingBit(4294967295u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(278f, var_1.b.b), _wgslsmith_f_op_f32(-2829f * 314f), _wgslsmith_f_op_f32(-global0.a))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.b, _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.b, global0.a, -1201f, global0.b.x), _wgslsmith_f_op_vec4_f32(exp2(global0.b))), !vec4<bool>(false, var_1.d.x, true, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = Struct_5(global0.a, _wgslsmith_f_op_vec4_f32(-global0.b));
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)))));
    global0 = Struct_5(-226f, _wgslsmith_f_op_vec4_f32(func_3(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), true), ~arg_0.a.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x))));
    var var_1 = arg_1;
    var var_2 = ~var_1.a;
    return arg_0;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    global0 = Struct_5(_wgslsmith_f_op_f32(-123f * -1000f), global0.b);
    global0 = Struct_5(_wgslsmith_f_op_f32(select(-1253f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.b))), _wgslsmith_f_op_f32(-1044f - 606f))), true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.b, arg_0.b.b, 128f, -1446f), global0.b)))));
    let var_0 = vec4<f32>(global0.b.x, global0.b.x, _wgslsmith_div_f32(arg_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(674f * _wgslsmith_f_op_f32(arg_0.b.b - arg_0.b.b)))), -2729f);
    var var_1 = (vec4<i32>(_wgslsmith_mod_i32(arg_2.x, _wgslsmith_dot_vec4_i32(arg_0.a, arg_0.a)), -arg_0.a.x, u_input.a.x, firstLeadingBit(-u_input.a.x)) ^ _wgslsmith_mult_vec4_i32(select(~vec4<i32>(-57941i, -2147483647i, u_input.a.x, 47337i), firstTrailingBit(vec4<i32>(-2147483647i, arg_3, -1i, u_input.b.x)), !vec4<bool>(false, arg_0.d.x, false, arg_1)), select(arg_0.a << (vec4<u32>(arg_0.c.d, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)), -arg_0.a, false))) ^ ~min(arg_0.a, vec4<i32>(7948i, arg_2.x, select(-2147483647i, -2147483647i, false), arg_3));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b) * _wgslsmith_f_op_f32(-arg_0.b.b)))) + -309f);
    return 731f;
}

fn func_1() -> bool {
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1342f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1218f * -1420f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a)) + _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(516f))), _wgslsmith_f_op_f32(func_4(Struct_4(-vec4<i32>(2147483647i, 6476i, 15904i, u_input.b.x), func_2(Struct_1(vec3<i32>(-13169i, 2147483647i, u_input.a.x), global0.b.x), Struct_2(4294967295u)), Struct_3(20328i, 4294967295u, vec2<i32>(1i, u_input.a.x), 1u), vec2<bool>(true, true)), min(0u, 92730u) < _wgslsmith_sub_u32(u_input.c, 1u), vec3<i32>(_wgslsmith_add_i32(29208i, u_input.a.x), u_input.b.x, ~u_input.a.x), u_input.b.x)), -1712f));
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, global0.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -238f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -384f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1488f, global0.a, global0.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.b))))));
    let var_0 = Struct_2(min(u_input.d.x, firstTrailingBit(16035u >> (u_input.c % 32u))) >> (abs(1u) % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(reverseBits(abs(vec4<i32>(-49296i, 4294i, 69606i, -1i))), Struct_1(-vec3<i32>(u_input.a.x, 1i, -23975i), _wgslsmith_f_op_f32(-1176f - global0.b.x)), Struct_3(_wgslsmith_add_i32(1i, -2147483647i), var_0.a, reverseBits(vec2<i32>(10344i, 1i)), 0u), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), !(!all(vec2<bool>(true, false))), vec3<i32>(~_wgslsmith_div_i32(u_input.b.x, u_input.a.x), ~u_input.a.x, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i) * -vec2<i32>(-48489i, u_input.b.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(513f, _wgslsmith_f_op_f32(trunc(1433f))));
    return any(vec2<bool>((_wgslsmith_f_op_f32(min(1000f, var_2.x)) > -1000f) && true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.zy;
    let var_1 = 76060u;
    let var_2 = min((select(vec3<i32>(u_input.a.x, u_input.b.x, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -2147483647i, 0i), vec3<i32>(u_input.a.x, u_input.a.x, -28183i)), func_1()) ^ reverseBits(-vec3<i32>(u_input.b.x, 31735i, 17003i))) & vec3<i32>(_wgslsmith_div_i32(0i, firstLeadingBit(u_input.b.x)), min(~u_input.b.x, u_input.a.x), u_input.b.x), vec3<i32>(-_wgslsmith_div_i32(u_input.a.x, firstTrailingBit(u_input.b.x)), u_input.b.x, ~u_input.a.x));
    let var_3 = _wgslsmith_add_i32((max(u_input.b.x, min(2147483647i, -1i)) >> (~_wgslsmith_sub_u32(4319u, var_0.x) % 32u)) << (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_1, u_input.d.x)) >> (var_0 % vec2<u32>(32u)), vec2<u32>(~6138u, ~var_1)) % 32u), 1i);
    global0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1935f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-304f, 824f, -308f, 549f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, -424f, global0.a) + vec4<f32>(global0.b.x, global0.b.x, -1874f, global0.a)))) * vec4<f32>(global0.a, -921f, _wgslsmith_f_op_f32(-global0.a), global0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(global0.b.x, 346f, 240f, -1382f)))))));
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -123f), vec4<f32>(func_2(Struct_1(var_2, 1000f), Struct_2(0u)).b, 1000f, global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(vec4<i32>(-24757i, var_2.x, var_3, 5861i), Struct_1(vec3<i32>(1i, -1i, u_input.a.x), global0.b.x), Struct_3(0i, var_1, vec2<i32>(var_2.x, -1i), 11177u), vec2<bool>(false, false)), true, vec3<i32>(var_3, var_2.x, var_3), var_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -581f)))));
    let var_4 = Struct_2(0u);
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(select(~reverseBits(-u_input.b.x), ~(-31572i ^ var_3), true || (all(vec2<bool>(false, false)) == func_1())), ~_wgslsmith_add_vec3_u32(abs(~vec3<u32>(1u, var_5, var_0.x)), reverseBits(u_input.d)));
}

