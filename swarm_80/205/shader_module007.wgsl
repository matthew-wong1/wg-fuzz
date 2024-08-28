struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7822i;

var<private> global1: array<Struct_1, 4>;

var<private> global2: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_4, arg_3: u32) -> vec2<u32> {
    let var_0 = Struct_2(global2.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.a.d.x)), _wgslsmith_f_op_f32(var_0.a.d.x * arg_1.a.x), 767f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-814f, _wgslsmith_f_op_f32(var_0.a.d.x - _wgslsmith_f_op_f32(max(arg_0.d.x, 140f))), arg_1.a.x)))));
    var var_2 = all(select(select(select(!arg_1.c.xzw, !vec3<bool>(global2.a.a, global2.a.a, false), arg_1.c.xzz), vec3<bool>(true, false, true), !any(arg_1.c.xz)), select(arg_1.c.wwz, select(select(vec3<bool>(true, arg_0.a, false), arg_1.c.zzw, vec3<bool>(arg_1.c.x, var_0.a.a, true)), arg_1.c.yxx, !arg_1.c.yyz), vec3<bool>(true, true, all(vec4<bool>(global2.a.a, arg_0.a, arg_1.c.x, true)))), ~(0u & arg_3) < arg_3));
    let var_3 = var_0.a;
    var var_4 = Struct_3(1234f, arg_1.c.zwz, arg_0.b, vec2<i32>(2147483647i, global2.a.c), var_0);
    return ~(vec2<u32>(max(~arg_3, max(arg_3, 1u)), ~1u) ^ ((max(vec2<u32>(arg_3, 53786u), vec2<u32>(8738u, 1u)) ^ vec2<u32>(arg_3, 4294967295u)) | ~(~vec2<u32>(arg_3, arg_3))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_mod_i32(countOneBits(min(u_input.a.x, u_input.b) ^ (1i >> (arg_0.x % 32u))) | -(u_input.b >> (1u % 32u)), global2.a.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1108f)), _wgslsmith_f_op_f32(select(arg_1.e.a.d.x, global2.a.b.x, true))), vec2<f32>(-1000f, 1396f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(min(arg_1.e.a.d.x, arg_1.e.a.b.x))), global2.a.d.x)))));
    let var_2 = ~(~arg_0.x);
    var var_3 = min(vec4<i32>(_wgslsmith_mod_i32(reverseBits(2982i), global2.a.c) >> (1u % 32u), 2147483647i, 2147483647i, var_0), abs(vec4<i32>(-1i) * -vec4<i32>(-19695i, 2147483647i, -1i, u_input.b)));
    let var_4 = var_2 == _wgslsmith_div_u32(var_2, 69626u & (var_2 ^ ~36812u));
    return Struct_4(~(-abs(arg_1.d)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = -564f;
    let var_1 = arg_2;
    global2 = Struct_2(global2.a);
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(~(~(~1u)), 4u)]);
    global1 = array<Struct_1, 4>();
    return Struct_4(arg_1.zx);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = 1u;
    global0 = _wgslsmith_clamp_i32(~arg_1.a.x, _wgslsmith_mult_i32(global2.a.c, _wgslsmith_sub_i32(-34445i, ~(~25300i))), -2147483647i);
    global1 = array<Struct_1, 4>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-509f, -111f) - global2.a.d.x), arg_0.d.x)), arg_2, _wgslsmith_f_op_vec3_f32(sign(arg_0.d.wwz)), _wgslsmith_add_vec2_i32(u_input.a.zx, func_4(Struct_4(vec2<i32>(arg_0.c, -1i) & arg_1.a), vec3<i32>(_wgslsmith_add_i32(0i, -357i), arg_0.c, 1i), vec3<i32>(1i, u_input.a.x, -59060i << (var_0 % 32u))).a), Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global2.a.d.wyz))), i32(-1i) * -2147483647i, global2.a.d)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, global2.a.b.x) - global2.a.b.x) <= 294f, arg_0.a == any(vec2<bool>(global2.a.a, false)), var_1.e.a.a), vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x - -451f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), -1762f), u_input.a.yy, Struct_2(global2.a));
    return Struct_2(Struct_1(arg_2.x, global2.a.d.zwy, -24917i, _wgslsmith_f_op_vec4_f32(arg_0.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(554f, 1301f, var_1.e.a.d.x, -616f)))))));
}

