struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = arg_2.a;
    let var_2 = u_input.b;
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.b.b, -159f)), -1310f)), -489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-551f))), var_1.b.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(var_0.a.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a.x, 986f, arg_3, var_1.b.a) * var_0.a.a)))), Struct_1(1000f, -428f, vec3<f32>(232f, -452f, 862f), arg_2.b.d));
    let var_3 = true;
    return var_1.b;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> bool {
    var var_0 = true;
    let var_1 = -270f;
    var_0 = select(true, true, all(vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
    let var_2 = Struct_4(all(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true)));
    var var_3 = !(!var_2.a);
    return false;
}

fn func_1() -> f32 {
    let var_0 = (vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x, ~(~u_input.a.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 9927i, 0i, 0i), vec4<i32>(30640i, u_input.a.x, u_input.a.x, 23746i))) | select(abs(vec4<i32>(u_input.a.x, -59394i, u_input.a.x, -2147483647i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(89499u, 21367u, 32068u, 1u), u_input.c) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), !any(vec3<bool>(true, false, false)))) & vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -1i), -43039i, 1i)), u_input.a.x & u_input.a.x, _wgslsmith_dot_vec3_i32(min(u_input.a, firstLeadingBit(u_input.a)), firstTrailingBit(vec3<i32>(50077i, -2147483647i, u_input.a.x))), _wgslsmith_add_i32(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), 58058i)));
    let var_1 = u_input.c.x;
    var var_2 = select(true, true, (~49609i | select(u_input.a.x, -33033i, false)) < 1i) | func_3(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-465f, 637f, -1138f, -590f), vec4<f32>(1000f, 653f, 494f, 1236f), vec4<bool>(false, false, true, true))), Struct_1(-925f, 146f, vec3<f32>(-1000f, -1312f, -1536f), var_0.ww)), func_2(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), all(vec4<bool>(false, false, true, true)), Struct_3(Struct_2(vec4<f32>(1517f, 332f, 596f, 231f), Struct_1(507f, -852f, vec3<f32>(-2467f, 174f, -1000f), u_input.a.xy)), Struct_1(-1000f, -1965f, vec3<f32>(2011f, 1000f, -114f), u_input.a.zy)), _wgslsmith_div_f32(1400f, 1119f))), -(_wgslsmith_add_i32(u_input.a.x, 2147483647i) & ~u_input.a.x), var_0, -1i);
    var_2 = true;
    var_2 = !(!(!(1u >= u_input.b) | any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-961f, -615f), _wgslsmith_f_op_f32(floor(-994f)), any(vec3<bool>(false, true, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(true, select(true, false, true), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 4294967295u, 4294967295u), u_input.c) <= _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(func_1()) <= _wgslsmith_f_op_f32(f32(-1f) * -378f)), select(!vec3<bool>(true, true, all(vec4<bool>(true, false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, false)), u_input.a.x == -2147483647i), true), !vec3<bool>(false, any(vec2<bool>(false, true)), true)));
    var var_1 = firstLeadingBit(_wgslsmith_mod_i32(abs(~(-1i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 23734i, -28684i, -58507i), vec4<i32>(u_input.a.x, u_input.a.x, 1i, 3161i)), ~(-1i)))) >= (i32(-1i) * -25380i);
    var_1 = false;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(587f, -879f, -430f, -537f) * vec4<f32>(1157f, -452f, 491f, -385f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(735f, 1230f, 984f, -1214f), vec4<f32>(-265f, 1854f, 817f, -1180f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2929f, -144f, -1655f, -889f) + vec4<f32>(265f, 1000f, 1000f, -158f)))))), func_2(vec3<bool>(!(!var_0.x), !(!var_0.x), true), u_input.c.x <= ~(u_input.b >> (u_input.b % 32u)), Struct_3(Struct_2(vec4<f32>(-321f, -127f, 480f, 1517f), Struct_1(1450f, -1000f, vec3<f32>(2230f, -169f, 1000f), u_input.a.xy)), Struct_1(961f, _wgslsmith_f_op_f32(sign(-727f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-114f, -1000f, 1460f) - vec3<f32>(-831f, 726f, 225f)), -vec2<i32>(0i, u_input.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(251f * 828f), _wgslsmith_f_op_f32(f32(-1f) * -1040f), var_0.x))))));
    var_1 = true;
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(var_2.a)), var_2.b), Struct_1(var_2.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.x, var_2.a.x))), 1477f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.c * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -492f, var_2.b.b) + vec3<f32>(var_2.b.a, -628f, 1000f)))), u_input.a.zz & (max(var_2.b.d, u_input.a.yz) & ~vec2<i32>(var_2.b.d.x, 0i))));
    let var_4 = var_2.a.x;
    var_3 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(exp2(var_3.b.c.x)), -1326f, -710f), Struct_1(_wgslsmith_f_op_f32(var_2.b.c.x - _wgslsmith_f_op_f32(var_2.b.c.x + -1704f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a.a.www), var_2.b.c), u_input.a.zy)), var_3.a.b);
    var var_5 = ~abs(53548u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 46161u ^ u_input.b)));
}

