struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(45282u, 1u, 4294967295u), vec3<u32>(4294967295u, 24140u, 4294967295u), vec3<u32>(0u, 1u, 75124u), vec3<u32>(7584u, 1u, 0u), vec3<u32>(126871u, 61492u, 69089u), vec3<u32>(0u, 92773u, 68985u));

var<private> global1: u32;

var<private> global2: vec2<i32> = vec2<i32>(-1i, 2147483647i);

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global4: vec3<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> i32 {
    global4 = abs(~global0[_wgslsmith_index_u32(57491u, 6u)]);
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.b.x), 0u, reverseBits(u_input.b.x), ~9556u), ~_wgslsmith_sub_vec4_u32(abs(u_input.b) << (u_input.b % vec4<u32>(32u)), firstTrailingBit(~u_input.b))), 6u)];
    return 1i;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global2 = -_wgslsmith_add_vec2_i32(select(~(vec2<i32>(global2.x, global2.x) | vec2<i32>(13317i, -1i)), vec2<i32>(_wgslsmith_sub_i32(u_input.c, u_input.a), ~global2.x), arg_0.x), vec2<i32>(u_input.a, -1i));
    let var_0 = vec2<i32>(-global2.x, firstLeadingBit(-13199i) ^ (global2.x ^ func_3(select(false, true, global3.x), Struct_3(vec4<bool>(true, global3.x, global3.x, true)), -545f, Struct_3(vec4<bool>(true, arg_0.x, arg_0.x, global3.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(816f, 656f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1261f, -967f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1366f, -417f) - vec2<f32>(-1000f, -176f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1910f)), 1000f), 1f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1245f, -2171f), vec2<f32>(-787f, 623f))) - vec2<f32>(-111f, -118f))))));
    let var_2 = vec3<i32>(~(-_wgslsmith_sub_i32(-2086i, u_input.a)), ~(-(~12031i)), firstLeadingBit(0i)) << (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u << (u_input.b.x % 32u), u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global4.x, global4.x), vec3<u32>(4294967295u, 51669u, u_input.b.x))), vec3<u32>(4294967295u, ~33003u, ~u_input.b.x), global0[_wgslsmith_index_u32(~60334u << (u_input.b.x % 32u), 6u)]), global0[_wgslsmith_index_u32(~2999u, 6u)]) % vec3<u32>(32u));
    var var_3 = var_1.x;
    return global4.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = 53123u;
    let var_1 = abs(~4294967295u);
    global1 = ~(~func_2(vec3<bool>(global3.x, global3.x, var_0 > var_0)));
    global1 = ~countOneBits(~(~u_input.b.x) >> (_wgslsmith_mult_u32(~1u, var_1) % 32u));
    global4 = u_input.b.yxw;
    return Struct_3(vec4<bool>(select(false, false, global3.x), false, false, !(_wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(round(1004f)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_2(-(~max(select(vec3<i32>(global2.x, arg_1.a, u_input.a), vec3<i32>(global2.x, 1661i, 2147483647i), arg_2), ~vec3<i32>(u_input.a, u_input.c, u_input.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(2051f)), _wgslsmith_f_op_f32(-465f * 212f))))), Struct_1(global2.x, abs(vec2<i32>(-17130i, -19797i))), any(vec3<bool>(any(!arg_3.a.xx), true, !all(vec3<bool>(arg_0.a.x, true, arg_2.x)))));
    global0 = array<vec3<u32>, 6>();
    let var_1 = var_0;
    global4 = ~_wgslsmith_mult_vec3_u32(u_input.b.yww, global0[_wgslsmith_index_u32(~abs(func_2(vec3<bool>(true, arg_3.a.x, arg_2.x))), 6u)]);
    let var_2 = var_1.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(!(!(!vec4<bool>(true, global3.x, true, global3.x))), !(!vec4<bool>(true, false, global3.x, true)), vec4<bool>(!(global4.x == u_input.b.x), global3.x, func_4(func_1(vec3<f32>(-2107f, 612f, 370f), global4.x, Struct_1(global2.x, vec2<i32>(global2.x, u_input.c))), Struct_1(0i, vec2<i32>(-1i, u_input.c)), select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, global3.x, false), global3.ywx), Struct_3(vec4<bool>(false, true, global3.x, global3.x))), (14714u >> (global4.x % 32u)) >= u_input.b.x)));
    var var_1 = Struct_1(-42110i, vec2<i32>(~48554i | -_wgslsmith_dot_vec3_i32(vec3<i32>(-27418i, 0i, 2147483647i), vec3<i32>(u_input.a, 16164i, global2.x)), firstLeadingBit(-39459i)));
    var var_2 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, 1i), -2147483647i >> (abs(u_input.b.x) % 32u)), -vec3<i32>(reverseBits(17678i), -3369i, var_1.b.x)), vec2<f32>(109f, -480f), Struct_1(var_1.a, -var_1.b), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1337f, 1353f, -199f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, 371f, 1795f)), true)) + vec3<f32>(-362f, -1503f, 426f)), ~u_input.b.x, Struct_1(4251i, var_1.b)).a.x);
    global3 = !func_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-258f - var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -347f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-484f + var_2.b.x))), ~_wgslsmith_add_u32(global4.x, reverseBits(58741u)), var_2.c).a;
    let var_3 = Struct_3(vec4<bool>(false, true, u_input.c != ~max(u_input.a, 1i), true));
    let var_4 = Struct_1(firstTrailingBit(var_2.c.a), -reverseBits(vec2<i32>(~15875i, var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(26206u, 4294967295u, vec4<i32>(abs(var_1.a), abs(global2.x), max(u_input.a, 1i), 2147483647i), ~global4.x);
}

