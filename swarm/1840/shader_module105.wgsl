struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 3>;

var<private> global2: array<bool, 13> = array<bool, 13>(true, true, true, false, true, false, true, false, true, true, true, false, true);

var<private> global3: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global2 = array<bool, 13>();
    var var_0 = -2212f;
    var var_1 = Struct_1(vec3<bool>(true, true, all(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(7423u, 13u)]))), vec2<u32>(1u, ~abs(1u)));
    var var_2 = Struct_1(select(var_1.a, vec3<bool>(any(!vec4<bool>(true, true, var_1.a.x, var_1.a.x)), !any(vec4<bool>(false, var_1.a.x, false, false)), any(!var_1.a.zz)), var_1.a), var_1.b);
    let var_3 = !select(vec4<bool>(all(vec4<bool>(true, var_1.a.x, global2[_wgslsmith_index_u32(var_2.b.x, 13u)], false)), any(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], true, var_2.a.x, var_1.a.x)), true, true), vec4<bool>(u_input.b.x <= u_input.a, false, var_2.a.x, any(!vec3<bool>(var_2.a.x, global0.x, true))), select(vec4<bool>(false, !global0.x, true & global0.x, !global1[_wgslsmith_index_u32(24561u, 3u)]), !(!vec4<bool>(false, var_1.a.x, global2[_wgslsmith_index_u32(var_2.b.x, 13u)], global0.x)), vec4<bool>(any(var_2.a), var_2.a.x, false, any(var_2.a.zz))));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(5064u & var_2.b.x, 58269u), var_2.b) << (_wgslsmith_mult_vec2_u32(~var_2.b, vec2<u32>(var_2.b.x, 1u)) % vec2<u32>(32u));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f) - -872f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(768f, -544f)) * _wgslsmith_div_f32(-504f, -1666f)))));
    let var_1 = arg_0;
    global2 = array<bool, 13>();
    var var_2 = var_0.x;
    let var_3 = 27423i;
    return vec3<bool>(_wgslsmith_add_u32(arg_0.b.x, 0u) == _wgslsmith_add_u32(select(var_1.b.x, var_1.b.x, false) >> (~65937u % 32u), arg_0.b.x), all(select(var_1.a, var_1.a, select(var_1.a, !arg_0.a, !global2[_wgslsmith_index_u32(arg_0.b.x, 13u)]))), global2[_wgslsmith_index_u32(35688u, 13u)]);
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    global0 = !(!vec2<bool>(!global1[_wgslsmith_index_u32(~86128u, 3u)], global1[_wgslsmith_index_u32(~(~1u), 3u)]));
    let var_0 = vec2<u32>(1008u, max(~_wgslsmith_div_u32(reverseBits(4294967295u), 1u), 1u << (abs(_wgslsmith_mult_u32(0u, 93740u)) % 32u)));
    var var_1 = Struct_1(!func_3(Struct_1(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], true, true), func_2(1158f))), countOneBits((~vec2<u32>(15533u, var_0.x) & var_0) ^ vec2<u32>(var_0.x ^ 0u, _wgslsmith_div_u32(19059u, var_0.x))));
    var var_2 = Struct_1(select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), var_0), 13u)], func_3(Struct_1(vec3<bool>(true, false, global0.x), var_0)).x, !(arg_1 >= 4942i)), !(!func_3(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], true, global0.x), var_0))), func_3(Struct_1(vec3<bool>(var_1.a.x, true, false), select(var_1.b, vec2<u32>(7413u, 6764u), false)))), vec2<u32>(4294967295u, countOneBits(58001u)));
    return Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 3u)], !all(!vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 13u)], global0.x, global2[_wgslsmith_index_u32(51127u, 13u)], global0.x))), ~vec2<u32>(4294967295u, ~87609u) ^ var_1.b);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> StorageBuffer {
    global2 = array<bool, 13>();
    var var_0 = arg_0 <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + 257f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -1446f) + _wgslsmith_f_op_f32(f32(-1f) * -842f)), !arg_1.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0)));
    var var_1 = abs(max(-u_input.a & abs(u_input.a), 0i));
    var var_2 = global1[_wgslsmith_index_u32(arg_3.x, 3u)];
    var_0 = !global0.x;
    return StorageBuffer(-u_input.b.x, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 0u, 12195u)), ~vec3<u32>(0u, 1u, 4294967295u)), 1u)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1478f, -980f)) - -605f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-415f, -805f)), _wgslsmith_f_op_f32(ceil(-354f)))))), func_1(_wgslsmith_f_op_f32(145f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~(-u_input.b.x)), Struct_1(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], false, false), !vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 13u)], false, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 3u)])), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x << (var_0.x % 32u), 3u)], true, true), select(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 13u)], global0.x, global1[_wgslsmith_index_u32(10515u, 3u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 3u)], false), vec3<bool>(global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(var_0.x, 13u)], false)), vec3<bool>(true, false, global0.x), any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(3353u, 13u)], false)))), vec2<u32>(reverseBits(4885u) << (var_0.x % 32u), 24698u)), vec2<u32>(~_wgslsmith_clamp_u32(53845u, var_0.x, 2740u) >> (reverseBits(~var_0.x) % 32u), var_0.x));
}

