struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false, vec3<u32>(25391u, 0u, 1135u), true, 1000f, vec3<u32>(50842u, 8688u, 12578u)), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 6959u), false, -340f, vec3<u32>(0u, 1u, 110105u)));

var<private> global2: array<bool, 11>;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32) -> i32 {
    global1 = array<Struct_1, 2>();
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(global3.x | _wgslsmith_mult_u32(global0.x, global3.x)), ~1u | u_input.a.x), 2u)]);
    var var_1 = Struct_2(Struct_1(false, _wgslsmith_add_vec3_u32(vec3<u32>(~var_0.a.e.x, 1u, 89311u), ~vec3<u32>(var_0.a.e.x, 34064u, u_input.a.x)), global2[_wgslsmith_index_u32(max(17490u, u_input.a.x), 11u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1410f), var_0.a.d)), vec3<u32>(_wgslsmith_mod_u32(global3.x, var_0.a.e.x) >> (_wgslsmith_div_u32(global0.x, var_0.a.b.x) % 32u), global0.x, 78674u)));
    let var_2 = Struct_2(var_1.a);
    global1 = array<Struct_1, 2>();
    return abs(-8893i);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = -25827i;
    let var_1 = ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(global3.x, global3.x, arg_3.e.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, global0.x, 11857u) | vec4<u32>(arg_3.b.x, arg_3.e.x, 1u, 95913u)) >> (~firstLeadingBit(vec4<u32>(22198u, u_input.a.x, 1u, 1u)) % vec4<u32>(32u))));
    var var_2 = arg_1.a.e.x;
    var var_3 = arg_1;
    let var_4 = vec3<bool>(all(arg_2), false, true && !arg_0.a.a);
    return _wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(-vec4<i32>(26209i, -25304i, 1i, var_0)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(global3.x, u_input.a.x, arg_0.a.e.x, 4294967295u), var_1) % vec4<u32>(32u))), ~(~(-(vec4<i32>(-1i, 22850i, -22014i, 0i) << (vec4<u32>(arg_0.a.e.x, arg_0.a.e.x, var_3.a.e.x, arg_0.a.e.x) % vec4<u32>(32u))))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = firstLeadingBit(vec4<u32>(~(~1u), ~11049u, arg_0.b.x, ~(~arg_0.b.x))) >> (~(~(~(~vec4<u32>(1u, 31892u, global0.x, 5907u)))) % vec4<u32>(32u));
    var var_1 = ~vec3<i32>(1i, max(select(2147483647i, 17861i, true), func_2(-6884i)) ^ 1i, func_3(Struct_2(Struct_1(false, u_input.a, global2[_wgslsmith_index_u32(22365u, 11u)], arg_0.d, vec3<u32>(37497u, u_input.a.x, 0u))), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 13531u, arg_0.b.x, u_input.a.x), vec4<u32>(0u, global0.x, arg_0.e.x, 4294967295u)), 2u)]), vec2<bool>(false, true), Struct_1(true, vec3<u32>(arg_0.e.x, 103358u, 4294967295u), true, _wgslsmith_f_op_f32(arg_0.d + -1714f), vec3<u32>(global3.x, global0.x, 0u))));
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    global2 = array<bool, 11>();
    return Struct_2(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 2>();
    var var_0 = func_1(Struct_1(true, vec3<u32>(12575u, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), global0.x), !all(vec4<bool>(global2[_wgslsmith_index_u32(79490u, 11u)], global2[_wgslsmith_index_u32(global0.x, 11u)], false, false)), _wgslsmith_div_f32(-616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -885f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(global3.x, 28303u, global0.x), _wgslsmith_add_vec3_u32(u_input.a, u_input.a)))));
    var var_1 = _wgslsmith_mod_vec3_u32(var_0.a.e, vec3<u32>(819u, global3.x, ~(_wgslsmith_mult_u32(global3.x, global0.x) ^ var_0.a.b.x)));
    global1 = array<Struct_1, 2>();
    let var_2 = Struct_2(Struct_1(func_1(Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 21753u), global2[_wgslsmith_index_u32(var_1.x, 11u)], -1292f, u_input.a)).a.d < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f - var_0.a.d) - _wgslsmith_f_op_f32(var_0.a.d - var_0.a.d)), ~var_0.a.e, var_0.a.c, func_1(func_1(global1[_wgslsmith_index_u32(~1u, 2u)]).a).a.d, ~u_input.a));
    var var_3 = Struct_2(var_0.a);
    var var_4 = ~var_0.a.b.x;
    var var_5 = Struct_1(((any(vec4<bool>(var_3.a.c, global2[_wgslsmith_index_u32(4294967295u, 11u)], false, false)) == all(vec2<bool>(var_0.a.c, var_0.a.c))) == all(!vec3<bool>(true, var_0.a.a, true))) | true, u_input.a, var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1184f, var_0.a.d))), var_0.a.b);
    let var_6 = _wgslsmith_mod_vec4_i32(abs(select(-vec4<i32>(-1i, 28579i, -1i, -35149i), vec4<i32>(-2147483647i, ~(-794i), i32(-1i) * -1i, i32(-1i) * -46970i), !var_5.a == all(vec3<bool>(true, var_3.a.c, true)))), vec4<i32>(select(-27353i, -3723i, var_3.a.a), ~countOneBits(1i), ~(-(~0i)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, 407i), vec4<i32>(-10142i, -1i, 32639i, -4747i)) & 1i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.a.d), _wgslsmith_sub_u32(~global0.x >> (~0u % 32u), u_input.a.x) ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~var_2.a.b.x, 86098u), select(~global3.x, firstLeadingBit(global3.x), 1i >= var_6.x), u_input.a.x), vec2<i32>(countOneBits(-10303i), max(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_6.x, 2147483647i), ~2147483647i), -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.d, var_2.a.d))), vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.d), -515f))));
}

