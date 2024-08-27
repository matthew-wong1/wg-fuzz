struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> i32 {
    return 20809i;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>) -> vec2<f32> {
    var var_0 = countOneBits(vec4<i32>(_wgslsmith_clamp_i32(countOneBits(_wgslsmith_div_i32(1i, u_input.b.x)), 1i, -2018i), -(~(~u_input.c)), ~(-u_input.b.x | u_input.b.x), _wgslsmith_mult_i32(-2147483647i, u_input.c)));
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 0i, 8562i, -4488i), vec4<i32>(u_input.b.x, u_input.b.x, -2892i, 0i)), -vec4<i32>(var_0.x, u_input.c, -2147483647i, 2147483647i)), select(countOneBits(vec4<i32>(0i, 2147483647i, var_0.x, 0i)), -vec4<i32>(var_0.x, -2147483647i, u_input.b.x, 33258i), !vec4<bool>(true, arg_1, false, arg_1))), min(countOneBits(vec4<i32>(2147483647i, 1i, 0i, -64784i)), vec4<i32>(1i, var_0.x, ~u_input.b.x, _wgslsmith_add_i32(u_input.c, -1i))), vec4<i32>(u_input.c, var_0.x, func_2(vec3<i32>(var_0.x, 2147483647i, -1i), vec4<u32>(39942u, u_input.a, 1u, 0u)) >> (u_input.e % 32u), abs(-u_input.b.x))) & reverseBits(vec4<i32>(2147483647i, firstTrailingBit(-9622i), -9417i, var_0.x));
    let var_1 = !(!(!select(vec4<bool>(true, arg_2.x, false, arg_1), select(vec4<bool>(arg_2.x, arg_2.x, arg_1, false), vec4<bool>(false, arg_2.x, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(arg_1, arg_0.c, arg_1, true), vec4<bool>(true, true, true, arg_1), vec4<bool>(true, false, arg_0.c, false)))));
    let var_2 = select(_wgslsmith_mod_vec2_i32(var_0.yx, vec2<i32>(abs(1i), ~2147483647i)) >> (_wgslsmith_sub_vec2_u32(~countOneBits(vec2<u32>(u_input.e, u_input.a)), min(vec2<u32>(u_input.d, 4294967295u) ^ vec2<u32>(u_input.e, u_input.d), ~vec2<u32>(u_input.d, u_input.d))) % vec2<u32>(32u)), vec2<i32>(40796i, min(-1i, var_0.x)) << (min(vec2<u32>(u_input.e, 93968u), vec2<u32>(14334u, u_input.a << (83041u % 32u))) % vec2<u32>(32u)), all(!(!select(vec4<bool>(false, var_1.x, false, false), var_1, false))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 346f) * 728f)) + arg_0.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: bool) -> vec4<f32> {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(~(~4294967295u) >> (0u % 32u), ~(u_input.d & _wgslsmith_clamp_u32(u_input.e, 4294967295u, u_input.a))), ~(~(~min(u_input.a, 4294967295u))), ~(~329u), u_input.a);
    var var_1 = -_wgslsmith_mult_i32(u_input.c, -_wgslsmith_div_i32(reverseBits(17592i), func_2(vec3<i32>(u_input.c, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, 71407u, 0u, var_0.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1)))) * arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 1622f))) * _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_1, arg_1, arg_3), true, vec2<bool>(true, true))))), any(vec3<bool>(true, false, select(all(vec2<bool>(arg_3, arg_3)), any(vec4<bool>(arg_3, true, true, arg_3)), !arg_3))));
    let var_3 = arg_2;
    var var_4 = ~(~(~(var_0.x & select(4113u, 0u, false))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + arg_2.a)), arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-527f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, var_3.a)))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xx)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, arg_0.x)))), arg_0.xw), _wgslsmith_f_op_vec2_f32(arg_0.zy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1190f + arg_0.x), _wgslsmith_f_op_f32(728f * arg_0.x)))), true);
    var var_2 = u_input.c;
    var_2 = u_input.c >> (u_input.e % 32u);
    var var_3 = u_input.a;
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-229f)) * 991f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(-1414f), vec2<f32>(1039f, -1530f), Struct_2(280f), true))))));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -856f), var_0.a, _wgslsmith_f_op_f32(-var_0.a), var_0.a) + vec4<f32>(_wgslsmith_f_op_f32(1203f - -268f), -140f, _wgslsmith_div_f32(753f, -975f), _wgslsmith_f_op_f32(max(var_0.a, 435f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.b.x), _wgslsmith_sub_i32(u_input.c, -62563i)), u_input.b), u_input.b), _wgslsmith_clamp_u32(u_input.a, 33189u, u_input.d), firstTrailingBit(firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-52721i, u_input.b.x, 29481i), vec3<i32>(49461i, u_input.c, u_input.c))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1770f, -250f, false))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, var_0.a), vec2<f32>(var_1.a, 531f))))));
}

