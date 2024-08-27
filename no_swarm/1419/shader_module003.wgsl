struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a.a * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(global1.a.a))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.a.a, global1.a.a, all(vec4<bool>(global1.b, true, true, true)))), _wgslsmith_f_op_vec4_f32(global1.a.a * _wgslsmith_f_op_vec4_f32(-global1.a.a)))), global0.x, firstLeadingBit(_wgslsmith_mod_vec3_i32(-vec3<i32>(global1.a.b, 2147483647i, -2147483647i), select(u_input.a.zzx, global1.a.c, true)) | (_wgslsmith_mod_vec3_i32(u_input.a.zyw, u_input.a.zxx) << (vec3<u32>(global1.d.x, 17205u, 4294967295u) % vec3<u32>(32u)))), global1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1155f))));
    var var_1 = _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, global1.d.x)), (select(reverseBits(vec2<u32>(1u, 0u)), vec2<u32>(20702u, 73747u), true) >> (_wgslsmith_mult_vec2_u32(~global1.d.yy, ~global1.d.wy) % vec2<u32>(32u))) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(85405u, global1.d.x), global1.d.zy) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.e, var_0.d, global1.c, 797f))) * vec4<f32>(global1.a.e, -1000f, global1.c, 1000f)) - vec4<f32>(_wgslsmith_f_op_f32(var_0.d + 610f), -586f, -313f, var_0.d)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-454f, _wgslsmith_f_op_f32(step(441f, -1066f)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + 1282f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a.a) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(304f, global1.c, var_0.e, var_0.a.x), vec4<f32>(-598f, var_0.e, -268f, global1.c), global1.b))) * var_0.a))));
    global0 = vec2<i32>(abs(global1.a.c.x), global1.a.c.x);
    var_1 = global1.d.x;
    return ~min(u_input.a.xzx, u_input.a.wzw);
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = Struct_2(global1.a, true, -624f, firstLeadingBit(min(min(abs(vec4<u32>(global1.d.x, 1u, 51378u, global1.d.x)), vec4<u32>(global1.d.x, global1.d.x, 0u, global1.d.x) & vec4<u32>(60290u, global1.d.x, global1.d.x, global1.d.x)), vec4<u32>(_wgslsmith_mod_u32(global1.d.x, global1.d.x), 1u, 4294967295u, global1.d.x))));
    var var_0 = false;
    var var_1 = Struct_3(global1.d.xw, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 825f, 412f, global1.c))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, 2147483647i, u_input.a.x), u_input.a, vec4<i32>(u_input.a.x, global0.x, global1.a.c.x, global0.x)), u_input.a), -func_3(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * 109f), _wgslsmith_div_f32(arg_0, arg_0))), arg_0), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, -2181f)) - _wgslsmith_f_op_f32(-1158f - -107f)) + 946f), firstTrailingBit(~global1.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 100f, global1.c) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1941f, global1.a.d, global1.a.d, global1.c) * vec4<f32>(1070f, arg_0, -239f, -549f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global1.c, global1.c, 697f) * vec4<f32>(arg_0, 685f, global1.a.e, global1.a.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, -2086f, -375f, global1.c))))), global1.a);
    var var_2 = select(~max(0u, 44544u) & select(abs(_wgslsmith_add_u32(var_1.b.d.x, 1277u)), var_1.b.d.x, false), _wgslsmith_dot_vec2_u32(~firstTrailingBit(var_1.a >> (vec2<u32>(global1.d.x, global1.d.x) % vec2<u32>(32u))), vec2<u32>(global1.d.x, global1.d.x) | _wgslsmith_mult_vec2_u32(vec2<u32>(10951u, var_1.b.d.x) << (global1.d.yx % vec2<u32>(32u)), vec2<u32>(27575u, 4294967295u))), false);
    let var_3 = _wgslsmith_f_op_vec4_f32(global1.a.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(global1.a.a)), _wgslsmith_f_op_vec4_f32(exp2(global1.a.a)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, var_1.c.x, -1517f, 653f), vec4<f32>(-1000f, -1534f, -409f, global1.c))), var_1.c)))));
    return var_1.b;
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    let var_1 = select(select(select(!(!vec3<bool>(false, true, global1.b)), !(!vec3<bool>(global1.b, false, global1.b)), vec3<bool>(true, true, global1.b | global1.b)), select(vec3<bool>(all(vec2<bool>(global1.b, global1.b)), true, global1.b), vec3<bool>(false, all(vec2<bool>(true, false)), true), 2147483647i < -u_input.a.x), !(!(!vec3<bool>(false, global1.b, false)))), !vec3<bool>(global1.b, all(!vec3<bool>(false, global1.b, true)), global1.b && any(vec2<bool>(global1.b, false))), any(select(vec3<bool>(all(vec3<bool>(global1.b, global1.b, global1.b)), true, u_input.a.x > 2147483647i), select(select(vec3<bool>(global1.b, false, false), vec3<bool>(global1.b, global1.b, global1.b), false), vec3<bool>(false, global1.b, true), select(global1.b, global1.b, global1.b)), global1.b)));
    var var_2 = global0.x;
    let var_3 = u_input.a.xyy;
    global1 = func_2(_wgslsmith_f_op_f32(-global1.a.a.x));
    return Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.e + global1.a.d) * _wgslsmith_f_op_f32(1691f - -279f)), _wgslsmith_f_op_f32(abs(global1.c)), -150f, -1000f), -2445i, firstTrailingBit(~vec3<i32>(global0.x, 2147483647i, 1i) & var_3), 728f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1.a.d)), 1000f))), var_1.x | true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) + -139f), vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(global1.d.ww, vec2<u32>(global1.d.x, 0u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(global1.d.x, global1.d.x), global1.d.yy)), max(max(global1.d.x, global1.d.x) & ~0u, ~countOneBits(0u)), 1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(~global1.d.x, ~4294967295u), global1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    global0 = _wgslsmith_div_vec2_i32(-global1.a.c.zx, global1.a.c.yy);
    var var_1 = func_1();
    var var_2 = global1.a;
    var var_3 = func_1().a;
    var_1 = Struct_2(func_2(_wgslsmith_div_f32(var_3.d, global1.a.e)).a, false, var_2.d, (global1.d | global1.d) << (~var_1.d % vec4<u32>(32u)));
    global0 = (vec2<i32>(-func_3().x, var_3.c.x) << ((max(select(vec2<u32>(34451u, 53180u), vec2<u32>(var_1.d.x, 17284u), false), vec2<u32>(var_1.d.x, 37902u)) << (global1.d.xz % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_mult_u32(var_1.d.x & min(1u, global1.d.x), ~_wgslsmith_sub_u32(var_1.d.x, global1.d.x)), ~(~global1.d.x)) % vec2<u32>(32u));
    var var_4 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(-252f, var_1.d.x);
}

