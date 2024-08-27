struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global2 = _wgslsmith_div_vec3_i32(~(-vec3<i32>(2147483647i, select(global2.x, 1i, true), ~2147483647i)), ~(abs(~vec3<i32>(-15872i, -1191i, -2147483647i)) | max(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, u_input.b, 0i), vec3<i32>(0i, -1i, u_input.b)), vec3<i32>(global2.x, 2147483647i, 25813i))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1125f * global1.a)) + 173f)));
    global1 = Struct_1(global1.a);
    let var_0 = ~(-_wgslsmith_mult_i32(firstLeadingBit(abs(2541i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 9779i, -32114i), vec4<i32>(-35418i, global2.x, global2.x, global2.x)), reverseBits(vec4<i32>(-22185i, -14446i, -3206i, u_input.b)))));
    var var_1 = reverseBits(24268i);
    return any(select(global0.zz, !global0.yx, select(global0.xx, !vec2<bool>(true, global0.x), false | any(vec4<bool>(false, true, true, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = !all(!(!(!vec3<bool>(true, global0.x, global0.x))));
    var var_1 = -610f < global1.a;
    var_1 = !any(select(vec4<bool>(global0.x != true, 12830u >= u_input.a, arg_1, false), select(!vec4<bool>(var_0, true, false, arg_1), select(vec4<bool>(true, true, false, true), vec4<bool>(var_0, arg_1, var_0, false), vec4<bool>(global0.x, false, global0.x, global0.x)), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, arg_1, arg_1), vec4<bool>(global0.x, var_0, var_0, false))), vec4<bool>(!var_0, false, false, true)));
    global2 = vec3<i32>(i32(-1i) * -u_input.b, countOneBits(~(~(u_input.b << (4294967295u % 32u)))), firstTrailingBit(1i) << (u_input.a % 32u));
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, 0i, u_input.b, 0i), vec4<i32>(-10544i, -1759i, 1i, -1i)) & firstTrailingBit(vec4<i32>(u_input.b, -1i, global2.x, u_input.b))), vec4<i32>(_wgslsmith_sub_i32((global2.x ^ global2.x) << (u_input.a % 32u), -firstTrailingBit(-25760i)), u_input.b, u_input.b, -2147483647i));
    return 507f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(-104f), func_3(), Struct_1(_wgslsmith_f_op_f32(-global1.a)))));
    let var_1 = (~u_input.a >> (~countOneBits(8569u) % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_div_u32(~u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, min(38323u, 4294967295u)), 1u), max(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), u_input.a, 22494u, u_input.a), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(61050u, 0u, 1u), vec3<u32>(1u, u_input.a, 15624u)), firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 43904u, u_input.a, 4294967295u), vec4<u32>(50489u, u_input.a, 0u, u_input.a)), u_input.a)));
    global1 = Struct_1(-626f);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(191f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-119f)))) + global1.a));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = ~(abs(~(~vec3<u32>(6253u, u_input.a, u_input.a))) | min(vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 0u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), ~12296u), reverseBits(abs(vec3<u32>(1u, 40515u, 79339u)))));
    let var_1 = select(!(!select(!vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, global0.x, false, false), !vec4<bool>(global0.x, global0.x, global0.x, true))), vec4<bool>(true, !(min(4294967295u, 80118u) > ~var_0.x), !(!global0.x), false), select(select(!vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(global0.x, global0.x, true, true), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, global0.x, false), vec4<bool>(true, false, false, true)), !vec4<bool>(global0.x, false, global0.x, global0.x)), !select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, false, global0.x, global0.x), true)), !vec4<bool>(false, true, global0.x, global0.x), false));
    var var_2 = arg_1;
    var var_3 = func_2();
    let var_4 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(global2.x, 32757i)) & (global2.zz >> (var_0.xz % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 7440i) | vec2<i32>(arg_1.x, var_2.x), ~vec2<i32>(9545i, 1675i)), var_2.zx), ~global2.zy | global2.xy), ~select(firstTrailingBit(vec2<i32>(arg_1.x, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(global2.x, u_input.b)), global0.zx) | ~(-(arg_1.zx ^ arg_1.yx)));
    return Struct_1(-999f);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, global2.x, 2147483647i, 2147483647i) | vec4<i32>(-2147483647i, u_input.b, 1113i, global2.x)), vec4<i32>(max(29554i, u_input.b), -2147483647i, -11735i, ~65494i)), 4287i, countOneBits(i32(-1i) * -1i)), (vec3<i32>(u_input.b, -1i, countOneBits(3825i)) & countOneBits(-vec3<i32>(global2.x, -16831i, -39146i))) & _wgslsmith_mod_vec3_i32(-select(vec3<i32>(-1i, 1i, -27865i), vec3<i32>(-19683i, -74912i, u_input.b), false), countOneBits(vec3<i32>(u_input.b, -2147483647i, u_input.b)) << ((vec3<u32>(1u, u_input.a, 36279u) & vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u))), vec3<i32>(global2.x, -13909i, ~(~(-global2.x))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))) + arg_0.yy);
    var var_1 = _wgslsmith_f_op_f32(-763f * 1930f);
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a, 9513u, 8419u) << (vec3<u32>(9671u, 6980u, u_input.a) % vec3<u32>(32u)), vec3<u32>(5746u, 67747u, u_input.a) << (vec3<u32>(8246u, u_input.a, u_input.a) % vec3<u32>(32u)), !vec3<bool>(true, global0.x, global0.x)), vec3<u32>(~u_input.a, ~4294967295u, u_input.a), ~(~vec3<u32>(u_input.a, 1u, 10778u))), vec3<u32>(~countOneBits(u_input.a), ~1u, u_input.a)), _wgslsmith_add_vec3_u32(max(~max(vec3<u32>(4896u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), min(vec3<u32>(u_input.a, u_input.a, 52445u), vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (vec3<u32>(1u, u_input.a, 55107u) % vec3<u32>(32u)))), select(~(~vec3<u32>(1u, 0u, 1u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(88125u, u_input.a, 1u), vec3<u32>(46847u, u_input.a, u_input.a)), global0.x | (u_input.a >= u_input.a))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.x))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1041f, arg_1.a)))));
    return func_2();
}

