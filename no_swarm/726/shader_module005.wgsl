struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: Struct_2;

var<private> global2: vec2<f32> = vec2<f32>(603f, -233f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, _wgslsmith_f_op_f32(trunc(332f))) + vec2<f32>(_wgslsmith_f_op_f32(global2.x + arg_0.c.a), _wgslsmith_f_op_f32(round(arg_0.a.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1628f, global2.x))), vec2<f32>(global2.x, 955f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, -1878f))))) * vec2<f32>(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(638f, global1.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_0 = (2147483647i << (u_input.a % 32u)) > -abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zzz, u_input.b.xwx), vec3<i32>(-41947i, arg_0.b, global0[_wgslsmith_index_u32(u_input.d, 11u)])));
    global1 = Struct_2(arg_0.a, 58254i, arg_0.a);
    let var_1 = u_input.b;
    let var_2 = Struct_2(arg_0.a, firstTrailingBit(-(~global0[_wgslsmith_index_u32(~u_input.c, 11u)])), global1.a);
    return global2.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    var var_0 = u_input.d;
    var_0 = _wgslsmith_div_u32(~_wgslsmith_sub_u32(14660u, ~select(24214u, u_input.d, true)), _wgslsmith_add_u32(7506u, 60451u));
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    return _wgslsmith_f_op_f32(-359f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global2.x, global2.x, global1.c.b)))), _wgslsmith_f_op_f32(func_3(Struct_2(global1.a, -1i, global1.a)))))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    global0 = array<i32, 11>();
    var var_0 = ~_wgslsmith_mult_vec2_u32(abs(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 10975u), vec2<u32>(u_input.d, 0u), vec2<u32>(0u, 37432u)), ~vec2<u32>(4294967295u, arg_2))), _wgslsmith_mult_vec2_u32(vec2<u32>(33222u, arg_2) | _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, u_input.c), vec2<u32>(4294967295u, arg_2)), vec2<u32>(~arg_2, arg_2 & 4294967295u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-939f + _wgslsmith_f_op_f32(global1.a.a + -1907f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c.a * 688f))))), _wgslsmith_f_op_f32(func_4(Struct_2(global1.c, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 4294967295u), 11u)], firstTrailingBit(global1.b)), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-391f, true), global0[_wgslsmith_index_u32(u_input.a, 11u)], Struct_1(global2.x, global1.a.b)))), true)), u_input.b)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-547f - -1469f))), all(select(select(vec3<bool>(true, global1.c.b, true), vec3<bool>(false, global1.c.b, global1.a.b), true), !vec3<bool>(true, global1.c.b, true), select(global1.a.b, global1.a.b, true)))), min(global0[_wgslsmith_index_u32(u_input.a, 11u)], 2147483647i), global1.a);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) + -255f)) * 1567f));
    return var_0.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<u32> {
    global0 = array<i32, 11>();
    let var_0 = countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(min(3570u, 57205u), ~12676u, ~1789u, u_input.c), reverseBits(max(vec4<u32>(u_input.a, 21771u, 4294967295u, 4294967295u), vec4<u32>(u_input.d, u_input.a, 4294967295u, u_input.d)))));
    let var_1 = false;
    var var_2 = ~(~(-30671i));
    var var_3 = global1.a.b;
    return vec3<u32>(~func_2(-_wgslsmith_dot_vec3_i32(arg_0.wzx, vec3<i32>(0i, arg_1.x, 1i)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a, global2.x) + vec2<f32>(-599f, global1.a.a)), vec2<f32>(global1.c.a, -145f))), ~abs(u_input.a)), ~firstTrailingBit(_wgslsmith_mult_u32(0u, abs(12007u))), 79521u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(global2.x, global1.c.a);
    let var_0 = !select(select(!(!vec3<bool>(true, global1.c.b, true)), vec3<bool>(global1.a.b, global1.c.b, true), true), vec3<bool>(global1.c.b, select(!global1.a.b, global1.a.b, global1.c.b), ~u_input.a >= 22671u), global1.a.b);
    var var_1 = reverseBits(~reverseBits(~vec3<u32>(0u, 56187u, u_input.d)) << (~func_1(-u_input.b, u_input.b.yw, Struct_2(Struct_1(881f, var_0.x), u_input.b.x, global1.c)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global2.x))));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)), global1.a.b), global1.b, global1.a), 670f, global1.c, u_input.b.zzz, ~(~min(func_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(1u, 11u)]), u_input.b.yw, Struct_2(Struct_1(global1.c.a, var_0.x), -11692i, Struct_1(285f, false))), vec3<u32>(42413u, 1u, var_1.x) | vec3<u32>(0u, var_1.x, 48156u))));
    var_3 = Struct_3(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1392f * 2211f))))), Struct_1(_wgslsmith_f_op_f32(-1402f + _wgslsmith_div_f32(-1101f, global1.c.a)), false), reverseBits(var_3.d) | var_3.d, vec3<u32>(126807u, max(var_1.x, var_3.e.x), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(var_3.e.yx, vec2<u32>(1u, u_input.c)))));
    let var_4 = vec4<i32>(var_3.d.x, 18318i, var_3.a.b, global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 11u)]);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(var_3.c.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - global1.c.a), -415f)), -(~var_3.a.b >> (_wgslsmith_div_u32(0u, 3500u) % 32u)) > ~(~(-2147483647i)));
    let var_6 = firstLeadingBit(var_3.e) | vec3<u32>(var_1.x, 1u << (0u % 32u), ~_wgslsmith_mod_u32(var_3.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(27385u, u_input.c, u_input.d), vec3<u32>(var_3.e.x, var_3.e.x, var_3.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(var_6.zz, select(vec2<u32>(var_6.x, 1u), vec2<u32>(var_1.x, 18396u), true), !select(var_0.xx, var_0.xx, var_0.yz))), 1u, vec4<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_3.d.x, 14695i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_4.x, global1.b), var_3.d.yx)), var_3.d.xz & (vec2<i32>(global1.b, 41231i) ^ u_input.b.zw)), -38710i, _wgslsmith_mod_i32(countOneBits(u_input.b.x), _wgslsmith_dot_vec4_i32(var_4, vec4<i32>(-55110i, 5587i, 2667i, 2147483647i))) ^ (~var_4.x << (var_3.e.x % 32u)), -57680i), select(~select(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 20587u), vec2<bool>(var_0.x, true)), var_1.xx, global1.c.b));
}

