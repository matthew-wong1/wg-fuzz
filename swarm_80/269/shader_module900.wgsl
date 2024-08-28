struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(19753u, 31460u), vec2<u32>(4294967295u, 47783u), vec2<u32>(0u, 0u), vec2<u32>(23883u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u));

var<private> global1: array<i32, 13> = array<i32, 13>(i32(-2147483648), -9054i, 36684i, 0i, -1i, -11662i, 2147483647i, -1i, 8913i, 2147483647i, 10846i, 46318i, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mult_vec2_i32(u_input.d.zx, u_input.d.xx) & _wgslsmith_mod_vec2_i32(u_input.d.yw, abs(_wgslsmith_clamp_vec2_i32(u_input.c.xy, vec2<i32>(-10668i, global1[_wgslsmith_index_u32(42609u, 13u)]), u_input.c.yy)) >> (vec2<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    var var_0 = ~2968u;
    global0 = array<vec2<u32>, 8>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f * _wgslsmith_f_op_f32(step(-881f, 1104f))) + 1288f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(1526f - _wgslsmith_f_op_f32(443f - 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~min(u_input.b.x, 0u), 13u)], _wgslsmith_f_op_f32(trunc(540f)), 1i);
}

