struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: f32;

var<private> global3: array<vec4<bool>, 6>;

var<private> global4: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(3851u, 16873u), vec2<u32>(58274u, 6689u), vec2<u32>(59802u, 8401u), vec2<u32>(11600u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(82112u, 73338u), vec2<u32>(15235u, 27918u), vec2<u32>(49248u, 4294967295u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = global0.d.d;
    global0 = Struct_3(global1.d.e, 0u, -12190i, Struct_1(vec4<u32>(max(u_input.a.x << (u_input.a.x % 32u), u_input.a.x), ~(~global1.c.a.x), abs(_wgslsmith_dot_vec3_u32(global0.d.a.zzx, global1.d.a.zzw)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 57718u, 22545u, u_input.a.x)) | ~1u), vec3<i32>(global1.c.b.x, _wgslsmith_sub_i32(48038i, -43486i), -2147483647i), select(global1.d.c, u_input.b.x, false), ~global1.c.d, _wgslsmith_f_op_vec4_f32(global1.c.e - global1.d.e)));
    var_0 = _wgslsmith_mod_u32(109150u, global1.c.a.x);
    var var_1 = u_input.b.x;
    var_0 = u_input.a.x;
    return 1i;
}

fn func_2() -> u32 {
    global4 = array<vec2<u32>, 8>();
    global4 = array<vec2<u32>, 8>();
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.e.x, global1.c.e.x, -856f, 199f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.d.e.x, 2471f, 1923f, global1.c.e.x), global1.c.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.e.x, -1000f, 131f, -1438f)))))), u_input.a.x, _wgslsmith_div_i32(20342i, -func_3(global0.c)), global0.d);
    var var_0 = !vec2<bool>(global1.a, true);
    var_0 = vec2<bool>(any(vec3<bool>(true, all(global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 6u)]), true)), any(global3[_wgslsmith_index_u32(global0.b, 6u)]));
    return _wgslsmith_mult_u32(72966u ^ _wgslsmith_dot_vec3_u32(global1.d.a.zyz, global0.d.a.yyx), 10083u);
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: f32) -> i32 {
    let var_0 = Struct_2(all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, global1.b), vec2<bool>(global1.b, false), vec2<bool>(true, false)), false), select(select(vec2<bool>(global1.b, global1.a), vec2<bool>(true, global1.a), vec2<bool>(global1.b, false)), vec2<bool>(global1.b, global1.a), global1.a), global1.b)), false, global0.d, Struct_1(~(~select(vec4<u32>(0u, global0.d.a.x, global1.d.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, global1.d.d), global3[_wgslsmith_index_u32(u_input.a.x, 6u)])), global0.d.b, -10287i, _wgslsmith_dot_vec3_u32(~global0.d.a.yzx, vec3<u32>(arg_2.x | 34906u, 1u, 40945u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_div_vec4_f32(vec4<f32>(arg_3, global1.d.e.x, arg_3, 497f), global0.a))))));
    let var_1 = Struct_1(firstLeadingBit(max(var_0.c.a, max(vec4<u32>(u_input.a.x, arg_0.x, 0u, 4294967295u), firstTrailingBit(global1.d.a)))), global0.d.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-global1.d.b.x, ~(-44121i)), u_input.b.wx), 41300u, global1.d.e);
    var var_2 = u_input.c;
    let var_3 = Struct_2(any(select(vec4<bool>(global1.a | var_0.b, true, true, all(vec3<bool>(false, false, true))), global3[_wgslsmith_index_u32(abs(func_2()), 6u)], select(vec4<bool>(global1.a, true, var_0.b, var_0.b), global3[_wgslsmith_index_u32(countOneBits(arg_2.x), 6u)], any(vec3<bool>(var_0.a, true, global1.b))))), !all(select(!vec2<bool>(var_0.b, true), vec2<bool>(false, false), all(vec2<bool>(var_0.a, global1.a)))), var_0.d, Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(18939u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(global1.c.a.x, var_0.d.d, global1.c.d, 53364u)), var_1.a), vec4<u32>(50022u, _wgslsmith_add_u32(arg_0.x, u_input.a.x), var_0.c.d & 2068u, 4294967295u << (arg_2.x % 32u))), global0.d.b, 1i, u_input.a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(global1.d.e.x)), _wgslsmith_f_op_f32(-var_0.c.e.x), -571f, _wgslsmith_f_op_f32(-139f - global0.d.e.x)), _wgslsmith_div_vec4_f32(global0.d.e, _wgslsmith_f_op_vec4_f32(max(var_1.e, vec4<f32>(-1041f, var_0.d.e.x, global1.c.e.x, global0.a.x)))), select(global3[_wgslsmith_index_u32(abs(12972u), 6u)], global3[_wgslsmith_index_u32(global1.c.a.x, 6u)], select(var_0.b, global1.b, var_0.a))))));
    var_2 = ~var_3.c.c;
    return global1.d.c;
}

