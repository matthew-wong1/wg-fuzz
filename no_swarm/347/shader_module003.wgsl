struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-229f, -744f, -764f);

var<private> global1: array<f32, 27>;

var<private> global2: array<u32, 30> = array<u32, 30>(0u, 1u, 0u, 0u, 22987u, 56583u, 4294967295u, 1u, 8106u, 4294967295u, 72878u, 6304u, 23090u, 20026u, 14849u, 10738u, 40912u, 21470u, 72987u, 4294967295u, 0u, 0u, 4294967295u, 26587u, 4294967295u, 45017u, 10529u, 31555u, 25758u, 0u);

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(false, true, vec4<u32>(478u, 4294967295u, 45362u, 73351u), vec3<i32>(2147483647i, 35805i, 2147483647i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = !(!arg_0.a);
    var var_1 = vec3<bool>((10357i >> (countOneBits(50106u) % 32u)) > select(-2147483647i, -543i, false), !arg_0.a, any(vec4<bool>(global4.b, any(vec2<bool>(true, false)), select(true, true, false), all(vec2<bool>(true, false)))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.c.x << (~_wgslsmith_sub_u32(~arg_0.c.x, 1u) % 32u), select(select(firstTrailingBit(0u >> (global4.c.x % 32u)), ~(~0u), global4.a), reverseBits(~4294967295u), global4.a)), 30u)];
    global3 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-63582i, 29546i), 1i);
    return abs(_wgslsmith_sub_u32(reverseBits(reverseBits(~global4.c.x)), ~44062u));
}

