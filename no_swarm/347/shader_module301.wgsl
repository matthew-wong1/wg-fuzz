struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.a;
    global0 = array<bool, 10>();
    let var_1 = firstLeadingBit(min(min(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, 2147483647i), vec2<i32>(var_0, u_input.a)), abs(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))), ~(vec2<i32>(-17012i, u_input.a) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))));
    var var_2 = vec2<f32>(1f, 1f);
    global0 = array<bool, 10>();
    return Struct_3(Struct_1(vec4<bool>(firstTrailingBit(-1i) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.x, var_0, u_input.a), vec4<i32>(var_1.x, u_input.a, u_input.a, var_1.x)), !(!global0[_wgslsmith_index_u32(46872u, 10u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(40105u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)])), global0[_wgslsmith_index_u32(~1u, 10u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-169f, _wgslsmith_f_op_f32(max(var_2.x, -662f)), _wgslsmith_f_op_f32(var_2.x * var_2.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, var_2.x, -1027f)))));
}

fn func_3(arg_0: vec4<u32>) -> Struct_3 {
    global0 = array<bool, 10>();
    var var_0 = Struct_1(vec4<bool>(false, true && global0[_wgslsmith_index_u32(65431u, 10u)], all(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 10u)], false, true)), true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-926f, func_2().a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_1 = func_2();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    return Struct_3(Struct_1(vec4<bool>(false, func_2().a.a.x, var_1.a.b.x <= _wgslsmith_f_op_f32(trunc(1294f)), !any(var_0.a.zw)), func_2().a.b));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(554f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_3(vec4<u32>(9513u, 1u, 3687u, 58240u)).a.b.x)) + -872f))));
    return arg_0.a;
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_0 = func_4(Struct_4(func_2(), func_3(vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(26551u, 10u)], true, true, false), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -173f, 1077f))))), _wgslsmith_clamp_i32(u_input.a ^ 2147483647i, -1i, _wgslsmith_clamp_i32(u_input.a, 2147483647i, 37947i) ^ reverseBits(1i)), Struct_1(func_2().a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1055f, -197f, 588f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-169f, 961f, 1000f)))))), select(func_3(vec4<u32>(1u, ~39928u, reverseBits(0u), reverseBits(15453u))).a.a.wz, !vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], func_2().a.a.x), select(vec2<bool>(!global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(80800u, 4294967295u, 84285u, 0u), vec4<u32>(19701u, 74439u, 61363u, 0u)), 10u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(global0[_wgslsmith_index_u32(18429u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_3(~vec4<u32>(1196u, 4294967295u, 148363u, 4294967295u)).a.b.x))));
    var var_1 = Struct_2(abs(select(~vec4<i32>(1i, arg_0, -2147483647i, u_input.a) ^ vec4<i32>(1572i, 1i, arg_0, arg_0), -vec4<i32>(-7510i, 0i, 1i, -1i), true)), 0i, Struct_1(var_0.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), -507f, _wgslsmith_f_op_f32(-var_0.a.b.x)))));
    var var_2 = Struct_4(func_3(vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(func_2().a), Struct_3(func_3(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 27076u)), 4294967295u, ~4294967295u, 75108u)).a), ~_wgslsmith_div_i32(min(-2147483647i, -8087i), -46339i), var_1.c);
    return var_2.a.a.b.x;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    global0 = array<bool, 10>();
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(u_input.a, 1i), -13182i, _wgslsmith_clamp_i32(1i ^ (u_input.a | ~u_input.a), -(-18849i | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~select(-34242i, -9290i, !global0[_wgslsmith_index_u32(37884u, 10u)])), ~u_input.a);
    let var_1 = Struct_4(func_3(~(~vec4<u32>(1u, 1u, 1u, 1u))), func_2(), func_3(vec4<u32>(4294967295u, 13625u, abs(firstLeadingBit(15950u)), 1u)), 33741i, func_4(Struct_4(func_2(), func_2(), Struct_3(Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)], true, true), vec3<f32>(arg_1.x, 294f, 438f))), 1i << (1u % 32u), func_3(abs(vec4<u32>(1u, 0u, 0u, 5200u))).a), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), -519f).a);
    var var_2 = Struct_4(func_2(), func_2(), Struct_3(var_1.e), 77143i, func_3(vec4<u32>(~0u, _wgslsmith_clamp_u32(1u, 4294967295u, 41229u), 4294967295u, select(0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 10u)])) | _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, 20982u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))).a);
    var var_3 = min(abs(max(vec4<u32>(~33095u, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(12755u, 81212u), vec2<u32>(40796u, 11914u)), ~0u), select(_wgslsmith_sub_vec4_u32(vec4<u32>(43379u, 19433u, 35229u, 0u), vec4<u32>(1u, 0u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), !var_1.b.a.a))), min(reverseBits(~reverseBits(vec4<u32>(0u, 55964u, 8220u, 0u))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(5484u, 4477u, 0u, 26492u), vec4<u32>(0u, 0u, 47488u, 0u), vec4<u32>(4294967295u, 17982u, 16333u, 35052u)))));
    return ~(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(2147483647i, -6303i)), var_0.wy) | var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i <= u_input.a;
    global0 = array<bool, 10>();
    let var_1 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1189f)), _wgslsmith_f_op_f32(f32(-1f) * -136f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-300f - -1000f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(521f, 618f) - vec2<f32>(799f, -536f)) - vec2<f32>(-1017f, 304f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(715f, 328f) - vec2<f32>(2234f, 1558f)))));
    var_0 = !global0[_wgslsmith_index_u32(18060u, 10u)] | all(vec2<bool>(true, true));
    let var_2 = Struct_1(vec4<bool>(!global0[_wgslsmith_index_u32(44439u, 10u)], !(firstLeadingBit(var_1) == (var_1 ^ u_input.a)), -u_input.a > (var_1 & 125519i), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1855f + _wgslsmith_f_op_f32(abs(-466f)))), 1520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1373f, 806f) * _wgslsmith_f_op_f32(f32(-1f) * -250f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_2.b - var_2.b))), 2147483647i, reverseBits(select(1u, _wgslsmith_add_u32(1u, 1u), !(!global0[_wgslsmith_index_u32(18212u, 10u)]))), vec3<i32>(countOneBits(-1i), -2147483647i, u_input.a));
}

