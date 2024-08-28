struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = 331f;
    return Struct_1(global0.a, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(global0.d.x, 9574u, 46721u, global0.d.x) >> (global0.d % vec4<u32>(32u))) & global0.b, firstLeadingBit(~74448u)), vec4<bool>(all(global0.e), any(global0.c), u_input.b != abs(~(-1i)), true), ~vec4<u32>(u_input.a.x, select(reverseBits(u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, global0.b, 16758u), global0.e.x), u_input.a.x, ~u_input.a.x), select(select(vec3<bool>(all(vec2<bool>(false, global0.e.x)), global0.a, all(global0.c)), vec3<bool>(global0.a, global0.e.x == true, global0.a), !global0.a), global0.c.zzy, select(select(select(vec3<bool>(global0.c.x, false, global0.a), global0.e, false), select(global0.e, global0.c.zyx, global0.e), vec3<bool>(false, true, false)), !(!global0.c.wzx), select(!global0.c.xzy, global0.e, true))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = arg_3;
    var var_0 = !(!(!arg_3.a & global0.a));
    var var_1 = vec2<i32>(reverseBits(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_clamp_i32(u_input.c.x, -1i >> (1u % 32u), 1i), -1i)), 46504i);
    global0 = func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -147f, arg_2) + vec3<f32>(-1061f, 302f, 683f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, 611f) - vec3<f32>(arg_2, -1853f, 1000f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1055f, arg_2, 1243f) * vec3<f32>(746f, 2086f, arg_2)), vec3<f32>(arg_2, -1743f, 1000f), vec3<bool>(arg_3.c.x, arg_3.e.x, false))), vec3<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_f_op_f32(-arg_2)))))));
    var var_2 = -(~(~_wgslsmith_mod_vec2_i32(arg_1, vec2<i32>(var_1.x, u_input.c.x))) & u_input.c.xx);
    return global0.b;
}

fn func_1() -> vec2<bool> {
    global0 = Struct_1(any(!select(vec4<bool>(global0.c.x, false, global0.a, false), !vec4<bool>(global0.a, false, false, global0.e.x), !global0.c)), firstTrailingBit(func_3(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(147f, -1371f, -1269f) - vec3<f32>(-364f, -1877f, -933f))), u_input.c.yx, 1000f, Struct_1(true, _wgslsmith_add_u32(19075u, 0u), vec4<bool>(global0.e.x, global0.e.x, false, false), select(vec4<u32>(1u, 99009u, global0.d.x, 18508u), u_input.a, vec4<bool>(global0.a, true, false, global0.a)), select(global0.c.xzy, global0.c.yzz, true)))), vec4<bool>(-18773i >= u_input.c.x, false, select(!(!global0.e.x), !(17048i == u_input.c.x), !(true | global0.c.x)), global0.c.x == any(vec3<bool>(global0.c.x, global0.a, true))), global0.d, vec3<bool>(any(func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(678f, -1384f, -1000f)))).e.zz), !select(false, false, global0.a) | true, global0.c.x));
    global0 = Struct_1(all(select(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-371f, 875f, -478f) + vec3<f32>(-492f, -638f, 1000f))).c, vec4<bool>(true, -67403i >= u_input.c.x, !global0.e.x, all(global0.c.xxz)), select(!global0.c, !global0.c, !vec4<bool>(true, true, global0.a, global0.e.x)))), u_input.a.x, select(global0.c, select(func_2(vec3<f32>(2161f, -790f, 1176f)).c, vec4<bool>(global0.a && global0.c.x, all(global0.c), true, global0.c.x), global0.e.x), vec4<bool>(!any(global0.c.xyw), any(global0.e), !all(vec4<bool>(global0.e.x, true, global0.c.x, global0.e.x)), global0.c.x || global0.c.x)), ~max(~func_2(vec3<f32>(288f, -1535f, -1000f)).d, ~(u_input.a | vec4<u32>(u_input.a.x, global0.b, global0.d.x, 2941u))), select(!vec3<bool>(global0.e.x, all(global0.c), !global0.e.x), select(select(global0.c.xxx, func_2(vec3<f32>(106f, 1787f, -655f)).e, func_2(vec3<f32>(-1778f, -319f, -1454f)).c.wwx), vec3<bool>(global0.e.x, !global0.e.x, true), true), u_input.c.x == countOneBits(u_input.b)));
    var var_0 = Struct_1(!(1u <= ~(~u_input.a.x)), u_input.a.x, !select(select(!vec4<bool>(global0.e.x, global0.e.x, global0.e.x, false), select(vec4<bool>(true, global0.c.x, true, global0.c.x), vec4<bool>(global0.c.x, global0.a, false, global0.e.x), vec4<bool>(false, global0.c.x, global0.c.x, false)), all(global0.c)), vec4<bool>(false && global0.a, global0.a, !global0.e.x, global0.e.x), !vec4<bool>(global0.c.x, global0.c.x, true, false)), vec4<u32>(24764u, u_input.a.x, ~33705u, ~(45892u << (firstLeadingBit(60888u) % 32u))), select(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1069f, 761f, -428f)))).e, func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(-620f)), -704f, -1178f)).c.yxy, global0.e));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1244f)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f)))), _wgslsmith_f_op_f32(round(var_1)));
    return select(global0.c.xx, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_1, 1742f), vec3<f32>(500f, 1069f, -1284f)))))).c.xx, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = ~(~firstTrailingBit(4294967295u));
    var var_2 = vec2<u32>(~global0.d.x, 57996u);
    var_0 = all(vec2<bool>(global0.a, true));
    let var_3 = select(vec3<bool>(global0.a, global0.e.x, any(select(vec2<bool>(true, global0.c.x), func_1(), true))), global0.e, global0.c.wzz);
    var var_4 = u_input.b;
    var_4 = -select(u_input.b, firstLeadingBit(_wgslsmith_mod_i32(u_input.c.x, u_input.b) << (var_1 % 32u)), !var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1464f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 954f) - -1074f))))), vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 2147483647i, -1i, u_input.c.x), _wgslsmith_div_vec4_i32(~vec4<i32>(-1346i, 7386i, u_input.b, -1i), ~vec4<i32>(30994i, -1i, -1885i, u_input.b))), 45945i), vec4<i32>(u_input.c.x, -32589i, reverseBits(select(u_input.b, countOneBits(u_input.b), !global0.a)), ~_wgslsmith_div_i32(u_input.c.x, u_input.b)), u_input.a.zyw, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, 2147483647i), ~1i));
}

