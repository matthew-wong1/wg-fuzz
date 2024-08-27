struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))));
    let var_1 = any(!vec3<bool>(true, !(global1.x != 1385f), false));
    let var_2 = Struct_1(vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.c.x)))) - 194f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1184f) - global1.x))), -907f), firstLeadingBit(min(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, u_input.c, u_input.c), vec3<i32>(-30873i, 32243i, 1i)), ~_wgslsmith_sub_vec3_i32(arg_0.b, arg_0.b))), vec4<f32>(819f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f * 948f) - _wgslsmith_f_op_f32(f32(-1f) * -1953f)) + _wgslsmith_div_f32(836f, _wgslsmith_f_op_f32(f32(-1f) * -304f)))), vec4<u32>(min(firstTrailingBit(1u), ~arg_0.d.x << (arg_0.d.x % 32u)), arg_0.d.x, u_input.a.x, abs(arg_0.d.x)));
    let var_3 = i32(-1i) * -13596i;
    let var_4 = var_2;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -715f)) * _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_div_f32(-237f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_4.a.x * 605f))))), var_2.c.x, global1.x);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(746f * global1.x), _wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(floor(global1.x))) * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(global1.x, global1.x, 808f, global1.x), vec3<i32>(2147483647i, -2147483647i, -9540i), vec4<f32>(439f, global1.x, global1.x, global1.x), vec4<u32>(u_input.a.x, arg_0, arg_0, 51444u))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + -1000f))), 663f)));
    let var_0 = reverseBits(_wgslsmith_mod_u32(abs(~27493u), 1u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1437f, -810f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, global1.x, 555f))))), firstTrailingBit(vec3<i32>(u_input.c, 2147483647i, 7109i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1488f, 234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1715f + global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -582f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1000f, -1000f, 1278f) * vec4<f32>(global1.x, -588f, -1108f, 901f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1166f, 185f, global1.x))))), ~(~vec4<u32>(1u, 53177u ^ arg_0, select(4294967295u, 1u, false), 4294967295u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), vec3<i32>(-49235i, reverseBits(~_wgslsmith_mult_i32(-48322i, u_input.c)), 2147483647i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-931f, var_1.c.x, -145f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), -1957f))))), vec4<u32>(_wgslsmith_add_u32(~(var_1.d.x | 1u), var_1.d.x), firstTrailingBit(u_input.b) ^ var_0, 56606u, ~40855u));
    var var_3 = u_input.c;
    return _wgslsmith_f_op_vec4_f32(round(var_1.c));
}

fn func_1(arg_0: vec4<f32>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.b))), ~(~select(vec3<i32>(-1i, 56292i, 42247i), ~vec3<i32>(u_input.c, u_input.c, u_input.c), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0 * arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(arg_0.x, -1300f, -1103f, global1.x))), _wgslsmith_f_op_vec4_f32(-arg_0)))), select(select(vec4<u32>(~0u, u_input.b >> (0u % 32u), 1u, _wgslsmith_sub_u32(4294967295u, u_input.a.x)), max(vec4<u32>(49340u, 49269u, 0u, 32284u), vec4<u32>(1468u, u_input.b, u_input.b, 24270u) << (vec4<u32>(18954u, u_input.b, u_input.a.x, u_input.b) % vec4<u32>(32u))), true), min(vec4<u32>(32941u, 0u, u_input.b, u_input.b) & vec4<u32>(u_input.a.x, u_input.a.x, 34468u, 1u), ~vec4<u32>(4294967295u, 0u, u_input.b, 1u)) << ((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 39710u, 4294967295u), vec4<u32>(u_input.b, u_input.a.x, u_input.b, 0u)) ^ ~vec4<u32>(25280u, u_input.b, u_input.b, 4294967295u)) % vec4<u32>(32u)), select(false, any(vec3<bool>(true, false, true)), true)));
    var var_1 = select(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), false), any(vec2<bool>(true, true))), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1410f) < global1.x, any(vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), true)), true != !all(vec3<bool>(false, false, true))), 0i >= max(var_0.b.x, countOneBits(-2147483647i)));
    var var_2 = !(!var_1.xx);
    global0 = _wgslsmith_f_op_f32(round(-416f));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_0, var_0.b, vec4<f32>(-1068f, -2065f, arg_0.x, var_0.a.x), vec4<u32>(4294967295u, 1u, u_input.b, u_input.b)))).x, -1520f, _wgslsmith_f_op_f32(206f * 659f), global1.x)))), ~(~var_0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(1000f, arg_0.x, global1.x, arg_0.x)), vec4<f32>(-496f, var_0.a.x, arg_0.x, 1249f)))), arg_0, var_2.x)), vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_add_u32(68740u, var_0.d.x), select(1u, var_0.d.x, any(vec4<bool>(var_2.x, true, true, false)))), 25466u, 2725u, ~u_input.b));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1107f))), _wgslsmith_f_op_vec4_f32(func_2(1u)).x, _wgslsmith_f_op_f32(round(var_3.c.x)), _wgslsmith_f_op_f32(-global1.x)) + var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2231f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) + global1.x)))), -vec3<i32>(u_input.c, _wgslsmith_add_i32(-15131i, firstTrailingBit(2147483647i)), ~_wgslsmith_clamp_i32(4278i, 1i, u_input.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(186f, global1.x, global1.x, global1.x))))))), _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(~12492u), u_input.a.x, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_sub_u32(13914u, 0u)), 79941u), _wgslsmith_div_vec4_u32(vec4<u32>(71430u, 4294967295u, ~35073u, ~u_input.b), ~_wgslsmith_mod_vec4_u32(vec4<u32>(9599u, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)))));
    var var_1 = var_0.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_u32(~u_input.a.x, ~var_0.d.x)) << (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.d.x, ~u_input.b), ~_wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_mult_u32(18229u, _wgslsmith_dot_vec2_u32(vec2<u32>(82214u, u_input.a.x), vec2<u32>(24206u, u_input.a.x)))) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_0.c.x, -1086f, global1.x) * var_0.a)))), vec2<i32>(~(-var_0.b.x), -17576i), 1u);
}

