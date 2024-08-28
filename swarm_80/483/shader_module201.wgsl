struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    var var_0 = vec2<i32>(~(-arg_0.a.x) << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, arg_1, 4294967295u, 68243u), vec4<u32>(arg_2.x, arg_1, 1u, arg_1), vec4<u32>(arg_1, arg_1, 2527u, arg_1)), vec4<u32>(arg_1, 1u, 4294967295u, arg_2.x)), arg_2.x) % 32u), u_input.b);
    var_0 = u_input.c;
    var_0 = arg_0.a.xx;
    let var_1 = ~(~min(vec4<u32>(arg_1, arg_2.x, 0u, arg_2.x), ~vec4<u32>(107850u, arg_2.x, arg_1, arg_2.x)) << (select(~vec4<u32>(arg_1, arg_1, arg_1, arg_2.x), select(vec4<u32>(arg_1, arg_1, 1u, 58993u), ~vec4<u32>(1u, 114627u, arg_2.x, 1u), true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), arg_0.a.x == -20506i)) % vec4<u32>(32u)));
    var var_2 = var_1;
    return 0u;
}

fn func_3() -> vec4<u32> {
    var var_0 = ~_wgslsmith_add_u32(1u, firstLeadingBit(_wgslsmith_sub_u32(79536u, 11759u)));
    var_0 = 58868u;
    var var_1 = 42038u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1398f + _wgslsmith_div_f32(-668f, 1238f)) + -162f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f - -1000f) - 1165f)), vec4<i32>(u_input.d, _wgslsmith_div_i32(u_input.c.x, ~(~u_input.b)), reverseBits(max(-u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(63790i, 35868i), u_input.c))), (~u_input.d ^ 48554i) >> (1u % 32u)), reverseBits(countOneBits(vec4<i32>(u_input.b, -1i, i32(-1i) * -1i, -u_input.d))), any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))));
    let var_3 = var_2;
    return ~vec4<u32>(1u, 1u, 1u, 1u);
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = arg_0.zxy;
    let var_1 = _wgslsmith_f_op_f32(ceil(413f)) > -1000f;
    let var_2 = arg_0;
    let var_3 = max(arg_0, vec4<u32>(arg_0.x, var_0.x, countOneBits(var_0.x), var_0.x)) << (_wgslsmith_clamp_vec4_u32(func_3(), _wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_0.x, 0u, 26410u, var_2.x), arg_0), vec4<u32>(~var_0.x, 13744u, func_1(Struct_2(vec4<i32>(u_input.a, u_input.b, -1i, -2147483647i)), var_2.x, var_2.yzy), var_0.x)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~var_2, select(vec4<u32>(1u, 61704u, 1u, 1u), vec4<u32>(var_2.x, 1u, var_0.x, var_2.x), vec4<bool>(var_1, true, var_1, var_1))), ~abs(var_2))) % vec4<u32>(32u));
    var var_4 = ~_wgslsmith_clamp_u32(26649u, firstTrailingBit(var_0.x), ~102821u);
    return select(select(select(select(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_1, var_1, false, var_1)), !vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, var_1, false, true)), !(!vec4<bool>(var_1, true, true, var_1)), vec4<bool>(u_input.c.x >= u_input.a, any(vec3<bool>(var_1, true, false)), false, var_0.x > 0u)), vec4<bool>(any(vec4<bool>(var_1, var_1, var_1, var_1)), _wgslsmith_f_op_f32(floor(457f)) >= _wgslsmith_f_op_f32(f32(-1f) * -991f), var_1, any(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(true, false)))), vec4<bool>(true, var_1, all(!vec3<bool>(var_1, var_1, false)), all(!vec3<bool>(var_1, var_1, var_1)))), !vec4<bool>(!(!var_1), any(vec4<bool>(true, false, true, var_1)), ~50951u >= abs(arg_0.x), all(vec3<bool>(var_1, true, var_1))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_2(vec4<u32>(reverseBits(abs(0u)), ~func_1(Struct_2(vec4<i32>(u_input.a, -26010i, 4384i, u_input.a)), 11058u, vec3<u32>(1u, 1u, 54272u)), ~0u, 13057u));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(abs(u_input.b), u_input.c.x, u_input.a), select(~vec3<i32>(u_input.a, u_input.b ^ u_input.b, min(u_input.b, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, -29194i), min(vec3<i32>(0i, -24068i, u_input.b), vec3<i32>(u_input.b, -22720i, u_input.b)), ~(-vec3<i32>(u_input.b, u_input.a, 1i))), var_0.ywy));
    let var_2 = Struct_1(1f, abs(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_1.x, -34989i, var_1.x), -vec4<i32>(u_input.d, -54167i, var_1.x, 6956i)))), -select(_wgslsmith_div_vec4_i32(~vec4<i32>(var_1.x, 0i, var_1.x, u_input.c.x), vec4<i32>(var_1.x, 1i, -2147483647i, 63546i) << (vec4<u32>(7181u, 43900u, 11850u, 59503u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, -33242i, u_input.c.x, -1i), max(vec4<i32>(u_input.a, -6594i, 38707i, u_input.c.x), vec4<i32>(var_1.x, var_1.x, 998i, u_input.c.x))), !var_0), !(!var_0.x));
    var var_3 = Struct_2(var_2.c);
    var var_4 = Struct_1(var_2.a, abs(abs(var_3.a)), vec4<i32>(select(0i | var_3.a.x, _wgslsmith_mult_i32(max(12539i, 36599i), var_1.x), true), _wgslsmith_sub_i32(-var_1.x, -706i), _wgslsmith_dot_vec3_i32(var_3.a.zxy & var_3.a.yyy, _wgslsmith_sub_vec3_i32(~var_2.c.xwy, abs(var_3.a.wwz))), 1210i), all(func_2(~(~vec4<u32>(1u, 14438u, 4294967295u, 4294967295u)))));
    var var_5 = Struct_2(firstTrailingBit(~var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(1i << (min(_wgslsmith_clamp_u32(19851u, ~0u, 1u), 1u) % 32u));
}

