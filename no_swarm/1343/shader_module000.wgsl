struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(vec3<bool>(false, any(vec2<bool>(arg_0.x, arg_1.a.x)), any(select(select(vec2<bool>(true, false), vec2<bool>(arg_0.x, arg_0.x), arg_0), vec2<bool>(arg_1.a.x, false), false))), ~arg_1.b);
    let var_1 = Struct_1(arg_1.a, var_0.b);
    let var_2 = arg_1;
    var_0 = var_2;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1478f, -620f, any(!(!vec4<bool>(false, var_2.a.x, arg_0.x, arg_0.x))))));
    return !(any(vec4<bool>(var_2.a.x, true, arg_1.a.x, any(var_2.a.yx))) | true);
}

fn func_2() -> vec3<bool> {
    var var_0 = !vec2<bool>(all(vec3<bool>(true, true, true)) && true, all(vec4<bool>(true, true, func_3(vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, false), vec2<u32>(u_input.b, 4294967295u))), true)));
    var_0 = !(!(!select(vec2<bool>(false, var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true)), var_0.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1906f, -418f, 1282f, -738f))))))));
    return select(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, var_0.x), select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x)), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, true), vec3<bool>(true, true, false)), select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false)))), !select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, var_0.x), false), vec3<bool>(func_3(vec2<bool>(var_0.x, var_0.x), Struct_1(vec3<bool>(var_0.x, var_0.x, true), vec2<u32>(69079u, 4294967295u))), any(!vec3<bool>(false, false, var_0.x)), true)), !(!vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), var_0.x & var_0.x, true)), select(vec3<bool>(true, false, any(vec4<bool>(false, true, var_0.x, var_0.x))), vec3<bool>(func_3(vec2<bool>(false, true), Struct_1(vec3<bool>(true, var_0.x, var_0.x), vec2<u32>(u_input.b, u_input.b))), true, var_0.x), !vec3<bool>(true, any(vec4<bool>(false, var_0.x, var_0.x, true)), var_0.x && var_0.x)));
}

fn func_1() -> vec3<bool> {
    global0 = array<i32, 25>();
    let var_0 = vec2<bool>(false, true);
    var var_1 = Struct_1(!select(func_2(), select(vec3<bool>(true, var_0.x, false), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), false), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), var_0.x)), false), abs(~(vec2<u32>(48290u, u_input.b) << (vec2<u32>(u_input.b, 13595u) % vec2<u32>(32u)))));
    let var_2 = !(!vec4<bool>(var_0.x, var_0.x, true, (var_1.a.x | var_0.x) & !var_1.a.x));
    var var_3 = Struct_1(func_2(), vec2<u32>(8514u, 14106u));
    return select(vec3<bool>(((13963u | u_input.b) == _wgslsmith_add_u32(var_3.b.x, 51481u)) || ((false || var_3.a.x) || any(var_2)), max(u_input.a, -1i) >= u_input.a, any(!(!var_1.a))), var_2.yxz, vec3<bool>(!(!any(var_1.a)), false, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(false, !(-1480f > _wgslsmith_f_op_f32(trunc(422f))), any(vec3<bool>(true, true, true))), abs((select(vec2<u32>(1u, 19472u), vec2<u32>(76885u, 19628u), true) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 30378u), vec2<u32>(0u, u_input.b))) >> (firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u))));
    var var_1 = Struct_1(!func_1(), ~_wgslsmith_div_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(38475u, u_input.b), var_0.b)), var_0.b >> (_wgslsmith_mult_vec2_u32(var_0.b, var_0.b) % vec2<u32>(32u))));
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    let var_2 = var_0.b.x;
    var var_3 = firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(-u_input.a), countOneBits(~(-1322i)), 1i), -(-vec3<i32>(global0[_wgslsmith_index_u32(var_0.b.x, 25u)], u_input.a, 0i) ^ ~vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(var_0.b.x, 25u)], -1408i))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(2147483647i, 1i, -22312i, 0i), ~(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(53650u, 25u)], var_3.x, -4188i) ^ vec4<i32>(-79147i, 2147483647i, 27660i, -1i))) >> ((_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_1.b.x, 98289u, 0u, u_input.b)), vec4<u32>(var_1.b.x, var_1.b.x, var_2, var_1.b.x) ^ vec4<u32>(4294967295u, 9683u, var_1.b.x, 7259u)) << (_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, 16418u, var_2, u_input.b)), vec4<u32>(50205u, 59201u, 6447u, 76439u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_u32(reverseBits(~var_1.b.x) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_2, 4294967295u, u_input.b), vec4<u32>(4294967295u, var_2, u_input.b, 1808u)) % 32u), ~reverseBits(var_1.b.x) >> (_wgslsmith_mod_u32(~var_2, var_2) % 32u), 29325u));
}

