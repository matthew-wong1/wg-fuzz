struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    global0 = array<vec3<f32>, 17>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-359f))))))), 851f);
    var var_1 = u_input.b << (~(~_wgslsmith_add_u32(u_input.a, abs(0u))) % 32u);
    var_1 = max(_wgslsmith_clamp_i32(u_input.b, -24938i, _wgslsmith_sub_i32(u_input.b, _wgslsmith_add_i32(1i, 74138i))), ~(u_input.b | ~31857i));
    var var_2 = ~_wgslsmith_div_i32(-max(u_input.b, _wgslsmith_sub_i32(u_input.b, 26397i)), u_input.b);
    return vec2<bool>(!(!(true || all(vec4<bool>(true, false, false, false)))), !(all(vec4<bool>(false, false, true, true)) && all(vec2<bool>(false, true))) & true);
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    let var_0 = _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(select(~(~u_input.d), ~(~43144u), !any(vec3<bool>(true, true, true))), 17u)], _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)]));
    global0 = array<vec3<f32>, 17>();
    var var_1 = Struct_2(!all(func_3(_wgslsmith_add_vec2_u32(vec2<u32>(4329u, 75517u), vec2<u32>(25732u, 1u)))), !(-687f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))), ~vec3<u32>(u_input.a, ~u_input.d ^ ~4294967295u, u_input.a), Struct_1(abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-26768i, u_input.b), vec2<i32>(u_input.b, u_input.b)), max(vec2<i32>(u_input.b, 39011i), vec2<i32>(u_input.b, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1029f - -1000f)), _wgslsmith_f_op_f32(min(-1896f, -730f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-27549i, u_input.b, 12417i), vec3<i32>(u_input.b, 1i, u_input.b)), reverseBits(~vec3<i32>(0i, u_input.b, u_input.b))) & max(vec3<i32>(2147483647i, min(u_input.b, u_input.b), -u_input.b), ~vec3<i32>(u_input.b, 2147483647i, u_input.b) ^ vec3<i32>(u_input.b, 13247i, -2147483647i)));
    return Struct_2(var_1.b, var_1.b, vec3<u32>(min((var_1.c.x & var_1.d.a.x) << (~u_input.c % 32u), 1u), ~_wgslsmith_div_u32(~var_1.c.x, u_input.c), 4294967295u), var_1.d, select((var_1.e & countOneBits(vec3<i32>(2147483647i, var_1.e.x, var_1.d.b.x))) & ~var_1.e, select(abs(var_1.e << (var_1.c % vec3<u32>(32u))), var_1.e, !(!vec3<bool>(var_1.a, true, false))), all(vec2<bool>(func_3(var_1.d.a.xz).x, !var_1.a))));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec3<i32>(6014i >> (select(reverseBits(_wgslsmith_mult_u32(0u, 4294967295u)), ~(~26517u), true) % 32u), firstTrailingBit(-u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.b.x), vec2<i32>(u_input.b, -43750i)) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 47193u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a.x, 20339u, 38190u), ~u_input.c)) % 32u));
    let var_1 = arg_0.a.x;
    let var_2 = func_2();
    var var_3 = !var_2.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(390f, 310f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x - 1000f), _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, var_2.b)), _wgslsmith_f_op_f32(sign(var_2.d.c.x))) - var_2.d.c)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.d.c.x), arg_0.c.x)) * -1107f), _wgslsmith_f_op_f32(sign(arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, 352f) * _wgslsmith_f_op_f32(f32(-1f) * -822f)))));
    return ~arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(Struct_1(~(~vec3<u32>(1u, u_input.a, 37617u)), vec2<i32>(~0i, u_input.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 17u)]))))), -select(-select(vec2<i32>(43695i, u_input.b), vec2<i32>(u_input.b, -45379i), false), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -25675i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, -10876i))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), func_2().a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-234f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-599f, 962f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1370f + -1132f), _wgslsmith_div_f32(1161f, -847f))))));
    let var_1 = Struct_2(true, true, abs(var_0.a), Struct_1(~firstTrailingBit(var_0.a), ~var_0.b, var_0.c), ~countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(10864i, var_0.b.x, var_0.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, u_input.b, 34115i), vec3<i32>(u_input.b, -20520i, 8234i)))));
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * var_0.c.x);
    var var_3 = !vec2<bool>(var_1.b, !(var_0.c.x != _wgslsmith_f_op_f32(var_1.d.c.x + -734f)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(u_input.a & var_1.d.a.x) | (10537u | ~var_0.a.x), 50491u ^ (0u | func_1(var_0).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -320f)), _wgslsmith_div_f32(var_0.c.x, -1184f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1465f)), _wgslsmith_f_op_f32(f32(-1f) * -1197f), var_1.b))));
}

