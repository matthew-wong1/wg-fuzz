struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(4294967295u), Struct_1(6323u), Struct_1(14845u));

var<private> global1: u32 = 23148u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> bool {
    var var_0 = !(!(!vec3<bool>(arg_0, any(vec3<bool>(arg_0, true, arg_0)), arg_0)));
    var var_1 = Struct_2(global0.a, Struct_1(select(firstTrailingBit(_wgslsmith_mod_u32(global0.a.a, 50112u)), ~(~u_input.b), true)), Struct_1((_wgslsmith_mod_u32(7052u, 1u) & ~global0.a.a) >> (global0.b.a % 32u)));
    global0 = Struct_2(Struct_1(28178u), global0.a, Struct_1(1u));
    var_1 = Struct_2(Struct_1(~(~firstLeadingBit(4294967295u))), Struct_1(4294967295u), global0.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, -190f, -1000f, arg_1.x)))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1317f, -780f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(125f, arg_1.x, -805f, -416f))), _wgslsmith_div_vec4_f32(vec4<f32>(981f, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), 1557f, 104f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1076f, arg_1.x, -373f, arg_1.x))))))));
    return (firstLeadingBit(var_1.c.a) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(var_1.a.a, global0.c.a, 4294967295u)), u_input.c.xzy, ~u_input.c.xzy), _wgslsmith_mult_vec3_u32(u_input.c.wxw & u_input.c.yzx, u_input.c.yyy))) >= u_input.c.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(!vec2<bool>(!func_3(false, vec2<f32>(711f, -529f)), select(false, true, true)), global0.c);
    var var_1 = Struct_1(select(u_input.d.x << (_wgslsmith_dot_vec3_u32(u_input.c.zwx, abs(u_input.c.wwy)) % 32u), 36124u, all(select(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, false, false), !vec4<bool>(var_0.a.x, false, var_0.a.x, false)))));
    var var_2 = Struct_3(vec2<bool>(false, !var_0.a.x), Struct_1(~var_0.b.a));
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(~1u, ~var_1.a), 1u)), Struct_1(~reverseBits(u_input.d.x)), var_2.b);
    global1 = firstTrailingBit(var_1.a);
    return Struct_2(Struct_1(min(min(_wgslsmith_mult_u32(var_1.a, 54655u), ~4294967295u), 1u)), Struct_1(_wgslsmith_mult_u32(var_1.a, var_1.a)), global0.c);
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(627f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(948f - 471f)))), 202f), global0.a);
    var var_1 = !select(vec2<bool>(func_3(true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(258f, 765f), vec2<f32>(291f, 258f)))), true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(5466i >= -u_input.a, false));
    var var_2 = all(vec2<bool>(false, false));
    var_1 = vec2<bool>(true, true);
    let var_3 = reverseBits(_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1i), ~vec2<i32>(-24085i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(abs(u_input.a), u_input.a), select(_wgslsmith_div_vec2_i32(vec2<i32>(44949i, -1i), vec2<i32>(-37811i, -1i)), firstTrailingBit(vec2<i32>(2147483647i, -1i)), var_1.x))));
    return Struct_3(select(select(!select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), true), vec2<bool>(!var_1.x, all(vec3<bool>(true, var_1.x, false))), vec2<bool>(any(vec2<bool>(var_1.x, var_1.x)), var_1.x)), select(select(vec2<bool>(false, var_1.x), select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), false), !var_1.x), !select(vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x), false), vec2<bool>(true, true)), vec2<bool>(false & all(vec4<bool>(true, var_1.x, false, true)), any(vec4<bool>(false, var_1.x, true, false)) & !var_1.x)), func_2(-242f, global0.b).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = firstTrailingBit(firstTrailingBit(~u_input.d.x));
    global1 = 1704u;
    var var_1 = max(vec4<u32>(firstTrailingBit(var_0.b.a), _wgslsmith_clamp_u32(global0.a.a, _wgslsmith_mult_u32(select(var_0.b.a, global0.c.a, true), global0.b.a), u_input.c.x), ~global0.c.a, abs(var_0.b.a)), ~max(vec4<u32>(~1u, ~var_0.b.a, global0.a.a, ~20691u), u_input.c));
    let var_2 = vec3<bool>(true, true, (_wgslsmith_div_i32(25628i, _wgslsmith_sub_i32(u_input.a, 2147483647i)) << (var_0.b.a % 32u)) <= (u_input.a ^ (-u_input.a | _wgslsmith_mult_i32(2147483647i, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_u32(global0.c.a, _wgslsmith_sub_u32(var_1.x, global0.c.a))));
}

