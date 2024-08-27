struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -6017i, 20976i, -33359i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(abs(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(33726u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, 1495i, -14068i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-13707i, global0.x, -44217i), ~vec3<i32>(u_input.a.x, 4874i, global0.x))), -10884i), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-512f - -1268f)))))), Struct_1(-695f), reverseBits(u_input.b.x << (~_wgslsmith_clamp_u32(1u, 0u, u_input.b.x) % 32u)));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(abs(reverseBits(u_input.a.ywy))) | -vec3<i32>(34444i, u_input.a.x, 1i), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(global0.x, i32(-1i) * -51577i, global0.x)), ~(~(u_input.a.xwx << (vec3<u32>(112490u, var_0.a, 1u) % vec3<u32>(32u))))));
    global0 = _wgslsmith_clamp_vec4_i32(u_input.a, abs(u_input.a << (~_wgslsmith_div_vec4_u32(vec4<u32>(969u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, var_0.e, var_0.a, var_0.a)) % vec4<u32>(32u))), vec4<i32>(reverseBits(abs(-2147483647i)), 2147483647i, var_0.b, max(-7851i, 1i)) ^ vec4<i32>(-var_1, ~var_0.b, -1i, -var_0.b));
    var var_2 = var_0.d;
    let var_3 = true && (firstTrailingBit(_wgslsmith_div_i32(-10299i, min(1i, 38147i))) > _wgslsmith_mult_i32(-_wgslsmith_add_i32(var_1, 2147483647i), var_1));
    return select(!select(select(select(vec2<bool>(var_3, var_3), vec2<bool>(var_3, true), vec2<bool>(var_3, true)), vec2<bool>(var_3, var_3), select(vec2<bool>(false, true), vec2<bool>(false, var_3), vec2<bool>(false, var_3))), !(!vec2<bool>(false, var_3)), u_input.b.x != countOneBits(u_input.b.x)), vec2<bool>(!(select(var_3, false, var_3) & !var_3), !((-2147483647i >> (u_input.b.x % 32u)) != firstTrailingBit(1i))), select(any(!select(vec4<bool>(true, true, false, var_3), vec4<bool>(var_3, true, var_3, false), true)), any(vec2<bool>(var_3 | true, true)), true));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = !arg_1.x;
    global0 = firstLeadingBit(u_input.a ^ u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a)));
    var var_2 = select(arg_1.xx, select(vec2<bool>(!(!arg_1.x), arg_1.x | var_0), select(vec2<bool>(true, arg_1.x), !arg_1.xz, func_3()), !(!(!vec2<bool>(var_0, true)))), arg_1.xz);
    let var_3 = _wgslsmith_f_op_f32(-arg_0.c.a);
    return all(arg_1);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(17488i, _wgslsmith_mod_i32(32480i, -2147483647i), 34464i, ~0i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global0.x, _wgslsmith_dot_vec4_i32(u_input.a ^ vec4<i32>(global0.x, u_input.a.x, u_input.a.x, 41584i), min(vec4<i32>(u_input.a.x, global0.x, global0.x, global0.x), u_input.a))), vec4<i32>(select(global0.x, _wgslsmith_mod_i32(-2147483647i, global0.x), func_2(Struct_2(67985u, 60505i, Struct_1(-1037f), Struct_1(-2298f), u_input.b.x), arg_0, global0.x, Struct_2(0u, global0.x, Struct_1(-758f), Struct_1(515f), u_input.b.x))), 0i, ~max(17944i, global0.x), u_input.a.x)));
    global0 = ~(abs(u_input.a) & countOneBits(vec4<i32>(countOneBits(global0.x), -20776i, ~global0.x, max(48505i, -17957i))));
    var var_0 = global0.xz;
    let var_1 = Struct_1(-180f);
    global0 = -_wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.a), u_input.a);
    return _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(~1i, global0.x)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(-34039i, 1i, global0.x, ~1i) | vec4<i32>(_wgslsmith_div_i32(-u_input.a.x & _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), reverseBits(u_input.a.x)), 2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(global0.x), 1i), countOneBits(1i)), global0.x);
    global0 = u_input.a;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -903f));
    var var_1 = Struct_2(0u, func_1(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, true))), Struct_1(-547f), Struct_1(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) + _wgslsmith_f_op_f32(-var_0.a))))), _wgslsmith_mult_u32(57992u, 0u));
    var var_2 = Struct_2(_wgslsmith_div_u32(var_1.a, ~var_1.e >> (_wgslsmith_mult_u32(u_input.b.x, 1u) % 32u)) >> ((15258u << (u_input.b.x % 32u)) % 32u), ~global0.x, Struct_1(-656f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a * var_1.d.a))), abs(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(max(28733u, 1u), var_1.a, var_2.e | 0u) & vec3<u32>(63846u, 0u, u_input.b.x)));
}

