struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 39325u, 1u, 102796u);

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global0 = firstLeadingBit(vec4<u32>(global0.x, reverseBits(select(1u, global0.x, false)), global0.x, global0.x & ~global0.x) | abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 58120u, 4294967295u), vec4<u32>(0u, global0.x, global0.x, global0.x)) >> ((vec4<u32>(global0.x, global0.x, global0.x, global0.x) | vec4<u32>(45020u, 71707u, 34515u, global0.x)) % vec4<u32>(32u))));
    let var_0 = vec2<u32>(global0.x, 1u);
    var var_1 = 1u;
    global0 = ~reverseBits(~(select(vec4<u32>(21282u, 1u, global0.x, 0u), vec4<u32>(44753u, 1u, global0.x, 102822u), arg_0.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(32484u, 44556u, var_0.x, global0.x), vec4<u32>(4294967295u, 29647u, 17432u, 25875u), vec4<u32>(var_0.x, 112394u, 1u, 4294967295u))));
    var var_2 = true;
    return 1u;
}

fn func_3() -> vec4<u32> {
    global0 = ~vec4<u32>(~global0.x, _wgslsmith_dot_vec2_u32(countOneBits(global0.xz >> (global0.ww % vec2<u32>(32u))), global0.ww), _wgslsmith_div_u32(global0.x, reverseBits(0u)), firstLeadingBit(global0.x));
    global1 = true;
    let var_0 = true;
    let var_1 = Struct_3(var_0, ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, ~117044u), global0.yz));
    global1 = ~global0.x <= 1u;
    return ~(~select(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(26452u, global0.x, 0u, 4294967295u), vec4<u32>(var_1.b.x, global0.x, 8090u, var_1.b.x))), abs(reverseBits(vec4<u32>(2726u, 77384u, var_1.b.x, var_1.b.x))), vec4<bool>(var_0, false, true, true)));
}

fn func_1() -> Struct_4 {
    global0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(0u, global0.x, global0.x, 0u) << (vec4<u32>(4294967295u, 1u, 28559u, global0.x) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_mod_u32(1u, global0.x), global0.x, abs(0u), _wgslsmith_clamp_u32(global0.x, 0u, 0u)), ~(~select(vec4<u32>(29682u, global0.x, 4294967295u, global0.x), vec4<u32>(0u, 17466u, global0.x, global0.x), vec4<bool>(false, true, false, true))), vec4<u32>(0u, _wgslsmith_div_u32(4294967295u << (global0.x % 32u), 1u), ~func_2(vec3<bool>(true, false, false)), 0u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(114679u, global0.x, 46851u, global0.x)), ~(~vec4<u32>(global0.x, 82195u, global0.x, 6332u)), abs(max(vec4<u32>(global0.x, 1u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x)))) | ~vec4<u32>(~13448u, global0.x, global0.x, global0.x), ~func_3());
    let var_0 = select(true, any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, select(false, false, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)))), false);
    var var_1 = vec3<bool>(false, all(select(!vec4<bool>(var_0, var_0, false, true), !select(vec4<bool>(false, true, true, var_0), vec4<bool>(false, var_0, true, var_0), var_0), true)), var_0);
    var_1 = select(select(vec3<bool>(var_1.x, any(vec4<bool>(var_1.x, false, false, var_1.x)), ~u_input.a.x >= u_input.a.x), select(select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_1.x, var_1.x), var_1.x), vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_0, false)), select(vec3<bool>(false, var_0, var_1.x), vec3<bool>(var_1.x, true, true), !vec3<bool>(var_0, false, var_1.x)), all(vec2<bool>(var_1.x, true))), select(vec3<bool>(true & var_1.x, var_1.x, true), !vec3<bool>(var_0, false, var_1.x), false)), select(!(!(!vec3<bool>(var_1.x, false, true))), vec3<bool>(_wgslsmith_div_u32(global0.x, 98033u) > ~global0.x, any(vec3<bool>(var_0, false, true)), !(0u >= global0.x)), select(!(!vec3<bool>(var_0, var_1.x, var_1.x)), !select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, true, var_0), var_1.x), (var_1.x && false) & !var_0)), var_0);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(893f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-779f)), _wgslsmith_f_op_f32(ceil(-1000f)))))))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(412f, var_2, var_2) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 190f))), vec3<f32>(-364f, 516f, _wgslsmith_f_op_f32(1311f - -1376f)))))), ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = false;
    let var_1 = true;
    global0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(57358u, 36082u), global0.x), 121084u, global0.x, ~(~0u | global0.x));
    global1 = all(vec2<bool>(global0.x > 4294967295u, !any(vec3<bool>(false, true, false))));
    let var_2 = _wgslsmith_dot_vec2_u32(countOneBits(func_3().zy), vec2<u32>((11421u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 42032u, 1u, global0.x), vec4<u32>(1u, 4294967295u, global0.x, 21463u))) ^ max(0u ^ global0.x, ~global0.x), 4294967295u));
    let var_3 = ~vec2<u32>(var_2, var_2) & select(vec2<u32>(~58235u >> (~var_2 % 32u), ~var_2), vec2<u32>(~var_2, _wgslsmith_mod_u32(~global0.x, 4294967295u)), false);
    var_0 = Struct_4(var_0.a, max(u_input.a.x, _wgslsmith_mod_i32(var_0.b, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.ywx, vec4<i32>(select(~2147483647i ^ u_input.a.x, select(-64115i | var_0.b, 27750i, !var_1), any(vec4<bool>(false, var_1, var_1, var_1))), -2147483647i, -1i & -firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(-u_input.a), select(select(vec4<i32>(u_input.a.x, -40252i, -9683i, -4374i), vec4<i32>(var_0.b, var_0.b, 5729i, var_0.b), vec4<bool>(false, var_1, false, false)), select(u_input.a, vec4<i32>(u_input.a.x, -815i, -3096i, var_0.b), var_1), var_0.b > 1i))), ~(var_0.b | (abs(var_0.b) ^ -7141i)), ~u_input.a.zz, 1i);
}

