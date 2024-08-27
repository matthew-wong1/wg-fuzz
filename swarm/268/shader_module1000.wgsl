struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<bool, 16>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    global0 = vec2<u32>(max(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 10508u), vec2<u32>(1u, global0.x))) & 1u, 24041u), _wgslsmith_clamp_u32(reverseBits(global0.x), 22304u, _wgslsmith_mult_u32(25606u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 1u)))));
    global0 = reverseBits(reverseBits(_wgslsmith_add_vec2_u32(~(~vec2<u32>(4682u, u_input.a)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(40048u, u_input.a), vec2<u32>(u_input.c, 4294967295u)), vec2<u32>(u_input.a, 86282u), any(vec3<bool>(global2[_wgslsmith_index_u32(72899u, 16u)], true, global2[_wgslsmith_index_u32(u_input.a, 16u)]))))));
    let var_0 = _wgslsmith_f_op_f32(433f + arg_1) < 1149f;
    global1 = array<Struct_1, 20>();
    let var_1 = vec4<bool>(!var_0, false, false, false);
    return u_input.c;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, ~func_3(u_input.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(737f * -1264f))))), 16u)];
    global0 = firstLeadingBit(select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(47864u, global0.x), vec2<u32>(1u, u_input.c), ~vec2<u32>(4294967295u, global0.x)), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(global0.x, global0.x) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), vec2<u32>(global0.x, global0.x)), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 16u)] & true, true))) ^ max(vec2<u32>(~_wgslsmith_sub_u32(35845u, global0.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.a), vec2<u32>(u_input.c, global0.x)), _wgslsmith_mod_u32(global0.x, 61828u))), vec2<u32>(1u, 92810u) >> (vec2<u32>(u_input.c, _wgslsmith_add_u32(1u, global0.x)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-234f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1089f), 119f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-665f)))))), 1507f);
    let var_2 = Struct_1(select(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], false, global2[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<bool>(global2[_wgslsmith_index_u32(72931u, 16u)] == false, true, true), vec3<bool>(all(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 16u)])), global2[_wgslsmith_index_u32(global0.x, 16u)], select(true, true, global2[_wgslsmith_index_u32(u_input.c, 16u)]))), vec3<bool>(true, global2[_wgslsmith_index_u32(~58421u, 16u)], true), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(24469u, 16u)], false), global2[_wgslsmith_index_u32(16699u, 16u)]), all(vec4<bool>(global2[_wgslsmith_index_u32(76667u, 16u)], global2[_wgslsmith_index_u32(32705u, 16u)], global2[_wgslsmith_index_u32(9320u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)])))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(354f, -155f), vec2<f32>(-282f, -490f)))), vec2<f32>(_wgslsmith_f_op_f32(1064f * 508f), _wgslsmith_f_op_f32(min(-772f, 605f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -820f)))))));
    var_1 = 401f;
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * var_2.b.x) * 1180f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f))));
}

fn func_1() -> bool {
    let var_0 = Struct_1(vec3<bool>(true, true & all(vec3<bool>(true, global2[_wgslsmith_index_u32(43600u, 16u)], true)), all(vec4<bool>(!global2[_wgslsmith_index_u32(global0.x, 16u)], true, true, u_input.d >= -2147483647i))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(877f, _wgslsmith_f_op_f32(140f - -1223f)), vec2<f32>(_wgslsmith_f_op_f32(step(-530f, -1458f)), 1246f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-106f, 317f))) * vec2<f32>(-760f, _wgslsmith_f_op_f32(-462f * 1265f))))));
    var var_1 = Struct_1(!var_0.a, var_0.b);
    let var_2 = vec4<bool>(!any(vec4<bool>(true || global2[_wgslsmith_index_u32(u_input.c, 16u)], any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(global0.x, 16u)], true, var_1.a.x)), true, u_input.d == u_input.b.x)), true, any(select(var_1.a.xz, vec2<bool>(global2[_wgslsmith_index_u32(u_input.c << (13114u % 32u), 16u)], true), var_1.a.zx)), true);
    global2 = array<bool, 16>();
    var var_3 = select(select(!select(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(57004u, 16u)]), vec4<bool>(var_0.a.x, false, var_1.a.x, global2[_wgslsmith_index_u32(u_input.c, 16u)]), u_input.b.x != u_input.b.x), !select(var_2, var_2, var_1.a.x), vec4<bool>((global2[_wgslsmith_index_u32(u_input.c, 16u)] & var_1.a.x) | !var_2.x, var_1.a.x, false, func_2(vec2<i32>(-1i, u_input.d)))), var_2, !var_2);
    return any(select(select(select(vec2<bool>(true, var_0.a.x), var_2.yw, true), var_0.a.xz, !global2[_wgslsmith_index_u32(global0.x, 16u)]), !var_3.xx, global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(4294967295u, global0.x)), 16u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], all(vec2<bool>(global2[_wgslsmith_index_u32(31008u, 16u)], global2[_wgslsmith_index_u32(global0.x, 16u)])), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, global0.x), 16u)]), vec3<bool>(true, false, true), select(!vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 16u)], true, true), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(global0.x, 16u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(31445u, 16u)], global2[_wgslsmith_index_u32(30939u, 16u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)])), !global2[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1261f, -1299f)))))));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, abs(global0.x)), abs(~vec2<u32>(582u, u_input.a)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.a) | select(vec2<u32>(u_input.c, 25641u), vec2<u32>(101181u, 29441u), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 16u)], var_0.a.x)), abs(~vec2<u32>(4294967295u, global0.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(836f, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), select(false, var_0.a.x, var_0.a.x)))))));
    let var_3 = vec2<i32>(countOneBits(-(~(-57471i))), u_input.d);
    let var_4 = _wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -1000f)), var_0.b, func_1())) * var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) + -741f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-174f - 664f))))), _wgslsmith_mult_i32(abs(1i), _wgslsmith_clamp_i32(var_3.x, u_input.b.x, 12144i)), select(select(vec4<i32>(reverseBits(-33518i), u_input.d, u_input.b.x, 1i), ~abs(vec4<i32>(0i, 2147483647i, u_input.b.x, var_3.x)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(21581u, 16u)], false, var_0.a.x, global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 16u)], false, false, false)), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], false, false, true), !global2[_wgslsmith_index_u32(var_1.x, 16u)])), reverseBits(~vec4<i32>(0i, 1i, u_input.d, var_3.x) | (vec4<i32>(var_3.x, var_3.x, 2147483647i, 1i) | vec4<i32>(0i, u_input.d, var_3.x, u_input.b.x))), false));
}

