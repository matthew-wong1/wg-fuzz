struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec3<bool>(false, true, true), 25775u), vec3<u32>(1u, 0u, 38641u), vec3<f32>(2198f, -1318f, -712f), -1i, Struct_1(vec3<bool>(false, false, true), 50246u)), Struct_2(Struct_1(vec3<bool>(true, true, true), 96950u), vec3<u32>(4294967295u, 84456u, 0u), vec3<f32>(450f, -209f, 1070f), -21370i, Struct_1(vec3<bool>(false, true, false), 11465u)));

var<private> global1: array<f32, 10>;

var<private> global2: bool;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(vec3<bool>(true, true, true), 51774u);
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(31282u), 2u)];
    global0 = array<Struct_2, 2>();
    global2 = false;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.c.x))));
    return _wgslsmith_mod_vec3_u32(var_1.b, var_1.b);
}

fn func_2() -> Struct_2 {
    let var_0 = select(~countOneBits(vec3<u32>(4294967295u, 1u, 15701u)), ~countOneBits(func_3()), _wgslsmith_mult_i32(-u_input.a.x, u_input.a.x) != _wgslsmith_dot_vec4_i32(~vec4<i32>(-1958i, 2147483647i, -1i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -47078i)))) | ~(~vec3<u32>(1u, 1u, 1u));
    var var_1 = Struct_1(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), true), vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true), vec3<bool>(select(false, false, true), true, true)), true), 38144u);
    global2 = select(all(!(!select(vec4<bool>(var_1.a.x, false, var_1.a.x, false), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(true, true, var_1.a.x, var_1.a.x)))), true, !(!(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(6202u, 10u)])) != -252f)));
    var_1 = Struct_1(select(var_1.a, select(vec3<bool>(var_1.a.x, false, all(var_1.a)), vec3<bool>(false, var_1.a.x, all(vec2<bool>(var_1.a.x, true))), !(var_1.a.x | var_1.a.x)), !all(select(vec3<bool>(var_1.a.x, var_1.a.x, false), var_1.a, var_1.a.x))), var_0.x);
    let var_2 = Struct_2(Struct_1(var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.x, firstLeadingBit(37537u)), var_0.xx)), ~var_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-199f, -531f, global1[_wgslsmith_index_u32(var_1.b, 10u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(27454u, 10u)], global1[_wgslsmith_index_u32(var_1.b, 10u)], 468f) + vec3<f32>(global1[_wgslsmith_index_u32(38025u, 10u)], global1[_wgslsmith_index_u32(77438u, 10u)], 2215f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_1.b, 10u)], 1660f, global1[_wgslsmith_index_u32(var_1.b, 10u)])), vec3<f32>(1503f, 205f, global1[_wgslsmith_index_u32(51124u, 10u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(149f, global1[_wgslsmith_index_u32(42160u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 10u)], -859f, global1[_wgslsmith_index_u32(4294967295u, 10u)]) - vec3<f32>(global1[_wgslsmith_index_u32(74268u, 10u)], global1[_wgslsmith_index_u32(55054u, 10u)], 657f)))), var_1.a.x | any(!vec4<bool>(true, false, var_1.a.x, false)))), firstLeadingBit(_wgslsmith_sub_i32(2147483647i, select(u_input.a.x, ~(-51603i), true))), Struct_1(!vec3<bool>(false, var_0.x < 1397u, false), 0u));
    return var_2;
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 2>();
    var var_0 = ~(u_input.a.x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(35967u, 93887u, 4294967295u), vec3<u32>(1u, 1u, 1u)) % 32u));
    let var_1 = func_2();
    var var_2 = !select(select(!var_1.e.a.yz, !var_1.e.a.zy, all(vec2<bool>(true, true))), func_2().a.a.yx, func_2().e.a.zy);
    var_0 = -2915i;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = 3841u;
    global1 = array<f32, 10>();
    let var_2 = vec3<i32>(1i, func_1(), 1i);
    var var_3 = select(vec2<bool>(!all(vec2<bool>(true, true)) || (global1[_wgslsmith_index_u32(101724u ^ var_1, 10u)] > global1[_wgslsmith_index_u32(0u & var_1, 10u)]), true), vec2<bool>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(var_1), 10u)] * global1[_wgslsmith_index_u32(abs(24499u), 10u)]) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1375f - 187f))), false), _wgslsmith_div_u32(firstTrailingBit(~var_1), 1u) < (~countOneBits(var_1) | 83649u));
    global0 = array<Struct_2, 2>();
    var var_4 = var_2;
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(select(var_2, var_2, !var_3.x), ~firstTrailingBit(countOneBits(vec3<i32>(-12412i, var_2.x, var_4.x)))), u_input.a.x, abs(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1, 4294967295u, var_5.a.b) >> (vec4<u32>(1u, var_5.a.b, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(0u, 117281u, 0u, var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.c.x)), global1[_wgslsmith_index_u32(var_5.b.x, 10u)]), 61309u | func_3().x);
}

