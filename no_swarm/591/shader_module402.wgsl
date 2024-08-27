struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, 2147483647i, 14108i), true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = arg_0.b;
    let var_1 = vec4<bool>(any(select(select(!vec3<bool>(global0.x, var_0, arg_0.b), vec3<bool>(false, false, arg_1), !vec3<bool>(arg_0.b, arg_1, true)), vec3<bool>(true, true, false), vec3<bool>(arg_1 | false, any(vec4<bool>(true, false, arg_1, global1.b)), !global1.b))), any(!vec4<bool>(any(vec3<bool>(true, global0.x, true)), false, global1.b, true)), all(!select(select(vec4<bool>(false, false, true, global0.x), vec4<bool>(global1.b, true, arg_1, true), vec4<bool>(arg_0.b, false, false, false)), vec4<bool>(global1.b, false, var_0, arg_0.b), arg_0.b)), !any(global0.xy));
    var var_2 = Struct_1(~vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(~37629i, u_input.b.x), 5817i), (((false && global0.x) && (global0.x || global1.b)) & any(!var_1.yyy)) & ((any(var_1.zz) & arg_0.b) & var_0));
    return true;
}

fn func_2() -> bool {
    global0 = vec3<bool>(true, true, false | global1.b);
    global0 = select(vec3<bool>(any(!vec2<bool>(global0.x, global1.b)), global1.a.x > ~2147483647i, global1.b), !select(vec3<bool>(true, true, true), vec3<bool>(!global0.x, false, global1.b), !(!vec3<bool>(global0.x, global1.b, global0.x))), !select(vec3<bool>(true, true, true), !vec3<bool>(false, global1.b, true), all(vec3<bool>(global1.b, true, true))));
    let var_0 = ~(~vec2<u32>(u_input.d, ~1u)) >> (min(~vec2<u32>(~u_input.e, ~4294967295u), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, u_input.e)))) % vec2<u32>(32u));
    var var_1 = !vec3<bool>(!func_3(Struct_1(vec3<i32>(u_input.c.x, global1.a.x, global1.a.x), false), all(global0.zx)), true, !all(select(vec3<bool>(global1.b, global1.b, global0.x), vec3<bool>(global0.x, global1.b, true), vec3<bool>(false, false, global0.x))));
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_0.x, 4294967295u, 1u, var_0.x), vec4<u32>(84623u, var_0.x, 1u, u_input.e)), vec4<u32>(var_0.x, u_input.e, 54730u, 4294967295u))), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.a, 1u, 43999u), vec4<u32>(var_0.x, 83267u, 39752u, 4294967295u)), select(countOneBits(vec4<u32>(80216u, 1u, 36778u, 55045u)), vec4<u32>(var_0.x, u_input.e, 38502u, 40558u) & vec4<u32>(0u, 0u, u_input.a, 14267u), any(vec3<bool>(global0.x, true, var_1.x))), !var_1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(5629u, var_0.x, var_0.x, 1u), vec4<u32>(1u, ~var_0.x, 67217u, var_0.x))));
    return !global1.b;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = abs(select(~u_input.b.x, u_input.b.x, func_2()));
    let var_1 = Struct_1(global1.a, false);
    var var_2 = _wgslsmith_f_op_f32(round(-1015f));
    global1 = Struct_1(u_input.b.yxw ^ vec3<i32>(_wgslsmith_add_i32(-13931i, -32377i) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.a.x, -35941i), vec3<i32>(var_0, -21313i, u_input.b.x)), -_wgslsmith_add_i32(0i, -1007i), min(~u_input.c.x, _wgslsmith_sub_i32(var_1.a.x, -2147483647i))), var_1.b);
    global1 = var_1;
    return !all(select(vec2<bool>(global1.b, true), select(select(global0.yx, vec2<bool>(var_1.b, false), global0.xy), global0.yz, !global0.x), global0.xz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(global1.b, all(vec4<bool>(true, func_1(vec2<u32>(1u, 0u) ^ vec2<u32>(u_input.d, 24266u)), true, true)), global0.x && !select(all(vec4<bool>(global0.x, global0.x, true, false)), -17569i > global1.a.x, true));
    var var_0 = u_input.c;
    var_0 = abs(vec2<i32>(_wgslsmith_sub_i32(1939i, 0i), (global1.a.x & global1.a.x) >> (0u % 32u)));
    let var_1 = Struct_1(vec3<i32>(u_input.c.x, select(u_input.b.x, select(1i, var_0.x << (0u % 32u), any(global0.zy)), global0.x), global1.a.x), countOneBits(u_input.d) <= 1u);
    let var_2 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(~11656u, select(0u, u_input.e, false), abs(111343u))), ~(~vec3<u32>(u_input.e, u_input.d, u_input.d) >> (~vec3<u32>(u_input.e, u_input.a, 1u) % vec3<u32>(32u))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(58875u, abs(~1u), ~min(u_input.a, 0u)), _wgslsmith_mod_u32(~0u, 40851u), var_2.x, firstTrailingBit(58647u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1525f - _wgslsmith_f_op_f32(f32(-1f) * -1115f)) - 777f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1911f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-847f, -280f)) * -797f)))), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-598f + _wgslsmith_f_op_f32(min(338f, -1454f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1440f))) + _wgslsmith_f_op_f32(-1490f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(480f, -246f)))));
}

