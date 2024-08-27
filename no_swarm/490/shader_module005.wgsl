struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
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

var<private> global0: vec2<i32>;

var<private> global1: Struct_4 = Struct_4(Struct_3(vec3<f32>(-409f, -451f, -105f)), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<f32>(-715f, 1472f, 1141f, -108f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.e >> (vec4<u32>(u_input.d, ~u_input.d, 1u, arg_0.c) % vec4<u32>(32u));
    let var_1 = !(!(!(!all(vec2<bool>(global1.c.x, false)))));
    let var_2 = _wgslsmith_div_i32(2147483647i, 1i);
    global1 = Struct_4(global1.a, vec4<bool>(true, all(!vec4<bool>(global1.b.x, true, true, true)), true, any(!(!vec3<bool>(true, global1.b.x, var_1)))), select(vec4<bool>(!(!global1.b.x), any(global1.c.ww), true, var_1), vec4<bool>(var_1, !(!var_1), var_1, all(global1.c.zyx)), select(!select(vec4<bool>(false, true, var_1, var_1), global1.b, vec4<bool>(true, var_1, var_1, var_1)), global1.c, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-679f, _wgslsmith_f_op_f32(step(global1.a.a.x, _wgslsmith_f_op_f32(-1416f - global1.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x + global1.a.a.x) + global1.a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -408f))))));
    global1 = Struct_4(global1.a, global1.b, !global1.b, _wgslsmith_f_op_vec4_f32(-global1.d));
    return u_input.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> i32 {
    global1 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(sign(global1.a.a.x)), 1117f)), global1.c, select(!vec4<bool>(true, all(global1.c.xx), global1.b.x | true, global1.c.x), global1.c, ~func_3(Struct_1(u_input.c, -6377i, 24164u, arg_1, vec4<i32>(1i, global0.x, -10081i, 0i))) != ~(~0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x)), _wgslsmith_f_op_f32(exp2(global1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.x) * 1311f), _wgslsmith_div_f32(global1.d.x, -542f))));
    return u_input.e;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = abs(~_wgslsmith_mod_vec3_i32(-vec3<i32>(global0.x, arg_1.x, -20199i), vec3<i32>(u_input.e, arg_1.x, 0i)) ^ (~vec3<i32>(2147483647i, 1i, global0.x) << (select(arg_0.zyw, vec3<u32>(arg_0.x, u_input.b, u_input.d), !global1.b.zww) % vec3<u32>(32u))));
    var var_1 = vec2<bool>(global1.c.x, true);
    var var_2 = (vec4<i32>(~_wgslsmith_add_i32(arg_1.x, var_0.x), 0i, _wgslsmith_add_i32(max(u_input.a, var_0.x), _wgslsmith_sub_i32(-2532i, -2147483647i)), 75703i) >> (arg_0 % vec4<u32>(32u))) ^ -vec4<i32>(_wgslsmith_add_i32(var_0.x, _wgslsmith_div_i32(57995i, global0.x)), arg_1.x, func_2(~vec2<i32>(arg_1.x, 0i), ~4294967295u), _wgslsmith_clamp_i32(global0.x, -2147483647i, u_input.e) ^ (i32(-1i) * -2147483647i));
    global1 = Struct_4(global1.a, !vec4<bool>(all(!vec3<bool>(true, var_1.x, true)), false, var_1.x, true), !(!vec4<bool>(!var_1.x, all(vec3<bool>(false, global1.c.x, global1.b.x)), true, all(vec2<bool>(global1.c.x, true)))), vec4<f32>(1808f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * global1.a.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global1.d.x)))));
    let var_3 = Struct_2(global1.a.a.x, var_2.ywx & ~(-vec3<i32>(-23201i, global0.x, u_input.a) & vec3<i32>(-5854i, var_0.x, global0.x)));
    return 4122i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_3 {
    global0 = max(arg_1.b.zy, ~arg_1.b.xy);
    global0 = firstLeadingBit(select(vec2<i32>(global0.x, u_input.e), vec2<i32>(max(arg_1.b.x, -1i), u_input.a), vec2<bool>(false, false)) ^ arg_1.b.yx);
    let var_0 = Struct_3(global1.d.zyw);
    global0 = select(-arg_0.xw, vec2<i32>(~(-49751i), (global0.x << (u_input.c % 32u)) << (~reverseBits(12049u) % 32u)), global1.b.zz);
    global0 = abs(arg_1.b.xx);
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(499f, 1138f, 665f))))))));
}

fn func_5(arg_0: Struct_3) -> vec2<i32> {
    global0 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, -11284i)), min(vec2<i32>(global0.x, 0i), vec2<i32>(2147483647i, global0.x))), vec2<i32>(global0.x, select(1i, -1i, global1.c.x))), max(vec2<i32>(-2147483647i, -15325i), vec2<i32>(firstLeadingBit(-2147483647i), ~(-38921i))));
    global0 = vec2<i32>(~(~51771i), u_input.e);
    let var_0 = Struct_1(1148u, _wgslsmith_mult_i32(u_input.e, _wgslsmith_mult_i32(u_input.e, _wgslsmith_clamp_i32(-14498i, global0.x, -15935i))) ^ ~u_input.a, ~func_3(Struct_1(u_input.b, 2147483647i & global0.x, u_input.b, _wgslsmith_add_u32(48564u, u_input.d), vec4<i32>(global0.x, u_input.a, -24761i, global0.x))), 1u, ~vec4<i32>(1i, u_input.e | 1i, -(global0.x ^ -16564i), -1122i));
    let var_1 = u_input.e;
    global0 = var_0.e.xw;
    return var_0.e.yw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(vec4<i32>(~u_input.e, global0.x, -global0.x ^ -global0.x, min(firstTrailingBit(-21940i), ~u_input.a)), Struct_2(339f, vec3<i32>(min(-7520i, -1i), reverseBits(global0.x), func_1(vec4<u32>(u_input.c, 0u, 1u, 0u), vec4<i32>(0i, -9516i, global0.x, u_input.e))))));
    global1 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(floor(1f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.d.x))))), vec4<bool>(global1.c.x, -2438f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-528f))), false, !(global1.b.x || true)), !vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(round(-803f)), true, all(!vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x))), vec4<f32>(global1.a.a.x, -484f, global1.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(999f))), _wgslsmith_f_op_f32(-582f * global1.a.a.x))));
    global1 = Struct_4(global1.a, global1.c, !vec4<bool>(global1.c.x, global1.b.x, !global1.b.x, global1.c.x | true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.d))))) - _wgslsmith_f_op_vec4_f32(global1.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1.d, global1.d))))));
    global0 = -min(vec2<i32>(select(2147483647i, i32(-1i) * -26738i, true), i32(-1i) * -18867i), _wgslsmith_mult_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, 21833i), vec2<i32>(0i, 39202i), vec2<i32>(global0.x, u_input.e))), (vec2<i32>(global0.x, u_input.e) & vec2<i32>(global0.x, global0.x)) ^ ~vec2<i32>(2147483647i, -1i)));
    let var_0 = (_wgslsmith_mod_u32(u_input.d, abs(_wgslsmith_div_u32(26879u, 35585u))) >> (_wgslsmith_clamp_u32(u_input.c ^ u_input.b, firstLeadingBit(~u_input.d), u_input.c) % 32u)) ^ 1u;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstLeadingBit(73133u << (u_input.d % 32u)), ~_wgslsmith_div_u32(0u, 95504u)));
}

