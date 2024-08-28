struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<i32> = vec4<i32>(-4608i, -1i, 1i, -9328i);

var<private> global2: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = u_input.a != global1.x;
    var var_1 = select(!vec3<bool>(any(vec3<bool>(true, false, true)), true, true), !select(vec3<bool>(true, true, true), vec3<bool>(global1.x < -1899i, true, true), 513f != arg_0.a.x), global1.x > u_input.a);
    let var_2 = Struct_4(Struct_3(reverseBits(~2147483647i)), arg_0.a.x);
    let var_3 = arg_0.a.zyw;
    var var_4 = var_2;
    return 4294967295u >> (_wgslsmith_add_u32(~(~(~1u)), ~u_input.d.x) % 32u);
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_sub_u32(48599u, abs(_wgslsmith_clamp_u32(global0.x, _wgslsmith_add_u32(1u, global0.x), u_input.b.x) << (0u % 32u)));
    var var_1 = _wgslsmith_clamp_u32(~(~max(24845u << (0u % 32u), 0u)), ~0u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(24715u, 0u, global0.x, 0u) >> (vec4<u32>(26318u, global0.x, u_input.b.x, 29377u) % vec4<u32>(32u)), u_input.b) & ~22504u));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1493f) <= _wgslsmith_f_op_f32(global2.x * -112f);
    let var_3 = select(u_input.d.yx, ~_wgslsmith_div_vec2_u32(u_input.c, select(countOneBits(u_input.d.xy), vec2<u32>(0u, u_input.b.x), false)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), true), vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(true, !any(vec4<bool>(true, true, false, false)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(trunc(global2.x)), var_3.x < u_input.d.x))))));
    return select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), u_input.a < -9072i), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a == 0i), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f))), vec2<bool>(select(true, true, all(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(ceil(var_4)) < var_4), vec2<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), !((var_4 > 113f) || all(vec3<bool>(false, true, true)))));
}

fn func_1() -> f32 {
    global0 = u_input.b;
    global0 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, 35044u), vec2<u32>(u_input.b.x, 2815u) << (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global0.x), vec2<u32>(u_input.c.x, global0.x))), ~((global0.yx << (global0.yw % vec2<u32>(32u))) | global0.xy)), _wgslsmith_mod_u32(~4443u, ~(func_2(Struct_2(vec4<f32>(177f, global2.x, 402f, global2.x))) ^ u_input.d.x)), min(2397u, firstLeadingBit(global0.x) ^ firstLeadingBit(reverseBits(16673u))));
    var var_0 = all(func_3()) && (global2.x <= _wgslsmith_f_op_f32(trunc(global2.x)));
    var var_1 = Struct_1(select(~14593i, 30189i, true), any(vec3<bool>(true, true, true)));
    var var_2 = select(_wgslsmith_mult_vec4_i32(reverseBits(~(-vec4<i32>(u_input.a, global1.x, u_input.a, -57746i))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(var_1.a, -23542i, var_1.a, global1.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 0i, 1i, -37983i), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 5545i, var_1.a, 12824i), vec4<i32>(var_1.a, -10527i, u_input.a, -2147483647i), vec4<i32>(global1.x, u_input.a, var_1.a, u_input.a))))), (vec4<i32>(global1.x, u_input.a | -7946i, ~u_input.a, -2147483647i) << (u_input.b % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u)), false || ((_wgslsmith_f_op_f32(abs(global2.x)) > _wgslsmith_f_op_f32(-932f - global2.x)) | any(!vec3<bool>(var_1.b, false, var_1.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(1047f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 346f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f + 521f)))));
    var var_1 = global1.ww;
    global1 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.x, global1.x, 22861i, var_1.x), vec4<i32>(-31483i, 1i, global1.x, u_input.a) << (reverseBits(vec4<u32>(u_input.d.x, 43302u, 51027u, 0u)) % vec4<u32>(32u))) ^ vec4<i32>(1i, reverseBits(_wgslsmith_mod_i32(0i, 2147483647i)), _wgslsmith_mod_i32(1i >> (global0.x % 32u), ~var_1.x), -_wgslsmith_dot_vec2_i32(global1.zw, vec2<i32>(14117i, global1.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_0.a);
    let var_3 = true;
    let var_4 = select(!func_3(), vec2<bool>(any(!vec4<bool>(var_3, true, var_3, var_3)), true), global0.x <= global0.x);
    var_1 = -global1.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-417f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(f32(-1f) * -160f)), var_0.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -626f), -116f));
}

