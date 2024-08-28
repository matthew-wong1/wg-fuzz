struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, 8527i);

var<private> global1: array<vec2<bool>, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    let var_0 = u_input.b;
    global1 = array<vec2<bool>, 11>();
    var var_1 = all(!(!(!global1[_wgslsmith_index_u32(u_input.c.x, 11u)]))) & true;
    return Struct_1(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(global0.x, global0.x, global0.x, -20008i)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, -1i, global0.x), -vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, 9016i, -8457i, -42879i) << (vec4<u32>(0u, 1u, 0u, var_0) % vec4<u32>(32u))), vec4<i32>(1i, global0.x, 31428i, -20761i) ^ vec4<i32>(global0.x, global0.x, global0.x, -2147483647i))), vec2<i32>(reverseBits(global0.x), -1i), ~vec3<u32>(u_input.c.x, select(46787u ^ u_input.a.x, var_0, any(vec4<bool>(false, false, false, false))), 4294967295u), select(false, ~var_0 > countOneBits(_wgslsmith_add_u32(0u, u_input.a.x)), true), any(vec2<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true)), true)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec2_u32(~select(func_1().c.xz, vec2<u32>(4410u & u_input.c.x, 0u), select(global1[_wgslsmith_index_u32(~u_input.a.x, 11u)], !global1[_wgslsmith_index_u32(u_input.b, 11u)], global1[_wgslsmith_index_u32(u_input.a.x | 1u, 11u)])), vec2<u32>(u_input.b, ~(~22331u)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1793f);
    global0 = _wgslsmith_mod_vec3_i32(-vec3<i32>(-select(global0.x, global0.x, false), _wgslsmith_div_i32(~(-9874i), ~global0.x), 13360i), ~(~select(countOneBits(vec3<i32>(-98059i, global0.x, global0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0.x, -9613i), vec3<i32>(global0.x, global0.x, global0.x)), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(223f, 555f, 938f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, 902f, 163f)))) * vec3<f32>(1f, 1f, 1f))));
    return !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, select(false, true, false))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: bool) -> vec2<f32> {
    var var_0 = ~_wgslsmith_div_i32(arg_1.x, arg_2) | -(~_wgslsmith_div_i32(15389i << (arg_0.c.x % 32u), 2147483647i));
    var_0 = -5640i;
    var var_1 = !select(func_3(), !select(!vec3<bool>(arg_3, true, true), vec3<bool>(true, false, arg_0.d), vec3<bool>(arg_0.e, arg_0.e, false)), !select(vec3<bool>(true, arg_3, false), select(vec3<bool>(arg_0.e, arg_0.e, false), vec3<bool>(false, true, arg_3), true), arg_3 & arg_0.d));
    var_0 = -(~(1i | select(1i, firstTrailingBit(-1i), true)));
    var var_2 = -433f;
    return vec2<f32>(138f, -1054f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.zy;
    var var_1 = false;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(func_1(), ~vec4<i32>(global0.x, 1i, -1i, 33527i), countOneBits(var_0.x), var_2)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-670f * 1000f), 1000f, false))))));
    var var_4 = func_1();
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(960f, var_3.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2083f, -635f), vec2<f32>(295f, 181f)))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3.x) + vec2<f32>(-1000f, 933f))))))));
    var var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b, ~abs(reverseBits(0u))), _wgslsmith_add_i32(_wgslsmith_div_i32(1i, var_0.x), max(countOneBits(-var_0.x), ~_wgslsmith_mult_i32(31626i, var_4.a))));
}

