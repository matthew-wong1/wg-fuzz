struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(36502u, Struct_2(Struct_1(false, vec3<i32>(-1i, -1i, -14352i)), vec2<u32>(40266u, 4294967295u), 240f));

var<private> global1: array<u32, 18>;

var<private> global2: array<Struct_4, 23>;

var<private> global3: array<bool, 19>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: vec2<i32>) -> vec2<f32> {
    global2 = array<Struct_4, 23>();
    global0 = global2[_wgslsmith_index_u32(~(~firstTrailingBit(_wgslsmith_mult_u32(global0.a, global0.a))), 23u)];
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b.c), 230f)));
    let var_1 = arg_3.x | -22683i;
    var var_2 = Struct_3(arg_1);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.a))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, 2182f) * arg_1)), _wgslsmith_div_vec2_f32(vec2<f32>(1714f, global0.b.c), arg_1)), vec2<f32>(485f, _wgslsmith_f_op_f32(select(arg_2.a.a.x, arg_2.a.a.x, true)))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(1325f - _wgslsmith_f_op_f32(global0.b.c * 791f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b.c, global0.b.c), vec2<f32>(-707f, global0.b.c))))), Struct_5(Struct_3(vec2<f32>(859f, global0.b.c)), select(vec2<bool>(false, global3[_wgslsmith_index_u32(3309u, 19u)]), vec2<bool>(true, true), vec2<bool>(true, false)), global2[_wgslsmith_index_u32(abs(arg_0), 23u)]), u_input.a.xx))), !vec2<bool>(true, global0.b.a.a), Struct_4(reverseBits(u_input.c.x), Struct_2(Struct_1(true, _wgslsmith_add_vec3_i32(u_input.a, global0.b.a.b)), ~_wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(0u, 9199u)), _wgslsmith_f_op_f32(-global0.b.c))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c) + var_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.b.c)), var_0.c.b.c) - global0.b.c)));
    global2 = array<Struct_4, 23>();
    let var_2 = ~var_0.c.b.a.b.zy;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.c)) - _wgslsmith_f_op_f32(global0.b.c - _wgslsmith_f_op_f32(var_1 - var_1))), global0.b.c));
    return global0.b.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    global0 = global2[_wgslsmith_index_u32(countOneBits(~(~max(41889u, ~u_input.b.x))), 23u)];
    global2 = array<Struct_4, 23>();
    var var_0 = Struct_3(vec2<f32>(1418f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.b.c))))));
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    return global0.b.c;
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_div_f32(-1010f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.c, arg_0.b.c, any(vec4<bool>(true, global0.b.a.a, true, true))))))));
    var var_1 = Struct_4(~arg_0.b.b.x, Struct_2(arg_0.b.a, vec2<u32>(abs(global0.b.b.x << (global0.b.b.x % 32u)), 3044u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c) + _wgslsmith_f_op_f32(func_4(vec3<u32>(50883u, 12417u, u_input.b.x), func_2(4294967295u, global3[_wgslsmith_index_u32(arg_0.b.b.x, 19u)]))))));
    var_1 = arg_0;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1139f, global0.b.c))))))));
    var var_3 = Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_mult_vec3_i32(~countOneBits(vec3<i32>(11093i, 0i, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.b.a.b.x, var_1.b.a.b.x) >> (vec3<u32>(62983u, 23593u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(global0.b.a.b.x, var_1.b.a.b.x, 0i) >> (vec3<u32>(5416u, 1u, 4294967295u) % vec3<u32>(32u))))), vec2<u32>(28519u, ~(arg_0.b.b.x << (1u % 32u))) | _wgslsmith_add_vec2_u32(~(~arg_0.b.b), (vec2<u32>(26496u, u_input.b.x) ^ global0.b.b) << (var_1.b.b % vec2<u32>(32u))), -287f);
    return _wgslsmith_f_op_f32(func_4(vec3<u32>(4294967295u, 4294967295u, _wgslsmith_sub_u32(~1u >> ((0u | u_input.c.x) % 32u), min(min(global1[_wgslsmith_index_u32(4294967295u, 18u)], 35583u), _wgslsmith_mult_u32(1u, 43708u)))), func_2(_wgslsmith_clamp_u32(global0.b.b.x, min(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(arg_0.b.b.x, 18u)]), 0u), var_3.b.x), var_3.a.b.x < global0.b.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 18>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1012f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.b.x, 23u)])))), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.c, -312f) + _wgslsmith_f_op_f32(abs(global0.b.c))))), global0.b.c);
    var var_1 = vec3<i32>(-1i) * -select(select(vec3<i32>(u_input.a.x, global0.b.a.b.x, -2147483647i), select(global0.b.a.b, vec3<i32>(global0.b.a.b.x, u_input.a.x, global0.b.a.b.x), vec3<bool>(true, global0.b.a.a, true)), vec3<bool>(false, global0.b.a.a, false)), _wgslsmith_mult_vec3_i32(global0.b.a.b, vec3<i32>(-8988i, u_input.a.x, global0.b.a.b.x) >> (vec3<u32>(global0.a, u_input.b.x, 4294967295u) % vec3<u32>(32u))), global3[_wgslsmith_index_u32(~reverseBits(527u), 19u)]);
    var_1 = u_input.a;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(countOneBits(countOneBits(4294967295u)), global1[_wgslsmith_index_u32(global0.a, 18u)], reverseBits(min(1439u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)])), 4294967295u << (u_input.b.x % 32u))), 18u)] | (select(global0.a, ~_wgslsmith_mult_u32(global0.b.b.x, u_input.b.x), ~global0.b.b.x > global0.a) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(max(global0.a, u_input.b.x), u_input.b.x), select(global0.b.b, vec2<u32>(65223u, 1u), vec2<bool>(false, global0.b.a.a))));
    let var_3 = !global0.b.a.a;
    let var_4 = global0.b.a;
    let var_5 = Struct_4(select(4294967295u, u_input.c.x, false), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(max(var_4.b.x, ~0i), max(u_input.a.x, var_4.b.x)));
}

