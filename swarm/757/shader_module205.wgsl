struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, false));

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec2<u32>(1u, 1u);
    var var_1 = ~((arg_0 | _wgslsmith_div_vec3_i32(~arg_0, vec3<i32>(-2147483647i, u_input.a.x, -66487i))) ^ abs(vec3<i32>(-8280i, arg_0.x, arg_0.x) | (vec3<i32>(-2147483647i, u_input.a.x, arg_0.x) | vec3<i32>(arg_0.x, 2147483647i, u_input.a.x))));
    global0 = array<vec4<bool>, 2>();
    let var_2 = var_0.x;
    let var_3 = global2[_wgslsmith_index_u32(~abs(~(~var_0.x)), 1u)];
    return global2[_wgslsmith_index_u32(abs(var_0.x), 1u)];
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    var var_0 = func_2(vec3<i32>(min(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, arg_2), -2147483647i), 2147483647i), arg_2 << (1u % 32u), arg_2));
    let var_1 = -469f;
    let var_2 = Struct_1(select(!(!vec3<bool>(false, false, var_0.a.x)), !arg_1.a, true));
    var var_3 = func_2(~min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, -25455i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a.x), vec3<i32>(arg_2, u_input.a.x, arg_2), vec3<i32>(u_input.a.x, 22749i, arg_2))), max(vec3<i32>(arg_2, -16037i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_2, u_input.a.x), vec3<i32>(u_input.a.x, -34001i, 20443i), vec3<i32>(-27189i, arg_2, 30309i)))));
    let var_4 = select(vec3<bool>(!(-1757f != _wgslsmith_f_op_f32(min(var_1, var_1))), false, (_wgslsmith_f_op_f32(var_1 - 1036f) >= _wgslsmith_f_op_f32(-244f - var_1)) || (func_2(vec3<i32>(3815i, -2147483647i, arg_2)).a.x && (true || arg_1.a.x))), var_3.a, !(_wgslsmith_f_op_f32(-1927f - var_1) >= _wgslsmith_f_op_f32(floor(-902f))));
    return vec3<bool>(arg_0, any(func_2(firstLeadingBit(~vec3<i32>(-13088i, arg_2, u_input.a.x))).a.zx), !var_3.a.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> vec3<bool> {
    let var_0 = !select(func_3(all(select(arg_0.yy, vec2<bool>(global1.a.x, false), false)), func_2(~vec3<i32>(0i, u_input.a.x, u_input.a.x)), 1i), select(global1.a, global1.a, ~u_input.a.x > _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), func_3(true, Struct_1(vec3<bool>(arg_0.x, false, false)), 1i));
    let var_1 = var_0;
    let var_2 = func_2(-firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -1i)), firstTrailingBit(vec3<i32>(0i, u_input.a.x, u_input.a.x)))));
    global1 = Struct_1(select(vec3<bool>(all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44504u, 0u, 49761u, 93803u), vec4<u32>(66666u, 98135u, 1u, 5583u)), 2u)]), true, select(var_1.x, true, true)), func_2(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), max(u_input.a.x, u_input.a.x), max(u_input.a.x, u_input.a.x))).a, !var_2.a));
    var var_3 = !var_0.xy;
    return !global1.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(((-u_input.a.x & u_input.a.x) ^ ~(-2147483647i)) | u_input.a.x, _wgslsmith_clamp_i32(-27734i, u_input.a.x, ~firstLeadingBit(-1i)), u_input.a.x, ~abs(min(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, 1i))));
    return func_2(~reverseBits(var_0.xxw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!select(!global1.a, global1.a, func_1(global1.a, _wgslsmith_f_op_f32(746f * 1223f))), ~vec4<u32>(1u, 1u, 1u, 1u));
    var_0 = global2[_wgslsmith_index_u32(abs(94345u), 1u)];
    var_0 = Struct_1(vec3<bool>(true, func_3(!(!var_0.a.x), global2[_wgslsmith_index_u32(1u, 1u)], ~u_input.a.x & (i32(-1i) * -38683i)).x, func_3(select(func_2(vec3<i32>(u_input.a.x, 0i, 54367i)).a.x, var_0.a.x, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, global1.a.x, var_0.a.x)), ~select(u_input.a.x, u_input.a.x, global1.a.x)).x));
    global1 = Struct_1(func_2(select(vec3<i32>(-2147483647i, 1i, firstLeadingBit(24255i)), ~vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), func_3(select(true, true, true), global2[_wgslsmith_index_u32(~9638u, 1u)], -1i).x)).a);
    let var_1 = any(vec3<bool>(!var_0.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), vec3<i32>(0i, 1i, u_input.a.x) & vec3<i32>(2147483647i, 2147483647i, -1i)) < u_input.a.x, func_2(~(vec3<i32>(u_input.a.x, -1i, -7510i) ^ vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -110259i)) & _wgslsmith_dot_vec3_i32(vec3<i32>(-15067i, 49698i, u_input.a.x) >> (vec3<u32>(54945u, 5670u, 1u) % vec3<u32>(32u)), ~vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), ~countOneBits(0u), 16308i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1000f, -142f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1493f, 129f, -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1204f, 366f, 597f), vec3<f32>(214f, 925f, -685f), var_0.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1277f, -178f, 2132f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1276f, 603f, -246f), vec3<f32>(-989f, -362f, 1254f))))), 0u);
}

