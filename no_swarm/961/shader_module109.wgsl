struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<bool, 4> = array<bool, 4>(false, true, false, false);

var<private> global3: array<bool, 18> = array<bool, 18>(false, false, false, false, true, false, false, true, true, false, false, true, true, true, true, false, true, false);

var<private> global4: array<vec3<i32>, 12>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(896f, -1240f)))));
    let var_1 = !(!select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], false, false)), !select(vec3<bool>(false, false, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], false), global0[_wgslsmith_index_u32(102118u, 3u)]), _wgslsmith_mult_i32(u_input.b, u_input.b) < u_input.b));
    global3 = array<bool, 18>();
    var var_2 = ~firstLeadingBit(~vec3<u32>(~4294967295u, u_input.a >> (u_input.a % 32u), u_input.a));
    var var_3 = !(!select(var_1, vec3<bool>(global3[_wgslsmith_index_u32(~u_input.a, 18u)], global3[_wgslsmith_index_u32(~95956u, 18u)], !global0[_wgslsmith_index_u32(var_2.x, 3u)]), var_1.x));
    var_2 = firstLeadingBit(~(~vec3<u32>(var_2.x, 1u, _wgslsmith_add_u32(38540u, u_input.a))));
    let var_4 = -19389i;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<i32>(u_input.b, var_4, min(u_input.b, u_input.b), -var_4), vec4<i32>(-41296i, _wgslsmith_clamp_i32(1i, u_input.b, _wgslsmith_div_i32(u_input.b, 1i)), 0i, _wgslsmith_add_i32(~(-1i), firstLeadingBit(-7253i))), var_1.x), ~(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-4524i, -31033i, var_4, u_input.b)), vec4<i32>(-77629i, 10971i, 1i, u_input.b)) ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(14290i, u_input.b, 0i, 2147483647i), vec4<i32>(var_4, var_4, var_4, var_4))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(871f, var_0.x), var_0)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~30802u, countOneBits(1u), 0u), firstLeadingBit(~vec3<u32>(var_2.x, var_2.x, u_input.a))), 22352u));
}

