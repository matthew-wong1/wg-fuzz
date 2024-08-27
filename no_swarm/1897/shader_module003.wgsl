struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: vec2<f32> = vec2<f32>(-656f, 825f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = select(arg_0.b, arg_0.b, true);
    let var_1 = _wgslsmith_sub_u32(max(firstTrailingBit(4294967295u), ~(~max(23304u, 22853u))), 25758u);
    global0 = array<Struct_2, 22>();
    var var_2 = global0[_wgslsmith_index_u32(51702u, 22u)];
    let var_3 = -(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.c.b, arg_2.c.b) & _wgslsmith_sub_vec2_i32(arg_1.zx, arg_0.c.b), _wgslsmith_sub_vec2_i32(arg_0.c.b, _wgslsmith_add_vec2_i32(arg_1.xx, arg_0.c.b))) ^ vec2<i32>(firstLeadingBit(~(-7196i)), _wgslsmith_mult_i32(arg_2.c.b.x, -13007i) & ~arg_2.c.b.x));
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.c.c + 753f))), _wgslsmith_div_f32(arg_2.c.c, arg_0.c.c));
}

fn func_2() -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(19567u, 0u, 4294967295u) | 38794u, 1u), 22u)], -vec3<i32>(u_input.a, ~(-19949i), -28719i), Struct_2(all(vec2<bool>(global1.x, false)), vec3<bool>(true, true, true), Struct_1(u_input.a, ~vec2<i32>(u_input.a, 2147483647i), -1000f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1003f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(false, vec3<bool>(global1.x, global1.x, global1.x), Struct_1(2147483647i, vec2<i32>(u_input.a, 11690i), global2.x)), vec3<i32>(u_input.a, 0i, u_input.a), Struct_2(false, vec3<bool>(true, global1.x, false), Struct_1(-1i, vec2<i32>(-1i, -1i), -897f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(204f, 1992f), vec2<f32>(global2.x, global2.x), vec2<bool>(global1.x, false))), false)) * vec2<f32>(169f, _wgslsmith_f_op_f32(global2.x - global2.x))))));
    var var_0 = Struct_1(abs(~(-(~11422i))), vec2<i32>(45267i, u_input.a), global2.x);
    var var_1 = Struct_1(abs(u_input.a), min(vec2<i32>(countOneBits(var_0.b.x), -6537i) ^ max(vec2<i32>(u_input.a, -38240i), vec2<i32>(var_0.a, u_input.a) << (vec2<u32>(4294967295u, 50676u) % vec2<u32>(32u))), -vec2<i32>(_wgslsmith_div_i32(1729i, 2147483647i), 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) * _wgslsmith_f_op_f32(-global2.x)));
    let var_2 = Struct_1(firstLeadingBit(-1i), vec2<i32>(firstLeadingBit(2147483647i), -4925i << (_wgslsmith_dot_vec4_u32(vec4<u32>(9063u, 60327u, 39438u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % 32u)), 1352f);
    var_0 = Struct_1(-_wgslsmith_add_i32(-max(-13365i, 0i), abs(-1i) & _wgslsmith_clamp_i32(652i, 2147483647i, var_2.b.x)), var_0.b, -723f);
    return _wgslsmith_add_i32(abs(~(-2147483647i)), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(_wgslsmith_mod_i32(2147483647i, -2147483647i), ~1i)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    return arg_3.c;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: u32) -> i32 {
    var var_0 = func_4(true, func_2(), -289f, Struct_2(false, vec3<bool>(arg_0.x < -1092f, true, global1.x | all(vec3<bool>(global1.x, global1.x, true))), Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1, 2147483647i), vec2<i32>(arg_1, u_input.a)), ~min(vec2<i32>(38150i, u_input.a), vec2<i32>(-8972i, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_div_f32(1222f, global2.x)))));
    var var_1 = !select(!select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, global1.x), true), vec3<bool>(true, false, false), true), !vec3<bool>(2147483647i <= arg_1, !global1.x, true), select(vec3<bool>(true, global1.x && true, 4156i >= arg_1), select(!vec3<bool>(false, global1.x, global1.x), !vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), false));
    var var_2 = func_4(!(_wgslsmith_add_i32(30868i, arg_1) == 0i), select(arg_1, i32(-1i) * -7491i, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_2, reverseBits(1u), 21776u), 22u)]);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.xz, vec2<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(ceil(2225f))))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_div_f32(976f, _wgslsmith_f_op_f32(ceil(var_2.c))))), _wgslsmith_f_op_f32(1729f * _wgslsmith_f_op_f32(-arg_0.x))));
    let var_3 = !global1.x;
    return min(countOneBits(select(8601i, -(var_2.a ^ 2147483647i), global1.x)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, ~vec2<i32>(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, -354f, 992f), vec3<f32>(global2.x, global2.x, global2.x)), -2147483647i, 1u, 1u), u_input.a << (15983u % 32u)), -797f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, -952f, -881f), vec3<f32>(753f, 1000f, 2222f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-327f, global2.x, -1143f))), vec3<f32>(294f, 823f, global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-670f, -579f, global2.x))))), vec3<f32>(597f, 1302f, 878f)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), var_0.c, 1u, abs(~vec4<i32>(_wgslsmith_div_i32(u_input.a, var_0.a), u_input.a, func_4(false, -1i, -186f, global0[_wgslsmith_index_u32(15939u, 22u)]).a, _wgslsmith_mod_i32(var_0.a, var_0.a))));
}

