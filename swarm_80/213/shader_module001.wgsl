struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14>;

var<private> global1: array<f32, 31>;

var<private> global2: vec3<f32> = vec3<f32>(-445f, -1406f, 679f);

var<private> global3: array<Struct_3, 26>;

var<private> global4: Struct_2 = Struct_2(-26102i, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = -170f;
    let var_1 = max(max(~vec3<u32>(u_input.b.x >> (u_input.b.x % 32u), u_input.a, 1u), ~max(~vec3<u32>(38208u, u_input.a, 1u), vec3<u32>(2956u, 41278u, 1u) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)))), ~(~(~(vec3<u32>(u_input.a, 8654u, u_input.a) | vec3<u32>(u_input.b.x, 38778u, u_input.a)))));
    var var_2 = Struct_2(i32(-1i) * -(~(~1685i)), global4.b, all(vec4<bool>(_wgslsmith_div_f32(-1000f, global2.x) <= _wgslsmith_f_op_f32(968f - 1428f), !all(global0[_wgslsmith_index_u32(u_input.a, 14u)]), !(-20399i == global4.a), !(!global4.b))));
    global2 = vec3<f32>(1000f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(firstTrailingBit(1u), u_input.a) | firstLeadingBit(firstTrailingBit(u_input.a)), min(_wgslsmith_sub_u32(~u_input.b.x, u_input.b.x), var_1.x)), 31u)], _wgslsmith_f_op_f32(f32(-1f) * -813f));
    let var_3 = vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global4.a), countOneBits(vec2<i32>(global4.a, global4.a))), global4.a), ~2147483647i);
    return 80979u;
}

fn func_2() -> Struct_2 {
    global3 = array<Struct_3, 26>();
    var var_0 = 1u;
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(~u_input.a, ~func_3() << (_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, 0u), ~51326u) % 32u)), ~(~_wgslsmith_add_u32(~u_input.a, _wgslsmith_clamp_u32(4294967295u, u_input.a, 0u))), u_input.a, ~1u);
    return Struct_2(-(global4.a & global4.a), global2.x < -359f, true);
}

fn func_1() -> u32 {
    global1 = array<f32, 31>();
    var var_0 = func_2();
    var var_1 = func_2();
    var_0 = Struct_2(~23731i, true, all(select(!select(vec3<bool>(var_1.c, var_1.b, var_1.b), vec3<bool>(var_1.b, true, true), true), select(vec3<bool>(var_1.b, global4.c, false), vec3<bool>(true, global4.c, true), any(vec2<bool>(var_1.c, global4.c))), vec3<bool>(true, true, true))));
    var var_2 = -(vec4<i32>(-1i) * -(~(vec4<i32>(-1i, global4.a, var_0.a, var_1.a) << (vec4<u32>(61630u, 0u, u_input.b.x, 1u) % vec4<u32>(32u)))));
    return ~u_input.b.x;
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, 4294967295u), 31u)])))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~countOneBits(9887u), 31u)]), _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1247f, _wgslsmith_div_f32(-1125f, global2.x), -365f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 16881u), 31u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, global2.x, global1[_wgslsmith_index_u32(arg_0.x, 31u)], 1160f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(741f, -1107f, global2.x, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, global2.x, 1467f, global2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.x, global1[_wgslsmith_index_u32(10324u, 31u)], -268f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global1[_wgslsmith_index_u32(arg_0.x, 31u)], 678f, 1108f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 31u)], -134f, global2.x, global2.x))))))));
    global1 = array<f32, 31>();
    var var_1 = !any(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 39983u), 14u)]);
    var var_2 = global3[_wgslsmith_index_u32(75976u, 26u)];
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.wy, ~vec2<u32>(1u | arg_0.x, 0u)), 26u)];
    return Struct_1(arg_0.xzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(reverseBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 47280u)), vec4<u32>(0u, 5014u, u_input.a, 1u))) << (vec4<u32>(reverseBits(func_1()), ~(~u_input.a), u_input.b.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(46326u, 56423u, 13317u), true), vec3<u32>(0u, u_input.b.x, u_input.a))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(max(-1000f, -1362f)))))), -1000f)));
    global3 = array<Struct_3, 26>();
    var_1 = global2.x;
    var_0 = Struct_1(var_0.a);
    let var_2 = Struct_1(vec3<u32>(4294967295u, ~(~var_0.a.x), ~countOneBits(~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(func_2().a, -3831i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 31u)], -1321f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-3638f)))), 1491f, var_2.a.x);
}

