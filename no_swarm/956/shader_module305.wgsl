struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(252f)), _wgslsmith_div_f32(-384f, -753f), -504f, _wgslsmith_f_op_f32(floor(348f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-582f, -620f, 417f, 333f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1910f, 120f, -249f, 1000f)))), true, _wgslsmith_dot_vec2_u32(vec2<u32>(~global0.x, ~_wgslsmith_clamp_u32(global0.x, 1u, 50846u)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(global0.x, global0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), max(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 68468u)), select(vec2<u32>(78232u, global0.x), vec2<u32>(4954u, global0.x), vec2<bool>(false, false))))));
    global0 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(93100u, 0u), vec2<u32>(global0.x, global0.x), vec2<bool>(true, false)) | countOneBits(vec2<u32>(var_0.c, global0.x)), vec2<u32>(1u, 1u)) | ~vec2<u32>(26849u, var_0.c), max(vec2<u32>(firstLeadingBit(60696u), _wgslsmith_sub_u32(~3996u, min(39157u, global0.x))), ~(~vec2<u32>(global0.x, 4294967295u)) ^ (~vec2<u32>(4294967295u, 9492u) ^ abs(vec2<u32>(1u, global0.x)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)), var_0.a, any(vec3<bool>(false, true, false)) && (min(global0.x, 30735u) != 94562u))), any(select(vec3<bool>(true && var_0.b, any(vec2<bool>(var_0.b, false)), !var_0.b), !vec3<bool>(var_0.b, var_0.b, false), select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, var_0.b, true), select(vec3<bool>(false, false, var_0.b), vec3<bool>(false, false, var_0.b), var_0.b)))), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.x, 0u, var_0.c, var_0.c)), vec4<u32>(var_0.c, global0.x, global0.x, 30905u)) << (15479u % 32u));
    global0 = ~vec2<u32>(global0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 84537u), select(~vec2<u32>(0u, global0.x), ~vec2<u32>(global0.x, 4294967295u), !vec2<bool>(true, var_0.b))));
    var var_1 = firstTrailingBit(~((select(vec2<u32>(0u, var_0.c), vec2<u32>(var_0.c, var_0.c), vec2<bool>(var_0.b, var_0.b)) & (vec2<u32>(27792u, 0u) | vec2<u32>(global0.x, 4294967295u))) << (vec2<u32>(min(global0.x, 4294967295u), 1u) % vec2<u32>(32u))));
    return firstLeadingBit(11936u);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 4026u), global0.x, 1u), abs(vec3<u32>(global0.x, 59663u, 4294967295u))), global0.x, ~global0.x, func_3()), vec4<u32>(1u, global0.x & global0.x, _wgslsmith_add_u32(global0.x, global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, _wgslsmith_add_u32(global0.x, global0.x)), ~select(vec2<u32>(0u, global0.x), vec2<u32>(5012u, 1u), vec2<bool>(false, true)))));
    let var_1 = all(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global0 = vec2<u32>(var_0.x, firstLeadingBit(abs(global0.x)));
    var var_2 = arg_0.x;
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-831f, -428f, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, 1346f, -127f, -1452f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1059f, arg_0.x, 234f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1715f, -1452f) * vec4<f32>(1291f, 1000f, arg_0.x, -1153f)))))), true, 1u >> (global0.x % 32u));
}

fn func_1() -> vec3<i32> {
    var var_0 = func_2(vec3<f32>(235f, 378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(ceil(1936f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(607f))))));
    var_0 = func_2(var_0.a.yzx);
    let var_1 = 0u;
    var var_2 = Struct_2(~select(vec2<u32>(global0.x, 40955u) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), ~vec2<u32>(99555u, var_1), !var_0.b) >> (((~vec2<u32>(47800u, 428u) ^ (vec2<u32>(34476u, 8310u) ^ vec2<u32>(global0.x, var_0.c))) | min(select(vec2<u32>(var_0.c, var_1), vec2<u32>(4294967295u, 1u), var_0.b), vec2<u32>(var_0.c, 0u))) % vec2<u32>(32u)));
    let var_3 = !vec3<bool>(select(countOneBits(u_input.a.x) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -27341i), vec2<i32>(u_input.a.x, 2147483647i)), false, true), any(select(select(vec4<bool>(false, false, true, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, true, false, var_0.b)), !vec4<bool>(var_0.b, false, var_0.b, true), !vec4<bool>(var_0.b, var_0.b, true, var_0.b))), true);
    return vec3<i32>(min(~firstTrailingBit(u_input.a.x), -1i) | firstTrailingBit(26995i), u_input.a.x, min(u_input.a.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(-(~u_input.a.x >> (7610u % 32u)), -_wgslsmith_mod_i32(~u_input.a.x, ~0i)));
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(-17575i, _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(-15747i, var_0, 2147483647i))), func_1() << ((vec3<u32>(44395u, global0.x, 1u) & vec3<u32>(98728u, 34934u, 11152u)) % vec3<u32>(32u))), -5595i), _wgslsmith_sub_i32(1i, min(min(~(-2147483647i), _wgslsmith_sub_i32(23483i, u_input.a.x)), ~abs(u_input.a.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.a, firstTrailingBit(u_input.a)) << ((vec2<u32>(41723u, global0.x) >> (~vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<i32>(_wgslsmith_add_i32(18261i, u_input.a.x), var_0)), ~select(_wgslsmith_sub_i32(var_0, _wgslsmith_mult_i32(u_input.a.x, -1i)), 1i, true));
    let var_2 = select(vec3<bool>(true, true, true), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), false)), select(select(false, false, true), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.a.x, _wgslsmith_clamp_i32(select(-var_0, _wgslsmith_div_i32(0i, var_0), select(var_2.x, true, var_2.x)), 18427i & func_1().x, _wgslsmith_clamp_i32(-u_input.a.x, ~17302i, _wgslsmith_div_i32(var_1.x, -2147483647i))), _wgslsmith_clamp_i32(-34936i, countOneBits(-u_input.a.x), -11198i), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1827f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - 1198f), func_2(vec3<f32>(-233f, 726f, _wgslsmith_f_op_f32(-1000f + -202f))).a.x)), ~_wgslsmith_mod_u32(~global0.x, _wgslsmith_div_u32(func_2(vec3<f32>(-2147f, -1164f, 389f)).c, global0.x)), 892f);
}

