struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(i32(-2147483648), -35593i, Struct_2(-2000f, vec4<u32>(85389u, 65681u, 4294967295u, 1u), Struct_1(true, 4294967295u, vec4<bool>(true, true, false, false))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    var var_0 = select(vec3<bool>((_wgslsmith_sub_i32(global0.b, 8845i) == u_input.c) & !arg_0.a, true, global0.c.c.a), select(arg_0.c.xxz, arg_0.c.ywx, any(global0.c.c.c)), all(global0.c.c.c.ywy));
    var_0 = !select(select(vec3<bool>(true, all(global0.c.c.c), true), vec3<bool>(false, false, !global0.c.c.c.x), all(global0.c.c.c)), vec3<bool>(!all(vec4<bool>(false, false, false, false)), global0.c.c.c.x || true, !global0.c.c.c.x), !(!select(global0.c.c.c.yxz, vec3<bool>(true, true, true), vec3<bool>(arg_0.a, global0.c.c.a, true))));
    let var_1 = Struct_3(vec4<bool>(false, !var_0.x, true, global0.c.c.c.x));
    var var_2 = true;
    var_0 = !global0.c.c.c.yxx;
    return Struct_4(global0.a << (arg_0.b % 32u), 0i, global0.c);
}

fn func_1(arg_0: u32) -> f32 {
    global0 = func_2(Struct_1(any(!(!global0.c.c.c)), ~u_input.d.x, vec4<bool>(true, !(true | global0.c.c.c.x), false, all(global0.c.c.c.yzx))));
    let var_0 = func_2(func_2(func_2(global0.c.c).c.c).c.c);
    var var_1 = firstTrailingBit(u_input.b);
    var var_2 = true;
    var_1 = -vec4<i32>(-1i, max(_wgslsmith_mod_i32(1i, var_1.x), 1i), firstTrailingBit(var_1.x) ^ -2761i, 0i) << (~var_0.c.b % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(max(var_0.c.a, -2247f));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_3 {
    let var_0 = ~vec4<u32>(~(~1u | func_2(Struct_1(global0.c.c.c.x, 0u, global0.c.c.c)).c.b.x), u_input.d.x, ~u_input.d.x, firstLeadingBit(countOneBits(~6240u)));
    let var_1 = func_2(func_2(global0.c.c).c.c).c.c;
    let var_2 = global0.c;
    let var_3 = select(vec4<bool>(true, true, true, true), var_2.c.c, !vec4<bool>(any(!vec4<bool>(var_1.a, true, arg_1, true)), arg_2 >= var_2.c.b, global0.c.c.c.x, global0.c.c.a));
    let var_4 = _wgslsmith_f_op_f32(global0.c.a * _wgslsmith_f_op_f32(-241f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f * global0.c.a)))));
    return Struct_3(vec4<bool>(any(var_1.c), global0.c.c.a, any(vec2<bool>(true, all(vec4<bool>(global0.c.c.c.x, global0.c.c.a, true, false)))), true == var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1813f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.a + global0.c.a), _wgslsmith_f_op_f32(746f * global0.c.a))), _wgslsmith_f_op_f32(-global0.c.a)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a, global0.c.a, -337f) + vec3<f32>(global0.c.a, global0.c.a, -645f)))))));
    var var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(1668f, 461f), _wgslsmith_f_op_f32(func_1(u_input.a)))))), !global0.c.c.a, 1u);
    var var_2 = global0.c;
    let var_3 = var_0.xx;
    let var_4 = u_input.b.x;
    var var_5 = _wgslsmith_add_i32(0i, -51949i) ^ -(~(~global0.a) & var_4);
    var var_6 = global0.c.c.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, reverseBits(u_input.b.zyz), vec2<f32>(-805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d.x)))), u_input.b);
}

