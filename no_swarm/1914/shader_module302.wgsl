struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, true);

var<private> global1: array<vec4<u32>, 13>;

var<private> global2: vec2<f32>;

var<private> global3: array<bool, 23> = array<bool, 23>(false, false, false, true, false, false, true, true, false, true, true, true, false, true, false, false, true, false, false, false, true, false, true);

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global4 = Struct_3(global0.a != all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), global4.b), select(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 23u)], true), vec2<bool>(true, false)), true)), any(!select(!vec3<bool>(global3[_wgslsmith_index_u32(24012u, 23u)], global4.a, global0.b), vec3<bool>(global0.b, global3[_wgslsmith_index_u32(1u, 23u)], false), !vec3<bool>(global4.b, global0.b, global0.b))), u_input.a);
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1230f, global2.x, 476f), vec3<f32>(1000f, 278f, -188f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1632f, 1178f, global2.x), vec3<f32>(1839f, global2.x, global2.x), select(vec3<bool>(global3[_wgslsmith_index_u32(global4.c, 23u)], global3[_wgslsmith_index_u32(75106u, 23u)], global3[_wgslsmith_index_u32(33775u, 23u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(global4.c, 23u)], true), global0.b))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2187f, -835f, _wgslsmith_div_f32(global2.x, global2.x))))), Struct_1(true, global0.a), -(~abs(vec3<i32>(-1i, -47841i, u_input.c))));
    let var_1 = global4.c;
    return i32(-1i) * -1i;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<i32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1, arg_1, global4.a)) - _wgslsmith_f_op_vec3_f32(-arg_1)), arg_1)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(~func_3(), vec3<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), -1365f, _wgslsmith_div_f32(-1859f, global2.x)), global2.x, ~(-vec3<i32>(0i, arg_2, 24119i))))), Struct_1(!all(!vec2<bool>(false, global4.b)), false), ~_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.c, 2147483647i, 7979i)), _wgslsmith_div_vec3_i32(vec3<i32>(9842i, u_input.c, arg_2), vec3<i32>(-2147483647i, -28823i, 2147483647i))) >> (min(vec3<u32>(max(arg_1.c, 1u), _wgslsmith_clamp_u32(global4.c, 39047u, u_input.a), ~22110u), min(vec3<u32>(arg_3, arg_1.c, arg_1.c), vec3<u32>(4294967295u, 43535u, u_input.a)) ^ abs(vec3<u32>(4294967295u, 4294967295u, 0u))) % vec3<u32>(32u)));
    global0 = var_0.b;
    let var_1 = arg_1;
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x)))));
    return ~firstTrailingBit(_wgslsmith_div_i32(u_input.c, reverseBits(u_input.b)));
}

