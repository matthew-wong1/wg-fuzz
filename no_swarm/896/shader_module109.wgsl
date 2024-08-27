struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, true, false, true, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = 599f;
    let var_1 = 1u;
    let var_2 = Struct_2(Struct_1(any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 8u)], false, true, global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(39399u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]), true || global0[_wgslsmith_index_u32(4294967295u, 8u)]))), Struct_1(global0[_wgslsmith_index_u32(var_1, 8u)]), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(arg_0.xy, vec2<f32>(var_0, var_0), false)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1), 736f))))), -(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 45229i, u_input.b.x, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -8850i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, 2373i, u_input.b.x))) ^ vec4<i32>(-40643i, countOneBits(u_input.b.x), -7263i, -u_input.b.x)), ~u_input.b.x & (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, -14932i), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))));
    global0 = array<bool, 8>();
    let var_3 = vec3<f32>(arg_1, -364f, -539f);
    return var_2.a;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2;
    let var_1 = Struct_2(Struct_1(true), Struct_1(select((2147483647i & u_input.b.x) != -22789i, true, arg_2.e > _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(u_input.b.x, u_input.b.x, var_0.d.x, arg_2.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.c, vec2<f32>(118f, arg_2.c.x))))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-(~(-2147483647i)), select(min(-1i, -13003i), select(arg_2.d.x, arg_2.e, arg_2.a.a), global0[_wgslsmith_index_u32(~4294967295u, 8u)]), _wgslsmith_div_i32(arg_2.d.x, -var_0.e), (2147483647i | var_0.e) << (u_input.a % 32u)), vec4<i32>(~1i, -15899i, abs(_wgslsmith_div_i32(-48804i, var_0.e)), _wgslsmith_div_i32(0i, abs(-19049i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -46843i, var_0.e), vec3<i32>(2147483647i, u_input.b.x, var_0.e) | vec3<i32>(var_0.d.x, 7816i, u_input.b.x)), -1i, i32(-1i) * -var_0.e, ~reverseBits(23102i))), ~(-3135i));
    let var_2 = min(var_1.d.wxx, arg_2.d.xyz);
    let var_3 = var_1.a;
    let var_4 = func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(select(var_1.c.x, -1000f, arg_2.d.x > 11943i)), -113f), vec3<f32>(arg_2.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(arg_2.c.x - -506f))), _wgslsmith_f_op_f32(trunc(arg_2.c.x))))), var_1.c.x, ~(~(~u_input.a)) & select(4294967295u, arg_0.x, !(!arg_2.a.a)));
    return _wgslsmith_f_op_f32(step(-998f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.c.x))))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(arg_1.c.x - arg_0))), _wgslsmith_f_op_f32(-160f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-235f, 559f)) * arg_0)), arg_1.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-746f, arg_0, 1007f, 427f) * vec4<f32>(arg_0, -1547f, arg_0, arg_1.c.x))))));
    var var_1 = ~arg_1.d.zz;
    let var_2 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(335f, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(select(657f, arg_0, global0[_wgslsmith_index_u32(1u, 8u)]))), var_0.xwy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.wzw * vec3<f32>(-131f, 1006f, 588f)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.x, -1000f, 652f), var_0.zyz)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.yzx))))), _wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), u_input.a >> (_wgslsmith_mult_u32(26973u, 0u) % 32u));
    var var_3 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xyw - var_0.zzx)), var_0.wzw)), _wgslsmith_f_op_f32(func_3(~vec4<u32>(u_input.a, 4294967295u, 5071u, 11368u), all(select(vec3<bool>(var_2.a, arg_3, false), vec3<bool>(true, arg_1.b.a, true), vec3<bool>(arg_3, true, true))), arg_1)), ~u_input.a), var_2, var_0.xw, ~(-arg_1.d), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, 1i), 1i), -firstLeadingBit(3266i)), 1i));
    var var_4 = ~_wgslsmith_add_u32(~abs(u_input.a | 109334u), u_input.a);
    return 544f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-354f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1451f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(926f + -482f))))), !(u_input.a >= ~u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_div_f32(998f, 355f), select(false, global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]))), -1031f, global0[_wgslsmith_index_u32(~0u, 8u)])), 1720f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-934f, _wgslsmith_f_op_f32(trunc(-1029f)))) * -123f));
    let var_1 = u_input.b.x;
    let var_2 = Struct_2(Struct_1(select(false, !any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(2651u, 8u)])), select(all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 8u)])), false, false | global0[_wgslsmith_index_u32(0u, 8u)]))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))) <= var_0.x), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1075f, Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 8u)]), Struct_1(false), vec2<f32>(2317f, var_0.x), vec4<i32>(-2447i, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)])) - var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-332f + -120f)))), -max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_1, u_input.b.x, 1i), vec4<i32>(57021i, var_1, var_1, var_1)) & -vec4<i32>(u_input.b.x, -1i, -33678i, var_1), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-7634i, -3128i, 43987i, var_1), vec4<i32>(34914i, var_1, 14342i, -2147483647i)))), -4080i);
    global0 = array<bool, 8>();
    var var_3 = Struct_2(var_2.a, var_2.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -556f), _wgslsmith_f_op_vec2_f32(-var_2.c), select(vec2<bool>(false, var_2.a.a), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec2<bool>(var_2.a.a, var_2.b.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 254f))), true)), _wgslsmith_f_op_vec2_f32(round(var_2.c)), any(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(3099u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]))))), var_2.d, -u_input.b.x >> (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, _wgslsmith_clamp_u32(1u, abs(4294967295u), abs(~(~u_input.a))), vec4<u32>(_wgslsmith_clamp_u32(~u_input.a, ~(u_input.a ^ 0u), _wgslsmith_div_u32(~u_input.a, 1u)), _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(69199u, 61726u)), ~58702u)), ~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(72759u, u_input.a, u_input.a, 1452u), vec4<u32>(_wgslsmith_mult_u32(u_input.a, 1u), ~u_input.a, _wgslsmith_mod_u32(18615u, 4294967295u), 90479u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2203f))), var_3.c.x)));
}

