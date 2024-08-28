struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global1: Struct_4 = Struct_4(68519u, true, 439f, vec3<bool>(false, true, true), Struct_2(true));

var<private> global2: array<vec4<u32>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = (vec4<i32>(-1i >> (_wgslsmith_add_u32(64199u, global1.a) % 32u), -2147483647i, firstLeadingBit(35251i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-4459i, -15190i, 0i, 1i), -vec4<i32>(4369i, -2147483647i, 4433i, 1i))) & -(reverseBits(vec4<i32>(1i, -5141i, -2147483647i, 2147483647i)) >> (~vec4<u32>(43739u, global1.a, 29698u, global1.a) % vec4<u32>(32u)))) ^ countOneBits(vec4<i32>(1i, 1i, 1i, 1i));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - arg_0.x)), _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), arg_0.x))), 1558f);
    var var_2 = Struct_4(_wgslsmith_mod_u32(global1.a, select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global1.a, 730u, 4294967295u) & vec4<u32>(4128u, 24043u, global1.a, global1.a), global2[_wgslsmith_index_u32(4294967295u, 24u)]), countOneBits(4294967295u ^ u_input.a), true)), global1.e.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-346f, 573f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(780f, var_1.x))))), _wgslsmith_f_op_f32(sign(var_1.x))), global1.d, Struct_2(_wgslsmith_mult_u32(abs(global1.a), ~0u) < (_wgslsmith_sub_u32(global1.a, 4294967295u) >> (global1.a % 32u))));
    var var_3 = Struct_4(firstLeadingBit(var_2.a), any(!vec2<bool>(any(vec3<bool>(true, true, true)), true)), _wgslsmith_div_f32(_wgslsmith_div_f32(-305f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1.c, global1.c))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(682f))), var_1.x))), global1.d, Struct_2(!var_2.d.x));
    var var_4 = var_3.e;
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2() -> u32 {
    global0 = array<vec4<bool>, 14>();
    let var_0 = Struct_5(-1732i, Struct_4(global1.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1104f - global1.c), global1.c))), select(!global1.d, global1.d, vec3<bool>(global1.d.x, global1.c != -1518f, all(vec2<bool>(global1.d.x, true)))), global1.e), _wgslsmith_dot_vec3_i32(~vec3<i32>(-5224i, 40178i, -2147483647i), vec3<i32>(1i, 1i, 1i)) & -37676i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, global1.c) - -1082f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-911f * _wgslsmith_f_op_f32(-770f + -121f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-457f + global1.c), -941f))))));
    global0 = array<vec4<bool>, 14>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(global1.c + var_0.d))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(global1.c, -490f, 1866f))) + _wgslsmith_f_op_f32(max(1000f, global1.c))))));
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~(~(~var_0.b.a))), vec2<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.a, 16069u), 24u)], ~global2[_wgslsmith_index_u32(4294967295u, 24u)]) >> (var_0.b.a % 32u), _wgslsmith_clamp_u32(var_0.b.a, 41272u, 49365u) ^ (~var_0.b.a >> (4294967295u % 32u))));
    return ~(select(_wgslsmith_dot_vec2_u32(var_2, var_2) >> (~global1.a % 32u), select(0u, 16348u, global1.b) | 11863u, any(vec3<bool>(false, global1.d.x, var_0.b.b))) & _wgslsmith_mod_u32(var_2.x, 1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.a, var_0.b.a), var_2)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec4_u32(max(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, u_input.a, 1u, global1.a), firstLeadingBit(global2[_wgslsmith_index_u32(global1.a, 24u)])), vec4<u32>(4294967295u, u_input.b, 0u, 4294967295u) & global2[_wgslsmith_index_u32(func_2(), 24u)]), ~(~vec4<u32>(u_input.a, 1789u, u_input.b, global1.a) >> ((global2[_wgslsmith_index_u32(0u, 24u)] ^ vec4<u32>(global1.a, u_input.a, 0u, global1.a)) % vec4<u32>(32u)))));
    let var_1 = Struct_4(select(1547u, 71527u, false), true, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3.c.x + arg_1.c.x), global1.c, _wgslsmith_f_op_f32(floor(arg_1.c.x)))))), vec3<bool>(arg_0.x, false, any(select(!global1.d, vec3<bool>(arg_1.d, true, arg_0.x), arg_1.d & arg_1.d))), global1.e);
    global2 = array<vec4<u32>, 24>();
    let var_2 = select(!select(arg_0, vec4<bool>(!arg_0.x, true, true, true), !select(global0[_wgslsmith_index_u32(global1.a, 14u)], global0[_wgslsmith_index_u32(global1.a, 14u)], arg_0)), !(!arg_0), true);
    var var_3 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_3.b, -1i), -countOneBits(-arg_1.a.x)), Struct_2(all(vec2<bool>(false, !var_1.b))), reverseBits(-min(vec4<i32>(arg_3.b, -21964i, -2147483647i, arg_3.b), vec4<i32>(arg_3.a.x, arg_2.x, arg_3.a.x, arg_3.a.x)) & -abs(vec4<i32>(-20291i, -42355i, arg_1.b, -40070i))), var_1.e, arg_1);
    return 499f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(883f - 230f), global1.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1974f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, 1991f, global1.c)) + vec3<f32>(global1.c, 1000f, -1375f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2188f, global1.c, 144f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.c, -1009f), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global1.a, 14u)], Struct_1(vec2<i32>(1i, 48915i), 17018i, vec2<f32>(109f, -359f), global1.d.x), vec2<i32>(50501i, -1i), Struct_1(vec2<i32>(22556i, 2147483647i), 14578i, vec2<f32>(-241f, -848f), false))))), -429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1185f, global1.c)))));
    var var_2 = countOneBits(vec2<u32>(global1.a, _wgslsmith_mod_u32(global1.a, ~max(99681u, 56925u))));
    global2 = array<vec4<u32>, 24>();
    let var_3 = vec3<bool>(all(select(!vec2<bool>(true, global1.e.a), !vec2<bool>(true, global1.b), global1.d.zx)) & (true && !(true & global1.b)), !(!global1.b), global1.b);
    let var_4 = Struct_3(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(~12496i, _wgslsmith_mod_i32(44073i, -1i), 2147483647i, reverseBits(0i))), Struct_2(0u < _wgslsmith_div_u32(reverseBits(0u), var_2.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-2147483647i, 58032i, 46206i)), 9069i, ~abs(-1i), -1i) & ~_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(36842i, -1i, 20013i, 2147483647i)), vec4<i32>(31186i, -2147483647i, -1i, 0i) << (global2[_wgslsmith_index_u32(13707u, 24u)] % vec4<u32>(32u))), Struct_2(_wgslsmith_add_i32(firstTrailingBit(2147483647i), 1i) != _wgslsmith_div_i32(1i, 2377i)), Struct_1(~(-firstLeadingBit(vec2<i32>(0i, 40250i))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-8017i, -25318i, -11764i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -53627i, 2147483647i), vec3<i32>(2147483647i, -2147483647i, -2147483647i))), -vec3<i32>(1i, 1i, 1i)), var_1.yz, true));
    let var_5 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(41161u, ~(~var_2.x))) | 101848u, 14u)];
    var var_6 = global1.e;
    var var_7 = _wgslsmith_f_op_f32(-global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(72264i, _wgslsmith_div_i32(var_4.e.a.x | -1i, var_4.c.x), reverseBits(-var_4.a) << (firstTrailingBit(var_2.x) % 32u)), abs(var_4.e.a), var_4.a);
}

