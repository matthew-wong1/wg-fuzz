struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 0i;

var<private> global2: u32;

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = array<Struct_1, 3>();
    global1 = reverseBits(~(-(~abs(arg_1.a))));
    var var_0 = arg_1;
    global0 = arg_0;
    return var_0.b;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = abs(u_input.a.x);
    var var_1 = arg_1;
    let var_2 = ~(~select(1u, 0u, func_3(-204f, Struct_1(u_input.a.x, arg_2), arg_1) >= ~u_input.c));
    var var_3 = arg_1;
    let var_4 = select(vec3<bool>(all(vec2<bool>(true, any(vec4<bool>(true, true, false, false)))), !any(vec2<bool>(false, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), var_3.a != 4416i)), !vec3<bool>(arg_3 < arg_3, true, true), !all(vec3<bool>(true, true, false))), true);
    return -477f;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(413f, 1709f, true)), 1f)) - _wgslsmith_f_op_f32(func_2(31270i, global3[_wgslsmith_index_u32(abs(arg_0), 3u)], _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1700u, 14664u, 4294967295u), vec4<u32>(arg_2.b, 0u, arg_2.b, arg_1.b)), 165f)))) - _wgslsmith_f_op_f32(-186f + _wgslsmith_f_op_f32(f32(-1f) * -1274f)));
    var var_0 = Struct_1(arg_1.a, _wgslsmith_dot_vec3_u32(u_input.d.yzx, countOneBits(~u_input.d.yzw)));
    let var_1 = u_input.d.zww;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(u_input.a.x, arg_2, countOneBits(_wgslsmith_mod_u32(4294967295u, 52160u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-621f, 118f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(133f)) - _wgslsmith_f_op_f32(round(843f)))))))));
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d.x, var_1.x >> (~39347u % 32u)), max(arg_2.b, _wgslsmith_dot_vec4_u32(u_input.d << (vec4<u32>(4294967295u, arg_2.b, var_1.x, u_input.d.x) % vec4<u32>(32u)), firstLeadingBit(u_input.d)))), 3u)];
    return ~(~firstLeadingBit(max(arg_2.b, _wgslsmith_sub_u32(arg_2.b, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.d, u_input.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(219f, -769f, -1000f, -1000f), vec4<f32>(491f, -1948f, 777f, 578f), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(609f, -412f, 317f, 1689f)), vec4<bool>(true, true, true, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(821f, -1447f, -833f, -1812f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(485f, -739f, 1075f, 226f) * vec4<f32>(854f, -505f, -126f, 1016f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-202f + -821f), 1092f, _wgslsmith_f_op_f32(-1016f - _wgslsmith_f_op_f32(f32(-1f) * -110f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-314f, 464f, true)))))));
    global3 = array<Struct_1, 3>();
    var_0 = reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, ~var_0.x, _wgslsmith_mult_u32(1u, 0u), var_0.x), firstTrailingBit(u_input.d) & vec4<u32>(var_0.x ^ u_input.d.x, firstTrailingBit(37006u), firstLeadingBit(var_0.x), func_1(var_0.x, global3[_wgslsmith_index_u32(u_input.b, 3u)], Struct_1(-1i, 0u), u_input.a.x))));
    let var_2 = u_input.b;
    let var_3 = var_1.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -385f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(0u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 2147483647i) << (var_0.x % 32u), firstTrailingBit(1i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-51715i, 2147483647i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(34018i, 0i, u_input.a.x))), vec3<i32>(~1i, _wgslsmith_mult_i32(2147483647i, u_input.a.x), u_input.a.x))));
}

