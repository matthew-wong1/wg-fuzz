struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 27>;

var<private> global3: array<vec4<u32>, 16>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global2 = array<vec2<u32>, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.c), global1.c, select(!global1.b, select(!global1.b, select(!vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), global1.b, true), vec4<bool>(global1.b.x == global1.b.x, global1.e > 29141i, all(vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x)), select(global1.b.x, global1.b.x, false))), vec4<bool>(_wgslsmith_f_op_f32(-1841f * -1794f) < _wgslsmith_f_op_f32(-arg_0.x), !all(vec3<bool>(true, true, true)), !global1.b.x, all(select(global1.b.yy, global1.b.zz, global1.b.zx))))));
    global3 = array<vec4<u32>, 16>();
    var var_1 = ~(-vec3<i32>(_wgslsmith_mult_i32(-global1.e, -1i), reverseBits(10272i), _wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), -2147483647i, u_input.a.x & 1i)));
    var var_2 = arg_0.x;
    return ~1i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_1(select(select(vec2<bool>(any(global1.b), true), vec2<bool>(any(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, arg_0.a.x)), false), all(vec2<bool>(global1.b.x, false))), !arg_0.a, !(_wgslsmith_f_op_f32(-global1.a.x) <= -1859f)));
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 14u)];
    var var_2 = !(_wgslsmith_mod_i32(global1.e, arg_2) > (func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(612f, -503f, 966f, arg_1) + global1.c)) << (countOneBits(68915u) % 32u)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(219f, arg_1))), _wgslsmith_f_op_vec2_f32(global1.c.ww - global1.c.yw))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(785f)), 2085f, true)), _wgslsmith_f_op_f32(-2593f + _wgslsmith_f_op_f32(-global1.a.x)))), !(!(!(!vec4<bool>(true, arg_0.a.x, false, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2481f * global1.c.x))), global1.d, _wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(min(-1661f, arg_1)), countOneBits(1i));
    let var_4 = vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, ~57718u), abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(30185u, 0u, 78200u), vec3<u32>(14723u, 1u, 4294967295u), true)))), ~_wgslsmith_mult_u32(abs(firstTrailingBit(2042u)), 9394u), 1u);
    return var_3;
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(global1.c.x)), _wgslsmith_div_f32(1281f, _wgslsmith_f_op_f32(trunc(global1.d))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), 1172f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2193f * var_0.x), _wgslsmith_f_op_f32(1931f - var_0.x), !global1.b.x)))) * global1.a.x));
    global0 = array<Struct_1, 14>();
    global1 = func_2(global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_clamp_u32(1u, 30351u, ~0u)), 14u)], global1.d, _wgslsmith_clamp_i32(2710i, max(784i, global1.e), _wgslsmith_div_i32(1i, ~reverseBits(u_input.a.x))));
    global0 = array<Struct_1, 14>();
    return Struct_2(var_0, !(!select(!global1.b, select(global1.b, vec4<bool>(false, global1.b.x, global1.b.x, true), false), false)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(func_2(Struct_1(global1.b.yw), 1479f, 5843i).c)), vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 1000f), global1.a.x, 1f, -1100f))))), var_0.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global3 = array<vec4<u32>, 16>();
    var var_0 = -vec4<i32>(u_input.a.x, -1i, abs(-(-11718i >> (0u % 32u))), _wgslsmith_add_i32(58111i, ~global1.e) ^ 58548i);
    var var_1 = vec2<bool>(func_2(Struct_1(vec2<bool>(global1.b.x, true)), _wgslsmith_f_op_f32(global1.c.x * -267f), ~(-2147483647i)).b.x, all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_mod_u32(~1u, ~_wgslsmith_clamp_u32(1u, 1u, 26162u));
    var var_3 = ~vec2<u32>(1365u, var_2);
    let var_4 = global1.c.x;
    var var_5 = reverseBits(vec4<i32>(global1.e, var_0.x, _wgslsmith_dot_vec3_i32(~var_0.zyw, var_0.wyw), firstTrailingBit(-7967i)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(max(~vec4<i32>(global1.e, var_0.x, var_0.x, 2147483647i), -vec4<i32>(var_5.x, var_0.x, var_5.x, global1.e))), vec2<i32>(44723i, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global1.c), global1.c))), global1.c.x, _wgslsmith_sub_vec3_u32(select(max(vec3<u32>(1u, 1u, var_3.x), vec3<u32>(var_2, 60570u, var_2)), vec3<u32>(var_2, 18683u, 1u), !global1.b.x) & vec3<u32>(var_3.x, ~var_3.x, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(3744u, 16u)], global3[_wgslsmith_index_u32(var_2, 16u)])), ~(vec3<u32>(24640u, 0u, 48523u) << (vec3<u32>(52859u, var_2, 63012u) % vec3<u32>(32u)))));
}

