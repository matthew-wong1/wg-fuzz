struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(530f, 39469u, -2493f, vec3<f32>(-823f, 1000f, -220f));

var<private> global1: Struct_2 = Struct_2(vec4<u32>(57430u, 15954u, 17331u, 105573u), Struct_1(-1000f, 0u, 1688f, vec3<f32>(-1000f, -795f, -783f)), vec2<bool>(true, false), vec2<bool>(true, false), vec4<f32>(192f, 318f, -577f, -1461f));

var<private> global2: array<f32, 7>;

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-57775i, 1i), vec2<i32>(23085i, 0i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), -27774i), vec2<i32>(24114i, -8672i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = ~(~min(min(vec2<u32>(global1.b.b, u_input.b.x), abs(global1.a.yz)), ~abs(global1.a.xz)));
    global2 = array<f32, 7>();
    global2 = array<f32, 7>();
    global1 = Struct_2(countOneBits(vec4<u32>(41503u, 12454u, 1u, _wgslsmith_mult_u32(firstTrailingBit(78606u), 4294967295u))), Struct_1(_wgslsmith_f_op_f32(step(-427f, _wgslsmith_f_op_f32(ceil(-974f)))), 68682u, arg_1.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(arg_1))))), select(vec2<bool>(true && global1.d.x, any(global1.d)), vec2<bool>(_wgslsmith_div_u32(0u, 1u) > max(global1.a.x, 48058u), global1.d.x), vec2<bool>(true, select(false, false, global1.c.x) || !global1.d.x)), vec2<bool>(global1.c.x, global1.c.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(ceil(global0.d.x)), 751f, _wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1216f, 1222f, 401f, global0.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 1000f, 1012f, arg_2.x) - vec4<f32>(global1.b.c, global2[_wgslsmith_index_u32(1683u, 7u)], global1.b.c, -106f))))))));
    let var_1 = Struct_4(countOneBits(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2173f)))), Struct_2(~_wgslsmith_clamp_vec4_u32(~global1.a, global1.a ^ vec4<u32>(1u, global1.a.x, 48456u, 0u), ~vec4<u32>(0u, u_input.b.x, 5573u, 26543u)), Struct_1(-226f, select(select(61421u, 1u, false), select(global1.b.b, global0.b, global1.c.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)), vec3<f32>(arg_1.x, 1349f, _wgslsmith_f_op_f32(trunc(-559f)))), vec2<bool>(!global1.d.x, false), select(vec2<bool>(false, any(vec2<bool>(global1.d.x, global1.c.x))), vec2<bool>(all(vec4<bool>(false, global1.c.x, false, global1.c.x)), global1.d.x), global1.c), global1.e), global1.a.wyx);
    return vec3<u32>(_wgslsmith_sub_u32(4294967295u, 10094u), abs(~(~1u)) << ((20353u | u_input.b.x) % 32u), ~78143u << (~(~u_input.b.x) % 32u));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x));
    var var_1 = ~_wgslsmith_mod_vec3_u32(global1.a.xwx, func_3(-u_input.a, vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 7u)] * 976f), _wgslsmith_f_op_f32(-var_0), 1389f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.e.yz, global0.d.zz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], -2578f) + vec2<f32>(-403f, var_0)))));
    let var_2 = global1.b;
    let var_3 = global1.e;
    let var_4 = Struct_4(0i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.b.c, _wgslsmith_f_op_f32(step(-119f, 1175f)))), _wgslsmith_f_op_f32(f32(-1f) * -2107f))), Struct_2(vec4<u32>(25340u, abs(var_2.b), arg_1, global0.b), global1.b, global1.d, vec2<bool>(select(!global1.c.x, u_input.a > u_input.a, true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e * vec4<f32>(global0.c, var_3.x, global1.b.d.x, 459f))))), vec3<u32>(min(~_wgslsmith_div_u32(global0.b, 4294967295u), ~(~1u)), reverseBits(~global0.b), ~global0.b << (u_input.b.x % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.x, 7u)] - -1050f), _wgslsmith_f_op_f32(select(var_0, global2[_wgslsmith_index_u32(arg_1, 7u)], false)))))))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -879f);
    let var_1 = -(-1i >> (_wgslsmith_sub_u32(~arg_2.d.x, 4294967295u) % 32u));
    let var_2 = Struct_1(_wgslsmith_div_f32(802f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.c, global0.c, false)), 755f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(u_input.a, var_1), 37420u)) * _wgslsmith_f_op_f32(f32(-1f) * -263f)))), ~_wgslsmith_div_u32(47005u, 17255u), global0.d.x, vec3<f32>(global0.c, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1263f, arg_2.c.e.x), -562f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 7044u), 7u)])))));
    global2 = array<f32, 7>();
    let var_3 = Struct_4(~(i32(-1i) * -1i), global2[_wgslsmith_index_u32(~(4294967295u << (func_3(~(-1i), vec3<f32>(-639f, arg_1.x, -1179f), arg_1.yz).x % 32u)), 7u)], Struct_2(vec4<u32>(1u, 43354u, arg_2.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global1.a.x), global1.a.yz)), Struct_1(global0.c, func_3(-3827i, vec3<f32>(global1.b.d.x, -806f, -490f), _wgslsmith_f_op_vec2_f32(select(global1.e.zy, arg_2.c.e.wy, false))).x, arg_1.x, vec3<f32>(global2[_wgslsmith_index_u32(87366u, 7u)], 164f, _wgslsmith_f_op_f32(arg_2.b * 1750f))), vec2<bool>(true, true), global1.c, global1.e), vec3<u32>(0u, var_2.b, arg_2.d.x));
    return var_3.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(~(~_wgslsmith_mult_vec4_u32(func_1(4294967295u, vec3<f32>(global2[_wgslsmith_index_u32(45600u, 7u)], global1.e.x, -104f), Struct_4(u_input.a, global0.a, Struct_2(vec4<u32>(global0.b, 1u, 1u, global0.b), Struct_1(-225f, u_input.b.x, global1.b.c, global1.e.zxy), global1.d, global1.c, vec4<f32>(global2[_wgslsmith_index_u32(89683u, 7u)], global1.e.x, -234f, global2[_wgslsmith_index_u32(43110u, 7u)])), vec3<u32>(40937u, global1.a.x, u_input.b.x))), min(global1.a, global1.a))), global1.b, !vec2<bool>(!global1.d.x, global1.d.x), vec2<bool>(global1.d.x, global1.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global1.e)) + vec4<f32>(global0.a, global1.e.x, -728f, global1.b.c)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1025f, 296f, -1626f, global0.d.x) + global1.e), _wgslsmith_f_op_vec4_f32(-global1.e)))));
    let var_0 = _wgslsmith_f_op_f32(abs(783f));
    var var_1 = any(vec3<bool>(!global1.c.x, global1.d.x, any(!vec4<bool>(global1.d.x, false, false, false)) | !any(vec2<bool>(true, false))));
    global0 = global1.b;
    let var_2 = abs(global1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(13457i, u_input.a), vec3<i32>(min(1i, -2147483647i), _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 0u | global0.b), 5u)], global3[_wgslsmith_index_u32(abs(1u), 5u)]), -1i));
}

