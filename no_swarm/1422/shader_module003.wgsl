struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = ~firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(76235i, -42497i, arg_2.a, -17621i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_0, -10801i, -22060i), vec4<i32>(var_0.a, 1i, arg_0, arg_1), vec4<i32>(arg_0, u_input.c, -42563i, u_input.c))), reverseBits(min(vec4<i32>(var_0.a, -2147483647i, arg_1, -2147483647i), vec4<i32>(var_0.a, u_input.c, arg_1, 37031i)))));
    var_0 = arg_2;
    var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-14130i, u_input.c, _wgslsmith_mod_i32(-arg_0, u_input.c & 0i), 1i), reverseBits(~(~vec4<i32>(arg_1, arg_1, u_input.c, var_0.a) >> (u_input.e % vec4<u32>(32u)))));
    return Struct_2(-12289i);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(~(~_wgslsmith_sub_u32(firstLeadingBit(u_input.b), ~62660u)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1708f)), 425f))) < _wgslsmith_f_op_f32(-800f * 532f), reverseBits(vec2<i32>(u_input.c, func_2(0i, ~u_input.c, Struct_2(0i)).a)), ~u_input.c);
    let var_1 = _wgslsmith_sub_i32(~var_0.d.x, abs(u_input.c));
    let var_2 = select(!var_0.c, false, true);
    var_0 = Struct_1(58445u, u_input.c, u_input.c <= ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, -1i, -21616i), vec3<i32>(35119i, var_1, var_1))), var_0.d, var_0.d.x);
    var_0 = Struct_1(36002u, 1i | ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(-1i, u_input.c, 0i))), true, vec2<i32>(u_input.c, ~var_0.b), reverseBits(~_wgslsmith_clamp_i32(abs(var_0.d.x), _wgslsmith_mult_i32(0i, -2147483647i), func_2(var_1, -11091i, Struct_2(-2147483647i)).a)));
    return select(!select(!select(vec4<bool>(var_0.c, var_2, true, var_0.c), vec4<bool>(true, var_2, false, var_0.c), vec4<bool>(var_0.c, var_0.c, var_2, var_0.c)), select(vec4<bool>(var_0.c, var_0.c, true, var_2), vec4<bool>(var_0.c, var_0.c, var_2, false), true), true), select(select(select(select(vec4<bool>(true, false, var_2, false), vec4<bool>(var_0.c, var_2, true, false), true), !vec4<bool>(var_2, false, var_2, var_2), select(vec4<bool>(false, var_0.c, false, true), vec4<bool>(var_2, var_0.c, var_0.c, var_2), var_2)), select(vec4<bool>(false, var_2, var_2, true), select(vec4<bool>(var_0.c, true, var_2, false), vec4<bool>(true, var_2, false, false), vec4<bool>(var_0.c, true, false, var_2)), var_2), !var_2), select(!select(vec4<bool>(var_2, var_0.c, var_2, true), vec4<bool>(var_2, var_0.c, true, false), vec4<bool>(var_2, false, false, false)), !select(vec4<bool>(var_2, var_0.c, false, false), vec4<bool>(false, true, false, false), vec4<bool>(var_0.c, var_0.c, var_2, var_0.c)), !any(vec4<bool>(true, false, var_0.c, false))), false), !vec4<bool>((u_input.d < var_0.a) & true, true, var_2, var_0.c));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = func_2(u_input.c, arg_1.b, Struct_2(35062i));
    let var_1 = all(!(!func_3()));
    var var_2 = 0u;
    let var_3 = true;
    var var_4 = ((arg_2.x > arg_1.a) == (func_3().x | true)) != func_3().x;
    return Struct_2(_wgslsmith_mult_i32(-52572i, countOneBits(0i)) >> (arg_1.a % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> StorageBuffer {
    let var_0 = u_input.e.ywy ^ vec3<u32>(4294967295u & abs(u_input.e.x | 0u), ~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, abs(107925u)), ~vec2<u32>(u_input.a, u_input.e.x) >> (select(u_input.e.yx, u_input.e.yz, arg_2) % vec2<u32>(32u))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1817f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f + 658f))));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(453f))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-933f - _wgslsmith_div_f32(-1000f, -997f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + -1241f);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(1648f)), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -785f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(831f, -1000f, -119f, 839f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, 407f, 665f, -1665f)), any(vec2<bool>(false, arg_2)))))), var_0 >> (vec3<u32>(u_input.b, 25102u, countOneBits(var_0.x)) % vec3<u32>(32u)), -vec4<i32>(-22637i, ~arg_0.a, _wgslsmith_add_i32(var_1.a, -6538i), -22930i), _wgslsmith_f_op_f32(max(1f, 1426f)), ~var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(697f, _wgslsmith_f_op_f32(sign(-1381f)), 1011f);
    let var_1 = false;
    var var_2 = -1337i;
    let var_3 = false;
    let var_4 = Struct_1(~(~27055u ^ u_input.d), -u_input.c ^ u_input.c, var_3, vec2<i32>(-u_input.c, -1i), u_input.c);
    let x = u_input.a;
    s_output = func_4(func_1(!(!(var_3 && var_4.c)), Struct_1(69035u, -_wgslsmith_mod_i32(var_4.b, 0i), true, _wgslsmith_mult_vec2_i32(var_4.d, -vec2<i32>(u_input.c, u_input.c)), countOneBits(-2147483647i)), _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(u_input.d, 4294967295u, u_input.d, 0u))), u_input.e)), vec3<i32>(u_input.c, u_input.c, 24889i), !var_1);
}

