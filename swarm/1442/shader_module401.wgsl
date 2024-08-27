struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, true, true, true, true, false);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 8>();
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(max(vec4<i32>(~(-13779i), ~u_input.c.x, -26540i, u_input.c.x ^ u_input.c.x), -select(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(27566u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], false))), -((vec4<i32>(1i, u_input.c.x, 51594i, u_input.c.x) >> (vec4<u32>(41838u, 4294967295u, 11973u, u_input.a) % vec4<u32>(32u))) ^ (vec4<i32>(20407i, 0i, u_input.c.x, u_input.c.x) | vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 0i)))));
    global0 = array<bool, 8>();
    var_0 = Struct_2(reverseBits(~var_0.a));
    var var_1 = ~(-((vec2<i32>(2659i, u_input.c.x) & var_0.a.xw) | (vec2<i32>(u_input.c.x, 0i) << (u_input.b.xz % vec2<u32>(32u)))) & vec2<i32>(u_input.c.x, 0i | -var_0.a.x));
    return Struct_1(global0[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 8u)], -1i, u_input.c.x & var_1.x);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = any(!(!vec4<bool>(arg_0.a, true, true, global0[_wgslsmith_index_u32(arg_2.x, 8u)]))) | arg_0.a;
    let var_1 = Struct_2(~(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b, -36189i, 34770i, -1i), vec4<i32>(25954i, arg_0.b, arg_0.b, arg_0.c), vec4<i32>(-1i, 9866i, u_input.c.x, u_input.c.x)), abs(vec4<i32>(26672i, u_input.c.x, u_input.c.x, 36272i))) << (abs(arg_2) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -var_1.a.x) >> (_wgslsmith_clamp_vec2_u32(min(arg_2.zx, u_input.b.yz), vec2<u32>(arg_2.x, u_input.b.x), arg_2.xx) % vec2<u32>(32u)), vec2<i32>(var_1.a.x ^ arg_0.c, ~1i)), -_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(27926i, -1i)), vec2<i32>(var_1.a.x, u_input.c.x) & u_input.c) & vec2<i32>(reverseBits(_wgslsmith_div_i32(-1i, u_input.c.x)), -1i));
    return countOneBits(reverseBits(arg_2));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = ~(-50073i);
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_1 = vec3<i32>(reverseBits(arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), ~(-u_input.c)), -14919i) | arg_2.a.zwx;
    var var_2 = ~(~max(~(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u) >> (vec4<u32>(74326u, u_input.a, 58221u, u_input.b.x) % vec4<u32>(32u))), func_3(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -179f), vec4<u32>(48902u, u_input.a, u_input.a, 0u))));
    return firstTrailingBit(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2219f)));
    var_0 = -574f;
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(34731u, max(~u_input.b.x, ~74015u), abs(reverseBits(u_input.b.x)))), vec3<u32>(~countOneBits(85919u), max(firstTrailingBit(0u), ~(~u_input.b.x)), 3083u));
    var_0 = _wgslsmith_f_op_f32(863f + _wgslsmith_f_op_f32(f32(-1f) * -1806f));
    var var_2 = ~(firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(u_input.c.x, 1i), -1i, u_input.c.x << (u_input.a % 32u), 2147483647i)) & vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x ^ u_input.c.x, -2147483647i), ~u_input.c.x, _wgslsmith_add_i32(u_input.c.x, func_1(Struct_2(vec4<i32>(1607i, u_input.c.x, 48916i, -18843i)), 43683i, Struct_2(vec4<i32>(-2147483647i, 0i, u_input.c.x, u_input.c.x)))), ~u_input.c.x));
    var var_3 = _wgslsmith_add_vec4_u32(firstLeadingBit(select(abs(vec4<u32>(16459u, u_input.b.x, u_input.b.x, 55019u)), vec4<u32>(u_input.a, 65105u, 31799u, 13855u), global0[_wgslsmith_index_u32(u_input.a | u_input.b.x, 8u)])), ~_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.a, 4294967295u, 0u, 26317u)), _wgslsmith_mod_vec4_u32(vec4<u32>(54861u, u_input.a, u_input.a, u_input.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)))) & reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 1u), vec4<u32>(u_input.a, 4294967295u, u_input.b.x, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(91253u, u_input.b.x, 6967u, 11669u), vec4<u32>(u_input.a, 30268u, 0u, 1u))) & ~reverseBits(vec4<u32>(114030u, 4294967295u, u_input.b.x, u_input.a)));
    var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_add_i32(16771i, func_2().b), _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(2147483647i, ~u_input.c.x, u_input.c.x)), var_2.x), vec4<i32>(u_input.c.x, ~(-1118i), ~u_input.c.x ^ var_2.x, _wgslsmith_div_i32(select(var_2.x >> (var_3.x % 32u), firstTrailingBit(var_2.x), true), u_input.c.x ^ var_2.x)));
    let var_4 = Struct_1(global0[_wgslsmith_index_u32(var_3.x, 8u)], u_input.c.x, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(var_4.b, u_input.c.x), var_2.x), u_input.c.x & -53551i), var_3.x, func_3(Struct_1(false, var_4.b, func_1(Struct_2(vec4<i32>(-37825i, u_input.c.x, var_4.c, u_input.c.x)), var_4.c << (var_3.x % 32u), Struct_2(vec4<i32>(-36041i, u_input.c.x, -15226i, u_input.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1239f, _wgslsmith_f_op_f32(648f - -322f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(595f, 505f) - _wgslsmith_f_op_f32(817f + -1301f))), _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(83471u, 8684u, 87925u, var_3.x), vec4<u32>(var_3.x, u_input.a, var_3.x, var_3.x))), vec4<u32>(func_3(var_4, 708f, vec4<u32>(33338u, 0u, u_input.a, u_input.a)).x, func_3(var_4, -545f, vec4<u32>(u_input.a, 1u, var_3.x, var_3.x)).x, ~1u, var_3.x))).ww, ~7667i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -398f) + _wgslsmith_f_op_f32(f32(-1f) * -1269f)))))));
}

