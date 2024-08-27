struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(0u, 65831u, 15396u, 4294967295u, 45599u, 0u);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true), 42454u, vec3<f32>(-314f, 3137f, -680f), -1343f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = global1.a.x;
    global0 = array<u32, 6>();
    return Struct_1(!vec3<bool>(false, true, global1.a.x), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.c, vec3<f32>(694f, global1.c.x, 850f))) - _wgslsmith_f_op_vec3_f32(-global1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1666f, global1.d, global1.d)))), _wgslsmith_f_op_f32(-global1.d));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = array<u32, 6>();
    let var_0 = i32(-1i) * -u_input.b.x;
    global1 = Struct_1(!vec3<bool>(true, arg_0.a.x && true, !(!global1.a.x)), _wgslsmith_div_u32(arg_0.b, 1u), _wgslsmith_f_op_vec3_f32(step(arg_0.c, vec3<f32>(-558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) + _wgslsmith_f_op_f32(f32(-1f) * -1593f)), 1429f))), _wgslsmith_f_op_f32(sign(-104f)));
    let var_1 = -firstTrailingBit(min(vec4<i32>(min(var_0, -40994i), 2283i, -59142i, _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.zy)), -vec4<i32>(u_input.b.x, var_0, u_input.b.x, -2147483647i)));
    var var_2 = vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1090f, _wgslsmith_f_op_f32(select(-673f, _wgslsmith_f_op_f32(ceil(594f)), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1.d)))))), -167f);
    return Struct_1(arg_0.a, countOneBits(~_wgslsmith_sub_u32(~arg_0.b, 8588u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(global1.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-1537f, global1.c.x, -829f), arg_0.c)))))), 131f);
}

fn func_1() -> Struct_1 {
    var var_0 = global1.a.yx;
    var var_1 = func_3(func_2(), 890f);
    let var_2 = select(!var_0.x, true, !global1.a.x);
    var_0 = var_1.a.yy;
    let var_3 = _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(var_1.b, 6u)]))) ^ (vec3<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.a, global1.b), func_2().b) | _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.b, 80319u, var_1.b), vec3<u32>(0u, global0[_wgslsmith_index_u32(18503u, 6u)], 1u)), ~vec3<u32>(global1.b, var_1.b, 4294967295u))), ~(~abs(vec3<u32>(var_1.b, var_1.b, 0u))));
    return func_3(func_2(), 817f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.x, global1.c.x))), _wgslsmith_f_op_f32(-480f - 412f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.d + -1124f)))), arg_2.c.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c.x, arg_3.x, arg_2.c.x, arg_0.d))))))));
    global1 = arg_0;
    let var_1 = func_3(func_2(), var_0.x);
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.d), 1000f)) - _wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f + arg_0.d))));
    return ~countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.b, arg_0.b, global0[_wgslsmith_index_u32(arg_0.b, 6u)], var_1.b), vec4<u32>(5119u, var_2.b, global1.b, global0[_wgslsmith_index_u32(0u, 6u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(18896u, 6u)], 32021u, arg_2.b, arg_2.b) % vec4<u32>(32u))) << (vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.b, 6098u), 6u)], ~1u, ~global1.b, _wgslsmith_div_u32(408u, var_1.b)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~vec2<u32>(_wgslsmith_clamp_u32(23964u, 4294967295u, 75694u), 37569u)));
    var var_1 = reverseBits(abs(~(select(var_0, vec2<u32>(0u, u_input.d), global1.a.yy) >> (_wgslsmith_div_vec2_u32(var_0, var_0) % vec2<u32>(32u)))));
    var var_2 = ~func_4(Struct_1(global1.a, ~global1.b, _wgslsmith_f_op_vec3_f32(round(global1.c)), _wgslsmith_f_op_f32(round(-113f))), u_input.b.yz, func_1(), global1.c.xy) ^ firstLeadingBit(~(vec4<u32>(99547u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48660u, 6u)], 6u)], 1u, 63513u) | vec4<u32>(74915u, global0[_wgslsmith_index_u32(46718u, 6u)], 0u, u_input.d)) ^ (vec4<u32>(var_1.x, u_input.d, global1.b, 0u) >> (firstTrailingBit(vec4<u32>(1u, 4294967295u, 0u, var_1.x)) % vec4<u32>(32u))));
    let var_3 = min(vec2<u32>(firstLeadingBit(global1.b), var_0.x), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(105951u, 4294967295u)), _wgslsmith_mult_vec2_u32(countOneBits(var_0), var_2.zz)));
    let var_4 = vec4<bool>(true, true, global1.a.x, true);
    var var_5 = Struct_1(var_4.zwy, ~4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * -527f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1123f)), _wgslsmith_f_op_f32(-749f + global1.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(var_4.yxx, _wgslsmith_add_u32(~4294967295u, ~100273u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1583f, 105f, 1000f)), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-var_5.d))), select(u_input.b.xz, vec2<i32>(2147483647i, -u_input.b.x), true), func_2(), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_5.d))), _wgslsmith_f_op_f32(f32(-1f) * -692f))).x, 1i, vec2<u32>(1u, select(func_2().b, ~(~12384u), !func_1().a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) * 153f))) - global1.d), 1u);
}