fn func_1(arg_0: bool) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1256f, -1289f) - _wgslsmith_div_f32(340f, global1.d.e.x));
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-global0.d.e), 9699u, func_4(_wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(global0.d.d, u_input.a.x)), 980f, vec4<u32>(firstTrailingBit(47117u), func_2(), u_input.a.x, ~33165u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2235f - 153f), global1.c.e.x))) << (_wgslsmith_add_u32(~(~u_input.a.x), min(u_input.a.x, _wgslsmith_dot_vec4_u32(global0.d.a, global0.d.a))) % 32u), Struct_1(abs(_wgslsmith_div_vec4_u32(reverseBits(global0.d.a), global0.d.a)), ~(-vec3<i32>(u_input.c, u_input.c, 2147483647i)), global0.d.b.x, ~u_input.a.x, global1.d.e));
    global4 = array<vec2<u32>, 8>();
    global1 = Struct_2(all(vec4<bool>(global1.b, !select(arg_0, global1.b, true), false, true)), select(!global1.b, global1.b == global1.a, false), Struct_1(global1.d.a, reverseBits(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c, 1i, -25242i), vec3<i32>(global0.c, var_0.d.c, 19479i))), -37605i, var_0.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global1.d.e, vec4<f32>(global0.a.x, global0.a.x, var_0.a.x, var_0.d.e.x)), _wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.e.x, var_0.d.e.x, 183f, var_0.d.e.x)))))), Struct_1(~vec4<u32>(var_0.d.a.x, countOneBits(global0.b), 1u, 1u), _wgslsmith_mod_vec3_i32(-u_input.b.yzy, vec3<i32>(-23182i, -1i, var_0.c & global1.d.c)), -11918i, 16109u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-625f, 1770f, -1000f, var_0.a.x) + _wgslsmith_f_op_vec4_f32(abs(var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.d.e, global1.c.e))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.e.x)) * _wgslsmith_f_op_f32(-var_0.a.x));
    return Struct_3(vec4<f32>(-1477f, 160f, _wgslsmith_f_op_f32(-var_0.d.e.x), -976f), _wgslsmith_dot_vec2_u32(~vec2<u32>(firstTrailingBit(0u), global1.c.a.x), vec2<u32>(select(14819u, global0.b, !arg_0), _wgslsmith_add_u32(global0.d.d, _wgslsmith_clamp_u32(0u, 25072u, 67643u)))), -2147483647i, global1.d);
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2;
    var var_1 = true;
    global2 = func_1(true).d.e.x;
    let var_2 = vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(global1.d.b.x), 2147483647i), -2147483647i), 1i);
    var var_3 = i32(-1i) * -2147483647i;
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c.e) * vec4<f32>(1052f, 245f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(976f, global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-268f)) - arg_0))), global1.c.d, abs(_wgslsmith_clamp_i32(func_3(global0.d.c), var_0.d.c, _wgslsmith_sub_i32(select(arg_2.c, 29374i, arg_1.x), global0.d.c))), func_1(false).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    var var_1 = ~vec3<u32>(~(~4294967295u), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(~4294967295u, ~0u, global1.d.d ^ 29488u), _wgslsmith_div_u32(var_0.a.x, u_input.a.x) | (130265u << (0u % 32u))), ~global0.b);
    var var_2 = func_5(1000f, vec2<bool>(global1.b, !(global1.b && true)), func_1(true));
    global2 = 1000f;
    global4 = array<vec2<u32>, 8>();
    var var_3 = func_5(global0.a.x, !select(select(vec2<bool>(false, false), vec2<bool>(global1.b, global1.b), vec2<bool>(global1.a, false)), select(select(vec2<bool>(false, global1.b), vec2<bool>(global1.a, global1.b), true), !vec2<bool>(false, global1.a), true), !select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, global1.a), global1.b)), func_5(_wgslsmith_f_op_f32(f32(-1f) * -734f), select(select(select(vec2<bool>(true, global1.a), vec2<bool>(false, global1.a), vec2<bool>(global1.a, global1.a)), vec2<bool>(global1.b, global1.a), false), vec2<bool>(true, true), select(!vec2<bool>(global1.a, global1.a), select(vec2<bool>(false, true), vec2<bool>(global1.a, false), vec2<bool>(true, global1.b)), var_1.x <= 67313u)), func_1(select(all(vec2<bool>(global1.b, global1.a)), all(vec3<bool>(false, false, true)), global1.a)))).d;
    global3 = array<vec4<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1655f * -977f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1817f)))));
}

