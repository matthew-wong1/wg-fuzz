struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(17769i, vec3<bool>(true, false, true), 1i, 1i), Struct_1(-12724i, vec3<bool>(true, true, true), 35049i, i32(-2147483648)), Struct_1(0i, vec3<bool>(true, false, false), i32(-2147483648), -14275i), Struct_1(-27072i, vec3<bool>(false, false, true), 73071i, 0i), Struct_1(1i, vec3<bool>(true, true, true), -42528i, -24193i), Struct_1(i32(-2147483648), vec3<bool>(true, false, true), 1i, 51999i), Struct_1(-34338i, vec3<bool>(false, false, true), 19047i, -76886i), Struct_1(32286i, vec3<bool>(true, false, false), 17470i, i32(-2147483648)), Struct_1(2147483647i, vec3<bool>(true, false, true), -15753i, 2147483647i), Struct_1(1i, vec3<bool>(true, true, false), 41796i, -6159i), Struct_1(2147483647i, vec3<bool>(false, false, false), 0i, 37983i), Struct_1(0i, vec3<bool>(false, true, true), -26652i, -6942i), Struct_1(0i, vec3<bool>(false, false, false), -1i, 2147483647i), Struct_1(-12033i, vec3<bool>(true, true, false), -55895i, 1i), Struct_1(0i, vec3<bool>(false, false, true), -1i, 0i), Struct_1(43089i, vec3<bool>(true, false, true), -20928i, 0i), Struct_1(-58444i, vec3<bool>(false, true, true), -1i, 31864i), Struct_1(0i, vec3<bool>(false, true, true), 2147483647i, 11653i), Struct_1(35849i, vec3<bool>(true, true, false), -23943i, 0i), Struct_1(-1563i, vec3<bool>(false, false, true), 45272i, 0i), Struct_1(-17462i, vec3<bool>(false, false, true), -24844i, 28137i), Struct_1(i32(-2147483648), vec3<bool>(true, false, true), -4701i, 2147483647i), Struct_1(42671i, vec3<bool>(false, true, false), 47711i, -901i), Struct_1(-1i, vec3<bool>(true, false, true), 0i, 3166i), Struct_1(21247i, vec3<bool>(false, true, false), 0i, 2147483647i), Struct_1(0i, vec3<bool>(false, true, true), -24515i, i32(-2147483648)), Struct_1(0i, vec3<bool>(true, false, true), -1i, -1i), Struct_1(29539i, vec3<bool>(true, false, false), 25681i, 2147483647i), Struct_1(i32(-2147483648), vec3<bool>(true, false, true), 4106i, i32(-2147483648)), Struct_1(i32(-2147483648), vec3<bool>(false, false, false), -1i, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-533f, -1722f);
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b.x), 30u)];
    let var_2 = var_1.b;
    global0 = array<Struct_1, 30>();
    let var_3 = Struct_1(~countOneBits(1i), var_1.b, 1i, -56763i);
    let var_4 = ~vec3<u32>(5305u, u_input.a, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -576f), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -777f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(214f)) - -647f) - 1602f)));
}

