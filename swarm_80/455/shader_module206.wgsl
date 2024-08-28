struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = abs(vec3<i32>(-14322i, -45247i, arg_2.b.x) >> ((~vec3<u32>(16334u, 6703u, 70158u) ^ ~select(vec3<u32>(30095u, 115708u, 16634u), vec3<u32>(1u, 24616u, 21662u), false)) % vec3<u32>(32u)));
    var_0 = arg_2.b.zyy;
    var var_1 = -1i;
    var_1 = -countOneBits(reverseBits(-22863i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1400f, -439f, arg_1.a, -157f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2084f));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_1.x, vec4<i32>(u_input.b, -2147483647i, u_input.a.x, u_input.a.x)), Struct_1(arg_1.x, vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, -47068i)), Struct_1(-391f, vec4<i32>(1i, -35411i, u_input.a.x, u_input.b)), u_input.a.zx)))), arg_1.x), -countOneBits(-min(vec4<i32>(u_input.a.x, u_input.a.x, -29716i, -8802i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 36414i))));
    let var_1 = select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(false, true, true, false)), false), false), !vec3<bool>(select(true, true, all(vec4<bool>(true, true, false, false))), true, false), true);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~var_0.b, select(vec4<i32>(-2147483647i, var_0.b.x, var_0.b.x, -2147483647i), var_0.b, vec4<bool>(false, var_1.x, false, var_1.x))), var_0.b)), Struct_1(arg_1.x, -select(abs(var_0.b), vec4<i32>(-70802i, 1i, -1i, var_0.b.x), var_1.x)));
    let var_3 = Struct_4(select(!var_1, vec3<bool>(any(select(var_1.zy, vec2<bool>(var_1.x, var_1.x), var_1.x)), !var_1.x, any(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, false), var_1.x))), var_1), var_2, reverseBits(u_input.a.zz));
    let var_4 = ~var_3.c;
    return arg_1.x;
}

fn func_1() -> Struct_2 {
    var var_0 = reverseBits(vec4<i32>(u_input.b, u_input.b, ~u_input.a.x, -29619i));
    var var_1 = Struct_3(vec4<f32>(-266f, 413f, _wgslsmith_f_op_f32(-358f * _wgslsmith_f_op_f32(round(-444f))), _wgslsmith_f_op_f32(func_2(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-854f, 602f, -385f), vec3<f32>(1831f, 414f, -905f))))))), select((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, var_0.x, 0i), vec4<i32>(-4863i, var_0.x, var_0.x, 13670i)) == (0i ^ u_input.a.x)) & (true | select(false, true, true)), _wgslsmith_f_op_f32(-689f * -487f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(4294967295u, vec3<f32>(-2040f, -1302f, 1283f))) - _wgslsmith_f_op_f32(func_3(Struct_1(1000f, vec4<i32>(u_input.a.x, var_0.x, 2147483647i, 65160i)), Struct_1(-959f, vec4<i32>(var_0.x, -1i, u_input.a.x, u_input.b)), Struct_1(1214f, vec4<i32>(var_0.x, -19055i, -1i, var_0.x)), var_0.yx))), true), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-163f))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, 37618i, u_input.a.x, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -50438i, var_0.x), vec4<i32>(u_input.b, var_0.x, 2147483647i, u_input.a.x), vec4<i32>(24039i, u_input.b, u_input.a.x, 21947i)))), Struct_1(_wgslsmith_f_op_f32(-2383f - 619f), vec4<i32>(-1i, 13468i, abs(-45351i), 1i))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 2410u, 4294967295u), vec4<u32>(9118u, 58260u, 4294967295u, 1u), vec4<u32>(0u, 1u, 0u, 56195u)) ^ vec4<u32>(1u, 40077u, 25326u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u))));
    var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(1532f, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c.a.b.x, 0i, var_1.c.a.b.x, var_0.x), var_1.c.a.b, var_1.c.b.b)), Struct_1(_wgslsmith_f_op_f32(-var_1.a.x), -var_1.c.b.b), var_1.c.a, var_0.wz)), _wgslsmith_f_op_f32(var_1.c.b.a * -422f), var_1.a.x, var_1.a.x), false, var_1.c, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(max(1u, 4294967295u), _wgslsmith_mod_u32(52930u, 16404u), ~var_1.d)), max(~(vec3<u32>(0u, var_1.d, var_1.d) >> (vec3<u32>(1u, var_1.d, var_1.d) % vec3<u32>(32u))), ~vec3<u32>(56557u, 0u, var_1.d) ^ vec3<u32>(37514u, 973u, var_1.d))));
    var var_2 = _wgslsmith_f_op_f32(func_3(var_1.c.a, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-239f + -152f), _wgslsmith_f_op_f32(func_2(26268u, var_1.a.wzy))))), _wgslsmith_mod_vec4_i32(-select(vec4<i32>(-46269i, -1602i, var_0.x, -18752i), vec4<i32>(-2147483647i, var_1.c.b.b.x, var_0.x, -2147483647i), true), -(~vec4<i32>(-20107i, -27566i, -1i, 18244i)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_div_f32(var_1.c.a.a, 326f)))), firstLeadingBit(vec4<i32>(-1i) * -var_1.c.b.b)), u_input.a.yx & u_input.a.zy));
    let var_3 = firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-30259i ^ var_1.c.a.b.x, -50888i, ~(-13990i), -47266i), vec4<i32>(firstLeadingBit(0i), -6337i, ~(1i & u_input.a.x), 0i)));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = select(vec3<i32>(select(0i, func_1().b.b.x, !any(vec3<bool>(true, true, false))), abs(u_input.b), _wgslsmith_div_i32(-2147483647i, func_1().b.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a.x << (~4294967295u % 32u), -u_input.b), ~u_input.a), vec3<bool>(all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))), false, true));
    var_1 = vec3<i32>(i32(-1i) * -1i, ~(-1i), -2306i);
    let var_2 = i32(-1i) * -1i;
    var var_3 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(-var_1.x, var_1.x, abs(u_input.a.x)), vec3<i32>(var_0.a.b.x, func_1().a.b.x, -u_input.b));
    var var_4 = vec3<bool>(false, true, any(vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), true, !all(vec3<bool>(true, true, true)), false | any(vec3<bool>(false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(countOneBits(1u), 1u, 1u), var_0.b.a);
}

