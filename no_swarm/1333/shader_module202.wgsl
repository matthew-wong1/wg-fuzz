struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> f32 {
    return arg_0.a;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(1474f * _wgslsmith_f_op_f32(475f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.b.a, _wgslsmith_f_op_f32(687f - global3.b.a))), 642f)));
    let var_1 = ~(-vec3<i32>(countOneBits(max(arg_0.a, 0i)), 1i, -u_input.b.x));
    var var_2 = vec3<i32>(1i, ~1i, arg_0.a);
    global0 = vec3<i32>(arg_0.a, 2422i, i32(-1i) * -12150i);
    global1 = Struct_1(global1.a, true);
    return Struct_3(~u_input.c, Struct_2(_wgslsmith_f_op_f32(func_3(Struct_2(-565f, Struct_1(0i, false), Struct_1(-2147483647i, global1.b)), _wgslsmith_f_op_f32(-global3.b.a), true || global3.b.b.b)), Struct_1(-1362i, firstTrailingBit(u_input.c) >= _wgslsmith_sub_u32(37716u, 1u)), Struct_1(min(1i, var_2.x) << (_wgslsmith_mod_u32(60365u, 1u) % 32u), arg_0.b)), global1.b, global3.d, Struct_1(var_1.x, _wgslsmith_div_u32(u_input.c, 1u) == _wgslsmith_div_u32(abs(33729u), 6564u)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> StorageBuffer {
    let var_0 = !vec2<bool>(true, !(!global3.b.b.b && true));
    global3 = arg_0;
    global3 = func_2(Struct_1(global1.a, !(!arg_0.e.b) | true));
    let var_1 = -func_2(func_2(func_2(arg_0.b.c).b.b).e).e.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a + global3.b.a) - -1447f), global3.b.a)));
    return StorageBuffer(firstLeadingBit(-274i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_3(~_wgslsmith_mult_u32(~26665u, global3.a), global3.b, global1.b & true, ~(~(~4294967295u)), Struct_1(~(-11182i), true)), u_input.a.x, max(~(~firstLeadingBit(vec4<u32>(global3.a, 0u, global3.a, 0u))), abs(min(~vec4<u32>(4294967295u, 4294967295u, global3.a, u_input.c), ~vec4<u32>(global3.d, global3.a, global3.d, 1u)))));
}

