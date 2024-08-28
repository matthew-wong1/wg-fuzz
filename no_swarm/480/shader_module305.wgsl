struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(-31306i, 828f, -32737i);

var<private> global2: i32;

var<private> global3: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-1i, 2147483647i), vec2<i32>(-14648i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 13555i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 13726i), vec2<i32>(20697i, i32(-2147483648)), vec2<i32>(-14409i, -28439i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), 14597i), vec2<i32>(-1i, 1i), vec2<i32>(-23543i, 0i), vec2<i32>(976i, -2117i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(33952i, 43476i), vec2<i32>(2147483647i, -1i), vec2<i32>(29622i, 0i), vec2<i32>(-1i, 29153i), vec2<i32>(2147483647i, 6992i), vec2<i32>(-1i, 14558i), vec2<i32>(-14195i, 12211i), vec2<i32>(-6085i, -1i), vec2<i32>(1i, 4432i), vec2<i32>(-1i, -16951i), vec2<i32>(54713i, -27407i), vec2<i32>(1i, -22788i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -3760i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(u_input.b.yyz, ~u_input.b.xyz, ~u_input.b.wzw);
    let var_1 = Struct_2(Struct_1(-48113i, global1.b, -1i));
    let var_2 = Struct_2(Struct_1(-23829i, var_1.a.b, _wgslsmith_mult_i32(1i, -71001i & select(989i, 1225i, arg_3.x))));
    var var_3 = Struct_2(var_2.a);
    global3 = array<vec2<i32>, 29>();
    return 0i;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(round(global1.b))) * -626f), global1.b));
    global1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -arg_0, -firstLeadingBit(1i), func_3(_wgslsmith_f_op_f32(-1611f * var_1), Struct_2(Struct_1(arg_0, 935f, arg_0)), ~vec2<i32>(0i, global1.c), var_0.wyw)), vec4<i32>(global1.c, 0i, arg_0, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 + 339f)))) - 1365f), global1.c);
    global0 = false;
    let var_2 = Struct_2(Struct_1(-(~(arg_0 >> (u_input.c % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1424f)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 2147483647i, u_input.a, global1.a) & vec4<i32>(-2147483647i, global1.a, arg_0, -1i), vec4<i32>(global1.a, 0i, -2147483647i, u_input.a) << (vec4<u32>(u_input.b.x, 1u, 51695u, 1u) % vec4<u32>(32u))), -vec4<i32>(u_input.a, -1i, -2147483647i, -989i))));
    return var_2.a;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = func_2(-28773i);
    let var_1 = vec3<bool>(false, u_input.c <= 705u, true == (true & any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false))));
    global0 = any(!vec2<bool>(!(!var_1.x), false));
    var var_2 = Struct_2(var_0);
    let var_3 = Struct_2(Struct_1(~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.b, _wgslsmith_f_op_f32(-var_0.b), var_1.x & true))), 2147483647i));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(_wgslsmith_add_i32(global1.a, ~1491i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(global1.b, global1.b, global1.b))) - _wgslsmith_f_op_f32(trunc(1371f))))), abs(-1i));
    let var_1 = Struct_2(func_2(-2147483647i));
    global1 = var_0;
    global0 = any(select(vec4<bool>(true, true, all(vec2<bool>(false, false)), -660f != var_1.a.b), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))), vec4<bool>(true, true, select(-1045f <= var_0.b, true, select(false, true, true)), !select(true, false, false))));
    var var_2 = 81911u;
    global2 = abs(_wgslsmith_mod_i32(-2147483647i, ~(~var_1.a.c)));
    global0 = false;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

