struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
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

var<private> global0: array<vec4<f32>, 15>;

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(1u, -49396i, vec4<u32>(2896u, 79711u, 4294967295u, 0u), vec2<f32>(-243f, 453f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2949f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_div_f32(-1000f, global1.d.x))))));
    var var_1 = global4.d.x;
    var var_2 = ~(~_wgslsmith_mod_vec4_i32(countOneBits(reverseBits(vec4<i32>(global4.b, 1i, 2243i, -4527i))), firstLeadingBit(min(vec4<i32>(-1i, -1i, 2147483647i, 2147483647i), vec4<i32>(global1.b, 1i, global1.b, global1.b)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.x) - _wgslsmith_f_op_f32(-global4.d.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.d.x, global1.d.x, all(vec3<bool>(false, true, true)))) + 1137f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.d.x * global1.d.x))), 517f)));
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(var_2.x, _wgslsmith_sub_i32(-16073i, 41733i)), global4.b, -1i, firstTrailingBit(-1i)), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(global1.b, global4.b, 31287i, -2147483647i) >> (vec4<u32>(39032u, 41875u, 1u, 43952u) % vec4<u32>(32u))));
    let var_5 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~(~24530u), ~u_input.b.x, ~76188u), 27559u));
}

