struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = (1u ^ _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(arg_0, u_input.a))) <= (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 20879u, arg_0, 80645u), vec4<u32>(u_input.b.x, arg_0, 1u, 1u)), max(vec4<u32>(arg_0, arg_0, arg_0, u_input.b.x), vec4<u32>(u_input.b.x, u_input.e.x, arg_0, 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 496u, u_input.e.x), vec4<u32>(u_input.b.x, 4073u, 4294967295u, u_input.b.x))) << (~firstLeadingBit(_wgslsmith_div_u32(u_input.a, arg_0)) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1855f, 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1198f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(866f * 502f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))))));
    var_0 = true;
    var var_2 = firstTrailingBit(select(55014i, arg_1 >> (max(~u_input.c, 1u) % 32u), any(vec2<bool>(true, true))));
    var var_3 = Struct_1(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), all(vec3<bool>(true, false, false)))), reverseBits(vec4<u32>(arg_0, 13948u, u_input.a, u_input.c)), -countOneBits(abs(vec4<i32>(0i, 5109i, 13624i, arg_1)) | abs(vec4<i32>(-2147483647i, 34602i, -1i, arg_1))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    return true;
}

fn func_2() -> vec3<bool> {
    var var_0 = u_input.d.x == 2147483647i;
    var_0 = func_3(min(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(14035u, u_input.c, u_input.a, 75867u), vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.a)), vec4<u32>(40917u, 27418u, 54934u, u_input.a)), u_input.e.x), 42866i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, -612f))))) | true;
    var var_1 = firstLeadingBit(~(~vec3<u32>(u_input.e.x, u_input.c, u_input.a)) << (_wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 14118u, u_input.b.x), vec3<u32>(4294967295u, 21749u, 4294967295u))) % vec3<u32>(32u))) ^ select(vec3<u32>(u_input.b.x, ~(u_input.a ^ u_input.a), 0u), _wgslsmith_div_vec3_u32(vec3<u32>(~11643u, _wgslsmith_sub_u32(18343u, u_input.b.x), u_input.e.x | u_input.e.x), ~(u_input.e & vec3<u32>(1u, 49040u, 0u))), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))));
    let var_2 = Struct_2(Struct_1(func_3(_wgslsmith_mod_u32(~var_1.x, ~var_1.x), u_input.d.x << (var_1.x % 32u), _wgslsmith_f_op_f32(-412f * 979f)), firstLeadingBit(vec4<u32>(18274u, var_1.x, var_1.x, 61916u) & (vec4<u32>(u_input.a, u_input.c, u_input.b.x, 0u) & vec4<u32>(36972u, 2262u, var_1.x, 0u))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 0i, 1i), vec4<i32>(-1i, 37038i, -2147483647i, u_input.d.x)), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(34517i, -9718i, -68138i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -9689i), vec4<i32>(u_input.d.x, 45401i, u_input.d.x, -36796i)), true), vec3<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.d | vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, -9344i))), u_input.d.x >> (1u % 32u), u_input.d.x), Struct_1(any(vec4<bool>(true, true, true, true)), ~vec4<u32>(~var_1.x, 0u, ~u_input.b.x, 8144u >> (var_1.x % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-1i, u_input.d.x), i32(-1i) * -1i, max(u_input.d.x, u_input.d.x), -1i), ~(vec4<i32>(-16028i, u_input.d.x, u_input.d.x, -41127i) & vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x))), (u_input.e.x < 5540u) || (~1u < (u_input.b.x >> (var_1.x % 32u)))), Struct_1(true, vec4<u32>(reverseBits(var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 40491u, 18090u, 4294967295u) << (vec4<u32>(4347u, 0u, u_input.b.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(15654u, u_input.a, 20725u, 35196u)), 21893u, 53321u), vec4<i32>(9745i, -u_input.d.x, 1i, _wgslsmith_div_i32(u_input.d.x | u_input.d.x, _wgslsmith_mult_i32(-2147483647i, u_input.d.x))), select(!all(vec4<bool>(false, false, false, false)), ~1u != u_input.b.x, func_3(firstLeadingBit(3186u), select(21806i, u_input.d.x, true), _wgslsmith_f_op_f32(-224f * 329f)))), u_input.d.x);
    var var_3 = Struct_2(var_2.d, -max(-var_2.b, vec3<i32>(~19267i, -var_2.c.c.x, 5188i)), var_2.a, var_2.c, -1i << (_wgslsmith_sub_u32(_wgslsmith_add_u32(5035u, 0u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, var_1.x, var_2.d.b.x)), ~vec3<u32>(var_2.c.b.x, u_input.a, u_input.b.x))) % 32u));
    return select(vec3<bool>(var_3.c.d, any(vec3<bool>(var_2.a.a, var_2.a.d, true)), false), vec3<bool>((firstTrailingBit(var_3.b.x) >= reverseBits(-60687i)) != false, false & all(vec2<bool>(var_3.a.a, var_3.d.d)), var_2.d.a), !(!select(vec3<bool>(var_3.a.d, false, false), vec3<bool>(false, var_2.c.a, false), !vec3<bool>(true, var_3.d.a, false))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = ~(~(~u_input.e));
    let var_2 = ~_wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(max(u_input.d.x, 2147483647i)), u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, u_input.d.x)), 1i)), firstTrailingBit(select(~vec3<i32>(-1i, 2147483647i, 66623i), ~vec3<i32>(u_input.d.x, 2147483647i, 12317i), !vec3<bool>(false, arg_0.x, arg_0.x))));
    var var_3 = Struct_1(arg_0.x, reverseBits(~(~vec4<u32>(0u, var_1.x, var_1.x, 101139u)) | ~(vec4<u32>(var_1.x, 9178u, 47118u, 8791u) >> (vec4<u32>(u_input.b.x, u_input.b.x, var_1.x, u_input.a) % vec4<u32>(32u)))), vec4<i32>(-u_input.d.x, min(var_2.x, var_2.x), reverseBits(-2147483647i), -_wgslsmith_div_i32(var_2.x, -u_input.d.x)), arg_0.x);
    let var_4 = _wgslsmith_div_vec4_i32(~_wgslsmith_sub_vec4_i32(var_3.c, _wgslsmith_div_vec4_i32(var_3.c, var_3.c)), var_3.c) >> (var_3.b % vec4<u32>(32u));
    return Struct_3(Struct_2(Struct_1(func_3(_wgslsmith_mult_u32(u_input.e.x, 1u), 0i, _wgslsmith_f_op_f32(1000f - 1464f)), ~_wgslsmith_mult_vec4_u32(var_3.b, var_3.b), var_4, !(!var_0.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(var_3.c.wwz, vec3<i32>(2147483647i, 2147483647i, 2147483647i)), var_4.xxy & vec3<i32>(var_3.c.x, -4991i, var_4.x)), vec3<i32>(var_2.x, var_2.x, var_4.x ^ var_3.c.x), vec3<i32>(max(var_3.c.x, u_input.d.x), _wgslsmith_sub_i32(var_2.x, 2147483647i), _wgslsmith_add_i32(var_3.c.x, -62811i))), Struct_1(true, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(20843u, 1u, 22429u), vec3<u32>(4294967295u, 1u, u_input.e.x)), 20382u, max(8341u, var_3.b.x), _wgslsmith_mod_u32(1u, var_1.x)), -var_4, true), Struct_1(arg_0.x, ~var_3.b, abs(select(vec4<i32>(var_2.x, u_input.d.x, var_4.x, 1i), var_4, vec4<bool>(false, false, true, true))), arg_0.x), _wgslsmith_mult_i32(var_4.x ^ _wgslsmith_mod_i32(var_4.x, 20998i), 73168i)), Struct_1(false, ~(~(~var_3.b)), -(~var_4 ^ ~vec4<i32>(var_3.c.x, 12722i, 1i, var_2.x)), any(!func_2())), Struct_1(false, var_3.b, var_3.c, var_0.x), ~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_2.x, -41021i), 13580i), vec2<i32>(30715i, u_input.d.x)), -1i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    var var_0 = Struct_1(true, func_4(func_2()).b.b, arg_1.c, any(vec3<bool>(!arg_1.a, func_3(u_input.e.x, 14706i, arg_2) || func_4(vec3<bool>(false, arg_1.a, arg_0.b.d)).b.a, all(select(vec4<bool>(arg_0.a.d.d, arg_1.d, true, arg_0.a.c.d), vec4<bool>(arg_1.a, false, false, arg_0.b.d), arg_0.c.a)))));
    var var_1 = arg_0.b.c.wxx;
    var_0 = func_4(vec3<bool>(func_3(55810u, _wgslsmith_mod_i32(reverseBits(var_0.c.x), arg_1.c.x), 1000f), arg_1.a, -1153f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, arg_2)) - _wgslsmith_f_op_f32(-185f * -1537f)))).a.d;
    let var_2 = vec3<f32>(-567f, arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-190f + _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(arg_2 - 811f))), 1370f)));
    var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.c.c.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(24722i, u_input.d.x) >> (arg_1.b.wx % vec2<u32>(32u)), arg_1.c.yz)), i32(-1i) * -2147483647i, ~arg_1.c.x) >> (arg_0.a.c.b.xzy % vec3<u32>(32u));
    return vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(firstTrailingBit(0u), abs(var_0.b.x)) ^ max(1u, 70770u), var_0.b.x), ~var_0.b.x, 4294967295u, firstTrailingBit(0u));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> bool {
    var var_0 = -firstTrailingBit(-(-u_input.d.x << (_wgslsmith_add_u32(arg_0, 1u) % 32u)));
    var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(-(u_input.d.x >> (1u % 32u)), 7561i), 24420i);
    let var_1 = Struct_1(true, func_5(func_4(!func_2()), Struct_1(false & arg_1.x, _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.c, 4294967295u), ~vec4<u32>(70661u, arg_0, u_input.b.x, u_input.e.x)), -(vec4<i32>(u_input.d.x, 18232i, u_input.d.x, 1i) | vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2262f + _wgslsmith_f_op_f32(step(-631f, -700f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -656f))))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.d.x << (arg_0 % 32u), 1i, u_input.d.x << (1u % 32u), ~u_input.d.x)), abs(func_4(arg_1).b.c & max(vec4<i32>(-78791i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x)))), true);
    let var_2 = ~7583u;
    var var_3 = max(firstLeadingBit(max(countOneBits(-var_1.c.x), 1i)), -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, var_1.c.x), var_1.c.wzw), var_1.c.x));
    return var_1.d | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true && all(vec3<bool>(select(true, false, true), true, true)), false, func_1(~0u, vec3<bool>(true, any(vec2<bool>(true, true)) | any(vec4<bool>(false, true, false, false)), true)));
    var_0 = all(vec3<bool>(!all(vec2<bool>(false, false)) | select(false, true, true), func_1(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c, 4294967295u, 22495u, u_input.a), vec4<u32>(u_input.c, u_input.e.x, 1u, 4294967295u)), abs(vec4<u32>(u_input.c, u_input.b.x, u_input.a, 119539u))), vec3<bool>(true, true, true)), !(false & func_4(vec3<bool>(true, true, true)).c.d)));
    var var_1 = vec3<u32>(9013u, 4294967295u, min(~_wgslsmith_add_u32(27962u, u_input.b.x), _wgslsmith_mod_u32(~u_input.b.x, ~_wgslsmith_div_u32(1u, 1u))));
    var var_2 = 26814u;
    let var_3 = u_input.d;
    var_2 = _wgslsmith_mult_u32(4294967295u, var_1.x);
    let var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x >> (_wgslsmith_div_u32(4294967295u, ~u_input.e.x) % 32u));
}

