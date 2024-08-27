struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(308f, 593f), -789f);

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true));

var<private> global2: vec2<u32> = vec2<u32>(112128u, 4294967295u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = ~_wgslsmith_sub_i32(firstTrailingBit(-countOneBits(-1i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-3731i, -1i, -2147483647i), ~vec3<i32>(6770i, arg_0.x, u_input.a)) | 1i);
    global2 = ~vec2<u32>(global2.x, global2.x);
    let var_1 = select(select(global0.a.xzw, arg_2.a.wzy, all(!global0.a.yw) | global0.a.x), global0.a.xwx, global0.a.x);
    return ~(min(~_wgslsmith_sub_i32(-2147483647i, -1i), 36220i) << (_wgslsmith_sub_u32(49484u, 0u | (global2.x & 0u)) % 32u));
}

fn func_2() -> vec2<f32> {
    let var_0 = 18395i;
    global1 = array<vec4<bool>, 28>();
    var var_1 = Struct_2(Struct_1(select(select(!global1[_wgslsmith_index_u32(global2.x, 28u)], vec4<bool>(false, true, global0.a.x, true), true), select(select(global1[_wgslsmith_index_u32(global2.x, 28u)], global0.a, vec4<bool>(global0.a.x, global0.a.x, false, false)), select(vec4<bool>(false, global0.a.x, global0.a.x, true), global0.a, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)), vec4<bool>(false, false, global0.a.x, global0.a.x)), global0.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(-1000f, global0.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(860f + 1159f))), Struct_1(vec4<bool>(-u_input.a <= func_3(vec2<i32>(-52790i, 51015i), vec4<f32>(994f, -1000f, 818f, 542f), Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec2<f32>(-1190f, global0.b.x), global0.c)), ~global2.x >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global2.x, 3739u), vec4<u32>(global2.x, global2.x, 38282u, global2.x)), true, !any(global0.a.wx)), vec2<f32>(_wgslsmith_f_op_f32(-627f + _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1508f, global0.c), _wgslsmith_f_op_f32(global0.c * -1000f), 944f >= global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-625f + global0.b.x)))), Struct_1(select(global0.a, vec4<bool>(all(vec2<bool>(global0.a.x, global0.a.x)), !global0.a.x, !global0.a.x, false), global0.a), _wgslsmith_f_op_vec2_f32(select(global0.b, _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(global0.c, -418f)), global0.a.yz)), -806f), select(vec2<i32>(u_input.a, 2147483647i), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0, -19299i) & vec2<i32>(3992i, 0i), vec2<i32>(u_input.a, var_0)), vec2<i32>(~var_0, 1i)), !(2147483647i < ~u_input.a)), vec2<i32>(countOneBits(reverseBits(u_input.a)), max(-2147483647i, u_input.a)));
    global1 = array<vec4<bool>, 28>();
    var var_2 = Struct_1(!(!var_1.c.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.c, global0.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1171f, global0.b.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, 2055f))))))), _wgslsmith_div_f32(1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b.x, global0.b.x, var_1.c.a.x)) * var_1.b.b.x))));
    return var_2.b;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = Struct_1(select(vec4<bool>(!(!global0.a.x), true, (global0.a.x & false) & global0.a.x, all(select(vec4<bool>(global0.a.x, true, false, global0.a.x), vec4<bool>(false, false, global0.a.x, false), global1[_wgslsmith_index_u32(0u, 28u)]))), vec4<bool>(false == !global0.a.x, global0.c < _wgslsmith_f_op_f32(f32(-1f) * -872f), select(any(vec2<bool>(global0.a.x, true)), false, true), false), !(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) + global0.c));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global2 = ~_wgslsmith_clamp_vec2_u32(abs(~(vec2<u32>(4294967295u, global2.x) ^ vec2<u32>(global2.x, 1u))), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 99988u, global2.x, global2.x), vec4<u32>(3482u, 0u, 45186u, 7193u)), countOneBits(vec4<u32>(global2.x, global2.x, global2.x, 29666u))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global2.x), ~vec3<u32>(4294967295u, global2.x, 105845u))), max(_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, global2.x), ~vec2<u32>(global2.x, 0u)), vec2<u32>(countOneBits(4294967295u), 1u)));
    let var_1 = global0.a.x;
    global2 = select(~(~(vec2<u32>(69279u, 4294967295u) ^ abs(vec2<u32>(global2.x, 1u)))), _wgslsmith_sub_vec2_u32(vec2<u32>(~global2.x, ~(global2.x >> (global2.x % 32u))), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(global2.x, global2.x)), vec2<u32>(global2.x, ~69653u))), true);
    return Struct_1(select(vec4<bool>(true, any(global0.a.zzy) == false, !(global2.x == 4294967295u), any(select(global0.a.zxx, vec3<bool>(global0.a.x, false, true), global0.a.x))), select(global1[_wgslsmith_index_u32(4294967295u, 28u)], !global1[_wgslsmith_index_u32(global2.x, 28u)], !global1[_wgslsmith_index_u32(global2.x, 28u)]), global1[_wgslsmith_index_u32(global2.x, 28u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) - _wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_f32(trunc(324f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec2<i32>(-25239i, u_input.a));
    global2 = vec2<u32>(4294967295u, global2.x);
    global1 = array<vec4<bool>, 28>();
    let var_0 = func_1(-reverseBits(select(vec2<i32>(u_input.a, 0i) << (vec2<u32>(global2.x, 0u) % vec2<u32>(32u)), -vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true))));
    global2 = _wgslsmith_add_vec2_u32(vec2<u32>(~firstLeadingBit(4294967295u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u >> (global2.x % 32u), abs(68443u)), 0u)), vec2<u32>(~(1u & global2.x), global2.x));
    let var_1 = _wgslsmith_clamp_u32(min(global2.x, ~(~global2.x)), ~68246u, ~1u);
    global1 = array<vec4<bool>, 28>();
    var var_2 = func_1(vec2<i32>(~abs(-1i), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec2_i32(-(~vec2<i32>(u_input.a, 74003i)), abs(abs(vec2<i32>(u_input.a, 0i)))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -2147483647i) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), vec2<i32>(68901i, u_input.a) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_i32(vec2<i32>(42414i, 21271i), reverseBits(vec2<i32>(u_input.a, 55042i)), countOneBits(vec2<i32>(u_input.a, 2147483647i)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(432f)))))), _wgslsmith_add_u32(~9481u, _wgslsmith_sub_u32(~var_1, ~1u)), _wgslsmith_f_op_f32(step(185f, _wgslsmith_f_op_f32(f32(-1f) * -540f))), var_1);
}

