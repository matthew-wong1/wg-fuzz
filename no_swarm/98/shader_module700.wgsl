struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = !(!select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true))));
    return -abs(max(-12287i, -1900i));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    return ~(firstTrailingBit(vec4<u32>(arg_0, arg_0, select(1u, arg_0, true), arg_0)) << (firstLeadingBit(countOneBits(abs(vec4<u32>(arg_0, arg_0, 8357u, 4294967295u)))) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-792f * 1819f), _wgslsmith_f_op_f32(-1439f + 804f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 708f), vec2<f32>(-1000f, 548f)))))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_0.x - var_0.x)) * 892f)))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(func_4(~(~vec4<u32>(arg_0, var_0, var_0, 1312u)) << (func_3(~arg_0) % vec4<u32>(32u)), select(-vec3<i32>(u_input.a.x, arg_1.b, u_input.a.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, -1i), vec3<i32>(-40995i, 0i, 13179i)), -firstTrailingBit(vec3<i32>(0i, 66075i, arg_1.b)), true), arg_1)), arg_1, arg_1.a.zx, true);
    var var_2 = !(!arg_1.a);
    let var_3 = select(arg_1.a.xzw, !select(select(!vec3<bool>(true, var_1.b.d, var_2.x), !vec3<bool>(arg_1.d, false, arg_1.d), !var_1.b.a.wyx), var_1.b.a.xyy, arg_1.c.a), select(arg_1.a.yxy, arg_1.a.wyy, var_1.d));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~countOneBits(vec4<u32>(4294967295u, arg_0, 2099u, 1u)), ~abs(vec3<i32>(0i, var_1.b.b, -24132i)), Struct_2(vec4<bool>(arg_1.a.x, true, var_2.x, arg_1.a.x), firstTrailingBit(var_1.b.b), var_1.b.c, arg_1.d)))), arg_1, vec2<bool>(false, all(var_2.wyz)), var_1.a != _wgslsmith_f_op_f32(sign(308f)));
    return var_4.b.c;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(exp2(arg_0));
    var var_1 = 2147483647i;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_1 = u_input.a.x;
    let var_2 = arg_1;
    return func_2(~(~(~1u)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<bool>(all(vec4<bool>(false, false, true, false)) || all(vec3<bool>(true, false, false)), _wgslsmith_mod_i32(0i, u_input.a.x) < u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 1i) == -1i, true), u_input.a.x, func_5(126f, Struct_2(vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), true), func_1(abs(vec3<u32>(4294967295u, 42359u, 1u)), u_input.a.x, 0u), func_2(47610u >> (0u % 32u), Struct_2(vec4<bool>(false, false, false, true), u_input.a.x, Struct_1(true), true)), true)), !any(vec4<bool>(false, true, true, func_5(161f, Struct_2(vec4<bool>(false, true, true, true), 2147483647i, Struct_1(false), false)).a)));
    var_0 = Struct_2(var_0.a, 55809i, Struct_1(any(vec2<bool>(!var_0.d, select(false, true, true)))), true);
    let var_1 = !select(select(!vec4<bool>(true, true, var_0.c.a, var_0.a.x), select(vec4<bool>(false, var_0.c.a, true, var_0.c.a), !vec4<bool>(true, false, var_0.c.a, false), !vec4<bool>(false, var_0.d, var_0.c.a, false)), var_0.a), var_0.a, all(!select(vec4<bool>(var_0.c.a, false, true, false), vec4<bool>(var_0.c.a, var_0.c.a, var_0.d, var_0.a.x), vec4<bool>(var_0.c.a, var_0.d, false, true))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(func_3(~1u).x, 71106u), min(54596u, 15618u), 2018u), ~(~vec3<u32>(1u, 1u, 1u)));
    var_0 = Struct_2(vec4<bool>(var_0.d, var_0.c.a, var_1.x && any(var_0.a.yyz), true != func_2(~1u, Struct_2(var_1, var_0.b, var_0.c, false)).a), min(1i, _wgslsmith_mult_i32(reverseBits(-2147483647i), var_0.b)), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(238f - 1838f) + -1288f)) >= _wgslsmith_f_op_f32(ceil(-3414f)));
    var var_3 = ~abs(vec3<i32>(select(u_input.a.x, ~var_0.b, true), countOneBits(2147483647i), _wgslsmith_mod_i32(u_input.a.x, abs(6414i))));
    let var_4 = func_2(select(_wgslsmith_sub_u32(reverseBits(42483u) ^ firstTrailingBit(0u), abs(7151u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 107498u), vec2<u32>(~4294967295u, _wgslsmith_mult_u32(1u, 0u))), all(!select(var_0.a, vec4<bool>(var_0.d, var_0.d, false, var_1.x), var_1))), Struct_2(!var_1, -10950i, Struct_1(var_1.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(-736f);
}

