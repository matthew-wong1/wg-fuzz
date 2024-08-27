struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -46751i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec4<u32> {
    return ~vec4<u32>(u_input.e, 1u, u_input.e, u_input.e);
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_4(Struct_3(Struct_1(false), _wgslsmith_div_f32(-1104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))))));
    var var_1 = !select(!vec4<bool>(all(vec3<bool>(false, var_0.a.a.a, false)), true, var_0.a.a.a, any(vec2<bool>(false, true))), !select(select(vec4<bool>(false, var_0.a.a.a, var_0.a.a.a, var_0.a.a.a), vec4<bool>(var_0.a.a.a, var_0.a.a.a, var_0.a.a.a, var_0.a.a.a), var_0.a.a.a), select(vec4<bool>(var_0.a.a.a, var_0.a.a.a, true, false), vec4<bool>(var_0.a.a.a, true, false, true), vec4<bool>(true, true, var_0.a.a.a, true)), any(vec3<bool>(false, var_0.a.a.a, false))), false);
    var_0 = Struct_4(Struct_3(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1654f)))));
    global0 = u_input.b;
    var var_2 = func_1();
    return !(!select(vec3<bool>(all(var_1.zw), global0.x >= -7174i, var_0.a.a.a), vec3<bool>(true, true, true), !var_1.x));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!all(vec4<bool>(true, true, true, true))), Struct_1(all(!func_3(117f))), Struct_1(-_wgslsmith_mod_i32(u_input.a, global0.x) > global0.x), 969f, Struct_1(false));
    global0 = u_input.b;
    global0 = countOneBits(vec2<i32>(0i, -global0.x));
    var var_1 = Struct_4(Struct_3(var_0.e, -1655f));
    var var_2 = ~u_input.e;
    return var_0.b;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> vec2<f32> {
    global0 = abs(vec2<i32>(u_input.b.x | countOneBits(_wgslsmith_mod_i32(global0.x, global0.x)), -33650i & _wgslsmith_sub_i32(-u_input.a, arg_0.c.x)));
    let var_0 = firstTrailingBit(reverseBits(arg_0.d) >> (arg_0.d % 32u));
    let var_1 = !select(false, !arg_1.a.a, false);
    let var_2 = 4294967295u;
    global0 = u_input.b;
    return _wgslsmith_f_op_vec2_f32(-arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(u_input.e, 55476u);
    let var_1 = global0.x << (var_0.x % 32u);
    var var_2 = 0i;
    let var_3 = max(reverseBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 17510u, 4294967295u, 4294967295u), vec4<u32>(0u, 27330u, u_input.e, u_input.e), vec4<u32>(42310u, 0u, 4294967295u, 10041u)))), _wgslsmith_div_vec4_u32(~func_1(), ~(~countOneBits(vec4<u32>(u_input.e, var_0.x, 58174u, u_input.e)))));
    global0 = select(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, ~1i)), vec2<i32>(u_input.a, 54118i)), -u_input.b, vec2<bool>(false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-189f, -907f)))), vec2<f32>(_wgslsmith_f_op_f32(-1240f - 1250f), _wgslsmith_f_op_f32(f32(-1f) * -315f)))) * _wgslsmith_f_op_vec2_f32(func_4(Struct_5(global0.x >= var_1, vec2<f32>(-800f, -256f), vec2<i32>(var_1, global0.x), var_0.x ^ 1u, Struct_4(Struct_3(Struct_1(true), 1507f))), Struct_2(func_2(var_3), Struct_1(true), func_2(vec4<u32>(var_3.x, 0u, var_0.x, u_input.e)), -1136f, Struct_1(true)), vec3<bool>(any(vec4<bool>(false, true, true, false)), true, true), Struct_2(Struct_1(true), func_2(var_3), func_2(vec4<u32>(1u, var_3.x, var_0.x, var_3.x)), _wgslsmith_f_op_f32(771f + -367f), Struct_1(true))))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + -991f), ~select(var_3.zzw, ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.x, 2151u), var_3.wyz), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), var_0.x);
}

