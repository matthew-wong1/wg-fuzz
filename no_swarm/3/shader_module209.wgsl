struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(4294967295u, 74902u), vec2<u32>(4294967295u, 14021u), vec2<u32>(57966u, 43394u), vec2<u32>(0u, 0u), vec2<u32>(15917u, 1695u), vec2<u32>(4294967295u, 49510u), vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(42712u, 36408u), vec2<u32>(0u, 10731u), vec2<u32>(0u, 62453u), vec2<u32>(21428u, 0u), vec2<u32>(27469u, 24105u), vec2<u32>(35668u, 1u), vec2<u32>(4294967295u, 114872u), vec2<u32>(1u, 45579u), vec2<u32>(0u, 46005u), vec2<u32>(747u, 4294967295u), vec2<u32>(122536u, 4294967295u));

var<private> global2: array<i32, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_1(global0.a, true, select(_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(global0.d.x, 7482u)), 19u)], vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, 23025u), global0.d.x)), u_input.c.yz, global0.b), vec3<u32>(max(1u, 50440u), global0.d.x & ~firstTrailingBit(global0.c.x), 46579u), vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(1u), global0.c.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0.c.x, 8064u, 13467u, global0.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 6903u, 57354u, 49665u), vec4<u32>(4294967295u, global0.c.x, global0.d.x, 4294967295u), vec4<u32>(65614u, u_input.c.x, u_input.c.x, global0.e.x)) | (vec4<u32>(u_input.b, u_input.c.x, 11746u, 0u) >> (vec4<u32>(global0.c.x, u_input.b, u_input.b, global0.e.x) % vec4<u32>(32u))))));
    let var_1 = var_0;
    global0 = Struct_1(var_0.a, var_0.b, vec2<u32>((_wgslsmith_sub_u32(var_1.d.x, 0u) ^ var_1.c.x) >> (0u % 32u), var_0.e.x), vec3<u32>(u_input.c.x, var_1.e.x, ~_wgslsmith_clamp_u32(26217u, 36549u, 1u)) & ~firstLeadingBit(var_0.d), global1[_wgslsmith_index_u32(countOneBits(global0.c.x ^ ~40602u), 19u)]);
    let var_2 = ~vec3<u32>(_wgslsmith_div_u32(u_input.c.x ^ ~var_1.d.x, u_input.b), _wgslsmith_dot_vec3_u32(var_0.d, ~global0.d), ~(~15849u));
    let var_3 = firstTrailingBit(max(vec2<i32>(i32(-1i) * -u_input.a.x, (u_input.d.x >> (global0.d.x % 32u)) >> (_wgslsmith_sub_u32(0u, global0.e.x) % 32u)), -firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(global2[_wgslsmith_index_u32(var_0.d.x, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)])))));
    return ~(_wgslsmith_clamp_vec2_u32(u_input.c.zx, countOneBits(global1[_wgslsmith_index_u32(var_1.c.x, 19u)]) << (~vec2<u32>(var_1.d.x, var_1.e.x) % vec2<u32>(32u)), reverseBits(global1[_wgslsmith_index_u32(u_input.b, 19u)]) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c.zx) % vec2<u32>(32u))) & u_input.c.yz);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(global0.a, true, vec2<u32>(reverseBits(~(~global0.e.x)), 57485u), min(vec3<u32>(global0.d.x, ~u_input.c.x, global0.d.x | u_input.b) << (vec3<u32>(~global0.c.x, ~global0.c.x, u_input.b | u_input.c.x) % vec3<u32>(32u)), ~global0.d), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, u_input.b), global0.e.x, 1u, u_input.c.x), vec4<u32>(1u, u_input.b, 24991u, ~4294967295u)), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0.c.x, 0u, 4294967295u, 63893u)), vec4<u32>(1265u, 4294967295u, global0.c.x, 1u) | vec4<u32>(0u, global0.d.x, 29284u, 71005u)))));
    global2 = array<i32, 8>();
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_div_vec4_f32(vec4<f32>(649f, 405f, var_0.a.x, var_0.a.x), global0.a)), var_0.a), true, abs(firstTrailingBit(vec2<u32>(var_0.d.x, global0.c.x))), vec3<u32>(global0.e.x ^ ~u_input.b, var_0.e.x, _wgslsmith_sub_u32(~var_0.e.x, ~14752u)), countOneBits(var_0.d.zy));
    var var_1 = select(!vec2<bool>(var_0.b, true), select(vec2<bool>(~u_input.b < _wgslsmith_add_u32(u_input.c.x, 1u), true), select(!vec2<bool>(global0.b, true), select(vec2<bool>(true, false), !vec2<bool>(true, global0.b), true == global0.b), select(true, global0.b, !var_0.b)), all(vec2<bool>(false, !global0.b))), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(var_0.b, global0.b)))));
    var var_2 = !vec4<bool>(false, select(true, var_0.b, false), !var_0.b, all(vec4<bool>(true, false, true, false & var_0.b)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-491f, var_0.a.x, -1397f, global0.a.x))), var_0.a)), false, global0.c ^ (func_3(var_0.a.x) << (vec2<u32>(~4294967295u, var_0.e.x << (0u % 32u)) % vec2<u32>(32u))), select(u_input.c, ~min(u_input.c, ~global0.d), var_2.yxy), countOneBits(var_0.c) >> (global1[_wgslsmith_index_u32(~(~(~1u)), 19u)] % vec2<u32>(32u)));
}

