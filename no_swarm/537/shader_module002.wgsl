struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, true, false, false, true, false, true, true, false, false, false, true);

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(814f))) * 484f), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(844f, -948f) + vec2<f32>(-1043f, -247f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-550f, -146f), vec2<f32>(1660f, 1192f), vec2<bool>(global0[_wgslsmith_index_u32(50553u, 13u)], true))), vec2<bool>(false, global0[_wgslsmith_index_u32(21965u, 13u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1937f, -429f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-1576i), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 13u)]), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(u_input.a))) - vec2<f32>(_wgslsmith_div_f32(636f, -1546f), _wgslsmith_f_op_f32(min(-340f, 2231f))))), _wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~0u, arg_1.x, abs(arg_0)), 22u)], select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 13u)]), vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(36695u, 13u)])), vec2<bool>(true, true), !global0[_wgslsmith_index_u32(1u, 13u)]), select(select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], false)), !vec2<bool>(global0[_wgslsmith_index_u32(5893u, 13u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 13u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(31173u, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 13u)], false))), true), global2[_wgslsmith_index_u32(u_input.b, 22u)]))));
    var var_1 = -15173i;
    global0 = array<bool, 13>();
    global1 = array<Struct_1, 26>();
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(countOneBits(82087u) & max(arg_1.x, arg_1.x)), 26u)];
    return vec4<u32>(_wgslsmith_mod_u32(select(arg_1.x, 14497u, true), 0u) ^ ~arg_1.x, u_input.b, 31355u, min(u_input.b, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(28545u, 24706u), vec2<u32>(0u, 0u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(~min(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, u_input.a, 18479i), vec4<i32>(u_input.a, 46003i, u_input.a, u_input.a)), vec4<i32>(1i, _wgslsmith_mult_i32(u_input.a, -2147483647i), min(u_input.a, 1i), -2147483647i)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, 64855i, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 33761i, 0i, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(19339u, 39240u, u_input.b, 42395u) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.a, 45085i, 1456i, u_input.a))) >> (func_2(~4294967295u, vec2<u32>(42603u, 73381u)) % vec4<u32>(32u))));
    var_0 = ~countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 1i, ~u_input.a), -firstTrailingBit(vec4<i32>(-26128i, -2147483647i, 1i, 1i))));
    global0 = array<bool, 13>();
    global2 = array<Struct_1, 22>();
    return global1[_wgslsmith_index_u32(1u, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-954f, -958f, 380f) * vec3<f32>(-339f, -2053f, -1305f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, -154f, 1000f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(666f, 160f, -1000f) * vec3<f32>(373f, 1014f, -398f))))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 26u)];
    let var_2 = func_1();
    var var_3 = var_2;
    let var_4 = Struct_1(-2147483647i);
    let var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + var_0.x))))), ~64854u);
}

