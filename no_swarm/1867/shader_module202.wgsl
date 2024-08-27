struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(reverseBits(min(u_input.a, -16235i)), vec4<i32>(u_input.a, min(-19839i, abs(-2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_div_i32(2147483647i, 1i), u_input.a), abs(-vec3<i32>(u_input.a, -2147483647i, u_input.a))), 64695i), max(vec2<i32>(-1i, _wgslsmith_div_i32(u_input.a ^ u_input.a, 1i)), vec2<i32>(u_input.a, u_input.a) ^ abs(vec2<i32>(0i, -72985i))), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), select(vec3<bool>(true, all(vec2<bool>(false, false)), select(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), vec3<bool>(select(u_input.a, 2147483647i, true) > -2147483647i, select(true, false, true), true)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -900f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f))) * -1000f));
    let var_2 = Struct_1(_wgslsmith_div_i32(-max(var_0.c.x, ~u_input.a), 1i), reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b, var_0.b), -vec4<i32>(u_input.a, 1i, -693i, u_input.a))) | vec4<i32>(var_0.b.x, _wgslsmith_add_i32(var_0.c.x, var_0.c.x), var_0.b.x, reverseBits(~(-51952i))), -(~(-firstTrailingBit(var_0.b.yy))), !vec3<bool>(any(vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), true, true));
    let var_3 = var_2.b.wzz;
    var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(var_1.x * var_1.x), true)))));
    return -var_2.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(func_3() | u_input.a), vec4<i32>(func_3(), u_input.a, u_input.a, -u_input.a), vec2<i32>(_wgslsmith_div_i32(u_input.a, -2147483647i) >> (max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 5562u), vec3<u32>(80947u, 93755u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(4294967295u, 52223u, 4294967295u, 0u))) % 32u), reverseBits(_wgslsmith_mod_i32(u_input.a, ~u_input.a))), vec3<bool>(true, true, true));
    var var_1 = Struct_1(u_input.a, ~vec4<i32>(~1i, i32(-1i) * -var_0.c.x, -var_0.a, var_0.c.x), -vec2<i32>(var_0.c.x, 1i), select(vec3<bool>(true, firstTrailingBit(20544u) != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u)), any(select(vec2<bool>(var_0.d.x, var_0.d.x), vec2<bool>(false, true), var_0.d.zx))), select(select(var_0.d, var_0.d, true), vec3<bool>(all(vec3<bool>(false, var_0.d.x, var_0.d.x)), var_0.d.x || var_0.d.x, var_0.d.x & true), !var_0.d.x), all(vec4<bool>(var_0.d.x, u_input.a <= -1i, var_0.d.x, all(var_0.d.xy)))));
    let var_2 = var_0.d.x;
    let var_3 = Struct_1(abs(-1i), ~reverseBits(select(vec4<i32>(var_0.a, var_0.b.x, -12258i, 26380i), var_0.b, true)) << (vec4<u32>(_wgslsmith_add_u32(4210u, 1u), 1u, 1u, ~1u) % vec4<u32>(32u)), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-91503i, ~2147483647i)), vec2<i32>(u_input.a, abs(~var_1.a))), !(!(!var_0.d)));
    var_1 = var_0;
    return Struct_1(var_3.a | ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, u_input.a, 0i, 11606i)), vec4<i32>(-2147483647i, var_1.a, var_1.c.x, var_1.b.x) | vec4<i32>(-1i, var_3.b.x, 14313i, 50525i)), var_0.b, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_3.a, var_0.b.x), 1i), firstTrailingBit(var_0.b.xx)), select(vec3<bool>(true, !any(vec3<bool>(false, var_2, var_2)), var_3.d.x), vec3<bool>(all(vec4<bool>(var_3.d.x, var_1.d.x, true, true)), any(!var_3.d.yx), true), all(!select(vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_1.d.x, false, var_0.d.x), vec4<bool>(false, var_0.d.x, true, false)))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = -173f;
    var var_1 = func_2();
    let var_2 = !func_2().d;
    var var_3 = firstTrailingBit(func_2().b);
    let var_4 = func_2();
    return Struct_1(arg_1.x, vec4<i32>(u_input.a, var_4.b.x, countOneBits(_wgslsmith_mult_i32(u_input.a, 2147483647i)), -1i) & var_1.b, ~var_4.c, vec3<bool>(true, false && (all(var_2) && var_2.x), true));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    var var_0 = func_2();
    var_0 = arg_0;
    var var_1 = arg_0;
    var_0 = Struct_1(-arg_0.b.x, vec4<i32>(reverseBits(-44282i), 1i, _wgslsmith_mult_i32(countOneBits(0i), _wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(-14241i, -17905i, -1i, 2147483647i))), ~(i32(-1i) * -2147483647i)) ^ firstLeadingBit(-_wgslsmith_div_vec4_i32(var_0.b, var_0.b)), vec2<i32>(-1i) * -var_1.b.yz, arg_0.d);
    var var_2 = Struct_1(~min(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1.b.yyz, var_1.b.yyw), arg_0.b.wyx), i32(-1i) * -1i), arg_0.b, var_1.c, arg_2.zxz);
    return abs(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(func_1(22138u, abs(~vec2<i32>(u_input.a, -234i))), _wgslsmith_sub_u32(4294967295u, ~1u), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)), reverseBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(0i, 0i, u_input.a, 2147483647i), func_2().b, select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), i32(-1i) * -2147483647i, reverseBits(1i), max(u_input.a, u_input.a)))), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a), ~vec2<i32>(u_input.a, u_input.a)) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, 11911u) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a))), select(select(func_1(~1u, select(vec2<i32>(22664i, 2147483647i), vec2<i32>(50470i, u_input.a), false)).d, vec3<bool>(true, true, true), true), vec3<bool>(!any(vec4<bool>(false, false, false, false)), all(vec2<bool>(true, true)), select(true, any(vec2<bool>(true, true)), true)), any(vec4<bool>(true, true, true, true)) || (0i >= ~u_input.a)));
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = func_2();
    var var_2 = func_2();
    var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-249f, 1000f, -182f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -587f, -305f) * vec3<f32>(1916f, -1492f, -1580f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-601f, -1336f, -492f) + vec3<f32>(-1116f, -1619f, -581f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -347f, 399f))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 163f, 1000f) + vec3<f32>(1000f, -539f, 830f)), vec3<f32>(-1938f, 1000f, -240f), false))))));
    var_1 = Struct_1(-(0i << (1u % 32u)), firstTrailingBit(vec4<i32>(23388i, 58292i, func_1(1u, vec2<i32>(var_2.b.x, var_1.a)).b.x >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u), -17874i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(36958i, 0i ^ u_input.a), var_2.c), !func_2().d);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec3<i32>(min(var_1.c.x, -2788i), var_0.c.x, 17978i)));
}

