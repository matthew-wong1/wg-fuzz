struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<f32>(821f, 2269f), vec4<u32>(589u, 0u, 12783u, 53116u), vec2<bool>(false, true)), Struct_1(vec2<f32>(-755f, 1145f), vec4<u32>(26472u, 20858u, 36069u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec2<f32>(289f, -853f), vec4<u32>(0u, 4294967295u, 4294967295u, 13479u), vec2<bool>(true, false)), vec3<i32>(-66068i, 19049i, 25076i), vec4<f32>(-830f, 1000f, 446f, 1607f)), 1548f, vec2<f32>(266f, 1288f));

var<private> global1: vec2<f32> = vec2<f32>(-1162f, -327f);

var<private> global2: u32 = 14696u;

var<private> global3: i32;

var<private> global4: vec4<u32> = vec4<u32>(0u, 87791u, 73109u, 29029u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    global0 = Struct_3(Struct_2(arg_0.b, arg_1.b, global0.a.b, global0.a.d, global0.a.e), _wgslsmith_f_op_f32(-global0.a.b.a.x), _wgslsmith_f_op_vec2_f32(global0.a.a.a - global0.a.a.a));
    var var_0 = any(vec2<bool>(true, global0.a.a.c.x == true));
    var var_1 = arg_1;
    global4 = select(arg_0.b.b, ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.b.x, 0u, arg_1.c.b.x, global4.x), vec4<u32>(112103u, arg_1.b.b.x, arg_0.b.b.x, u_input.b.x)) >> (firstLeadingBit(vec4<u32>(30790u, 47728u, arg_1.c.b.x, 11144u)) % vec4<u32>(32u))), vec4<bool>(_wgslsmith_f_op_f32(-596f - _wgslsmith_f_op_f32(exp2(global1.x))) == _wgslsmith_f_op_f32(exp2(arg_1.b.a.x)), !arg_0.b.c.x, false, false));
    var_0 = global0.a.b.c.x;
    return all(global0.a.c.c);
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<bool>(global0.a.c.c.x, false, !global0.a.c.c.x, all(select(vec2<bool>(func_3(Struct_4(vec2<i32>(2147483647i, -2213i), Struct_1(global0.c, global0.a.c.b, vec2<bool>(false, global0.a.c.c.x))), global0.a), global0.a.d.x >= -41637i), !vec2<bool>(global0.a.a.c.x, global0.a.a.c.x), global0.a.c.c)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(416f * -864f), global1.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.a.x)), global0.a.c.a.x))));
    var var_1 = ~vec3<i32>(_wgslsmith_mult_i32(global0.a.d.x, firstTrailingBit(~(-1i))), -1i, -reverseBits(-1i));
    global4 = vec4<u32>(4294967295u, 0u, min(global0.a.b.b.x, 68710u) << (global4.x % 32u), global0.a.c.b.x);
    var_0 = select(!(!vec4<bool>(var_0.x, !global0.a.a.c.x, true && var_0.x, !global0.a.a.c.x)), vec4<bool>(global0.a.c.c.x, var_0.x, true, select(func_3(Struct_4(vec2<i32>(var_1.x, 0i), global0.a.c), Struct_2(Struct_1(vec2<f32>(2123f, -902f), vec4<u32>(u_input.b.x, 24521u, global0.a.a.b.x, global0.a.b.b.x), vec2<bool>(false, var_0.x)), Struct_1(global0.c, vec4<u32>(21138u, 0u, 1u, u_input.b.x), var_0.ww), Struct_1(vec2<f32>(921f, -744f), vec4<u32>(4294967295u, 4294967295u, global4.x, 15578u), vec2<bool>(false, true)), vec3<i32>(var_1.x, var_1.x, global0.a.d.x), global0.a.e)), true, global0.a.c.b.x == _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, 19303u), u_input.b))), select(vec4<bool>(_wgslsmith_f_op_f32(global0.a.c.a.x - global1.x) <= -1009f, (u_input.a | 7471u) > global4.x, all(vec3<bool>(global0.a.a.c.x, false, false)) && global0.a.a.c.x, true), !(!select(vec4<bool>(global0.a.a.c.x, false, global0.a.a.c.x, false), vec4<bool>(true, true, false, true), global0.a.c.c.x)), !vec4<bool>(global0.a.b.c.x, !global0.a.a.c.x, any(vec2<bool>(var_0.x, false)), 4294967295u >= u_input.b.x)));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(global0.a.b.a)), vec2<f32>(global1.x, global0.b), true && global0.a.a.c.x)), vec4<u32>(~0u, global0.a.c.b.x, ~global4.x, firstTrailingBit(u_input.b.x)), !select(vec2<bool>(var_0.x, global0.a.a.c.x), vec2<bool>(true, var_0.x), false)), Struct_1(vec2<f32>(global1.x, _wgslsmith_f_op_f32(select(600f, global0.b, var_0.x))), abs(firstLeadingBit(vec4<u32>(1u, 0u, u_input.b.x, global0.a.a.b.x))), select(vec2<bool>(true, true), vec2<bool>(var_0.x, global0.a.b.c.x), any(vec4<bool>(true, true, false, true)))), global0.a.c, vec3<i32>(1891i, ~(-global0.a.d.x), global0.a.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.e)))), 1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.c.x, 225f))), vec2<f32>(global1.x, global0.b)))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = global0.a;
    var var_1 = func_2();
    global0 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.e.zwz), vec3<f32>(_wgslsmith_f_op_f32(round(-174f)), -1367f, -1053f), arg_1.yxw)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-func_2().a.e.yyx))))) * var_1.a.e.zzx);
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.c.a.x)))) * global0.b), global0.a.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_1.a.c.a.x))) + -1898f)) + func_2().a.e.wyy);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.a))), max(vec4<u32>(u_input.a, ~global0.a.c.b.x, var_1.a.a.b.x, ~global4.x), ~vec4<u32>(global0.a.b.b.x, var_1.a.c.b.x, 0u, 1u) ^ var_1.a.c.b) << (func_2().a.c.b % vec4<u32>(32u)), func_2().a.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(26854i, !(!select(!vec4<bool>(true, true, global0.a.a.c.x, true), vec4<bool>(global0.a.c.c.x, global0.a.b.c.x, global0.a.b.c.x, false), !vec4<bool>(global0.a.a.c.x, global0.a.b.c.x, true, false))));
    var var_1 = ~(~(~(9685u | global4.x) << (53098u % 32u)));
    let var_2 = -global0.a.d.x;
    var var_3 = var_0;
    var var_4 = func_2();
    global2 = countOneBits(~_wgslsmith_dot_vec4_u32(~var_3.b, var_4.a.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.d.x, vec4<u32>(~global4.x, func_1(firstTrailingBit(-53748i), select(vec4<bool>(var_4.a.c.c.x, var_3.c.x, false, var_4.a.a.c.x), !vec4<bool>(global0.a.a.c.x, global0.a.a.c.x, var_3.c.x, true), select(vec4<bool>(true, var_0.c.x, var_0.c.x, var_3.c.x), vec4<bool>(var_0.c.x, var_3.c.x, true, false), false))).b.x, abs(1u), _wgslsmith_dot_vec4_u32(reverseBits(var_0.b), vec4<u32>(~27244u, ~global0.a.c.b.x, ~64673u, _wgslsmith_add_u32(var_0.b.x, 76145u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))), -1173f);
}

