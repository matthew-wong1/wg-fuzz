struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<u32>(~69782u, firstTrailingBit(~u_input.a.x), _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x)) | min(~firstTrailingBit(u_input.a.x), 4294967295u));
    var_0 = ~(~countOneBits(_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a.x, u_input.a.x, 21652u), vec3<u32>(var_0.x, u_input.a.x, u_input.a.x)), select(vec3<u32>(u_input.a.x, u_input.a.x, 9748u), vec3<u32>(u_input.a.x, 0u, var_0.x), vec3<bool>(false, false, false)))));
    let var_1 = u_input.a.x;
    return Struct_1(~u_input.a.x);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> f32 {
    let var_0 = Struct_1(~arg_3);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(14654u << (reverseBits(var_0.a) % 32u), 1u), arg_3) & 6964u;
    let var_2 = ~(_wgslsmith_dot_vec3_i32(vec3<i32>(15637i, _wgslsmith_dot_vec2_i32(vec2<i32>(-5490i, 12070i), vec2<i32>(18887i, 1i)), _wgslsmith_clamp_i32(0i, 0i, 2147483647i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(40361i, -29856i, 20929i), vec3<i32>(1i, -27305i, 3021i))) | ~(~1i));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -238f))), arg_1);
    let var_4 = Struct_3(-355f, _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(u_input.a.x, var_1, 96187u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, 20899u, u_input.a.x), vec3<u32>(19152u, 34378u, u_input.a.x), vec3<u32>(var_0.a, u_input.a.x, 46119u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_3, arg_3, u_input.a.x), ~(vec3<u32>(var_0.a, arg_0.a.a.a, arg_3) << (vec3<u32>(arg_3, arg_3, 0u) % vec3<u32>(32u))))), 43252i);
    return arg_1;
}

fn func_2(arg_0: vec3<i32>) -> vec3<i32> {
    let var_0 = ~reverseBits(min(1u, 24019u));
    var var_1 = !(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    var_1 = vec2<bool>(true, false);
    var_1 = vec2<bool>(false, all(select(!select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, true, false, var_1.x)), select(vec4<bool>(false, false, false, var_1.x), !vec4<bool>(true, true, var_1.x, true), !vec4<bool>(var_1.x, false, false, var_1.x)), select(!vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, false, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x)))));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1729f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2219f, -453f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(Struct_1(80526u))), 596f, vec2<bool>(false, var_1.x), 4564u)))))), vec3<f32>(-1555f, 2414f, _wgslsmith_f_op_f32(f32(-1f) * -127f)));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(324f))), ~(~abs(vec3<u32>(46101u, 0u, u_input.a.x))), ~_wgslsmith_add_i32(max(arg_1.x, arg_1.x), -arg_1.x));
    var_0 = !(!(!arg_0 || arg_0) && true);
    let var_2 = arg_2.a;
    var_0 = arg_0;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<i32>(0i, 1i, -2147483647i);
    let var_2 = ~(~4294967295u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-578f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_div_f32(-1157f, -347f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, func_2(vec3<i32>(0i, var_1.x, var_1.x)), Struct_2(Struct_1(var_2)))) - _wgslsmith_f_op_f32(676f + _wgslsmith_f_op_f32(step(-626f, -319f))))) > 351f;
    var var_4 = ~u_input.a & ~u_input.a;
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec4<u32>(4294967295u, 85823u, u_input.a.x, 89061u) ^ vec4<u32>(62817u, var_2, 4294967295u, var_4.x), ~vec4<u32>(var_2, var_2, u_input.a.x, 1u)) | _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(0u, 0u, var_4.x, var_4.x), vec4<u32>(var_2, var_2, var_2, 0u)), ~vec4<u32>(4294967295u, 1u, var_2, var_2), abs(vec4<u32>(64334u, u_input.a.x, 0u, 25805u))), ~(~vec4<u32>(var_4.x, var_0.a, 36211u, var_2)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 73816u, 0u, u_input.a.x) | vec4<u32>(var_4.x, 42219u, var_0.a, var_0.a), vec4<u32>(var_4.x, var_2, 4294967295u, var_0.a))), _wgslsmith_div_u32(1u, var_4.x), _wgslsmith_dot_vec2_u32(u_input.a, firstTrailingBit(abs(vec2<u32>(var_2, 8662u)))), func_1().a);
}

