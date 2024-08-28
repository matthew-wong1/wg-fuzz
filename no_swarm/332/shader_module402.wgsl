struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<f32>(global0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(957f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.x - global0.c.x), _wgslsmith_f_op_f32(arg_0.c.x + 356f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.c.yx))));
    global0 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(u_input.d, arg_1.a.x), 21971i, arg_0.a.x, ~1i), vec3<i32>(-31493i, arg_1.a.x, i32(-1i) * -arg_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-346f, _wgslsmith_div_f32(global0.c.x, -1925f), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - -1162f))), 831f));
    let var_2 = arg_0.a;
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_3.a, -arg_0.b, arg_3.c);
    global0 = Struct_1(u_input.a, ~u_input.a.wzz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, global0.c.x, global0.c.x, -1500f) + _wgslsmith_f_op_vec4_f32(select(arg_1.c, vec4<f32>(arg_3.c.x, global0.c.x, 826f, 699f), vec4<bool>(true, false, false, true)))) * arg_0.c)));
    let var_1 = arg_3;
    global0 = var_0;
    let var_2 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), arg_0.a.x > 576i), vec4<bool>(true, true, true, true), true);
    return 1294f;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(u_input.a >> (~(~vec4<u32>(518u, u_input.c.x, 4294967295u, u_input.c.x)) % vec4<u32>(32u)), u_input.a.wyw, vec4<f32>(_wgslsmith_f_op_f32(floor(-1991f)), -311f, global0.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c.x)))));
    var var_1 = Struct_1(min(-vec4<i32>(u_input.b.x, 28513i, 29444i, global0.b.x), vec4<i32>(1i, var_0.b.x, var_0.a.x | -30845i, var_0.b.x)) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(18180i, -8037i, global0.a.x, 1i), firstTrailingBit(var_0.a)), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.b.x, global0.a.x, var_0.a.x), var_0.a)), vec3<i32>(1i ^ global0.b.x, var_0.a.x, global0.b.x) & -var_0.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)))));
    let var_2 = _wgslsmith_f_op_f32(func_4(var_0, var_0, vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 1u, _wgslsmith_div_u32(u_input.c.x, func_3(var_0, var_0))), Struct_1(~(~max(global0.a, vec4<i32>(-9383i, var_0.a.x, 1i, -53832i))), select(firstLeadingBit(vec3<i32>(1i, u_input.a.x, -1i)), ~global0.a.wxx, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(861f, 1000f, 741f, -1351f))))))));
    var_1 = var_0;
    global0 = var_0;
    return u_input.a.zwy;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = Struct_1(vec4<i32>(arg_0.a.x, select(-18095i, select(8385i, arg_2.a.x, false) >> (4294967295u % 32u), true), ~reverseBits(-33747i), _wgslsmith_sub_i32(-2147483647i, -12846i ^ u_input.a.x)), func_2(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(612f + arg_2.c.x)))), _wgslsmith_f_op_f32(floor(arg_3.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(select(233f, -360f, true))), _wgslsmith_f_op_f32(-553f * -1000f), any(vec3<bool>(true, true, true)))), 1029f));
    let var_0 = Struct_1(select(vec4<i32>(arg_2.b.x, -max(arg_2.a.x, arg_3.b.x), 0i, _wgslsmith_dot_vec4_i32(countOneBits(u_input.a), _wgslsmith_mult_vec4_i32(arg_1.a, vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, -2147483647i)))), _wgslsmith_div_vec4_i32(-vec4<i32>(23447i, arg_1.a.x, 7675i, arg_3.b.x) >> (~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 59925u) % vec4<u32>(32u)), -vec4<i32>(arg_1.b.x, 1i, -1i, global0.b.x)), false), u_input.a.wwz >> (((vec3<u32>(1u, u_input.c.x, u_input.c.x) ^ (vec3<u32>(23842u, 0u, u_input.c.x) & vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))) >> (~(vec3<u32>(0u, u_input.c.x, u_input.c.x) << (vec3<u32>(u_input.c.x, u_input.c.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(round(-712f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(func_4(Struct_1(u_input.a, vec3<i32>(arg_0.b.x, u_input.a.x, 17188i), arg_0.c), Struct_1(vec4<i32>(arg_2.a.x, 21006i, -4646i, 11149i), arg_0.b, global0.c), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 0u)), arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1476f, -863f)), _wgslsmith_f_op_f32(-470f * global0.c.x))))));
    global0 = arg_0;
    global0 = Struct_1(-(~global0.a), abs(vec3<i32>(arg_0.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), firstLeadingBit(arg_2.a.x)), u_input.d)), arg_0.c);
    let var_1 = countOneBits(_wgslsmith_mult_i32(~12309i, -1i));
    return vec2<bool>(all(vec2<bool>(true, true)), !all(vec2<bool>(true, true)));
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = -(~u_input.a.x);
    var var_1 = Struct_1(countOneBits(_wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(u_input.d, global0.a.x, 0i, 1i)), -(global0.a & u_input.a))), vec3<i32>(global0.b.x, -u_input.d, global0.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(1364f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1004f - global0.c.x), -571f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-109f))), arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.c * global0.c))), global0.c)));
    var var_2 = ~(~firstLeadingBit(22033u));
    let var_3 = var_0;
    let var_4 = u_input.c.x;
    return Struct_1(global0.a ^ -_wgslsmith_sub_vec4_i32(-u_input.a, ~vec4<i32>(global0.a.x, global0.b.x, u_input.a.x, var_0)), min(abs(vec3<i32>(12992i, 0i, global0.a.x)) << (~vec3<u32>(61602u, var_4, 9802u) % vec3<u32>(32u)), vec3<i32>(-24559i, (var_1.a.x << (4294967295u % 32u)) & ~global0.a.x, global0.b.x)), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec2<bool>(true, u_input.c.x < (u_input.c.x & u_input.c.x)), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), func_1(Struct_1(vec4<i32>(0i, 32554i, global0.a.x, global0.b.x), vec3<i32>(u_input.d, 1i, 24753i), vec4<f32>(1035f, -1000f, -1000f, -631f)), Struct_1(vec4<i32>(6348i, 2147483647i, -37560i, -34802i), u_input.a.zyy, vec4<f32>(global0.c.x, global0.c.x, 416f, global0.c.x)), Struct_1(vec4<i32>(global0.b.x, 19132i, u_input.d, 9494i), vec3<i32>(u_input.b.x, global0.b.x, 1i), vec4<f32>(972f, global0.c.x, -750f, -1037f)), Struct_1(vec4<i32>(-2158i, -1i, global0.b.x, -18117i), vec3<i32>(global0.b.x, -1i, -2147483647i), vec4<f32>(global0.c.x, global0.c.x, -980f, 1360f))), func_1(Struct_1(u_input.a, u_input.a.xxz, vec4<f32>(710f, global0.c.x, global0.c.x, global0.c.x)), Struct_1(u_input.a, global0.a.wxx, vec4<f32>(global0.c.x, global0.c.x, global0.c.x, -325f)), Struct_1(vec4<i32>(0i, 0i, global0.a.x, global0.a.x), vec3<i32>(global0.a.x, u_input.d, u_input.b.x), global0.c), Struct_1(vec4<i32>(0i, 2147483647i, global0.a.x, u_input.b.x), vec3<i32>(u_input.b.x, -48482i, -2147483647i), vec4<f32>(-1841f, global0.c.x, 503f, global0.c.x))).x), false), _wgslsmith_f_op_f32(max(global0.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-899f, -552f), global0.c.x))), false, global0.c.zxy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-381f, -890f))) - vec2<f32>(global0.c.x, var_0.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(global0.c.x - global0.c.x), -2820f))), ~var_0.a.zw >> ((u_input.c >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

