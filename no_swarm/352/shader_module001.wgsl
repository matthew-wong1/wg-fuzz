struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(1u)), vec2<i32>(-1i, 0i), Struct_1(86879u), Struct_1(32662u), vec4<bool>(true, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> vec2<bool> {
    global0 = arg_2;
    global0 = arg_2;
    global0 = Struct_3(Struct_2(arg_2.c), arg_2.b, global0.a.a, Struct_1(_wgslsmith_add_u32(~arg_1.a, _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.yx)) >> (~(~0u) % 32u)), vec4<bool>(_wgslsmith_f_op_f32(456f + -1077f) == _wgslsmith_f_op_f32(-1128f * _wgslsmith_f_op_f32(step(-589f, 1069f))), false, true, true));
    global0 = arg_2;
    let var_0 = select(true, arg_2.e.x, all(vec2<bool>(select(global0.e.x, true, false) & true, all(vec2<bool>(true, false)))));
    return global0.e.zy;
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    global0 = Struct_3(global0.a, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(global0.b.x, -26315i) << (global0.a.a.a % 32u), abs(2147483647i)), _wgslsmith_mod_vec2_i32(min(firstLeadingBit(global0.b), ~u_input.a.wz), u_input.a.zw)), global0.d, Struct_1(4294967295u), !vec4<bool>(false, true, all(!arg_0), abs(global0.b.x) > firstTrailingBit(2147483647i)));
    var var_0 = !all(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), firstLeadingBit(vec2<i32>(1i, u_input.a.x))), Struct_1(1u), Struct_3(global0.a, vec2<i32>(u_input.a.x, 0i), Struct_1(u_input.b.x), Struct_1(15859u), select(global0.e, vec4<bool>(true, arg_0.x, global0.e.x, true), false)), ~(~u_input.b.x)));
    let var_1 = ~u_input.a;
    let var_2 = ~(~(~4294967295u));
    var_0 = any(global0.e.yxy);
    return Struct_3(Struct_2(global0.c), -min(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.b.x, 0i), global0.b), -global0.b << (~u_input.b.xz % vec2<u32>(32u))), Struct_1(~u_input.b.x), global0.c, select(global0.e, !select(vec4<bool>(global0.e.x, arg_0.x, global0.e.x, false), vec4<bool>(global0.e.x, false, false, arg_0.x), select(arg_0.x, global0.e.x, arg_0.x)), arg_0.x));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_3 {
    global0 = func_2(!(!select(!global0.e.xw, select(global0.e.yy, vec2<bool>(false, global0.e.x), global0.e.x), global0.e.zz)));
    let var_0 = func_2(vec2<bool>(global0.e.x || (_wgslsmith_f_op_f32(max(240f, arg_0)) <= -122f), true)).c;
    var var_1 = vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_add_i32(global0.b.x, 2147483647i) & arg_1, firstLeadingBit(~623i)), _wgslsmith_add_i32(1i, ~u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(25266i, arg_1) | -u_input.a.zz, _wgslsmith_mod_vec2_i32(-u_input.a.zz, firstTrailingBit(u_input.a.zz))), arg_1), _wgslsmith_mod_i32(~(-16918i), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(-11533i, u_input.a.x), arg_1)));
    let var_2 = u_input.b.zy;
    var_1 = vec4<i32>(-_wgslsmith_dot_vec2_i32(~var_1.ww, var_1.wy), -(select(var_1.x, -4691i, true) | _wgslsmith_mult_i32(u_input.a.x, -1i)) ^ ~(-1i), select(global0.b.x, -2147483647i, false), arg_1);
    return func_2(vec2<bool>(global0.e.x, -1170f <= _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 * arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1527f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f - 1554f))), 1000f), _wgslsmith_div_i32(-_wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-1i, global0.b.x, 22359i)), _wgslsmith_add_i32(-25619i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), global0.b)) >> (global0.d.a % 32u)));
    var var_0 = global0.d;
    let var_1 = global0.b;
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2266f, -1152f))) - 1000f)), abs(min(6283i, i32(-1i) * -global0.b.x))).d;
    var_0 = func_2(global0.e.yy).a.a;
    let var_3 = !global0.e.xzw;
    var var_4 = vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(188f)) * _wgslsmith_f_op_f32(-1696f + -769f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1584f)))), _wgslsmith_div_f32(-1473f, -1400f));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -174f);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(select(!func_2(global0.e.yx).e.ww, select(!vec2<bool>(var_3.x, var_3.x), !vec2<bool>(global0.e.x, var_3.x), vec2<bool>(global0.e.x, false)), func_1(_wgslsmith_f_op_f32(exp2(var_5)), 1i).e.x)).b.x, ~func_1(_wgslsmith_f_op_f32(-1664f + _wgslsmith_f_op_f32(-var_4.x)), 1i).d.a, ~(~u_input.b.wzw), var_4.x, 55687u);
}

