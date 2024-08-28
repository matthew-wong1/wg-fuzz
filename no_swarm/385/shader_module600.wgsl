struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<f32>;

var<private> global2: array<u32, 10>;

var<private> global3: vec4<f32> = vec4<f32>(1473f, 1329f, 1528f, 1444f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<u32> {
    global0 = Struct_4(vec2<u32>((arg_1 ^ _wgslsmith_dot_vec3_u32(vec3<u32>(26553u, 13496u, global0.a.x), vec3<u32>(global2[_wgslsmith_index_u32(7395u, 10u)], 53567u, 4294967295u))) >> (u_input.c % 32u), u_input.c << (global0.a.x % 32u)), _wgslsmith_add_vec2_u32(global0.b, _wgslsmith_mod_vec2_u32(~u_input.b, ~vec2<u32>(arg_1, 5337u))));
    let var_0 = _wgslsmith_mult_u32(u_input.b.x, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], u_input.b.x), 10u)], ~max(u_input.c, 4294967295u)), 10u)] >> (u_input.b.x % 32u));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(1i << ((_wgslsmith_add_u32(6940u, global0.b.x) << (~global2[_wgslsmith_index_u32(u_input.a, 10u)] % 32u)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, _wgslsmith_clamp_i32(-1793i, -1i, -28518i)), vec2<i32>(1i, 1i))), abs(max(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(32900i, -44244i), vec2<i32>(2147483647i, -1i))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(7964i, -35267i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global3.zx + _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -2231f), vec2<f32>(1000f, 1234f))), _wgslsmith_f_op_vec2_f32(-global1.zx))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, -552f))), global3.wx)))));
    let var_3 = _wgslsmith_div_vec3_f32(global3.wzz, global3.xxy);
    return max(~(~(~(vec2<u32>(arg_1, 0u) ^ u_input.b))), vec2<u32>(1u >> (global0.b.x % 32u), 1u));
}

fn func_2(arg_0: vec4<u32>) -> vec4<f32> {
    let var_0 = Struct_5(~arg_0.x, _wgslsmith_dot_vec2_u32(max(~u_input.b, ~vec2<u32>(u_input.c, global0.a.x)) << (func_3(false, 4294967295u) % vec2<u32>(32u)), abs(arg_0.zz)));
    let var_1 = vec4<bool>(false, select(true, _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(global0.b.x, 10u)], u_input.a) <= 4294967295u, false), all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), true)), !(global1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2019f)))));
    var var_2 = Struct_3(!(!all(vec3<bool>(var_1.x, true, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 886f, -1000f, 2516f), ~select(-_wgslsmith_div_i32(-2147483647i, -9018i), min(_wgslsmith_div_i32(-44665i, -2147483647i), select(2147483647i, 13138i, true)), !var_1.x));
    var var_3 = var_2.c;
    var var_4 = Struct_1(vec3<bool>(false, (_wgslsmith_dot_vec3_i32(vec3<i32>(-47419i, var_2.c, -2147483647i), vec3<i32>(-2147483647i, -32030i, var_2.c)) >> (~var_0.a % 32u)) == -_wgslsmith_add_i32(var_2.c, 0i), false), var_2.b.x, select(all(select(vec2<bool>(var_1.x, var_2.a), var_1.yy, var_1.zw)), true, true) != false, -9278i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, global1.x, global3.x, 519f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -635f, var_4.b, 1152f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1298f, global1.x, var_4.b))) - var_2.b)));
}

fn func_1() -> Struct_2 {
    global1 = global3.wwz;
    global3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 12011u, global2[_wgslsmith_index_u32(1u, 10u)], 22995u), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global0.a.x, 10u)], 60280u, u_input.b.x))))))));
    global2 = array<u32, 10>();
    let var_0 = -_wgslsmith_mod_i32(_wgslsmith_sub_i32(-51174i, ~(~(-2147483647i))), countOneBits(-22347i));
    let var_1 = all(vec3<bool>(true, true, true));
    return Struct_2(u_input.c, global0.a.x, -1340f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = Struct_4(~vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, global0.b.x, u_input.a, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(46437u, global0.a.x, u_input.a, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(53330u, 10u)], 29487u, 8031u, global0.b.x))), _wgslsmith_mod_u32(max(96923u, global0.a.x), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.b, u_input.c), 10u)])), ~global0.a);
    var var_1 = ~_wgslsmith_mod_i32(abs(-1i), 1480i) << ((14317u ^ (1u | (_wgslsmith_add_u32(63932u, global0.b.x) << (8888u % 32u)))) % 32u);
    var_1 = -31169i;
    var_1 = -17279i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32((~vec4<u32>(u_input.c, u_input.a, global2[_wgslsmith_index_u32(global0.a.x, 10u)], 1u) | abs(vec4<u32>(global0.a.x, 21320u, 38879u, 4294967295u))) | vec4<u32>(u_input.a << (79963u % 32u), 0u, u_input.b.x, var_0.b), ~abs(abs(vec4<u32>(4294967295u, 90740u, var_0.a, u_input.c)))), -2147483647i, firstTrailingBit(-_wgslsmith_mult_i32(-42071i, -37254i) ^ select(23206i, i32(-1i) * -1i, true)));
}

