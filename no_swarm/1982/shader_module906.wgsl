struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<f32>(-402f, 821f), vec3<bool>(false, true, true)), Struct_1(vec2<f32>(-501f, -1512f), vec3<bool>(true, true, true)), 2772f, Struct_1(vec2<f32>(554f, 104f), vec3<bool>(true, false, true)));

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<f32>(-1155f, 614f), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(1115f, -1230f), vec3<bool>(true, false, true)), -1136f, Struct_1(vec2<f32>(-1554f, 1191f), vec3<bool>(true, false, false)));

var<private> global3: vec3<u32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    global3 = abs(~(vec3<u32>(global3.x, global3.x, 1u) ^ ~vec3<u32>(global3.x, 0u, global3.x))) | vec3<u32>(_wgslsmith_clamp_u32(4294967295u, global3.x, ~4263u), ~abs(global3.x), ~global3.x);
    let var_0 = ~countOneBits(62648i);
    var var_1 = Struct_3(global3.yx, _wgslsmith_f_op_f32(max(arg_1.d, global2.b.a.x)));
    var_1 = Struct_3(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(global3.zy, _wgslsmith_mod_vec2_u32(~var_1.a, global3.yx)), firstLeadingBit(abs(firstLeadingBit(vec2<u32>(global3.x, global3.x))))), _wgslsmith_f_op_f32(trunc(global2.b.a.x)));
    let var_2 = u_input.a.yx;
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.a.x, 1u), ~global3.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a.x))))));
    let var_1 = Struct_3(vec2<u32>(arg_1, global3.x ^ max(func_3(1107f, Struct_2(global2.b.b, Struct_1(global1.e.a, global2.a), Struct_1(global2.e.a, vec3<bool>(global1.e.b.x, global1.a.x, true)), 219f, Struct_1(vec2<f32>(-1000f, -1236f), vec3<bool>(false, global1.b.b.x, global2.b.b.x)))), ~arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a.x)), global1.b.a.x)));
    let var_2 = arg_0;
    global0 = !all(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, global2.a.x, true, false)), !select(vec4<bool>(true, false, global2.c.b.x, global1.b.b.x), vec4<bool>(false, false, false, global2.a.x), vec4<bool>(true, global2.b.b.x, global2.a.x, global2.c.b.x))));
    global2 = Struct_2(vec3<bool>(true, true, true), Struct_1(global2.b.a, vec3<bool>(true, global2.d == _wgslsmith_f_op_f32(round(global2.d)), true)), Struct_1(_wgslsmith_f_op_vec2_f32(select(var_2, vec2<f32>(_wgslsmith_div_f32(348f, 349f), -1166f), !(global2.c.b.x & global1.b.b.x))), !vec3<bool>(true, all(global2.e.b.zx), !global1.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b.a.x))), global1.b);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = global2.c.b;
    global0 = false;
    global1 = Struct_2(global1.c.b, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, 1269f)), _wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(1456f, 579f), ~1u, global3.yy))), vec3<bool>(any(var_0.zz), any(select(arg_2.b, vec3<bool>(false, global2.e.b.x, true), global2.e.b)), true)), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.a.x, -1581f)))), select(vec3<bool>(!global2.b.b.x, true, all(vec4<bool>(arg_2.b.x, false, global1.a.x, global1.e.b.x))), vec3<bool>(any(vec2<bool>(arg_2.b.x, global1.a.x)), select(false, arg_3.x, false), !var_0.x), vec3<bool>(!global1.a.x, arg_3.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.a.x, _wgslsmith_f_op_f32(1000f - global1.d)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1141f), global1.b.a.x, global1.e.a.x >= global2.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(789f)) * _wgslsmith_f_op_f32(select(218f, _wgslsmith_f_op_f32(trunc(-455f)), select(var_0.x, true, arg_3.x))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.a.x)), -155f), select(select(vec3<bool>(arg_2.b.x, arg_3.x, true), vec3<bool>(true, true, true), !vec3<bool>(var_0.x, false, global1.a.x)), !select(global1.b.b, arg_2.b, var_0.x), vec3<bool>(var_0.x, true, true))));
    global1 = Struct_2(global2.b.b, Struct_1(_wgslsmith_f_op_vec2_f32(max(arg_2.a, _wgslsmith_f_op_vec2_f32(global2.b.a + arg_2.a))), vec3<bool>(true, true, global1.b.b.x)), global1.c, global2.e.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c.a.x, -395f), arg_2.a, vec2<bool>(true, global1.e.b.x))) * vec2<f32>(arg_2.a.x, global2.e.a.x))), global2.e.b));
    var var_1 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, _wgslsmith_div_u32(global3.x, global3.x), ~global3.x) >> (vec3<u32>(_wgslsmith_div_u32(19962u, global3.x), ~35141u, firstLeadingBit(global3.x)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(global3.x, global3.x, global3.x) ^ select(vec3<u32>(global3.x, 70620u, 14091u), vec3<u32>(global3.x, global3.x, global3.x), true)), ~vec3<u32>(global3.x, global3.x | global3.x, 1u)));
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-400f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-422f, 906f) + _wgslsmith_f_op_f32(abs(-429f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.c.a, vec2<f32>(arg_2.a.x, arg_2.a.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(714f, 1000f))), _wgslsmith_f_op_vec2_f32(min(global1.c.a, _wgslsmith_f_op_vec2_f32(func_2(global1.c.a, 4294967295u, vec2<u32>(global3.x, global3.x))))), false))), !select(arg_2.b, arg_2.b, global1.e.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(-(u_input.a >> (~vec4<u32>(global3.x, 1u, global3.x, 19199u) % vec4<u32>(32u))), u_input.a);
    global1 = Struct_2(global1.e.b, func_1(firstTrailingBit(-abs(20135i)), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, var_0.x, -57567i)), u_input.a ^ u_input.a), u_input.a.x), Struct_1(global2.e.a, !select(global1.a, vec3<bool>(true, global1.c.b.x, true), vec3<bool>(global1.a.x, global1.b.b.x, global2.e.b.x))), global2.e.b.xz), func_1(1i, select(var_0.wz, abs(u_input.a.yy), !(u_input.a.x >= var_0.x)), global2.c, !func_1(578i, u_input.a.xw | var_0.yx, func_1(var_0.x, u_input.a.xw, global1.b, vec2<bool>(global1.e.b.x, global1.a.x)), global1.b.b.xy).b.xx), global2.d, global1.e);
    global1 = Struct_2(select(vec3<bool>(any(select(vec3<bool>(global1.c.b.x, global1.a.x, global2.a.x), vec3<bool>(true, false, global2.e.b.x), global1.a.x)), true, true), select(global1.e.b, vec3<bool>(true, true, true), true | all(global2.a.xz)), true), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.c.a.x - global1.e.a.x), _wgslsmith_f_op_f32(max(global2.e.a.x, global1.c.a.x)), u_input.a.x >= var_0.x)), _wgslsmith_f_op_f32(global1.c.a.x + _wgslsmith_f_op_f32(-global1.e.a.x))), select(global2.b.b, select(vec3<bool>(false, global1.a.x, global1.e.b.x), select(global1.a, vec3<bool>(global2.e.b.x, global2.c.b.x, false), vec3<bool>(global1.a.x, global1.b.b.x, global2.c.b.x)), select(global1.c.b, global1.a, global2.b.b.x)), !select(vec3<bool>(global1.e.b.x, false, global1.b.b.x), vec3<bool>(false, global2.a.x, true), global1.c.b.x))), global1.b, -771f, Struct_1(_wgslsmith_div_vec2_f32(global1.b.a, vec2<f32>(_wgslsmith_f_op_f32(global1.d + 284f), 396f)), vec3<bool>(!global2.a.x, any(!global2.b.b.xx), global1.e.b.x || any(vec4<bool>(true, global2.a.x, global2.c.b.x, global2.a.x)))));
    var var_1 = _wgslsmith_f_op_f32(964f - global2.c.a.x);
    var var_2 = global1.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(global3.zx);
}

