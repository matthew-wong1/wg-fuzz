struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1245f);
    let var_1 = ~(~(~vec2<u32>(u_input.c, select(33747u, u_input.d.x, true))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.e, 31u)];
    var var_3 = global0[_wgslsmith_index_u32(u_input.d.x, 31u)];
    let var_4 = global0[_wgslsmith_index_u32(~7435u, 31u)];
    return Struct_1(any(!vec2<bool>(true, !var_2.a)), vec3<u32>(u_input.e, ~u_input.e ^ _wgslsmith_sub_u32(0u, ~var_4.b.x), ~(var_1.x ^ var_4.c.x)), u_input.d.yy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_4.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.d))))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = true;
    global0 = array<Struct_1, 31>();
    var var_1 = u_input.d;
    var_1 = _wgslsmith_sub_vec4_u32(u_input.d & select(select(vec4<u32>(var_1.x, 53997u, u_input.e, var_1.x) >> (u_input.d % vec4<u32>(32u)), reverseBits(vec4<u32>(var_1.x, 19317u, u_input.e, arg_0.b.x)), true), vec4<u32>(0u & var_1.x, var_1.x, var_1.x, ~u_input.c), select(select(vec4<bool>(false, var_0, arg_0.a, false), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(true, arg_0.a, var_0, arg_0.a)), select(vec4<bool>(var_0, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, false, false, var_0), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, true, var_0), vec4<bool>(arg_0.a, var_0, var_0, var_0), var_0))), vec4<u32>(~(~arg_0.c.x), ~(~_wgslsmith_clamp_u32(u_input.e, arg_0.c.x, var_1.x)), ~30527u, ~1u));
    var var_2 = Struct_1(!(!(true && all(vec4<bool>(var_0, false, false, false)))), arg_0.b, ~arg_0.b.xx << (~vec2<u32>(u_input.e, ~1u) % vec2<u32>(32u)), -268f);
    return 33123i;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_0 = u_input.d.x;
    var_0 = ~(~0u);
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> vec3<bool> {
    var var_0 = func_4(vec4<i32>(~func_3(func_2(), select(vec2<i32>(0i, u_input.b), u_input.a, arg_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1092f, -798f, -276f) * vec3<f32>(-436f, arg_2, 495f))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 9256i, u_input.b) >> (vec3<u32>(arg_1.x, arg_0.b.x, u_input.e) % vec3<u32>(32u)), ~vec3<i32>(0i, 0i, u_input.b)) ^ _wgslsmith_div_i32(1i, func_3(Struct_1(arg_0.a, vec3<u32>(0u, 18816u, arg_1.x), vec2<u32>(arg_0.b.x, u_input.e), 1924f), u_input.a, vec3<f32>(arg_2, -139f, arg_0.d))), -2147483647i, ~u_input.b & ~u_input.a.x), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -354f)));
    var var_1 = !(!(!vec2<bool>(true, all(vec2<bool>(arg_0.a, false)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(609f - -566f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-175f)), -572f), _wgslsmith_f_op_f32(-254f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))))));
    global0 = array<Struct_1, 31>();
    let var_3 = arg_1.x;
    return !select(vec3<bool>(true, true, true), !vec3<bool>(true, true, func_4(vec4<i32>(-2147483647i, u_input.a.x, u_input.b, -1i), arg_2).a), true);
}

fn func_5(arg_0: u32, arg_1: vec4<bool>) -> StorageBuffer {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let var_0 = vec3<f32>(1039f, 1000f, 1016f);
    let var_1 = max(min(min(vec3<i32>(-u_input.b, u_input.a.x, -50217i), ~(~vec3<i32>(u_input.a.x, -1i, 1i))), -abs(vec3<i32>(u_input.b, -1i, u_input.a.x) << (u_input.d.wzz % vec3<u32>(32u)))), ~(~vec3<i32>(-u_input.b, _wgslsmith_clamp_i32(u_input.b, -1i, -18045i), -2147483647i)));
    return StorageBuffer(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec3_u32(max(u_input.d.yzx, u_input.d.zyx), u_input.d.wwy, ~u_input.d.xzz))), _wgslsmith_add_i32(var_1.x | -13825i, firstLeadingBit(-60161i)), _wgslsmith_mult_u32(4294967295u, u_input.d.x), arg_0, var_1.x << (arg_0 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(abs(u_input.e), vec4<bool>(!(all(vec4<bool>(true, false, true, false)) & true), any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), func_1(Struct_1(true, u_input.d.xxw, vec2<u32>(u_input.e, u_input.d.x), -678f), u_input.d.ywx, -1271f), vec3<bool>(false, true, true))), false && (func_1(Struct_1(true, vec3<u32>(4294967295u, u_input.e, u_input.e), u_input.d.zx, -389f), vec3<u32>(u_input.c, 8586u, 0u), 886f).x && false), !func_4(vec4<i32>(-25331i, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.b, u_input.a.x, 2147483647i, u_input.a.x), -860f).a));
}

