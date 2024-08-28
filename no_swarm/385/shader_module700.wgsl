struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-654f * 205f));
    var var_1 = global0.a;
    let var_2 = -firstTrailingBit(min(vec2<i32>(global0.a, u_input.d.x) & u_input.d.wy, u_input.b));
    global1 = -1302f;
    var var_3 = vec4<i32>(abs(var_2.x), _wgslsmith_sub_i32(abs(~global0.c) << (1u % 32u), u_input.b.x), firstTrailingBit(var_2.x), -9914i);
    return vec3<bool>(any(!vec4<bool>(true, true, true, var_0 <= 920f)), (all(vec3<bool>(true, false, false)) & all(vec3<bool>(true, true, true))) != any(vec4<bool>(true, select(false, false, true), true, true)), (!any(vec3<bool>(false, false, true)) | any(vec4<bool>(true, true, true, true))) & true);
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_mult_i32(2147483647i, arg_0.x);
    var var_1 = -arg_0.x;
    let var_2 = !(!select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), func_3(), vec3<bool>(true, true, true)));
    var var_3 = !vec4<bool>(true, !(!select(true, var_2.x, false)), all(!select(vec3<bool>(var_2.x, true, var_2.x), var_2, false)), all(var_2));
    let var_4 = i32(-1i) * -_wgslsmith_div_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 30783i, -71896i), vec4<i32>(5662i, u_input.b.x, arg_0.x, arg_0.x)));
    return var_3.x & (u_input.a == 398u);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(floor(arg_1.a.x));
    var var_0 = vec2<u32>(abs(_wgslsmith_div_u32(u_input.e, _wgslsmith_mod_u32(8729u | global0.b, 8928u))), 70893u);
    let var_1 = select(vec3<bool>(true, true != func_2(u_input.d.zyy), abs(_wgslsmith_mult_u32(13562u, u_input.e)) <= u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, false, true)) != true, false), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), !func_3());
    let var_2 = Struct_5(0i, _wgslsmith_div_u32(min(~(~54962u), ~(~global0.b)), global0.b), global0.a);
    global1 = arg_1.a.x;
    return Struct_4(arg_3.wxx);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    var var_0 = vec2<f32>(arg_1.a.x, -433f);
    let var_1 = abs(~_wgslsmith_add_vec4_i32(u_input.d, firstLeadingBit(u_input.d ^ vec4<i32>(global0.a, u_input.d.x, global0.c, u_input.b.x))));
    global1 = 739f;
    var var_2 = abs(4294967295u);
    var var_3 = vec4<u32>(~0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(6561u, u_input.a, arg_0.a)), ~(~vec3<u32>(arg_0.a, u_input.e, global0.b))), global0.b), global0.b, 4294967295u);
    return func_1(vec3<i32>(abs(-498i & firstTrailingBit(2147483647i)), global0.a, ~65280i), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -2168f, var_0.x)))), arg_1.a.yx, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(366f)))) + _wgslsmith_f_op_f32(f32(-1f) * -2061f)), 1040f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) * var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a.x, var_0.x)))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> Struct_4 {
    let var_0 = -118f;
    var var_1 = select(!arg_2.a, !arg_2.a, arg_2.a);
    let var_2 = _wgslsmith_div_vec2_u32(~(~arg_2.b.b.zz), arg_2.b.b.xy);
    var var_3 = arg_0;
    var var_4 = firstLeadingBit(vec4<i32>(12830i, _wgslsmith_mod_i32(2147483647i, 48694i), 55001i, select(u_input.b.x, 0i, false)) & firstLeadingBit(vec4<i32>(-1i, -1i, u_input.d.x, u_input.d.x))) & vec4<i32>(53480i, global0.c, reverseBits(-24619i), -2147483647i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b, u_input.a), vec2<u32>(0u, u_input.c)), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(45013u, 4294967295u)), vec2<u32>(u_input.c, 9717u)))), func_4(Struct_2(~(~u_input.a)), func_1(u_input.d.wyx | vec3<i32>(u_input.b.x, 1116i, 2147483647i), Struct_4(vec3<f32>(-1084f, 932f, -517f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(684f, 1384f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(178f, 1000f), vec2<f32>(-476f, -543f)))), vec4<f32>(_wgslsmith_f_op_f32(112f - -1000f), 164f, _wgslsmith_f_op_f32(-101f - 457f), _wgslsmith_f_op_f32(ceil(-1507f))))), Struct_3(vec2<bool>(false, true), Struct_1(firstLeadingBit(~1u), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(4294967295u, global0.b, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 66514u, 28366u), vec3<u32>(global0.b, u_input.e, 15055u), vec3<u32>(global0.b, 4294967295u, global0.b))), 4195u)), global0.b >= 6148u);
    global1 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_1 = Struct_3(!select(vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(any(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, false, false, false))), true), Struct_1(42571u, abs(~vec3<u32>(4294967295u, global0.b, u_input.a)) & (countOneBits(vec3<u32>(16070u, 16476u, u_input.c)) >> (reverseBits(vec3<u32>(1u, u_input.c, 0u)) % vec3<u32>(32u))), _wgslsmith_mod_u32(firstTrailingBit(abs(32309u)), min(global0.b, 1u))));
    var var_2 = Struct_3(vec2<bool>(false, !var_1.a.x), Struct_1(1u, var_1.b.b, ~min(~u_input.a, var_1.b.a << (var_1.b.b.x % 32u))));
    global0 = Struct_5(u_input.d.x, var_1.b.c & var_2.b.c, ~(~global0.a << (0u % 32u)));
    var var_3 = _wgslsmith_div_vec2_f32(var_0.a.yz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.zy * vec2<f32>(430f, var_0.a.x))) - var_0.a.xy), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))))), -47372i <= (1i ^ global0.a))));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - 2185f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1542f + 1769f))) * 964f)))));
    let var_5 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

