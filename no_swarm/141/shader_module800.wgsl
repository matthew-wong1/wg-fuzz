struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<f32>(-781f, -374f, 241f), false, 1u), Struct_1(vec3<f32>(290f, 791f, 121f), false, 42681u), Struct_1(vec3<f32>(-924f, 1007f, 459f), true, 0u), Struct_1(vec3<f32>(-659f, 173f, -530f), false, 0u), Struct_1(vec3<f32>(484f, 714f, 1415f), false, 0u), Struct_1(vec3<f32>(251f, -776f, -585f), false, 0u), Struct_1(vec3<f32>(1161f, -1000f, -570f), true, 1u), Struct_1(vec3<f32>(1791f, -105f, 182f), false, 26029u), Struct_1(vec3<f32>(-464f, -392f, 1532f), false, 0u), Struct_1(vec3<f32>(-228f, -1270f, 742f), false, 1u), Struct_1(vec3<f32>(-787f, -193f, -672f), true, 1u), Struct_1(vec3<f32>(1016f, 259f, -477f), true, 1u), Struct_1(vec3<f32>(179f, -817f, 491f), true, 0u), Struct_1(vec3<f32>(1537f, 1031f, 784f), false, 45802u), Struct_1(vec3<f32>(-165f, -1513f, -1270f), false, 52566u), Struct_1(vec3<f32>(1000f, 603f, -832f), true, 7950u));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-961f, 598f, -176f), false, 25267u);

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(463f, -280f, -1722f), true, 1u), Struct_1(vec3<f32>(-1537f, 1045f, -708f), true, 7963u), Struct_1(vec3<f32>(1519f, -1000f, 1120f), false, 4294967295u), Struct_1(vec3<f32>(1451f, -947f, -431f), false, 18223u), Struct_1(vec3<f32>(-392f, 921f, 1355f), false, 68898u), Struct_1(vec3<f32>(-1236f, 1099f, -350f), false, 1u), Struct_1(vec3<f32>(300f, 301f, -258f), true, 4294967295u), Struct_1(vec3<f32>(-438f, 272f, -234f), false, 47511u), Struct_1(vec3<f32>(387f, -1000f, -861f), true, 22781u), Struct_1(vec3<f32>(-391f, 667f, -161f), false, 7648u), Struct_1(vec3<f32>(1823f, 789f, 931f), true, 0u));

var<private> global4: i32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u | u_input.d.x, 63065u, 1u), min(~vec3<u32>(arg_0.c, 1u, 4294967295u), ~vec3<u32>(4294967295u, 1u, 20558u) ^ vec3<u32>(u_input.d.x, global2.c, u_input.d.x)), countOneBits(~vec3<u32>(4294967295u, 4294967295u, 23199u)));
    let var_1 = _wgslsmith_sub_vec2_i32(u_input.b >> (max(_wgslsmith_div_vec2_u32(var_0.zx | vec2<u32>(arg_0.c, 4294967295u), _wgslsmith_mult_vec2_u32(u_input.d, u_input.d)), _wgslsmith_div_vec2_u32(vec2<u32>(global2.c, 29018u) | vec2<u32>(59503u, var_0.x), vec2<u32>(67829u, u_input.c) & u_input.d)) % vec2<u32>(32u)), min(vec2<i32>(u_input.a.x, ~(-19319i)), u_input.a.zz | u_input.b));
    let var_2 = arg_0;
    global2 = global3[_wgslsmith_index_u32(~(~abs(_wgslsmith_div_u32(~1u, var_2.c))), 11u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1459f)), _wgslsmith_f_op_f32(var_2.a.x - arg_0.a.x), _wgslsmith_f_op_f32(abs(869f))))) + vec3<f32>(_wgslsmith_div_f32(var_2.a.x, 371f), 134f, _wgslsmith_f_op_f32(round(419f)))), true, ~(~arg_0.c));
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u >> (0u % 32u), _wgslsmith_clamp_u32(abs(var_3.c), var_2.c & 0u, min(var_2.c, 29556u)), var_2.c), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c, u_input.c, 0u, global2.c), vec4<u32>(1u, var_0.x, global2.c, 68052u), vec4<u32>(1u, var_2.c, 12847u, arg_0.c)), select(vec4<u32>(var_2.c, 18145u, u_input.c, 29762u), vec4<u32>(4294967295u, 1u, arg_0.c, 5248u), vec4<bool>(global2.b, false, false, true)), global2.b));
}

