struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false, 0i, vec4<u32>(0u, 43151u, 4294967295u, 16270u), vec4<f32>(822f, -264f, -435f, -760f)), Struct_1(false, 1i, vec4<u32>(4294967295u, 27535u, 0u, 1u), vec4<f32>(1142f, 1782f, -710f, -191f)), Struct_1(true, -35900i, vec4<u32>(8722u, 1u, 1u, 0u), vec4<f32>(-2841f, -1336f, 955f, -752f)), Struct_1(true, -7770i, vec4<u32>(1u, 55625u, 4294967295u, 1u), vec4<f32>(-719f, 1006f, -884f, -111f)), Struct_1(false, -3067i, vec4<u32>(2740u, 4294967295u, 1u, 1u), vec4<f32>(321f, 403f, 1388f, 130f)), Struct_1(true, 0i, vec4<u32>(0u, 69812u, 37350u, 1u), vec4<f32>(371f, -1173f, 961f, -645f)), Struct_1(false, 1i, vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<f32>(-2292f, 1027f, -327f, -1539f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = select(select(vec4<bool>(true, any(vec3<bool>(true, true, false)) == true, true, !select(true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a.x != u_input.a.x, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), u_input.b.x == 5679i), vec4<bool>(true, true, true, true), (u_input.b.x >= 0i) != false)), vec4<bool>(all(vec4<bool>(true, true, true, true)), false, any(vec2<bool>(true, any(vec2<bool>(false, true)))), true), select(vec4<bool>(false, false && any(vec3<bool>(false, false, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(false, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false)), countOneBits(u_input.b.x) >= -3328i, !(u_input.a.x <= 0u))));
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(1i), 3712i, u_input.b.x << (68151u % 32u)), vec3<i32>(u_input.b.x, 1i << (u_input.a.x % 32u), firstTrailingBit(u_input.b.x))) | (_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, -40635i, u_input.b.x)), vec3<i32>(u_input.b.x, 0i, u_input.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))) & vec3<i32>(1i, -u_input.b.x, -u_input.b.x)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -43621i, -2147483647i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b)) >> (vec3<u32>(4294967295u, ~u_input.a.x >> (reverseBits(4294967295u) % 32u), ~_wgslsmith_dot_vec3_u32(u_input.a.yxx, vec3<u32>(u_input.a.x, 0u, u_input.a.x))) % vec3<u32>(32u)));
    let var_2 = 4294967295u;
    return firstTrailingBit(~_wgslsmith_add_u32(max(~var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, var_2), vec3<u32>(var_2, 4294967295u, var_2))), abs(1u)));
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.d - arg_0.a.d) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.a.d.x, -833f), vec4<f32>(674f, arg_0.b.x, arg_0.c.d.x, -511f)), _wgslsmith_f_op_vec4_f32(arg_0.c.d + arg_0.a.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 1357f, -1000f, arg_0.b.x))))), Struct_1(arg_0.a.a, (arg_0.c.b << (arg_0.d % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, arg_0.c.b, -1i), vec4<i32>(u_input.b.x, 1i, 37796i, -20065i) << (vec4<u32>(u_input.a.x, arg_0.c.c.x, 46038u, arg_0.c.c.x) % vec4<u32>(32u))), ~max(arg_0.a.c, arg_0.a.c) << (vec4<u32>(reverseBits(0u), 1u, _wgslsmith_mult_u32(15719u, arg_0.c.c.x), 0u) % vec4<u32>(32u)), vec4<f32>(arg_0.c.d.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.d.x))))), _wgslsmith_mod_u32(arg_0.c.c.x, ~(min(1u, arg_0.c.c.x) << (~0u % 32u))));
    let var_1 = Struct_2(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-259f + var_0.c.d.x))), arg_0.b.x, _wgslsmith_f_op_f32(-971f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.d.x, -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * arg_0.b.x) * _wgslsmith_f_op_f32(sign(var_0.a.d.x))))), Struct_1(_wgslsmith_add_u32(87812u >> (arg_0.d % 32u), arg_0.d) <= ~55440u, (i32(-1i) * -var_0.c.b) >> (u_input.a.x % 32u), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.a.c.x, arg_0.a.c.x), ~u_input.a.x), 1u, ~(~4294967295u), (var_0.d & 102362u) >> (arg_0.a.c.x % 32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-777f, arg_0.c.d.x, var_0.a.d.x, arg_0.a.d.x)))))), var_0.d);
    let var_2 = arg_0.c.d.x;
    global0 = array<Struct_1, 7>();
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1248f - 161f) + _wgslsmith_f_op_f32(min(arg_0.b.x, 916f))), 1115f)))));
    return select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.a.a, arg_0.a.a, !(!var_1.a.a)), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.a.a, var_1.c.a), vec3<bool>(false, arg_0.c.a, false))));
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<bool>(any(vec3<bool>(false, true, all(vec3<bool>(true, true, true)))), all(vec2<bool>(true, true)));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_1 = Struct_3(1u, func_4(Struct_2(Struct_1(true, u_input.b.x, firstTrailingBit(vec4<u32>(u_input.a.x, 26715u, 0u, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(826f, 343f, -1472f, -1337f) + vec4<f32>(450f, -400f, -557f, 336f))), vec4<f32>(_wgslsmith_f_op_f32(-1194f + 164f), _wgslsmith_f_op_f32(abs(100f)), _wgslsmith_div_f32(-937f, 283f), _wgslsmith_f_op_f32(ceil(-887f))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), func_3()), 7u)], ~u_input.a.x)));
    var var_2 = Struct_4(~select(firstLeadingBit(u_input.a.yww), ~select(u_input.a.yxw, vec3<u32>(25649u, 0u, var_1.a), false), vec3<bool>(true, var_0.x, false)), vec4<u32>(~var_1.a, 38649u, 1u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), countOneBits(abs(u_input.a.x)), _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(u_input.a.x, 37985u)))));
    return Struct_4(countOneBits(vec3<u32>(select(var_2.b.x, 49916u, true), u_input.a.x & 1u, 1u) << (u_input.a.wyx % vec3<u32>(32u))), u_input.a & u_input.a);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    global0 = array<Struct_1, 7>();
    var var_0 = any(select(select(vec4<bool>(false, all(vec4<bool>(true, arg_1, true, arg_1)), 1i < u_input.b.x, false && arg_1), select(vec4<bool>(true, arg_1, false, true), vec4<bool>(arg_1, false, true, arg_1), select(vec4<bool>(true, arg_1, false, true), vec4<bool>(arg_1, arg_1, arg_1, true), arg_1)), select(!vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(false, arg_1, false, arg_1), arg_1)), !vec4<bool>(arg_1, any(vec2<bool>(arg_1, arg_1)), false, false), !vec4<bool>(arg_1, true, true, arg_1)));
    var_0 = arg_1;
    var_0 = !(~(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, -40817i), arg_2.zx) ^ u_input.b.x) > _wgslsmith_mod_i32(u_input.b.x, 2147483647i));
    var var_1 = min(~abs(u_input.b) ^ u_input.b, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, -34634i, arg_2.x), ~arg_2), select(-1i, u_input.b.x, true))) ^ vec2<i32>(arg_2.x, u_input.b.x);
    return ~reverseBits(~2147483647i);
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -205f)));
    var var_2 = Struct_2(Struct_1((all(vec4<bool>(arg_2, false, false, arg_2)) != true) || false, reverseBits(_wgslsmith_add_i32(10119i, _wgslsmith_div_i32(-2147483647i, u_input.b.x))), _wgslsmith_div_vec4_u32(~u_input.a & vec4<u32>(20421u, 1u, arg_1.a, 4294967295u), vec4<u32>(22453u, func_3(), u_input.a.x, arg_1.a | 12799u)), vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1231f)) - _wgslsmith_f_op_f32(-2151f + 1758f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-346f - -592f), 545f, 0u != arg_1.a)), _wgslsmith_f_op_f32(2574f - _wgslsmith_f_op_f32(618f + 564f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, 986f, -271f, -964f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(916f, -2016f, 1752f, 1285f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-187f, 1000f, 1782f, 510f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(273f, 1054f, -141f, -600f), vec4<f32>(1719f, -850f, 721f, -345f))))), global0[_wgslsmith_index_u32(~arg_1.a, 7u)], max(select(4294967295u << (u_input.a.x % 32u), 1u, arg_2), 1u) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a.zwx, ~vec3<u32>(0u, 0u, u_input.a.x)), _wgslsmith_div_vec3_u32(u_input.a.xxx | vec3<u32>(3598u, 25249u, 0u), ~u_input.a.zzy)));
    let var_3 = _wgslsmith_div_vec3_i32(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-51683i, var_2.a.b, -36814i), vec3<i32>(u_input.b.x, -33971i, 1450i), vec3<i32>(1i, arg_0, 30233i))) >> (vec3<u32>(1u, 4294967295u, ~1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(~(-18372i), ~var_2.c.b, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 774i, u_input.b.x), vec3<i32>(u_input.b.x, arg_0, arg_3)))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(22922i, 115058i, arg_0), vec3<i32>(arg_3, 2147483647i, arg_0)), select(vec3<i32>(4960i, var_2.a.b, arg_0), vec3<i32>(-28997i, -75133i, 2147483647i), var_2.a.a)) | reverseBits(countOneBits(vec3<i32>(-1i, arg_3, -75658i)))));
    var var_4 = vec2<i32>(1i, 1i);
    return global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(19254u), 1u >> (var_2.d % 32u)), 7u)];
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = abs(u_input.b.x & min(-abs(9542i), reverseBits(u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(917f + _wgslsmith_f_op_f32(trunc(760f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(960f)) * _wgslsmith_f_op_f32(f32(-1f) * -1817f))) * 746f) + -127f);
    var_0 = u_input.b.x;
    return func_6(select(func_5(func_2(), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), ~(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, 31422i, 0i, -2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-429f)), var_1)), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), vec4<i32>(60461i, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, -9920i, 1i))), false), Struct_3(~(~u_input.a.x), func_4(Struct_2(Struct_1(true, u_input.b.x, u_input.a, vec4<f32>(var_1, -956f, var_1, var_1)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, 744f, 625f), vec4<f32>(var_1, var_1, var_1, -920f)), Struct_1(false, 5219i, vec4<u32>(83116u, 1u, u_input.a.x, u_input.a.x), vec4<f32>(var_1, -414f, -490f, 1047f)), _wgslsmith_dot_vec4_u32(vec4<u32>(21990u, 35667u, 32168u, u_input.a.x), u_input.a)))), u_input.b.x < func_5(func_2(), true, vec4<i32>(1i, u_input.b.x, -2147483647i, u_input.b.x) << (u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(-569f, var_1))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = vec3<u32>(u_input.a.x, 14264u, u_input.a.x);
    global0 = array<Struct_1, 7>();
    let var_1 = func_1();
    var var_2 = var_1.b;
    global0 = array<Struct_1, 7>();
    var_2 = 0i;
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d.x, var_1.d.x, -195f)))), var_1.d.wyz)), var_1.d.wzz, vec3<bool>(func_1().a, any(!vec4<bool>(var_1.a, var_1.a, var_1.a, true)), all(!vec2<bool>(false, var_1.a))))));
}

