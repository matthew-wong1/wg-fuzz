struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(12409u, 47379u, 1u, 0u, 0u, 46839u, 49519u, 33087u, 101507u, 4294967295u, 4166u, 56862u, 0u);

var<private> global1: array<bool, 9> = array<bool, 9>(true, true, true, true, false, true, true, true, false);

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec4<bool>(false, true, false, false), 4294967295u), vec3<f32>(-1750f, -232f, -989f)));

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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
    global3 = array<Struct_1, 9>();
    global3 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-595f, _wgslsmith_f_op_f32(floor(-1251f)), _wgslsmith_f_op_f32(trunc(-960f)), _wgslsmith_f_op_f32(round(1282f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -843f), -1292f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(trunc(103f)))), _wgslsmith_f_op_f32(-889f * _wgslsmith_f_op_f32(trunc(483f))))));
    global2 = array<Struct_2, 1>();
    let var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(u_input.b, u_input.b) & vec2<i32>(select(-2147483647i, 2147483647i, false) << (abs(u_input.c.x) % 32u), ~u_input.b.x), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(var_1)), -384f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-387f + _wgslsmith_f_op_f32(var_1 + var_0.x)), _wgslsmith_f_op_f32(var_0.x * -244f))), u_input.d.x, firstTrailingBit(u_input.c), var_0.yyx);
}

