struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(abs(firstLeadingBit(vec2<i32>(14664i, -14734i) << (u_input.a.yz % vec2<u32>(32u))))), arg_1.b, arg_1.e, arg_1.a, arg_1.e);
    var_0 = arg_1;
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-var_0.c.a, vec2<i32>(u_input.b, 16913i)), vec2<i32>(countOneBits(-32543i), firstLeadingBit(12034i)))), ~(-2147483647i), Struct_1(select(_wgslsmith_div_vec2_i32(min(vec2<i32>(-32730i, -2147483647i), var_0.e.a), vec2<i32>(-21242i, -2147483647i)), var_0.a.a, true)), Struct_1(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 1790i), var_0.d.a ^ var_0.a.a))), Struct_1(var_0.e.a));
    var var_2 = arg_1.c;
    let var_3 = var_1;
    return !select(vec3<bool>(true, all(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false))), false), vec3<bool>(true, true, true));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = !(!(!any(vec4<bool>(true, true, true, true))));
    return select(vec3<bool>(!var_0, any(select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0)), var_0), select(!vec3<bool>(var_0, any(vec4<bool>(false, true, var_0, false)), false || var_0), vec3<bool>(_wgslsmith_f_op_f32(2059f + arg_0.x) >= -1767f, true, var_0), vec3<bool>(var_0, _wgslsmith_sub_u32(arg_1.x, 25759u) > ~arg_1.x, _wgslsmith_dot_vec3_u32(arg_1.xzz, u_input.a) < ~arg_1.x)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), Struct_2(Struct_1(vec2<i32>(2147483647i, u_input.b)), u_input.b, Struct_1(select(arg_2.a.zy, vec2<i32>(arg_2.a.x, u_input.b), true)), Struct_1(firstTrailingBit(vec2<i32>(-1i, -1655i))), Struct_1(arg_2.a.xz))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = false;
    var var_1 = reverseBits(~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(26550i, 36970i, u_input.b, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 1i))), -firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))));
    var_0 = !(!all(select(vec3<bool>(true, false, true), func_2(vec2<f32>(324f, arg_0), vec4<u32>(u_input.a.x, u_input.c, u_input.c, 0u), Struct_3(var_1.zyz)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    var_0 = true;
    return Struct_1(~(firstTrailingBit(var_1.yx) | _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, -2147483647i)), -var_1.zy, max(vec2<i32>(63061i, var_1.x), vec2<i32>(52832i, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-332f);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-450f)), -1000f, any(vec4<bool>(true, false, true, false))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(166f, 1114f))))), 926f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1244f)), 1034f));
    var var_2 = vec4<bool>(func_3(-1704f, Struct_2(func_1(_wgslsmith_f_op_f32(244f + var_1.x)), -firstLeadingBit(var_0.a.x), Struct_1(-vec2<i32>(var_0.a.x, 0i)), var_0, func_1(_wgslsmith_f_op_f32(var_1.x * 2421f)))).x, true, all(vec3<bool>(any(vec4<bool>(true, false, true, false)), !func_3(573f, Struct_2(var_0, var_0.a.x, var_0, var_0, Struct_1(vec2<i32>(u_input.b, var_0.a.x)))).x, select(true, true, true))), true || any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f));
    let var_4 = vec3<bool>(false, false, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b, -27793i, u_input.b, -15919i), vec4<i32>(u_input.b, u_input.b, 36485i, u_input.b), true), -vec4<i32>(-26171i, var_0.a.x, var_0.a.x, 2147483647i)) ^ ~vec4<i32>(-9846i, 36460i, -21872i, 1i), vec4<i32>(-1i, _wgslsmith_add_i32(~var_0.a.x, 0i), u_input.b, _wgslsmith_div_i32(var_0.a.x, 68818i)), var_2.x), -70934i, u_input.c, vec3<i32>(_wgslsmith_mult_i32(u_input.b ^ 1i, 2147483647i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(41218i, u_input.b, u_input.b), vec3<i32>(20896i, 1259i, 2147483647i), var_4), ~vec3<i32>(11039i, u_input.b, u_input.b)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.a.x, -2147483647i, var_0.a.x), var_0.a.x)) ^ vec3<i32>(22447i, func_1(133f).a.x, _wgslsmith_add_i32(-8742i, var_0.a.x) << (_wgslsmith_div_u32(u_input.a.x, u_input.c) % 32u)), abs(abs(u_input.a.x)));
}