fn func_5(arg_0: i32) -> vec2<u32> {
    var var_0 = -func_2(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), ~select(global1[_wgslsmith_index_u32(4294967295u, 13u)], vec4<u32>(0u, u_input.a, 41558u, u_input.a), vec4<bool>(global4.b, global3[_wgslsmith_index_u32(u_input.a, 23u)], false, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), Struct_3(global3[_wgslsmith_index_u32(u_input.a, 23u)], global4.b, u_input.a), _wgslsmith_div_i32(-10708i, u_input.c), 74621u);
    let var_1 = Struct_3(-2147483647i > max(firstTrailingBit(_wgslsmith_mult_i32(arg_0, arg_0)), arg_0), !all(vec3<bool>(any(vec3<bool>(global4.a, false, global0.b)), true, false)), ~(21473u & u_input.a));
    global4 = Struct_3(1i < _wgslsmith_mod_i32(arg_0 & u_input.b, max(_wgslsmith_sub_i32(u_input.c, 13540i), arg_0)), ~_wgslsmith_div_u32(var_1.c, 59398u) <= global4.c, _wgslsmith_sub_u32(global4.c, countOneBits(max(~4294967295u, _wgslsmith_sub_u32(49347u, var_1.c)))));
    let var_2 = select(vec3<u32>(global4.c, global4.c & _wgslsmith_add_u32(29877u, 0u), global4.c), abs(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 15393u, 82079u), ~vec3<u32>(u_input.a, 17342u, 80413u)), countOneBits(~vec3<u32>(global4.c, u_input.a, global4.c)), (1u | u_input.a) == _wgslsmith_clamp_u32(var_1.c, 1u, global4.c))), false);
    var_0 = _wgslsmith_sub_i32(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0, arg_0) >> (_wgslsmith_add_u32(global4.c, 4294967295u) % 32u), 2147483647i), ((u_input.c ^ abs(-23045i)) ^ ~(~(-2147483647i))) ^ _wgslsmith_mult_i32(arg_0, -1i));
    return vec2<u32>(var_2.x, ~(~global4.c));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> vec2<u32> {
    return abs(func_5(~(-func_2(3516u, Struct_3(global4.b, global3[_wgslsmith_index_u32(u_input.a, 23u)], global4.c), arg_1, 77937u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(17774u, 1u)), func_1(Struct_3(global0.a, false, 4761u), u_input.b, global4.c, ~vec2<i32>(u_input.c, 2147483647i))), abs(min(~vec2<u32>(35274u, u_input.a), ~vec2<u32>(u_input.a, global4.c)))) | vec2<u32>(global4.c, abs(~_wgslsmith_mod_u32(global4.c, global4.c)));
    let var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(countOneBits(_wgslsmith_mult_u32(27042u, 30385u)), 4294967295u)), 13u)];
    global1 = array<vec4<u32>, 13>();
    let var_2 = Struct_4(u_input.a, _wgslsmith_add_u32(~(firstTrailingBit(global4.c) | min(var_0.x, 25027u)), 2747u), vec2<bool>(global3[_wgslsmith_index_u32(countOneBits(1u) & (u_input.a & _wgslsmith_div_u32(64437u, global4.c)), 23u)], !(!all(vec3<bool>(true, true, global4.b)))), 655f, Struct_3(all(vec3<bool>(false, !global0.a, any(vec4<bool>(global4.a, global0.a, global3[_wgslsmith_index_u32(global4.c, 23u)], false)))), global3[_wgslsmith_index_u32(63031u, 23u)], ~(u_input.a << (var_1.x % 32u))));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-606f, _wgslsmith_f_op_f32(ceil(-1907f))), vec2<f32>(_wgslsmith_f_op_f32(872f * var_2.d), _wgslsmith_f_op_f32(1000f * global2.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, _wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(190f * var_2.d)))));
    var var_3 = ~_wgslsmith_clamp_u32(u_input.a, ~var_0.x, ~func_1(var_2.e, 7572i >> (1u % 32u), 33058u, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(4300i, -2147483647i))).x);
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(821f, var_2.d, global2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -847f, var_2.d)), vec3<bool>(global4.a, global4.b, false))))), Struct_1(false, global2.x < global2.x), _wgslsmith_div_vec3_i32(-firstLeadingBit(vec3<i32>(-39684i, u_input.c, -2147483647i)), max(select(vec3<i32>(u_input.c, -2147483647i, u_input.c) & vec3<i32>(3878i, 0i, u_input.c), vec3<i32>(1i, u_input.c, 51728i) >> (var_1.zyz % vec3<u32>(32u)), select(vec3<bool>(var_2.c.x, true, global4.b), vec3<bool>(global4.b, false, global0.b), true)), vec3<i32>(0i, u_input.c, u_input.b) ^ -vec3<i32>(u_input.b, 2147483647i, -44028i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(-31493i, -var_4.c.x, ~13257i)), ~vec3<u32>(~9847u, var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(3877u, 35073u, 0u), vec3<u32>(global4.c, 93916u, 4094u))));
}

