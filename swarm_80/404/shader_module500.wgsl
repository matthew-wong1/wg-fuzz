struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(Struct_1(-482f, vec2<i32>(-50473i, i32(-2147483648))), Struct_1(-551f, vec2<i32>(-7804i, 62064i)), vec2<u32>(45028u, 4294967295u), Struct_1(-1000f, vec2<i32>(-41488i, -34776i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    global1 = arg_0.x;
    var var_0 = ~vec4<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(max(global2.c, global2.c), _wgslsmith_div_vec2_u32(global2.c, u_input.a.zz)), ~global2.c.x, ~(~u_input.e));
    global1 = true;
    var var_1 = _wgslsmith_mod_u32(var_0.x | global2.c.x, 0u);
    let var_2 = global2.d.b;
    return vec3<i32>(-75805i, -(~(-10876i)), var_2.x);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = 610f;
    global0 = any(select(select(vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, select(true, true, false), any(vec3<bool>(true, false, false)), 934f >= arg_1.d.a), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(select(true, true, true), true, true, !(arg_3.x != -1i))));
    global2 = Struct_2(Struct_1(arg_0, arg_3.yy >> (~(~arg_1.c) % vec2<u32>(32u))), Struct_1(236f, vec2<i32>(firstTrailingBit(0i), arg_1.d.b.x) >> (~(global2.c & global2.c) % vec2<u32>(32u))), vec2<u32>(0u, (4294967295u >> (~4294967295u % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(31881u, 1u), u_input.a.xx)), global2.d);
    let var_1 = _wgslsmith_sub_u32(min(~(~(u_input.d.x ^ u_input.e)), abs(arg_1.c.x)), abs(~global2.c.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.a)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(469f, -292f))) - arg_0))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.d.a, -1646f)) * -602f), _wgslsmith_f_op_f32(global2.d.a + arg_0)), _wgslsmith_f_op_f32(arg_0 - 583f), arg_1.a.a, _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_div_f32(arg_0, 301f), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(global2.a.a + global2.a.a)))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_2 {
    global2 = Struct_2(Struct_1(-640f, ~(max(vec2<i32>(arg_0, u_input.b), vec2<i32>(arg_2, global2.d.b.x)) ^ (vec2<i32>(-36582i, arg_0) & vec2<i32>(-8395i, arg_0)))), global2.a, u_input.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), ~(-firstLeadingBit(vec2<i32>(48807i, -27806i)))));
    let var_0 = Struct_2(global2.d, global2.d, ~global2.c, global2.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -780f), var_0, arg_2, func_3(vec3<bool>(true, false, true)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-1i, global2.a.b.x, var_0.a.b.x), vec3<i32>(2147483647i, global2.b.b.x, arg_2)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-883f, arg_1, 2433f, -338f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, 1000f, 1000f, arg_1) * vec4<f32>(var_0.a.a, global2.d.a, var_0.b.a, 987f)))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), arg_1 < var_0.a.a)))), _wgslsmith_div_vec4_f32(vec4<f32>(-547f, arg_1, 170f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-610f - -1601f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(916f, var_0.d.a, var_0.d.a, -1136f), vec4<f32>(1421f, -183f, arg_1, var_0.d.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2313f, arg_1, 662f, var_0.b.a) - vec4<f32>(global2.d.a, -404f, 1489f, -428f)))))));
    var var_2 = !(true & all(vec3<bool>(true, var_0.b.a != 640f, true)));
    global0 = any(select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), true), vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), true)));
    return Struct_2(global2.b, Struct_1(-744f, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_2, arg_2), _wgslsmith_mult_i32(arg_0, global2.b.b.x)), global2.d.b.x)), vec2<u32>(55144u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c.x, 69076u), vec3<u32>(global2.c.x, u_input.a.x, u_input.c.x)) % 32u), var_0.c.x), var_0.b);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>) -> bool {
    let var_0 = global2.a;
    var var_1 = -1i;
    global2 = func_2(-34715i, global2.b.a, abs(_wgslsmith_mod_i32(~global2.a.b.x, ~1i)));
    let var_2 = global2.b;
    let var_3 = arg_1.zzz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.a)))))) >= _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(countOneBits(global2.d.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.b.x, global2.a.b.x, -8658i), vec3<i32>(-1i, 5206i, u_input.b)) << ((0u << (u_input.e % 32u)) % 32u), -u_input.b);
    let var_1 = 4294967295u;
    global1 = all(!vec2<bool>(func_1(vec4<i32>(-2147483647i, -21959i, global2.d.b.x, -34745i), vec4<f32>(global2.a.a, 203f, global2.a.a, -1000f)), true)) | true;
    let var_2 = any(select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, any(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), false), vec4<bool>(true, true, true, true))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-365f)), global2.d.a))), -939f);
    let var_4 = vec3<u32>(u_input.d.x, global2.c.x, ~abs(abs(u_input.a.x))) & firstTrailingBit(countOneBits(~vec3<u32>(0u, global2.c.x, 34835u)));
    var var_5 = select(vec4<u32>(var_1, u_input.a.x, reverseBits(~global2.c.x), min(~(~var_1), 1u >> (max(37112u, u_input.e) % 32u))), u_input.a, select(select(select(select(vec4<bool>(false, true, var_2, var_2), vec4<bool>(false, var_2, true, false), vec4<bool>(var_2, false, var_2, var_2)), !vec4<bool>(var_2, true, true, var_2), !var_2), !(!vec4<bool>(var_2, false, false, false)), !select(vec4<bool>(false, true, true, var_2), vec4<bool>(true, var_2, var_2, var_2), false)), select(select(vec4<bool>(var_2, true, false, var_2), select(vec4<bool>(true, var_2, var_2, false), vec4<bool>(var_2, false, true, var_2), vec4<bool>(false, var_2, var_2, var_2)), select(vec4<bool>(var_2, var_2, false, false), vec4<bool>(false, var_2, false, true), var_2)), select(vec4<bool>(true, false, var_2, false), select(vec4<bool>(true, false, true, var_2), vec4<bool>(true, var_2, var_2, true), vec4<bool>(true, var_2, false, true)), true), vec4<bool>(false, false, !var_2, var_2)), select(!(!vec4<bool>(true, var_2, var_2, var_2)), vec4<bool>(true, false == var_2, true, select(var_2, true, true)), var_2)));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(func_2(30662i, _wgslsmith_f_op_f32(min(-1262f, 1572f)), -global2.b.b.x).d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1737f), 2147483647i).a.a));
    var var_7 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i & firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -29507i), var_7.b)), min(1i, 2147483647i)), reverseBits(var_5.x), global2.d.b.x ^ _wgslsmith_add_i32(43264i, firstLeadingBit(var_7.b.x)));
}

