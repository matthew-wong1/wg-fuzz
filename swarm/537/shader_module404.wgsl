struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 28>;

var<private> global2: vec3<f32>;

var<private> global3: array<f32, 30> = array<f32, 30>(504f, 290f, 621f, 1000f, 148f, 1000f, -732f, -862f, -958f, 1045f, -2102f, 943f, -542f, -750f, 1195f, -220f, -653f, -1315f, 1247f, 208f, 1202f, 766f, 323f, 149f, 1392f, 875f, -186f, 1000f, 1475f, 847f);

var<private> global4: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: bool) -> u32 {
    global1 = array<Struct_2, 28>();
    let var_0 = _wgslsmith_f_op_f32(-496f * global2.x);
    global1 = array<Struct_2, 28>();
    var var_1 = global3[_wgslsmith_index_u32(select(1u, abs(~max(u_input.a, u_input.a)), arg_0), 30u)];
    global1 = array<Struct_2, 28>();
    return 4294967295u ^ ~_wgslsmith_mult_u32(~1u, 15140u >> (u_input.a % 32u));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_4(Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, true, true, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-25808i, 44532i, u_input.c.x, -2147483647i)), vec4<i32>(-7058i, 0i, 3266i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i) | global4.ww, vec2<i32>(u_input.c.x, u_input.b)), _wgslsmith_mult_i32(firstTrailingBit(1i), -1i), min(~(-17306i), global4.x)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(22678u, 30540u, 1u, u_input.a) << (min(vec4<u32>(u_input.a, u_input.a, 93740u, u_input.a), vec4<u32>(76030u, 10097u, 36637u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, 17102u, 1u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global2 = vec3<f32>(global3[_wgslsmith_index_u32(~(~56064u), 30u)], global2.x, global3[_wgslsmith_index_u32(5119u, 30u)]);
    let var_1 = Struct_1(-(var_0.b | select(var_0.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -1i, global4.x, u_input.b), var_0.b), !vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, true))), var_0.b, global3[_wgslsmith_index_u32(~1u, 30u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2048f, global2.x, global2.x)), vec2<u32>(21779u, abs(abs(func_1(var_0.a.a.x)))));
    global1 = array<Struct_2, 28>();
    let var_2 = Struct_3(var_0.a.a);
    return _wgslsmith_f_op_vec3_f32(-var_1.d);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> bool {
    let var_0 = Struct_1(firstLeadingBit(vec4<i32>(global4.x, -global4.x, u_input.b | -4949i, ~43233i)) >> (min(vec4<u32>(~4294967295u, ~arg_1, arg_0.x & 4294967295u, _wgslsmith_mult_u32(45579u, 0u)), ~min(vec4<u32>(0u, arg_1, arg_1, 1u), vec4<u32>(arg_1, u_input.a, arg_0.x, 15604u))) % vec4<u32>(32u)), (vec4<i32>(-1i) * -abs(vec4<i32>(428i, u_input.b, global4.x, u_input.c.x))) ^ (((vec4<i32>(u_input.b, global4.x, global4.x, u_input.c.x) ^ vec4<i32>(0i, global4.x, 1i, u_input.c.x)) << (arg_0 % vec4<u32>(32u))) >> (abs(arg_0) % vec4<u32>(32u))), global2.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3()))) - vec3<f32>(1f, global2.x, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.a, 30u)])))))), abs(_wgslsmith_mult_vec2_u32(arg_0.wz, arg_0.zx)));
    let var_1 = u_input.a <= _wgslsmith_mult_u32(~4294967295u, 0u);
    global2 = _wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(-276f, 1f, global3[_wgslsmith_index_u32(29403u, 30u)]), !(!(!vec3<bool>(false, true, var_1)))));
    global2 = vec3<f32>(1502f, -1480f, _wgslsmith_f_op_f32(abs(-735f)));
    var var_2 = Struct_1(vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(i32(-1i) * -36351i, -1i, u_input.b | -3360i)), _wgslsmith_mult_i32(-2147483647i, -(~var_0.a.x)), -abs(30684i), ~max(_wgslsmith_add_i32(1i, -1i), u_input.b)), vec4<i32>(var_0.a.x, _wgslsmith_dot_vec4_i32(var_0.b, -var_0.b & _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, var_0.b.x, -32576i, u_input.c.x), var_0.a)), reverseBits(global4.x), -1i), _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.d, var_0.d))), vec2<u32>(553u, _wgslsmith_mod_u32(arg_1, 38208u) << ((_wgslsmith_add_u32(14610u, var_0.e.x) ^ var_0.e.x) % 32u)));
    return false;
}

