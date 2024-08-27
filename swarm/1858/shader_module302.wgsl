struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: vec3<f32> = vec3<f32>(1638f, 275f, -1294f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = Struct_3(_wgslsmith_add_vec4_u32(select(~(u_input.b << (vec4<u32>(28794u, 4294967295u, arg_2.b.a.b, 62245u) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(arg_1.b, global1.e.x, arg_2.d.e.x, arg_1.e.x) >> (arg_2.b.a.e % vec4<u32>(32u))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), true)), min(~vec4<u32>(arg_2.d.b, 56955u, arg_1.a.x, 8946u), global1.e ^ select(arg_2.a, arg_2.b.a.e, false))), Struct_2(arg_1), _wgslsmith_f_op_f32(-global2.x), arg_1, arg_2.e);
    let var_1 = var_0.d.d;
    let var_2 = reverseBits(vec3<u32>(u_input.b.x, min(~43714u, global1.e.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(arg_1.e.zxx, vec3<u32>(26577u, 353u, 35515u), true), ~arg_2.a.yyw), vec3<u32>(17961u, u_input.b.x, _wgslsmith_div_u32(u_input.b.x, arg_2.d.e.x)))));
    let var_3 = arg_2.c;
    let var_4 = !select(vec3<bool>(true, _wgslsmith_add_u32(66880u, arg_1.b) <= arg_2.d.b, !(arg_2.b.a.d.x >= 15836i)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    return _wgslsmith_clamp_vec2_u32(~vec2<u32>(~4294967295u, 4294967295u), countOneBits(~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_1.e.x), u_input.b.wz))), ~(max(min(vec2<u32>(arg_1.a.x, var_0.b.a.a.x), vec2<u32>(0u, 4294967295u)), abs(vec2<u32>(arg_1.e.x, 1u))) >> (firstTrailingBit(reverseBits(var_2.zx)) % vec2<u32>(32u))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_1(~func_3(vec4<i32>(2147483647i, u_input.c, -2147483647i, u_input.d), Struct_1(vec2<u32>(global1.a.x, u_input.b.x), 117956u, arg_1.c, arg_0.d.c, arg_1.e), Struct_3(vec4<u32>(global1.b, 1u, 4294967295u, 81701u), Struct_2(Struct_1(u_input.b.yz, arg_1.a.x, vec3<i32>(0i, arg_0.b.a.c.x, arg_1.d.x), arg_1.d, u_input.b)), arg_0.c, Struct_1(arg_0.a.yz, arg_1.b, global1.c, vec3<i32>(arg_1.c.x, -1i, 1i), arg_0.b.a.e), arg_0.e)) & u_input.b.yz, global1.e.x, vec3<i32>(-4912i, 17370i, firstLeadingBit(-u_input.a << (4294967295u % 32u))), ~vec3<i32>(1i, -1i, global1.d.x), _wgslsmith_mult_vec4_u32(arg_0.a << (~(~arg_1.e) % vec4<u32>(32u)), abs(arg_1.e)));
    var var_1 = arg_2.x || (select(true, any(!vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), true) && !arg_2.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.e.zwz * global0.yzw) * vec3<f32>(arg_0.c, 918f, -1190f)), _wgslsmith_f_op_vec3_f32(-arg_0.e.wyw)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.e.x, global2.x, -240f))), vec3<f32>(_wgslsmith_f_op_f32(-283f * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -659f), global0.x)))));
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(global1.e.ww, ~(~firstLeadingBit(vec2<u32>(0u, 4113u))), ~u_input.b.yy), ~(~(~33971u)), firstTrailingBit(vec3<i32>(firstLeadingBit(global1.d.x | var_0.d.x), -u_input.a, u_input.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(-7165i, max(global1.c.x, -5699i), global1.c.x), global1.c), vec4<u32>(global1.e.x, var_0.a.x, ~12314u, global1.b));
    var_1 = false;
    return vec2<u32>(71579u, arg_0.d.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(abs(4294967295u), _wgslsmith_mult_u32(2754u, ~(~arg_0.x)));
    return arg_1.a;
}

