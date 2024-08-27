struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -68682i;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: f32;

var<private> global3: array<Struct_2, 30>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> u32 {
    global1 = vec4<bool>(global1.x, false == global1.x, true, !global1.x);
    let var_0 = _wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), true)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-203f, arg_1), vec2<f32>(-1106f, arg_1))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(770f, var_0), arg_2.a)))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - 332f), _wgslsmith_f_op_f32(abs(arg_1)))), arg_1)), -3237i, arg_2.c);
    let var_2 = var_0;
    let var_3 = Struct_4(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, var_1.c.a), u_input.b.xy)), max(firstLeadingBit(vec2<i32>(-1i, 0i)), vec2<i32>(2147483647i, u_input.b.x))) < -16414i, Struct_3(vec2<u32>(u_input.c.x, u_input.c.x), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1296f, var_2, -374f), vec3<f32>(-1556f, 595f, var_1.a.x))))));
    return 71898u;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_add_i32(-arg_0.x, _wgslsmith_sub_i32(2147483647i << (u_input.c.x % 32u), i32(-1i) * -2070i));
    var var_1 = reverseBits(_wgslsmith_clamp_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(17540u, 1u, 4294967295u, u_input.a.x))) & max(select(u_input.a, vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 1u), global1.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.c.x)), select(u_input.a, vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.d), firstLeadingBit(1u), abs(54515u), u_input.c.x), global1.x), vec4<u32>(reverseBits(arg_1.a.x) >> (u_input.d % 32u), arg_1.b, ~abs(u_input.a.x), ~u_input.a.x)));
    var var_2 = ~(~select(~vec2<u32>(0u, arg_1.a.x), arg_1.a ^ var_1.yx, true)) ^ (vec2<u32>(~(48511u ^ var_1.x), ~firstTrailingBit(u_input.d)) << (reverseBits(vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_1.x), 0u)) % vec2<u32>(32u)));
    global2 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-357f - _wgslsmith_f_op_f32(trunc(-646f)))))));
    let var_3 = Struct_3(u_input.a.zz, firstLeadingBit(var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.x, 865f, arg_1.c.x), vec3<f32>(arg_1.c.x, -641f, arg_1.c.x)) * arg_1.c))));
    return arg_0.x >> (countOneBits(arg_1.b << (_wgslsmith_add_u32(~arg_1.a.x, ~u_input.a.x) % 32u)) % 32u);
}

fn func_1() -> bool {
    var var_0 = ~(~8594u) & (u_input.c.x ^ max(0u, firstLeadingBit(func_2(u_input.c.x, 760f, global3[_wgslsmith_index_u32(48955u, 30u)]))));
    global3 = array<Struct_2, 30>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -800f)))))), -1i, Struct_1(firstLeadingBit(1i)));
    let var_2 = select(vec2<bool>(any(vec4<bool>(!global1.x, u_input.b.x < u_input.b.x, true, true)), all(!vec4<bool>(global1.x, global1.x, true, false)) || global1.x), vec2<bool>(-449f > var_1.a.x, !(var_1.c.a <= func_3(u_input.b, Struct_3(vec2<u32>(u_input.c.x, 8313u), 57402u, vec3<f32>(-870f, var_1.a.x, -1347f))))), select(!select(!vec2<bool>(global1.x, true), !global1.yz, global1.x), global1.yz, vec2<bool>(false, true)));
    var var_3 = global1.yzy;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<u32>(u_input.c.x, u_input.d), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(abs(u_input.a.xy), ~vec2<u32>(3659u, u_input.c.x)), u_input.c.x, abs(41674u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1129f, 1630f, -749f) * vec3<f32>(1106f, 1177f, 1000f))))));
    global2 = var_0.c.x;
    let var_1 = 2147483647i;
    global1 = select(!(!vec4<bool>(any(vec4<bool>(false, false, global1.x, global1.x)), any(global1.xyy), global1.x, var_0.c.x > 1000f)), vec4<bool>(global1.x, true, any(global1.xy), func_1()), false);
    var_0 = Struct_3(~vec2<u32>(~var_0.a.x, ~abs(var_0.a.x)), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -272f, -1123f))));
    let var_2 = -(~u_input.b.zz) << (var_0.a % vec2<u32>(32u));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(min(4294967295u, 4294967295u), _wgslsmith_sub_u32(var_0.b, 3394u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, u_input.a.x), vec2<u32>(u_input.a.x, var_0.b)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, var_0.a.x), var_0.a))), vec2<u32>(~(1u | u_input.d), ~(~u_input.d))), 4294967295u, ~(~_wgslsmith_clamp_u32(u_input.d, ~0u, ~var_0.b)), ~(~54915u));
    let var_4 = var_0.c.x;
    var var_5 = !(!(!global1.yxx));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzw, var_0.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_0.c.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(3205f, -1423f)), !(!vec2<bool>(true, global1.x)))))), var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-374f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_f32(-var_0.c.x))));
}

