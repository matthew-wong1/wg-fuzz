struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 53883u;

var<private> global1: vec3<f32>;

var<private> global2: array<vec4<u32>, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    return ~1u;
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 254f, -181f, -592f)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0)), arg_0, true)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(-1746f, _wgslsmith_f_op_f32(global1.x - arg_1)), _wgslsmith_div_f32(2672f, global1.x)), vec4<bool>(all(vec4<bool>(false, true, true, false)) & (arg_1 >= arg_1), any(vec3<bool>(true, true, true)), true && any(vec2<bool>(false, true)), u_input.b.x > -u_input.c.x))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + arg_1))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, arg_0)), _wgslsmith_f_op_f32(sign(global1.x)), global1.x, arg_1)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, 0u, 58382u, 45357u)), select(vec4<u32>(1u, 1u, 1u, 1u), ~global2[_wgslsmith_index_u32(0u, 9u)], vec4<bool>(false, true, true, false)))), true, Struct_2(Struct_1(vec4<f32>(arg_1, 1439f, _wgslsmith_f_op_f32(arg_0 * -516f), _wgslsmith_f_op_f32(-arg_1)), firstLeadingBit(vec4<u32>(0u, 4294967295u, 1u, 1u)) >> (global2[_wgslsmith_index_u32(0u, 9u)] % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -897f, arg_0, -374f)), global2[_wgslsmith_index_u32(select(1u, 73704u, false), 9u)] | global2[_wgslsmith_index_u32(0u << (1u % 32u), 9u)]), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-899f, global1.x, arg_0, arg_0), vec4<f32>(arg_0, 1237f, arg_0, global1.x), vec4<bool>(false, false, false, true))))))), true | !any(vec3<bool>(true, false, false)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, global1.x, global1.x, 1153f), vec4<f32>(global1.x, 584f, -1079f, 412f)))), vec4<u32>(~1u, func_1(u_input.c.zwy, -4983i), ~33925u, ~36392u))));
    var var_1 = var_0.e.a.b.x;
    let var_2 = var_0.c.a.xx;
    global1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-951f, 199f, arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.b.a.x, var_2.x, var_2.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1, -364f))))))));
    var_1 = 1u;
    return var_0.e.b.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(global1.x, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-593f, -106f, 1824f, global1.x)), true))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x - 1000f))), -1712f, _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1957f, 874f)), _wgslsmith_f_op_f32(global1.x * -1873f)))))), (vec4<u32>(0u, ~9745u, 498u, 1u) >> (countOneBits(~global2[_wgslsmith_index_u32(12571u, 9u)]) % vec4<u32>(32u))) << (vec4<u32>(30372u, ~min(4294967295u, 63450u), ~abs(1u), ~(~1u)) % vec4<u32>(32u)));
    let var_1 = !all(vec2<bool>(true, true)) | any(vec4<bool>(true, !(var_0.a.x >= var_0.a.x), arg_0.x == max(0i, -18619i), global1.x < _wgslsmith_f_op_f32(round(var_0.a.x))));
    var var_2 = select(vec4<bool>(true, true, var_1, true), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_1, var_1, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, var_1), vec4<bool>(var_1, false, var_1, var_1)), any(vec2<bool>(false, false))), true), any(vec3<bool>(false, var_1, !var_1)) & true);
    var var_3 = _wgslsmith_dot_vec4_i32(u_input.a | (-(~vec4<i32>(arg_0.x, arg_0.x, 2147483647i, u_input.a.x)) | vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -3902i, -1i, u_input.b.x), u_input.c), countOneBits(arg_1), arg_0.x ^ arg_1, -1i)), u_input.b);
    return _wgslsmith_f_op_f32(floor(-1216f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(1u);
    global0 = 64398u;
    global2 = array<vec4<u32>, 9>();
    var var_0 = u_input.a.x;
    var_0 = 47595i;
    var var_1 = _wgslsmith_mod_u32(~(func_1(~u_input.c.xzy, _wgslsmith_div_i32(u_input.a.x, 1i)) ^ _wgslsmith_mult_u32(4294967295u >> (1u % 32u), 1u)), ~(~65545u));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 490f, -1845f, global1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1401f, 488f, -1474f, global1.x) * vec4<f32>(global1.x, global1.x, 589f, -686f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 1909f, -466f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(942f, global1.x, -1883f, -181f)), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -754f, _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x), u_input.c.x)), _wgslsmith_f_op_f32(-936f * 566f)))));
    let var_3 = all(select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true), true));
    var var_4 = vec4<u32>(select(1u, 7132u, var_3) ^ ~(~74116u), ~4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1694u, 4294967295u, 1u), abs(vec3<u32>(4294967295u, 10770u, 75317u))), ~1015u), _wgslsmith_div_u32(countOneBits(1u) & select(abs(4294967295u), 24320u >> (0u % 32u), all(vec4<bool>(false, true, var_3, var_3))), _wgslsmith_mod_u32(~1u, 35060u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_4.x, var_4.x, var_4.x), u_input.b.x, firstLeadingBit(vec2<u32>(1u, ~var_4.x)));
}

