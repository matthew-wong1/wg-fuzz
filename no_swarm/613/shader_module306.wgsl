struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, vec3<f32>(-1008f, -745f, 791f), vec4<u32>(0u, 52359u, 4294967295u, 13611u)));

var<private> global2: array<vec4<f32>, 29>;

var<private> global3: Struct_2 = Struct_2(Struct_1(false, vec3<f32>(-612f, -1597f, -1473f), vec4<u32>(4294967295u, 50550u, 1u, 0u)), vec3<u32>(0u, 61989u, 4294967295u), Struct_1(false, vec3<f32>(-956f, -106f, -1395f), vec4<u32>(79731u, 0u, 4294967295u, 46137u)), true);

var<private> global4: vec3<f32> = vec3<f32>(471f, -1460f, 845f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec3<f32> {
    var var_0 = select(_wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.c.b.x, global3.c.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), false, !(!any(select(vec4<bool>(true, true, global3.c.a, global3.a.a), vec4<bool>(true, true, false, global3.d), vec4<bool>(arg_1.x, true, global3.c.a, arg_1.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(285f, -970f, -1336f, -1626f))) - global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global3.a.c.x, _wgslsmith_sub_u32(1u, global3.b.x)), 29u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(trunc(329f)), _wgslsmith_f_op_f32(exp2(global4.x)), _wgslsmith_f_op_f32(f32(-1f) * -320f)) * vec4<f32>(_wgslsmith_f_op_f32(global3.a.b.x + -149f), -1012f, global4.x, global4.x))));
    var_0 = any(arg_1.yz);
    let var_2 = Struct_1(global3.c.a, var_1.xwz, _wgslsmith_sub_vec4_u32(~vec4<u32>(~u_input.c, ~global3.c.c.x, u_input.c, ~global3.b.x), ~(~vec4<u32>(107596u, 4294967295u, 1u, u_input.b.x))));
    var_0 = all(select(select(select(vec3<bool>(true, true, true), select(arg_1, vec3<bool>(var_2.a, arg_1.x, true), vec3<bool>(arg_1.x, true, arg_1.x)), !arg_1), !(!vec3<bool>(arg_1.x, true, arg_1.x)), !(!vec3<bool>(var_2.a, false, global3.c.a))), vec3<bool>(any(select(vec2<bool>(true, global3.c.a), vec2<bool>(arg_1.x, global3.c.a), true)), arg_1.x, any(select(arg_1, vec3<bool>(false, global3.c.a, true), vec3<bool>(global3.c.a, false, true)))), select(select(select(arg_1, vec3<bool>(true, var_2.a, true), false), select(arg_1, vec3<bool>(global3.d, arg_1.x, global3.a.a), true), !vec3<bool>(var_2.a, true, false)), arg_1, false)));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.c.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1717f, 376f))), vec3<f32>(global3.c.b.x, 383f, -556f)), _wgslsmith_f_op_vec3_f32(-var_2.b)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-708f, 1000f), _wgslsmith_f_op_f32(-1268f + global4.x), _wgslsmith_f_op_f32(sign(global4.x))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(global3.a.b))))), vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -764f))), var_2.b.x)))));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_i32(select(_wgslsmith_sub_i32(select(29732i, 13776i, true), firstLeadingBit(min(2147483647i, u_input.d))), _wgslsmith_clamp_i32(firstTrailingBit(25554i), ~(-2147483647i), -2147483647i) & _wgslsmith_div_i32(~8756i, 10473i), global3.a.a), _wgslsmith_mod_i32(u_input.d, ~_wgslsmith_mult_i32(arg_0 >> (global3.a.c.x % 32u), arg_0)));
    global4 = _wgslsmith_f_op_vec3_f32(-global3.c.b);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(global3.a.c.x, 1u)], u_input.b.ywx, Struct_1(global3.a.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(u_input.d, vec3<bool>(global3.a.a, true, true))))), ~((u_input.b >> (global3.a.c % vec4<u32>(32u))) ^ vec4<u32>(0u, global3.c.c.x, u_input.a, global3.b.x))), false);
    var_1 = Struct_2(Struct_1(any(vec3<bool>(global3.c.a, global3.d, all(vec2<bool>(true, global3.c.a)))), _wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(arg_0, var_0, 1i)), !select(vec3<bool>(var_1.a.a, global3.d, false), vec3<bool>(var_1.a.a, true, false), vec3<bool>(true, global3.a.a, true)))), vec4<u32>(~firstLeadingBit(var_1.b.x), 1u >> ((u_input.b.x & 1u) % 32u), 4294967295u, u_input.c)), select(countOneBits(abs(min(u_input.b.wwx, global3.a.c.zxz))), _wgslsmith_sub_vec3_u32(global3.a.c.xzx, vec3<u32>(1u, ~24788u, _wgslsmith_mult_u32(1u, var_1.b.x))), true), global1[_wgslsmith_index_u32((countOneBits(var_1.b.x) | reverseBits(~var_1.c.c.x)) ^ 33531u, 1u)], u_input.d > ~_wgslsmith_sub_i32(~(-6000i), arg_0));
    var var_2 = 4294967295u;
    return abs(vec4<u32>(global3.b.x, ~global3.c.c.x, _wgslsmith_div_u32(~abs(global3.b.x), 8803u), u_input.b.x));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    var var_0 = global3.c.b;
    global2 = array<vec4<f32>, 29>();
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global3.a.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b.x, -1191f, -950f)), true)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(982f, -487f, global4.x)))))));
    let var_1 = ~(~func_2(_wgslsmith_add_i32(~(-3922i), ~arg_2)));
    global2 = array<vec4<f32>, 29>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(369f + 303f), _wgslsmith_f_op_f32(func_1(1878f, vec4<bool>(false, global3.a.a, false, global3.d), u_input.d)), global4.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(957f + 1896f), global4.x, _wgslsmith_f_op_vec3_f32(func_3(u_input.d, vec3<bool>(global3.c.a, global3.c.a, global3.d))).x))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~global3.a.c.x, 1u, ~global3.a.c.x, global3.c.c.x), ~vec4<u32>(global3.a.c.x, 41853u, 0u, 1u)), global3.c.c));
    var var_1 = global3.c.b.x;
    let var_2 = Struct_2(global3.c, vec3<u32>(u_input.b.x, ~u_input.b.x, ~var_0.c.x), Struct_1(global3.d, var_0.b, countOneBits(~var_0.c << (u_input.b % vec4<u32>(32u)))), 20404i > -(~u_input.d));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c, min(func_2(-8593i).x, u_input.c)), ~(~((global3.c.c.x << (0u % 32u)) & firstLeadingBit(4294967295u))));
    let var_4 = 80427u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, -1000f, var_2.a.b.x, global4.x)), _wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(select(38123u, var_2.a.c.x, var_2.a.a), 29u)]))))), u_input.d);
}