fn func_2() -> vec4<u32> {
    global0 = vec3<f32>(global1[_wgslsmith_index_u32(func_3(Struct_1(!global4.a, all(!vec3<bool>(global4.b, global4.a, global4.a)), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), _wgslsmith_add_u32(global4.c.x, global4.c.x), 36041u, global2[_wgslsmith_index_u32(select(u_input.a.x, 4294967295u, global4.a), 30u)]), abs(-vec3<i32>(global4.d.x, 0i, global4.d.x)))), 27u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(10789u), 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1611f + _wgslsmith_f_op_f32(abs(global0.x)))))));
    global4 = Struct_1(true, global4.a, ~select(global4.c, vec4<u32>(~1u, min(global4.c.x, 4674u), global4.c.x & global2[_wgslsmith_index_u32(49990u, 30u)], _wgslsmith_clamp_u32(u_input.a.x, 59875u, u_input.a.x)), all(!vec2<bool>(global4.b, true))), _wgslsmith_mod_vec3_i32(global4.d, ~(vec3<i32>(-1i, 2147483647i, u_input.b) ^ global4.d)) | ~select(vec3<i32>(0i, u_input.b, 13231i), vec3<i32>(global4.d.x, u_input.b, -1i), select(vec3<bool>(global4.b, true, false), vec3<bool>(false, true, global4.a), vec3<bool>(false, global4.b, global4.a))));
    var var_0 = ~(min(1u, firstLeadingBit(global4.c.x) ^ u_input.a.x) & global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], u_input.a.x, 0u, 80882u), global4.c)), 30u)]);
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(0u, global4.c.x), firstLeadingBit(global4.c.x), 1u == u_input.a.x), 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -1i < min(u_input.b, u_input.b))))));
    return select(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(84840u, global2[_wgslsmith_index_u32(1u, 30u)], u_input.a.x, 1u), global4.c)), _wgslsmith_mod_vec4_u32(global4.c, abs(abs(vec4<u32>(51562u, 35903u, 55368u, 63958u)))), vec4<bool>(true, !all(vec3<bool>(false, false, global4.a)), !global4.a, global4.a)) ^ global4.c;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = arg_2.d & -_wgslsmith_mod_vec3_i32(global4.d, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -1i, u_input.b), vec4<i32>(arg_2.d.x, -14372i, -20942i, -1i)), arg_2.d.x, _wgslsmith_sub_i32(2147483647i, 1i)));
    let var_1 = global1[_wgslsmith_index_u32(abs(~(~reverseBits(arg_2.c.x))), 27u)];
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(19175u, arg_0, u_input.a.x), ~44482u ^ global4.c.x, _wgslsmith_sub_u32(15832u, global2[_wgslsmith_index_u32(0u, 30u)]) << (44312u % 32u), arg_2.c.x) >> (~func_2() % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~arg_2.c, ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(arg_2.c, vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.c.x, 30u)], 30u)], 58680u, 1u)), global4.c | vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 15319u)), max(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(global4.c, vec4<u32>(1u, 0u, global2[_wgslsmith_index_u32(arg_0, 30u)], arg_2.c.x)), 9612u, global2[_wgslsmith_index_u32(~arg_2.c.x, 30u)]), vec4<u32>(_wgslsmith_mod_u32(arg_2.c.x, arg_2.c.x), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 30u)], u_input.a.x), 0u >> (u_input.a.x % 32u), 5550u))), vec4<u32>(max(u_input.a.x, ~59546u), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(10173u, 30u)], arg_2.c.x), u_input.a)), _wgslsmith_dot_vec3_u32(select(u_input.a >> (u_input.a % vec3<u32>(32u)), vec3<u32>(global2[_wgslsmith_index_u32(arg_0, 30u)], 39861u, global4.c.x), arg_2.a), ~max(u_input.a, global4.c.xwz)), 21041u));
    global4 = arg_2;
    let var_3 = abs(arg_2.c.x);
    return _wgslsmith_f_op_f32(-1230f + global0.x) == _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)) - global0.x));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: u32) -> vec4<u32> {
    global2 = array<u32, 30>();
    let var_0 = max(global4.c, vec4<u32>(arg_2, ~firstLeadingBit(1u), ~21287u, ~_wgslsmith_div_u32(20016u, 4294967295u)) >> (vec4<u32>(global4.c.x, 88529u & _wgslsmith_sub_u32(1u, arg_2), ~global4.c.x, ~0u) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_clamp_u32(func_3(Struct_1(!global4.b, any(vec3<bool>(false, true, false)), global4.c, vec3<i32>(u_input.b, global4.d.x, u_input.b))) >> (~firstLeadingBit(2757u) % 32u), 1u, ~arg_2);
    var var_2 = ~select(u_input.b, u_input.b, all(vec3<bool>(false, global4.b, true))) | _wgslsmith_clamp_i32(global4.d.x >> (~(global4.c.x | 1u) % 32u), global4.d.x >> (~13726u % 32u), u_input.b);
    let var_3 = ~(vec4<u32>(59792u, firstTrailingBit(_wgslsmith_add_u32(arg_2, 0u)), 63372u, arg_2) << (~vec4<u32>(4294967295u, ~global4.c.x, ~1422u, ~global2[_wgslsmith_index_u32(0u, 30u)]) % vec4<u32>(32u)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.d.yx;
    var var_1 = vec4<u32>(4294967295u, u_input.a.x, 45328u, global4.c.x) | func_4(func_1(global4.c.x, _wgslsmith_add_i32(2147483647i, -2147483647i), Struct_1(true, all(vec2<bool>(global4.b, global4.b)), ~global4.c, vec3<i32>(0i, 2147483647i, -18953i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1284f, 864f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(25572u, 27u)], -304f))), 27509u);
    let var_2 = Struct_1(!(_wgslsmith_mult_u32(~var_1.x, var_1.x) >= func_2().x), global4.a, ~min(global4.c, ~min(vec4<u32>(global4.c.x, global4.c.x, 4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec4<u32>(global4.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 0u, global2[_wgslsmith_index_u32(8451u, 30u)]))), global4.d);
    let var_3 = var_2.d & firstTrailingBit(~(-var_2.d));
    let var_4 = u_input.a.x;
    var var_5 = 0i;
    var var_6 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global0.zx * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(-1917f)), 209f)))), global4.c.xy, u_input.a, -342f);
}

