struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(1372f, vec3<bool>(false, true, false), false, vec4<u32>(71217u, 91398u, 5804u, 4294967295u)), Struct_1(-559f, vec3<bool>(false, true, false), true, vec4<u32>(0u, 1u, 0u, 4294967295u)), Struct_1(147f, vec3<bool>(true, true, true), true, vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_1(1181f, vec3<bool>(true, false, false), true, vec4<u32>(22721u, 1u, 4294967295u, 0u)), Struct_1(-1996f, vec3<bool>(false, false, true), true, vec4<u32>(27730u, 6082u, 2353u, 1u)), Struct_1(119f, vec3<bool>(true, true, false), true, vec4<u32>(0u, 36197u, 4294967295u, 65289u)), Struct_1(-534f, vec3<bool>(true, false, true), true, vec4<u32>(20073u, 60808u, 61464u, 4294967295u)), Struct_1(1072f, vec3<bool>(true, false, false), true, vec4<u32>(1u, 0u, 0u, 0u)), Struct_1(1000f, vec3<bool>(false, true, true), true, vec4<u32>(4294967295u, 1u, 4294967295u, 55209u)), Struct_1(-1177f, vec3<bool>(false, true, true), true, vec4<u32>(4294967295u, 10753u, 4294967295u, 38355u)), Struct_1(-342f, vec3<bool>(false, true, false), true, vec4<u32>(43524u, 35037u, 0u, 1u)), Struct_1(-783f, vec3<bool>(true, true, true), true, vec4<u32>(0u, 230u, 91236u, 46927u)), Struct_1(1478f, vec3<bool>(true, true, true), true, vec4<u32>(1u, 0u, 4294967295u, 7295u)));

var<private> global1: vec2<i32>;

var<private> global2: Struct_1;

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, global1.x, u_input.a.x), min(global1.x, -25703i));
    var var_1 = -1358f;
    var var_2 = global0[_wgslsmith_index_u32(max(arg_0.x, ~71807u) & arg_0.x, 13u)];
    let var_3 = vec3<u32>(_wgslsmith_mod_u32(~29674u, _wgslsmith_mod_u32(global2.d.x, global2.d.x) >> (0u % 32u)), ~var_2.d.x, var_2.d.x);
    var var_4 = _wgslsmith_div_i32(-select(-global1.x & (u_input.a.x << (16880u % 32u)), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a) & _wgslsmith_dot_vec4_i32(vec4<i32>(14594i, -6283i, 20573i, u_input.a.x), vec4<i32>(-12896i, u_input.a.x, var_0, var_0)), false), ~(~_wgslsmith_add_i32(global1.x & -24098i, u_input.a.x)));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_1(-613f, global2.b, true & (arg_0.c | true), _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(~1u), ~arg_0.d.x & ~87263u, func_3(abs(vec3<u32>(arg_0.d.x, global2.d.x, global2.d.x)), arg_0.c), 9408u), vec4<u32>(_wgslsmith_dot_vec3_u32(global2.d.yzx, ~vec3<u32>(arg_0.d.x, 12781u, 4294967295u)), 4294967295u, global2.d.x, firstLeadingBit(_wgslsmith_mod_u32(global2.d.x, arg_0.d.x)))));
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, global3.x), vec2<f32>(global3.x, -163f), var_0.b.zx))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -1001f), vec2<f32>(global3.x, 2638f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), false))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-205f, var_0.a))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, arg_0.a))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -782f) * vec2<f32>(global3.x, global2.a)) * vec2<f32>(global3.x, -974f))))));
    let var_1 = global0[_wgslsmith_index_u32(50868u, 13u)];
    global0 = array<Struct_1, 13>();
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, global3.x), vec2<f32>(-366f, 683f)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, 645f), vec2<f32>(var_0.a, var_1.a))))))));
    return u_input.a;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-448f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-227f, global2.a) + 638f)) + vec2<f32>(global3.x, 1000f));
    let var_2 = global0[_wgslsmith_index_u32(global2.d.x, 13u)];
    global0 = array<Struct_1, 13>();
    global1 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -global1.x), func_2(Struct_1(_wgslsmith_f_op_f32(sign(var_2.a)), select(vec3<bool>(global2.c, var_2.b.x, true), vec3<bool>(var_2.b.x, false, var_2.c), true), var_2.c && true, vec4<u32>(34277u, 1u, var_2.d.x, 81724u) | global2.d), global1.x, any(var_2.b), _wgslsmith_add_vec2_i32(~u_input.a, u_input.a & u_input.a)) & vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-7480i, global1.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, global1.x), vec2<i32>(40425i, 20746i), u_input.a)), min(u_input.a.x, 1i)));
    return global0[_wgslsmith_index_u32(29789u, 13u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(vec3<bool>(arg_0, true, func_1().c), select(vec3<bool>(all(global2.b.yx), arg_0, false), global2.b, arg_1.c), func_1().b);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-110f))))) + arg_1.a), select(global2.b, !func_1().b, vec3<bool>(arg_0, !arg_1.b.x, var_0.x)), arg_0, vec4<u32>(global2.d.x, 1u, _wgslsmith_div_u32(1u, ~global2.d.x) | ~38576u, 33596u));
    global0 = array<Struct_1, 13>();
    let var_2 = global2.d.x;
    var var_3 = func_1();
    return global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.d.x), vec2<u32>(4294967295u, var_3.d.x)))), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.d.x;
    let var_1 = global0[_wgslsmith_index_u32(global2.d.x, 13u)];
    let var_2 = ~u_input.a.x;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, ~50181u), 13u)];
    global0 = array<Struct_1, 13>();
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -654f) + -2362f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -688f)))), select(var_3.b, !select(select(var_3.b, var_3.b, var_3.b), !global2.b, var_1.c | false), global2.c), var_1.c, ~((select(vec4<u32>(global2.d.x, 42183u, var_1.d.x, 0u), var_1.d, vec4<bool>(var_1.b.x, var_3.b.x, var_3.b.x, global2.c)) | vec4<u32>(var_1.d.x, 4294967295u, global2.d.x, global2.d.x)) << (reverseBits(vec4<u32>(26990u, 13917u, 0u, 4294967295u)) % vec4<u32>(32u))));
    var var_5 = _wgslsmith_f_op_f32(trunc(var_4.a));
    var var_6 = func_4(false, func_1());
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(func_4(true, global0[_wgslsmith_index_u32(global2.d.x, 13u)]).a, 1186f, select(var_4.b.x, var_1.b.x, var_4.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

