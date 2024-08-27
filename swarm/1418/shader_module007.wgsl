struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-1129f, -132f), Struct_1(-1355f, 1687f), Struct_1(-1000f, 1208f), Struct_1(-201f, 847f), Struct_1(-932f, 1267f), Struct_1(-497f, 2210f), Struct_1(1445f, -110f), Struct_1(-1498f, -199f), Struct_1(-960f, 2214f), Struct_1(-1269f, 1097f), Struct_1(-1160f, -2144f), Struct_1(488f, 1363f), Struct_1(1016f, 1478f), Struct_1(-865f, -1237f), Struct_1(1176f, -1911f), Struct_1(-1651f, 126f), Struct_1(-1164f, -154f), Struct_1(-1292f, -241f), Struct_1(-639f, 934f), Struct_1(-488f, 419f), Struct_1(612f, 934f));

var<private> global1: vec4<u32> = vec4<u32>(0u, 45236u, 1u, 8149u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -1779f), arg_2.a.a.x)) - _wgslsmith_f_op_f32(arg_2.d.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.a.x, 862f, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a.x) * _wgslsmith_f_op_f32(floor(arg_2.d.a))))));
    var var_1 = arg_0 ^ arg_0;
    let var_2 = arg_2;
    let var_3 = any(vec2<bool>(arg_1.x | false, arg_1.x != true));
    let var_4 = Struct_4(arg_2.a, -1i, -arg_2.e.a.x >> (~21142u % 32u), Struct_1(-1125f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1304f + arg_2.a.a.x) * _wgslsmith_f_op_f32(max(var_0, var_2.d.b)))))), arg_2.e);
    return all(arg_1);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    global1 = ~(~vec4<u32>(~_wgslsmith_div_u32(arg_0.b, 14439u), ~_wgslsmith_clamp_u32(global1.x, global1.x, global1.x), reverseBits(~4294967295u), select(9572u, 69734u, func_3(vec3<i32>(u_input.b, 0i, u_input.a), vec4<bool>(true, false, false, true), Struct_4(Struct_2(vec3<f32>(arg_1.b, 481f, -1712f), vec2<u32>(0u, arg_0.b)), u_input.b, 60311i, Struct_1(arg_1.b, -177f), Struct_3(vec2<i32>(u_input.a, u_input.a), 51308u, -13281i))))));
    global1 = vec4<u32>(~4294967295u, global1.x, ~arg_0.b, ~(~(~1u)));
    var var_0 = _wgslsmith_mult_u32(~(~1u), firstTrailingBit(1u));
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, _wgslsmith_f_op_f32(min(arg_1.b, 1755f)), _wgslsmith_f_op_f32(116f + -950f))), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global1.yw))), _wgslsmith_dot_vec4_i32(firstTrailingBit(max(vec4<i32>(u_input.b, 48485i, -1i, arg_0.a.x), vec4<i32>(u_input.b, 52442i, -1i, 2147483647i))) ^ select(vec4<i32>(u_input.a, arg_0.c, u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(62201i, 16928i, -1i, u_input.a), vec4<i32>(arg_0.c, u_input.a, -2147483647i, 11128i)), vec4<bool>(false, true, false, true)), _wgslsmith_div_vec4_i32(abs(firstTrailingBit(vec4<i32>(arg_0.c, 2147483647i, 1i, arg_0.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 49201i, u_input.a, arg_0.c), -vec4<i32>(0i, arg_0.a.x, 24510i, u_input.a)))), u_input.a, global0[_wgslsmith_index_u32(arg_0.b, 21u)], Struct_3(select(vec2<i32>(select(-15894i, u_input.a, false), 1i), arg_0.a, func_3(vec3<i32>(0i, arg_0.a.x, u_input.b), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), Struct_4(Struct_2(vec3<f32>(-175f, -341f, -123f), global1.xz), 9210i, u_input.b, arg_1, Struct_3(arg_0.a, 4294967295u, arg_0.a.x)))), ~(~4294967295u << (arg_0.b % 32u)), _wgslsmith_sub_i32(arg_0.a.x, arg_0.c)));
    global1 = ~vec4<u32>(~33622u, ~_wgslsmith_div_u32(4294967295u, global1.x) ^ firstLeadingBit(19141u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 22491u, arg_0.b, var_1.e.b), vec4<u32>(12942u, var_1.e.b, 22647u, arg_0.b)) >> (1u % 32u), global1.x);
    return Struct_3(_wgslsmith_add_vec2_i32(-_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c, u_input.a), vec2<i32>(2147483647i, -2147483647i)), arg_0.a), vec2<i32>(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-14790i, u_input.a, u_input.a, 1i), select(vec4<i32>(arg_0.c, arg_0.a.x, var_1.b, 42223i), vec4<i32>(u_input.a, arg_0.c, -6663i, arg_0.c), false)))), firstLeadingBit(4294967295u), _wgslsmith_sub_i32(~1i, _wgslsmith_sub_i32(7426i, arg_0.a.x & (1i | arg_0.a.x))));
}

