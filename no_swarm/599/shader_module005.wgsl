struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: i32 = 1i;

var<private> global3: array<vec3<f32>, 12>;

var<private> global4: Struct_2 = Struct_2(Struct_1(2147483647i, vec3<i32>(1i, 18498i, 729i), 24857u, 6627u, vec3<f32>(-1027f, 341f, -330f)), vec3<i32>(-52204i, -1i, 34529i), 1i, -50065i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(-25247i, abs(-9804i) & _wgslsmith_sub_i32(global4.c, 0i)), select(_wgslsmith_dot_vec2_i32(-global1[_wgslsmith_index_u32(58413u, 13u)], -vec2<i32>(global4.d, -9013i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-81932i, 49223i), firstTrailingBit(vec2<i32>(u_input.b, u_input.b))), true)), global4.a.b, arg_0.x, _wgslsmith_mult_u32(global4.a.d, global4.a.c), global3[_wgslsmith_index_u32(1u, 12u)]);
    global4 = Struct_2(var_0, _wgslsmith_div_vec3_i32(~abs(vec3<i32>(20352i, 48743i, 0i)), var_0.b), 4351i ^ var_0.b.x, 2906i);
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(45282u, ~arg_0.x, arg_0.x, ~arg_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.a.d, var_0.d, u_input.c, var_0.c), vec4<u32>(1482u, u_input.c, arg_0.x, 4349u), ~arg_0), global0.x), max(_wgslsmith_sub_vec4_u32(arg_0, arg_0), arg_0) >> (abs(arg_0) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, var_0.d, var_0.c) & vec3<u32>(1u, arg_0.x, 0u), vec3<u32>(41942u, global4.a.c, global4.a.c)), global4.a.c, global4.a.d, 17743u));
    global1 = array<vec2<i32>, 13>();
    let var_2 = firstTrailingBit(~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.c), vec2<u32>(u_input.a.x, global4.a.d)), _wgslsmith_add_u32(u_input.a.x, var_1.x), ~var_0.c, ~arg_0.x)));
    return vec3<bool>(global0.x, global0.x, global0.x);
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    global2 = 21732i;
    var var_0 = Struct_3(arg_0.a);
    global0 = !select(!select(vec3<bool>(arg_1, global0.x, global0.x), func_3(vec4<u32>(6896u, 18734u, 72685u, 0u)), !vec3<bool>(true, true, arg_1)), vec3<bool>(!(!arg_1), any(vec4<bool>(true, global0.x, arg_1, global0.x)) & true, arg_1), global0.x);
    let var_1 = !select(!func_3(~vec4<u32>(0u, 0u, 7873u, 0u)), !(!vec3<bool>(false, global0.x, true)), vec3<bool>(arg_1, arg_1, !global0.x));
    global4 = Struct_2(global4.a, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -15896i, -2147483647i), global4.a.b), arg_3 | countOneBits(select(_wgslsmith_add_i32(31309i, 1i), global4.b.x, global0.x)), arg_2.a);
    return vec2<f32>(_wgslsmith_f_op_f32(arg_2.e.x - _wgslsmith_f_op_f32(min(global4.a.e.x, -275f))), _wgslsmith_f_op_f32(-global4.a.e.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = arg_2.b.xy >> (vec2<u32>(81979u, (~74004u ^ ~u_input.c) | max(1u, ~1194u)) % vec2<u32>(32u));
    let var_1 = true;
    var_0 = global4.b.xx;
    global2 = countOneBits(i32(-1i) * -32623i);
    var_0 = arg_1;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.e.x))), arg_0.x, select(var_1, true, global0.x)))));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = Struct_2(Struct_1(~select(30918i, -25737i, global0.x && false), global4.a.b, reverseBits(1u), ~1902u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1057f, _wgslsmith_f_op_f32(abs(-1555f)), -550f)))), -(firstLeadingBit(reverseBits(vec3<i32>(u_input.b, global4.a.b.x, global4.b.x))) ^ -global4.a.b), global4.b.x, global4.a.b.x);
    var var_1 = ~_wgslsmith_sub_i32(~var_0.a.b.x, u_input.b) & var_0.d;
    let var_2 = Struct_2(global4.a, max(countOneBits(-global4.b), global4.b) | _wgslsmith_add_vec3_i32(var_0.a.b, global4.a.b), ~(-1i), ~(0i | global4.d));
    let var_3 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(global4.a.e.x), true, Struct_1(global4.d, vec3<i32>(global4.c, var_2.c, -1i), u_input.c, var_2.a.d, vec3<f32>(global4.a.e.x, 374f, 174f)), 20840i)), vec2<f32>(-791f, -172f)))) + var_2.a.e.zz), firstTrailingBit(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(global4.c, global4.c), vec2<i32>(2147483647i, var_0.c), vec2<i32>(1i, var_2.c)) & (vec2<i32>(368i, var_0.b.x) >> (u_input.a % vec2<u32>(32u))))), var_0, _wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(global4.a.c))));
    global3 = array<vec3<f32>, 12>();
    return _wgslsmith_f_op_vec2_f32(func_2(Struct_3(1073f), any(vec3<bool>(true && (global0.x == false), true, global0.x)), Struct_1(8997i, global4.b, (~121337u & var_0.a.d) >> (16930u % 32u), var_0.a.d, vec3<f32>(1462f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1623f, 500f) - 247f), global4.a.e.x)), -15989i)).x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global4.a.b.x;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_1(global0.x)));
    let var_1 = global4.a;
    global1 = array<vec2<i32>, 13>();
    global2 = reverseBits(~var_1.a);
    var var_2 = Struct_2(global4.a, firstLeadingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, 2147483647i, 1i), vec3<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 20067i), var_1.b), var_1.b.x))), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b << (global4.a.d % 32u), max(u_input.b, _wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(0i, 1i, var_1.a)))), var_1.a), var_1.a);
    global0 = select(vec3<bool>(!global0.x, global0.x, !(all(vec2<bool>(global0.x, global0.x)) && (false && global0.x))), select(!vec3<bool>(!global0.x, global0.x, false), !vec3<bool>(true, global0.x, true), !func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(17209u, var_1.d, u_input.a.x, 4294967295u), vec4<u32>(global4.a.c, var_1.d, var_2.a.d, u_input.c)))), !(!(!global0.x)));
    var_2 = Struct_2(Struct_1(var_2.d, global4.b ^ select(reverseBits(var_1.b), vec3<i32>(u_input.b, 1i, 0i), vec3<bool>(global0.x, global0.x, true)), var_2.a.d, ~u_input.c, var_1.e), var_1.b, u_input.b, -49633i | _wgslsmith_mod_i32(abs(-var_1.b.x), ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.d, global4.a.e.xy);
}