fn func_1(arg_0: f32) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(423f - -664f), _wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(min(979f, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -722f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), global0.x) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(632f, arg_0, -244f, global0.x))))))))));
    let var_0 = Struct_2(func_4(global1.a, Struct_2(Struct_1(func_2(Struct_3(u_input.b, Struct_2(Struct_1(global1.e.xw, u_input.b.x, vec3<i32>(-15672i, -2147483647i, 2147483647i), global1.c, u_input.b)), global2.x, Struct_1(u_input.b.xw, u_input.b.x, vec3<i32>(13069i, u_input.a, global1.c.x), global1.d, vec4<u32>(u_input.b.x, 4294967295u, 12129u, 10838u)), vec4<f32>(-1000f, 374f, -1298f, global0.x)), Struct_1(u_input.b.ww, 4294967295u, global1.d, vec3<i32>(u_input.a, u_input.d, -21188i), vec4<u32>(global1.a.x, 1u, 4294967295u, 4294967295u)), vec3<bool>(false, false, true)), u_input.b.x, global1.d, _wgslsmith_clamp_vec3_i32(global1.d, vec3<i32>(6869i, u_input.d, 9971i), vec3<i32>(global1.d.x, u_input.a, u_input.c)), u_input.b))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(select(-2428f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-849f)), _wgslsmith_f_op_f32(select(-1238f, 1340f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f))), false)), _wgslsmith_div_f32(global2.x, global2.x), arg_0, _wgslsmith_div_f32(-169f, arg_0));
    let var_1 = !select(select(vec3<bool>(true, true, global1.a.x <= var_0.a.a.x), vec3<bool>(all(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)), true), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f - -352f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f) + 317f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -228f) - -341f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, 559f)) + -574f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, global0.x, -111f, global2.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1282f, 458f, arg_0, 1118f), vec4<f32>(global2.x, -700f, -438f, arg_0), vec4<bool>(true, false, var_1.x, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 2126f, 1481f, global2.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 390f, -390f, arg_0), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, global2.x, arg_0, 1571f))), !vec4<bool>(true, var_1.x, false, true))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-834f, global0.x, global2.x, 229f)))))), any(vec4<bool>(false, !(var_0.a.d.x == 12102i), true, false))));
    return _wgslsmith_add_u32(~select(_wgslsmith_sub_u32(u_input.b.x >> (1u % 32u), global1.a.x), ~global1.b | 1u, global0.x < arg_0), (4294967295u >> (var_0.a.a.x % 32u)) ^ u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<u32>(firstLeadingBit(global1.a.x), 1u, 4294967295u, 44271u), Struct_2(Struct_1(u_input.b.zz ^ (global1.a & global1.a), ~128861u, countOneBits(countOneBits(vec3<i32>(u_input.a, u_input.c, u_input.c))), global1.c, ~global1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), Struct_1(abs(max(vec2<u32>(58955u, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u))), 4294967295u, global1.d, ~(vec3<i32>(-21020i, -31799i, global1.d.x) << (vec3<u32>(28835u, u_input.b.x, 44456u) % vec3<u32>(32u))), vec4<u32>(global1.b, _wgslsmith_div_u32(~0u, select(4294967295u, 1u, false)), _wgslsmith_dot_vec2_u32(reverseBits(global1.e.zz), ~u_input.b.yw), ~(~9866u))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 1000f) - 1893f)), _wgslsmith_f_op_f32(-global2.x)));
    let var_1 = -1i;
    let var_2 = func_1(-472f);
    let var_3 = -540f;
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f + _wgslsmith_f_op_f32(var_3 - global0.x))) - var_3), _wgslsmith_f_op_f32(-var_0.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.zy);
}

