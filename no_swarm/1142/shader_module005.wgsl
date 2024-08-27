struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec4<bool>(false, true, true, false), 20116u, 59927u, 1u);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(7171u, vec4<bool>(true, false, true, false), 1u, 36178u, 0u), Struct_1(2167u, vec4<bool>(false, false, true, false), 11322u, 21846u, 4294967295u), Struct_1(56304u, vec4<bool>(false, false, false, true), 31070u, 6223u, 5445u), Struct_1(1u, vec4<bool>(false, true, true, false), 0u, 1u, 1u), Struct_1(0u, vec4<bool>(true, true, false, true), 0u, 28672u, 0u), Struct_1(13818u, vec4<bool>(true, false, true, false), 0u, 7312u, 4854u), Struct_1(0u, vec4<bool>(false, true, true, false), 1u, 1u, 1u), Struct_1(9345u, vec4<bool>(false, true, true, false), 1283u, 1u, 33056u), Struct_1(103121u, vec4<bool>(true, true, false, false), 0u, 22321u, 99685u), Struct_1(0u, vec4<bool>(true, true, false, false), 1u, 4294967295u, 56264u), Struct_1(1u, vec4<bool>(true, false, true, true), 1u, 25795u, 37283u), Struct_1(3492u, vec4<bool>(false, false, false, false), 0u, 1u, 38329u), Struct_1(0u, vec4<bool>(false, true, true, false), 19537u, 16114u, 60143u), Struct_1(72407u, vec4<bool>(false, true, false, false), 4294967295u, 73411u, 26992u), Struct_1(15214u, vec4<bool>(true, false, true, true), 4373u, 4294967295u, 1u), Struct_1(1u, vec4<bool>(false, false, false, false), 4294967295u, 1u, 65823u), Struct_1(50203u, vec4<bool>(true, false, true, true), 4294967295u, 4294967295u, 4294967295u), Struct_1(23103u, vec4<bool>(true, true, false, false), 4294967295u, 1259u, 29400u), Struct_1(40977u, vec4<bool>(false, false, false, false), 53839u, 1u, 5820u), Struct_1(4294967295u, vec4<bool>(true, false, false, true), 43616u, 4294967295u, 0u), Struct_1(23342u, vec4<bool>(false, false, true, false), 59081u, 29024u, 26075u), Struct_1(1u, vec4<bool>(true, false, false, true), 17685u, 2954u, 126405u), Struct_1(2361u, vec4<bool>(true, false, false, true), 28736u, 4294967295u, 1u), Struct_1(147751u, vec4<bool>(true, false, false, true), 50744u, 65596u, 47653u), Struct_1(20719u, vec4<bool>(true, false, false, true), 43816u, 47032u, 38374u), Struct_1(87657u, vec4<bool>(true, true, true, true), 0u, 1u, 25200u), Struct_1(32996u, vec4<bool>(true, true, true, false), 35410u, 95143u, 0u), Struct_1(1099u, vec4<bool>(false, false, true, true), 56424u, 44465u, 34607u), Struct_1(4294967295u, vec4<bool>(false, true, false, true), 58706u, 4294967295u, 7910u), Struct_1(1u, vec4<bool>(true, true, true, false), 4294967295u, 4163u, 81354u), Struct_1(1u, vec4<bool>(false, false, true, false), 4294967295u, 85850u, 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, u_input.a, u_input.b, global0.a), ~(~vec4<u32>(1u, u_input.a, 0u, 6972u)), global0.b), vec4<u32>(global0.c, 1u, 1u, global0.e)), vec4<bool>(any(!vec4<bool>(global0.b.x, global0.b.x, true, true)), true, true, global0.b.x), global0.d, ~_wgslsmith_mod_u32(60889u, ~(~4294967295u)), _wgslsmith_sub_u32(~firstTrailingBit(~4294967295u), ~23092u));
    var var_1 = Struct_1(_wgslsmith_div_u32(62173u, 1u), var_0.b, min(1u, abs(u_input.b)), ~(~(~u_input.c)) & 1u, 9814u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1145f) * _wgslsmith_f_op_f32(floor(-1000f))), 1f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(276f + -589f))));
    return _wgslsmith_clamp_u32(~var_0.d, abs(963u), ~67880u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(~u_input.b, !arg_0.b, 97251u, 48052u, ~1632u);
    let var_1 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 3758i, -2147483647i, 0i), vec4<i32>(-54601i, 57797i, -12962i, 0i))), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_clamp_i32(-30280i, -39479i, 4270i), ~13643i, 8839i, 1i)), vec4<i32>(firstTrailingBit(-50427i), -1i, ~1i, _wgslsmith_sub_i32(1i, 0i))));
    var var_2 = ~vec4<u32>(func_3(), 28751u, 4294967295u, _wgslsmith_sub_u32(func_3(), max(_wgslsmith_div_u32(u_input.a, var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(10387u, var_0.a, 56593u), vec3<u32>(3299u, global0.e, u_input.c)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, 173f, -101f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(460f, -969f, -1234f) * vec3<f32>(664f, -1000f, 124f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1256f, -1000f, 555f) - vec3<f32>(2995f, -223f, -812f)), vec3<f32>(1401f, -2457f, -1014f), any(vec3<bool>(false, true, var_0.b.x)))))) - vec3<f32>(-1108f, 947f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-990f)), 1327f, true)))));
    let var_4 = abs(-(~abs(vec3<i32>(-6371i, var_1, var_1)))) & ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-6278i, 0i, -1i), max(vec3<i32>(var_1, 1i, var_1), vec3<i32>(9039i, 1i, var_1)), _wgslsmith_mod_vec3_i32(vec3<i32>(18882i, -39127i, -2147483647i), vec3<i32>(39639i, var_1, var_1))), -max(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, 2147483647i, var_1)));
    return arg_0.a;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = vec3<u32>(~global0.e, func_2(Struct_1(0u, vec4<bool>(true, global0.e != arg_3, true, arg_1), global0.c, ~(~0u), 4294967295u)), ~(~u_input.b));
    let var_1 = Struct_1(~global0.e, vec4<bool>(false, global0.b.x, true, true), 10253u, global0.d, arg_3);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a, 4294967295u, u_input.c, 57483u), vec4<u32>(var_0.x, 0u, 27732u, 4294967295u)), vec4<u32>(u_input.c, var_1.d, 4294967295u, 0u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.a, 2890u), vec4<u32>(5701u, global0.e, 4294967295u, 1u)), vec4<u32>(58778u, global0.e, 13196u, global0.c))), 34806u), 31u)];
    global0 = Struct_1(_wgslsmith_div_u32(~(~1920u) << (1u % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(56759u, global0.e), vec2<u32>(var_2.d, 46841u)) ^ arg_3, ~(u_input.b << (20559u % 32u)), _wgslsmith_dot_vec3_u32(var_0, var_0 >> (vec3<u32>(arg_3, var_2.a, var_0.x) % vec3<u32>(32u))))), global0.b, abs(_wgslsmith_dot_vec3_u32(var_0, var_0)), _wgslsmith_clamp_u32(u_input.a | min(26956u & var_1.a, ~4294967295u), 4294967295u ^ ~_wgslsmith_add_u32(var_0.x, 8689u), 0u), _wgslsmith_div_u32(~global0.c, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.c, 4294967295u), var_0))));
    global0 = Struct_1(7188u, global0.b, u_input.a, ~37062u, ~arg_3);
    return var_2.e;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = true;
    global1 = array<Struct_1, 31>();
    var var_1 = !vec4<bool>(arg_1, any(!vec4<bool>(arg_1, true, arg_1, var_0)), arg_1, any(select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(true, true))) && all(vec3<bool>(true, true, true)));
    let var_2 = select(select(vec3<bool>(!arg_1, !select(arg_1, global0.b.x, false), false), !(!(!vec3<bool>(var_0, false, false))), !select(true, global0.b.x, 89579u >= global0.e)), !var_1.wwy, any(!vec4<bool>(false, true, !var_0, var_0)));
    let var_3 = true;
    return global1[_wgslsmith_index_u32(0u, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) - -654f) - -733f)));
    global0 = func_4((((global0.e >> (43573u % 32u)) << (func_1(true, true, global0.b.x, u_input.c) % 32u)) >> (global0.e % 32u)) ^ (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(u_input.c, global0.e, 20105u)), u_input.a) << (global0.a % 32u)), true, global1[_wgslsmith_index_u32(max(~abs(global0.c), ~(func_1(global0.b.x, false, false, 4294967295u) | u_input.b)), 31u)], ~vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, 22179i, -2147483647i)), vec3<i32>(44155i, 0i, -48929i)), _wgslsmith_div_i32(i32(-1i) * -1i, -1i << (global0.e % 32u)), 1i, 1i));
    let var_1 = 2147483647i;
    var var_2 = global1[_wgslsmith_index_u32(~1u, 31u)];
    var_0 = 449f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i >> (select(~var_2.a, _wgslsmith_add_u32(u_input.a, global0.d), !global0.b.x) % 32u), var_1, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1, var_1, -1i), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(var_1, var_1, var_1)), vec3<i32>(1i, -1i, var_1))), -_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1, -1i, var_1), vec3<i32>(var_1, -29455i, var_1)), vec3<i32>(var_1, var_1, var_1))));
}