fn func_1() -> bool {
    global1 = array<vec2<u32>, 19>();
    global0 = func_2(u_input.a);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(global0.a)), global0.a)))))), true, global1[_wgslsmith_index_u32(~16202u, 19u)] | vec2<u32>(_wgslsmith_div_u32(~global0.c.x, 4294967295u), ~(4294967295u & u_input.c.x)), select(u_input.c, ~u_input.c, !(_wgslsmith_f_op_f32(floor(-872f)) != -1410f)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(13192u, u_input.c.x), 19u)]);
    global2 = array<i32, 8>();
    var var_1 = !(!vec4<bool>(all(select(vec4<bool>(global0.b, var_0.b, false, global0.b), vec4<bool>(var_0.b, false, var_0.b, global0.b), vec4<bool>(false, false, false, false))), select(false, all(vec3<bool>(false, var_0.b, var_0.b)), false), _wgslsmith_f_op_f32(f32(-1f) * -441f) < _wgslsmith_f_op_f32(step(2257f, 1320f)), global0.a.x <= global0.a.x));
    return select(global0.b, var_1.x, false & (true & any(vec3<bool>(global0.b, var_1.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1000f, _wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(497f))))), !select(!any(vec4<bool>(global0.b, false, true, global0.b)), !func_1(), global0.b), ~vec2<u32>(u_input.c.x, 38217u), _wgslsmith_add_vec3_u32(global0.d, max(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(global0.d.x, 4294967295u, 1u)), global0.d >> (u_input.c % vec3<u32>(32u))), vec3<u32>(u_input.c.x, global0.e.x, 0u) ^ global0.d)), vec2<u32>(~global0.c.x, _wgslsmith_add_u32(global0.e.x, u_input.c.x)));
    var var_1 = func_2(u_input.a);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.a))), global0.a)))), var_1.b, ~vec2<u32>(var_0.d.x, 4294967295u), ~max(~vec3<u32>(4294967295u, var_1.d.x, 4294967295u) ^ func_2(u_input.a).d, var_0.d), select(vec2<u32>(44136u, _wgslsmith_div_u32(global0.e.x, var_1.c.x)), global0.e, !select(!vec2<bool>(var_0.b, global0.b), select(vec2<bool>(true, global0.b), vec2<bool>(true, false), vec2<bool>(var_1.b, global0.b)), select(vec2<bool>(true, true), vec2<bool>(var_0.b, true), false))));
    global1 = array<vec2<u32>, 19>();
    var var_3 = 0u == min(u_input.b, var_2.e.x & func_3(_wgslsmith_f_op_f32(f32(-1f) * -514f)).x);
    global2 = array<i32, 8>();
    var var_4 = func_2(-vec3<i32>(_wgslsmith_clamp_i32(0i & u_input.d.x, min(18365i, global2[_wgslsmith_index_u32(var_2.c.x, 8u)]), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 8u)], 25860i)), 7466i >> (var_0.e.x % 32u), global2[_wgslsmith_index_u32(76937u, 8u)])).c.x;
    global1 = array<vec2<u32>, 19>();
    var_0 = func_2(-select(firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(var_1.e.x, 8u)], global2[_wgslsmith_index_u32(var_0.c.x, 8u)], global2[_wgslsmith_index_u32(0u, 8u)])), u_input.a, _wgslsmith_f_op_f32(-803f * 725f) <= _wgslsmith_f_op_f32(-global0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(4294967295u, _wgslsmith_add_u32(var_1.c.x, 0u), ~2072u, var_0.c.x) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, global0.d.x, var_2.e.x), vec4<u32>(u_input.b, 4294967295u, 50060u, 35416u)) % vec4<u32>(32u))), vec2<f32>(-1307f, _wgslsmith_f_op_f32(1f * var_2.a.x)));
}

