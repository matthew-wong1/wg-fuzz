struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_1, 5>;

var<private> global2: i32 = 13384i;

var<private> global3: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(29570i, i32(-2147483648)), vec2<i32>(-498i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(9427i, 1i), vec2<i32>(i32(-2147483648), -37217i), vec2<i32>(43797i, 57649i), vec2<i32>(1i, 1i), vec2<i32>(8593i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), -43207i), vec2<i32>(0i, -8684i), vec2<i32>(i32(-2147483648), 2562i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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
    var var_0 = global0.x;
    global3 = array<vec2<i32>, 12>();
    var_0 = global0.x;
    let var_1 = true;
    let var_2 = Struct_4(Struct_1(vec2<bool>(true, all(vec3<bool>(false, var_1, global0.x)))), reverseBits(-(~u_input.b) | 7850i), _wgslsmith_div_vec3_f32(vec3<f32>(1323f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1118f)), -1253f), _wgslsmith_f_op_f32(f32(-1f) * -669f)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(274f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(600f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(602f))))), !select(!vec3<bool>(var_1, false, global0.x), vec3<bool>(false, global0.x, true), ~19525u <= (u_input.c | u_input.a)), firstTrailingBit(~1u) << (_wgslsmith_mod_u32(6924u, 1u) % 32u));
    global3 = array<vec2<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xxw);
}

