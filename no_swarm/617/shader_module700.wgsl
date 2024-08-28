struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-327f)), _wgslsmith_f_op_f32(abs(-721f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1128f - _wgslsmith_f_op_f32(min(1112f, 290f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(621f)), _wgslsmith_f_op_f32(493f + -1487f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1217f)) * -1606f), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-211f, 739f, 746f, 137f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1014f, -1000f, 485f, -1024f)))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-841f, 1215f, -717f, 560f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1176f, -202f, -595f, -1130f), vec4<f32>(484f, 825f, 598f, -682f))))))));
    var var_1 = Struct_1(true && all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), ~(~(~u_input.d)), _wgslsmith_mult_i32(-u_input.c.x, ~(-72850i)), var_0.x);
    var var_2 = Struct_3(abs(u_input.c.x));
    var var_3 = !(!vec4<bool>(any(vec2<bool>(var_1.a, var_1.a)) & !var_1.a, select(!var_1.a, 149u > arg_0, true), var_1.a, false));
    var_3 = vec4<bool>(true, reverseBits(var_1.c) > _wgslsmith_mult_i32(select(var_1.c, var_2.a, true), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b, -2147483647i, 0i, -2147483647i)), -vec4<i32>(u_input.c.x, var_2.a, var_1.c, 1i))), true, true);
    return 504f;
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(303f, 723f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2027f - _wgslsmith_f_op_f32(-759f + 186f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1366f)), _wgslsmith_div_f32(511f, -194f))), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)))))), _wgslsmith_f_op_f32(step(393f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(47278u, u_input.d.x, 1u)))))));
    var var_1 = !(171u == u_input.a.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_0.x, 863f, _wgslsmith_f_op_f32(f32(-1f) * -787f));
    var_1 = false;
    var var_3 = Struct_1(any(vec3<bool>(true == select(false, false, false), true, true)), u_input.d, ~u_input.c.x, 584f);
    return Struct_3(u_input.b);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 22927u, 4539u, u_input.a.x), vec4<u32>(0u, u_input.d.x, 90735u, u_input.a.x)), u_input.d.x));
    let var_2 = Struct_2(Struct_1(all(vec2<bool>(true, arg_0.x != -1000f)), _wgslsmith_div_vec3_u32(~u_input.d, select(vec3<u32>(u_input.d.x, 62461u, u_input.a.x) ^ u_input.d, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 58096u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), vec3<bool>(true, false, true))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(694f * -1634f) - arg_0.x))), Struct_1((_wgslsmith_f_op_f32(min(-625f, -308f)) >= _wgslsmith_div_f32(-1097f, arg_0.x)) || true, vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, ~u_input.a.x), 0u, u_input.a.x), var_0.a, arg_0.x), (_wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.a.x), ~0u) | 8604u) >> (u_input.d.x % 32u), _wgslsmith_f_op_vec2_f32(-arg_0), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, true))), !(~0u >= u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_2.d.x - var_2.a.d))))));
    var var_4 = Struct_2(var_2.a, Struct_1(all(!vec4<bool>(var_2.a.a, var_2.b.a, var_2.a.a, var_2.b.a)), ~var_2.b.b, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1239f) + _wgslsmith_f_op_f32(-1358f * 406f)))), 55828u, vec2<f32>(-736f, 889f), vec2<bool>(var_2.b.a, true));
    return Struct_1(true, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(var_2.c, 27884u, 4294967295u) | vec3<u32>(0u, 5103u, 93936u), ~var_4.a.b, true), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_4.a.b.x, 4294967295u, var_4.a.b.x), var_2.b.b)), reverseBits(vec3<u32>(abs(var_2.c), var_4.a.b.x, 4294967295u))), var_4.a.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * var_4.a.d), _wgslsmith_f_op_f32(-378f - 786f), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.xx;
    let var_1 = Struct_1(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec3<u32>(countOneBits(0u), 15805u, ~(1u >> (var_0.x % 32u))), ~36363i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1568f, 931f), _wgslsmith_f_op_f32(ceil(-374f)))));
    let var_2 = -698f;
    let var_3 = vec3<i32>(-var_1.c, ~(~(-23449i)), -2147483647i);
    var var_4 = !(~1u > _wgslsmith_dot_vec2_u32(var_1.b.yx, var_1.b.yx));
    var_4 = all(vec2<bool>(func_4(Struct_1(var_1.b.x <= 0u, vec3<u32>(var_0.x, var_1.b.x, u_input.a.x) & vec3<u32>(40615u, var_0.x, 0u), _wgslsmith_dot_vec3_i32(u_input.c, var_3), _wgslsmith_div_f32(var_1.d, -1383f)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_1.d)))), -11289i == -u_input.b));
    var var_5 = ~(~2259u);
    var_5 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~reverseBits(reverseBits(0u)), _wgslsmith_mod_u32(var_1.b.x, min(var_1.b.x, u_input.a.x & 4294967295u))), firstLeadingBit(_wgslsmith_dot_vec3_u32(~(vec3<u32>(50761u, var_1.b.x, 4364u) ^ var_1.b), var_1.b)));
    let var_6 = Struct_2(Struct_1(any(!(!vec4<bool>(true, var_1.a, var_1.a, var_1.a))), select(vec3<u32>(~0u, select(1u, u_input.a.x, false), var_0.x), vec3<u32>(1u, 0u, u_input.d.x), !(!vec3<bool>(false, var_1.a, true))), 17326i, var_2), var_1, var_1.b.x | _wgslsmith_clamp_u32(var_1.b.x >> (13538u % 32u), u_input.d.x, _wgslsmith_sub_u32(countOneBits(u_input.a.x), var_0.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1398f, 1000f), vec2<f32>(var_2, var_1.d)))))))), vec2<bool>(false, !any(vec2<bool>(var_1.a, true)) == var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1221f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_6.b.d)), _wgslsmith_f_op_f32(-396f * var_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -826f), var_2), ~(~var_0.x), vec4<u32>(reverseBits(0u), ~((var_0.x << (34519u % 32u)) >> (0u % 32u)), firstLeadingBit(select(11981u, ~4294967295u, var_6.b.d != -933f)), abs(~0u)));
}

