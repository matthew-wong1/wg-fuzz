struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = select(-12835i, 0i, false);
    var var_1 = arg_2;
    var_1 = arg_0.a.x;
    var var_2 = arg_3;
    var_1 = -101f;
    return select(firstLeadingBit(firstLeadingBit(arg_0.c.b)), (-19469i << (1u % 32u)) << (1u % 32u), any(vec2<bool>(any(vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, false, false, true)))));
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<i32>(~_wgslsmith_mult_i32(_wgslsmith_div_i32(-36482i, min(24984i, -2147483647i)), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, select(-2147483647i, -27706i, true))), _wgslsmith_div_i32(1i, abs(2254i)), (4590i << ((46393u ^ u_input.b.x) % 32u)) & -(func_3(Struct_2(vec4<f32>(-495f, 978f, 1324f, -198f), 576f, Struct_1(vec4<u32>(1u, u_input.d, u_input.b.x, u_input.d), 2147483647i)), Struct_2(vec4<f32>(1070f, 409f, 685f, -377f), -736f, Struct_1(vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.a), -1589i)), -685f, Struct_3(Struct_2(vec4<f32>(992f, -235f, -1170f, 297f), -474f, Struct_1(vec4<u32>(u_input.d, 3417u, u_input.a, u_input.c), -5388i)), Struct_1(vec4<u32>(4294967295u, 1u, u_input.c, 1u), 25671i))) >> (firstLeadingBit(u_input.c) % 32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2132f, -249f), 889f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(763f)) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1086f, 506f))), _wgslsmith_f_op_f32(126f * _wgslsmith_f_op_f32(floor(-2392f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1782f - -1605f))))), Struct_1(vec4<u32>(_wgslsmith_clamp_u32(abs(44051u), abs(1u), ~u_input.a), ~1u, 1u, u_input.c), var_0.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b - -2014f), _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, -1508f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -368f, var_1.b, 630f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))), _wgslsmith_f_op_f32(-var_1.a.x), Struct_1(vec4<u32>(reverseBits(firstLeadingBit(54696u)), _wgslsmith_div_u32(~var_1.c.a.x, var_1.c.a.x), 1u, u_input.b.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(max(vec4<i32>(var_0.x, var_1.c.b, var_1.c.b, var_0.x), vec4<i32>(0i, var_0.x, var_0.x, -2147483647i))), vec4<i32>(countOneBits(var_1.c.b), 0i, 1i, max(var_0.x, var_1.c.b)))));
    var_0 = firstTrailingBit(reverseBits(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, 2147483647i, -59154i), select(vec3<i32>(0i, 2147483647i, var_2.c.b), vec3<i32>(8014i, var_0.x, var_1.c.b), vec3<bool>(true, false, true)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-682f, _wgslsmith_f_op_f32(-1284f - -447f), var_1.b, var_2.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_2.a))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), all(vec3<bool>(true, true, true))))), vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2986f) - 555f), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(sign(var_1.a.x))), 1000f), false)), _wgslsmith_f_op_f32(floor(1675f)), var_1.c);
    return Struct_3(var_1, var_3.c);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -998f, -1998f, var_0.a.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(514f * _wgslsmith_f_op_f32(step(var_0.a.b, 1000f))))), var_0.b), var_0.a.c);
    var var_1 = vec3<i32>(-13805i, abs(9339i), _wgslsmith_add_i32(~12248i, i32(-1i) * -2147483647i) >> (u_input.d % 32u));
    return func_2().b;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.c.a.x, 13322u) ^ u_input.a, 43087u), ~arg_0.c.a.x << (arg_0.c.a.x % 32u), (44982u & u_input.a) >> (32793u % 32u)), countOneBits(_wgslsmith_add_vec3_u32(~arg_0.c.a.xwz, arg_0.c.a.zyz) ^ arg_0.c.a.zxx));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.b, 394f, arg_0.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-140f, -1487f, arg_0.a.x, arg_0.a.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a, arg_0.a) * _wgslsmith_div_vec4_f32(vec4<f32>(-1148f, arg_0.a.x, arg_0.a.x, 1765f), vec4<f32>(-466f, arg_0.b, arg_0.a.x, 254f))))), _wgslsmith_f_op_f32(-arg_0.b), arg_0.c);
    let var_2 = vec3<bool>(arg_1, !(!(!arg_1)), arg_1);
    var_0 = 1u;
    return Struct_3(var_1, arg_0.c);
}

fn func_5(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a.a.x, 184f), arg_0.a.b);
    var_0 = _wgslsmith_f_op_f32(762f - arg_0.a.a.x);
    var_0 = _wgslsmith_f_op_f32(-948f + -579f);
    var var_1 = countOneBits(select(vec3<i32>(-1i, abs(arg_0.a.c.b), arg_0.a.c.b), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.b, arg_0.b.b, arg_0.a.c.b), vec3<i32>(arg_0.b.b, arg_0.a.c.b, 25028i)), vec3<i32>(-31581i, 39440i, arg_0.a.c.b)), vec3<bool>(true, true, true))) >> (_wgslsmith_add_vec3_u32(arg_0.b.a.wxz, arg_0.b.a.yyy) % vec3<u32>(32u));
    let var_2 = arg_0.a.c;
    return 6305i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(func_5(func_4(Struct_2(vec4<f32>(686f, -660f, 1000f, 346f), _wgslsmith_div_f32(-799f, -942f), func_1(1285f)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))))), 12055i);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(func_4(func_4(Struct_2(vec4<f32>(-169f, 1000f, -1000f, -929f), -743f, Struct_1(vec4<u32>(34132u, 0u, 25410u, 1u), -31174i)), true).a, any(vec2<bool>(true, false))).a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f * 734f)))), 1000f, 624f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 271f) + -669f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f - 312f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f - 1000f)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -360f))))), select(vec3<bool>(!(u_input.b.x == u_input.d), u_input.a <= 27760u, true), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), true), vec3<bool>(!select(false, true, false), false, all(vec4<bool>(false, false, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_1);
}

