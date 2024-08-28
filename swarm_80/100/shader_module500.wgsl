struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    var var_0 = abs(u_input.c);
    var var_1 = Struct_1(vec2<i32>(17392i, firstTrailingBit(u_input.a.x)));
    let var_2 = ~(-vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, i32(-1i) * -25006i), -1i));
    let var_3 = Struct_1(-(vec2<i32>(-1i) * -(var_1.a >> (vec2<u32>(u_input.b, 6843u) % vec2<u32>(32u)))));
    var var_4 = all(vec2<bool>(!all(vec2<bool>(false, false)), true));
    return vec4<bool>(true, select(true, all(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), !(true & all(vec2<bool>(true, true)))), false, any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), false)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = -195f;
    let var_1 = ~arg_0.x;
    let var_2 = select(vec3<bool>(true, true, true), vec3<bool>(true, any(select(vec4<bool>(true, false, false, true), func_3(), all(vec3<bool>(false, false, true)))), true), !(!vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f), -445f);
    var var_3 = 0u == _wgslsmith_div_u32(~_wgslsmith_add_u32(95565u, 1u & u_input.b), _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(u_input.c, u_input.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 136511u, 1u, u_input.c) >> (u_input.d % vec4<u32>(32u)), ~u_input.d)));
    return Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(1634i, ~_wgslsmith_div_i32(0i, var_1)), max(arg_0.zx, _wgslsmith_mod_vec2_i32(arg_0.zw >> (u_input.d.zy % vec2<u32>(32u)), arg_0.wx))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_3();
    var var_1 = ((_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c) | vec2<u32>(4294967295u, 26892u), min(vec2<u32>(40988u, u_input.c), vec2<u32>(36184u, 23829u))) << (vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), max(u_input.d.x, 1u)) % vec2<u32>(32u))) | u_input.d.wy) | u_input.d.yx;
    let var_2 = func_2(u_input.a);
    var_1 = vec2<u32>(26420u, var_1.x) << (u_input.d.xx % vec2<u32>(32u));
    var var_3 = Struct_1(abs(~vec2<i32>(_wgslsmith_div_i32(-24116i, 2147483647i), abs(arg_3.a.x))));
    return func_2(firstLeadingBit(vec4<i32>(firstTrailingBit(11090i), ~(arg_3.a.x | var_3.a.x), min(2147483647i, u_input.a.x), _wgslsmith_div_i32(var_3.a.x ^ arg_2.a.x, _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, var_0.x), min(u_input.b, var_0.x)), u_input.d.x), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.wz, vec2<u32>(u_input.b, 0u)), ~4294967295u))), var_0.wz);
    var_1 = min(~(vec2<u32>(4294967295u, ~u_input.d.x) << ((var_0.wx | ~vec2<u32>(var_1.x, u_input.d.x)) % vec2<u32>(32u))), ~(~(firstTrailingBit(vec2<u32>(var_1.x, 55215u)) >> (vec2<u32>(4294967295u, 49675u) % vec2<u32>(32u)))));
    let var_2 = func_2(~(~(~vec4<i32>(arg_0.a.x, 15491i, u_input.a.x, 15195i) & select(u_input.a, u_input.a, vec4<bool>(true, true, false, false)))));
    var var_3 = false;
    return Struct_1(~(-vec2<i32>(u_input.a.x, arg_2.a.x) >> (vec2<u32>(u_input.d.x, 1u) % vec2<u32>(32u))) & vec2<i32>(-48603i, var_2.a.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: bool) -> i32 {
    let var_0 = func_5(func_4(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(sign(407f)), _wgslsmith_f_op_f32(f32(-1f) * -1069f))), Struct_1(firstLeadingBit(-u_input.a.xx)), func_2(~(~u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(513f, -1140f) + _wgslsmith_f_op_f32(round(-1873f))))))), func_2(vec4<i32>(i32(-1i) * -2147483647i, func_4(false, vec4<f32>(2568f, 155f, -421f, 224f), Struct_1(vec2<i32>(u_input.a.x, -12496i)), Struct_1(u_input.a.yy)).a.x >> (~4209u % 32u), -21656i, u_input.a.x)));
    let var_1 = vec4<i32>(var_0.a.x, ~(-(firstLeadingBit(var_0.a.x) << (0u % 32u))), func_5(Struct_1(var_0.a), -1058f, var_0).a.x | ~(-var_0.a.x), firstLeadingBit(u_input.a.x));
    let var_2 = max(reverseBits(firstTrailingBit(u_input.d)), abs(u_input.d)) << (~reverseBits(~u_input.d ^ vec4<u32>(4294967295u, u_input.c, u_input.b, 47828u)) % vec4<u32>(32u));
    let var_3 = 83727u;
    var var_4 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(595f)) + -437f)) >= _wgslsmith_f_op_f32(abs(1072f)), select(!((false | arg_2) || true), false, !arg_1.x));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.a.x, _wgslsmith_dot_vec4_i32(countOneBits(abs(abs(u_input.a))), -(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)) ^ ~vec4<i32>(-34593i, 67458i, u_input.a.x, u_input.a.x))));
    let var_1 = u_input.d.wz;
    var var_2 = ~vec2<i32>(u_input.a.x ^ u_input.a.x, func_1(vec4<bool>(true, true, true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true)), false));
    let var_3 = _wgslsmith_div_vec3_u32(u_input.d.wyz, ~(~firstLeadingBit(vec3<u32>(4294967295u, 26495u, u_input.b)) & ~(~vec3<u32>(0u, 4294967295u, 1u))));
    let var_4 = func_2(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_3.yy));
}

