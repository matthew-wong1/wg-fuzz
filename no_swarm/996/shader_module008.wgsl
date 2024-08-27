struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 18>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = -1082f;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-649f, 646f) + -878f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-875f + -194f) - _wgslsmith_f_op_f32(sign(-972f)))), -1002f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f + -1923f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(749f)) + _wgslsmith_f_op_f32(f32(-1f) * -1356f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1080f, -873f, -1651f), vec3<f32>(-1601f, -785f, 451f)))))))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(min(global0.x, global0.x)), ~firstLeadingBit(~global0.x)), 18u)]));
    let var_2 = Struct_1(~_wgslsmith_sub_u32(18975u, global0.x), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), ~firstTrailingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 30073u), vec2<u32>(22381u, 1u)))));
    global0 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(~var_2.a, 31255u, min(global0.x, 0u)) | ~vec3<u32>(global0.x, 1u, global0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_2.a & global0.x, _wgslsmith_mod_u32(1u, var_2.a)), firstLeadingBit(max(vec3<u32>(var_2.c.x, 0u, 0u), vec3<u32>(var_2.a, 1u, var_2.c.x))), vec3<u32>(~29189u, var_2.c.x & 0u, ~37828u)), vec3<bool>(true, true, false)), vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 1u, 28143u), vec3<u32>(24378u, global0.x, 8017u)), _wgslsmith_add_u32(var_2.c.x, countOneBits(global0.x))), _wgslsmith_div_u32(global0.x, ~var_2.c.x), ~global0.x));
    let var_3 = vec4<u32>(global0.x, 37800u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, reverseBits(_wgslsmith_sub_u32(global0.x, 63778u)), select(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.c.x), vec2<u32>(55281u, 4294967295u)), global2[_wgslsmith_index_u32(var_2.a, 18u)]), ~_wgslsmith_div_u32(4294967295u, 23343u)), ~vec4<u32>(68743u, 32998u, var_2.c.x, var_2.c.x) >> (vec4<u32>(_wgslsmith_mult_u32(5836u, global0.x), ~var_2.a, reverseBits(1u), var_2.c.x) % vec4<u32>(32u))), ~min(var_2.c.x, 1u));
    return vec3<u32>(_wgslsmith_clamp_u32(15382u << (var_2.a % 32u), 1u, ~(~39458u << (~global0.x % 32u))), _wgslsmith_add_u32(global0.x, firstLeadingBit(1u)), ~var_2.c.x);
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global2 = array<bool, 18>();
    let var_0 = -535f;
    global0 = ~_wgslsmith_mult_vec3_u32(~firstLeadingBit(~vec3<u32>(1u, arg_0.a, 8656u)), func_3(vec3<i32>(abs(u_input.a), -u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = _wgslsmith_mult_vec2_u32(~(~global0.zz), _wgslsmith_add_vec2_u32(select(_wgslsmith_sub_vec2_u32(~global0.yy, global0.xy), vec2<u32>(~arg_0.a, max(global0.x, global0.x)), global2[_wgslsmith_index_u32(113388u, 18u)]), firstTrailingBit(~arg_0.c) ^ global0.yz));
    return ~max(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, var_1.x), vec3<u32>(0u, 67136u, 36707u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, global0.x, var_1.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(33494u, var_1.x, arg_0.c.x), vec3<u32>(arg_0.c.x, global0.x, var_1.x)) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, var_1.x, 35697u) << (vec3<u32>(var_1.x, arg_0.c.x, global0.x) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 20271u, 4294967295u), vec3<bool>(global2[_wgslsmith_index_u32(28191u, 18u)], global2[_wgslsmith_index_u32(var_1.x, 18u)], false))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = select(vec2<bool>(true, all(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_2.a, 18u)], global2[_wgslsmith_index_u32(arg_2.c.x, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)]), select(vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, false), global2[_wgslsmith_index_u32(arg_1.c.x, 18u)]), global1.x))), !select(vec2<bool>(true, true), select(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)]), !vec2<bool>(global1.x, global2[_wgslsmith_index_u32(0u, 18u)]), false), vec2<bool>(true, true)), any(!vec2<bool>(global2[_wgslsmith_index_u32(arg_1.c.x, 18u)], true)));
    let var_0 = select(select(!vec3<bool>(true, any(vec2<bool>(global1.x, true)), true), !vec3<bool>(all(vec3<bool>(global1.x, global2[_wgslsmith_index_u32(arg_1.a, 18u)], global1.x)), any(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.x, 18u)], true, true)), true), global2[_wgslsmith_index_u32(~arg_1.a, 18u)]), !vec3<bool>(1324f > _wgslsmith_f_op_f32(arg_2.b + 127f), any(!vec2<bool>(global1.x, global2[_wgslsmith_index_u32(1u, 18u)])), true), !select(vec3<bool>(select(false, global2[_wgslsmith_index_u32(63468u, 18u)], global1.x), global1.x, false), select(vec3<bool>(false, false, true), select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, false, global2[_wgslsmith_index_u32(29260u, 18u)]), false), false), all(vec2<bool>(true, global2[_wgslsmith_index_u32(global0.x, 18u)]))));
    let var_1 = Struct_1(1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-349f)), _wgslsmith_f_op_f32(step(595f, arg_2.b)))))), firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(global0.x, 0u)), 3172u)));
    let var_2 = firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, firstLeadingBit(var_1.c.x), global0.x, ~arg_1.a), _wgslsmith_clamp_vec4_u32(~vec4<u32>(25314u, arg_0.x, 56001u, global0.x), vec4<u32>(98470u, 1239u, 0u, 1u), countOneBits(vec4<u32>(var_1.c.x, var_1.a, arg_1.c.x, arg_2.a)))));
    var var_3 = select(_wgslsmith_add_i32(50705i, max(49071i, 1i | _wgslsmith_add_i32(u_input.a, u_input.a))), -2147483647i, u_input.a == _wgslsmith_div_i32(u_input.a, i32(-1i) * -u_input.a));
    return Struct_1(52991u, _wgslsmith_f_op_f32(var_1.b + arg_2.b), ~arg_2.c);
}

