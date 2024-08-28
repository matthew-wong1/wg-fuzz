struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec4<u32>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-694f, 680f, 229f), true);

var<private> global3: array<Struct_1, 7>;

var<private> global4: array<f32, 27>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a * vec3<f32>(148f, global2.a.x, -713f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, 1000f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a - global2.a)), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.a)) + _wgslsmith_f_op_vec3_f32(-global2.a))), global2.b & global0.x);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_0.a.x)), -562f, _wgslsmith_f_op_f32(min(761f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f + var_1) - _wgslsmith_div_f32(-813f, 1518f))))), true);
    let var_3 = 0u;
    var var_4 = vec2<bool>(!global0.x, true);
    let var_5 = _wgslsmith_f_op_f32(-global2.a.x);
    let var_6 = 4294967295u;
    let var_7 = ~(select(vec3<i32>(1i, 1i, 23762i), -countOneBits(vec3<i32>(-57187i, -2147483647i, -56427i)), select(!vec3<bool>(global0.x, false, var_4.x), vec3<bool>(true, true, true), !global2.b)) >> (u_input.a.zwz % vec3<u32>(32u)));
    let var_8 = -vec2<i32>(~(-23210i), ~(-(var_7.x | var_7.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_mult_vec3_u32(vec3<u32>(19218u, 31293u, 0u), select(u_input.a.ywx & u_input.a.xww, vec3<u32>(1u, global1.x, u_input.a.x), select(vec3<bool>(var_0.b, var_4.x, true), vec3<bool>(false, var_4.x, true), vec3<bool>(true, var_2.b, false))) & reverseBits(global1.wxz)), _wgslsmith_clamp_i32(var_8.x, var_8.x << (74726u % 32u), var_8.x), var_7, _wgslsmith_add_u32(1u, var_6));
}

