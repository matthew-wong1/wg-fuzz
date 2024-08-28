struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    let var_0 = !(!any(vec4<bool>(false, true, any(vec2<bool>(true, false)), false)));
    global0 = array<vec4<bool>, 2>();
    let var_1 = -22547i;
    var var_2 = firstTrailingBit(reverseBits(vec3<i32>(-_wgslsmith_mult_i32(0i, arg_2.x), -(~var_1), 0i << (1u % 32u))));
    let var_3 = Struct_3(~(i32(-1i) * -u_input.a.x), -613f, select(vec4<bool>(!var_0 == true, !all(global0[_wgslsmith_index_u32(arg_0, 2u)]), true, var_0), !select(!global0[_wgslsmith_index_u32(19149u, 2u)], !vec4<bool>(var_0, false, var_0, var_0), true), !(true | var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1275f + _wgslsmith_f_op_f32(f32(-1f) * -1355f)))));
    return _wgslsmith_f_op_f32(-var_3.d);
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1366f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(28158u, u_input.d, vec3<i32>(u_input.a.x, u_input.c, -10599i))), 279f), _wgslsmith_f_op_f32(590f + _wgslsmith_f_op_f32(511f + 168f)), 418f)) * vec4<f32>(_wgslsmith_f_op_f32(ceil(1434f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - -819f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_div_f32(941f, 655f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1117f, 1772f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.x))))), var_0.x, var_0.x, -455f));
    let var_1 = Struct_5(Struct_3(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x & u_input.a.x)), var_0.x, vec4<bool>(u_input.b.x < ~u_input.b.x, true, !(var_0.x <= var_0.x), true), _wgslsmith_f_op_f32(round(-306f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), select(select(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), 2u)], all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), select(global0[_wgslsmith_index_u32(0u, 2u)], select(global0[_wgslsmith_index_u32(0u, 2u)], select(global0[_wgslsmith_index_u32(8009u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], vec4<bool>(true, true, false, true)), vec4<bool>(true, false, false, false)), vec4<bool>(true, all(vec3<bool>(true, true, false)), 2147483647i < u_input.c, true))));
    var var_2 = var_0.x;
    var var_3 = var_0.xx;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) - var_0.xx), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(550f, 790f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_0.zy)), _wgslsmith_f_op_vec2_f32(-var_0.xw), true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-246f * -2248f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(abs(-613f)))))), select(var_1.c.xz, var_1.c.xx, !select(vec2<bool>(true, false), var_1.c.wx, var_1.a.c.wx))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec4<u32> {
    global0 = array<vec4<bool>, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_1 = 56173u;
    global0 = array<vec4<bool>, 2>();
    let var_2 = arg_0;
    return u_input.b >> (abs(arg_2 << (~(~vec4<u32>(u_input.b.x, 16229u, var_2, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    return Struct_1(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 7458i), max(select(u_input.a.yw, u_input.a.ww, vec2<bool>(true, true)), u_input.a.yy >> (u_input.b.xz % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(select(vec2<i32>(47877i, -1i), u_input.a.yx, true), -u_input.a.ww)), u_input.a.zz), select(_wgslsmith_add_vec4_u32(vec4<u32>(~31884u, _wgslsmith_sub_u32(u_input.d, 1u), _wgslsmith_mod_u32(4294967295u, 22829u), 5108u), ~func_1(u_input.b.x, vec2<f32>(-989f, 322f), u_input.b, u_input.a)), u_input.b, !select(true, u_input.b.x <= u_input.b.x, all(vec2<bool>(false, false)))));
    var var_1 = _wgslsmith_sub_vec2_i32(~min(min(-vec2<i32>(-31348i, 11797i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), u_input.a.yz)), vec2<i32>(0i, 31013i)), u_input.a.wy);
    var_1 = _wgslsmith_clamp_vec2_i32(min(vec2<i32>(-var_1.x, -17592i) | u_input.a.xy, vec2<i32>(firstTrailingBit(u_input.a.x), reverseBits(u_input.c)) >> (~func_4(u_input.a.xw, var_0.a).a.yx % vec2<u32>(32u))), vec2<i32>(u_input.a.x, ~(-40928i)), min(-countOneBits(vec2<i32>(var_1.x, u_input.a.x)), -vec2<i32>(min(u_input.a.x, u_input.c), ~58136i)));
    var var_2 = -var_1.x;
    let var_3 = countOneBits(func_1(1u, vec2<f32>(1f, _wgslsmith_div_f32(208f, _wgslsmith_f_op_f32(f32(-1f) * -1815f))), select(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(632u, 0u, u_input.d, u_input.b.x)), firstLeadingBit(var_0.a)), func_1(48731u & var_0.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 2114f) * vec2<f32>(1051f, 613f)), ~vec4<u32>(u_input.b.x, var_0.a.x, u_input.b.x, 0u), -vec4<i32>(-16489i, -3272i, u_input.a.x, -10065i)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.a.x, u_input.d, u_input.d), firstLeadingBit(var_0.a.x)), 2u)]), u_input.a).x);
    let var_4 = Struct_4(519f, u_input.a.yxy);
    let var_5 = Struct_4(377f, countOneBits(var_4.b << (~vec3<u32>(var_0.a.x, var_3, var_0.a.x) % vec3<u32>(32u))) ^ ((u_input.a.wzx | vec3<i32>(-837i, u_input.c, 0i)) << (select(countOneBits(vec3<u32>(0u, 0u, 0u)), u_input.b.zwz << (u_input.b.xzz % vec3<u32>(32u)), true) % vec3<u32>(32u))));
    var_2 = firstLeadingBit(_wgslsmith_mod_i32(var_4.b.x, ((-66400i & u_input.c) | 35129i) | 37023i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(var_5.a, var_4.a), -1416f)))), _wgslsmith_mult_vec2_i32(var_5.b.xz, abs(u_input.a.wz)), reverseBits(reverseBits(~reverseBits(var_0.a.zyw))), abs(vec3<i32>(abs(-91471i >> (var_0.a.x % 32u)), _wgslsmith_mod_i32(-var_5.b.x, var_5.b.x | u_input.a.x), 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -774f))))));
}

