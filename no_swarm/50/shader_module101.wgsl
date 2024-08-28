struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_5, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = select(_wgslsmith_mult_i32(u_input.a.x, 16430i), u_input.a.x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)))));
    var var_1 = Struct_5(false, Struct_4(u_input.a.x, Struct_2(Struct_1(firstTrailingBit(vec3<u32>(global0.x, 4294967295u, 57664u)), false, _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 10118u, 0u), vec3<u32>(0u, 34948u, 0u))), Struct_1(global0.yyw, any(vec3<bool>(false, false, true)), ~vec3<u32>(1u, global0.x, global0.x)), global0.x >> (_wgslsmith_clamp_u32(4294967295u, 4294967295u, 58655u) % 32u))));
    global1 = array<Struct_5, 15>();
    let var_2 = !all(vec3<bool>(false, !var_1.a, false));
    global1 = array<Struct_5, 15>();
    return arg_0;
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(237f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f))), _wgslsmith_f_op_f32(abs(1021f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(267f)))), -1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(661f + 995f)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -630f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f + -772f))))), _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = global0.x;
    var_2 = ~select(~(~global0.x), 69172u, arg_0);
    var var_3 = 1758f;
    return Struct_4(0i, Struct_2(Struct_1(min(vec3<u32>(global0.x, 5488u, global0.x), firstLeadingBit(vec3<u32>(0u, global0.x, 1623u))), all(vec4<bool>(true, false, false, false)) & all(vec3<bool>(false, false, false)), global0.xyx), Struct_1(global0.zwy, false, vec3<u32>(global0.x, ~4294967295u, countOneBits(26193u))), global0.x));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(true);
    return StorageBuffer(abs(var_0.a << ((global0.x & global0.x) % 32u)) << (firstLeadingBit(~_wgslsmith_sub_u32(global0.x, 1u)) % 32u), var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

