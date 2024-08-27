struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

var<private> global2: vec3<f32>;

var<private> global3: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = vec2<i32>(u_input.e, -2147483647i);
    return any(select(vec2<bool>(all(vec4<bool>(true, false, false, false)), true), !vec2<bool>(u_input.b.x <= 1u, false), vec2<bool>(true, true)));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = select(!vec4<bool>(false, !all(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(true, true, true, true))), vec4<bool>(any(vec3<bool>(true, true, true)), func_3(), !(!all(vec3<bool>(true, true, true))), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) * -2467f) != _wgslsmith_f_op_f32(-global3.x), false, all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true));
    var var_1 = -2147483647i;
    var var_2 = Struct_2(var_0, true, select(select(var_0, select(!var_0, var_0, !var_0), var_0.x), !(!var_0), u_input.e <= -2147483647i), global2.x, Struct_1(u_input.b.zz));
    var_2 = Struct_2(select(select(!var_0, var_2.c, select(!var_0, var_0, var_0)), vec4<bool>(true, false, !var_2.b, var_2.c.x), vec4<bool>(!any(vec3<bool>(var_2.c.x, var_0.x, var_2.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e.a.x, global1.x, arg_0, 0u), vec4<u32>(var_2.e.a.x, u_input.d, 1u, 4294967295u)) <= ~var_2.e.a.x, true, !(!var_2.a.x))), var_0.x, select(vec4<bool>(true, true, var_2.c.x, var_0.x), select(vec4<bool>(any(vec3<bool>(var_2.a.x, var_0.x, var_0.x)), false & var_2.b, true, var_2.a.x | false), select(select(vec4<bool>(var_0.x, false, var_2.b, true), vec4<bool>(var_2.b, var_2.c.x, false, var_0.x), true), select(vec4<bool>(false, var_0.x, var_2.b, false), vec4<bool>(true, true, true, var_2.c.x), true), true && var_2.a.x), false), vec4<bool>(true && !var_0.x, true, true, !var_0.x)), -959f, Struct_1(~firstTrailingBit(_wgslsmith_mod_vec2_u32(var_2.e.a, vec2<u32>(59415u, 4294967295u)))));
    let var_3 = 0i;
    return var_0;
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = !select(vec4<bool>(true, false, (global2.x >= global3.x) && true, all(vec3<bool>(true, true, true))), select(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true), !func_2(global1.x), true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), func_2(6068u), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))));
    global2 = arg_0;
    var var_1 = Struct_2(var_0, false, vec4<bool>(true, !select(true, false, var_0.x), !(_wgslsmith_mult_u32(global1.x, 4294967295u) != u_input.c), 21219u <= firstTrailingBit(abs(21196u))), 1056f, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(1u, countOneBits(global1.x)), _wgslsmith_add_vec2_u32(~u_input.b.zy, vec2<u32>(u_input.c, 402u)))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, global2.x, -594f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global3.x, global3.x, global3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, global2.x, 2837f, 2201f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -2887f), _wgslsmith_f_op_f32(select(var_1.d, var_1.d, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1459f, var_1.d, global3.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, global2.x, 207f, arg_0.x)))), all(vec2<bool>(false, false)) && all(vec3<bool>(var_0.x, var_1.a.x, false))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1036f * _wgslsmith_f_op_f32(arg_0.x * 336f)) * -141f), global2.x)));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(-499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1184f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2093f + 121f), 362f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(658f, global3.x)) + _wgslsmith_f_op_f32(step(global3.x, global3.x)))), global3.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-974f, 1214f, _wgslsmith_f_op_f32(-984f + _wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1269f)), global3.x, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.x, -1363f, global3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global2.x, 126f, global3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 722f, global2.x, global3.x)) - vec4<f32>(-1736f, global2.x, 762f, global3.x))), true)));
    var var_0 = Struct_4(firstTrailingBit(_wgslsmith_mult_i32(-5895i, u_input.e)), 327f, ~vec4<u32>(~func_1(global3.yzx), u_input.d & 4238u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u) ^ u_input.b.yx, vec2<u32>(0u, 0u) ^ vec2<u32>(u_input.c, 0u)), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), countOneBits(vec2<i32>(16855i, u_input.e)) | vec2<i32>(36171i, u_input.e)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global3.wzz);
    var var_2 = Struct_1(~_wgslsmith_sub_vec2_u32(firstTrailingBit(var_0.c.wy), ~countOneBits(vec2<u32>(41286u, 9707u))));
    var var_3 = Struct_1(abs(vec2<u32>(11267u, func_1(vec3<f32>(-738f, 1094f, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(vec2<u32>(0u, 0u)) >> (var_0.c.zz % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(13862u, var_2.a.x), vec2<u32>(global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_3.a.x), vec2<u32>(0u, 0u))), u_input.b.xy) % vec2<u32>(32u)), firstLeadingBit(select(min(var_0.c.xzx << (vec3<u32>(var_3.a.x, var_3.a.x, 44939u) % vec3<u32>(32u)), u_input.b), vec3<u32>(var_0.c.x << (29645u % 32u), global1.x >> (var_2.a.x % 32u), _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_2.a.x, global1.x, var_3.a.x, var_0.c.x))), _wgslsmith_f_op_f32(-global2.x) <= var_0.b)), -340f, var_2.a.x | ~(~22954u), -vec2<i32>(_wgslsmith_sub_i32(~u_input.e, _wgslsmith_mod_i32(var_0.a, var_0.e.x)), -1i));
}

