struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1134f;

var<private> global1: array<Struct_2, 9>;

var<private> global2: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = arg_0.b;
    return arg_2.b.a.x | _wgslsmith_sub_u32(~arg_0.c.a.x, ~_wgslsmith_clamp_u32(arg_1.c.a.x, 12934u, ~0u));
}

fn func_2() -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(324f, -1241f) + -728f)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-639f)))));
    let var_1 = !vec2<bool>(true && select(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, false)), true), !(func_3(Struct_2(18800i, Struct_1(vec2<u32>(52559u, 4294967295u)), Struct_1(vec2<u32>(6920u, 74599u)), true, false), Struct_2(u_input.a, Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(4294967295u, 0u)), true, false), global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]) < countOneBits(0u)));
    global2 = var_1.x;
    let var_2 = global1[_wgslsmith_index_u32(~(~1u) | (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) ^ max(select(~39189u, 1u, !var_1.x), _wgslsmith_add_u32(~4294967295u, ~0u))), 9u)];
    return ~vec3<u32>(~6863u, 20199u, var_2.b.a.x);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    global2 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(func_2(), ~vec3<u32>(11100u, 0u, 30048u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 22593u, 7609u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(48162u, 68116u, 26582u), _wgslsmith_div_vec3_u32(vec3<u32>(42246u, 25503u, 0u), vec3<u32>(22238u, 1u, 81196u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 71006u), vec3<u32>(46648u, 1u, 59109u), vec3<u32>(4294967295u, 68486u, 4294967295u))))) >= 4294967295u;
    var var_0 = func_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, min(~4294967295u, ~2984u)), 9u)], Struct_2(~_wgslsmith_sub_i32(arg_0.x, arg_0.x), Struct_1(abs(vec2<u32>(50482u, 15210u))), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(28577u, 53542u), vec2<u32>(14656u, 4294967295u))), true, true), global1[_wgslsmith_index_u32(func_3(Struct_2(2147483647i, Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(1u, 0u)), true, false), Struct_2(u_input.a, Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(7073u, 4294967295u)), false, true), Struct_2(u_input.a, Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(0u, 1u)), true, true), Struct_2(-1i, Struct_1(vec2<u32>(53009u, 53824u)), Struct_1(vec2<u32>(132734u, 6497u)), true, false)) | 17825u, 9u)], global1[_wgslsmith_index_u32(~(~(~64656u)), 9u)]) | ~func_2().x;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_f32(sign(1259f)))), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2224f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f - 935f))))) + 919f);
    var var_2 = firstTrailingBit(((-1i ^ _wgslsmith_add_i32(u_input.a, -1i)) & u_input.a) | reverseBits(2147483647i));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_i32(0i, -(func_1(vec2<i32>(0i, -2147483647i)) & (u_input.a & u_input.a))), Struct_1(min(vec2<u32>(1u, ~1u), ~(~vec2<u32>(0u, 64615u)))), Struct_1(firstLeadingBit(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, 1u)))), all(vec2<bool>(select(true, any(vec4<bool>(false, false, true, true)), true), true)), false);
    var_0 = Struct_2(reverseBits(-18373i), var_0.b, Struct_1(vec2<u32>(~_wgslsmith_dot_vec2_u32(var_0.c.a, vec2<u32>(0u, 57625u)), 0u)), var_0.e, var_0.e);
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.b.a.x, 22565u, var_0.b.a.x, var_0.b.a.x)) & _wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, var_0.c.a.x, var_0.c.a.x, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.a.x, 17694u, 8388u, var_0.c.a.x), vec4<u32>(var_0.c.a.x, 66344u, 1u, 18339u), vec4<u32>(var_0.b.a.x, 4294967295u, 0u, var_0.c.a.x))), firstTrailingBit(~reverseBits(select(vec4<u32>(var_0.b.a.x, 20358u, 21772u, var_0.c.a.x), vec4<u32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), vec4<bool>(var_0.d, false, var_0.e, true))))), 9u)];
    let var_1 = Struct_1(firstTrailingBit(~abs(var_0.c.a)));
    var_0 = Struct_2(var_0.a, var_1, var_1, 1i > var_0.a, !(!any(select(vec3<bool>(true, false, var_0.d), vec3<bool>(var_0.e, true, var_0.d), var_0.e))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)));
    var_0 = Struct_2(-countOneBits(-u_input.a), Struct_1(var_1.a), var_1, true, all(!vec2<bool>(var_0.d, true)) && select(var_0.e || true, any(!vec2<bool>(var_0.e, true)), !var_0.d));
    let var_3 = Struct_2(~_wgslsmith_sub_i32(-16088i, -var_0.a), Struct_1(var_0.c.a >> (~(~var_1.a) % vec2<u32>(32u))), var_0.c, !(!var_0.d), false);
    global2 = var_0.c.a.x >= _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(min(4294967295u, var_0.b.a.x), reverseBits(4294967295u)), var_3.b.a.x, (var_3.b.a.x | var_3.c.a.x) ^ var_0.c.a.x), ~countOneBits(vec3<u32>(1u, var_3.c.a.x, var_1.a.x) >> (vec3<u32>(67003u, 20901u, 0u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec4<i32>(var_0.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 1i), -1i), min(var_0.a, -u_input.a), -1i) << (select(~firstTrailingBit(vec4<u32>(var_3.c.a.x, var_0.b.a.x, var_1.a.x, 60015u)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_0.b.a.x, 18135u, var_1.a.x, 0u)), vec4<u32>(var_1.a.x, var_0.c.a.x, 4294967295u, var_3.c.a.x) & vec4<u32>(var_0.c.a.x, var_0.b.a.x, var_3.c.a.x, 21297u)), true) % vec4<u32>(32u)), countOneBits(vec3<i32>(u_input.a, u_input.a, firstLeadingBit(~u_input.a))));
}

