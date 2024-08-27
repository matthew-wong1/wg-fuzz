struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: vec3<u32> = vec3<u32>(27660u, 0u, 4294967295u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = vec4<i32>(var_0.a, ~_wgslsmith_add_i32(-9347i, _wgslsmith_add_i32(arg_0.a, 1i)), var_0.a, arg_0.a);
    var var_2 = Struct_1(0i);
    global1 = (~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, 68616u, global1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1.x, global1.x), vec3<u32>(1u, global1.x, global1.x))) >> (~(vec3<u32>(global1.x, global1.x, 80695u) >> (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ ~max(reverseBits(vec3<u32>(global1.x, 18085u, global1.x)), _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(5818u, global1.x, 49267u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, global1.x, 38938u)));
    var_1 = vec4<i32>(-abs(-var_2.a ^ (-42559i & arg_0.a)), -max(abs(abs(2147483647i)), var_0.a), min(~0i, var_0.a), i32(-1i) * -2147483647i);
    return (vec3<u32>(global1.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 24731u, global1.x), vec3<u32>(global1.x, global1.x, 4294967295u)), _wgslsmith_clamp_u32(66628u, global1.x, global1.x)), 108049u >> (global1.x % 32u)) >> (~(~abs(vec3<u32>(0u, global1.x, 0u))) % vec3<u32>(32u))) >> (vec3<u32>(~1u, 4294967295u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6092u, 843u), global1.zy), ~64161u)) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global1 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 1u, 54473u), vec3<u32>(global1.x, 38276u, 0u)), vec3<u32>(global1.x, ~0u, global1.x)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.x, global1.x, 59633u), vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(global1.x, global1.x, global1.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(15436u, 0u, global1.x), vec3<u32>(global1.x, 0u, 0u)) & vec3<u32>(43812u, 1u, global1.x))), ~(~(~vec3<u32>(global1.x, 0u, 4294967295u))));
    global0 = array<vec4<i32>, 24>();
    global1 = _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, global1.x, 179u), vec3<u32>(1u, global1.x, global1.x))) << (func_3(Struct_1(-1i), countOneBits(1i)) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, firstTrailingBit(global1.x), ~global1.x))) & ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(global1.x, global1.x, 4294967295u, global1.x)), global1.x, _wgslsmith_sub_u32(global1.x, 5629u)));
    let var_0 = !select(vec3<bool>(31836u > _wgslsmith_mult_u32(global1.x, 1040u), true, false), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), !vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true));
    global1 = (vec3<u32>(_wgslsmith_sub_u32(global1.x | global1.x, global1.x), 565u, 0u) ^ vec3<u32>(max(_wgslsmith_clamp_u32(global1.x, global1.x, global1.x), ~27962u), 55226u, 47200u)) ^ countOneBits(min(vec3<u32>(global1.x, 1u, 45947u) ^ vec3<u32>(4406u, global1.x, global1.x), vec3<u32>(global1.x, global1.x, 45763u) << (vec3<u32>(global1.x, 4294967295u, global1.x) % vec3<u32>(32u))) << (firstTrailingBit(abs(vec3<u32>(10394u, global1.x, global1.x))) % vec3<u32>(32u)));
    return _wgslsmith_div_u32(~select(~global1.x, _wgslsmith_clamp_u32(global1.x, global1.x, global1.x), true), 85816u) != firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 23752u, 69366u, global1.x), vec4<u32>(0u, 17598u, global1.x, global1.x)), vec4<u32>(global1.x, global1.x, 4294967295u, global1.x)), vec4<u32>(~83052u, 4294967295u, _wgslsmith_mod_u32(94236u, 4294967295u), ~1u)));
}

