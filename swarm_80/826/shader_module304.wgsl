struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(25564i, -85242i, vec3<bool>(false, false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = countOneBits(4294967295u);
    let var_1 = !arg_2.c;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(322f - _wgslsmith_f_op_f32(239f + 1478f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -920f), _wgslsmith_f_op_f32(select(-437f, _wgslsmith_f_op_f32(trunc(-282f)), any(arg_2.c.zy))))), global0.c.x));
    global0 = arg_1;
    let var_3 = !(!(!select(!vec4<bool>(arg_1.c.x, false, true, false), !vec4<bool>(true, false, arg_0.x, arg_1.c.x), u_input.a.x >= 1u)));
    return arg_2.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = abs(_wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(-vec4<i32>(9495i, arg_0.a, -4163i, -1i), ~arg_1), vec4<i32>(abs(_wgslsmith_mult_i32(1i, arg_1.x)), reverseBits(func_3(arg_0.c.zz, Struct_1(global0.a, arg_1.x, vec3<bool>(true, true, arg_0.c.x)), arg_0)), 2147483647i, arg_1.x)));
    var var_1 = Struct_1(~_wgslsmith_add_i32(~(~0i), 711i), ~(-2147483647i), vec3<bool>(any(!vec4<bool>(global0.c.x, false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-592f, -162f, false))) <= -676f, all(select(vec4<bool>(false, false, global0.c.x, arg_0.c.x), vec4<bool>(false, arg_0.c.x, global0.c.x, false), false)) || true));
    return vec3<bool>(false, !all(!(!vec4<bool>(global0.c.x, var_1.c.x, false, false))), !any(var_1.c));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.c.x;
    global0 = Struct_1(36441i, arg_0.b, select(func_2(arg_0, vec4<i32>(max(arg_0.b, global0.a), arg_0.b, firstTrailingBit(-7497i), 1i)), vec3<bool>(arg_0.c.x, all(vec3<bool>(arg_0.c.x, global0.c.x, arg_0.c.x)) | true, all(select(vec4<bool>(true, arg_0.c.x, global0.c.x, global0.c.x), vec4<bool>(false, global0.c.x, global0.c.x, false), true))), func_2(Struct_1(1i, 32812i, select(vec3<bool>(global0.c.x, false, global0.c.x), arg_0.c, true)), _wgslsmith_div_vec4_i32(vec4<i32>(1323i, arg_0.a, -32788i, 37722i), ~vec4<i32>(global0.a, global0.a, 19179i, global0.a)))));
    var var_1 = func_2(Struct_1(countOneBits(_wgslsmith_mult_i32(max(global0.b, global0.b), 66953i)), select(i32(-1i) * -1i, global0.a, any(!vec4<bool>(true, arg_0.c.x, false, arg_0.c.x))), global0.c), vec4<i32>(global0.a, ~max(i32(-1i) * -47116i, -2147483647i), -40639i, global0.b));
    let var_2 = Struct_1(global0.b, arg_0.a, select(global0.c, vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.b, arg_0.a, -1i), vec4<i32>(957i, global0.a, -2147483647i, global0.a)) != firstLeadingBit(1i), global0.c.x, !arg_0.c.x), vec3<bool>(var_1.x, func_2(Struct_1(arg_0.a, -10322i, vec3<bool>(false, true, true)), vec4<i32>(1214i, -1i, -10123i, -26432i)).x, all(vec4<bool>(arg_0.c.x, arg_0.c.x, true, true)))));
    var var_3 = Struct_1(-(global0.b << (0u % 32u)), -26655i, global0.c);
    return Struct_1(arg_0.b & 21224i, ~abs(arg_0.a) << (44483u % 32u), vec3<bool>(var_1.x, true, false));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = arg_0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-449f)));
    let var_1 = func_1(Struct_1(-2147483647i, ~countOneBits(arg_2.a), !select(global0.c, func_2(arg_2, vec4<i32>(-1i, 62379i, arg_2.b, -20699i)), func_1(Struct_1(arg_2.b, 15268i, global0.c)).c)));
    let var_2 = vec3<i32>(var_1.b, _wgslsmith_mult_i32(arg_2.b, 20720i), -18722i);
    var var_3 = var_1.c.x;
    var var_4 = arg_2;
    return arg_0 > arg_0;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = func_1(Struct_1(global0.a, -firstLeadingBit(global0.b) >> (_wgslsmith_mod_u32(u_input.c.x, u_input.a.x >> (4294967295u % 32u)) % 32u), global0.c));
    let var_0 = Struct_1(firstLeadingBit(-2147483647i), ~select(_wgslsmith_mult_i32(global0.a, global0.b) & firstLeadingBit(global0.a), _wgslsmith_clamp_i32(reverseBits(global0.a), firstTrailingBit(2147483647i), firstTrailingBit(global0.a)), arg_1.x >= _wgslsmith_f_op_f32(-arg_1.x)), global0.c);
    let var_1 = Struct_1(-2147483647i, -62764i, var_0.c);
    let var_2 = func_1(Struct_1(var_0.a, -32853i, var_0.c));
    global0 = func_1(Struct_1(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(-2147483647i, var_1.b, 77594i, -55059i), vec4<i32>(-15155i, var_2.a, global0.a, global0.a), vec4<bool>(false, false, true, true)), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, var_1.b, global0.a, var_2.a), vec4<i32>(var_2.a, var_0.b, 12864i, var_1.b))), 1i, var_1.c));
    return func_1(func_1(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    let var_1 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, u_input.a.x))), 22274u), _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b.zyy, u_input.d)) >> (u_input.c.x % 32u), 18892u);
    var_0 = _wgslsmith_div_i32(14163i, -reverseBits(global0.b));
    var var_2 = func_5(!func_4(_wgslsmith_f_op_f32(f32(-1f) * -1629f), !global0.c.x, func_1(Struct_1(2147483647i, global0.b, vec3<bool>(global0.c.x, global0.c.x, global0.c.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-705f, _wgslsmith_f_op_f32(floor(-1167f)), _wgslsmith_f_op_f32(max(1839f, 553f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(114f, -619f, -844f), vec3<f32>(875f, 1081f, 179f), global0.c.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1442f, 291f, -822f)))), global0.c.x)), global0.c.yy);
    var var_3 = 916f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.d.x & 1u, abs(1u << (_wgslsmith_sub_u32(u_input.d.x, 1u) % 32u))), ~((firstLeadingBit(vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)) << (~u_input.a.xzy % vec3<u32>(32u))) ^ var_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(453f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1398f)) - _wgslsmith_div_f32(-260f, -411f))), 577f), 47204u);
}

