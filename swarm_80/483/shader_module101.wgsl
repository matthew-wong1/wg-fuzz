struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 6171u, 76106u);

var<private> global1: vec3<bool>;

var<private> global2: vec2<f32> = vec2<f32>(-571f, -343f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = arg_1;
    return 816f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(abs(~firstTrailingBit(vec4<i32>(-2147483647i, 1i, u_input.d.x, 71421i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -5475i, u_input.c.x)), vec4<f32>(-981f, global2.x, global2.x, global2.x), 8705u, u_input.c.yy, Struct_1(vec4<i32>(u_input.d.x, u_input.b.x, u_input.d.x, u_input.d.x))), 9911u)), _wgslsmith_f_op_f32(1487f * global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(-global2.x)), -861f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1493f, global2.x, global2.x) + vec4<f32>(global2.x, -1000f, 748f, -924f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) - vec4<f32>(142f, -395f, global2.x, -237f))))), 4294967295u, u_input.c.xz, Struct_1(vec4<i32>(_wgslsmith_mod_i32(abs(-2147483647i), _wgslsmith_mult_i32(u_input.b.x, 2147483647i)), u_input.b.x, _wgslsmith_mod_i32(abs(-68799i), -u_input.d.x), reverseBits(firstLeadingBit(u_input.d.x)))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x) * _wgslsmith_div_f32(-476f, 1000f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f - var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * var_1.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - 247f))))));
    var var_3 = _wgslsmith_div_f32(-216f, -667f);
    var var_4 = Struct_4(-319f);
    return Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.e.a.x, -6347i, _wgslsmith_dot_vec2_i32(var_0.a.a.yy, var_0.e.a.xx), max(102172i, u_input.d.x)), var_0.a.a, var_0.e.a));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(775f, -1586f, 901f, global2.x) + vec4<f32>(global2.x, global2.x, global2.x, 756f))))), select(~global0.x, u_input.a, true || global1.x), vec2<i32>(-1590i, u_input.c.x), Struct_1(func_2().a));
    var var_1 = vec3<bool>(any(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, global1.x, true), true), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, false)), vec4<bool>(global1.x, true, global1.x, true))), false, true);
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, -787f))) + _wgslsmith_f_op_vec2_f32(select(var_0.b.zz, vec2<f32>(1124f, global2.x), global1.x))))), var_0.b.ww)));
    var var_2 = Struct_3(var_0, var_0, Struct_2(Struct_1(var_0.e.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) * _wgslsmith_f_op_f32(506f * -312f)), _wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(round(-1857f)), _wgslsmith_f_op_f32(func_3(Struct_2(var_0.e, var_0.b, global0.x, vec2<i32>(u_input.d.x, -8964i), Struct_1(vec4<i32>(u_input.b.x, -1i, 2147483647i, -1i))), 59209u))), global0.x | var_0.c, select(~_wgslsmith_mod_vec2_i32(var_0.e.a.zz, var_0.e.a.ww), func_2().a.zy, global1.x), Struct_1(~reverseBits(vec4<i32>(-2147483647i, -2147483647i, -1i, u_input.c.x)))));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-791f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-global2.x));
    let var_1 = func_1();
    let var_2 = vec3<i32>(~(-(~(-33289i))), u_input.c.x, 0i);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) + _wgslsmith_f_op_f32(-504f - -1076f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-173f, 1000f) + vec2<f32>(1061f, 1129f)))), vec2<f32>(-1666f, -1000f)))));
    var var_4 = global0.x;
    var var_5 = min(max(reverseBits(-1i) & (var_2.x & ~0i), ~var_2.x << (global0.x % 32u)), var_2.x);
    var var_6 = 24221u;
    var_0 = var_1;
    var var_7 = ~global0.yy;
    let x = u_input.a;
    s_output = StorageBuffer(3844i, -1435f, var_1.a, 2147483647i, var_7.x);
}

