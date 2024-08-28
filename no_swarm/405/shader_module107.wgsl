struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(1u, 4294967295u, 0u, 0u));

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: f32) -> bool {
    global1 = array<vec4<u32>, 1>();
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.d.x, -(i32(-1i) * -1i), ~(arg_1.x & 38413i)), u_input.d));
    let var_1 = _wgslsmith_div_vec3_u32(~arg_0.ywz, ~vec3<u32>(~arg_0.x, ~u_input.e.x, 1u) << ((vec3<u32>(0u, ~4294967295u, ~0u) >> (vec3<u32>(~73141u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0.x, 4294967295u, arg_0.x), arg_0), countOneBits(4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = (_wgslsmith_mult_u32(var_1.x << (arg_0.x % 32u), ~var_1.x) > select(~1u, arg_0.x, ~arg_0.x <= 39464u)) || !(!(_wgslsmith_f_op_f32(abs(global0.x)) == _wgslsmith_f_op_f32(f32(-1f) * -839f)));
    return !select(all(select(!vec2<bool>(global2.x, true), !global2.wy, vec2<bool>(false, true))), global2.x || (_wgslsmith_f_op_f32(-global0.x) < -484f), true);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    global2 = select(!select(select(vec4<bool>(false, arg_2.c, global2.x, arg_2.c), select(arg_1, arg_1, arg_1), !vec4<bool>(false, arg_1.x, true, false)), arg_1, !arg_1), vec4<bool>(false, _wgslsmith_f_op_f32(1195f + -300f) > global0.x, true, any(vec4<bool>(select(global2.x, arg_2.c, false), global2.x, all(global2.www), true))), true);
    let var_0 = arg_3.a.a >> (4294967295u % 32u);
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1114f + global0.x), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(948f - global0.x), true)), _wgslsmith_f_op_f32(1f - global0.x), _wgslsmith_f_op_f32(-global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -658f)))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * -1000f), -1003f)), global0.x), select(false, true, u_input.c <= ~(~arg_0))));
    let var_3 = !(var_1.c & (~select(1u, var_1.b.x, false) >= reverseBits(~arg_0)));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_1(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = func_2(~(~global1[_wgslsmith_index_u32(14905u, 1u)]), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(global0.x * global0.x))) & false;
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(round(105f)), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1237f * -515f), _wgslsmith_f_op_f32(global0.x - -801f), global2.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-406f, -798f), _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(319f, -279f))), _wgslsmith_f_op_f32(-global0.x), global0.x) * vec4<f32>(global0.x, 439f, _wgslsmith_f_op_f32(abs(499f)), _wgslsmith_f_op_f32(global0.x + global0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-900f, -1286f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), 1f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(max(-1141f, global0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f) - _wgslsmith_f_op_f32(func_3(4294967295u, vec4<bool>(false, false, false, true), Struct_2(Struct_1(arg_0.a.a), arg_0.b.wyx, global2.x), Struct_3(Struct_1(u_input.b.x), global1[_wgslsmith_index_u32(arg_0.b.x, 1u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -906f)), global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1035f * global0.x) + 161f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    var var_1 = ~u_input.e.x;
    return StorageBuffer(u_input.a, reverseBits(~(~u_input.e)), -11161i & _wgslsmith_mod_i32(84868i, _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, arg_0.a.a), ~0i)), -u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-152f - 156f)), _wgslsmith_div_vec3_f32(vec3<f32>(491f, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(-global0.zwz))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_3(Struct_1(-15584i), global1[_wgslsmith_index_u32(~u_input.c, 1u)]));
}

