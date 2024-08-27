struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: array<f32, 11>;

var<private> global3: array<f32, 21> = array<f32, 21>(-982f, 329f, 501f, 985f, 589f, 967f, -1000f, 991f, 518f, -1000f, 440f, -1831f, 1000f, -1352f, 2432f, -743f, -1712f, -669f, 426f, -1000f, 1211f);

var<private> global4: array<vec2<u32>, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    let var_0 = ~abs(min(vec2<i32>(1i, 1i), ~vec2<i32>(0i, 1i)));
    var var_1 = arg_2.zy;
    var var_2 = ~(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(arg_0.b, u_input.b.x, 0u, u_input.a)), ~vec4<u32>(arg_0.a.x, arg_1.a.x, u_input.a, arg_1.a.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_0.b, 41262u, arg_0.b), vec4<u32>(arg_1.a.x, 0u, u_input.b.x, arg_1.b)) % vec4<u32>(32u))) ^ 10278u);
    var var_3 = reverseBits(arg_1.a);
    var var_4 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, any(vec3<bool>(false, false, false)), true), vec3<bool>(true, all(vec3<bool>(true, false, true)), true), true & select(true, false, false)));
    return 28397i;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec4<i32> {
    let var_0 = ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 75460u, 8636u, arg_0.b), vec4<u32>(arg_0.a.x, arg_2, 4294967295u, u_input.b.x)) << ((vec4<u32>(4294967295u, 0u, 10547u, 0u) ^ vec4<u32>(u_input.a, 1u, u_input.a, arg_1)) % vec4<u32>(32u)), vec4<u32>(~4294967295u, ~69779u, 37283u, 1u)), vec4<u32>(~_wgslsmith_clamp_u32(arg_1, 1u, 36310u), abs(arg_1 | u_input.b.x), 31269u, ~arg_2));
    let var_1 = vec4<i32>(_wgslsmith_sub_i32((0i >> (u_input.b.x % 32u)) ^ 24370i, _wgslsmith_mod_i32(49692i, _wgslsmith_dot_vec3_i32(vec3<i32>(14998i, 5423i, 2147483647i), vec3<i32>(5563i, 1i, 2147483647i))) & _wgslsmith_div_i32(_wgslsmith_add_i32(2495i, 42069i), reverseBits(-6707i))), -_wgslsmith_add_i32(~0i, -1i), _wgslsmith_add_i32((_wgslsmith_div_i32(27416i, -6048i) >> (_wgslsmith_add_u32(0u, arg_0.a.x) % 32u)) & -2147483647i, ~(~select(-1i, 30867i, true))), max(-firstTrailingBit(firstLeadingBit(55985i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(2147483647i, 27507i)), _wgslsmith_mult_i32(func_3(arg_0, Struct_1(arg_0.a, 69559u), vec4<f32>(697f, 338f, global3[_wgslsmith_index_u32(50003u, 21u)], global2[_wgslsmith_index_u32(var_0.x, 11u)])), ~1i))));
    var var_2 = arg_0;
    var_2 = Struct_1(_wgslsmith_add_vec2_u32(arg_0.a, ~vec2<u32>(var_0.x, arg_2)), 12006u);
    var var_3 = Struct_1(countOneBits(var_2.a), 40289u);
    return vec4<i32>(var_1.x, 38012i, abs(_wgslsmith_div_i32(24896i, var_1.x)) >> (arg_1 % 32u), var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>) -> StorageBuffer {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec4_i32(-max(min(abs(vec4<i32>(-1i, -1i, 41438i, -19409i)), vec4<i32>(-80766i, 50450i, 0i, 46391i)), max(vec4<i32>(-2147483647i, 0i, 52767i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(33781i, 26450i, 2147483647i, 1i), vec4<i32>(28230i, 65137i, 12862i, 1i)))), func_2(arg_0, 50573u, _wgslsmith_div_u32(arg_0.a.x, ~_wgslsmith_sub_u32(arg_0.b, arg_1.x))));
    global0 = arg_1.x;
    global1 = u_input.a;
    global4 = array<vec2<u32>, 29>();
    return StorageBuffer(-_wgslsmith_dot_vec3_i32(vec3<i32>(-13439i, i32(-1i) * -10698i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 1i), vec2<i32>(0i, var_1.x))), var_1.wyx), arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(arg_0.b << (~68260u % 32u), 21u)])), global3[_wgslsmith_index_u32(select(1u, _wgslsmith_div_u32(38748u, 4294967295u), false), 21u)]), min(~1i, -3122i), 62086u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let x = u_input.a;
    s_output = func_1(Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(select(4294967295u, u_input.a, true), 4294967295u >> (u_input.a % 32u), global3[_wgslsmith_index_u32(19027u, 21u)] == -677f), 4294967295u), 29u)], u_input.b.x), (firstLeadingBit(vec2<u32>(var_0.x, 1u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_0.zz | vec2<u32>(u_input.b.x, u_input.b.x))) | u_input.b.xx, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), _wgslsmith_mod_u32(4294967295u, u_input.a) <= _wgslsmith_mult_u32(u_input.a, 24170u)), (true || any(vec3<bool>(true, true, false))) | all(vec2<bool>(true, true))));
}

