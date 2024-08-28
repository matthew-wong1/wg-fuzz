struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -198f;

var<private> global1: array<i32, 24>;

var<private> global2: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_1(~max(vec3<u32>(~arg_2.x, arg_0, 1u), u_input.b.wwz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(483f, _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_3, 1037f)), -805f)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, _wgslsmith_f_op_f32(arg_3 * -606f) < _wgslsmith_f_op_f32(select(arg_3, 874f, true)), all(global2[_wgslsmith_index_u32(~30600u, 9u)]), false), vec4<bool>((4294967295u ^ arg_0) >= (4294967295u | u_input.a.x), any(global2[_wgslsmith_index_u32(arg_2.x << (3440u % 32u), 9u)]), false, _wgslsmith_dot_vec3_i32(arg_1, arg_1) <= (arg_1.x << (arg_0 % 32u)))));
    return !vec3<bool>(true, _wgslsmith_dot_vec2_i32(arg_1.yx, vec2<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)])) <= _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 24u)], 0i), true);
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = u_input.b.zx;
    global0 = -1000f;
    var var_1 = all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), vec3<bool>(true, true, true)), select(!func_3(0u, vec3<i32>(35181i, -25750i, u_input.d.x), u_input.a, -1699f), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), arg_0.x < arg_0.x), true), true));
    let var_2 = Struct_5(false, 57874u);
    var_1 = var_2.a;
    return vec2<bool>(true, !var_2.a);
}

fn func_1(arg_0: u32) -> bool {
    global2 = array<vec2<bool>, 9>();
    global0 = _wgslsmith_f_op_f32(1397f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-255f * -1572f)), !any(global2[_wgslsmith_index_u32(u_input.b.x, 9u)])))));
    global0 = _wgslsmith_f_op_f32(sign(-953f));
    var var_0 = Struct_2(-(-19403i | (-1i << (u_input.c % 32u))));
    var_0 = Struct_2(var_0.a & -24086i);
    return !any(select(func_2(-vec4<i32>(2147483647i, var_0.a, var_0.a, -14375i)), vec2<bool>(true, true), true));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_5 {
    global1 = array<i32, 24>();
    var var_0 = !(!(!vec3<bool>(false, func_1(70217u), arg_2.c)));
    var var_1 = vec3<bool>(func_2(_wgslsmith_sub_vec4_i32(~reverseBits(vec4<i32>(arg_2.b.x, arg_2.b.x, u_input.d.x, arg_2.b.x)), vec4<i32>(2147483647i & arg_2.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 1i), vec3<i32>(1i, -1i, -2147483647i)), 18553i, -1i))).x, true, true);
    var_1 = select(func_3(u_input.c, ~(vec3<i32>(-41387i, 1i, arg_2.b.x) << (u_input.b.wzw % vec3<u32>(32u))), ~u_input.b.wy, -1000f), !select(vec3<bool>(func_2(vec4<i32>(-36021i, arg_2.b.x, -44389i, global1[_wgslsmith_index_u32(1u, 24u)])).x, true, !arg_0.a), func_3(u_input.c ^ 1u, select(vec3<i32>(-16321i, global1[_wgslsmith_index_u32(u_input.c, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]), vec3<i32>(u_input.d.x, arg_2.b.x, global1[_wgslsmith_index_u32(4330u, 24u)]), vec3<bool>(var_1.x, var_0.x, var_1.x)), ~vec2<u32>(81676u, 1u), _wgslsmith_f_op_f32(floor(arg_1.x))), arg_2.c), vec3<bool>(all(!vec4<bool>(var_0.x, true, var_0.x, var_1.x)), false, var_1.x));
    var var_2 = ~27341u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 9>();
    global0 = _wgslsmith_f_op_f32(-1f);
    let var_0 = ~(i32(-1i) * -2147483647i);
    let var_1 = func_4(Struct_5(true & (func_1(30071u) & any(vec3<bool>(false, false, false))), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(u_input.c, u_input.a.x, u_input.c)), u_input.c))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -676f, -1000f), vec3<f32>(-168f, 1036f, 1014f), vec3<bool>(false, true, false))), vec3<f32>(153f, 1000f, 677f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2052f, -258f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, 871f, 352f)))))), Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.a.x) << (~vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u)), ~select(vec2<u32>(0u, 29568u), u_input.b.wz, false)), u_input.d ^ _wgslsmith_sub_vec2_i32(-vec2<i32>(var_0, u_input.d.x), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0, 31333i), u_input.d)), func_2(abs(vec4<i32>(var_0, -23612i, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0)) | _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -5369i, -2147483647i, u_input.d.x), vec4<i32>(var_0, var_0, 33700i, -5938i))).x));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(2322f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(604f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(874f)))))), Struct_2(var_0));
    let var_3 = Struct_1(vec3<u32>(u_input.b.x, 4294967295u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(27151u, 1u), u_input.b.zx) << ((var_1.b & var_1.b) % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -1440f, -1514f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a, -346f, -196f)))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a, var_2.a, 581f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -1304f, var_2.a) - vec3<f32>(-575f, var_2.a, 238f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1056f, _wgslsmith_f_op_f32(var_2.a - -579f), 155f))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - -784f)) >= -1299f, func_1(abs(~u_input.a.x)), true, true));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(ceil(var_2.a)));
    global2 = array<vec2<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1177f, -986f, false)) + var_2.a), 782f, !func_4(var_1, vec3<f32>(var_2.a, -1452f, 884f), Struct_4(vec2<u32>(var_3.a.x, 4294967295u), vec2<i32>(16601i, 36619i), false)).a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.b.x, var_2.a))) * 1009f)), var_1.b);
}