fn func_2(arg_0: i32, arg_1: f32) -> bool {
    global0 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-662f, 1000f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + 1657f) - 982f), -1151f))));
    var var_1 = 1u;
    let var_2 = firstLeadingBit(0u);
    let var_3 = Struct_1(global2.a, abs(~func_3(global0[_wgslsmith_index_u32(71332u, 14u)])) == (~1u | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 7067u, 133457u), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x)), vec3<u32>(19464u, 43229u, 75897u) & vec3<u32>(119205u, 0u, global2.c))), var_2 >> (u_input.c % 32u));
    return true;
}

fn func_1() -> vec2<bool> {
    global4 = u_input.a.x;
    let var_0 = select(select(select(!(!vec4<bool>(false, global2.b, false, true)), vec4<bool>(global2.b, func_2(u_input.b.x, global2.a.x), !global2.b, false), global2.b), vec4<bool>(-u_input.b.x <= ~(-2147483647i), any(!vec2<bool>(global2.b, true)), global2.b, !(!global2.b)), !(!(!vec4<bool>(global2.b, false, false, true)))), select(vec4<bool>(all(vec3<bool>(global2.b, global2.b, global2.b)) & (global2.c >= 20252u), (global2.b && global2.b) || !global2.b, !(!global2.b), global2.b), !select(select(vec4<bool>(global2.b, false, global2.b, true), vec4<bool>(global2.b, global2.b, global2.b, true), false), vec4<bool>(false, global2.b, true, global2.b), any(vec4<bool>(false, true, global2.b, true))), select(vec4<bool>(true, global2.b & false, true, true), vec4<bool>(true, false, !global2.b, !global2.b), global2.b)), vec4<bool>(any(vec4<bool>(!global2.b, global2.b, -579f <= global2.a.x, any(vec2<bool>(true, global2.b)))), !global2.b, false, u_input.b.x > -2147483647i));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, 48685u) << (vec3<u32>(global2.c, u_input.c, 1u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 0u, global2.c)), (countOneBits(vec3<u32>(4294967295u, 4294967295u, u_input.d.x)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(21115u, 1u, global2.c), vec3<u32>(global2.c, u_input.d.x, 4383u), vec3<u32>(global2.c, global2.c, u_input.d.x))) >> (countOneBits(~vec3<u32>(93105u, u_input.d.x, global2.c)) % vec3<u32>(32u)), abs(~(vec3<u32>(u_input.c, global2.c, global2.c) >> (vec3<u32>(u_input.d.x, u_input.d.x, global2.c) % vec3<u32>(32u)))));
    global4 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, -u_input.a >> (vec3<u32>(global2.c, var_1.x, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, 89920i, u_input.b.x)), u_input.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(1672f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + 476f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1305f * global2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + -1797f)) - 772f) * 1224f));
    return select(var_0.wz, select(var_0.ww, var_0.yw, any(vec2<bool>(true, true))), var_0.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b;
    var var_1 = vec2<bool>(true, false);
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a)), _wgslsmith_f_op_vec3_f32(trunc(global2.a))), !(!(u_input.c <= _wgslsmith_sub_u32(48530u, 12686u))), _wgslsmith_mod_u32(4294967295u, max(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mult_u32(global2.c, global2.c), 41521u), _wgslsmith_div_u32(4294967295u, firstLeadingBit(u_input.c)))));
    var_1 = !(!select(!select(vec2<bool>(false, var_1.x), vec2<bool>(global2.b, var_1.x), vec2<bool>(true, false)), func_1(), true));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.x, var_3.a.x, 1297f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, 370f, -964f)))), var_3.a)), true, func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~19782u, global2.c), 14u)]) >> (65708u % 32u));
    let var_5 = !(var_1.x && global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~reverseBits(u_input.c)) | 4294967295u);
}

