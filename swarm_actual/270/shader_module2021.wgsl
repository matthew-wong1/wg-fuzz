struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), global0.d.x, _wgslsmith_f_op_f32(trunc(-1000f)))) + global0.d.yyw));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.zx * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + 328f), _wgslsmith_f_op_f32(684f + global0.d.x)), vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, var_0.a.x)), global0.d.x))));
    var var_2 = 4294967295u;
    var var_3 = var_0;
    return Struct_2(vec3<f32>(1646f, var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1594f))))))));
}

fn func_3() -> bool {
    global1 = !vec3<bool>(all(vec2<bool>(true, global1.x)), false, select(false, !(u_input.c == u_input.c), all(vec3<bool>(true, true, true))));
    let var_0 = _wgslsmith_f_op_f32(-global0.d.x);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -13757i), -(abs(u_input.b.xx) ^ u_input.b.xy)), ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.yz | u_input.b.zx, u_input.b.yz), _wgslsmith_sub_vec2_i32(u_input.b.yz, u_input.b.xx ^ vec2<i32>(u_input.c, -1i))), -(~(-(56743i >> (0u % 32u)))));
    global0 = Struct_1(_wgslsmith_add_i32(-(reverseBits(u_input.b.x) << (55188u % 32u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(75714i, u_input.d, ~global0.a), -22970i)), abs(global0.b), true, _wgslsmith_f_op_vec4_f32(-global0.d));
    var var_2 = !any(select(global1.xx, global1.yz, !any(vec4<bool>(global0.c, false, global0.c, false))));
    return !((global1.x && all(!vec4<bool>(global1.x, global1.x, false, global1.x))) && global0.c);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global1 = vec3<bool>(true, !(!(!select(global1.x, arg_3.c, true))), arg_3.c != select(global0.b == _wgslsmith_div_u32(arg_3.b, arg_3.b), any(!vec3<bool>(false, arg_3.c, true)), false));
    var var_0 = global1.x;
    var var_1 = arg_3;
    var var_2 = func_2();
    var var_3 = arg_1.a.x;
    return arg_1;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = func_4(global0.d.x, func_2(), global0.b, Struct_1(arg_0.x, ~(~(~global0.b)), func_3(), global0.d));
    var var_1 = vec2<u32>(reverseBits(4294967295u), 62287u);
    let var_2 = func_2().a.yz;
    let var_3 = select(select(!select(!vec2<bool>(global0.c, global0.c), select(vec2<bool>(global0.c, global1.x), vec2<bool>(global1.x, global1.x), global1.xy), select(vec2<bool>(true, true), vec2<bool>(global0.c, true), global1.x)), vec2<bool>(global1.x, select(true, global1.x, true)), firstTrailingBit(51912u) > var_1.x), select(!(!select(global1.xz, vec2<bool>(global1.x, false), true)), !select(!global1.yz, vec2<bool>(global0.c, false), 1i > arg_0.x), !(!all(global1.yx))), select(global1.xx, select(!(!global1.xz), vec2<bool>(true, false), true), vec2<bool>(true, true)));
    var var_4 = ~(-(_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, global0.a, 1i), vec3<i32>(global0.a, -6454i, arg_0.x), vec3<i32>(-22102i, -2147483647i, -537i))) ^ (102607i << ((global0.b << (1u % 32u)) % 32u))));
    return Struct_1(arg_0.x, ~global0.b, !global0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, var_0.a.x, true))), _wgslsmith_f_op_f32(max(-2063f, _wgslsmith_f_op_f32(var_0.a.x + 193f))), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + global0.d.x) + _wgslsmith_f_op_f32(max(966f, global0.d.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = func_1(u_input.b.zy << (vec2<u32>(~global0.b, _wgslsmith_mult_u32(func_1(u_input.b.xz).b, 4294967295u)) % vec2<u32>(32u)));
    let var_0 = -(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, u_input.b.x, arg_1.a), -vec4<i32>(1i, 1i, 7382i, -21863i))) >> ((vec4<u32>(49666u, global0.b, countOneBits(~global0.b), firstLeadingBit(_wgslsmith_mult_u32(arg_1.b, global0.b))) << (vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 4294967295u, 0u), ~vec3<u32>(arg_1.b, global0.b, 0u)), arg_3.b, reverseBits(0u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = func_3();
    global1 = vec3<bool>(global1.x, global1.x, !arg_0.c & true);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(2147483647i, reverseBits(global0.b), any(select(!vec4<bool>(true, global0.c, false, global0.c), vec4<bool>(false, global0.c, global1.x, false), true)), global0.d), func_1(u_input.b.zy), global0.d.xwy, Struct_1(global0.a, 1u, false, global0.d));
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global0.b, select(~0u, _wgslsmith_mult_u32(global0.b, global0.b), any(vec2<bool>(global1.x, global0.c)))), ~(global0.b << (global0.b % 32u))), ~vec2<u32>(global0.b, global0.b));
    var var_1 = !global0.c;
    var var_2 = vec3<i32>(global0.a, -u_input.c, u_input.d) | (u_input.b | _wgslsmith_mod_vec3_i32(reverseBits(countOneBits(u_input.b)), vec3<i32>(global0.a, u_input.a, global0.a ^ -15253i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-global0.d.xyx);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.d.x, var_3.x));
}

