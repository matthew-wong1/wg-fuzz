struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: vec3<u32> = vec3<u32>(51243u, 18656u, 115302u);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4) -> vec2<bool> {
    global2 = !vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c)) < arg_1.a.c);
    let var_0 = _wgslsmith_mult_i32(abs(arg_1.a.a.x), -14089i);
    global2 = !(!select(select(!vec2<bool>(arg_1.a.e.x, false), vec2<bool>(true, arg_1.a.e.x), !vec2<bool>(global2.x, true)), arg_1.a.e.xx, u_input.a < (arg_1.c.a.x << (arg_0.x % 32u))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.c), _wgslsmith_f_op_f32(arg_1.a.c - arg_1.a.c), arg_1.a.e.x));
    let var_2 = arg_1.c;
    return vec2<bool>(global2.x, !(!(-58561i < _wgslsmith_add_i32(var_0, -1i))));
}

fn func_4(arg_0: f32, arg_1: bool) -> vec2<bool> {
    global0 = array<Struct_3, 30>();
    let var_0 = Struct_4(global0[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, 99725u), vec3<u32>(36223u, u_input.a, global1.x) ^ vec3<u32>(global1.x, 1u, u_input.a)) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global1.xy, global1.zx), 0u, reverseBits(global1.x)) % 32u)) ^ global1.x, 30u)], func_3(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(6508u, global1.x, global1.x) | vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(u_input.a, global1.x, 4294967295u)), ~(~vec3<u32>(u_input.a, u_input.a, 1u))), Struct_4(Struct_3(reverseBits(vec2<i32>(71503i, -2147483647i)), global1.x, arg_0, _wgslsmith_mult_u32(u_input.a, global1.x), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, global2.x, global2.x), global2.x)), vec2<bool>(true, true), Struct_2(vec2<u32>(u_input.a, 63811u)))), Struct_2(global1.zz));
    global2 = !var_0.a.e.zx;
    global2 = vec2<bool>(global2.x, arg_1);
    var var_1 = ~4294967295u;
    return !var_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = u_input.b.zx;
    let var_1 = arg_0.b;
    var_0 = abs(vec2<i32>(-40644i, -u_input.b.x));
    global2 = func_4(-524f, any(!select(func_3(vec3<u32>(0u, arg_1.x, 1u), Struct_4(Struct_3(u_input.b.yz, 1u, arg_0.b, arg_0.a.x, vec3<bool>(false, global2.x, global2.x)), vec2<bool>(global2.x, true), Struct_2(arg_2.yy))), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_0 = vec2<i32>(~(-arg_0.c & _wgslsmith_clamp_i32(u_input.b.x, ~arg_0.d, u_input.b.x)), -_wgslsmith_mod_i32(var_0.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(23311i, 2147483647i), vec2<i32>(1i, 2147483647i))));
    return abs(_wgslsmith_add_vec4_u32(~(~abs(vec4<u32>(26298u, global1.x, 1u, arg_1.x))), ~(vec4<u32>(0u, arg_2.x, 104423u, arg_1.x) << (~vec4<u32>(46125u, arg_3.x, arg_1.x, 68904u) % vec4<u32>(32u)))));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_mod_vec2_i32(countOneBits(u_input.b.zy), vec2<i32>(u_input.b.x, i32(-1i) * -u_input.b.x)), 1u | global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-458f - 669f), _wgslsmith_f_op_f32(max(365f, 290f)))) + _wgslsmith_f_op_f32(-841f * _wgslsmith_f_op_f32(f32(-1f) * -245f))), 59677u, select(!vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(!all(vec3<bool>(false, global2.x, global2.x)), global2.x, true), !(!select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, true, false), true))));
    var var_1 = select(~(~vec4<u32>(~global1.x, _wgslsmith_add_u32(27565u, var_0.d), 4294967295u, 124139u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, u_input.a, 21198u), vec4<u32>(var_0.b, global1.x, 4294967295u, 22728u), vec4<u32>(1u, var_0.d, 75092u, global1.x)) << (~(~vec4<u32>(4294967295u, 0u, global1.x, global1.x)) % vec4<u32>(32u)), ~(~func_2(Struct_1(vec3<u32>(global1.x, u_input.a, 1u), var_0.c, u_input.b.x, var_0.a.x), global1.zx, vec3<u32>(global1.x, 4294967295u, global1.x), global1.yz))), !(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(26235i, 0i), vec2<i32>(-12355i, 104755i)), var_0.a.x) == -20041i));
    let var_2 = _wgslsmith_clamp_u32(global1.x, 21892u, global1.x);
    let var_3 = var_0.e.x;
    global1 = func_2(Struct_1(vec3<u32>(global1.x, 36105u, 71229u ^ u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), -_wgslsmith_mult_i32(u_input.b.x, 1i), _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, 0i), _wgslsmith_clamp_i32(u_input.b.x, 0i, 4674i))), vec2<u32>(0u, 19565u), _wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(var_1.xwy, vec3<u32>(42290u, 4294967295u, var_2)), select(~vec3<u32>(1u, var_0.b, 6896u), ~vec3<u32>(var_0.b, 1u, 26721u), true)), var_1.ww).xyw ^ var_1.yxy;
    return Struct_4(Struct_3(vec2<i32>(-u_input.b.x, u_input.b.x), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + -1719f) + _wgslsmith_f_op_f32(1350f - _wgslsmith_f_op_f32(-var_0.c))), countOneBits(0u), select(!(!vec3<bool>(global2.x, global2.x, var_0.e.x)), !var_0.e, var_0.e)), vec2<bool>(select(!var_0.e.x, !global2.x, var_0.e.x), _wgslsmith_mult_u32(var_0.d, ~36356u) > _wgslsmith_clamp_u32(~18439u, 41680u, var_1.x)), Struct_2(~(~var_1.ww)));
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    var var_0 = ~(~(-abs(1i)));
    global1 = ~_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 1u, u_input.a), vec3<u32>(4294967295u, u_input.a, arg_1.a.b)), vec3<u32>(18266u, arg_1.a.b, arg_1.a.b) >> (vec3<u32>(10577u, global1.x, global1.x) % vec3<u32>(32u))), countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, arg_1.c.a.x, 36707u), vec3<u32>(global1.x, 1u, global1.x))));
    var var_1 = select(func_1().a.e, arg_1.a.e, true);
    let var_2 = min(~u_input.a >> (~_wgslsmith_div_u32(_wgslsmith_add_u32(18507u, global1.x), 20976u) % 32u), ~(~(~(~u_input.a))));
    var_1 = vec3<bool>(true, all(arg_1.b), any(!select(select(arg_1.a.e, vec3<bool>(var_1.x, arg_0, true), arg_1.a.e), arg_1.a.e, arg_1.a.e)));
    return global0[_wgslsmith_index_u32(global1.x, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(16825u, 30u)];
    let var_1 = func_5(min(-26298i, var_0.a.x) != (var_0.a.x << (~11435u % 32u)), func_1());
    global1 = vec3<u32>(39447u, global1.x, 20918u);
    let var_2 = !var_1.e.x;
    var var_3 = Struct_2(vec2<u32>(abs(1u), var_1.d) & vec2<u32>(func_2(Struct_1(vec3<u32>(var_1.d, 1u, u_input.a), var_1.c, var_0.a.x, var_1.a.x), ~global1.zy, vec3<u32>(1u, var_1.d, 21093u) >> (vec3<u32>(98208u, 1u, 3625u) % vec3<u32>(32u)), ~vec2<u32>(4294967295u, 7370u)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(43762u, 7158u, global1.x), vec3<u32>(var_1.d, u_input.a, global1.x)) | 12656u));
    var_0 = global0[_wgslsmith_index_u32(~124913u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), var_1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, var_0.c), vec2<f32>(945f, -2126f))))), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c, var_1.c, 814f))))))));
}

