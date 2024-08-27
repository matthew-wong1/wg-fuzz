struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = ~u_input.d;
    var var_1 = 4294967295u;
    var var_2 = !select(select(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))), vec3<bool>(any(vec3<bool>(true, false, true)), false, all(vec3<bool>(true, false, false))));
    let var_3 = var_2.x & false;
    var var_4 = countOneBits(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c, -60854i, 0i, -5845i) ^ vec4<i32>(u_input.c, u_input.d, u_input.d, -1i), ~vec4<i32>(-21943i, u_input.c, -14091i, 24521i), vec4<i32>(u_input.d, _wgslsmith_div_i32(-2147483647i, u_input.d), u_input.d, 53556i ^ u_input.c)));
    return vec3<bool>(false, var_3, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> vec3<u32> {
    global1 = array<Struct_1, 15>();
    var var_0 = Struct_5(!func_3(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(797f, -1628f, arg_1, 790f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1120f, arg_1, 1152f, 481f))), true)))), ~firstLeadingBit(u_input.d), abs(146638u), Struct_2(_wgslsmith_f_op_f32(-arg_1), -21169i, global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(abs(u_input.b & (u_input.a << (35082u % 32u))), 15u)], Struct_1(u_input.c, u_input.b, select(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(0u, 9863u, 0u, 14299u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(40234u, 39232u, u_input.b, u_input.b), vec4<u32>(u_input.b, 40182u, u_input.b, 9160u)), select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false), arg_0.x)), ~max(u_input.b, 4294967295u))));
    global1 = array<Struct_1, 15>();
    let var_1 = ~1u;
    var var_2 = Struct_5(var_0.a, var_0.b, _wgslsmith_div_i32(var_0.e.e.a << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(48742u, 6850u, var_1), vec3<u32>(var_1, 34709u, var_1)), vec3<u32>(4294967295u, 46587u, var_1)) % 32u), -26824i), abs(var_0.d), Struct_2(-319f, -25911i, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(var_1 << (max(_wgslsmith_dot_vec4_u32(vec4<u32>(5700u, 4294967295u, u_input.b, var_1), var_0.e.e.c), abs(43578u)) % 32u), 15u)], var_0.e.e));
    return ~(~vec3<u32>(u_input.b, var_2.e.d.c.x << (var_1 % 32u), select(var_0.e.d.b, ~1u, false)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3) -> bool {
    var var_0 = arg_1;
    let var_1 = reverseBits(arg_0.e.d);
    global1 = array<Struct_1, 15>();
    var var_2 = func_4(select(vec3<bool>((i32(-1i) * -1i) != u_input.d, true, any(vec2<bool>(arg_1.x, var_0.x)) | any(vec4<bool>(var_0.x, false, false, var_0.x))), select(!select(vec3<bool>(false, arg_2.a, false), vec3<bool>(arg_2.a, true, var_0.x), vec3<bool>(arg_1.x, true, arg_2.a)), func_3(), !(arg_2.a || false)), vec3<bool>(123f < _wgslsmith_f_op_f32(arg_0.a - arg_0.a), var_0.x, true)), arg_0.a);
    let var_3 = _wgslsmith_clamp_i32(34800i, firstTrailingBit(-1i) >> (firstLeadingBit(~var_1) % 32u), ~arg_0.d.a);
    return arg_2.a;
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: u32) -> bool {
    global1 = array<Struct_1, 15>();
    global0 = 2147483647i;
    let var_0 = Struct_3(true, countOneBits(select(~(vec4<i32>(u_input.d, -24980i, u_input.d, -8092i) >> (vec4<u32>(107963u, u_input.a, arg_1.x, arg_1.x) % vec4<u32>(32u))), vec4<i32>(34271i, _wgslsmith_div_i32(1i, u_input.c), ~(-59102i), 0i), true)));
    var var_1 = _wgslsmith_add_vec3_i32(var_0.b.xwy, _wgslsmith_mod_vec3_i32(var_0.b.ywy & vec3<i32>(-1i >> (u_input.a % 32u), -2147483647i, abs(u_input.c)), _wgslsmith_mod_vec3_i32(var_0.b.wzw, var_0.b.zyy | _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.x, 0i, u_input.c), var_0.b.zzz))));
    let var_2 = Struct_5(func_3(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(314f + 541f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -591f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-798f, 200f) - _wgslsmith_f_op_f32(sign(-239f)))), _wgslsmith_f_op_f32(select(1000f, -1289f, arg_2.x))), u_input.d, _wgslsmith_mod_u32(~(1u ^ arg_1.x), 41921u), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-916f + _wgslsmith_div_f32(-421f, -522f)))), reverseBits(~(-1i)), Struct_1(var_1.x, arg_0, ~abs(vec4<u32>(arg_3, 50232u, u_input.a, 4294967295u)), arg_3), Struct_1(var_0.b.x >> (abs(arg_3) % 32u), ~min(u_input.a, arg_3), firstLeadingBit(~vec4<u32>(u_input.b, 16014u, 4294967295u, 6390u)), ~u_input.b >> (1u % 32u)), global1[_wgslsmith_index_u32(22769u, 15u)]));
    return any(!vec2<bool>(any(func_3()), any(var_2.a.zz)));
}

