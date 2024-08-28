struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(1764f, -509f, 880f), -24504i, false, vec3<bool>(false, true, true)), vec3<u32>(0u, 12828u, 1u), vec4<f32>(198f, -461f, 156f, 865f), Struct_1(vec3<f32>(-1250f, 2062f, -1874f), 1i, false, vec3<bool>(false, true, false)), vec4<bool>(false, false, true, false));

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global3: i32 = 1i;

var<private> global4: array<vec2<u32>, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> u32 {
    var var_0 = arg_0;
    let var_1 = var_0.b;
    global1 = arg_1.a;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x - arg_1.d), _wgslsmith_f_op_f32(step(-454f, global1.c.x)))), _wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(sign(arg_1.d)))))), true, 1i);
    let var_3 = var_0.d.x;
    return 24612u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_5(Struct_4(Struct_2(Struct_1(vec3<f32>(global1.a.a.x, global1.a.a.x, global1.c.x), -u_input.a, global1.d.d.x == global1.d.d.x, !vec3<bool>(false, global2.x, global2.x)), vec3<u32>(~global1.b.x, 22759u, global1.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2051f, global1.a.a.x, global0.x, -902f), global1.c)), global1.d, select(select(vec4<bool>(true, global1.a.c, false, true), global1.e, vec4<bool>(global1.d.d.x, global1.d.c, global2.x, true)), vec4<bool>(global2.x, true, global2.x, global2.x), select(global1.e, vec4<bool>(global2.x, true, true, true), global1.a.d.x))), !global2.x, 1534f, global0.x, reverseBits(0u)));
    var var_1 = !global1.e.x;
    var var_2 = 11350u & (select(~0u, 4294967295u, !(u_input.a <= u_input.a)) ^ 0u);
    var var_3 = ~vec4<u32>(_wgslsmith_sub_u32(var_0.a.a.b.x, 5227u ^ var_0.a.e), 24286u, _wgslsmith_mod_u32(var_0.a.e, var_0.a.e) & reverseBits(0u), ~abs(32603u)) & vec4<u32>(4294967295u, _wgslsmith_div_u32(var_0.a.a.b.x >> (countOneBits(0u) % 32u), 100722u), 109077u, func_3(global1.d, Struct_4(var_0.a.a, global1.a.c, _wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(round(global1.c.x)), ~global1.b.x), true));
    global2 = vec4<bool>(all(vec4<bool>(!any(vec3<bool>(true, false, var_0.a.b)), !(var_0.a.d <= var_0.a.c), global2.x, ~global1.b.x <= firstTrailingBit(var_0.a.a.b.x))), _wgslsmith_sub_i32(i32(-1i) * -var_0.a.a.d.b, 1i) <= global1.a.b, all(vec4<bool>(all(global1.a.d), (var_0.a.b & global1.a.d.x) & true, all(vec4<bool>(global2.x, false, true, global2.x)) | any(global1.e.yy), true)), true);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x), var_0.a.a.a.a.x, var_0.a.c), -2147483647i, select(-u_input.a ^ ~(-9525i), global1.a.b, any(global2.zx)) > _wgslsmith_mod_i32(~_wgslsmith_sub_i32(6700i, u_input.a), _wgslsmith_mod_i32(i32(-1i) * -28879i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.b, 0i, global1.d.b, u_input.a), vec4<i32>(u_input.a, 33514i, u_input.a, -2147483647i)))), select(vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(var_0.a.a.a.c, false)), global1.d.d.x, false), false));
}

fn func_1(arg_0: Struct_1) -> Struct_5 {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 1752f, global1.c.x))) * _wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(778f, 1000f, 336f))))), global1.d.b, !arg_0.c, !select(vec3<bool>(false, global2.x, arg_0.d.x), !vec3<bool>(false, global2.x, global2.x), global1.a.d)), global1.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_0.a.x, arg_0.a.x, arg_0.a.x) - vec4<f32>(arg_0.a.x, arg_0.a.x, global0.x, -1209f)), vec4<f32>(-210f, global0.x, global1.a.a.x, -1000f))))))), func_2(), vec4<bool>(all(arg_0.d.xy), global1.b.x == 166589u, !global2.x, !select(all(global1.e.zy), any(vec3<bool>(global1.e.x, arg_0.d.x, true)), global2.x)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.a.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1039f), global0.x, true))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global1.d.a.x)));
    var var_0 = Struct_5(Struct_4(Struct_2(func_2(), ~_wgslsmith_mult_vec3_u32(global1.b, vec3<u32>(global1.b.x, global1.b.x, 18169u)), global1.c, func_2(), global1.e), (!global2.x & true) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f - _wgslsmith_f_op_f32(round(arg_0.a.x)))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global1.b, global1.b), _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(5995u, 22u)], vec2<u32>(global1.b.x, 10560u)), 61314u), global1.b)));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -1564f) + arg_0.a.xx);
    var_0 = Struct_5(Struct_4(var_0.a.a, !var_0.a.a.e.x, -239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-global0.x)) + global0.x), func_3(Struct_1(var_0.a.a.d.a, -2147483647i, true, vec3<bool>(global2.x, var_0.a.a.a.d.x, var_0.a.a.d.c)), Struct_4(Struct_2(arg_0, global1.b, global1.c, Struct_1(var_0.a.a.c.zzw, 38127i, arg_0.d.x, global1.e.wxw), global1.e), var_0.a.e <= var_0.a.a.b.x, _wgslsmith_f_op_f32(floor(493f)), global0.x, ~1u), global2.x)));
    return Struct_5(var_0.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = vec2<i32>(firstTrailingBit(min(arg_3.b, u_input.a)), 0i);
    var var_1 = Struct_4(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a.a.d.a)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, global0.x, arg_3.a.x), vec3<f32>(arg_2.a.x, global1.a.a.x, arg_0.x)))), u_input.a, !global1.a.c, global2.wzy)).a.a, true, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-775f + _wgslsmith_f_op_f32(-arg_2.a.x)), arg_1.a.a.b.x);
    global2 = !vec4<bool>(true, true, (_wgslsmith_mod_u32(arg_1.a.e, global1.b.x) != arg_1.a.a.b.x) || global2.x, false);
    global1 = arg_1.a.a;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.d.a.xz + vec2<f32>(arg_3.a.x, -314f))), _wgslsmith_f_op_vec2_f32(arg_1.a.a.c.xy * _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.a.d.a.yy))), any(func_1(Struct_1(vec3<f32>(-1000f, -840f, global1.c.x), arg_1.a.a.d.b, true, vec3<bool>(false, arg_2.b, var_1.b))).a.a.a.d)))), var_1.a.a.c, arg_3.b);
    return arg_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.e;
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(2082f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1841f, global1.c.x)))), _wgslsmith_f_op_f32(-global1.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(global1.a.a + global1.d.a), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-global1.d.a), global1.a.b << (global1.b.x % 32u), any(global1.e), global1.a.d)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -763f), _wgslsmith_f_op_f32(global1.d.a.x + var_0.x)), global2.x, ~1i), global1.a)), 212f);
    global1 = func_1(global1.a).a.a;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(step(-104f, -929f)), func_1(global1.d).a.a.a.d.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(-1159f * global1.d.a.x), true))))), global1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~35672i);
}

