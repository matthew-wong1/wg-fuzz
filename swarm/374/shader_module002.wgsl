struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(8605i, -1i, 23055i, -12704i), vec4<i32>(-1i, 9842i, 33873i, 35753i), vec4<i32>(-20098i, i32(-2147483648), 10117i, i32(-2147483648)), vec4<i32>(-16668i, 1i, 0i, 3167i), vec4<i32>(20064i, 1i, 39834i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 9141i, 19678i, 1i), vec4<i32>(1575i, -24416i, 71346i, i32(-2147483648)), vec4<i32>(-18905i, i32(-2147483648), 1i, 1i), vec4<i32>(19595i, i32(-2147483648), 43850i, -55537i), vec4<i32>(12992i, 34999i, 2147483647i, i32(-2147483648)), vec4<i32>(18782i, 1i, 2147483647i, -85387i), vec4<i32>(i32(-2147483648), 0i, 1i, -30521i), vec4<i32>(31987i, 5003i, -28194i, 2520i), vec4<i32>(1i, 1i, -21427i, 0i), vec4<i32>(2147483647i, -45751i, i32(-2147483648), -2745i), vec4<i32>(-1i, 1212i, 2147483647i, 15514i), vec4<i32>(0i, -80503i, 23360i, -39829i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -1i), vec4<i32>(38623i, 39536i, -23995i, -15274i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 1i));

var<private> global1: array<u32, 26> = array<u32, 26>(41402u, 1u, 34840u, 4294967295u, 88623u, 4294967295u, 4294967295u, 11253u, 1u, 10534u, 70385u, 0u, 1u, 4294967295u, 27960u, 86095u, 57535u, 62344u, 81597u, 0u, 50128u, 1u, 10060u, 4294967295u, 30365u, 16474u);

var<private> global2: vec4<i32> = vec4<i32>(-1i, -39782i, -51086i, -1i);

var<private> global3: array<Struct_2, 6>;

var<private> global4: array<f32, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = -u_input.a;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(min(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(46832u, 26u)], 1u | global1[_wgslsmith_index_u32(49134u, 26u)]), 0u), 0u)), 11u)];
    var var_3 = 16352u;
    let var_4 = true;
    return arg_0.a;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec2<f32> {
    var var_0 = select(max(vec2<u32>(4294967295u, arg_3) | vec2<u32>(global1[_wgslsmith_index_u32(arg_3, 26u)], arg_3), vec2<u32>(arg_3, 29278u)) & ~vec2<u32>(arg_3, arg_3), ~_wgslsmith_mod_vec2_u32(min(vec2<u32>(25036u, global1[_wgslsmith_index_u32(arg_3, 26u)]), vec2<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 26u)])), ~vec2<u32>(global1[_wgslsmith_index_u32(arg_3, 26u)], 31280u)), true) << (~_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 26u)] | 1u, 1u), abs(vec2<u32>(1267u, arg_3))) % vec2<u32>(32u));
    var var_1 = all(vec2<bool>(false != arg_0, all(select(!vec4<bool>(arg_0, true, false, false), vec4<bool>(false, arg_0, true, arg_0), global4[_wgslsmith_index_u32(56582u, 11u)] == 653f))));
    global3 = array<Struct_2, 6>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1791f, global4[_wgslsmith_index_u32(arg_3, 11u)]), vec2<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65659u, 26u)], 11u)], global4[_wgslsmith_index_u32(var_0.x, 11u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 11u)], global4[_wgslsmith_index_u32(0u, 11u)]) - vec2<f32>(global4[_wgslsmith_index_u32(var_0.x, 11u)], global4[_wgslsmith_index_u32(var_0.x, 11u)]))) * vec2<f32>(global4[_wgslsmith_index_u32(arg_3, 11u)], _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3, 26u)], 11u)], -913f))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(774f, global4[_wgslsmith_index_u32(arg_3, 11u)]) + vec2<f32>(-1192f, -1270f))) * vec2<f32>(global4[_wgslsmith_index_u32(arg_3, 11u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 61117u, 10907u), vec4<u32>(var_0.x, 53636u, global1[_wgslsmith_index_u32(arg_3, 26u)], 4294967295u)), 11u)])))));
}

fn func_1() -> vec2<f32> {
    let var_0 = func_2(Struct_2(Struct_1(_wgslsmith_mult_i32(u_input.b, -23880i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23662u, 26u)], 26u)], 26u)], 26u)] % 32u))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 11u)] * 200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-685f, _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 11u)])))))), vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(select(global2.xy, global2.zy, vec2<bool>(true, true)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(-global2.xy, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -20413i), -vec2<i32>(var_0.a, 24132i)), -_wgslsmith_mult_vec2_i32(vec2<i32>(-23435i, var_0.a), global2.zy))), global2.wx);
    global3 = array<Struct_2, 6>();
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(3894i, _wgslsmith_sub_i32(~u_input.b, -(-45032i >> (0u % 32u)))), var_0.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~4294967295u, 11u)] - 954f), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], firstLeadingBit(~4294967295u)), 26u)], 26u)], 11u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(firstLeadingBit(1u), 11u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63561u, 26u)], 26u)], 26u)], 26u)], 11u)] * global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17286u, 26u)], 11u)]) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 11u)]))), -157f)));
    return _wgslsmith_f_op_vec2_f32(func_3(true, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i) >> (vec2<u32>(global1[_wgslsmith_index_u32(10013u, 26u)], global1[_wgslsmith_index_u32(21393u, 26u)]) % vec2<u32>(32u)), global2.wy), min(global2.yw, global2.xy)), vec2<i32>(~(-30583i), -1i & var_1.x) >> (vec2<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]), vec2<u32>(0u, 11914u))) % vec2<u32>(32u))), abs(global2.yxz & global2.xzw), global1[_wgslsmith_index_u32(44015u, 26u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(1225i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1640f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 11u)]), vec2<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29571u, 26u)], 11u)], var_0.x)))) + var_0)), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(124257u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 51678u), vec4<u32>(37912u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], global1[_wgslsmith_index_u32(11912u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)]), vec4<u32>(4294967295u, 1u, 1u, 0u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(87620u, 26u)], 26u)], 50804u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], 187u)), vec4<u32>(global1[_wgslsmith_index_u32(0u, 26u)], 0u, 88290u, 9945u)), vec4<u32>(abs(4294967295u), 57941u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 26u)], 4294967295u), 1u))), 0u, ~(~firstTrailingBit(1u)));
}

