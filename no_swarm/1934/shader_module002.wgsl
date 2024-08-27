struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-61749i, 1i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = ~(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(2147483647i, 2147483647i, global0.x))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 2147483647i, -1i), vec3<i32>(global0.x, global0.x, global0.x)), vec3<i32>(2147483647i, global0.x, global0.x), select(vec3<i32>(0i, global0.x, 2662i), vec3<i32>(37378i, global0.x, 42362i), true))) ^ vec3<i32>(global0.x, -global0.x ^ 1i, global0.x));
    var var_1 = (select(~(~vec2<u32>(u_input.a, 2689u)), vec2<u32>(~4294967295u, 4154u), vec2<bool>(true, all(vec3<bool>(false, false, false)))) ^ (~(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a)) & vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, 21377u)), ~14717u))) >> ((_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(30214u, 1u))), vec2<u32>(25945u, u_input.a), ~(~vec2<u32>(34160u, 113503u))) >> (vec2<u32>(reverseBits(9059u), ~(~u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-255f + -175f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_div_f32(877f, 485f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-172f + 201f)))))));
    let var_3 = Struct_2(Struct_1(global0.x));
    let var_4 = var_2.yz;
    return vec2<i32>(~_wgslsmith_mod_i32(abs(i32(-1i) * -19437i), -42516i), _wgslsmith_dot_vec3_i32((vec3<i32>(64689i, var_0.x, -53272i) << (vec3<u32>(var_1.x, u_input.a, 0u) % vec3<u32>(32u))) >> (~vec3<u32>(0u, 67280u, 4294967295u) % vec3<u32>(32u)), (var_0 & var_0) >> (~(~vec3<u32>(u_input.a, 47318u, 1u)) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<i32> {
    global0 = func_3();
    global0 = ~firstLeadingBit(func_3());
    let var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 92040u << (u_input.a % 32u), _wgslsmith_sub_u32(0u, 51827u ^ u_input.a), u_input.a), ~(~(~vec4<u32>(5880u, u_input.a, u_input.a, 0u))));
    var var_1 = select(vec4<i32>(-2147483647i | global0.x, ~(~arg_0.a), 2147483647i & arg_0.a, 27163i), vec4<i32>(global0.x, ~(-min(28467i, 10029i)), arg_0.a, arg_0.a & 392i), true);
    let var_2 = vec3<f32>(arg_1, arg_1, arg_1);
    return vec2<i32>(-(i32(-1i) * -1i), reverseBits(~0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(10205i));
    let var_1 = -1i;
    global0 = vec2<i32>(var_1, 2147483647i);
    global0 = _wgslsmith_mod_vec2_i32(func_2(Struct_1(firstTrailingBit(reverseBits(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(-664f - -1302f), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1251f)) * _wgslsmith_f_op_f32(677f - -1684f)))), vec2<i32>(_wgslsmith_clamp_i32(0i, func_2(var_0.a, 1f).x, (-1i ^ var_0.a.a) ^ _wgslsmith_sub_i32(var_1, var_1)), -arg_0.a));
    let var_2 = abs(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a, 42182i, var_0.a.a, -47732i), vec4<i32>(global0.x, arg_0.a, 56982i, -2147483647i) ^ vec4<i32>(var_1, 2323i, var_0.a.a, 2147483647i)), _wgslsmith_div_i32(var_0.a.a, _wgslsmith_clamp_i32(-4436i, 32056i, var_1)), -56484i), select(vec3<i32>(39475i, 0i, var_1), abs(max(vec3<i32>(-2147483647i, 4089i, global0.x), vec3<i32>(-31923i, -51931i, global0.x))), true)));
    return ~vec2<i32>(abs(1i) & arg_0.a, ~countOneBits(func_3().x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec2<i32>(~firstLeadingBit(1i), -29839i);
    global0 = _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(func_1(Struct_1(global0.x), vec2<u32>(4294967295u, u_input.a)), vec2<i32>(-2147483647i, global0.x), vec2<i32>(-1i, global0.x)), select(max(vec2<i32>(global0.x, global0.x), vec2<i32>(1i, 4101i)), vec2<i32>(global0.x, global0.x), any(vec3<bool>(true, false, true))))), vec2<i32>(1i, -1i));
    global0 = _wgslsmith_mod_vec2_i32(vec2<i32>(func_1(Struct_1(global0.x), ~vec2<u32>(u_input.a, 60862u)).x, -1i) >> (~vec2<u32>(4294967295u, ~9841u) % vec2<u32>(32u)), vec2<i32>(global0.x, global0.x));
    var var_0 = Struct_1(global0.x);
    let var_1 = !select(vec3<bool>(select(false, select(false, false, true), true), true, max(u_input.a, u_input.a) <= firstTrailingBit(1u)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, false)), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true), any(vec2<bool>(true, false))), !vec3<bool>(false, true, any(vec4<bool>(true, true, true, false))));
    global0 = ~_wgslsmith_add_vec2_i32(func_3(), vec2<i32>(global0.x, 1i ^ _wgslsmith_mod_i32(41935i, var_0.a)));
    global0 = vec2<i32>(global0.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(39395u, u_input.a), ~vec2<u32>(35010u, u_input.a));
}

