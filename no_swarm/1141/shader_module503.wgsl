struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool = true;

var<private> global2: vec2<f32> = vec2<f32>(2138f, -669f);

var<private> global3: array<vec2<i32>, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_3(min(-vec3<i32>(abs(global0.x), ~(-1i), -1i), reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.a, vec3<i32>(global0.x, -7094i, 21758i)), 0i, _wgslsmith_add_i32(34882i, 32985i)))), arg_1.b, arg_0.x, _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(arg_1.d.x, arg_1.d.x, 1u), 4294967295u << (u_input.a % 32u), _wgslsmith_sub_u32(u_input.a, arg_1.d.x)), vec3<u32>(u_input.a, u_input.a, countOneBits(arg_1.d.x >> (57963u % 32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.xz + var_0.b);
    let var_2 = arg_1;
    let var_3 = -110f;
    global1 = all(vec3<bool>(global0.x != _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.x), global0.yz), -27687i), true, true));
    return _wgslsmith_f_op_f32(max(-877f, var_3));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-1389f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, global2.x, 496f) * vec3<f32>(global2.x, global2.x, 532f)), Struct_3(vec3<i32>(43070i, 2147483647i, 12699i), vec2<f32>(global2.x, -1366f), -153f, arg_0))))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(round(global2.x))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(trunc(global2.x))), -170f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(var_0.xw));
    var var_2 = Struct_2(true | !any(vec3<bool>(false, true, false)), vec2<bool>(false, all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-796f)) + _wgslsmith_f_op_f32(min(var_1.x, -544f)))), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, _wgslsmith_clamp_i32(56587i, global0.x, global0.x), global0.x), vec3<i32>(global0.x, global0.x, 1i) & vec3<i32>(23961i, 1i, -2147483647i)));
    var var_3 = vec3<u32>(~u_input.a, 0u, _wgslsmith_div_u32(18780u, ~arg_0.x) << (arg_0.x % 32u)) ^ arg_0;
    return Struct_3(vec3<i32>(countOneBits(_wgslsmith_mult_i32(~var_2.d.x, _wgslsmith_div_i32(1i, 2147483647i))), ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(0i, -59924i, 1854i), vec3<i32>(var_2.d.x, 1i, 2147483647i)), min(vec3<i32>(var_2.d.x, global0.x, var_2.d.x), var_2.d)), ~(var_2.d.x & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-1684i, global0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c, -827f), var_0.xy, var_2.b.x))), vec2<f32>(var_1.x, var_1.x), select(select(var_2.b, var_2.b, false), !var_2.b, any(var_2.b)))), var_0.wy), _wgslsmith_f_op_f32(select(628f, _wgslsmith_div_f32(811f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * _wgslsmith_div_f32(var_2.c, -406f))), false)), abs(vec3<u32>(u_input.a, 15010u, 8006u)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = func_2(arg_2.zxx ^ (_wgslsmith_mod_vec3_u32(arg_2.xyz, arg_2.xwx) << (~max(arg_2.yzx, arg_2.yxy) % vec3<u32>(32u))));
    var_0 = func_2(~(vec3<u32>(1u, func_2(arg_2.www).d.x, 0u) & ~(arg_2.wzx << (vec3<u32>(51329u, 30787u, arg_2.x) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_2.x, 134u), ~(~max(40764u, u_input.a))));
    var_0 = Struct_3(abs(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.a.x, 6103i), reverseBits(global0.x)), ~(~(-20317i)), ~1i)), _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b), -593f, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(var_0.d, vec3<u32>(select(arg_1, var_1, false), ~var_0.d.x, 22274u)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(31588u, u_input.a, 1u)), firstTrailingBit(abs(arg_2.zzz))), _wgslsmith_div_vec3_u32(func_2(var_0.d).d | var_0.d, var_0.d)));
    let var_2 = select(vec2<bool>(!select(true, any(vec2<bool>(true, true)), true), all(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, var_0.a.x == 1i), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, true)), func_2(~func_2(var_0.d).d).b.x <= arg_0);
    return Struct_3(_wgslsmith_div_vec3_i32(firstTrailingBit(var_0.a), ~(-vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) * arg_0), arg_0) - vec2<f32>(1145f, _wgslsmith_f_op_f32(f32(-1f) * -826f))), _wgslsmith_f_op_f32(abs(arg_0)), vec3<u32>(~(~func_2(vec3<u32>(var_0.d.x, u_input.a, var_1)).d.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 1u, var_1), arg_2.yxy), var_0.d), 58793u), func_2(_wgslsmith_div_vec3_u32(~var_0.d, _wgslsmith_sub_vec3_u32(vec3<u32>(37325u, 93097u, 1869u), vec3<u32>(4294967295u, 4294967295u, u_input.a)))).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 27>();
    global3 = array<vec2<i32>, 27>();
    global0 = _wgslsmith_sub_vec3_i32(-(vec3<i32>(-1i) * -min(vec3<i32>(0i, global0.x, -30112i), vec3<i32>(-17647i, -43939i, global0.x))), vec3<i32>(global0.x, global0.x, max(min(~(-2147483647i), 0i), ~abs(10638i))));
    var var_0 = func_1(-3582f, u_input.a >> (u_input.a % 32u), reverseBits(vec4<u32>(_wgslsmith_mult_u32(1u, ~1u), ~u_input.a, min(13656u, u_input.a), 38190u)));
    var var_1 = any(!vec2<bool>(0u < u_input.a, true || (u_input.a <= 32924u)));
    var var_2 = ~_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 13520u, 4294967295u), var_0.d), reverseBits(var_0.d));
    let var_3 = Struct_3(-abs(var_0.a), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x))) + _wgslsmith_f_op_f32(global2.x + var_0.b.x))), var_0.d);
    let var_4 = false != any(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.a.x ^ _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.a.x, 14185i), 2147483647i), _wgslsmith_div_i32(7123i, _wgslsmith_dot_vec2_i32(global0.yx, select(var_0.a.zz, vec2<i32>(2147483647i, 1i), vec2<bool>(var_4, true))))));
}

