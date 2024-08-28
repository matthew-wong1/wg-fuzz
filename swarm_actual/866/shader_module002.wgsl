struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_5) -> vec4<u32> {
    let var_0 = arg_2.a;
    var var_1 = arg_2.a.c.a;
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>((~0u | (25954u << (arg_2.a.b.b % 32u))) >> (select(_wgslsmith_sub_u32(arg_2.a.d.b, arg_2.c), arg_2.c, all(vec3<bool>(false, arg_1, false))) % 32u), abs(~arg_0)), max(firstTrailingBit(~(~vec2<u32>(0u, arg_2.c))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(46883u, arg_0), u_input.a, vec2<u32>(u_input.c, 83141u)) ^ u_input.a), ~u_input.a);
    global0 = var_0.a.x;
    return abs(_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, 0u, 12135u, 15482u), reverseBits(vec4<u32>(u_input.a.x, 46755u, 7949u, u_input.c)), vec4<u32>(u_input.c, var_0.c.b, var_0.b.b, arg_0)), ~(vec4<u32>(0u, arg_2.a.b.b, 17638u, 4294967295u) ^ vec4<u32>(var_2.x, var_0.e.b, var_0.e.b, var_2.x)) ^ (vec4<u32>(u_input.c, arg_2.a.e.b, 0u, arg_2.a.b.b) >> (max(vec4<u32>(16942u, 21620u, 7683u, 86704u), vec4<u32>(arg_0, 74254u, 25262u, arg_2.c)) % vec4<u32>(32u)))));
}

fn func_2() -> bool {
    var var_0 = abs(_wgslsmith_mult_vec4_u32(abs(~(~vec4<u32>(1u, 0u, 0u, u_input.c))), vec4<u32>(u_input.c, u_input.c, ~firstLeadingBit(u_input.c), 26363u)));
    var_0 = select(func_3(~4294967295u, true, Struct_5(Struct_3(vec4<bool>(false, true, false, true), Struct_1(-1000f, u_input.c), Struct_1(836f, var_0.x), Struct_1(-879f, 104340u), Struct_1(-760f, 61720u)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), ~var_0.x, u_input.b)), vec4<u32>(abs(var_0.x ^ 4294967295u), 0u, 0u, _wgslsmith_div_u32(1u, ~var_0.x)), vec4<bool>(!any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(327f - -1609f) != _wgslsmith_f_op_f32(ceil(1385f)), true, true)) ^ select(vec4<u32>(72997u, ~firstLeadingBit(81422u), abs(~46559u), u_input.a.x), ~vec4<u32>(1u, u_input.c, var_0.x, 67238u), false);
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(795f)), 51399u);
    var_1 = true;
    return true;
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    global0 = !arg_0;
    var var_0 = Struct_2(select(!vec3<bool>(arg_0, true, false), select(vec3<bool>(false, all(vec3<bool>(arg_0, false, true)), arg_0), vec3<bool>(!arg_0, true, false | arg_1), !(!vec3<bool>(false, arg_1, arg_0))), select(!select(vec3<bool>(arg_1, arg_0, true), vec3<bool>(arg_1, arg_0, false), vec3<bool>(true, arg_0, arg_1)), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, true, false), vec3<bool>(true, true, true)), vec3<bool>(arg_0, false, arg_0 || false))), -(~(-vec3<i32>(27211i, u_input.b, u_input.b))), Struct_1(-1002f, 7217u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -328f), _wgslsmith_f_op_f32(floor(1112f)), true)))));
    var var_1 = func_2();
    let var_2 = -countOneBits(var_0.b);
    global0 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1140f), var_0.d, arg_1 || true))), -587f)) - _wgslsmith_f_op_f32(-var_0.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-199f)) * _wgslsmith_f_op_f32(func_1(true, false))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(622f, -121f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(-1464f)), _wgslsmith_f_op_f32(ceil(1091f)))))))));
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, reverseBits(-12619i)), countOneBits(vec2<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(u_input.b, -19830i, u_input.b)), u_input.b)));
    var var_2 = select(!(select(all(vec2<bool>(true, false)), func_2(), false) & false), false, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -166f) * vec4<f32>(911f, 384f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(473f * var_0.x), var_0.x, 800f, _wgslsmith_f_op_f32(-2042f - -924f)))));
    var var_4 = Struct_5(Struct_3(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), Struct_1(var_0.x, _wgslsmith_clamp_u32(28040u ^ u_input.c, u_input.a.x, u_input.c)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.x + -161f), 140f, any(vec4<bool>(false, false, false, true)))), 5994u), Struct_1(-1061f, u_input.a.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-680f)), var_0.x), ~55751u | u_input.a.x)), vec3<bool>(true, true, true), firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 78152u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 16478u))) << (1u % 32u)), -18464i);
    global0 = var_4.a.a.x;
    global0 = select(var_4.b.x, -u_input.b >= var_4.d, var_4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, -30601i, u_input.b, 0i));
}

