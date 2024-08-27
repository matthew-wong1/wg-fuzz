struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: f32 = 343f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1() -> bool {
    global2 = -324f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-317f, _wgslsmith_f_op_f32(f32(-1f) * -220f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(883f, 1960f, false)))))) - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1956f))))));
    let var_0 = Struct_1(false);
    global1 = _wgslsmith_sub_i32(~(max(-39782i, 38996i) << (u_input.a.x % 32u)), -13946i) | firstLeadingBit(0i);
    let var_1 = true;
    return true;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> i32 {
    global0 = (arg_3.a && true) & any(!select(select(vec3<bool>(arg_3.a, false, arg_3.a), vec3<bool>(arg_3.a, arg_3.a, true), vec3<bool>(arg_3.a, true, arg_3.a)), select(vec3<bool>(false, arg_3.a, arg_3.a), vec3<bool>(arg_3.a, arg_3.a, true), vec3<bool>(true, false, true)), select(false, arg_3.a, arg_3.a)));
    var var_0 = arg_3;
    var var_1 = arg_0;
    global0 = all(vec2<bool>(false, arg_3.a));
    var_0 = Struct_1(func_1());
    return -1i;
}

fn func_2(arg_0: vec3<bool>) -> StorageBuffer {
    global1 = reverseBits(15308i);
    var var_0 = ~vec3<i32>(_wgslsmith_mult_i32(abs(min(2147483647i, -2147483647i)), ~abs(0i)), -90907i, 555i);
    var_0 = ~(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_0.x, 1i, var_0.x) >> (u_input.b.www % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -41599i, 0i) << (u_input.b.zww % vec3<u32>(32u)), min(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(-18890i, -2147483647i, var_0.x)))) & vec3<i32>(1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.x, 92612i, 0i, 0i), vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i), vec4<bool>(true, false, arg_0.x, arg_0.x)), -vec4<i32>(2147483647i, 1i, -2417i, -1i)), 2147483647i));
    var_0 = -vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.x, _wgslsmith_div_i32(var_0.x, 1i)), _wgslsmith_sub_i32(0i, var_0.x) << (~u_input.a.x % 32u)), var_0.x, _wgslsmith_mod_i32(67382i, 1i));
    global0 = any(arg_0.xz);
    return StorageBuffer(34132u, ~select(~max(vec4<u32>(4294967295u, u_input.a.x, 0u, 1u), vec4<u32>(5498u, 11270u, u_input.a.x, 0u)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 0u), u_input.a.x | 0u, ~0u, 6911u), arg_0.x), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(func_3(var_0.x, 1547f, 1u, Struct_1(true)), 2147483647i)), ~firstTrailingBit(vec2<i32>(var_0.x, -2147483647i) ^ var_0.xz)), _wgslsmith_sub_i32(11410i, ~var_0.x), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.b.x, u_input.b.x);
    let var_1 = -223f;
    var var_2 = Struct_1(all(vec2<bool>(true, true)));
    let var_3 = Struct_1(true);
    let var_4 = select(true, false && func_1(), true);
    global0 = var_4;
    var_0 = u_input.b.xx;
    let x = u_input.a;
    s_output = func_2(!select(select(vec3<bool>(var_4, true, var_2.a), select(vec3<bool>(var_4, var_4, var_2.a), vec3<bool>(var_2.a, var_4, false), vec3<bool>(var_2.a, false, var_2.a)), -104f > var_1), !vec3<bool>(false, true, var_4), vec3<bool>(all(vec4<bool>(false, false, true, var_2.a)), false || var_3.a, true)));
}

