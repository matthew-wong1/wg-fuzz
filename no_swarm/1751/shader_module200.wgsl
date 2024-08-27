struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_1(reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 0i, -39703i, arg_0.b.a.x) << (vec4<u32>(arg_0.b.c, 46976u, 1350u, 5583u) % vec4<u32>(32u)), vec4<i32>(u_input.c, 47537i, -1i, arg_0.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b - arg_0.a) - -255f) + 1070f)), u_input.b);
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, arg_0.b.b), vec2<f32>(-141f, arg_0.a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, var_0.b)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-519f, -948f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) * vec2<f32>(var_0.b, var_0.b)))))), arg_0);
    let var_2 = 7021i;
    var var_3 = Struct_1(arg_0.b.a, -453f, var_0.c);
    var_3 = var_1.b.b;
    return var_0.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.a.x, var_0.a.x, 1731i), arg_0.b.a);
}

fn func_2() -> Struct_1 {
    let var_0 = -vec4<i32>(_wgslsmith_mod_i32(~1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.b), vec3<u32>(17148u, u_input.a, u_input.a)) % 32u), u_input.c), -1i, 64222i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(~u_input.c, min(u_input.c, 41132i)), u_input.c >> (4294967295u % 32u)));
    let var_1 = func_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-673f)) + _wgslsmith_f_op_f32(select(1942f, 318f, false))), _wgslsmith_f_op_f32(f32(-1f) * -248f)), Struct_1(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1568f), _wgslsmith_f_op_f32(1000f + -242f)), 1u)));
    let var_2 = _wgslsmith_f_op_f32(769f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(125f + -966f), 1025f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(578f, -153f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2)), 975f, _wgslsmith_f_op_f32(-var_2), var_2))), vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))), var_2, -565f), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), false), false)))));
    let var_4 = _wgslsmith_clamp_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_div_u32(673u, u_input.b)), u_input.b & _wgslsmith_mult_u32(20256u, u_input.a)), 1u, ~u_input.b);
    return Struct_1(countOneBits(max(-_wgslsmith_add_vec4_i32(var_0, vec4<i32>(-2147483647i, -1i, var_1, 1i)), select(firstTrailingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, var_1)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.c, var_0.x, u_input.c), vec4<i32>(var_0.x, var_0.x, var_1, var_1)), var_1 < var_1))), var_2, _wgslsmith_mod_u32(14565u, _wgslsmith_add_u32(abs(1u | var_4), 1u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = vec3<u32>(~(~countOneBits(~u_input.b)), ~(~(~arg_1.b.b.c)), ~arg_1.b.b.c);
    let var_1 = vec3<bool>(true | (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1642f + arg_1.b.a) - _wgslsmith_f_op_f32(f32(-1f) * -182f))), true, true);
    let var_2 = _wgslsmith_mult_vec2_u32(var_0.xz, vec2<u32>(func_2().c, _wgslsmith_mult_u32(firstTrailingBit(arg_1.b.b.c), arg_1.b.b.c)));
    return -39011i;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: f32) -> Struct_3 {
    let var_0 = -2147483647i;
    let var_1 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, u_input.c, 56737i, func_4(func_2(), Struct_3(arg_0.zx, Struct_2(arg_2, Struct_1(vec4<i32>(19016i, -1562i, -1i, -18772i), arg_1, 60548u))))), vec4<i32>(-28828i, -1i, u_input.c, var_0), ~countOneBits(vec4<i32>(-44668i, -8908i, var_0, -1i) | vec4<i32>(u_input.c, u_input.c, u_input.c, var_0))), max(vec4<i32>(u_input.c, ~var_0, -26509i, 14390i), vec4<i32>(-2147483647i, -29733i, -u_input.c, -var_0)) | func_2().a, true || (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-248f - -1066f), _wgslsmith_f_op_f32(select(arg_1, -1136f, true))) >= 872f));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1002f + arg_1)))), func_2());
    let var_3 = var_2;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, -1031f))), _wgslsmith_f_op_f32(f32(-1f) * -2247f));
    return Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.b, 1281f) * vec2<f32>(var_3.b.b, arg_2)))))), var_3);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = arg_0.b.b;
    let var_1 = true;
    var var_2 = vec3<bool>(true, !all(vec3<bool>(var_1, false, true)), var_1);
    let var_3 = abs(vec4<u32>(u_input.a ^ 116723u, u_input.a, ~var_0.c, func_2().c));
    var_2 = vec3<bool>(all(!(!select(var_2.xy, vec2<bool>(false, var_2.x), true))), true || (1i > arg_0.b.b.a.x), var_0.c > ~reverseBits(0u));
    return func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(select(arg_0.a.x, -529f, any(vec4<bool>(var_1, var_1, var_2.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) + arg_0.b.a))), _wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(-arg_2.x));
}

fn func_6(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(arg_0.b.a)), func_1(vec3<f32>(func_1(vec3<f32>(arg_0.b.a, arg_0.a.x, 544f), arg_0.a.x, _wgslsmith_f_op_f32(round(682f))).b.a, _wgslsmith_f_op_f32(sign(func_5(arg_0, vec2<i32>(-49179i, 1i), vec2<f32>(arg_0.b.b.b, arg_0.a.x)).b.a)), arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(round(-1000f))).b.b);
    var_0 = arg_0.b;
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.x, arg_0.b.a, arg_0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b, var_0.a, 799f) + vec3<f32>(-413f, var_0.b.b, -208f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1397f, var_0.a, arg_0.b.a) + vec3<f32>(arg_0.b.b.b, 737f, arg_0.a.x)))), false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-988f, -1394f, var_0.b.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b, 3095f, var_0.b.b) - vec3<f32>(-300f, var_0.a, 1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(769f, 649f, arg_0.a.x), vec3<f32>(var_0.a, -1102f, -2131f), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)))))), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + 1000f)) - _wgslsmith_f_op_f32(-265f * var_0.b.b))).b.b.c;
    let var_2 = firstTrailingBit(arg_0.b.b.a >> (~(~vec4<u32>(53916u, u_input.b, 41415u, arg_0.b.b.c) | abs(vec4<u32>(29791u, 37074u, u_input.a, 34821u))) % vec4<u32>(32u)));
    let var_3 = true;
    return StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 55267u, 48261u, var_1), vec4<u32>(1u, var_1, 10318u, arg_0.b.b.c)) ^ (vec4<u32>(arg_0.b.b.c, 0u, 0u, 0u) << (~vec4<u32>(4294967295u, u_input.b, 0u, 38802u) % vec4<u32>(32u))), firstLeadingBit(max(min(vec4<u32>(1u, 62722u, 58420u, 0u), vec4<u32>(var_1, 83127u, u_input.a, 22082u)), ~vec4<u32>(var_0.b.c, 23654u, 16043u, arg_0.b.b.c)))), vec3<u32>(abs(var_1), 1u, 1u), var_0.a, var_0.a, var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(func_1(vec3<f32>(_wgslsmith_f_op_f32(-1797f - -264f), _wgslsmith_f_op_f32(561f * 481f), _wgslsmith_f_op_f32(min(-569f, 370f))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1571f)), ~(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, 1726i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(717f, -565f), vec2<f32>(-1574f, 114f)))))));
}