fn func_4(arg_0: bool) -> i32 {
    global2 = vec3<f32>(1797f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + 153f), global2.x);
    var var_0 = _wgslsmith_div_vec4_i32(~vec4<i32>(-63889i, firstLeadingBit(-72725i), global4.x, u_input.b), vec4<i32>(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.c.x, global4.x, 12435i), _wgslsmith_mod_i32(-36470i, -1i), global4.x), global4.x, -1i, -global4.x));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.a | (u_input.a & 0u), 30u)])) + global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))), global3[_wgslsmith_index_u32(countOneBits(60315u), 30u)]);
    let var_1 = ~(max(vec3<u32>(1u, ~u_input.a, abs(25499u)), firstTrailingBit(countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)))) >> (~min(vec3<u32>(1u, 59619u, u_input.a), select(vec3<u32>(u_input.a, 50884u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, arg_0, arg_0))) % vec3<u32>(32u)));
    let var_2 = Struct_1(~vec4<i32>(-38055i, -1i, abs(i32(-1i) * -16768i), ~0i), ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global4.x, global4.x, -1i) >> (vec4<u32>(var_1.x, 47729u, 17220u, 47892u) % vec4<u32>(32u)), vec4<i32>(-21264i, u_input.b, 37491i, global4.x), firstLeadingBit(vec4<i32>(-1i, 0i, u_input.c.x, 1i))) | abs(vec4<i32>(0i, global4.x, 4068i, 0i) | vec4<i32>(global4.x, global4.x, global4.x, 0i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 30u)] + 870f) + _wgslsmith_f_op_f32(abs(1023f)))), 1570f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(247f, global2.x, global3[_wgslsmith_index_u32(var_1.x, 30u)])))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global3[_wgslsmith_index_u32(~var_1.x, 30u)], _wgslsmith_f_op_f32(443f - global3[_wgslsmith_index_u32(u_input.a, 30u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 30u)], 241f, global2.x))))), ~var_1.yz);
    return _wgslsmith_dot_vec3_i32(var_0.xzx, firstLeadingBit(-var_0.wyy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 28>();
    global3 = array<f32, 30>();
    global1 = array<Struct_2, 28>();
    global3 = array<f32, 30>();
    let var_0 = Struct_2(59700i, vec4<u32>(0u, u_input.a, func_1(true), _wgslsmith_sub_u32(max(max(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a)), u_input.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], global2.x, -2287f, global2.x), vec4<f32>(756f, -348f, global2.x, global3[_wgslsmith_index_u32(u_input.a, 30u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 30u)], 611f, 260f, global3[_wgslsmith_index_u32(u_input.a, 30u)]) * vec4<f32>(global2.x, global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)], 1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -325f, global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)])) - vec4<f32>(-612f, -199f, 888f, global2.x))), any(vec4<bool>(true, true, true, true)))));
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_4(func_2(var_0.b, u_input.a)), -_wgslsmith_add_i32(i32(-1i) * -1470i, -3686i ^ global4.x), _wgslsmith_mod_i32(-func_4(var_1), ~(u_input.b & var_0.a))), var_0.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-330f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a ^ 50589u, var_0.b.x ^ var_0.b.x), 30u)], -950f)));
}

