struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7>;

var<private> global1: array<vec4<bool>, 14>;

var<private> global2: array<vec4<bool>, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    global1 = array<vec4<bool>, 14>();
    let var_0 = u_input.c.yy;
    global0 = array<vec3<i32>, 7>();
    global0 = array<vec3<i32>, 7>();
    global1 = array<vec4<bool>, 14>();
    return min(~vec3<i32>(~32614i, reverseBits(u_input.b.x), u_input.a) | global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 26087u), select(vec3<u32>(u_input.c.x, u_input.c.x, 24539u), u_input.c, vec3<bool>(false, arg_0, true))), _wgslsmith_div_u32(u_input.c.x, 1u), 4294967295u), 7u)], _wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(37629u, 7u)], vec3<i32>(u_input.a, u_input.b.x, u_input.b.x)), ~(-1i)) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 25489u, var_0.x), u_input.c) % vec3<u32>(32u)), vec3<i32>(-50579i, 1i, i32(-1i) * -1i)));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = u_input.c.x;
    var var_1 = Struct_1(-31448i < _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(1i, u_input.b.x), u_input.a, _wgslsmith_clamp_i32(1i, arg_0, _wgslsmith_mult_i32(-1i, arg_0))), func_3(arg_0 >= -_wgslsmith_add_i32(21733i, 14361i)));
    global0 = array<vec3<i32>, 7>();
    var var_2 = u_input.b;
    let var_3 = -553f;
    return all(!(!vec4<bool>(true, false, true, select(var_1.a, true, var_1.a))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(false, vec3<i32>(~(-1i), ~_wgslsmith_mod_i32(u_input.a, 0i), -1i));
    var var_1 = reverseBits(var_0.b.x);
    let var_2 = select(max(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 12366u, u_input.c.x), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, 224u, u_input.c.x) ^ (vec4<u32>(70816u, u_input.c.x, 29342u, u_input.c.x) << (vec4<u32>(54413u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)))), ~vec4<u32>(~u_input.c.x, ~u_input.c.x, ~4294967295u, ~u_input.c.x), any(vec2<bool>(var_0.a, !var_0.a))) | min(vec4<u32>(~0u, 1u, ~1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 41938u));
    var var_3 = Struct_1((var_0.a | false) && any(!arg_0.xz), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.xzy, abs(vec3<i32>(2816i, 96430i, -5972i))), vec3<i32>(-29752i & var_0.b.x, ~36266i, -u_input.b.x)) << (firstLeadingBit(select(~var_2.zxw, var_2.xwz, vec3<bool>(true, true, true))) % vec3<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(148f)) - _wgslsmith_f_op_f32(-arg_1.a))))) >= _wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_f_op_f32(round(1221f))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-351f, -544f)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = firstTrailingBit(~(~(~arg_1))) << (arg_1 % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 771f, 165f)))), vec3<f32>(_wgslsmith_f_op_f32(234f + 346f), arg_0.a, -1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1962f * -1981f) - 255f), -669f, _wgslsmith_f_op_f32(f32(-1f) * -525f)));
    let var_2 = ~arg_1;
    global1 = array<vec4<bool>, 14>();
    global1 = array<vec4<bool>, 14>();
    return func_4(select(arg_2, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x, var_2), 31u)], _wgslsmith_clamp_u32(1u, countOneBits(var_2), 1u) < (_wgslsmith_mod_u32(36112u, 40836u) ^ firstTrailingBit(0u))), func_4(vec4<bool>(func_2(0i), !any(vec2<bool>(arg_2.x, arg_2.x)), true, arg_2.x), Struct_2(-487f), Struct_2(arg_0.a)), func_4(select(select(!arg_2, !global2[_wgslsmith_index_u32(13102u, 31u)], arg_2.x), !arg_2, vec4<bool>(arg_2.x | true, u_input.c.x == 4294967295u, all(vec2<bool>(arg_2.x, false)), true | arg_2.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -546f))), arg_0));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_5(func_4(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1881f * 1667f), _wgslsmith_f_op_f32(-1000f * -983f), func_2(u_input.a)))), Struct_2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), reverseBits(12718u), ~u_input.c.x), select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 16734u), u_input.c), u_input.c, vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), u_input.c), vec4<bool>(false, true, true, select(true, false, all(global1[_wgslsmith_index_u32(1u, 14u)]))));
    var var_1 = -1406f;
    let var_2 = Struct_1(all(vec3<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)), false)), ~(-global0[_wgslsmith_index_u32(~u_input.c.x, 7u)]) | (max(_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(17704u, 7u)], u_input.b.yzz, vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), u_input.b.xzx << (u_input.c % vec3<u32>(32u))) | -_wgslsmith_sub_vec3_i32(u_input.b.zyz, global0[_wgslsmith_index_u32(78177u, 7u)])));
    global1 = array<vec4<bool>, 14>();
    var var_3 = true;
    return countOneBits(~(~vec4<u32>(9636u, u_input.c.x, u_input.c.x, u_input.c.x))) >> (vec4<u32>(~71251u | _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c.x, 66209u, u_input.c.x), select(u_input.c.x, u_input.c.x, var_2.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 37261u, 4294967295u) << (u_input.c % vec3<u32>(32u)), ~(u_input.c >> (u_input.c % vec3<u32>(32u)))), firstTrailingBit(0u), _wgslsmith_mod_u32(4294967295u, ~u_input.c.x)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u), vec4<u32>(u_input.c.x, 29355u, 0u, u_input.c.x)), func_1()));
    global0 = array<vec3<i32>, 7>();
    global1 = array<vec4<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_0.x, 39577u >> (u_input.c.x % 32u)), -6905i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 934f, 774f, -1542f) * vec4<f32>(-351f, -388f, 1054f, 179f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(135f * -1393f))), _wgslsmith_f_op_f32(-2393f - 1230f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) * _wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_f32(sign(1377f))))));
}