fn func_4(arg_0: bool, arg_1: bool) -> u32 {
    global1 = vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(0u, 4294967295u), firstTrailingBit(global1.x) >> (1u % 32u)), 1u, 4294967295u) << (~select(select(vec3<u32>(global1.x, global1.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(3171u, 4294967295u, global1.x), vec3<u32>(global1.x, 0u, global1.x)), select(vec3<bool>(arg_0, arg_1, false), vec3<bool>(false, arg_0, arg_1), vec3<bool>(arg_0, true, false))), ~firstTrailingBit(vec3<u32>(global1.x, global1.x, 1u)), arg_0) % vec3<u32>(32u));
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2581f, -1171f)), _wgslsmith_f_op_f32(step(485f, 485f)), arg_1)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1338f * 1371f) + _wgslsmith_f_op_f32(step(-1150f, 212f))), arg_1, arg_0, arg_0), !(!(!(!vec4<bool>(arg_1, arg_1, arg_0, arg_1)))), u_input.b == ~_wgslsmith_dot_vec3_i32(~u_input.c.zwx, ~vec3<i32>(2147483647i, 0i, u_input.a)));
    global1 = select(~(~max(vec3<u32>(52413u, 1u, 1u), ~vec3<u32>(10468u, 0u, 25787u))), ~_wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(global1.x, global1.x, global1.x)), ~reverseBits(vec3<u32>(global1.x, global1.x, 1u))), !vec3<bool>(var_0.x, true, false));
    let var_1 = Struct_1(u_input.b);
    var var_2 = ~reverseBits(u_input.c);
    return ~_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, global1.x) << ((global1.x >> (global1.x % 32u)) % 32u), 528u));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = ~u_input.c.x <= -arg_1;
    var var_1 = Struct_1(_wgslsmith_add_i32(arg_3.a, arg_3.a));
    global1 = _wgslsmith_sub_vec3_u32(vec3<u32>(func_4(false, func_2(vec2<i32>(var_1.a, 1i) ^ arg_2)), global1.x, ~max(global1.x, _wgslsmith_clamp_u32(1u, 73957u, global1.x))), ~(~vec3<u32>(global1.x, 1u, 1u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(global1.x), ~global1.x, global1.x), _wgslsmith_div_vec3_u32(~vec3<u32>(global1.x, global1.x, global1.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.x, 1u), vec3<u32>(73110u, global1.x, 4294967295u)))) % vec3<u32>(32u)));
    var_1 = Struct_1(-82060i);
    global1 = func_3(Struct_1(~_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, 1i), -20269i)), firstTrailingBit(0i));
    return 555f;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(u_input.a);
    let var_1 = Struct_1(-37498i);
    return Struct_1(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 1u <= global1.x), vec4<bool>(true, false, all(vec2<bool>(true, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1222f) * _wgslsmith_f_op_f32(select(-849f, -2025f, var_0.x))), _wgslsmith_div_f32(-221f, _wgslsmith_f_op_f32(func_1(vec4<bool>(false, var_0.x, false, var_0.x), u_input.a, u_input.c.zx, Struct_1(66170i)))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-440f * _wgslsmith_f_op_f32(min(-1042f, 1370f))), _wgslsmith_f_op_f32(ceil(-129f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-539f, 1552f)) * _wgslsmith_f_op_f32(sign(1724f)))), vec3<f32>(146f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-604f, -543f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f * -686f) + _wgslsmith_f_op_f32(f32(-1f) * -1029f))))), _wgslsmith_mult_u32(~(17980u & global1.x), 6883u) >= ~1u);
    let var_2 = global1.xy;
    let var_3 = ~1u;
    var var_4 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) * _wgslsmith_f_op_f32(min(-1454f, 347f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, 1208f, -430f)))))), !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(2254u, 12725u, 9379u, var_2.x) ^ vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(75837u, 34492u, 4294967295u, var_2.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, var_2.x), vec4<u32>(23936u, global1.x, 33321u, 43723u)), select(vec4<u32>(var_3, global1.x, global1.x, 0u), vec4<u32>(global1.x, 73443u, 1u, global1.x), true))) << ((abs(vec4<u32>(var_3, 36905u, 6038u, var_2.x)) >> (firstLeadingBit(reverseBits(vec4<u32>(33874u, var_3, 15857u, global1.x))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

