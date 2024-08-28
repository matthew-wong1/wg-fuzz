struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<u32, 18>;

var<private> global2: array<f32, 12>;

var<private> global3: vec2<f32> = vec2<f32>(153f, 302f);

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> vec4<f32> {
    global1 = array<u32, 18>();
    var var_0 = all(vec2<bool>(arg_0.a.a, true));
    global1 = array<u32, 18>();
    let var_1 = arg_0;
    var var_2 = ~u_input.b.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, var_1.b, 417f, -520f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, global3.x, 754f, arg_0.b), vec4<f32>(arg_0.b, global3.x, -1000f, -718f), true)))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    global2 = array<f32, 12>();
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-915f, -178f, _wgslsmith_f_op_f32(-arg_1), global2[_wgslsmith_index_u32(~(~4294967295u) >> (u_input.b.x % 32u), 12u)]) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_2, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -676f, 1479f, global2[_wgslsmith_index_u32(u_input.b.x, 12u)])))))));
    let var_2 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u | u_input.b.x, 12u)]);
    var var_3 = Struct_1(arg_2.a.a, max(vec4<i32>(-1i) * -abs(vec4<i32>(arg_2.a.b.x, var_0, var_0, arg_2.a.b.x)), ~countOneBits(arg_2.a.b) & vec4<i32>(reverseBits(arg_2.a.b.x), 24419i | arg_2.a.b.x, 1i, arg_2.a.b.x ^ var_0)));
    return vec2<bool>(true, u_input.b.x > 0u);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = u_input.b << (~(~max(vec2<u32>(global1[_wgslsmith_index_u32(41434u, 18u)], 8007u), vec2<u32>(global1[_wgslsmith_index_u32(0u, 18u)], u_input.b.x))) % vec2<u32>(32u));
    let var_1 = -vec3<i32>(2147483647i << (_wgslsmith_div_u32(20686u, 4294967295u) % 32u), ~reverseBits(arg_1), u_input.a) ^ -arg_2.a.b.zzy;
    let var_2 = _wgslsmith_mult_vec2_i32(abs(vec2<i32>(_wgslsmith_mult_i32(arg_0, -1i), 29964i)), arg_2.a.b.yy) | _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(var_1.x << (u_input.b.x % 32u), ~arg_1)), var_1.zz, vec2<i32>(select(0i, var_1.x, true), i32(-1i) * -1i));
    let var_3 = _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_2.b)), _wgslsmith_f_op_f32(-2267f - -1123f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(975f, global2[_wgslsmith_index_u32(42590u, 12u)])) + -1000f)) - _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x))), all(select(vec2<bool>(true, true), select(!vec2<bool>(arg_2.a.a, arg_2.a.a), select(vec2<bool>(true, false), vec2<bool>(true, arg_2.a.a), true), select(vec2<bool>(true, arg_2.a.a), vec2<bool>(arg_2.a.a, true), vec2<bool>(arg_2.a.a, false))), !func_2(vec4<bool>(true, false, arg_2.a.a, false), 737f, Struct_2(arg_2.a, 764f), arg_2.a.a)))));
    var var_4 = Struct_1(true, -(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_2.a.b.x, arg_2.a.b.x, -2147483647i), vec4<i32>(-1i, 32479i, u_input.a, 21836i)) << (~vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(var_0.x, 18u)], u_input.b.x, global1[_wgslsmith_index_u32(var_0.x, 18u)]) % vec4<u32>(32u))) | abs(~(~vec4<i32>(arg_0, var_2.x, var_1.x, var_2.x))));
    return vec4<bool>(!func_2(vec4<bool>(all(vec2<bool>(var_4.a, var_4.a)), var_4.a, true | var_4.a, any(vec3<bool>(arg_2.a.a, var_4.a, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3 - 1078f))), Struct_2(arg_2.a, _wgslsmith_f_op_f32(161f + -278f)), var_4.a).x, !arg_2.a.a, var_4.a, 14722i > _wgslsmith_clamp_i32(var_4.b.x, var_1.x, ~0i));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = arg_2;
    global0 = 1u;
    global2 = array<f32, 12>();
    var_0 = arg_2;
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(select(_wgslsmith_mod_u32(u_input.b.x, 0u), 9142u, func_1(u_input.a, var_0.a.b.x, arg_2).x), u_input.b.x, 42965u), ~countOneBits(~vec3<u32>(37882u, u_input.b.x, 4294967295u))), 18u)];
    return ~(~vec3<i32>(~2147483647i, abs(i32(-1i) * -38017i), _wgslsmith_div_i32(arg_2.a.b.x, arg_2.a.b.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)] % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = true;
    let var_0 = _wgslsmith_f_op_f32(-global3.x) != global3.x;
    global1 = array<u32, 18>();
    let var_1 = true;
    let var_2 = _wgslsmith_mod_vec3_i32(func_4(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, var_1, var_1), func_1(2147483647i, 0i, Struct_2(Struct_1(true, vec4<i32>(u_input.a, 10433i, u_input.a, u_input.a)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12998u, 18u)], 12u)]))), vec4<bool>(var_0, u_input.b.x == 19395u, var_1, true), true), Struct_1(false, vec4<i32>(1i, u_input.a, -2147483647i, u_input.a) & countOneBits(vec4<i32>(-20743i, u_input.a, 2067i, u_input.a))), Struct_2(Struct_1(u_input.b.x <= u_input.b.x, vec4<i32>(-1i, -12604i, 0i, u_input.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(global3.x, -470f)))), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(65685u, 12u)], global3.x), vec2<f32>(global2[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44674u, 18u)], 18u)], 18u)], 12u)])))), firstLeadingBit(reverseBits(~vec3<i32>(u_input.a, u_input.a, u_input.a))));
    var var_3 = -1i;
    let var_4 = 116398u;
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(-global3.x), -1095f));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 12u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6, reverseBits(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4, u_input.b.x, u_input.b.x, 0u), vec4<u32>(87195u, 4294967295u, 2157u, var_4)))), ~u_input.a >> (firstLeadingBit(~abs(var_4)) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_5.xzy, vec3<f32>(_wgslsmith_f_op_f32(floor(var_6)), _wgslsmith_f_op_f32(var_5.x + global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5603u, 18u)], 12u)]), _wgslsmith_f_op_f32(-var_6)))), var_4);
}

