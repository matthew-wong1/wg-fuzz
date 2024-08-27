struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(0u, 71705u, 4294967295u, 4294967295u, 4294967295u, 0u, 1357u, 3195u, 33348u, 68600u, 1u);

var<private> global1: f32 = -1000f;

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false));

var<private> global3: Struct_2 = Struct_2(vec3<i32>(23933i, i32(-2147483648), -43727i), Struct_1(vec2<f32>(667f, 743f), vec2<bool>(true, true), 4294967295u, vec3<bool>(true, true, false)));

var<private> global4: vec4<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: u32) -> vec2<u32> {
    return vec2<u32>(u_input.b.x, 61503u);
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_2(u_input.c.zyz, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-178f - global3.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(211f, global4.x) - 1124f)), vec2<bool>(any(!vec3<bool>(global3.b.b.x, false, global3.b.b.x)), global3.b.d.x), global0[_wgslsmith_index_u32(reverseBits(u_input.b.x), 11u)] << (u_input.e.x % 32u), select(global3.b.d, vec3<bool>(arg_0 > arg_0, all(global3.b.d), true), global3.b.d)));
    global3 = Struct_2(reverseBits(~(~select(u_input.c.ywz, u_input.c.wyy, var_0.b.d))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global3.b.a.x * _wgslsmith_f_op_f32(max(648f, 1240f))), _wgslsmith_f_op_f32(-global3.b.a.x)), var_0.b.d.zx, global3.b.c, vec3<bool>(true, select(63845u, 6410u, global3.b.d.x) == _wgslsmith_div_u32(u_input.b.x, var_0.b.c), global3.b.d.x | global3.b.b.x)));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(global4.x * 1162f)), !global3.b.b, _wgslsmith_mod_u32(abs(4533u), reverseBits(66676u)), vec3<bool>(global3.b.a.x >= global4.x, any(vec2<bool>(var_0.b.d.x, true)), any(vec4<bool>(global3.b.b.x, all(vec3<bool>(global3.b.d.x, true, true)), true, all(var_0.b.b)))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_2.b.a);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b.a.x)) * _wgslsmith_f_op_f32(min(-1594f, var_1.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -165f)), _wgslsmith_f_op_f32(max(global3.b.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-730f, var_3.x), _wgslsmith_f_op_f32(var_1.a.x + var_3.x))))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(min(-arg_2.a.x, -arg_2.a.x), arg_0.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.b.a.x + arg_2.b.a.x), _wgslsmith_f_op_f32(arg_2.b.a.x + arg_0.b.a.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.a)))));
    global1 = _wgslsmith_f_op_vec2_f32(func_3(0i, _wgslsmith_sub_i32(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, u_input.a), 23815i, global3.a.x)), _wgslsmith_mod_i32(arg_2.a.x, global3.a.x)))).x;
    global1 = -288f;
    var var_1 = ~_wgslsmith_mod_i32(u_input.d, arg_2.a.x ^ -2147483647i);
    global4 = vec4<f32>(_wgslsmith_f_op_f32(-970f + 961f), global3.b.a.x, _wgslsmith_f_op_f32(abs(arg_0.b.a.x)), arg_2.b.a.x);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~firstLeadingBit(firstTrailingBit(global3.a) | -u_input.c.ywx), func_2(Struct_2(global3.a, global3.b), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.c, reverseBits(34423u)), func_1(Struct_2(u_input.c.wwz, global3.b), ~vec2<i32>(15257i, 2147483647i), abs(global3.a.zx), _wgslsmith_sub_u32(17020u, 4280u))), Struct_2(~vec3<i32>(1i, 20425i, 14531i), global3.b)));
    let var_1 = global3.b;
    global4 = vec4<f32>(func_2(var_0, _wgslsmith_div_u32(firstTrailingBit(global3.b.c), ~(~u_input.e.x)), var_0).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f - var_0.b.a.x))), _wgslsmith_f_op_f32(-962f + _wgslsmith_f_op_f32(-1054f * global3.b.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.a.x)))));
    var var_2 = ~(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(3106u, 19992u, 19391u), vec3<u32>(1u, global3.b.c, 20581u)), vec3<u32>(global0[_wgslsmith_index_u32(var_1.c, 11u)], u_input.b.x, 4294967295u) << (vec3<u32>(global0[_wgslsmith_index_u32(6161u, 11u)], u_input.b.x, 1548u) % vec3<u32>(32u)))));
    var var_3 = any(!(!var_1.d.yx)) & (!(var_0.b.b.x & var_0.b.d.x) | any(var_1.d.zz));
    let var_4 = vec4<bool>(true, true, !(select(var_1.d.x, false, true) || false), all(select(var_0.b.d, var_1.d, !(!var_0.b.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.c, global3.a.x, global4.zwy, 41279u | var_0.b.c, ~countOneBits(countOneBits(vec3<u32>(u_input.b.x, var_0.b.c, 4294967295u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(20427u, u_input.e.x, 35358u), vec3<u32>(u_input.b.x, 14878u, var_1.c)) % vec3<u32>(32u))));
}

