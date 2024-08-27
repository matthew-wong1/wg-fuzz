struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(989f, -1373f, -2049f, -116f);

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: array<f32, 16>;

var<private> global3: vec3<i32> = vec3<i32>(21000i, 47617i, 1i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(select(global0.x, 864f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + global0.x))), ~(u_input.b.x & ~_wgslsmith_clamp_u32(u_input.c.x, 86431u, 1u)), !any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), false)), Struct_1(_wgslsmith_mod_u32(4294967295u, u_input.b.x)));
    let var_1 = -_wgslsmith_add_i32((firstTrailingBit(u_input.a) ^ -2147483647i) & -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global3.x, -16841i, u_input.a), vec4<i32>(-58977i, 2147483647i, 8764i, u_input.a)), -2147483647i);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-global3.zx, global3.yz), global3.x);
    let var_3 = _wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(64575u, 30867u, 66883u, 0u)), vec4<u32>(max(var_0.d.a, var_0.b), 1u, 22868u & var_0.d.a, ~6820u))), vec4<u32>(~9416u, firstLeadingBit(var_0.d.a << (abs(4294967295u) % 32u)), _wgslsmith_dot_vec3_u32(u_input.c, reverseBits(abs(vec3<u32>(56620u, 62441u, 30638u)))), ~_wgslsmith_div_u32(var_0.d.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24681u, u_input.d, 18053u), vec4<u32>(var_0.b, var_0.d.a, var_0.b, var_0.d.a)))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-1213f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1788f)) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 16u)] - -184f))), _wgslsmith_f_op_f32(min(-452f, _wgslsmith_f_op_f32(f32(-1f) * -725f))), var_0.a, global0.x);
    return var_0.a;
}

fn func_2() -> Struct_2 {
    global2 = array<f32, 16>();
    global1 = array<vec4<bool>, 9>();
    var var_0 = vec3<u32>(_wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(~72170u | u_input.c.x, 4294967295u), _wgslsmith_mult_u32(~u_input.c.x, ~countOneBits(u_input.c.x) & 18539u));
    var_0 = vec3<u32>(~u_input.d, ~19178u, ~0u);
    var var_1 = true;
    return Struct_2(_wgslsmith_f_op_f32(func_3()), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(120u, 1u, var_0.x, u_input.d) ^ vec4<u32>(23631u, u_input.d, 4294967295u, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 1u, 127399u, 15846u), vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 1u)), -986f != global2[_wgslsmith_index_u32(var_0.x, 16u)]), ~vec4<u32>(23836u, 16812u, 9290u, u_input.c.x) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.d, u_input.c.x, u_input.d)), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.c.x, 1u, 4294967295u))) % vec4<u32>(32u))), true, Struct_1(_wgslsmith_mult_u32(u_input.b.x, firstTrailingBit(var_0.x))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = arg_0;
    global2 = array<f32, 16>();
    global1 = array<vec4<bool>, 9>();
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().a, -459f, _wgslsmith_f_op_f32(f32(-1f) * -972f), global0.x) - vec4<f32>(912f, 770f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + 1489f), 1350f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f))));
    global1 = array<vec4<bool>, 9>();
    return select(-_wgslsmith_div_vec4_i32(firstLeadingBit(abs(vec4<i32>(-2147483647i, arg_1, u_input.a, 1i))), reverseBits(max(vec4<i32>(2147483647i, -2147483647i, 0i, arg_1), vec4<i32>(0i, 1i, global3.x, 2147483647i)))), vec4<i32>(reverseBits(61236i), -arg_1, ~(~u_input.a), i32(-1i) * -45106i), func_2().c);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = global3.zy;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(u_input.b.x) & ~1u, _wgslsmith_div_u32(17817u, u_input.d)), 16u)];
    let var_2 = select(firstLeadingBit(reverseBits(vec4<i32>(-10164i, -33951i, 50394i, -5699i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.x, global3.x, 20303i), vec4<i32>(5556i, -2147483647i, global3.x, u_input.a))), func_4(func_2(), u_input.a, global1[_wgslsmith_index_u32(u_input.c.x, 9u)]), !vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, true, true, true)))) | (-firstTrailingBit(vec4<i32>(var_0.x, var_0.x, u_input.a, var_0.x)) & vec4<i32>(~0i, abs(22478i), ~_wgslsmith_div_i32(global3.x, var_0.x), reverseBits(0i)));
    let var_3 = func_2();
    global3 = ~vec3<i32>(_wgslsmith_mod_i32(~reverseBits(var_0.x), ~abs(var_2.x)), global3.x, -22818i);
    return Struct_2(-158f, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11103u, 1u, u_input.d, u_input.c.x), vec4<u32>(5513u, 44021u, 58695u, 5751u)), ~4294967295u, var_3.b) ^ _wgslsmith_div_vec3_u32(u_input.c ^ u_input.c, _wgslsmith_div_vec3_u32(vec3<u32>(var_3.d.a, u_input.c.x, var_3.d.a), vec3<u32>(4294967295u, u_input.b.x, 84856u)))), -firstTrailingBit(_wgslsmith_mod_i32(u_input.a, var_2.x)) > abs(var_2.x), func_2().d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-3874i), _wgslsmith_add_i32(u_input.a & u_input.a, u_input.a)), select(global3.xx, ~vec2<i32>(global3.x, u_input.a), vec2<bool>(true, true))), reverseBits(i32(-1i) * -33715i));
    var var_1 = 1u;
    let var_2 = Struct_2(-1000f, min(4294967295u, 64249u), global2[_wgslsmith_index_u32(u_input.c.x, 16u)] <= global0.x, Struct_1(_wgslsmith_add_u32(u_input.b.x, 0u)));
    let var_3 = func_1(_wgslsmith_f_op_f32(select(var_2.a, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d, min(1u, u_input.d)), 16u)], all(!vec2<bool>(var_2.c, true)))));
    var var_4 = firstLeadingBit(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-30798i, 0i, u_input.a) ^ vec3<i32>(-16373i, var_0.x, 6431i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, u_input.a, u_input.a), vec3<i32>(var_0.x, -63462i, 1i), vec3<i32>(global3.x, global3.x, -14531i)), -vec3<i32>(25306i, 30306i, global3.x)) & countOneBits(vec3<i32>(-2147483647i, 0i, 1i)), vec3<i32>((-11892i << (var_2.d.a % 32u)) >> (_wgslsmith_div_u32(var_3.b, var_3.b) % 32u), u_input.a, -29525i), true));
    let var_5 = select(!select(select(!vec3<bool>(var_2.c, var_2.c, var_3.c), !vec3<bool>(false, var_2.c, true), all(vec2<bool>(false, var_2.c))), !(!vec3<bool>(true, true, var_3.c)), !vec3<bool>(false, true, var_3.c)), select(vec3<bool>(!var_3.c, true | (false || var_2.c), var_3.c), !(!(!vec3<bool>(true, true, var_2.c))), select(var_3.c, !(false & var_2.c), true)), !var_3.c);
    var var_6 = -1412f;
    var var_7 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(824f, var_3.a, all(vec2<bool>(var_5.x, var_5.x)))) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(27936u, 16u)] + _wgslsmith_f_op_f32(1889f * 1024f))))), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(min(~_wgslsmith_add_u32(var_2.b, var_2.b), min(u_input.d, u_input.b.x)), 16u)], -209f)), -204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) - _wgslsmith_f_op_f32(-521f - -781f)))));
    var var_8 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - var_7.x)) - -2185f));
}

