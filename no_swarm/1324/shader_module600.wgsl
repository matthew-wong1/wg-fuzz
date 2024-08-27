struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> f32 {
    var var_0 = (~u_input.b << ((abs(32029u ^ arg_1.x) ^ 1u) % 32u)) | _wgslsmith_div_u32(~firstLeadingBit(~u_input.b), countOneBits(~(~arg_1.x)));
    let var_1 = arg_0.b;
    var var_2 = Struct_4(vec2<u32>(~(_wgslsmith_dot_vec2_u32(arg_1.yx, arg_1.xx) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, 33265u), vec4<u32>(u_input.b, 48366u, u_input.b, u_input.b))), _wgslsmith_mod_u32(9957u, _wgslsmith_div_u32(arg_1.x, abs(1u)))), ~(-11165i));
    var_0 = _wgslsmith_clamp_u32(~1u, ~(~103494u), var_2.a.x) & countOneBits(1u);
    let var_3 = Struct_5(34560u == _wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x << (var_2.a.x % 32u)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2219i, -27484i, var_1.a.x), vec3<i32>(arg_0.b.a.x, u_input.a, arg_0.b.a.x) & vec3<i32>(u_input.a, 33410i, -1i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(24437i, var_2.b, var_2.b), vec3<i32>(-2147483647i, var_2.b, 2147483647i)), abs(var_2.b))), select(u_input.a | (var_2.b >> (22207u % 32u)), -(u_input.a & 0i), all(select(vec3<bool>(true, arg_0.b.b.x, false), vec3<bool>(false, var_1.b.x, false), vec3<bool>(arg_0.b.b.x, true, arg_0.b.b.x)))), var_1.a.x, u_input.a));
    return arg_0.a;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(2147483647i, 1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-32495i, u_input.c, -5263i, arg_1.x)), ~vec4<i32>(-2751i, arg_1.x, 2147483647i, arg_1.x)), (20701i ^ arg_1.x) ^ -3308i), i32(-1i) * -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)));
    var_0 = reverseBits(arg_1) & arg_1;
    let var_2 = Struct_5(!any(vec4<bool>(true, u_input.b > u_input.b, false, true)), vec4<i32>(16890i, ~(-_wgslsmith_div_i32(7857i, arg_1.x)), u_input.a, ~arg_1.x));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(var_1 - 1000f), Struct_1(vec2<i32>(1i, arg_1.x), vec2<bool>(var_2.a, var_2.a))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 32037u, arg_0), vec3<u32>(arg_0, 18128u, 0u), vec3<u32>(41722u, u_input.b, 4294967295u)))) >= var_1, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~var_2.b.zxx, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, arg_1.x), vec3<i32>(var_0.x, u_input.c, 38333i))), -39316i, _wgslsmith_add_i32(-1i, ~26803i), 16197i), var_2.b));
    return Struct_3(-649f, Struct_1(arg_1.yy, select(vec2<bool>(true, true), arg_2, arg_2)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    var var_0 = min(vec3<u32>(~21210u, ~(~(~u_input.b)), u_input.b), ~(~(_wgslsmith_mod_vec3_u32(vec3<u32>(37767u, 1u, u_input.b), vec3<u32>(1u, 13314u, 28798u)) | vec3<u32>(arg_0.a.x, u_input.b, u_input.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, arg_1.a))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), -335f, 261f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, arg_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-813f, arg_1.a, arg_1.a) + vec3<f32>(arg_1.a, -532f, -865f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, -898f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(959f, arg_1.a, -2040f) * vec3<f32>(arg_1.a, arg_1.a, 808f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(283f, 1716f, arg_1.a) - vec3<f32>(arg_1.a, -1000f, -2267f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1093f, 541f, 1408f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, 450f, arg_1.a)))))));
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.a.x, -_wgslsmith_sub_i32(-1i, u_input.a)), vec2<i32>(var_2.b >> (arg_0.a.x % 32u), _wgslsmith_add_i32(-45955i, 31793i)) << ((var_0.zx << (vec2<u32>(var_0.x, 4214u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(max(_wgslsmith_mult_i32(9366i, var_2.b), arg_1.b.a.x), -26112i)), vec2<bool>(true, !arg_1.b.b.x));
    var var_4 = Struct_5(false, ~(-_wgslsmith_clamp_vec4_i32(min(vec4<i32>(var_2.b, u_input.a, 10891i, var_2.b), vec4<i32>(var_3.a.x, 1i, 0i, arg_1.b.a.x)), min(vec4<i32>(arg_0.b, -2147483647i, var_3.a.x, var_2.b), vec4<i32>(-25821i, var_2.b, -1i, 0i)), vec4<i32>(var_2.b, var_2.b, var_3.a.x, 2147483647i) << (vec4<u32>(var_2.a.x, 64718u, arg_0.a.x, 35156u) % vec4<u32>(32u)))));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> vec3<bool> {
    let var_0 = 15251u;
    var var_1 = Struct_5(1u <= _wgslsmith_clamp_u32(abs(29129u), u_input.b, ~1u), select(vec4<i32>(countOneBits(47260i), -23404i, arg_0.b.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 8761i, arg_0.b.a.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c, 1i, -14948i), vec4<i32>(15037i, u_input.a, arg_0.b.a.x, 2147483647i)))), vec4<i32>(1i, -u_input.c, 2147483647i, func_2(4294967295u, vec3<i32>(-27039i, -2147483647i, -2147483647i), vec2<bool>(true, true)).b.a.x & 27576i), !select(select(vec4<bool>(arg_0.b.b.x, true, true, true), vec4<bool>(false, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x), arg_0.b.b.x), !vec4<bool>(true, true, arg_0.b.b.x, arg_0.b.b.x), arg_0.b.b.x)));
    let var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, _wgslsmith_sub_u32(var_0 ^ 25468u, var_0), 0u), _wgslsmith_mod_vec3_u32(~min(vec3<u32>(6002u, 0u, var_0), abs(vec3<u32>(0u, var_0, 1u))), ~vec3<u32>(0u & u_input.b, reverseBits(var_0), 0u)));
    var_1 = Struct_5(arg_0.b.b.x, firstTrailingBit(vec4<i32>(u_input.c, func_4(Struct_4(vec2<u32>(var_2, u_input.b), 1i), arg_0).b.a.x, -arg_0.b.a.x, _wgslsmith_add_i32(var_1.b.x >> (u_input.b % 32u), arg_0.b.a.x))));
    let var_3 = ~(~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2, var_0, 4294967295u), ~vec3<u32>(var_0, 1u, 1100u))));
    return select(!select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.a, true, var_1.a), true), select(!vec3<bool>(arg_0.b.b.x, true, true), !vec3<bool>(var_1.a, arg_0.b.b.x, true), select(vec3<bool>(true, true, var_1.a), vec3<bool>(false, var_1.a, false), vec3<bool>(arg_0.b.b.x, true, var_1.a))), select(vec3<bool>(false, var_1.a, false), vec3<bool>(false, var_1.a, arg_0.b.b.x), vec3<bool>(false, true, var_1.a))), select(vec3<bool>(arg_0.b.b.x, true, arg_0.b.b.x), vec3<bool>(!arg_0.b.b.x, true, true), !vec3<bool>(u_input.b > var_0, arg_0.b.b.x, var_3.x != 119816u)), arg_0.b.b.x);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = ~vec3<u32>(u_input.b, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 9282u, 20710u), vec4<u32>(9912u, 1u, 57990u, u_input.b)), u_input.b), 11932u);
    var var_1 = -(~(~0i));
    var_1 = u_input.a;
    return Struct_1(select(countOneBits(_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, u_input.c), vec2<i32>(2147483647i, u_input.c))), countOneBits(~min(vec2<i32>(u_input.c, -5927i), vec2<i32>(u_input.c, u_input.a))), !arg_1.x | false), vec2<bool>(true, firstTrailingBit(u_input.c ^ u_input.c) >= -_wgslsmith_clamp_i32(-29548i, u_input.c, -1i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(12402u, 1u, func_6(select(!(!vec4<bool>(true, true, arg_1.b.x, false)), vec4<bool>(true, true, false, !arg_1.b.x), vec4<bool>(true & arg_1.b.x, any(vec3<bool>(false, arg_1.b.x, false)), arg_1.a.x >= -1i, arg_1.b.x)), func_5(func_4(Struct_4(vec2<u32>(u_input.b, u_input.b), 38634i), func_2(u_input.b, vec3<i32>(arg_0.x, -1i, 17563i), vec2<bool>(arg_1.b.x, arg_1.b.x))), -1497f)));
    let var_1 = select(select(select(select(vec4<bool>(true, true, arg_1.b.x, arg_1.b.x), vec4<bool>(var_0.c.b.x, true, false, arg_1.b.x), !vec4<bool>(true, arg_1.b.x, true, var_0.c.b.x)), !select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, var_0.c.b.x), vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(var_0.c.b.x, arg_1.b.x, var_0.c.b.x, true)), !arg_1.b.x), vec4<bool>(var_0.c.b.x | (var_0.a != var_0.a), true, arg_1.b.x, true), select(!vec4<bool>(var_0.c.b.x, false, arg_1.b.x, false), vec4<bool>(false, true, func_6(vec4<bool>(false, true, true, true), vec3<bool>(arg_1.b.x, arg_1.b.x, var_0.c.b.x)).b.x, true), arg_1.b.x)), vec4<bool>(false, !any(select(vec4<bool>(var_0.c.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, true, arg_1.b.x, true), vec4<bool>(arg_1.b.x, arg_1.b.x, var_0.c.b.x, arg_1.b.x))), func_5(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -740f), Struct_1(arg_0.zx, vec2<bool>(arg_1.b.x, arg_1.b.x))), -1000f).x, !(!func_2(u_input.b, arg_0, var_0.c.b).b.b.x)), false);
    var_0 = Struct_2(0u, u_input.b, func_4(Struct_4(~(~vec2<u32>(var_0.a, 24990u)), _wgslsmith_add_i32(2147483647i, arg_0.x)), Struct_3(_wgslsmith_f_op_f32(trunc(-800f)), Struct_1(min(vec2<i32>(16944i, arg_0.x), vec2<i32>(2147483647i, -6132i)), vec2<bool>(false, true)))).b);
    var var_2 = func_2(0u, countOneBits(max(reverseBits(vec3<i32>(u_input.a, u_input.a, -28733i)), vec3<i32>(2147483647i ^ u_input.a, ~(-2147483647i), abs(0i)))), vec2<bool>(func_6(select(var_1, vec4<bool>(true, arg_1.b.x, true, arg_1.b.x), var_1), !var_1.zyz).b.x || func_2(~0u, arg_0, func_2(var_0.b, vec3<i32>(u_input.a, 2147483647i, 2147483647i), var_1.wx).b.b).b.b.x, (func_4(Struct_4(vec2<u32>(24656u, u_input.b), -1i), Struct_3(-709f, arg_1)).b.b.x | true) && var_0.c.b.x));
    let var_3 = firstLeadingBit(~(countOneBits(vec4<i32>(1i, -50290i, u_input.a, var_0.c.a.x)) & vec4<i32>(reverseBits(-4830i), -arg_0.x, _wgslsmith_mult_i32(var_2.b.a.x, arg_1.a.x), arg_1.a.x)));
    return select(_wgslsmith_add_u32(9110u, abs(145048u)) & ~(u_input.b << (select(u_input.b, u_input.b, var_2.b.b.x) % 32u)), min(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b, 0u), ~var_0.a) ^ 0u, u_input.b), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~func_1(vec3<i32>(-44039i, -3473i, 1i) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), Struct_1(vec2<i32>(u_input.c, u_input.c), vec2<bool>(true, false))), min(_wgslsmith_sub_u32(~38182u, ~87974u), 14830u >> (u_input.b % 32u)), 16908u), select(select(~(vec3<u32>(14280u, 42429u, 0u) >> (vec3<u32>(u_input.b, u_input.b, 42889u) % vec3<u32>(32u))), ~vec3<u32>(0u, u_input.b, u_input.b), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), vec3<u32>(1u, firstTrailingBit(1u), _wgslsmith_sub_u32(0u, u_input.b) | u_input.b), vec3<bool>(true, false, true)));
    let var_1 = ~abs(firstTrailingBit(vec3<u32>(var_0.x, 1u, 0u) | _wgslsmith_mod_vec3_u32(vec3<u32>(8943u, 52095u, u_input.b), vec3<u32>(4294967295u, u_input.b, 1u))));
    var_0 = ~abs(max(~vec3<u32>(u_input.b, u_input.b, u_input.b), var_1));
    var_0 = abs(var_1);
    let var_2 = Struct_4(~(~var_1.yz), _wgslsmith_div_i32(func_6(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true)))).a.x, _wgslsmith_sub_i32(-4384i << (_wgslsmith_sub_u32(u_input.b, 4294967295u) % 32u), abs(-u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, u_input.b, var_2.a.x, 0u), vec4<u32>(var_2.a.x, var_0.x, 98146u, var_2.a.x)), vec4<u32>(~var_2.a.x, firstLeadingBit(4294967295u), 46524u, firstLeadingBit(u_input.b))), max(vec3<u32>(var_1.x, 17286u, var_0.x) & vec3<u32>(1u, 4294967295u, var_2.a.x), var_1) >> (max(~_wgslsmith_mod_vec3_u32(var_1, var_1), max(var_1, vec3<u32>(var_2.a.x, 36310u, var_1.x))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(func_2(var_1.x, vec3<i32>(27338i, 1i, u_input.a), vec2<bool>(false, false)), var_1)), -709f, true))));
}

