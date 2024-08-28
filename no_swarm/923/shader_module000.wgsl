struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<i32> {
    global0 = Struct_4(Struct_1(max(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.c.x, 22648u), abs(global0.a.a.x), 114680u), u_input.c), ~global0.a.b, 247f), abs(_wgslsmith_mult_vec4_u32(~u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(global0.a.a.x, 4199u, arg_0, u_input.c.x), vec4<u32>(arg_0, 36611u, arg_0, 4294967295u)) ^ ~vec4<u32>(54835u, global0.a.a.x, 1u, 4294967295u))));
    var var_0 = -1133f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c - _wgslsmith_f_op_f32(round(global0.a.c))));
    return ~(-(~vec4<i32>(~(-17285i), -1i, ~global0.a.b.x, min(1i, global0.a.b.x))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = Struct_4(global0.a, reverseBits(~global0.b) >> (~(~_wgslsmith_add_vec4_u32(vec4<u32>(46055u, 17945u, arg_0, u_input.c.x), global0.b)) % vec4<u32>(32u)));
    var var_0 = select(~(~func_3(4294967295u, vec3<bool>(false, false, true), vec4<bool>(true, false, true, true))), ~_wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(global0.a.b.x, global0.a.b.x, 22984i, u_input.b.x)), vec4<i32>(~2147483647i, 13471i, 48322i, ~u_input.b.x)), vec4<bool>(true, all(vec4<bool>(true, true, -224f == global0.a.c, false)), true, true));
    global0 = Struct_4(global0.a, vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(~u_input.c.xx), global0.a.a.xz), _wgslsmith_div_u32(1u, arg_0), _wgslsmith_add_u32(~abs(global0.b.x), ~2131u), 31789u));
    var var_1 = Struct_2(vec3<i32>(-u_input.b.x, global0.a.b.x, u_input.d.x), select(false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(295f - 476f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c - global0.a.c)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.c, 376f))))));
    let var_2 = global0.a;
    return Struct_1(vec4<u32>(1u, 4294967295u, ~(~17464u), u_input.a.x), ~(-vec3<i32>(-var_2.b.x, firstTrailingBit(var_0.x), 20440i)), -1000f);
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<f32> {
    global0 = Struct_4(func_2(arg_1 ^ ~1u), vec4<u32>(0u, firstTrailingBit(0u), 7199u, 21617u));
    let var_0 = func_2(3569u);
    var var_1 = func_2(1u);
    global0 = Struct_4(var_0, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.a, var_0.a), select(abs(select(u_input.a, vec4<u32>(u_input.a.x, 8401u, var_1.a.x, 4294967295u), vec4<bool>(false, true, true, true))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_1, 90492u), var_0.a) | countOneBits(vec4<u32>(0u, 17006u, global0.b.x, 52519u)), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true))));
    var var_2 = ~(u_input.b.x & (abs(var_1.b.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.b.x), var_0.b.zy)));
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-445f - _wgslsmith_f_op_f32(global0.a.c - var_1.c)), var_0.c, -4268i == _wgslsmith_mult_i32(u_input.d.x, u_input.d.x))), _wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1052f, arg_0)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_div_f32(var_0.c, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c)) - _wgslsmith_f_op_f32(abs(arg_0)))), -719f, -1031f)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_1(firstTrailingBit(global0.b), vec3<i32>(~2147483647i, 8872i, -abs(1i)), global0.a.c);
    let var_1 = ~(~(~86657u));
    global0 = Struct_4(func_2(_wgslsmith_mod_u32(~global0.b.x >> (1u % 32u), u_input.c.x)), global0.a.a | func_2(0u).a);
    let var_2 = Struct_3(arg_0.x > -(~firstLeadingBit(-2147483647i)), firstTrailingBit(~(vec4<i32>(0i, global0.a.b.x, arg_0.x, 15941i) ^ -vec4<i32>(global0.a.b.x, global0.a.b.x, arg_0.x, 61105i))), func_2(28023u), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), Struct_2(min(countOneBits(-vec3<i32>(26332i, -23125i, -2147483647i)), global0.a.b | -var_0.b), (~global0.a.a.x < var_1) != true, vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true))), -1081f));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.e.d)), _wgslsmith_f_op_f32(-var_0.c))))), ~(~(~1u)))).x));
    return Struct_4(func_2(3760u << (1u % 32u)), var_0.a);
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> f32 {
    global0 = func_4(global0.a.b.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1251f), 1000f, arg_1.a.c))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(791f))), -513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(2049f, u_input.a.x)).x - arg_1.a.c))));
    let var_0 = Struct_4(func_2(firstTrailingBit(50617u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, ~global0.b.x, 1u, _wgslsmith_add_u32(868u, arg_0)) << (_wgslsmith_mult_vec4_u32(~u_input.c, reverseBits(vec4<u32>(arg_0, 78263u, u_input.a.x, u_input.c.x))) % vec4<u32>(32u)), (_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, arg_0, 5196u, 47560u)) << (func_2(5574u).a % vec4<u32>(32u))) & vec4<u32>(95379u, 56217u, _wgslsmith_add_u32(41336u, 45711u), ~arg_0), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.a.a, arg_1.b, u_input.c), ~arg_1.a.a)));
    let var_1 = Struct_1(global0.b, vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(10114i, ~47528i), var_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -110f));
    var var_2 = var_1.a.x;
    let var_3 = func_4(vec2<i32>(max(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.b.x, arg_1.a.b.x), u_input.b.x), 0i), func_2(~arg_1.a.a.x).b.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.c + -1135f), _wgslsmith_f_op_f32(min(var_1.c, -1158f)), arg_1.a.c)))))).a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-297f, _wgslsmith_f_op_f32(round(-1155f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -425f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(global0.b.x, func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(-3898i, _wgslsmith_div_i32(-66748i, global0.a.b.x)), global0.a.b.yx), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1(global0.a.c, u_input.c.x)))))))));
    let var_1 = ~abs(~u_input.c);
    let var_2 = vec2<i32>((i32(-1i) * -_wgslsmith_sub_i32(2147483647i, global0.a.b.x)) | global0.a.b.x, _wgslsmith_dot_vec2_i32(-u_input.b.xx, global0.a.b.xy) >> (reverseBits(6442u) % 32u));
    let var_3 = var_2.x;
    var var_4 = Struct_2(global0.a.b, false, vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1468f)))), -1000f));
    global0 = func_4(vec2<i32>(~u_input.d.x, 1i) | (-(~u_input.b.zx) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.b.x, var_4.a.x), u_input.b.xz), 24849i)), vec3<f32>(-170f, _wgslsmith_f_op_f32(min(global0.a.c, _wgslsmith_f_op_f32(round(var_4.d)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.c)))));
    var var_5 = _wgslsmith_add_i32(u_input.b.x, -var_4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(368f, u_input.a.zy, _wgslsmith_add_vec2_i32(var_4.a.yx, ~vec2<i32>(53428i ^ global0.a.b.x, u_input.d.x)), firstLeadingBit(~select(_wgslsmith_div_vec3_u32(global0.b.wzx, global0.a.a.xww), global0.a.a.zyx >> (vec3<u32>(4294967295u, 0u, 1u) % vec3<u32>(32u)), false)), firstLeadingBit(-_wgslsmith_dot_vec2_i32(-u_input.d, select(vec2<i32>(var_3, 0i), vec2<i32>(-1i, -36250i), var_4.b))));
}

