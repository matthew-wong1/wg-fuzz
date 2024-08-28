struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 4294967295u, 67957u, 72012u, 15661u, 1u, 0u, 11086u, 0u, 5350u, 1u, 4294967295u, 61990u, 1u, 35675u, 986u, 1u, 34197u, 7608u, 1u, 51307u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    let var_0 = ~(0i | u_input.c.x);
    let var_1 = ~2147483647i;
    let var_2 = vec4<bool>(false && (!select(true, false, false) != all(vec2<bool>(false, true))), false, false & (all(vec2<bool>(false, false)) | true), !select(true, all(vec2<bool>(true, true)), select(false, false, false) | all(vec4<bool>(true, true, false, true))));
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1233f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(508f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-309f))))), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(640f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-382f)) * 1228f)))));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(44180u, 0u)), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 21u)] ^ u_input.b, ~1u)), 58266u));
    var var_1 = Struct_2(Struct_1(abs(vec3<u32>(4294967295u >> (1u % 32u), global0[_wgslsmith_index_u32(~4571u, 21u)], 0u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3()))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, u_input.c.x < u_input.c.x), true)), !vec2<bool>(any(vec3<bool>(true, true, true)), 30898u > _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(7603u, 21u)], global0[_wgslsmith_index_u32(53042u, 21u)], 0u, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(var_0, 21u)], u_input.a, 4294967295u))), select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false))), (u_input.c.x == -2116i) & select(true, true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !(u_input.b <= var_0)), vec2<bool>(true, true)));
    var_1 = Struct_2(Struct_1(vec3<u32>(~29811u, ~u_input.b, 0u) ^ ~countOneBits(vec3<u32>(0u, var_1.a.a.x, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(select(-1000f, var_1.a.b.x, false)), 398f, var_1.a.b.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.a.b, var_1.a.b, vec4<bool>(var_1.c.x, var_1.b.x, var_1.b.x, var_1.b.x))) - vec4<f32>(1000f, -494f, -487f, var_1.a.b.x))), !(!select(var_1.b, var_1.c, var_1.c)), vec2<bool>(true, var_1.a.b.x == _wgslsmith_f_op_f32(select(var_1.a.b.x, 2784f, false)))), var_1.a.c, var_1.c);
    global0 = array<u32, 21>();
    let var_2 = -abs(abs(vec2<i32>(-1i, arg_0.x)));
    return false;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> u32 {
    global0 = array<u32, 21>();
    let var_0 = vec2<i32>(0i, i32(-1i) * -_wgslsmith_div_i32(~(-5395i), arg_0.x));
    var var_1 = u_input.b;
    var var_2 = Struct_2(arg_1.a, vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_3)), arg_2.a.d.a.b.x)) < 310f, !func_2(vec2<i32>(var_0.x, -1i))), !select(vec2<bool>(any(vec4<bool>(true, true, true, arg_2.a.d.a.d.x)), true), arg_2.a.a.a.d, !vec2<bool>(arg_1.b.x, true)));
    let var_3 = select(!select(select(!vec4<bool>(var_2.c.x, true, false, arg_1.b.x), vec4<bool>(false, true, true, var_2.a.d.x), vec4<bool>(false, var_2.b.x, true, false)), select(vec4<bool>(arg_2.a.a.b.x, var_2.a.d.x, arg_1.c.x, arg_1.a.d.x), select(vec4<bool>(true, var_2.b.x, var_2.a.d.x, arg_2.a.a.c.x), vec4<bool>(false, false, var_2.a.d.x, false), vec4<bool>(var_2.c.x, false, false, var_2.a.d.x)), !vec4<bool>(false, arg_2.a.d.a.c.x, false, false)), true), !select(!(!vec4<bool>(var_2.a.c.x, arg_1.b.x, arg_1.a.d.x, false)), vec4<bool>(u_input.c.x < u_input.c.x, var_2.c.x, !var_2.b.x, select(arg_2.a.d.a.c.x, arg_1.a.d.x, false)), var_2.b.x), false);
    return var_2.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_mult_u32(func_1(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), Struct_2(Struct_1(vec3<u32>(u_input.a, 4742u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)]), vec4<f32>(-748f, -602f, 3277f, 1000f), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], 39673u, 24951u), vec4<f32>(424f, 172f, -1000f, 638f), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(false, true)), vec4<u32>(7841u, 0u, 3793u, u_input.b), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), Struct_2(Struct_1(vec3<u32>(7369u, 4294967295u, 17283u), vec4<f32>(630f, 676f, -723f, 1000f), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<u32>(55131u, global0[_wgslsmith_index_u32(43307u, 21u)]))), -759f), 114273u) | min(0u, global0[_wgslsmith_index_u32(1u, 21u)]), ~(~(~global0[_wgslsmith_index_u32(22539u, 21u)])), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.a, 0u), max(u_input.a, ~global0[_wgslsmith_index_u32(4294967295u, 21u)]), 41597u), 21u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~(~32134u), 21u)], global0[_wgslsmith_index_u32(56071u | ~u_input.b, 21u)], 1u, ~u_input.a), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 15674u), u_input.a), ~100049u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u >> (_wgslsmith_sub_u32(u_input.b, 0u) % 32u), 21u)], 21u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)] & 4294967295u, 21u)], 4294967295u))));
    var var_1 = !all(vec2<bool>(true, all(vec4<bool>(false, false, false, true))));
    let var_2 = ~(-reverseBits(_wgslsmith_mult_i32(-11178i, u_input.c.x)) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, ~4294967295u), 6739u) % 32u));
    var var_3 = u_input.c.x;
    var var_4 = select(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), vec3<bool>(true, true, true), false), vec3<bool>(false, 24995u > var_0.x, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)))), vec3<bool>(0i == reverseBits(-u_input.c.x), true, true));
    var var_5 = vec2<bool>(true, var_4.x && true);
    let var_6 = 992f;
    var var_7 = Struct_2(Struct_1(var_0.xyy, vec4<f32>(var_6, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_6)), _wgslsmith_f_op_f32(f32(-1f) * -121f))), _wgslsmith_f_op_f32(1446f * 2052f), _wgslsmith_f_op_f32(-var_6)), !var_4.yx, select(vec2<bool>(var_4.x, true), select(var_4.zy, vec2<bool>(var_4.x, var_4.x), !var_4.zy), all(!vec2<bool>(var_5.x, var_4.x)))), select(!select(var_4.yz, !var_4.zy, var_4.x), select(var_4.xx, select(!vec2<bool>(true, var_4.x), select(var_4.zy, var_4.zx, vec2<bool>(true, true)), true && var_4.x), true), true), vec2<bool>(firstTrailingBit(i32(-1i) * -14641i) >= countOneBits(-23922i), !func_2(vec2<i32>(2147483647i, u_input.c.x) & vec2<i32>(u_input.c.x, var_2))));
    var_0 = ~(firstLeadingBit(~vec4<u32>(66309u, u_input.b, 45222u, var_7.a.a.x)) & ~(~(vec4<u32>(9623u, global0[_wgslsmith_index_u32(41741u, 21u)], 108203u, 45986u) << (vec4<u32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], 9979u, 13085u, var_7.a.a.x) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(_wgslsmith_mod_i32(var_2, 2147483647i) & -2617i), firstLeadingBit(_wgslsmith_clamp_i32(u_input.c.x ^ var_2, u_input.c.x, var_2 & 25242i))), -1i, vec3<i32>(var_2, -(~0i), u_input.c.x), i32(-1i) * -(~2147483647i), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(7340u, 0u, var_7.a.a.x, 96349u) & vec4<u32>(u_input.a, 1u, 4294967295u, global0[_wgslsmith_index_u32(0u, 21u)])), ~abs(vec4<u32>(31784u, 47623u, 32224u, global0[_wgslsmith_index_u32(4294967295u, 21u)]))), vec4<u32>(~37544u, reverseBits(1u), u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)]), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_7.a.a.x, 0u, 26528u, u_input.b), vec4<u32>(var_7.a.a.x, 4054u, 1u, 8260u)), vec4<u32>(var_0.x, var_0.x, var_7.a.a.x, var_7.a.a.x), vec4<u32>(var_0.x, 47064u, 53509u, var_7.a.a.x) ^ vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 21u)], var_7.a.a.x, var_0.x))));
}

