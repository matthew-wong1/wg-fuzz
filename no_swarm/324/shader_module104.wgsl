struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 156456u);

var<private> global2: i32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(firstTrailingBit(~(~u_input.c.zx))) ^ vec2<u32>(4576u, abs(1u));
    var var_0 = true;
    global1 = vec2<u32>(0u, u_input.d.x);
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(min(~u_input.a, ~u_input.a) | 17914u, 55881u), ~u_input.d);
    var var_1 = u_input.e;
    let var_2 = !select(vec4<bool>(true, !all(vec2<bool>(true, false)), any(vec2<bool>(true, true)), true), !vec4<bool>(true, u_input.e >= 30278i, all(vec4<bool>(false, true, false, false)), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-503f, 439f, 280f, -270f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(253f, 2785f, 522f, -2628f), vec4<f32>(1483f, 225f, -1000f, 1000f), var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -731f, 539f, -864f))), vec4<f32>(_wgslsmith_f_op_f32(664f * 217f), _wgslsmith_f_op_f32(751f * 298f), -347f, _wgslsmith_f_op_f32(-1402f * -649f))))), global1.x, u_input.e, firstTrailingBit(vec2<i32>(u_input.e, -1i)), -_wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.e), vec3<i32>(u_input.e, 18385i, u_input.e)), vec3<i32>(~u_input.e, i32(-1i) * -2247i, firstTrailingBit(u_input.e)), ~vec3<i32>(18246i, 8607i, 47672i) & reverseBits(vec3<i32>(u_input.e, -114174i, 26648i))));
}

