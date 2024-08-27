struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = all(select(vec2<bool>(-15425i >= arg_0, select(any(vec4<bool>(false, false, false, false)), true, true)), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), true), u_input.a.x > ~firstLeadingBit(10644u)));
    var_0 = select(true, false, true);
    var_0 = select(true, arg_0 != 43344i, any(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(false, true, true)), select(false, true, true))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-391f, _wgslsmith_f_op_f32(select(-233f, 868f, false)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -982f), -1937f))), reverseBits(arg_0), Struct_1(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(2618u, 4294967295u, u_input.a.x, u_input.a.x)) & (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u) << (vec4<u32>(u_input.a.x, 41621u, 13492u, 97701u) % vec4<u32>(32u))), reverseBits(vec4<u32>(56349u, u_input.a.x, u_input.a.x, 0u))), !(all(vec4<bool>(true, false, true, false)) || any(vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)))), 1i), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 69831u, u_input.a.x, 45012u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 21369u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 21536u, 111466u, u_input.a.x))), 4294967295u, ~(~u_input.a.x), u_input.a.x), all(vec4<bool>(true, true, true, true)) | !select(false, false, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(904f + _wgslsmith_f_op_f32(f32(-1f) * -781f)), _wgslsmith_f_op_f32(f32(-1f) * -713f))), 2147483647i), min(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yz), 44433u | select(1u, 1u, false)), vec2<u32>(u_input.a.x, 0u) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1129f))));
    return vec4<u32>(~(~var_1.c.a.x) >> (~(~(var_1.d.a.x & 0u)) % 32u), reverseBits(0u), u_input.a.x, var_1.e.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> vec2<bool> {
    let var_0 = true;
    let var_1 = vec2<bool>(true, true);
    let var_2 = -1943f;
    let var_3 = Struct_1(~vec4<u32>(~u_input.a.x, arg_0.a.x, ~71279u, u_input.a.x) & ~(~(~arg_0.a)), all(var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1776f)) * -2456f), _wgslsmith_f_op_f32(-606f + _wgslsmith_f_op_f32(f32(-1f) * -621f))), countOneBits(42444i));
    let var_4 = Struct_1(vec4<u32>(~(~_wgslsmith_mod_u32(u_input.a.x, 13945u)), ~var_3.a.x, var_3.a.x, u_input.a.x), !arg_0.b, -260f, i32(-1i) * -7979i);
    return vec2<bool>(false, true && var_0);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = all(arg_0.xx);
    var var_1 = _wgslsmith_div_i32(abs(_wgslsmith_mod_i32(~(~(-1i)), 2147483647i)), -2147483647i);
    var_1 = i32(-1i) * -1i;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(abs(1543f)));
    var_0 = arg_0.x;
    return select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(-var_2.a)) == var_2.a, !(!(-1218f > var_2.a))), func_4(Struct_1(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, 36994u, 1u)), ~vec4<u32>(2456u, 0u, 4294967295u, 1u)), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-917f, -216f) + var_2.a), 1i), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1869f), 1i, Struct_1(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_add_i32(-60698i, -1i)), Struct_1(func_3(-19942i), arg_0.x | true, var_2.a, -1i << (u_input.a.x % 32u)), vec2<u32>(~1u, ~19179u)), var_2, 1i), vec2<bool>(!arg_0.x && any(!vec4<bool>(false, arg_0.x, true, false)), 1i >= ~select(-17824i, -1i, false)));
}

fn func_1() -> i32 {
    let var_0 = Struct_4(select(vec2<bool>(true, true), func_2(vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2632f, 444f, 1000f, -816f))), false | all(vec2<bool>(true, true))), u_input.a.xz, false);
    let var_1 = -17485i;
    var var_2 = -800f;
    let var_3 = ~vec2<i32>(~(~var_1), var_1) ^ abs(firstTrailingBit(vec2<i32>(var_1, -15657i)));
    let var_4 = !(any(vec3<bool>(true, var_0.c | false, any(vec3<bool>(var_0.c, var_0.c, false)))) & all(select(!vec4<bool>(true, var_0.c, var_0.a.x, var_0.a.x), vec4<bool>(true, true, true, true), u_input.a.x > u_input.a.x)));
    return min(-var_3.x, ~var_3.x) ^ var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(func_1(), i32(-1i) * -2147483647i);
    var var_1 = countOneBits(vec2<i32>(1i, 1i) ^ vec2<i32>(0i, _wgslsmith_clamp_i32(1i, 57693i, 18014i >> (0u % 32u))));
    var_0 = (var_1.x << (abs(51305u) % 32u)) | var_1.x;
    let var_2 = -2147483647i;
    var var_3 = firstLeadingBit(abs(~(~u_input.a.x))) >= ~u_input.a.x;
    var_0 = 1i;
    var var_4 = u_input.a.x;
    let var_5 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -430f), var_1.x, Struct_1(vec4<u32>(func_3(_wgslsmith_sub_i32(-57872i, var_2)).x, u_input.a.x, 4294967295u, 39381u), all(vec4<bool>(0i > var_1.x, true, func_4(Struct_1(vec4<u32>(108512u, 20192u, u_input.a.x, u_input.a.x), false, 2820f, -1i), Struct_2(-163f, var_1.x, Struct_1(vec4<u32>(u_input.a.x, 29664u, 6745u, 121487u), true, -497f, var_1.x), Struct_1(vec4<u32>(0u, 54438u, u_input.a.x, 1u), false, -1274f, 25577i), u_input.a.zy), Struct_3(1637f), var_2).x, true)), 317f, func_1()), Struct_1(vec4<u32>(97710u, ~(~u_input.a.x), u_input.a.x, 1u), true, -2026f, var_2), reverseBits(func_3(1i).yy));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

