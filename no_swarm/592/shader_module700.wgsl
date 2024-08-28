struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_3(~countOneBits(~u_input.a) & u_input.a);
    global0 = Struct_1(~(-global0.a), vec3<u32>(global0.b.x, ~countOneBits(_wgslsmith_sub_u32(11291u, 6852u)), countOneBits(arg_0)));
    let var_1 = select(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)))), select(vec4<bool>(true, ~var_0.a.x == select(var_0.a.x, arg_0, false), all(vec3<bool>(true, true, true)) || true, select(false, true, true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), true | ((arg_0 != arg_0) || all(vec3<bool>(true, true, true)))), true);
    var var_2 = Struct_2(8634i);
    let var_3 = select(select(select(vec2<bool>(!var_1.x, true), vec2<bool>(true, true), var_1.wy), vec2<bool>(true, any(select(vec2<bool>(false, true), var_1.yw, true))), vec2<bool>(!var_1.x, true)), var_1.yw, any(!select(var_1.zwz, var_1.xzw, vec3<bool>(false, true, var_1.x))) & true);
    return _wgslsmith_sub_vec3_u32(~u_input.a.wwx, var_0.a.zwy & u_input.a.zzx);
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(vec4<i32>(~_wgslsmith_mod_i32(2147483647i << (global0.b.x % 32u), 2147483647i), 27211i, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, -35993i), 24837i)), -_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-20309i, u_input.b))), func_3(~1u) | _wgslsmith_sub_vec3_u32(vec3<u32>(0u, ~1u, ~1u), vec3<u32>(global0.b.x & u_input.a.x, 10608u | u_input.a.x, ~global0.b.x)));
    global0 = Struct_1(var_0.a, vec3<u32>(~(~var_0.b.x << (var_0.b.x % 32u)), ~(~(1u >> (1u % 32u))), _wgslsmith_dot_vec3_u32(global0.b, ~vec3<u32>(global0.b.x, 23164u, 0u))));
    let var_1 = global0.b.x;
    let var_2 = Struct_2(abs(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, var_0.a.x, u_input.b, -58057i), vec4<i32>(global0.a.x, 2147483647i, 2147483647i, 1i)))) | ~(-31936i));
    let var_3 = global0.b.x;
    return ~select(u_input.a.xyy, var_0.b, any(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(-arg_0, func_2());
    return Struct_1(-_wgslsmith_mult_vec4_i32(max(vec4<i32>(-11992i, arg_0.x, 0i, global0.a.x), abs(global0.a)), max(vec4<i32>(u_input.b, 0i, -25736i, -1i), vec4<i32>(-2147483647i, -1i, 23899i, global0.a.x)) & global0.a), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(48664u, u_input.d), global0.b.x), 4294967295u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(max(vec4<i32>(~0i, -global0.a.x, ~36591i, -55340i & global0.a.x) | ~global0.a, select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 61617i, u_input.b, global0.a.x), ~vec4<i32>(2147483647i, 2147483647i, 1i, global0.a.x)), global0.a & vec4<i32>(u_input.b, 0i, u_input.b, global0.a.x), true & (u_input.d > global0.b.x))));
    var var_0 = _wgslsmith_f_op_f32(select(732f, _wgslsmith_f_op_f32(-507f + _wgslsmith_f_op_f32(f32(-1f) * -756f)), false));
    var var_1 = Struct_3(~vec4<u32>(0u, u_input.c.x, 39486u, 1u));
    let var_2 = _wgslsmith_f_op_f32(floor(-487f));
    let var_3 = Struct_2(-39874i | -u_input.b);
    var_0 = var_2;
    var_0 = -1583f;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(var_2 + var_2)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(657f, 895f) * vec2<f32>(1146f, var_2)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(302f, var_2))) * vec2<f32>(_wgslsmith_f_op_f32(1000f * -1369f), _wgslsmith_f_op_f32(f32(-1f) * -1373f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -1459f, _wgslsmith_f_op_f32(min(var_2, _wgslsmith_div_f32(var_2, 994f))))), var_1.a.x);
}

