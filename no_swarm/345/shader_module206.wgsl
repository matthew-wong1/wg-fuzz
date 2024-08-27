struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), -216f, -35432i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * global0.b) * -1623f)))));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = vec3<f32>(-287f, _wgslsmith_f_op_f32(-global0.b), 1185f);
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = Struct_1(select(vec3<bool>(true, any(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x)), false), !vec3<bool>(any(global0.a.xz), true, global0.a.x), select(select(select(vec3<bool>(global0.a.x, global0.a.x, true), global0.a, vec3<bool>(false, global0.a.x, false)), vec3<bool>(global0.a.x, false, global0.a.x), global0.a.x), select(vec3<bool>(false, global0.a.x, false), global0.a, vec3<bool>(true, global0.a.x, false)), vec3<bool>(u_input.a <= 0u, any(global0.a.zz), true))), _wgslsmith_f_op_f32(f32(-1f) * -1011f), firstLeadingBit(global0.c));
    let var_3 = Struct_1(vec3<bool>(false, true, global0.a.x), 661f, _wgslsmith_clamp_i32(var_2.c, -(var_2.c << (1u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(~0i, i32(-1i) * -40912i), select(~vec2<i32>(var_2.c, var_2.c), vec2<i32>(-1i, -1i), var_2.a.x))));
    let var_4 = _wgslsmith_mult_vec3_i32(select(vec3<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 0i, var_2.c), vec3<i32>(32581i, 2147483647i, 24261i) & vec3<i32>(-14801i, var_2.c, -1i)), var_2.c), min(vec3<i32>(-2147483647i, var_2.c, -2147483647i), ~vec3<i32>(2147483647i, 0i, 0i)) >> ((select(vec3<u32>(1u, 26836u, arg_0.x), vec3<u32>(u_input.a, arg_0.x, u_input.a), var_3.a) & vec3<u32>(arg_0.x, 0u, 1u)) % vec3<u32>(32u)), !(!var_3.a)), ~max(_wgslsmith_mod_vec3_i32(vec3<i32>(-23198i, global0.c, var_3.c), vec3<i32>(-30874i, 1i, var_3.c)), firstLeadingBit(vec3<i32>(global0.c, global0.c, global0.c))) & vec3<i32>(min(9792i, 1i) << ((arg_0.x ^ 3596u) % 32u), ~abs(0i), firstTrailingBit(_wgslsmith_add_i32(2147483647i, global0.c))));
    return vec3<bool>(!global0.a.x, true, var_2.a.x);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec4<bool>(global0.a.x, false, any(!(!vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x))), all(select(!global0.a.xx, select(vec2<bool>(global0.a.x, global0.a.x), select(global0.a.yz, vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(true, true)), true), !global0.a.yy)));
    let var_1 = true;
    var var_2 = -859f;
    var var_3 = select(-(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, global0.c, global0.c), vec3<i32>(49186i, global0.c, 1i)) ^ (_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c, 0i, 30325i), vec3<i32>(arg_0, arg_0, 0i), vec3<i32>(global0.c, -3836i, global0.c)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 65919u, 94203u), vec3<u32>(1u, u_input.a, 0u)) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(~vec3<i32>(47103i, global0.c, global0.c) >> ((firstLeadingBit(vec3<u32>(5108u, 1u, 4294967295u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(5358u, 45434u, 17268u)) % vec3<u32>(32u))) % vec3<u32>(32u)), select(select(vec3<i32>(arg_0, 2147483647i, global0.c), vec3<i32>(-9021i, global0.c, arg_0), true), min(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(1i, global0.c, global0.c)), !global0.a) >> (vec3<u32>(1u, reverseBits(u_input.a), firstTrailingBit(u_input.a)) % vec3<u32>(32u))), select(select(var_0.yyx, !global0.a, vec3<bool>(true, true, true)), !var_0.zzy, var_0.wwz));
    var var_4 = select(_wgslsmith_div_u32(abs(abs(u_input.a)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 4936u))) & abs(4294967295u), _wgslsmith_mult_u32(u_input.a, u_input.a), var_0.x != var_1);
    return Struct_1(select(!var_0.xyy, func_3(select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(14778u, u_input.a) ^ vec2<u32>(u_input.a, 8112u), any(vec4<bool>(var_0.x, var_1, true, var_0.x)))), !var_0.xxx), 1113f, var_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = arg_1;
    var var_0 = 1i;
    let var_1 = ~(~vec3<u32>(u_input.a, u_input.a & _wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a));
    var_0 = -min(abs(-49147i), global0.c);
    let var_2 = arg_3;
    return func_2(-(arg_0.c >> (firstTrailingBit(min(u_input.a, u_input.a)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1658f * -582f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, Struct_1(global0.a, -229f, global0.c), vec3<bool>(global0.a.x, false, global0.a.x))))));
    global0 = func_4(func_2(~global0.c), Struct_1(!(!global0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f), 1421f) + global0.b), -1i), Struct_1(vec3<bool>(!(!global0.a.x), true && !global0.a.x, global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b)))), -10494i), -17838i);
    let var_1 = func_2(5737i);
    var var_2 = max(u_input.a, 2617u) | (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), countOneBits(vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u))), ~select(vec4<u32>(54280u, u_input.a, 67102u, 33327u), vec4<u32>(u_input.a, 32274u, 4294967295u, 4294967295u), var_1.a.x)) ^ ~45759u);
    let var_3 = ~(-(~(-global0.c)));
    var var_4 = 1499f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(60924u, u_input.a, ~(~u_input.a)), -2147483647i);
}

