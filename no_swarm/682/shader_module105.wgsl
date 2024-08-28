struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 19>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_4) -> vec4<f32> {
    global1 = true;
    var var_0 = Struct_3(reverseBits(arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-448f, arg_3.a.x, 1000f, 600f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-805f)), _wgslsmith_f_op_f32(arg_3.a.x * -1000f)), _wgslsmith_f_op_f32(-arg_3.a.x), 278f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))))));
    let var_1 = arg_2.wzx;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(-arg_0.a.x), -648f, _wgslsmith_f_op_f32(trunc(arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), arg_0.b.x))))));
    global2 = array<Struct_3, 19>();
    return var_0.b;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_1 {
    global0 = ~_wgslsmith_mod_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -20563i, -1i, 13819i), select(vec4<i32>(global0.x, -19372i, global0.x, u_input.a), vec4<i32>(-38820i, 0i, 0i, global0.x), vec4<bool>(arg_1.b.x, false, false, true)))), max(vec4<i32>(0i, global0.x, ~global0.x, u_input.a), vec4<i32>(_wgslsmith_dot_vec2_i32(global0.zz, vec2<i32>(12601i, 262i)), ~global0.x, u_input.b | 2736i, abs(u_input.b))));
    let var_0 = ~(~firstTrailingBit(vec4<u32>(~24393u, _wgslsmith_mult_u32(1u, 1u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(27286u, 1u), vec2<u32>(17150u, 61143u)))));
    global1 = reverseBits(u_input.b ^ u_input.b) != -16338i;
    global1 = arg_1.c.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.www))), arg_0.zwz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(min(arg_0.x, 1000f)), 103f)))), _wgslsmith_f_op_vec4_f32(func_2(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -792f) * arg_1.a)), vec4<bool>(arg_1.c.x, !arg_1.b.x, all(vec4<bool>(arg_1.c.x, true, arg_1.d, false)), arg_1.c.x), !vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.b.x), select(true, arg_1.c.x, !arg_1.d)), select(abs(0i), _wgslsmith_clamp_i32(~u_input.a, abs(1i), global0.x >> (var_0.x % 32u)), arg_1.d | (arg_1.c.x & arg_1.c.x)), vec4<u32>(0u, abs(var_0.x), _wgslsmith_sub_u32(countOneBits(var_0.x), var_0.x), select(_wgslsmith_mult_u32(var_0.x, 40200u), 4294967295u, true)), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a, arg_1.a)), vec4<bool>(false, true, any(arg_1.b.wz), false | arg_1.c.x), !vec4<bool>(arg_1.c.x, arg_1.b.x, arg_1.d, true), true))).ywy, vec3<bool>(any(vec3<bool>(false, arg_1.b.x, false)) || !(!arg_1.d), true, 475f != _wgslsmith_f_op_vec4_f32(func_2(arg_1, 44367i, countOneBits(var_0), arg_1)).x)));
    return Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, 13337i, 0i, global0.x)), vec4<i32>(16636i, u_input.a, global0.x, -1i)) << (var_0 % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(-1i, 2972i, u_input.b, 1i)), _wgslsmith_add_i32(-firstLeadingBit(u_input.b), ~(-16241i)), select(!arg_1.b, select(select(!vec4<bool>(arg_1.d, true, true, false), arg_1.c, arg_1.b), select(vec4<bool>(arg_1.c.x, false, arg_1.d, arg_1.c.x), arg_1.b, vec4<bool>(arg_1.d, arg_1.c.x, false, arg_1.b.x)), select(arg_1.c, !vec4<bool>(false, true, arg_1.d, arg_1.c.x), false)), vec4<bool>(!arg_1.b.x, !all(arg_1.c), !(-722f != var_1.x), !all(arg_1.c.yy))), vec4<u32>(_wgslsmith_mult_u32(var_0.x, 46616u), var_0.x, ~4294967295u, ~var_0.x), -vec2<i32>(select(u_input.a, global0.x, arg_1.c.x) >> (var_0.x % 32u), 1i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    var var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_4(vec2<f32>(351f, 913f), vec4<bool>(arg_1.b.c.x, false, true, true), vec4<bool>(true, arg_0.c.x, false, false), true), ~15799i, arg_0.d, Struct_4(vec2<f32>(-2604f, 1000f), vec4<bool>(false, true, true, true), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_1.a.c.x, arg_0.c.x), arg_0.c.x))).x), _wgslsmith_f_op_f32(916f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(181f + -257f), _wgslsmith_f_op_f32(f32(-1f) * -1457f), any(arg_1.b.c.xx))))), arg_1.a.c, !vec4<bool>(true, any(arg_1.b.c.yz), !arg_0.c.x, any(arg_1.b.c)), arg_0.c.x);
    var var_1 = _wgslsmith_f_op_f32(ceil(1043f));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(_wgslsmith_f_op_f32(2250f * 1000f), var_0.a.x)) - _wgslsmith_f_op_vec2_f32(-var_0.a)), false);
    let var_3 = ~0u ^ ~arg_1.a.d.x;
    let var_4 = vec4<bool>(select(_wgslsmith_div_u32(reverseBits(var_3), arg_1.b.d.x & 38638u) >= 4294967295u, !any(!vec3<bool>(arg_0.c.x, var_2.b, false)), !(!func_3(vec4<f32>(1203f, var_2.a.x, -1000f, var_0.a.x), Struct_4(var_0.a, arg_1.a.c, vec4<bool>(var_0.d, false, arg_1.a.c.x, false), var_0.b.x)).c.x)), !all(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, -1300f, -145f) + vec4<f32>(-264f, var_0.a.x, 654f, 1128f)), Struct_4(var_2.a, vec4<bool>(false, arg_0.c.x, false, false), arg_0.c, arg_0.c.x)).c), _wgslsmith_f_op_f32(-var_0.a.x) == -327f, true);
    return !func_3(vec4<f32>(-159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -117f))), Struct_4(var_0.a, select(!arg_1.a.c, var_0.b, !var_2.b), var_0.b, var_4.x)).c.x;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = vec2<bool>(func_4(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_0, arg_1.a.x, arg_0) - _wgslsmith_f_op_vec4_f32(func_2(arg_1, global0.x, vec4<u32>(4294967295u, 45177u, 4294967295u, 4294967295u), Struct_4(arg_1.a, arg_1.c, arg_1.b, true)))), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1483f, -176f)), arg_1.b, vec4<bool>(true, arg_1.b.x, arg_1.c.x, true), true && arg_1.c.x)), Struct_2(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1491f, -2109f, arg_0, arg_0), vec4<f32>(-1617f, arg_1.a.x, arg_0, arg_1.a.x)), arg_1), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 631f, arg_0, arg_0), vec4<f32>(-1202f, arg_1.a.x, arg_1.a.x, arg_1.a.x)), Struct_4(arg_1.a, arg_1.c, arg_1.b, true))), _wgslsmith_div_vec4_i32(arg_2, countOneBits(vec4<i32>(0i, -25023i, -1i, global0.x))) ^ ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.b, -15171i, u_input.a), arg_2)), all(arg_1.c.zx));
    global0 = vec4<i32>(_wgslsmith_dot_vec3_i32(global0.wwx, ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(11905i, 4280i, arg_2.x), vec3<i32>(u_input.b, global0.x, global0.x), vec3<i32>(-6152i, 1i, -1i)))), ~((_wgslsmith_add_i32(global0.x, 17743i) & u_input.a) & ~(~(-2147483647i))), ~_wgslsmith_div_i32(2147483647i, -862i), _wgslsmith_add_i32(-39858i, -(~(~(-53280i)))));
    var var_1 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(global0.x, _wgslsmith_mult_i32(u_input.b, 2147483647i), 1i, i32(-1i) * -2147483647i)), ~(-1i), arg_1.b, select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), arg_1.b.x), vec2<i32>(global0.x | u_input.b, _wgslsmith_add_i32(-1784i, u_input.a)) >> (_wgslsmith_clamp_vec2_u32(select(vec2<u32>(32340u, 34023u), vec2<u32>(1u, 7922u), arg_1.b.yy), ~vec2<u32>(4294967295u, 36543u), _wgslsmith_mult_vec2_u32(vec2<u32>(29859u, 274u), vec2<u32>(0u, 13527u))) % vec2<u32>(32u))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 1975i, -u_input.a, -42127i), arg_2), global0.x, !vec4<bool>(var_0.x, false, arg_1.a.x != arg_1.a.x, true), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(96806u, 1u, 24590u, 0u), vec4<u32>(14861u, 56246u, 4294967295u, 113053u))), arg_2.xy ^ -global0.zx));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_f_op_vec2_f32(-arg_1.a)), ((reverseBits(1u) ^ ~var_1.a.d.x) & (_wgslsmith_dot_vec3_u32(vec3<u32>(81175u, 43406u, 20605u), vec3<u32>(var_1.a.d.x, 1892u, 4294967295u)) & (4294967295u ^ var_1.b.d.x))) != 3532u);
    let var_3 = arg_0;
    return select(vec3<bool>(all(!select(vec3<bool>(false, false, var_2.b), arg_1.c.wwx, false)), !any(var_1.a.c.wwz), func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.x, var_2.a.x, arg_1.a.x, 1519f))), _wgslsmith_f_op_vec4_f32(func_2(Struct_4(arg_1.a, var_1.a.c, vec4<bool>(false, arg_1.b.x, false, var_0.x), var_0.x), arg_2.x, vec4<u32>(4294967295u, 70243u, 4294967295u, var_1.a.d.x), arg_1))), arg_1).c.x), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 568f, arg_0, 713f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3, 164f, arg_0, 1283f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_1.a.x, var_2.a.x, -203f) - vec4<f32>(var_2.a.x, -743f, -148f, var_3)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3, var_3, arg_0, 346f))))), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1987f, -830f), arg_1.a, var_0.x))), select(!arg_1.c, vec4<bool>(true, var_0.x, arg_1.b.x, var_2.b), var_0.x), var_1.b.c, all(vec2<bool>(true, true)))).c.yzy, vec3<bool>(false & any(var_1.b.c.wy), var_2.b, false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 19>();
    global1 = all(select(!vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), func_1(-631f, Struct_4(vec2<f32>(639f, -1159f), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), vec4<i32>(u_input.b, global0.x, u_input.a, -2147483647i)))));
    var var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1164f, -123f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-292f + -989f))), 710f, !any(vec4<bool>(true, false, false, true))))), !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true))), vec4<bool>(select(true, true, func_4(Struct_1(vec4<i32>(global0.x, u_input.a, 0i, 10256i), global0.x, vec4<bool>(false, false, true, true), vec4<u32>(13123u, 45492u, 48116u, 83188u), global0.wx), Struct_2(Struct_1(vec4<i32>(global0.x, 2147483647i, global0.x, -32122i), 1i, vec4<bool>(true, false, false, true), vec4<u32>(60254u, 18583u, 14045u, 17713u), vec2<i32>(u_input.b, -66340i)), Struct_1(vec4<i32>(u_input.b, u_input.a, u_input.b, -2147483647i), 0i, vec4<bool>(true, true, false, true), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec2<i32>(-23392i, 2147483647i))), vec4<i32>(-2147483647i, -57060i, global0.x, 82166i))) || true, true, false, func_4(func_3(vec4<f32>(1093f, -417f, -482f, -761f), Struct_4(vec2<f32>(-299f, 739f), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false)), Struct_2(Struct_1(vec4<i32>(29992i, u_input.b, u_input.b, 93245i), global0.x, vec4<bool>(true, true, true, true), vec4<u32>(40968u, 4294967295u, 41341u, 21267u), global0.zz), func_3(vec4<f32>(-410f, 2231f, 190f, 297f), Struct_4(vec2<f32>(1504f, -420f), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false))), vec4<i32>(u_input.b & global0.x, u_input.a, _wgslsmith_div_i32(9129i, u_input.a), -15286i << (1u % 32u)))), ~3414u == max(min(~46088u, ~31168u), select(~2820u, 1u, all(vec4<bool>(true, false, false, false)))));
    global1 = var_0.a.x < _wgslsmith_f_op_f32(min(820f, -1000f));
    let var_1 = vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(9651u, 52804u, 1u, 1u)), vec4<u32>(1u, 102479u, 1u, 4294967295u)), ~(~(~31863u)), _wgslsmith_mult_u32(~min(38950u, 0u), _wgslsmith_clamp_u32(countOneBits(4294967295u), ~1u, _wgslsmith_clamp_u32(4294967295u, 28374u, 40817u)))) | ~abs(countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, 164u)));
    global1 = var_0.d;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(round(var_0.a)), !var_0.c, vec4<bool>(func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, -1000f, -115f, 1000f), var_0.c.x)))), Struct_4(_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, true)), func_3(vec4<f32>(1000f, var_0.a.x, var_0.a.x, 2293f), Struct_4(vec2<f32>(var_0.a.x, var_0.a.x), var_0.b, vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.c.x), var_0.c.x)).c, !var_0.b, var_0.c.x)).c.x, true, (!var_0.c.x | true) | true, false), var_0.d);
    global0 = ~(-(abs(vec4<i32>(u_input.b, global0.x, global0.x, global0.x) >> (vec4<u32>(56524u, var_1.x, 4294967295u, var_1.x) % vec4<u32>(32u))) ^ select(countOneBits(vec4<i32>(global0.x, global0.x, 388i, u_input.b)), vec4<i32>(global0.x, -2147483647i, -2147483647i, global0.x), func_3(vec4<f32>(-1066f, var_2.a.x, 492f, 138f), var_2).c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~vec2<u32>(0u, ~_wgslsmith_div_u32(var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_0.a.x, -1189f)), _wgslsmith_f_op_vec4_f32(func_2(Struct_4(var_2.a, var_0.b, var_0.b, false), u_input.b, var_1, Struct_4(vec2<f32>(-661f, -549f), vec4<bool>(false, false, var_2.d, var_0.b.x), var_0.c, var_0.b.x))).xxx)))))), ~abs(~_wgslsmith_sub_u32(4294967295u, 4294967295u)), _wgslsmith_mult_u32(~var_1.x, var_1.x));
}

