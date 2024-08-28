struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1137f, _wgslsmith_f_op_f32(-1000f + arg_0.x), arg_0.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 574f, arg_0.x)) - vec3<f32>(660f, arg_0.x, 1696f))), select(u_input.a, select(vec2<i32>(-8977i, 0i) | vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, all(vec3<bool>(false, true, false))), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_clamp_i32(min(-14409i, _wgslsmith_mod_i32(-1i, 32785i)), -1i, _wgslsmith_clamp_i32(1i, 0i, -2713i) | _wgslsmith_mod_i32(0i, u_input.a.x))), abs(select(firstLeadingBit(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, 17524u, arg_1.x), ~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), true)), vec3<f32>(_wgslsmith_f_op_f32(-282f * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(arg_0.x - 336f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-706f + arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1948f) + _wgslsmith_f_op_f32(round(-1729f))) * arg_0.x)), vec4<u32>(1u, ~arg_1.x, arg_1.x, firstTrailingBit(arg_1.x)));
    var_0 = Struct_3(var_0.a, vec4<u32>(var_0.d.x, ~(~_wgslsmith_sub_u32(46070u, arg_1.x)), arg_1.x, var_0.d.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1181f - var_0.c.x))), arg_0.x, -1000f), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_0.d.x, 65015u, 38383u, var_0.b.x) << (~vec4<u32>(arg_1.x, var_0.d.x, 1u, arg_1.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(3844u, 18483u, arg_1.x, 0u)), vec4<u32>(4294967295u, ~1207u, var_0.d.x, select(0u, arg_1.x, true)))));
    let var_1 = Struct_4(-(~(_wgslsmith_mod_vec3_i32(vec3<i32>(-33143i, -22046i, var_0.a.b.x), vec3<i32>(1761i, var_0.a.c, u_input.a.x)) ^ -vec3<i32>(0i, 2147483647i, -1i))), abs(vec2<i32>(u_input.a.x, abs(-var_0.a.c))), Struct_1(~0i));
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(floor(arg_0.xwz)), select(select(vec2<i32>(var_1.c.a, -62374i), var_1.a.xx | var_1.a.zz, true), ~abs(var_1.a.yy), false), -31116i), ~var_0.d, arg_0.yxx, _wgslsmith_mult_vec4_u32(~var_0.b, ~var_0.d));
    var_0 = Struct_3(var_0.a, max(vec4<u32>(~_wgslsmith_sub_u32(var_0.b.x, var_0.d.x), ~_wgslsmith_mult_u32(4294967295u, arg_1.x), min(~arg_1.x, ~var_0.b.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b.x, var_0.d.x), var_0.b.x)), vec4<u32>(abs(firstLeadingBit(57328u)), var_0.b.x, arg_1.x, ~1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(arg_0.x * -1832f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + var_0.c), countOneBits(~var_0.b));
    return (var_0.d | vec4<u32>(~(19765u >> (0u % 32u)), arg_1.x >> (min(var_0.d.x, var_0.b.x) % 32u), arg_1.x, var_0.d.x >> ((24021u >> (arg_1.x % 32u)) % 32u))) ^ var_0.d;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_1.a.x, arg_1.a.x))) + _wgslsmith_f_op_vec3_f32(sign(arg_1.a))), _wgslsmith_sub_vec2_i32(firstTrailingBit(~arg_1.b), vec2<i32>(_wgslsmith_div_i32(arg_0.c, -33957i), _wgslsmith_dot_vec4_i32(vec4<i32>(13273i, -2147483647i, 0i, 2147483647i), vec4<i32>(-23664i, 1i, -37073i, -31836i)))), 9468i), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, 141f, arg_1.a.x, arg_1.a.x), vec4<f32>(719f, arg_1.a.x, arg_0.a.x, 534f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -500f, -322f, arg_0.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1257f, 1476f, arg_0.a.x, -803f), vec4<f32>(arg_0.a.x, arg_1.a.x, -753f, arg_0.a.x))))), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(13910u, 0u), ~vec2<u32>(25401u, 4294967295u)), countOneBits(~vec2<u32>(61918u, 4294967295u)), vec2<u32>(1u, ~4294967295u))), _wgslsmith_f_op_vec3_f32(step(arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, arg_1.a.x), arg_0.a.x, arg_1.a.x) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(arg_1.a.x)), 1727f)))), countOneBits(min(vec4<u32>(firstLeadingBit(0u), 9194u, 33766u, ~4294967295u), vec4<u32>(1u, 1u, ~0u, ~11985u))));
    let var_1 = !(!((18352u >> (firstLeadingBit(4294967295u) % 32u)) <= firstLeadingBit(1u >> (var_0.b.x % 32u))));
    var var_2 = Struct_2(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-1155f * _wgslsmith_f_op_f32(-var_0.c.x)), arg_0.a.x), firstTrailingBit(abs(vec2<i32>(var_0.a.c, 0i) << (var_0.b.yw % vec2<u32>(32u)))), var_0.a.c);
    let var_3 = var_0;
    return ~u_input.a ^ -arg_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = -abs(-43677i & max(arg_0.a.c << (arg_1.b.x % 32u), u_input.a.x));
    let var_1 = _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(firstLeadingBit(~29269i), arg_0.a.c, abs(0i))), select(~(-vec3<i32>(arg_0.a.b.x, -9336i, 0i)), firstLeadingBit(vec3<i32>(arg_1.a.b.x, ~arg_1.a.c, abs(-12152i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1511f - arg_1.a.a.x)) != arg_1.a.a.x));
    let var_2 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-1189f - arg_1.c.x), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-277f * arg_0.a.a.x))), arg_1.a.a.x), vec2<u32>(firstTrailingBit(~arg_0.d.x), abs(arg_0.d.x))).x;
    var var_3 = _wgslsmith_div_f32(103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.a.x)))))));
    let var_4 = vec4<u32>(select(4294967295u, arg_1.b.x, !(!(!arg_2))), ~0u, 0u, ~abs(10221u));
    return arg_0.b.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> u32 {
    var var_0 = func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, -1268f, 503f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, -1000f, -2814f))), func_2(Struct_2(vec3<f32>(142f, 1000f, -610f), vec2<i32>(u_input.a.x, arg_0.x), 39150i), Struct_2(vec3<f32>(-827f, -617f, -832f), vec2<i32>(u_input.a.x, arg_0.x), u_input.a.x)), 1i), (min(vec4<u32>(0u, 4294967295u, 1u, arg_1), vec4<u32>(arg_1, 1u, arg_1, arg_1)) << (vec4<u32>(0u, arg_1, 48915u, arg_1) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_1, 0u, arg_1), vec4<u32>(1u, arg_1, arg_1, 0u), vec4<u32>(7059u, arg_1, arg_1, 34369u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1, 4294967295u, 23444u), vec4<u32>(arg_1, 0u, 53644u, 37085u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1643f, 577f, 1000f), vec3<f32>(-440f, 1000f, -370f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1196f, -448f, 972f), vec3<f32>(555f, -677f, -537f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1105f, -669f))))), firstTrailingBit(vec4<u32>(~arg_1, _wgslsmith_mod_u32(0u, arg_1), ~29359u, ~arg_1))), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-721f, 1000f, 1359f), vec3<f32>(-3153f, 1003f, -1464f))), vec3<f32>(346f, 1378f, -639f), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), min(arg_0.zx, u_input.a), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, -30811i, arg_0.x), arg_0, vec3<bool>(false, false, false)), vec3<i32>(0i, arg_0.x, u_input.a.x) << (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u)))), vec4<u32>(6082u >> (0u % 32u), 1u, 1u, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(-793f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-528f, -588f, 1217f) - vec3<f32>(-136f, -964f, 660f))), max(vec4<u32>(1u, ~arg_1, 1381u, ~arg_1), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_1, arg_1, arg_1), countOneBits(vec4<u32>(1u, 1u, arg_1, arg_1))))), !any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_div_i32(u_input.a.x, -39678i);
    var_0 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, 33023u, arg_1), vec3<u32>(32040u, arg_1, arg_1))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 0u, arg_1), vec4<u32>(102242u, arg_1, 98279u, 10737u)), arg_1)), arg_1);
    var var_2 = !(!vec4<bool>(true, !all(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, true)), false));
    var_2 = !select(select(vec4<bool>(u_input.a.x < -6403i, all(vec4<bool>(true, true, var_2.x, true)), !var_2.x, u_input.a.x >= 16748i), select(!vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x), !vec4<bool>(true, false, var_2.x, false)), select(vec4<bool>(var_2.x, var_2.x, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(true, true, false, var_2.x)), select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(true, true, false, var_2.x), var_2.x))), !(!select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true), false)), var_2.x);
    return _wgslsmith_sub_u32(~(arg_1 ^ firstLeadingBit(firstTrailingBit(0u))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, select(_wgslsmith_sub_i32(reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(2147483647i, 29233i, u_input.a.x))), u_input.a.x >> (0u % 32u), !(-26058i >= u_input.a.x))), -69i);
    var var_1 = func_1(vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -43414i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), -(13343i & u_input.a.x), 1i) ^ _wgslsmith_clamp_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 33424i), vec3<i32>(-22327i, -1i, u_input.a.x)), abs(select(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(u_input.a.x, u_input.a.x, 1i), false)), vec3<i32>(_wgslsmith_mult_i32(-46361i, u_input.a.x), countOneBits(u_input.a.x), -414i)), 0u << (reverseBits(_wgslsmith_clamp_u32(firstLeadingBit(21468u), ~39334u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 5132u), vec2<u32>(0u, 23435u)))) % 32u));
    let var_2 = Struct_3(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-700f, _wgslsmith_f_op_f32(632f * 622f), 1526f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2056f, 1653f, 1813f))), _wgslsmith_mod_vec2_i32(u_input.a << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), firstTrailingBit(u_input.a)), 0i), vec4<u32>(52555u, ~(~_wgslsmith_mult_u32(1u, 0u)), 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(22008u, 13915u), vec2<u32>(58341u, 0u)), ~7431u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1052f, 763f))))), -2473f), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~0u), ~vec2<u32>(6649u, 1u)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, -1164f, -757f)) + vec4<f32>(491f, -1327f, -574f, -1000f)), ~vec2<u32>(1u, 1u)).x, ~(~1u) << (1u % 32u), _wgslsmith_add_u32(1u, 44065u)));
    var_0 = u_input.a.x;
    let var_3 = !vec3<bool>(!all(vec2<bool>(true, true)), true, any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
    var_1 = var_2.b.x;
    var var_4 = Struct_1(~(-2147483647i));
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-169f, var_2.c.x, -791f, -1960f) - vec4<f32>(1412f, var_2.a.a.x, 563f, var_2.c.x))))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(229f, 377f, _wgslsmith_div_f32(1521f, var_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a.x, -1466f, -754f, 323f) + vec4<f32>(var_2.c.x, -1000f, var_2.a.a.x, -557f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(415f, -1000f, 759f, 1524f) * vec4<f32>(var_2.c.x, 3570f, var_2.c.x, 1643f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_2.c.x, 879f), var_2.a.a.x, _wgslsmith_f_op_f32(round(var_2.c.x)), _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a.x, 1203f, 2199f, var_2.c.x) + vec4<f32>(var_2.a.a.x, 774f, var_2.c.x, var_2.a.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1588f, 1743f, var_2.c.x, -2558f))), max(-1i, 0i) < max(u_input.a.x, -1i))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.yx);
}