fn func_1(arg_0: i32) -> u32 {
    global2 = Struct_2(global2.a);
    let var_0 = any(vec3<bool>(true, global2.a.a, any(!vec4<bool>(global2.a.a, false, true, false)) == (false & global2.a.a)));
    global2 = func_5(Struct_1(all(!vec2<bool>(var_0, var_0)), global2.a.b, -1i, _wgslsmith_f_op_vec4_f32(-global2.a.d)), func_4(func_3(max(vec2<u32>(1u, 1u), func_2(Struct_1(var_0, vec3<f32>(global2.a.d.x, -1000f, 487f), u_input.a.x, global2.a.d), Struct_5(global2.a.d.xwx, Struct_4(u_input.a.xx), vec4<bool>(false, false, false, global2.a.a)), Struct_4(u_input.a.yz), 34037u)), Struct_3(_wgslsmith_f_op_f32(-global2.a.d.x), !vec3<bool>(global2.a.a, true, var_0), global2.a.d.zwx, vec2<i32>(-1i, -9845i), Struct_2(Struct_1(false, vec3<f32>(1000f, 734f, global2.a.b.x), -45789i, vec4<f32>(global2.a.b.x, global2.a.b.x, 627f, global2.a.b.x))))), u_input.a, ~_wgslsmith_mult_vec3_i32(~u_input.a, u_input.a ^ vec3<i32>(25530i, -1i, u_input.b))), !select(vec3<bool>(any(vec4<bool>(global2.a.a, true, var_0, global2.a.a)), !var_0, all(vec2<bool>(var_0, true))), vec3<bool>(149f >= global2.a.b.x, true, true), !select(vec3<bool>(global2.a.a, var_0, false), vec3<bool>(global2.a.a, false, var_0), var_0)));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.a.b), _wgslsmith_f_op_vec3_f32(-global2.a.b), !(!select(vec3<bool>(false, false, global2.a.a), !vec3<bool>(false, var_0, var_0), !vec3<bool>(global2.a.a, global2.a.a, false)))));
    global2 = Struct_2(func_5(global1[_wgslsmith_index_u32(~(~1u), 4u)], Struct_4(u_input.a.zz), vec3<bool>(true, !(var_0 | false), !(global2.a.a | true))).a);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 451f;
    let var_1 = _wgslsmith_clamp_u32(func_1(i32(-1i) * -36600i), 4294967295u, 1u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x))))));
    var_0 = -847f;
    var var_2 = Struct_2(Struct_1(global2.a.c < -1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a.b.x)) + _wgslsmith_f_op_f32(-global2.a.d.x)), global2.a.b.x, global2.a.d.x), 1i, vec4<f32>(_wgslsmith_div_f32(539f, _wgslsmith_f_op_f32(1118f + 521f)), global2.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(round(global2.a.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(758f)) - global2.a.d.x))));
    var var_3 = !(global2.a.d.x >= var_2.a.d.x);
    var_0 = global2.a.b.x;
    global0 = global2.a.c;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.d.x - -217f) - global2.a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(56806u, 4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(var_1 >> (var_1 % 32u), 1u), ~(~7601u)), reverseBits(56029u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1409f * 743f)))), reverseBits(_wgslsmith_mult_i32(var_2.a.c, global2.a.c) | (-20261i << (var_1 % 32u))) << (_wgslsmith_div_u32(countOneBits(0u) ^ _wgslsmith_div_u32(var_1, var_1), ~(~var_1)) % 32u));
}

