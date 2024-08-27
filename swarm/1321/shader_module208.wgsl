struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = false;
    var var_1 = !(!(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0, true, var_0), !vec3<bool>(true, var_0, true))));
    return -1770f;
}

fn func_2() -> i32 {
    var var_0 = ~(abs(vec3<i32>(u_input.a, 20905i, -30025i)) | (~(~vec3<i32>(-14862i, u_input.a, u_input.a)) >> (_wgslsmith_sub_vec3_u32(u_input.b.zzw, u_input.b.yzx | u_input.b.yzy) % vec3<u32>(32u))));
    var_0 = ~select(min(select(~vec3<i32>(var_0.x, var_0.x, 11986i), reverseBits(vec3<i32>(var_0.x, 2147483647i, -1i)), true), vec3<i32>(_wgslsmith_sub_i32(9613i, -33404i), min(var_0.x, var_0.x), max(u_input.a, 1i))), ~(-vec3<i32>(var_0.x, 0i, 1i)), true);
    var_0 = countOneBits(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<i32>(1i, var_0.x, u_input.a)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, -7565i, -50164i), vec3<i32>(var_0.x, var_0.x, 29432i), vec3<i32>(-1i, 2147483647i, var_0.x))) >> (u_input.b.wyx % vec3<u32>(32u)));
    var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(abs(1i), abs(2147483647i << (u_input.b.x % 32u))), u_input.a), 1i, 0i);
    let var_1 = Struct_1(any(vec2<bool>(true, true)), vec3<f32>(_wgslsmith_div_f32(-2595f, 1216f), _wgslsmith_f_op_f32(func_3(Struct_2(-vec4<i32>(-8338i, 13070i, u_input.a, -1i), 14531i, ~u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1161f))) - -762f)), -abs(firstTrailingBit(vec3<i32>(u_input.a, 55640i, -1i)) & -vec3<i32>(var_0.x, var_0.x, 0i)), true);
    return abs(-u_input.a);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(select(select(vec2<i32>(-90478i, 35583i), arg_3.c.xy >> (u_input.b.yw % vec2<u32>(32u)), vec2<bool>(false, arg_1)), _wgslsmith_add_vec2_i32(-vec2<i32>(0i, -16185i), firstTrailingBit(arg_3.c.yz)), !vec2<bool>(arg_3.a, false))), vec2<i32>(u_input.a, min(select(_wgslsmith_div_i32(1i, arg_3.c.x), arg_0, -1i > arg_2.b), ~(u_input.a | arg_3.c.x))));
    var var_1 = ~14370u;
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 54385u, u_input.b.x, u_input.c) & arg_2.c), ~(~vec4<u32>(arg_2.c.x, u_input.b.x, 4294967295u, u_input.c))) >> (u_input.c % 32u));
    var var_3 = arg_3.b.x;
    let var_4 = Struct_2(vec4<i32>(2147483647i, ~max(_wgslsmith_div_i32(var_0, u_input.a), arg_3.c.x ^ -53346i), firstTrailingBit(-2147483647i), ~(~(-21863i))), ~arg_3.c.x, ~(~arg_2.c ^ u_input.b));
    return _wgslsmith_add_u32(~452u, ~_wgslsmith_dot_vec2_u32(u_input.b.yw, _wgslsmith_mult_vec2_u32(select(arg_2.c.zz, var_4.c.xy, vec2<bool>(true, arg_1)), vec2<u32>(var_4.c.x, u_input.c))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    return func_4(func_2(), any(select(vec3<bool>(true, any(vec3<bool>(arg_0.d, arg_0.d, arg_0.d)), arg_0.a | arg_0.d), vec3<bool>(true, true, true), vec3<bool>(arg_0.d, true, u_input.a == u_input.a))), Struct_2(~vec4<i32>(firstTrailingBit(arg_0.c.x), u_input.a, _wgslsmith_sub_i32(161i, -1i), _wgslsmith_clamp_i32(u_input.a, arg_0.c.x, u_input.a)), u_input.a, vec4<u32>(min(countOneBits(u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), ~(~72561u), ~42310u, u_input.b.x)), arg_0);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(vec4<i32>(-arg_1.c.x, arg_1.c.x | countOneBits(arg_1.c.x), abs(_wgslsmith_sub_i32(-1i, 2147483647i) ^ u_input.a), 1i), 1i, ~vec4<u32>(83736u, u_input.b.x ^ firstLeadingBit(u_input.c), _wgslsmith_add_u32(~90978u, ~4294967295u), u_input.b.x & firstLeadingBit(u_input.b.x)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(trunc(1443f))) * 455f), _wgslsmith_f_op_f32(-667f - -1000f));
    var var_2 = ~firstTrailingBit(min(4294967295u, _wgslsmith_mod_u32(var_0.c.x, min(var_0.c.x, var_0.c.x))));
    var_2 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c, max(0u, u_input.b.x ^ u_input.b.x), var_0.c.x), ~countOneBits(1u >> (u_input.c % 32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1170f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - arg_3.x)), var_1.x, true))));
    return Struct_1(arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(600f, 287f)))), 1562f, _wgslsmith_f_op_f32(var_1.x * arg_3.x))), -abs(reverseBits(vec3<i32>(-2147483647i, u_input.a, var_0.a.x) & arg_1.c)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1160f)), _wgslsmith_f_op_f32(f32(-1f) * -224f))), -334f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1656f - 106f) + 182f), -271f));
    let var_1 = func_5(vec4<bool>(true, false, 113537u > func_1(Struct_1(false, vec3<f32>(var_0.x, var_0.x, -1986f), vec3<i32>(-61731i, u_input.a, 28721i), true), vec3<f32>(202f, 194f, 1279f)), false), Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-459f, var_0.x, -1575f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -983f, -135f))))), -countOneBits(-vec3<i32>(u_input.a, -16268i, 15136i)), any(vec4<bool>(false, true, any(vec2<bool>(false, true)), true))), true, var_0);
    let var_2 = var_1;
    var var_3 = var_2.a;
    var var_4 = select(select(!select(select(vec2<bool>(true, var_2.d), vec2<bool>(false, var_1.d), true), select(vec2<bool>(false, var_2.d), vec2<bool>(true, var_1.a), false), vec2<bool>(var_2.d, true)), select(select(!vec2<bool>(var_2.a, true), select(vec2<bool>(var_2.d, var_2.a), vec2<bool>(false, true), var_1.a), !vec2<bool>(var_1.d, false)), !(!vec2<bool>(true, var_1.a)), var_2.a), !(!(!vec2<bool>(var_1.d, var_1.d)))), vec2<bool>(var_2.d, func_5(select(!vec4<bool>(var_2.d, var_1.d, var_2.d, true), select(vec4<bool>(false, var_1.d, false, var_1.d), vec4<bool>(false, false, var_1.d, var_2.a), vec4<bool>(true, false, false, var_2.a)), false), Struct_1(var_1.d, vec3<f32>(var_1.b.x, 166f, -252f), ~vec3<i32>(1i, var_1.c.x, 6936i), false), var_2.c.x <= -28348i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.b.zz)))).a), !var_1.d);
    var var_5 = !vec4<bool>(!var_4.x, true, !func_5(select(vec4<bool>(false, true, var_4.x, false), vec4<bool>(var_1.d, var_4.x, var_1.a, false), var_1.a), func_5(vec4<bool>(var_2.d, var_2.a, var_4.x, false), Struct_1(var_2.a, vec3<f32>(var_2.b.x, var_0.x, 268f), vec3<i32>(10988i, var_1.c.x, -5493i), true), true, var_2.b.zz), any(vec3<bool>(false, true, var_1.a)), vec2<f32>(1149f, var_0.x)).d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(515f + -2589f), _wgslsmith_f_op_f32(1016f - var_2.b.x)) != _wgslsmith_f_op_f32(-var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.b.wwx, _wgslsmith_add_vec3_u32(~(u_input.b.xyz | u_input.b.xww), ~(vec3<u32>(u_input.b.x, 12589u, u_input.b.x) ^ u_input.b.xyx))), 1108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-486f, var_2.b.x)))) + 431f)));
}

