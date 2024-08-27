struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1086f, -1000f))), -848f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3107f), -799f), _wgslsmith_f_op_f32(f32(-1f) * -691f));
    var var_1 = reverseBits(~firstLeadingBit(-15388i));
    return arg_0.b;
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = firstTrailingBit(u_input.a);
    var_0 = 1u;
    var_0 = u_input.b.x ^ 1u;
    return 8314u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = ~vec4<u32>(reverseBits(u_input.b.x) >> (u_input.a % 32u), 1u, max(func_3(7779i, true), arg_0), 1u);
    var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, 1u), u_input.b.x, u_input.b.x, 18133u << (arg_0 % 32u)) << ((vec4<u32>(u_input.a, 4294967295u, 16873u, 43159u) ^ ~vec4<u32>(u_input.a, 14406u, 26222u, 0u)) % vec4<u32>(32u)), ~(~countOneBits(vec4<u32>(arg_0, 34267u, u_input.a, 4294967295u))));
    return Struct_1(vec4<i32>(_wgslsmith_mod_i32(14094i, -31123i), 59695i, 22442i, -(~20447i)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), func_1(Struct_1(vec4<i32>(37739i, -46296i, 1i, 1i), true))), true), vec2<bool>(true, !func_1(Struct_1(vec4<i32>(0i, 1i, 5951i, -25965i), false))), true), vec2<bool>(true, !any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), false && (true | !all(vec2<bool>(false, true))));
    var var_1 = func_2(1u << (_wgslsmith_clamp_u32(~(~u_input.a), _wgslsmith_mod_u32(u_input.a, 0u), ~21338u << (0u % 32u)) % 32u));
    var_0 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(var_1.b, true), false), vec2<bool>(true, var_1.b), var_0.x), !vec2<bool>(true, var_1.b), select(select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, var_1.b), false), !vec2<bool>(false, var_1.b), var_0.x)), select(!select(!vec2<bool>(var_1.b, false), select(vec2<bool>(var_0.x, var_1.b), vec2<bool>(false, var_0.x), false), true), !select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_1.b), vec2<bool>(true, var_0.x), vec2<bool>(true, var_1.b)), vec2<bool>(var_0.x, var_0.x)), !(!(!var_0.x))), select(vec2<bool>(var_1.b, func_2(u_input.a).b), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, var_1.b, var_1.b)), var_1.b), var_1.b || func_2(u_input.b.x).b), !select(select(vec2<bool>(false, var_1.b), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, var_1.b), u_input.a != u_input.b.x)));
    var_1 = func_2(398u);
    let var_2 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-887f + -431f), -194f), vec2<f32>(1000f, 369f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1552f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-591f)) + -453f))), func_2(abs(_wgslsmith_sub_u32(64868u & u_input.a, u_input.b.x))).a.x);
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(274f * _wgslsmith_f_op_f32(var_2.a.x + 687f)) <= -252f, var_0.x);
    var_0 = vec2<bool>(false, false);
    var_1 = func_2(u_input.a);
    var_0 = vec2<bool>(false, firstTrailingBit(min(firstTrailingBit(var_1.a.x), var_2.b)) == reverseBits(abs(var_1.a.x | var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2083f, var_2.a.x, 1000f, var_2.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-1013f + -481f), _wgslsmith_f_op_f32(581f - 784f), _wgslsmith_f_op_f32(var_2.a.x - -1000f), _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, var_2.a.x, -369f, var_2.a.x) * vec4<f32>(199f, 483f, -194f, var_2.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 777f, var_2.a.x, -466f) - vec4<f32>(1230f, var_2.a.x, -882f, var_2.a.x)), var_1.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2041f, var_2.a.x, 736f, var_2.a.x)) + vec4<f32>(-771f, -2104f, 568f, var_2.a.x))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.a, vec2<f32>(729f, var_2.a.x)), _wgslsmith_f_op_vec2_f32(-var_2.a)), var_2.a)), vec3<u32>(10420u, ~4294967295u, abs(4294967295u)), i32(-1i) * -var_1.a.x);
}

