struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(-989i, 0i), vec3<bool>(true, true, true)), Struct_1(vec2<i32>(-67922i, 1i), vec3<bool>(true, false, false)), Struct_1(vec2<i32>(1i, 26363i), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-1i, 3597i), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-50670i, 2147483647i), vec3<bool>(false, false, false)));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(0i, 2147483647i), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(1i, 0i), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(30517i, -1i), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-26109i, 28176i), vec3<bool>(true, false, false)), Struct_1(vec2<i32>(3255i, 42037i), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(1i, -1i), vec3<bool>(true, true, false)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = Struct_2(-u_input.b, ~(~(~(~vec2<u32>(1u, 0u)))));
    var var_1 = -1000f;
    var var_2 = select(select(!select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), all(arg_0)), vec4<bool>(!all(arg_0), arg_0.x, !all(arg_0), _wgslsmith_f_op_f32(step(-590f, 825f)) != _wgslsmith_f_op_f32(trunc(-828f))), vec4<bool>(arg_0.x, arg_0.x, any(vec3<bool>(false, arg_0.x, false)), false)), select(vec4<bool>(arg_0.x, arg_0.x, false, false), !(!select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x), arg_0.x)), arg_0.x), vec4<bool>(select(true, arg_0.x, any(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), all(!(!vec4<bool>(false, false, false, arg_0.x))), !arg_0.x, !(all(arg_0.xy) | (var_0.b.x < 6732u))));
    var var_3 = true;
    var var_4 = Struct_2(2147483647i, countOneBits(vec2<u32>(~var_0.b.x, 48872u)));
    return arg_0;
}

fn func_2() -> f32 {
    let var_0 = !func_3(vec3<bool>(true, _wgslsmith_f_op_f32(trunc(1112f)) != _wgslsmith_f_op_f32(f32(-1f) * -1622f), true));
    let var_1 = max(u_input.b, max(-14335i, abs(_wgslsmith_div_i32(-2147483647i, u_input.b)))) <= -u_input.b;
    global1 = array<Struct_1, 8>();
    let var_2 = vec4<u32>(max(firstLeadingBit(~9158u), select(min(~8843u, 9322u), abs(1u), var_0.x & (var_1 || var_1))), _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, select(_wgslsmith_mod_u32(0u, 4294967295u), select(1u, 23958u, true), var_0.x)), ~26514u), 32909u, 1u);
    global0 = array<Struct_1, 6>();
    return -996f;
}

fn func_1() -> i32 {
    let var_0 = Struct_1(~max(vec2<i32>(i32(-1i) * -1i, min(u_input.b, u_input.b)), vec2<i32>(-2147483647i, -35925i | u_input.a)), vec3<bool>(!(_wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(f32(-1f) * -2960f)), true, true));
    let var_1 = 49173i;
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u) << (reverseBits(select(vec4<u32>(43551u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 75096u, 1u, 1u), vec4<bool>(var_0.b.x, var_0.b.x, false, false))) % vec4<u32>(32u)), ~vec4<u32>(0u, _wgslsmith_sub_u32(1u, 0u), ~0u, 1u)), vec4<u32>(_wgslsmith_mod_u32(~16627u, ~1u), 1u, ~(~_wgslsmith_clamp_u32(1u, 0u, 4294967295u)), 4294967295u));
    var var_3 = Struct_2(var_0.a.x, vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 28964u)) >> (10130u % 32u)) ^ ~firstLeadingBit(vec2<u32>(22572u, 4294967295u)));
    let var_4 = Struct_2(~reverseBits(_wgslsmith_add_i32(~(-1i), -1i >> (0u % 32u))), ~abs(~(~var_3.b)));
    return 25759i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-8749i, -2147483647i, u_input.b)), vec3<i32>(u_input.b, 1i, func_1())) & u_input.a) != ~u_input.b;
    let var_1 = vec4<bool>(var_0, true, abs(~(-31856i & u_input.a)) > ~_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, u_input.b), -2147483647i), true);
    global0 = array<Struct_1, 6>();
    let var_2 = Struct_2(1i, _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u) >> (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), min(~vec2<u32>(4335u, 0u), ~(~vec2<u32>(63383u, 4294967295u))), vec2<u32>(1u, 1u)));
    let var_3 = vec2<bool>(!any(select(var_1, vec4<bool>(var_0, false, var_0, var_0), all(var_1))), all(vec4<bool>(select(all(vec4<bool>(false, true, var_0, false)), true, !var_1.x), var_1.x, true, !var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(_wgslsmith_mult_u32(4294967295u, 1u))));
}

