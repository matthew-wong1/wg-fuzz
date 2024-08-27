struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(5558u, 57782u));

var<private> global3: array<u32, 22>;

var<private> global4: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(6416i, 64154i, 1i), vec3<i32>(i32(-2147483648), 1i, -22599i), vec3<i32>(-11728i, -1i, 35775i), vec3<i32>(-36574i, 11397i, 1i), vec3<i32>(i32(-2147483648), 0i, 11429i), vec3<i32>(-43122i, 30656i, 47502i), vec3<i32>(-1i, 15623i, 0i), vec3<i32>(2147483647i, 9575i, 24509i), vec3<i32>(-10554i, -9193i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), -31176i), vec3<i32>(14435i, 10345i, -3401i), vec3<i32>(2147483647i, 0i, -15437i), vec3<i32>(i32(-2147483648), -1i, 5106i), vec3<i32>(i32(-2147483648), -12118i, -24056i), vec3<i32>(-19058i, 0i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -9669i), vec3<i32>(38673i, 1i, 1i), vec3<i32>(0i, -46178i, 2147483647i), vec3<i32>(-45897i, -25787i, 1i), vec3<i32>(-38163i, i32(-2147483648), 0i), vec3<i32>(-17061i, i32(-2147483648), -17776i), vec3<i32>(-20146i, -14660i, -25596i), vec3<i32>(i32(-2147483648), 1i, 19037i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, 9578i), vec3<i32>(-3524i, 28302i, -32176i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(1i, -32966i, -3016i), vec3<i32>(-17458i, 34393i, 2147483647i), vec3<i32>(-14704i, 0i, 43071i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-global1.e);
}

fn func_2(arg_0: u32) -> u32 {
    global3 = array<u32, 22>();
    var var_0 = false;
    let var_1 = !vec4<bool>(!(-1i < (global1.d.c.x ^ u_input.b.x)), all(vec3<bool>(u_input.b.x <= 59788i, true, global1.d.b.x)), false, global1.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global1.d.a + global1.e.x), !(!vec4<bool>(true, true, 30220i > global1.d.c.x, false)), u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x * -605f) * _wgslsmith_f_op_f32(f32(-1f) * -564f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) - 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(530f * global1.d.a)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(countOneBits(vec3<u32>(4294967295u, global1.d.e.x, u_input.a.x)), 68320u, _wgslsmith_div_vec2_i32(global1.d.c, vec2<i32>(-36425i, u_input.b.x)), Struct_2(var_1.x, false, var_1.x, global1.d, vec4<f32>(671f, global1.d.a, global1.d.d.x, global1.e.x))))))), vec2<u32>(0u, 64655u));
    global1 = Struct_2(global1.d.b.x, any(select(var_2.b, select(!var_2.b, var_1, var_1), vec4<bool>(true, !var_1.x, true, var_2.b.x))), all(!(!vec4<bool>(true, global1.c, true, false))), Struct_1(global1.d.d.x, select(var_2.b, select(select(vec4<bool>(true, false, global1.d.b.x, global1.d.b.x), vec4<bool>(false, var_2.b.x, var_1.x, false), true), var_1, global1.d.b), select(vec4<bool>(false, global1.c, true, var_1.x), !vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, false), select(var_2.b, vec4<bool>(true, var_1.x, var_2.b.x, global1.d.b.x), vec4<bool>(global1.c, var_1.x, var_1.x, var_2.b.x)))), global1.d.c, var_2.d, ~vec2<u32>(_wgslsmith_mult_u32(arg_0, global1.d.e.x), 84733u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-832f, global1.e.x, global1.d.a, -175f) - global1.d.d) - vec4<f32>(var_2.d.x, global1.e.x, global1.d.a, global1.e.x)))));
    return 4294967295u;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(func_2(global3[_wgslsmith_index_u32(~31704u, 22u)]), 22u)], abs(abs(reverseBits(1u)))), 4294967295u, ~global1.d.e.x, _wgslsmith_mult_u32(1u & _wgslsmith_sub_u32(u_input.a.x, ~global3[_wgslsmith_index_u32(u_input.a.x, 22u)]), _wgslsmith_dot_vec3_u32(max(vec3<u32>(54666u, 5742u, 66197u), select(vec3<u32>(1u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]), vec3<u32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 22u)], global1.d.e.x), arg_0)), vec3<u32>(33905u, u_input.a.x, ~global3[_wgslsmith_index_u32(4406u, 22u)]))));
    let var_1 = abs(_wgslsmith_add_vec4_u32(~countOneBits(var_0), firstTrailingBit(~vec4<u32>(0u, 0u, 28886u, 0u))));
    global3 = array<u32, 22>();
    global2 = array<vec2<u32>, 1>();
    var var_2 = global2[_wgslsmith_index_u32(1u, 1u)];
    return Struct_2(global1.d.b.x, !any(select(global1.d.b.zz, !vec2<bool>(global1.d.b.x, arg_0), false)), arg_0, Struct_1(-823f, select(!(!vec4<bool>(false, true, global1.d.b.x, global1.a)), !global1.d.b, arg_0), vec2<i32>(_wgslsmith_sub_i32(reverseBits(-15700i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(86209u, 16173u), 28u)]), 11770i), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.d.a), _wgslsmith_f_op_f32(trunc(arg_1.x)), global1.e.x, _wgslsmith_f_op_f32(global1.e.x - 1729f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.d.x, 1098f, -1000f, -162f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1670f, 1192f, -1437f, global1.d.a) + vec4<f32>(-2104f, 651f, -215f, global1.e.x)))), vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, var_0.x, global3[_wgslsmith_index_u32(30940u, 22u)], 75739u), vec4<u32>(global3[_wgslsmith_index_u32(0u, 22u)], 1u, var_1.x, var_0.x), global1.c), ~var_0), ~select(6903u, global1.d.e.x, true))), global1.d.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global1.d.b.x, global0[_wgslsmith_index_u32(~global1.d.e.x >> (~_wgslsmith_add_u32(77040u, 114459u) % 32u), 28u)] == ~(firstTrailingBit(global1.d.c.x) << (u_input.a.x % 32u)), any(!global1.d.b), !global1.b);
    var var_1 = func_1(global1.d.b.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-697f, global1.d.d.x) + global1.d.d.xx), vec2<f32>(-318f, global1.d.a)))))), vec2<i32>(~_wgslsmith_clamp_i32(firstLeadingBit(global1.d.c.x), _wgslsmith_mult_i32(u_input.b.x, -1514i), 59361i), 10998i));
    var var_2 = true;
    var var_3 = true;
    var var_4 = !(!global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -reverseBits(min(u_input.b.x, global1.d.c.x)), _wgslsmith_div_f32(104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f - _wgslsmith_div_f32(global1.d.a, 156f)))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(13574u, global1.d.e.x, 0u, 1u)), ~vec4<u32>(4294967295u, u_input.a.x, var_1.d.e.x, 0u)), vec4<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, var_1.d.e.x), ~var_1.d.e.x, _wgslsmith_dot_vec2_u32(var_1.d.e, vec2<u32>(u_input.a.x, u_input.a.x)), 4294967295u)), u_input.a.x);
}

