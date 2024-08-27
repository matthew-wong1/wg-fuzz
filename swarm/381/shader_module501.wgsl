struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
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

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-2425f, vec4<f32>(-937f, -1000f, -1000f, 2003f)), Struct_1(744f, vec4<f32>(-408f, -769f, -527f, -723f)), Struct_1(-356f, vec4<f32>(1574f, -1000f, 1000f, 674f)), Struct_1(1041f, vec4<f32>(-328f, -1000f, -1585f, 1922f)));

var<private> global1: Struct_3;

var<private> global2: vec4<bool>;

var<private> global3: f32;

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<u32>) -> f32 {
    global1 = Struct_3(global1.a);
    global4 = array<Struct_1, 12>();
    let var_0 = vec2<bool>(true, !global2.x);
    var var_1 = global2.zw;
    var_1 = select(vec2<bool>(!all(global2.yww) & !(arg_2.x != arg_2.x), var_0.x), !var_0, !(_wgslsmith_mult_u32(arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_2.x), arg_0.xw)) <= ~4294967295u));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)));
}

fn func_2() -> Struct_3 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec4<u32>(37985u, 51383u, 0u, 10113u), Struct_2(1417f, global1.a), vec4<u32>(94300u, 37180u, 4294967295u, 0u), vec3<u32>(42457u, 4294967295u, 47222u)))))))));
    return Struct_3(global1.a);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_3 {
    global1 = func_2();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1179f)))) - _wgslsmith_f_op_f32(f32(-1f) * -512f)), func_2().a);
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, 6370i, 0i & arg_1.x), ~vec3<i32>(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, arg_1.x), u_input.b.x), 1i));
    let var_2 = func_2().a;
    let var_3 = true;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(Struct_1(global1.a.b.x, vec4<f32>(_wgslsmith_f_op_f32(select(global1.a.b.x, 2069f, true)), _wgslsmith_div_f32(-1000f, 2230f), _wgslsmith_f_op_f32(-global1.a.b.x), -734f))), u_input.a ^ -vec2<i32>(min(u_input.b.x, -9650i), min(u_input.b.x, u_input.b.x)), vec2<bool>(true, global2.x), !select(select(global2.wy, !vec2<bool>(global2.x, false), global2.xx), !(!global2.yy), global2.x));
    global4 = array<Struct_1, 12>();
    global1 = func_2();
    global2 = select(!select(!(!vec4<bool>(global2.x, global2.x, global2.x, false)), !(!vec4<bool>(global2.x, global2.x, global2.x, true)), !(!vec4<bool>(global2.x, false, global2.x, global2.x))), vec4<bool>(all(!select(vec2<bool>(true, global2.x), global2.yw, global2.yx)), _wgslsmith_dot_vec2_u32(~vec2<u32>(43293u, 10829u), ~vec2<u32>(48003u, 0u)) < abs(_wgslsmith_add_u32(36757u, 0u)), 0i != _wgslsmith_clamp_i32(-29049i, 0i, 2147483647i), true), any(select(vec4<bool>(all(vec3<bool>(global2.x, global2.x, true)), any(vec2<bool>(false, global2.x)), global2.x, global2.x), vec4<bool>(-208f < var_0.a.b.x, !global2.x, all(vec2<bool>(global2.x, true)), any(vec4<bool>(global2.x, true, global2.x, global2.x))), true)));
    global2 = vec4<bool>(all(vec3<bool>(~4294967295u <= _wgslsmith_clamp_u32(0u, 134233u, 0u), global2.x, global2.x)), any(!global2.zww) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1969f * 429f))), false, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1009f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.a), 1032f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(305f, func_1(var_0, vec2<i32>(-1i, u_input.b.x), global2.xy, vec2<bool>(global2.x, global2.x)).a.b.x, true))))), _wgslsmith_f_op_vec4_f32(global1.a.b - _wgslsmith_f_op_vec4_f32(global1.a.b + global1.a.b)));
    let var_2 = Struct_5(~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(41794u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(18660u, 6527u, 39544u, 23410u), ~vec4<u32>(0u, 82084u, 22948u, 4294967295u))), 2147483647i, max(firstTrailingBit(4294967295u), reverseBits(max(~56430u, 1u))), -u_input.b.x, vec4<bool>(global2.x, (-596f == _wgslsmith_div_f32(var_1.b.x, -1114f)) && !global2.x, 7200u <= reverseBits(firstTrailingBit(32662u)), any(!vec3<bool>(global2.x, false, false))));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, var_2.d), vec2<i32>(var_2.b, var_2.b)) | _wgslsmith_div_vec2_i32(vec2<i32>(var_2.d, u_input.b.x), u_input.b), u_input.b << (var_2.a % vec2<u32>(32u))));
}

