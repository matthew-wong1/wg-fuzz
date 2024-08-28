struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1189u, 0u, 44235u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = select(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), arg_0 < global0.x), select(true, false, true)), !vec3<bool>(true, false, any(vec4<bool>(false, true, true, true)) & true), !select(vec3<bool>(true, -7453i <= u_input.a, true), vec3<bool>(true, true, true), 2147483647i == _wgslsmith_sub_i32(u_input.a, u_input.a)));
    let var_1 = 5221i;
    var var_2 = Struct_1(~(-(~vec3<i32>(u_input.a, -40474i, u_input.a))) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(13318u, arg_0, global0.x)), vec3<u32>(arg_0, 79796u, 28757u)), arg_0, ~select(arg_0, 75930u, true)) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1f)))), 126f));
    var var_4 = Struct_1(abs(~var_2.a));
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(~u_input.a, 33355i), -36657i);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    var var_0 = all(arg_3.zx);
    var var_1 = -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~firstLeadingBit(vec2<i32>(-20970i, arg_0)), max(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 36084i), vec2<i32>(arg_0, arg_0)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-40969i, -1i), vec2<i32>(-34827i, 2147483647i), vec2<i32>(u_input.a, -35579i))), countOneBits(select(vec2<i32>(2147483647i, 0i), vec2<i32>(-6954i, -1i), true))), countOneBits(-vec2<i32>(9664i, u_input.a)));
    let var_2 = ~firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-7017i, arg_0, u_input.a), vec3<i32>(u_input.a, arg_0, 55479i)), 1i, 2147483647i << (global0.x % 32u)) & vec3<i32>(~(-1i), 1691i, func_3(global0.x)));
    var_0 = arg_3.x;
    var var_3 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, select(-1i, var_2.x, false), 0i), abs(vec3<i32>(-1i, -2147483647i, arg_0))), vec3<i32>(u_input.a, 2147483647i, u_input.a)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-arg_2), all(select(select(arg_3, vec3<bool>(arg_3.x, false, false), vec3<bool>(arg_3.x, false, false)), select(vec3<bool>(false, arg_3.x, false), vec3<bool>(true, arg_3.x, false), false), arg_3)))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -788f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(39905i, 462f, -230f, vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(arg_1.x + arg_1.x))), _wgslsmith_f_op_f32(trunc(1114f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -110f) - arg_1.x))));
    let var_2 = arg_0;
    let var_3 = var_2;
    var var_4 = global0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -20512i), vec2<i32>(u_input.a, 8670i))), -_wgslsmith_mult_vec2_i32(vec2<i32>(18876i, u_input.a), vec2<i32>(u_input.a, u_input.a))), -12616i, reverseBits(53741i) >> (_wgslsmith_clamp_u32(88364u, 24247u, ~4294967295u) % 32u)));
    let var_1 = (abs(~global0.zz) ^ firstTrailingBit(min(_wgslsmith_div_vec2_u32(global0.yw, global0.xx), global0.zy))) & vec2<u32>(global0.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(79543u, global0.x, global0.x, global0.x), select(vec4<u32>(6525u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 5191u, 0u), vec4<bool>(true, false, true, false))), 25457u));
    var var_2 = var_0.a ^ vec3<i32>(max(~_wgslsmith_dot_vec2_i32(var_0.a.xy, var_0.a.xz), _wgslsmith_div_i32(17677i, var_0.a.x) << (~var_1.x % 32u)), _wgslsmith_mult_i32(var_0.a.x, min(~(-18302i), _wgslsmith_div_i32(-39535i, var_0.a.x))), abs(-1i));
    var var_3 = !vec4<bool>(any(vec3<bool>(true, any(vec2<bool>(false, true)), false)), (-613f <= _wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(-11208i, -33657i, var_2.x)), vec2<f32>(1043f, -1000f), Struct_1(var_0.a), vec2<i32>(-23292i, u_input.a)))) | !all(vec3<bool>(false, true, false)), true, true);
    var_0 = Struct_1((var_0.a ^ firstTrailingBit(reverseBits(var_0.a))) & var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_2.x, reverseBits(var_0.a.x)), var_1.x, ~countOneBits(var_1.x));
}

