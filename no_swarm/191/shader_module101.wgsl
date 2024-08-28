struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(false, true, select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))), ~u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -2098f)), _wgslsmith_f_op_f32(f32(-1f) * -127f)), _wgslsmith_f_op_f32(trunc(1000f)) >= _wgslsmith_f_op_f32(-381f * -1974f)))), vec4<u32>(58625u, ~max(1u, ~21143u), ~1u, 1u), u_input.a, _wgslsmith_add_u32(1u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-countOneBits(-2147483647i), -31557i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, -13287i), ~8346i)));
}

