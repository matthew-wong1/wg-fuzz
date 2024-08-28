struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(5409u, 59898u)), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(0u, 0u)), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(54254u, 0u)), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(45847u, 0u)), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(18320u, 9918u)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(34523u, 1u)), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(87122u, 0u)), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(47994u, 0u)), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(61995u, 0u)), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 57697u)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(51451u, 63720u)), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(0u, 0u)), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 13524u)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(14292u, 12834u)), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(4522u, 25625u)), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(0u, 0u)), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 10084u)), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(0u, 82269u)), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(52724u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(0u, 28942u)), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(1u, 20776u)), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(38738u, 14948u)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(74226u, 1u)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 2710u)), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 67117u)));

var<private> global1: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(!(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)))), ~vec2<u32>(38707u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)));
    global0 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(108f, -764f, -1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(423f, -1570f, 177f) + vec3<f32>(-995f, -181f, 817f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1021f, -679f, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(817f + 1000f), -1276f)), _wgslsmith_f_op_f32(f32(-1f) * -395f)))));
    global1 = reverseBits(u_input.a.x);
    let var_2 = 1703f;
    return select(_wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 29709u, var_0.b.x), vec3<u32>(4099u, 4294967295u, 0u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.b.x) << (vec2<u32>(44685u, var_0.b.x) % vec2<u32>(32u)), select(vec2<u32>(var_0.b.x, var_0.b.x), var_0.b, vec2<bool>(true, var_0.a.x)))), reverseBits(~(4294967295u >> (u_input.a.x % 32u))) ^ ~var_0.b.x, 32977u >= _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, var_0.b.x), u_input.a) >> (~vec2<u32>(u_input.a.x, 49229u) % vec2<u32>(32u)), vec2<u32>(reverseBits(30152u), u_input.a.x)));
}

fn func_2() -> f32 {
    var var_0 = 1u >> (func_3(min(-_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x)) % 32u);
    global0 = array<Struct_1, 29>();
    var var_1 = global0[_wgslsmith_index_u32(~(~(firstLeadingBit(abs(u_input.a.x)) << (4294967295u % 32u))), 29u)];
    var var_2 = Struct_1(var_1.a, vec2<u32>(var_1.b.x, u_input.a.x) << (vec2<u32>(firstTrailingBit(firstTrailingBit(30472u)), _wgslsmith_add_u32(u_input.a.x, ~var_1.b.x)) % vec2<u32>(32u)));
    global1 = u_input.a.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -387f);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1343f, 536f, arg_0)), _wgslsmith_f_op_f32(991f * _wgslsmith_f_op_f32(func_2())))));
    var var_1 = select(vec4<bool>(arg_0 & arg_0, u_input.a.x >= ~(~57923u), any(vec2<bool>(arg_0, arg_0 || true)), false), select(select(vec4<bool>(var_0 > -112f, any(vec2<bool>(arg_0, arg_0)), any(vec4<bool>(arg_0, true, true, false)), u_input.a.x > 37203u), vec4<bool>(any(vec4<bool>(false, false, false, false)), all(vec3<bool>(true, true, true)), true, true), !vec4<bool>(arg_0, true, false, true)), select(select(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, true, true, arg_0)), vec4<bool>(true, true, true, true), !arg_0), !(!vec4<bool>(true, arg_0, arg_0, arg_0)), !arg_0), !select(vec4<bool>(false, false, true, arg_0), vec4<bool>(true, true, true, true), all(vec3<bool>(arg_0, arg_0, arg_0)))), vec4<bool>(arg_0, all(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), true)), _wgslsmith_mod_u32(u_input.a.x, ~37867u) >= ~u_input.a.x, 0u <= u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, -1316f, var_0), vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(select(544f, _wgslsmith_f_op_f32(-var_0), var_1.x)), 858f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(716f * var_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(-var_2.x))))));
    return vec2<u32>(u_input.a.x, ~((0u | ~u_input.a.x) ^ (0u | select(u_input.a.x, 28906u, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.c << (_wgslsmith_div_u32(arg_2.b.x, 4294967295u) % 32u);
    var_0 = i32(-1i) * -(u_input.c << (~_wgslsmith_dot_vec4_u32(vec4<u32>(30563u, 1u, u_input.a.x, 57025u), vec4<u32>(u_input.a.x, 115u, u_input.a.x, 81352u)) % 32u));
    global1 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-693f, -1257f), vec2<f32>(615f, -524f))), vec2<f32>(-488f, -592f))) + vec2<f32>(_wgslsmith_f_op_f32(abs(-1821f)), -670f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1493f)), -1506f));
    let var_2 = arg_2;
    return Struct_1(select(!(!(!var_2.a)), select(!vec4<bool>(var_2.a.x, false, false, arg_1.a.x), var_2.a, arg_0.a.x), true), func_1(arg_0.a.x) << (max(vec2<u32>(func_3(u_input.c), arg_2.b.x), select(vec2<u32>(43395u, 7584u), u_input.a, vec2<bool>(true, var_2.a.x)) | max(arg_0.b, arg_2.b)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1895f + _wgslsmith_f_op_f32(round(1f)))));
    global0 = array<Struct_1, 29>();
    var var_1 = -49555i;
    var var_2 = func_4(Struct_1(vec4<bool>(true, true, true, true), func_1(true)), Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), true), u_input.a), global0[_wgslsmith_index_u32(u_input.a.x, 29u)]);
    let var_3 = ~u_input.b & (_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(1i, _wgslsmith_add_i32(-56110i, 1i))) ^ _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -2147483647i)), u_input.b), vec2<i32>(u_input.b.x << (u_input.a.x % 32u), u_input.b.x >> (48309u % 32u))));
    var_2 = global0[_wgslsmith_index_u32(9926u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~firstLeadingBit(vec4<i32>(10523i, 0i, 35526i, var_3.x)))), var_0.x, firstLeadingBit(abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, 0i), vec3<i32>(var_3.x, 2147483647i, 1300i)))) | ~(~(vec3<i32>(-25097i, var_3.x, 2147483647i) | vec3<i32>(4220i, u_input.c, 1i))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-637f)) - -2399f)), abs(~(~5121u)));
}

