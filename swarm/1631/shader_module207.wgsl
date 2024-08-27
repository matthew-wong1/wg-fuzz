struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 32>;

var<private> global2: bool = false;

var<private> global3: array<u32, 17> = array<u32, 17>(20167u, 4294967295u, 1u, 85753u, 1u, 1u, 8549u, 4294967295u, 1u, 1u, 50556u, 37405u, 4294967295u, 5861u, 4294967295u, 61677u, 1u);

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<i32>(44320i, 1i, 2147483647i, 14697i), vec4<f32>(356f, 197f, 314f, 796f), vec2<bool>(false, true), -656f, 0u), Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648)), vec4<f32>(991f, -596f, -1000f, 502f), vec2<bool>(false, true), 315f, 4294967295u), Struct_1(vec4<i32>(0i, 1i, 0i, 11008i), vec4<f32>(-1156f, 143f, -482f, -1299f), vec2<bool>(true, true), -294f, 23798u), Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -16484i), vec4<f32>(-692f, -492f, 1000f, 879f), vec2<bool>(false, true), -2045f, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> i32 {
    global2 = !arg_1.c.x;
    return arg_1.a.x;
}

fn func_3() -> vec2<bool> {
    let var_0 = -u_input.b.x;
    let var_1 = !(!(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 32u)] || false, all(vec2<bool>(false, false)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(198f, -1000f) - vec2<f32>(1f, 1f)))));
    global0 = var_1;
    global1 = array<bool, 32>();
    return select(select(!vec2<bool>(var_1.x, true), vec2<bool>(true, true), var_1.x), select(select(!var_1, select(!vec2<bool>(false, global0.x), !var_1, global0.x), true), select(!(!var_1), !select(var_1, var_1, global1[_wgslsmith_index_u32(4294967295u, 32u)]), !vec2<bool>(var_1.x, false)), select(select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], false), var_1, true), !select(vec2<bool>(true, global0.x), vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], global0.x), vec2<bool>(global0.x, global0.x)), var_1.x)), !(!(!all(var_1))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    global0 = select(select(!select(select(arg_3.c, vec2<bool>(arg_1.c.x, arg_0.x), false), arg_1.c, func_3()), vec2<bool>(false, false), arg_1.c), vec2<bool>(global3[_wgslsmith_index_u32(abs(74184u), 17u)] >= reverseBits(select(arg_1.e, u_input.a, false)), global0.x), false);
    var var_0 = arg_1.c.x;
    let var_1 = _wgslsmith_div_u32(global3[_wgslsmith_index_u32(2877u, 17u)], (_wgslsmith_add_u32(100324u, _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(4294967295u, 34075u))) << (reverseBits(4294967295u) % 32u)) >> (arg_1.e % 32u));
    var var_2 = arg_3.b.xz;
    var var_3 = _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~70996u, arg_1.e ^ global3[_wgslsmith_index_u32(1u, 17u)], 0u) >> (~abs(u_input.c.wwz) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~abs(u_input.c.wzz), select(u_input.c.wyz, u_input.c.yyy, vec3<bool>(false, arg_0.x, arg_3.c.x)) << (vec3<u32>(arg_1.e, arg_1.e, 1u) % vec3<u32>(32u)))));
    return 4294967295u;
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1387f))));
    let var_1 = ~(~vec4<u32>(u_input.a, _wgslsmith_clamp_u32(arg_0.e, 58342u, global3[_wgslsmith_index_u32(4294967295u, 17u)]) << (_wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.c.wz) % 32u), ~global3[_wgslsmith_index_u32(u_input.a, 17u)] << (abs(4294967295u) % 32u), _wgslsmith_dot_vec4_u32(abs(u_input.c), u_input.c)));
    global1 = array<bool, 32>();
    global2 = true & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(212f, var_0)))) < -1119f);
    global0 = vec2<bool>(arg_0.c.x, true);
    return any(arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(reverseBits(~(~((1u | u_input.c.x) >> (min(global3[_wgslsmith_index_u32(u_input.a, 17u)], u_input.a) % 32u)))), 32u)];
    let var_0 = i32(-1i) * -1i;
    global0 = select(!(!vec2<bool>(global1[_wgslsmith_index_u32(~0u, 32u)], !global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)], 32u)])), !vec2<bool>(!any(vec4<bool>(false, true, global0.x, false)), global1[_wgslsmith_index_u32(u_input.c.x, 32u)]), !(!select(!vec2<bool>(global0.x, false), !vec2<bool>(global1[_wgslsmith_index_u32(60767u, 32u)], true), global1[_wgslsmith_index_u32(u_input.c.x, 32u)])));
    var var_1 = Struct_1(vec4<i32>(1i, _wgslsmith_mod_i32(func_1(u_input.b, Struct_1(vec4<i32>(26733i, u_input.b.x, 1i, -1i), vec4<f32>(2074f, -234f, -370f, -1242f), vec2<bool>(false, global1[_wgslsmith_index_u32(44296u, 32u)]), 505f, u_input.a), 9524u, 1u), min(var_0, u_input.b.x)), var_0 | ~(-60004i), 40846i) << (vec4<u32>(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(u_input.c.x, 33154u)), 17u)], global3[_wgslsmith_index_u32(~abs(1u), 17u)], 20089u, 69619u) % vec4<u32>(32u)), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-265f, -742f)) * -921f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-307f, -943f))) - 2110f), 703f), !vec2<bool>(func_4(global4[_wgslsmith_index_u32(func_2(vec3<bool>(true, global0.x, global1[_wgslsmith_index_u32(0u, 32u)]), Struct_1(u_input.b, vec4<f32>(-328f, 1114f, 512f, 244f), vec2<bool>(true, global0.x), 859f, global3[_wgslsmith_index_u32(1u, 17u)]), vec2<f32>(1527f, 1327f), Struct_1(u_input.b, vec4<f32>(936f, 884f, -1077f, 794f), vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 32u)], true), -1000f, 1u)), 4u)]), select(global0.x, global0.x, global0.x) & any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], true))), 661f, ~firstTrailingBit(global3[_wgslsmith_index_u32(1u, 17u)]));
    var_1 = global4[_wgslsmith_index_u32(~70748u, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(104f)), var_1.d, ~u_input.b.yy, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-901f + _wgslsmith_f_op_f32(f32(-1f) * -569f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))));
}

