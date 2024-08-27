struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, -9916i);

var<private> global2: f32 = -1315f;

var<private> global3: array<Struct_5, 20>;

var<private> global4: u32 = 116652u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global4 = _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(min(vec4<u32>(25637u, u_input.a.x, 66358u, 13673u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), ~vec4<u32>(78376u, 0u, 23236u, 44254u)), ~4294967295u) ^ ~12504u;
    var var_0 = min(select(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 38901u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global1.x, -7723i), vec3<i32>(1i, global1.x, 62545i))), vec3<i32>(0i, ~25134i, global1.x), true) ^ (~(-vec3<i32>(53455i, -2147483647i, global1.x)) ^ min(~vec3<i32>(global1.x, global1.x, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, global1.x), vec3<i32>(-24482i, global1.x, global1.x)))), vec3<i32>(~_wgslsmith_div_i32(-50469i, ~global1.x), -47860i ^ global1.x, ~(-30873i)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1052f, -1000f) + _wgslsmith_f_op_f32(floor(-201f))))))), _wgslsmith_f_op_f32(trunc(1532f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1669f, 531f)), 735f))));
    var_0 = vec3<i32>(_wgslsmith_add_i32(54425i | _wgslsmith_dot_vec3_i32(-vec3<i32>(-6379i, global1.x, -1i), vec3<i32>(global1.x, -33312i, var_0.x)), _wgslsmith_div_i32(0i, 2147483647i)), -select(_wgslsmith_dot_vec2_i32(var_0.xy, var_0.zz) ^ -var_0.x, countOneBits(0i), (0u <= u_input.a.x) || true), var_0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(min(-1000f, var_1.x))) - _wgslsmith_f_op_f32(-1f)))) + -1000f);
    return u_input.a;
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<u32>(~(~u_input.a.x), 0u, ~(~(~(1u ^ u_input.a.x))), u_input.a.x);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(max(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), ~(~u_input.a)), func_3(Struct_1(select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x)))), 61553u);
    let var_2 = 1i;
    var var_3 = select(!vec3<bool>(!(global0.x | global0.x), all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true), vec3<bool>(true, true, true), global0.x);
    let var_4 = abs(1u);
    return Struct_4(global1.x, Struct_3(1u, select(vec2<i32>(0i, global1.x), vec2<i32>(var_2, var_2), global0.x) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(22529i, global1.x, var_2), vec3<i32>(global1.x, -36595i, global1.x)), 43204i), select(~abs(vec3<u32>(var_0.x, 0u, var_1.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, var_4, 1u) ^ vec3<u32>(var_1.x, var_1.x, var_1.x), ~vec3<u32>(1u, 0u, 4294967295u)), global0.x && !global0.x)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = !global0.wy;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-258f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1671f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1350f, -1703f)) + _wgslsmith_f_op_f32(860f - -171f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-3375f)) - 821f))));
    let var_2 = global0.x && all(!select(select(vec4<bool>(true, true, global0.x, true), vec4<bool>(false, true, true, false), vec4<bool>(global0.x, var_1.x, true, global0.x)), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, var_1.x, var_1.x, global0.x)), true));
    global4 = 8297u;
    return Struct_3(firstLeadingBit(arg_0), vec2<i32>(-1i, firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, global1.x)) | _wgslsmith_sub_i32(min(var_0.a, var_0.b.b.x), -57761i)), _wgslsmith_mult_vec3_u32(max(var_0.b.c, _wgslsmith_clamp_vec3_u32(var_0.b.c, vec3<u32>(u_input.a.x, 4294967295u, 31169u), var_0.b.c)), _wgslsmith_mod_vec3_u32(var_0.b.c, vec3<u32>(arg_0, 3407u, 34858u))) << (~(~var_0.b.c) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!(true || !(global0.x | global0.x)), !global0.x, true, countOneBits(_wgslsmith_mod_i32(global1.x, 2147483647i)) < select(~(-13021i), 2147483647i, false));
    var var_0 = func_1(u_input.a.x << (~65389u % 32u));
    let var_1 = func_2().b;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1625f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1739f - _wgslsmith_f_op_f32(897f + 1000f)))), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1692f - -832f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(915f))), !global0.x)));
    var_0 = var_1;
    global2 = _wgslsmith_f_op_f32(var_2.x - 1f);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1166f * var_2.x), _wgslsmith_div_f32(-899f, _wgslsmith_div_f32(-180f, 232f)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(681f)) - _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x))))));
    var_0 = Struct_3(var_0.c.x, var_1.b, _wgslsmith_mod_vec3_u32(~(~var_1.c), vec3<u32>(5232u, ~26444u, 1u)));
    let var_4 = _wgslsmith_f_op_f32(-1866f + var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(~(80426i | var_1.b.x)), ~min(_wgslsmith_sub_i32(var_1.b.x, var_1.b.x), 0i)), select(countOneBits(vec2<i32>(var_0.b.x, global1.x)) | _wgslsmith_div_vec2_i32(-vec2<i32>(-55027i, -2147483647i), firstTrailingBit(vec2<i32>(var_1.b.x, 1i))), abs(vec2<i32>(1i, -31104i)), !select(global0.yz, select(global0.yy, vec2<bool>(global0.x, global0.x), false), global0.xx)), ~var_0.b.x);
}

