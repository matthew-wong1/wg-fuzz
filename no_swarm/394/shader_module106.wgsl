struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-1i, 57941i, 1i, -1i, 2147483647i, -1i, 25180i, 9623i, -19626i, 2147483647i, 0i, -24736i, -13785i, 20493i, -11541i, 34922i, 8960i, i32(-2147483648), 1802i, -1i, -14646i, i32(-2147483648), 0i, -54757i);

var<private> global1: array<vec4<i32>, 2>;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(-849f, 1000f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<i32, 24>();
    var var_0 = abs(-vec4<i32>(global0[_wgslsmith_index_u32(~(~58860u), 24u)], firstLeadingBit(-7811i), 42665i, _wgslsmith_dot_vec3_i32(u_input.a.xyx >> (vec3<u32>(arg_0.c.x, arg_0.c.x, 1u) % vec3<u32>(32u)), abs(vec3<i32>(-16281i, 1i, global0[_wgslsmith_index_u32(arg_0.c.x, 24u)])))));
    let var_1 = _wgslsmith_f_op_f32(abs(278f));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(global2.a)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global2.a, global2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 425f) - vec2<f32>(-1158f, global2.a.x)), true)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(416f, var_1), vec2<f32>(var_1, -1072f)), vec2<f32>(var_1, var_1)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1659f, global2.a.x))));
    return 2103u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(0u, 42381u))) ^ ~1u, _wgslsmith_mult_u32(func_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec2<i32>(-36220i, u_input.b), vec4<u32>(1u, 1u, 1u, 1u))), 34192u), func_3(Struct_1(vec3<u32>(1u, 1u, 51202u), vec2<i32>(-1i) * -vec2<i32>(u_input.c, -44896i), ~vec4<u32>(1u, 54472u, 1u, 4294967295u))));
    let var_1 = vec2<bool>(any(vec4<bool>(arg_0.x, all(!vec4<bool>(arg_0.x, arg_0.x, true, true)), ~4294967295u == firstTrailingBit(4294967295u), -global0[_wgslsmith_index_u32(30461u, 24u)] >= u_input.b)), arg_0.x);
    var_0 = 1u;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a.x, 921f), vec2<f32>(global2.a.x, -2076f))), _wgslsmith_f_op_vec2_f32(abs(global2.a)))))));
    let var_3 = firstTrailingBit(vec3<u32>(select(1u, 1u, true), 0u, _wgslsmith_mult_u32(888u, 0u)) >> (abs(select(vec3<u32>(69797u, 4294967295u, 66428u), reverseBits(vec3<u32>(33978u, 0u, 1u)), true)) % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_sub_vec3_u32(var_3, ~firstTrailingBit(vec3<u32>(0u, var_3.x, var_3.x))), u_input.a.yw, vec4<u32>(~reverseBits(~42134u), 4294967295u, var_3.x, abs(abs(abs(4294967295u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> vec3<u32> {
    var var_0 = arg_0;
    global0 = array<i32, 24>();
    var_0 = Struct_1(var_0.c.xzx & ~(~(arg_1.a & arg_0.a)), var_0.b, vec4<u32>(64217u << (_wgslsmith_dot_vec3_u32(abs(arg_1.a), var_0.a << (arg_1.a % vec3<u32>(32u))) % 32u), ~4294967295u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0.a.x, arg_0.a.x, var_0.a.x), arg_1.a << (vec3<u32>(arg_1.c.x, arg_0.a.x, arg_0.a.x) % vec3<u32>(32u))), vec3<u32>(4294967295u, firstLeadingBit(arg_0.c.x), var_0.c.x)), 130975u));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(612f, _wgslsmith_f_op_f32(-global2.a.x)))));
    let var_1 = any(vec3<bool>(select(true, global2.a.x <= _wgslsmith_f_op_f32(-global2.a.x), all(vec3<bool>(arg_2, arg_2, false))), false, arg_2 || any(vec2<bool>(true, true))));
    return ~arg_0.c.yzz;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = ~(-2147483647i);
    var var_1 = 52776u;
    var var_2 = !vec4<bool>(arg_0, arg_0, true, arg_0);
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(1u), 1u, _wgslsmith_div_u32(26253u, 55930u)) >> (func_4(Struct_1(vec3<u32>(14557u, 13372u, 1u), vec2<i32>(u_input.c, -22101i), vec4<u32>(4294967295u, 36133u, 0u, 0u)), func_2(vec2<bool>(var_2.x, true)), true, vec4<i32>(0i, 0i, 23589i, 1i)) % vec3<u32>(32u)), ~select(~vec3<u32>(32332u, 14318u, 107215u), vec3<u32>(1u, 96405u, 4462u), select(var_2.zwx, vec3<bool>(arg_0, var_2.x, true), false))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_dot_vec2_i32(vec2<i32>(15942i, -23630i), vec2<i32>(u_input.a.x, u_input.c))), vec2<i32>(30643i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 24u)], -11064i)), vec2<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 24u)]), i32(-1i) * -46217i)), max(-vec2<i32>(3071i, -23266i), vec2<i32>(1i, -10345i))), ~vec4<u32>(~max(4294967295u, 1u), ~12254u, select(70987u, 2995u, false), _wgslsmith_mod_u32(68004u, ~69108u)));
    var_3 = func_2(select(select(var_2.yw, var_2.yx, arg_0), var_2.ww, any(!vec3<bool>(true, true, arg_0))));
    return min(var_3.c.x, ~var_3.c.x & var_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(abs(func_1(false)), 4294967295u, ~_wgslsmith_sub_u32(~(~4294967295u), abs(~4294967295u)), ~_wgslsmith_mult_u32(0u, select(0u << (0u % 32u), _wgslsmith_mod_u32(57361u, 4294967295u), any(vec2<bool>(true, false)))));
    global1 = array<vec4<i32>, 2>();
    global1 = array<vec4<i32>, 2>();
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(global2.a, global2.a)))) + vec2<f32>(-222f, _wgslsmith_f_op_f32(-global2.a.x))), global2.a)));
    var var_1 = Struct_2(global2.a);
    let var_2 = vec4<u32>(select(26504u, 4294967295u, true), ~var_0.x, ~(~_wgslsmith_clamp_u32(min(var_0.x, var_0.x), var_0.x, var_0.x)), ~reverseBits(var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_2(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)).c.xxy), ~(~_wgslsmith_mult_vec3_i32(select(u_input.a.zzx, u_input.a.xxx, false), u_input.a.wyw)), _wgslsmith_f_op_f32(sign(global2.a.x)), _wgslsmith_mod_vec2_i32(u_input.a.yw, -(~_wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(56756i, global0[_wgslsmith_index_u32(1u, 24u)])))));
}

