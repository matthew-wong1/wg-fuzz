struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(68893u, 0u, 0u);

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1543f))), -942f))), abs(_wgslsmith_mod_vec3_u32(~max(vec3<u32>(global0.x, global0.x, 15909u), vec3<u32>(global0.x, u_input.b, u_input.b)), vec3<u32>(countOneBits(17405u), u_input.b, _wgslsmith_add_u32(global0.x, 26729u)))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.a.yy), u_input.a.yy), (global1.zz | u_input.a.xy) | min(vec2<i32>(arg_0, u_input.a.x), vec2<i32>(arg_0, arg_0))) | _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(u_input.a.zx, u_input.a.xy)), -select(vec2<i32>(u_input.a.x, arg_0), u_input.a.yy, false)));
    global1 = select(abs((vec4<i32>(-1i) * -vec4<i32>(var_0.c.x, u_input.c, 1i, -1i)) | _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_0.c.x, -32472i, u_input.a.x, 0i)), vec4<i32>(2147483647i, var_0.c.x, arg_0, 9136i))), vec4<i32>(reverseBits(-23990i), -1i, global1.x, u_input.a.x), vec4<bool>(false & (false || (-149f != var_0.a.x)), true, !select(all(vec3<bool>(true, true, true)), false, any(vec2<bool>(false, true))), true));
    let var_1 = Struct_1(var_0.a, ~min(vec3<u32>(u_input.b >> (4294967295u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 72582u, 47708u, 0u), vec4<u32>(66159u, 11926u, global0.x, 132194u)), u_input.b), var_0.b), abs(vec2<i32>(~u_input.c, arg_0)) >> (global0.yz % vec2<u32>(32u)));
    global0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mult_u32(countOneBits(var_1.b.x), _wgslsmith_div_u32(1u, var_1.b.x)) >> (global0.x % 32u), 61043u), var_1.b);
    let var_2 = 4294967295u > var_1.b.x;
    return max(var_0.b, ~vec3<u32>(1u, _wgslsmith_clamp_u32(var_1.b.x, var_0.b.x, var_1.b.x) << (_wgslsmith_div_u32(0u, var_1.b.x) % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.x, global0.x), 1u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global1 = vec4<i32>(~global1.x, ~min(i32(-1i) * -28375i, 22730i & global1.x) << (~_wgslsmith_add_u32(0u, u_input.b & 0u) % 32u), global1.x, abs(_wgslsmith_clamp_i32(1i, -(i32(-1i) * -2147483647i), ~u_input.a.x)));
    global0 = ~_wgslsmith_mult_vec3_u32(~(~firstLeadingBit(arg_1.b)), firstTrailingBit(_wgslsmith_mult_vec3_u32(~arg_1.b, func_3(-1i))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a)), min(~(~arg_1.b), _wgslsmith_mult_vec3_u32(arg_1.b, arg_1.b)), vec2<i32>(global1.x, 2147483647i));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(285f, _wgslsmith_f_op_f32(arg_1.a.x - 824f), _wgslsmith_f_op_f32(arg_1.a.x * 283f)) + vec3<f32>(arg_1.a.x, var_0.a.x, _wgslsmith_f_op_f32(arg_1.a.x * var_0.a.x))), vec3<f32>(var_0.a.x, var_0.a.x, -707f), arg_0.x)), arg_1.b, min(vec2<i32>(i32(-1i) * -1i, 1i) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), ~firstTrailingBit(var_0.c)));
    global0 = ~var_1.b;
    return 0u ^ u_input.b;
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    global0 = max(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x & 0u, _wgslsmith_sub_u32(_wgslsmith_div_u32(43179u, 54611u), func_2(vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(1377f, -912f, -1876f), vec3<u32>(arg_0.x, 19141u, 1u), vec2<i32>(u_input.a.x, -1i)))), global0.x), ~arg_0.wyy), vec3<u32>(0u, _wgslsmith_mod_u32(1u << (1u % 32u), max(8054u, 4294967295u)), arg_0.x));
    global0 = select(vec3<u32>(firstLeadingBit(global0.x), global0.x, 4294967295u) & ~(~arg_0.ywz), max(~(~arg_0.yxw), vec3<u32>(abs(global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(41531u, 23746u, 1u, arg_0.x), arg_0) ^ 1u, 15982u)), any(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false))));
    global0 = arg_0.wyx << (~vec3<u32>(_wgslsmith_add_u32(~u_input.b, abs(arg_0.x)), ~(global0.x << (arg_0.x % 32u)), arg_0.x) % vec3<u32>(32u));
    global0 = countOneBits(~vec3<u32>(_wgslsmith_sub_u32(~91450u, 0u), arg_0.x, 51406u & _wgslsmith_clamp_u32(57863u, u_input.b, arg_0.x)));
    var var_0 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, all(vec4<bool>(true, true, true, false))))), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), !any(vec2<bool>(true, true)), !all(vec2<bool>(all(vec4<bool>(true, true, false, false)), false)));
    return arg_0.x;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-706f, -1115f), _wgslsmith_f_op_f32(step(-689f, -698f))), _wgslsmith_f_op_f32(abs(969f)), _wgslsmith_f_op_f32(869f - 176f))), countOneBits(min(~(~vec3<u32>(0u, 49322u, arg_2.x)), max(vec3<u32>(74939u, 18406u, global0.x), countOneBits(vec3<u32>(global0.x, 49618u, 23555u))))), -(~u_input.a.yy));
    var var_1 = select(!select(select(!vec4<bool>(true, true, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, false, false), !vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x)), select(vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), !vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true), any(arg_3)), false), !select(select(select(vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), arg_3.x), vec4<bool>(true, arg_3.x, arg_3.x, true), 27799i >= arg_1), select(select(vec4<bool>(false, arg_3.x, false, arg_3.x), vec4<bool>(false, false, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x)), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), select(true, arg_3.x, arg_3.x)), arg_3.x || true), any(!arg_3));
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(1539f)), -828f, -1712f))), vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-1330f - var_0.a.x))))), ~vec3<u32>(~(~9328u), ~(~var_0.b.x), select(67039u, ~4294967295u, true)), min(vec2<i32>(~(global1.x | 2147483647i), var_0.c.x), ~max(reverseBits(vec2<i32>(arg_1, u_input.a.x)), select(var_0.c, global1.wy, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 310f;
    let var_1 = func_4(func_1(~abs(vec4<u32>(global0.x, 4294967295u, u_input.b, 3589u))), ~26972i ^ firstLeadingBit(firstLeadingBit(_wgslsmith_add_i32(global1.x, 11301i))), ~global0.zz, vec3<bool>(any(vec2<bool>(select(true, false, false), true)), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false));
    global1 = select(select(firstLeadingBit(max(vec4<i32>(19342i, u_input.a.x, global1.x, global1.x), reverseBits(vec4<i32>(0i, global1.x, -1i, var_1.c.x)))), vec4<i32>(~min(var_1.c.x, 45714i), u_input.a.x, min(1i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, u_input.c), reverseBits(u_input.a))), vec4<bool>(true, false, true, (var_1.b.x << (global0.x % 32u)) == ~4294967295u)), ~countOneBits(reverseBits(-vec4<i32>(-4985i, -1i, var_1.c.x, 41449i))), select(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false)))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, 895f, var_1.a.x)), var_2.a, global0.x > 1u))) * vec3<f32>(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-108f * var_1.a.x)), _wgslsmith_f_op_f32(-func_4(var_2.b.x, -2147483647i, vec2<u32>(0u, u_input.b), vec3<bool>(false, false, false)).a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + -1006f) + var_2.a.x))));
    var var_4 = func_4(u_input.b, var_1.c.x, var_1.b.xy, select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, false, true, true)), 572f > var_0, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-314f - var_3.x))))), var_1.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(func_3(var_1.c.x).x, var_1.b.x), u_input.b, _wgslsmith_dot_vec2_u32(~var_1.b.zx, vec2<u32>(u_input.b, 4294967295u))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(var_2.b, var_2.b), vec3<u32>(63660u, var_2.b.x, 4294967295u))), max(~var_1.b, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.x, 0u, 41593u), var_2.b)) >> (var_2.b % vec3<u32>(32u)), vec4<i32>(1i, countOneBits(~(~41788i)), select(57059i, _wgslsmith_mod_i32(u_input.a.x, ~(-61544i)), true & any(vec2<bool>(false, true))), ~var_4.c.x), var_2.b);
}