fn func_6(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-665f, -1877f, -1000f, -815f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-523f, -1000f, -988f, 243f))))))))));
    global1 = array<Struct_1, 15>();
    global0 = -1i;
    let var_1 = ~(~vec2<u32>(u_input.a, u_input.a));
    global1 = array<Struct_1, 15>();
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = false | (u_input.a != _wgslsmith_add_u32(12841u, countOneBits(firstTrailingBit(arg_1.d.b))));
    let var_1 = i32(-1i) * -2147483647i;
    global1 = array<Struct_1, 15>();
    var var_2 = ~(~arg_1.e.c);
    let var_3 = func_6(vec3<bool>(true, func_5(~_wgslsmith_mult_u32(arg_0.d.d, 1243u), ~vec2<u32>(0u, arg_0.e.c.x), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), func_2(Struct_2(arg_0.a, 1998i, arg_1.d, Struct_1(2147483647i, 54540u, vec4<u32>(arg_0.e.b, 26541u, 22172u, arg_0.c.c.x), arg_1.c.c.x), Struct_1(arg_1.b, 4294967295u, vec4<u32>(0u, 0u, 1u, 322u), arg_0.d.b)), vec2<bool>(false, true), Struct_3(false, vec4<i32>(arg_1.e.a, -1i, 2147483647i, 2147483647i)))), _wgslsmith_clamp_u32(arg_1.d.c.x, 17163u, countOneBits(1u))), all(vec4<bool>(true, true, true, false))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_1.a, -1280f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(549f, -988f, -444f) * vec3<f32>(-415f, 1171f, -297f)), !vec3<bool>(false, var_3, var_3)))), vec3<f32>(arg_1.a, 1000f, 1033f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-107f, -580f, arg_0.a)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a, -1365f, arg_1.a)))))))));
}

fn func_7(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = -_wgslsmith_add_vec2_i32(-arg_1.xz, max(arg_1.yy, abs(arg_1.yz)));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(11170u, _wgslsmith_clamp_u32(u_input.a, 1u, max(~u_input.a, select(u_input.a, u_input.b, false)) >> (~_wgslsmith_mod_u32(u_input.b, 0u) % 32u))), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    var var_0 = func_7(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(117f * -1245f), _wgslsmith_f_op_f32(1f * -415f), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(-2923f, u_input.c, global1[_wgslsmith_index_u32(42844u, 15u)], Struct_1(u_input.c, u_input.a, vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), u_input.b), Struct_1(u_input.c, u_input.a, vec4<u32>(u_input.a, u_input.b, 47150u, u_input.b), u_input.b)), Struct_2(-1418f, 14832i, Struct_1(-1i, u_input.b, vec4<u32>(1u, u_input.a, u_input.a, u_input.a), 20672u), global1[_wgslsmith_index_u32(1u, 15u)], Struct_1(u_input.d, u_input.b, vec4<u32>(u_input.a, u_input.b, 1u, u_input.a), u_input.b))))))), !vec3<bool>(22070u >= u_input.b, any(vec4<bool>(false, true, true, false)), true))), -vec3<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -2147483647i)) << (u_input.a % 32u), _wgslsmith_mod_i32(~1i, ~u_input.c)), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)), -1519f, 605f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-704f + -662f))))));
    let var_1 = any(func_3().xz);
    global0 = countOneBits(func_7(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1038f, 722f, 1021f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1628f, 2625f, -1057f), vec3<f32>(932f, 1000f, -217f))))), min(vec3<i32>(u_input.c, 0i, var_0.a), vec3<i32>(-1i, var_0.a, 2147483647i)) ^ vec3<i32>(var_0.a, var_0.a, var_0.a), Struct_4(vec4<f32>(1371f, 302f, -360f, 1721f))).a) | 51604i;
    global0 = -(-2800i | (var_0.a | (i32(-1i) * -28050i)));
    global0 = firstLeadingBit(abs(reverseBits(var_0.a) << (1u % 32u)) ^ u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer((var_0.c.x << (_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.b), 12942u) % 32u)) << (u_input.a % 32u));
}

