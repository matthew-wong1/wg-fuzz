struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(1i, true, Struct_1(false, 141f));

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(-61925i, true, Struct_1(true, -742f)), Struct_2(1i, false, Struct_1(true, -810f)), Struct_2(i32(-2147483648), false, Struct_1(false, 585f)), Struct_2(-2127i, true, Struct_1(true, -685f)), Struct_2(12942i, true, Struct_1(true, -247f)), Struct_2(i32(-2147483648), true, Struct_1(true, 105f)), Struct_2(-29592i, true, Struct_1(false, 182f)));

var<private> global4: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(1i, true, Struct_1(true, -956f)), Struct_2(1121i, false, Struct_1(true, -1553f)), Struct_2(-25724i, true, Struct_1(false, 147f)), Struct_2(-9803i, false, Struct_1(false, 1000f)), Struct_2(9116i, true, Struct_1(true, 756f)), Struct_2(20220i, false, Struct_1(false, -2595f)), Struct_2(2147483647i, false, Struct_1(false, 1452f)), Struct_2(29545i, true, Struct_1(false, 354f)), Struct_2(-7358i, false, Struct_1(false, 893f)), Struct_2(1i, true, Struct_1(true, 1322f)), Struct_2(-1i, false, Struct_1(true, 633f)), Struct_2(2147483647i, true, Struct_1(false, 227f)), Struct_2(i32(-2147483648), false, Struct_1(true, -536f)), Struct_2(-13214i, true, Struct_1(true, -1622f)), Struct_2(-28310i, false, Struct_1(false, 128f)), Struct_2(0i, false, Struct_1(true, -1711f)), Struct_2(2147483647i, false, Struct_1(false, -814f)), Struct_2(2147483647i, false, Struct_1(true, 823f)), Struct_2(-2655i, true, Struct_1(false, -316f)), Struct_2(0i, false, Struct_1(false, 532f)), Struct_2(-8540i, false, Struct_1(false, 748f)), Struct_2(-22419i, true, Struct_1(false, 869f)), Struct_2(i32(-2147483648), false, Struct_1(true, -562f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_2, 23>();
    var var_0 = global3[_wgslsmith_index_u32(abs(1u), 7u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b + -1231f)))))));
    var var_2 = ~(~firstTrailingBit(~vec2<u32>(1u, 1u)));
    let var_3 = var_2.x != firstLeadingBit(~(~(~84169u)));
    return Struct_1(any(vec2<bool>(true, any(vec3<bool>(true, global0.c.a, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b)));
}

fn func_1(arg_0: i32) -> bool {
    global4 = array<Struct_2, 23>();
    let var_0 = 1i;
    global2 = Struct_2(-_wgslsmith_mod_i32(~(-1i), _wgslsmith_mod_i32(0i, u_input.a.x)), true, func_2());
    var var_1 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    var var_2 = Struct_2(countOneBits(min(reverseBits(var_0), u_input.a.x | 11445i)), true, global0.c);
    return global2.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -478f) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-505f))));
    var var_1 = !vec3<bool>(arg_3.a, !((global0.a << (1u % 32u)) > (-17298i << (arg_2.x % 32u))), !(true & (-170f <= arg_0.b)));
    global4 = array<Struct_2, 23>();
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(588f * _wgslsmith_f_op_f32(-1000f - 662f)), -746f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(853f * -1000f), _wgslsmith_f_op_f32(abs(-679f))))) + vec3<f32>(arg_0.b, 1011f, -1363f))));
    global0 = global3[_wgslsmith_index_u32(2026u, 7u)];
    return u_input.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = func_2();
    global1 = all(vec2<bool>(false, global0.c.a));
    var var_1 = arg_2.b;
    var var_2 = func_2();
    var_2 = global2.c;
    return _wgslsmith_f_op_f32(f32(-1f) * -282f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.b;
    global3 = array<Struct_2, 7>();
    var var_1 = !func_1(_wgslsmith_add_i32(~(-46391i), global0.a ^ u_input.a.x));
    global4 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global2.c, Struct_2(func_3(global2.c, vec3<i32>(global0.a, global0.a, global0.a), vec3<u32>(44175u, 17399u, 11718u), global2.c), !global0.c.a, func_2()), Struct_1(true, _wgslsmith_f_op_f32(-global0.c.b)))) + global2.c.b));
}

