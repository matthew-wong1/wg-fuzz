struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 3>;

var<private> global2: array<u32, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = abs(~global2[_wgslsmith_index_u32(1u, 16u)]);
    return -829f;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = vec3<f32>(159f, arg_1, arg_0.a);
    global0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, _wgslsmith_div_f32(-446f, var_0.x), var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, 1000f, -609f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-779f, var_0.x, arg_0.a))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(229f, var_1, -192f))))) + vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.b, -1000f)), var_0.x, -515f)), vec3<bool>(true, any(vec2<bool>(false, arg_2)), arg_2))), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 765f, -258f))))), arg_0);
    var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2626f))), _wgslsmith_f_op_f32(-arg_1)), select(50063u, var_2.b, all(vec2<bool>(select(arg_2, true, true), arg_2 | true))), vec4<f32>(_wgslsmith_f_op_f32(492f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - arg_0.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(222f - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + -447f)), !any(vec2<bool>(arg_2, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(727f * _wgslsmith_f_op_f32(-arg_1)), arg_1))), Struct_1(-1234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, var_2.a.x) + var_2.c.x))));
    return Struct_2(var_2.b);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = arg_2;
    var var_2 = ~_wgslsmith_add_i32(arg_1.x, 1i);
    var var_3 = 34609u;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(ceil(-609f)), arg_2.x);
    return func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a))), var_1.x, true);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<bool>) -> bool {
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(Struct_1(1f, 1000f), func_1(global2[_wgslsmith_index_u32(1u, 16u)] <= 4294967295u, _wgslsmith_sub_vec4_i32(vec4<i32>(-35197i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)), vec3<f32>(614f, -1900f, 690f)), func_1(true, firstTrailingBit(vec4<i32>(0i, u_input.b, u_input.b, 75354i)), _wgslsmith_div_vec3_f32(vec3<f32>(1310f, 435f, -1605f), vec3<f32>(439f, 199f, 1006f))), ~1u), -(~(~vec4<i32>(u_input.b, -1i, 2147483647i, 49684i))), -countOneBits(i32(-1i) * -2147483647i), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), false)) || false;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), -984f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-457f, -2067f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, -1013f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1095f, -1213f), vec2<f32>(681f, -1860f), true))))));
    let var_3 = var_0;
    global1 = array<vec2<i32>, 3>();
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(1u, 3u)], -vec3<i32>(firstLeadingBit(firstLeadingBit(var_1)), _wgslsmith_div_i32(firstTrailingBit(2147483647i), _wgslsmith_add_i32(-7380i, var_1)), -2147483647i), -214f, 0u >> (_wgslsmith_div_u32(~(~global2[_wgslsmith_index_u32(61638u, 16u)]), ~(~0u)) % 32u));
}