fn func_1() -> vec2<bool> {
    global2 = array<bool, 18>();
    var var_0 = func_4(func_2(Struct_1(_wgslsmith_clamp_u32(4294967295u, global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, 1u), vec4<u32>(global0.x, global0.x, 115583u, 4294967295u))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(924f, 645f)), select(vec2<u32>(75984u, global0.x), vec2<u32>(10752u, 20069u), global1.x) ^ (vec2<u32>(global0.x, 0u) | global0.yx))), Struct_1(global0.x, _wgslsmith_f_op_f32(171f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-319f)) - -429f)), global0.zy), Struct_1(global0.x & ~_wgslsmith_sub_u32(82909u, global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1218f)))))), global0.xx));
    global1 = select(!vec2<bool>(global1.x, all(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 18u)], false))), !select(vec2<bool>(true | global1.x, global1.x && true), select(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 18u)], false), vec2<bool>(true, true), vec2<bool>(true, true)), global1.x), global1.x && global1.x);
    var_0 = Struct_1(_wgslsmith_mod_u32(global0.x | global0.x, ~var_0.c.x), _wgslsmith_f_op_f32(sign(var_0.b)), min(_wgslsmith_mod_vec2_u32(func_4(vec3<u32>(global0.x, var_0.c.x, global0.x), Struct_1(8717u, var_0.b, vec2<u32>(0u, 0u)), Struct_1(global0.x, var_0.b, global0.yz)).c, var_0.c), global0.yz >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) ^ vec2<u32>(global0.x, global0.x));
    global1 = vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], false);
    return vec2<bool>(select(any(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)], false))), true, false), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(select(vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false)), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(global1.x, true)), vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], global1.x))), !func_1(), any(func_1()));
    var var_0 = vec3<u32>(95095u, abs(min(global0.x, 92682u)), ~(~(~countOneBits(global0.x))));
    var var_1 = select(u_input.a, ~(select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -649i, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i)), min(-2010i, 0i), false) ^ 0i), !global1.x || any(!select(vec3<bool>(false, global1.x, true), vec3<bool>(true, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)]), global2[_wgslsmith_index_u32(var_0.x, 18u)])));
    global1 = func_1();
    let var_2 = !vec3<bool>(all(!vec4<bool>(global2[_wgslsmith_index_u32(23985u, 18u)], false, true, false)), select(any(!vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 18u)])), all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(var_0.x, 18u)], false)) & true, all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)], false), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(51867u, 18u)])))), !global2[_wgslsmith_index_u32(max(var_0.x, 4633u), 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_i32(vec3<i32>(-30374i, -29736i, min(u_input.a, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(880i, u_input.a, u_input.a), -vec3<i32>(u_input.a, u_input.a, -1i), ~vec3<i32>(u_input.a, 2147483647i, -1i))));
}

