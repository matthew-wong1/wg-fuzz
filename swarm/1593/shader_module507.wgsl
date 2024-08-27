struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec2<bool>, 5>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~0u), _wgslsmith_sub_u32(136258u, 86044u) ^ firstTrailingBit(22625u)), firstTrailingBit(27437u >> (~4294967295u % 32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1129f, -862f), -1649f, -819f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1127f, 1000f, 854f) - vec3<f32>(856f, -794f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, 158f, -916f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-731f, -548f, -257f), vec3<f32>(-153f, -1430f, -1185f)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2125f, 1268f, -548f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, 838f, -510f)), true))), !vec3<bool>(true, true, all(vec4<bool>(false, false, false, true))))));
    var_1 = Struct_1(var_1.a);
    var var_2 = min(~(u_input.b ^ 1i), -firstLeadingBit(u_input.a.x));
    let var_3 = vec2<bool>(true || all(vec3<bool>(true, true, any(vec3<bool>(true, true, true)))), !any(vec3<bool>(0i != u_input.b, true, any(vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.b, -40082i) | -2147483647i, _wgslsmith_add_i32(abs(u_input.b), u_input.a.x), 45651i << (firstTrailingBit(0u) % 32u))));
}

