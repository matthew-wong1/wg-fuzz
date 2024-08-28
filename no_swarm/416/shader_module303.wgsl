struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: f32;

var<private> global2: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1510f, 2277f), vec2<f32>(-258f, -249f), vec2<f32>(895f, 801f), vec2<f32>(-1000f, 100f), vec2<f32>(1279f, -805f), vec2<f32>(-1402f, 263f), vec2<f32>(2352f, 1252f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> bool {
    var var_0 = Struct_1(min(-1i, select(-16525i, abs(3203i), all(vec3<bool>(false, arg_0.x, false)))), _wgslsmith_div_u32(~(~(4294967295u & u_input.b)), firstLeadingBit(~u_input.b)), !vec4<bool>(_wgslsmith_f_op_f32(select(arg_1, arg_1, arg_0.x)) <= arg_1, arg_0.x, true, true), 0i);
    global0 = array<u32, 19>();
    let var_1 = vec2<bool>(false, true);
    let var_2 = Struct_1(1i, 4294967295u, vec4<bool>(false, false || (_wgslsmith_f_op_f32(f32(-1f) * -1025f) != _wgslsmith_f_op_f32(-arg_1)), !var_1.x, arg_0.x), -59485i >> ((4294967295u | ~var_0.b) % 32u));
    global0 = array<u32, 19>();
    return var_0.c.x;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> bool {
    let var_0 = reverseBits(~vec3<i32>(~(-17660i) ^ min(u_input.c, -10136i), -1i, firstLeadingBit(-arg_0)));
    var var_1 = vec4<bool>(false, !func_3(vec2<bool>(true, u_input.b != 1u), _wgslsmith_f_op_f32(-arg_1.x)), true, firstTrailingBit(i32(-1i) * -1i) <= 2147483647i);
    let var_2 = Struct_1(~var_0.x, 4294967295u, select(select(select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x), false), vec4<bool>(var_1.x, false, var_1.x, true), true), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), select(!vec4<bool>(var_1.x, false, var_1.x, true), select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, true, false, var_1.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, true))), vec4<bool>((var_1.x && var_1.x) || !var_1.x, all(select(var_1.yw, vec2<bool>(var_1.x, true), var_1.x)), any(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x)), _wgslsmith_f_op_f32(step(arg_1.x, -1000f)) > _wgslsmith_f_op_f32(-539f * -751f)), select(true, any(vec3<bool>(var_1.x, var_1.x, var_1.x)), true)), var_0.x);
    var var_3 = var_2;
    let var_4 = u_input.c;
    return true;
}

fn func_1() -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(select(-1964f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1057f * 265f)), _wgslsmith_div_f32(-654f, 655f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(845f + _wgslsmith_f_op_f32(-1000f - 1000f)))), func_2(select(u_input.a.x, -27003i, true), _wgslsmith_div_vec4_f32(vec4<f32>(1706f, -246f, 1841f, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, -644f, 200f, 958f) - vec4<f32>(-612f, 1009f, 1755f, -1380f)))))), true));
    global1 = 1684f;
    let var_0 = Struct_1(_wgslsmith_add_i32(u_input.e >> (u_input.b % 32u), 2147483647i), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(5206u, 19u)], 54770u), vec3<u32>(1u, u_input.b, global0[_wgslsmith_index_u32(48151u, 19u)]))), vec3<u32>(u_input.b, ~57781u, abs(u_input.b))), vec3<u32>(abs(_wgslsmith_sub_u32(u_input.b, u_input.b)), countOneBits(global0[_wgslsmith_index_u32(35939u, 19u)]) >> (abs(1u) % 32u), firstLeadingBit(69810u >> (u_input.b % 32u)))), vec4<bool>(!any(vec3<bool>(true, true, true)), !all(vec4<bool>(true, true, true, true)), true, true), 2147483647i);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f * -1270f)), -1000f)))));
    global0 = array<u32, 19>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(0u, 7u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(_wgslsmith_sub_i32(-(u_input.c ^ u_input.c), -2147483647i));
    global2 = array<vec2<f32>, 7>();
    global1 = -1230f;
    global0 = array<u32, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, -312f, -1373f, -436f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1134f, 662f, 1201f, 276f)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(false, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(521f, 1147f, -889f, 968f), vec4<f32>(-527f, -1943f, 1103f, -1000f), false)))))));
    let x = u_input.a;
    s_output = func_1();
}

