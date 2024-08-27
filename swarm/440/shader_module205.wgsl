struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24>;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true));

var<private> global2: vec2<f32>;

var<private> global3: bool = true;

var<private> global4: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = arg_0;
    global1 = array<Struct_3, 7>();
    global0 = array<vec2<f32>, 24>();
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(global2.x + arg_0.a.x))))), arg_0.b, !(!(!var_0.b.zy)));
    var var_1 = 0i;
    return var_0.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool) -> vec3<f32> {
    let var_0 = ~((97064i | (0i << (arg_1.x % 32u))) & _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, -29126i), -66886i)) | reverseBits(_wgslsmith_mod_i32(~select(1i, -1i, arg_2), ~(~17023i)));
    global1 = array<Struct_3, 7>();
    global2 = _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(8218u, 24u)], global0[_wgslsmith_index_u32(~arg_1.x, 24u)]);
    var var_1 = true;
    let var_2 = 11330i;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1871f * global2.x), _wgslsmith_f_op_f32(min(global2.x, global2.x)), _wgslsmith_div_f32(global2.x, -516f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1482f, global2.x, global2.x))))), vec3<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(max(595f, -2006f)), -1000f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_3(arg_3);
    global3 = true;
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_0.c), arg_0.b | vec3<i32>(arg_0.b.x, 1i, -1i), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(all(vec2<bool>(arg_3, true))), u_input.a.wwy, all(func_3(Struct_1(arg_1, vec3<bool>(true, var_0.a, false), vec2<bool>(var_0.a, var_0.a)), Struct_1(arg_0.c.xy, vec3<bool>(arg_3, false, var_0.a), vec2<bool>(arg_3, true)), Struct_3(var_0.a))))));
    var var_2 = -firstTrailingBit(arg_0.b.zz | ~min(vec2<i32>(arg_0.b.x, -1i), vec2<i32>(var_1.b.x, -39416i)));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global2.x)), arg_0.a.x, all(vec3<bool>(true, false, false))));
    return !(!(!(!select(vec3<bool>(var_0.a, true, true), vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(arg_3, false, arg_3)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = !all(select(vec3<bool>(false, true, true), func_2(Struct_4(vec3<f32>(1357f, 1194f, global2.x), vec3<i32>(5959i, -151i, -1i), vec3<f32>(-202f, global2.x, -372f)), global0[_wgslsmith_index_u32(~u_input.a.x, 24u)], 1i, u_input.a.x == u_input.b.x), vec3<bool>(true, true, true)));
    var var_1 = select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1480i, 26590i, 6770i, -28663i)), vec4<i32>(-2147483647i, -1486i, -58360i, -1i)), firstTrailingBit(-18110i) & ~(-28462i), 87452i >> (u_input.b.x % 32u)) << (u_input.b.x % 32u), _wgslsmith_div_i32(-91i, 1i), true);
    global1 = array<Struct_3, 7>();
    global2 = global0[_wgslsmith_index_u32(u_input.b.x, 24u)];
    let var_2 = reverseBits(min(2147483647i, ~(-1i)));
    return select(vec4<bool>(2147483647i > var_2, true, true, all(vec2<bool>(all(vec4<bool>(true, true, false, true)), true))), !vec4<bool>(_wgslsmith_f_op_f32(round(global2.x)) < _wgslsmith_f_op_f32(global2.x * 1000f), func_2(Struct_4(vec3<f32>(global2.x, 761f, 1168f), vec3<i32>(-1i, -12971i, var_2), vec3<f32>(999f, -1098f, -1074f)), global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 2147483647i, true).x, false, true), vec4<bool>(false, func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, global2.x, global2.x)), -vec3<i32>(var_2, 0i, -35828i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-307f, -1734f, 642f)))), vec2<f32>(_wgslsmith_f_op_f32(global2.x + -763f), -1394f), ~16344i, func_2(Struct_4(vec3<f32>(-1607f, global2.x, global2.x), vec3<i32>(var_2, 5277i, var_2), vec3<f32>(301f, 545f, global2.x)), global0[_wgslsmith_index_u32(u_input.a.x, 24u)], max(-2147483647i, 0i), true).x).x, true, !(!any(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 24>();
    global3 = all(vec3<bool>(true, !any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), true));
    var var_0 = !func_1();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~64522u, ~(~u_input.a.x)), 24u)];
    var var_1 = -vec4<i32>(~((i32(-1i) * -23992i) >> (_wgslsmith_dot_vec2_u32(u_input.b, u_input.a.zy) % 32u)), ~(~2147483647i), 0i, -67027i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-429f - _wgslsmith_f_op_f32(-1092f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) + _wgslsmith_f_op_vec3_f32(func_4(Struct_3(true), ~(vec3<u32>(0u, 0u, 4277u) << (u_input.a.zzx % vec3<u32>(32u))), var_0.x & true)).x), 552f);
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_i32(-2147483647i, ~var_1.x, var_1.x)) ^ -_wgslsmith_clamp_i32(~617i, -12507i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_1.x), vec3<i32>(-71165i, 1i, var_1.x))), _wgslsmith_mod_i32(1101i, i32(-1i) * -(var_1.x << (u_input.b.x % 32u))), var_1.xz);
}