fn func_1() -> i32 {
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1388f, global1.a, -1098f, -349f), vec4<f32>(global1.a, global1.a, global1.a, -731f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1549f, 782f, global1.a, global1.a), vec4<f32>(1035f, global1.a, global1.a, global1.a))))))), func_5(func_2(), -(-vec3<i32>(u_input.b, u_input.b, global2.x) & (vec3<i32>(global2.x, global2.x, 1i) | vec3<i32>(5078i, u_input.b, global2.x)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_div_f32(714f, global1.a))), _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(select(global1.a, 193f, false))), false))));
    let var_1 = _wgslsmith_f_op_f32(min(712f, global1.a)) < _wgslsmith_f_op_f32(-global1.a);
    var var_2 = vec2<u32>(u_input.a, 1904u);
    global2 = vec3<i32>(min(26700i, max(~_wgslsmith_clamp_i32(u_input.b, -2147483647i, global2.x), ~(~u_input.b))), u_input.b, 0i);
    let var_3 = countOneBits(1i);
    return abs(-1i >> (_wgslsmith_mod_u32(var_2.x, select(u_input.a, ~var_2.x, all(vec2<bool>(var_1, var_1)))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-16124i | global2.x, u_input.b, u_input.b, func_1()), select(vec4<i32>(-global2.x, max(-1i, 0i), _wgslsmith_mult_i32(31085i, global2.x), -48075i), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 2147483647i, global2.x, -1989i), min(vec4<i32>(-2147483647i, -9128i, u_input.b, 0i), vec4<i32>(global2.x, u_input.b, 2147483647i, -4394i))), firstTrailingBit(u_input.b) >= -firstLeadingBit(u_input.b)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, -2118f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1732f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f * -144f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a)))));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -146f))), -556f))));
    let var_4 = var_1;
    let var_5 = var_1;
    var var_6 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(813f), true, var_4)))), vec3<i32>(_wgslsmith_mod_i32(~25400i, 26232i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_0, var_0) ^ vec4<i32>(u_input.b, 2147483647i, 1i, var_0.x), -_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, -15957i, u_input.b, var_0.x), var_0)), abs(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a * 1260f), -806f, _wgslsmith_f_op_f32(ceil(1499f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-970f, -971f, -1563f) - vec3<f32>(-383f, var_4.a, -526f)))), false)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~1u), ~firstLeadingBit(73848u)), _wgslsmith_clamp_u32(~u_input.a ^ u_input.a, 36764u, u_input.a), 52822u));
}

