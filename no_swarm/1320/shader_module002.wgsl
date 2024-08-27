struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool) -> f32 {
    global0 = array<Struct_3, 32>();
    let var_0 = select(!vec2<bool>(~arg_1.c.x == ~4294967295u, arg_2), select(!vec2<bool>(true, all(vec2<bool>(false, false))), !vec2<bool>(all(vec4<bool>(arg_2, arg_2, false, false)), false), true), vec2<bool>(arg_2, !any(vec4<bool>(false, false, arg_2, false))));
    global0 = array<Struct_3, 32>();
    let var_1 = Struct_2(52727u, Struct_1(1u, arg_2, 0i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, 566f, 1000f, arg_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, -189f, -866f) * vec4<f32>(arg_1.b, arg_1.b, arg_1.b, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -1000f, 1510f, arg_1.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, 219f, -1489f) + vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b))), !select(vec4<bool>(arg_2, false, var_0.x, true), vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, false, var_0.x)))), ~(-select(vec4<i32>(u_input.a, -5236i, -54710i, arg_1.a), u_input.c, true))), 1380f, _wgslsmith_mult_i32(-2147483647i, 16646i & max(~arg_1.a, u_input.a)), u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b - -1000f), arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f - 2173f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.d.x, -1355f))))))));
    return -127f;
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_3, 32>();
    var var_0 = Struct_3(u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) + _wgslsmith_f_op_f32(-2913f + _wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(f32(-1f) * -1019f)))), vec2<u32>(select(1u, 22426u, all(vec2<bool>(true, true))), ~(~(~2532u))), ~min(vec2<u32>(select(4294967295u, 1u, true), _wgslsmith_div_u32(1u, 44744u)), vec2<u32>(1u, 1u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-243f, var_0.b) * _wgslsmith_f_op_f32(-var_0.b)), var_0.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-551f, 796f, 905f, var_0.b), vec4<f32>(412f, 1573f, 603f, var_0.b)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(~22335u, 1u, var_0.c.x | 1u, 95288u << (select(0u, 52277u, false) % 32u)), Struct_3(_wgslsmith_div_i32(1i, u_input.b.x), 1133f, var_0.d, var_0.c), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(~vec4<u32>(57078u, var_0.d.x, var_0.c.x, 4294967295u), Struct_3(u_input.b.x, var_0.b, var_0.d, var_0.c), select(false, false, true)))))), -130f, 1f);
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(-var_0.b))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b * var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(699f - var_1.x))), _wgslsmith_f_op_f32(select(-1501f, 286f, false)));
    return global0[_wgslsmith_index_u32(4491u, 32u)];
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> u32 {
    global0 = array<Struct_3, 32>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_mult_u32(arg_2, 24011u >> (~_wgslsmith_mod_u32(1u, var_0.c.x) % 32u));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(527f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2620f))), 1000f)), !all(vec3<bool>(true, false, false)) || false));
    global0 = array<Struct_3, 32>();
    return _wgslsmith_mod_u32(arg_2, ~(func_2().d.x << (~min(4294967295u, var_0.d.x) % 32u)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1f))), _wgslsmith_add_vec2_u32(~vec2<u32>(33794u, ~arg_0), _wgslsmith_add_vec2_u32(~(vec2<u32>(arg_0, arg_0) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(arg_0), 0u ^ arg_0))), ~reverseBits(~vec2<u32>(23125u, arg_0)) ^ ~_wgslsmith_mult_vec2_u32(min(vec2<u32>(64391u, 0u), vec2<u32>(1u, 0u)), vec2<u32>(arg_0, arg_0)));
    let var_1 = u_input.c.xx;
    var_0 = Struct_3(-3707i & firstLeadingBit(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b)), ~select(vec2<u32>(102628u, func_1(108570u, var_0.d.x, 29745u)), ~vec2<u32>(22980u, 4294967295u), vec2<bool>(all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), all(arg_1))), var_0.c);
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    return Struct_1(var_0.c.x, !all(!(!vec4<bool>(false, true, arg_1.x, false))), u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-328f, var_0.b, 347f, var_0.b), vec4<f32>(787f, var_0.b, var_0.b, var_0.b), vec4<bool>(arg_1.x, arg_1.x, true, true))))))), u_input.c);
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    var var_0 = ~arg_1;
    let var_1 = Struct_4(arg_0.a, u_input.c.wzx);
    return func_4(1u, !vec2<bool>(var_1.a.b & any(arg_2), select(any(vec3<bool>(arg_0.a.b, arg_0.a.b, arg_2.x)), var_1.a.b || false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    var var_0 = func_5(Struct_4(func_4(func_1(_wgslsmith_div_u32(66004u, 32464u), 1u, 34249u), vec2<bool>(true, false)), _wgslsmith_div_vec3_i32(u_input.c.zwy, ~vec3<i32>(u_input.a, u_input.c.x, u_input.b.x) ^ u_input.c.yyz)), ~func_2().a, !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~13004u, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 1u, func_4(22300u, vec2<bool>(false, true)).a, 16321u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 138096u, 0u, 4294967295u), vec4<u32>(59863u, 0u, 1u, 58708u), vec4<u32>(0u, 12386u, 15787u, 21091u)) & ~vec4<u32>(24645u, 0u, 4294967295u, 1u))), 32u)]);
    var var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.d))))), _wgslsmith_clamp_vec3_i32(select(-(var_1.zyx << (vec3<u32>(0u, 0u, var_0.a) % vec3<u32>(32u))), vec3<i32>(-1i) * -var_1.yyx, var_0.b), var_0.e.zyz, -(var_0.e.yyx << (vec3<u32>(1u, var_0.a, var_0.a) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(abs(var_0.d.wwz)));
}

