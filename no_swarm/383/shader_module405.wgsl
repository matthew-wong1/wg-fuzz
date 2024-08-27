struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-614f - _wgslsmith_f_op_f32(select(-1836f, 670f, any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + 755f);
    var var_2 = _wgslsmith_f_op_f32(max(1291f, 1000f));
    var var_3 = -reverseBits(firstLeadingBit(vec3<i32>(arg_0.c, min(arg_0.c, -11449i), arg_0.c)));
    let var_4 = arg_0.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -493f));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    let var_1 = arg_3.c;
    let var_2 = arg_0;
    let var_3 = arg_1;
    var var_4 = arg_0;
    return ~(~(~4294967295u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1687f)), arg_0.b))), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(345f, arg_0.b)), -410f)) * arg_0.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + -1051f) * -595f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -1207f, arg_0.b, -165f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-384f, arg_0.b, 747f, -1070f), vec4<f32>(-691f, 897f, arg_0.b, -1711f)))))));
    var var_1 = countOneBits(func_4(Struct_1(~vec3<u32>(arg_0.a.x, u_input.a, 0u), _wgslsmith_f_op_f32(func_3(arg_0)), ~_wgslsmith_div_i32(arg_0.c, 1i)), false, ~(-32866i), Struct_1(~(~vec3<u32>(18077u, 4294967295u, u_input.a)), -213f, firstTrailingBit(select(arg_0.c, arg_0.c, false)))));
    var_1 = ~(~_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.a.x, arg_0.a.x), 1u << (arg_0.a.x % 32u))) | ~_wgslsmith_mult_u32(~23332u, u_input.a);
    var var_2 = min(0i, _wgslsmith_mod_i32(23653i, 17915i));
    let var_3 = any(!select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    return Struct_1(arg_0.a, 622f, _wgslsmith_mult_i32(-3496i >> (((u_input.a << (u_input.a % 32u)) | ~1u) % 32u), abs(min(arg_0.c, ~arg_0.c))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    let var_0 = func_2(arg_0);
    var var_1 = vec3<f32>(456f, 1000f, _wgslsmith_f_op_f32(func_3(arg_0)));
    let var_2 = Struct_1(vec3<u32>(~arg_0.a.x, firstTrailingBit(99845u), 14923u), _wgslsmith_f_op_f32(-260f - var_0.b), 28058i);
    let var_3 = arg_0.a.x ^ arg_0.a.x;
    let var_4 = 1u;
    return _wgslsmith_f_op_f32(trunc(738f));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    let var_0 = false;
    var var_1 = vec2<bool>(false, any(vec3<bool>(!(!var_0), true, true)));
    var_1 = select(!(!vec2<bool>(var_1.x, any(vec4<bool>(false, var_1.x, true, var_1.x)))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), vec2<bool>(false, true)), !vec2<bool>(var_0, false), select(vec2<bool>(true, var_0), vec2<bool>(false, true), select(vec2<bool>(var_0, false), vec2<bool>(var_1.x, var_0), true))), !(!(!vec2<bool>(false, var_1.x))), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1388f) < _wgslsmith_f_op_f32(arg_2.b - arg_2.b), true)), vec2<bool>(!(!var_1.x), var_0));
    var var_2 = arg_2;
    var var_3 = !(!(!vec2<bool>(var_1.x, var_0 && var_1.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(select(vec3<u32>(u_input.a, 9792u, u_input.a) ^ vec3<u32>(0u, 35735u, u_input.a), vec3<u32>(2585u, 4294967295u, u_input.a), true) | ~vec3<u32>(55561u, 18477u, u_input.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<u32>(100731u, u_input.a, u_input.a), -455f, -1i), _wgslsmith_div_vec2_f32(vec2<f32>(439f, 294f), vec2<f32>(-1180f, 233f)))))), -1i), -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-37559i, 1i, 2040i), -vec3<i32>(-580i, 0i, 2147483647i)), abs(vec3<i32>(-1i, 0i, 63007i))), Struct_1(vec3<u32>(u_input.a, 14150u, _wgslsmith_mult_u32(u_input.a << (u_input.a % 32u), ~279u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f - -1000f))), ~(~(i32(-1i) * -1i))));
    var var_1 = Struct_1(~(~max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, 29652u)), firstLeadingBit(vec3<u32>(u_input.a, 61065u, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(54406u, 4294967295u, u_input.a), _wgslsmith_f_op_f32(1424f * 207f), func_2(Struct_1(vec3<u32>(59859u, 4294967295u, 16560u), 1000f, 1i)).c)))), 0i);
    var var_2 = _wgslsmith_add_u32(4096u, max(21623u, ~_wgslsmith_mult_u32(u_input.a, var_1.a.x)));
    var var_3 = func_2(Struct_1(select(var_1.a, abs(var_1.a), vec3<bool>(true, true, true)), _wgslsmith_div_f32(var_1.b, var_1.b), 8960i));
    var var_4 = Struct_1(var_3.a, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) + _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_add_i32(var_3.c, var_3.c));
    var var_5 = select(false, true, !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))) & ((min(u_input.a, 7956u) >> (firstTrailingBit(50140u) % 32u)) >= _wgslsmith_div_u32(var_3.a.x, 6277u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, var_1.a.x), ~(~_wgslsmith_mult_u32(var_3.a.x, var_1.a.x))), ~var_1.a.zz, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(-(vec2<i32>(-2147483647i, 16162i) | vec2<i32>(1i, var_1.c)), -(vec2<i32>(-1i, var_3.c) ^ vec2<i32>(-4157i, 10496i))), ~(~(~vec2<i32>(var_1.c, var_4.c))), firstLeadingBit(vec2<i32>(3974i, 35470i)) ^ ~(~vec2<i32>(var_1.c, -1i))), var_1.a.zz, vec2<u32>(~var_3.a.x, ~(~(~0u))));
}

