struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1116f * _wgslsmith_f_op_f32(round(-246f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1264f - 1413f) + _wgslsmith_f_op_f32(step(-566f, 2371f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(421f, _wgslsmith_f_op_f32(round(1387f)), arg_0.x)), -511f));
    let var_1 = ~((vec3<i32>(2147483647i, -26771i, u_input.a) ^ vec3<i32>(-u_input.a, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)))) & -firstTrailingBit(vec3<i32>(57346i, u_input.a, -2147483647i)));
    let var_2 = Struct_1(firstLeadingBit(vec4<i32>(37837i, firstTrailingBit(u_input.a >> (u_input.c % 32u)), -u_input.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, 0i), u_input.a))), _wgslsmith_div_i32(var_1.x, 51031i));
    let var_3 = var_1.x;
    var_0 = -1000f;
    return all(select(vec2<bool>(all(vec2<bool>(arg_0.x, false)), true), vec2<bool>(u_input.d < u_input.b.x, true), all(select(arg_0, arg_0, arg_0.x)))) | arg_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = all(vec3<bool>(func_3(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), all(vec2<bool>(true, true)) || select(all(vec4<bool>(true, false, true, true)), true, true)));
    var var_1 = select(vec2<bool>(!(!any(vec3<bool>(false, false, var_0))), !(_wgslsmith_mult_u32(u_input.b.x, u_input.c) >= ~1u)), select(vec2<bool>(true, true), select(!(!vec2<bool>(var_0, var_0)), vec2<bool>(true, var_0), true), ~u_input.a >= -(~(-2147483647i))), select(vec2<bool>(true, true), vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, var_0, true), vec3<bool>(false, false, var_0))), true), select(select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)), select(vec2<bool>(false, false), vec2<bool>(false, var_0), vec2<bool>(true, var_0)), !var_0), vec2<bool>(u_input.a > u_input.a, !var_0), var_0)));
    let var_2 = Struct_1(vec4<i32>(~(-1i), 2147483647i, abs(~0i >> (max(36922u, u_input.b.x) % 32u)), abs(firstLeadingBit(27066i) >> (select(u_input.d, u_input.b.x, true) % 32u))), 19446i);
    let var_3 = firstTrailingBit(-min(vec2<i32>(reverseBits(u_input.a), var_2.a.x), vec2<i32>(countOneBits(var_2.b), 1i)));
    var var_4 = vec2<i32>(var_3.x, var_2.a.x);
    return Struct_1(vec4<i32>(-20168i, var_3.x, firstTrailingBit(max(firstLeadingBit(9210i), var_3.x)), _wgslsmith_dot_vec2_i32((vec2<i32>(-29098i, u_input.a) & var_3) | -var_3, _wgslsmith_clamp_vec2_i32(~var_3, -var_3, var_2.a.ww))), _wgslsmith_div_i32(reverseBits(reverseBits(-2147483647i)), var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = arg_3;
    return Struct_1(max(vec4<i32>(i32(-1i) * -1i, var_0.a.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.a.x, -1i), -2043i), -(-1i >> (arg_1.x % 32u))), vec4<i32>(arg_3.a.x, _wgslsmith_dot_vec3_i32(var_1.a.zxx, vec3<i32>(var_1.b, arg_0.b, -36842i)), abs(1i), -2147483647i) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 24912u, 1u, u_input.b.x), ~vec4<u32>(u_input.d, 4294967295u, 45449u, 4294967295u)) % vec4<u32>(32u))), var_0.b);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(true, ~(i32(-1i) * -28867i) < arg_3.b);
    let var_1 = arg_3;
    let var_2 = func_4(func_2(), u_input.b.zx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-770f, 580f)))), 638f), Struct_1(~arg_3.a, -2147483647i));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-560f, -1405f) * _wgslsmith_f_op_f32(f32(-1f) * -1476f))))) - 1635f);
    var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -963f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-800f)))))));
    return arg_3;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_2);
    var_0 = arg_2;
    var var_1 = ~(~u_input.c);
    var var_2 = func_2();
    var var_3 = arg_2.x;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, arg_3.b), var_2.a.x), func_1(all(vec2<bool>(false, true)), ~vec2<u32>(40489u, u_input.c), true, arg_3).a.x, u_input.a & -2147483647i, _wgslsmith_mult_i32(reverseBits(var_2.a.x), _wgslsmith_dot_vec4_i32(arg_3.a, vec4<i32>(arg_3.b, u_input.a, arg_3.b, arg_3.b)))), _wgslsmith_mult_vec4_i32(arg_3.a, (arg_3.a | vec4<i32>(u_input.a, 6073i, var_2.a.x, var_2.b)) & ~var_2.a)), arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(-_wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.a), vec4<i32>(6403i, u_input.a, u_input.a, -2147483647i) | vec4<i32>(26396i, u_input.a, -37772i, 1i))), _wgslsmith_div_i32(-18897i, func_5(4294967295u, min(vec4<u32>(u_input.b.x, u_input.c, u_input.d, u_input.d), ~vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, 27254u)), vec2<f32>(-1708f, -169f), func_1(false, firstLeadingBit(vec2<u32>(u_input.b.x, 20733u)), u_input.b.x < u_input.d, Struct_1(vec4<i32>(9062i, u_input.a, u_input.a, -48787i), -1i)))));
    let var_1 = var_0;
    var var_2 = any(vec3<bool>(true, true, u_input.b.x < (0u & ~u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(307f)), -563f, _wgslsmith_f_op_f32(max(-1462f, 1973f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1471f, 255f, 775f, -493f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-462f, -579f, 1037f, 1004f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(847f, 1000f, -678f, 893f) - vec4<f32>(948f, 468f, -798f, -795f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1731f, -1123f, -1298f, 1576f)))))));
}