fn func_4(arg_0: Struct_4) -> u32 {
    global0 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_f32(step(arg_0.a.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(496f, _wgslsmith_div_f32(637f, _wgslsmith_f_op_f32(f32(-1f) * -1021f)), u_input.b == 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d.a + arg_0.d.a))), _wgslsmith_f_op_f32(round(2377f)))))));
    var_0 = arg_0.a.a.x;
    global1 = firstLeadingBit(_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(arg_0.a.b.x, global1.x, global1.x, 39479u))), vec4<u32>(~reverseBits(36825u), arg_0.e.b, ~(4294967295u << (arg_0.a.b.x % 32u)), ~_wgslsmith_sub_u32(global1.x, global1.x))));
    var var_1 = global1.x;
    return (~(~0u) & ~_wgslsmith_dot_vec2_u32(abs(arg_0.a.b), global1.yw ^ global1.yx)) & _wgslsmith_dot_vec4_u32(vec4<u32>(20380u, ~1u, global1.x, 32592u), select(~vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(8351u, global1.x, 4294967295u, 0u), vec4<bool>(true, true, true, true)) | vec4<u32>(arg_0.a.b.x, arg_0.e.b ^ 691u, 12125u, 34150u));
}

fn func_1() -> f32 {
    global1 = vec4<u32>(func_4(Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(601f, 1000f, 381f)), select(global1.yz, vec2<u32>(29596u, 0u), vec2<bool>(true, false))), _wgslsmith_sub_i32(-2371i, reverseBits(u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.b), firstLeadingBit(vec3<i32>(2147483647i, -19895i, -39446i))), global0[_wgslsmith_index_u32(~select(global1.x, global1.x, true), 21u)], func_2(Struct_3(vec2<i32>(u_input.a, 9727i), 0u, u_input.b), Struct_1(285f, 884f)))), global1.x, 36957u, _wgslsmith_dot_vec4_u32(~vec4<u32>(13041u, _wgslsmith_clamp_u32(37113u, 44017u, 114694u), _wgslsmith_mod_u32(global1.x, global1.x), _wgslsmith_mod_u32(35516u, global1.x)), ~(vec4<u32>(global1.x, global1.x, global1.x, global1.x) >> (vec4<u32>(global1.x, global1.x, global1.x, global1.x) % vec4<u32>(32u)))));
    global0 = array<Struct_1, 21>();
    global1 = vec4<u32>(select(global1.x, ~(~(~global1.x)), global1.x > _wgslsmith_mod_u32(_wgslsmith_div_u32(global1.x, 0u), 55603u)), 43781u, ~global1.x, 14546u);
    let var_0 = vec4<bool>(true, true, !any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true)), -399f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1350f * 1219f)))));
    let var_1 = 0u;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    var var_0 = min(global1.yx, _wgslsmith_mult_vec2_u32(~global1.yx << ((_wgslsmith_sub_vec2_u32(vec2<u32>(46008u, global1.x), vec2<u32>(global1.x, global1.x)) & _wgslsmith_sub_vec2_u32(global1.xz, global1.zx)) % vec2<u32>(32u)), firstLeadingBit(countOneBits(vec2<u32>(global1.x, global1.x)))));
    let var_1 = _wgslsmith_f_op_f32(func_1());
    var var_2 = vec4<bool>(!(-1i > u_input.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 + var_1), -1133f)), var_1)) < _wgslsmith_f_op_f32(-var_1), all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), false)), false);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 894f, var_1) * vec3<f32>(1801f, var_1, -887f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1935f, -1518f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, -277f), vec3<f32>(1585f, var_1, var_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -172f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, -193f, 2201f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(global1.x, var_0.x), -_wgslsmith_mod_i32(u_input.b, u_input.b));
}

