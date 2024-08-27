struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false);

var<private> global1: vec2<bool>;

var<private> global2: f32;

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_3, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mult_u32(global3.x >> (4294967295u % 32u), global3.x) >= 4294967295u);
    global3 = vec4<u32>(20866u, global3.x, ~(~(~(~24186u))), 4294967295u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1264f, 273f)) - _wgslsmith_f_op_f32(822f * -133f))))), _wgslsmith_f_op_f32(round(995f)));
    let var_2 = (global3.x << ((1u >> (_wgslsmith_mult_u32(~1u, 0u & global3.x) % 32u)) % 32u)) >> (firstTrailingBit(global3.x) % 32u);
    var var_3 = 856f;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-772f, var_1.x) - -1122f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_div_f32(1099f, var_1.x)), var_1.x)) + _wgslsmith_f_op_f32(max(var_1.x, -454f))));
    var var_5 = Struct_1(countOneBits(~(~reverseBits(vec4<u32>(0u, 1u, global3.x, 55774u)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_4, var_4, var_0.a)), -126f, var_0.a)))) + _wgslsmith_f_op_f32(f32(-1f) * -204f)), countOneBits(global3.x));
}

