struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(false, true, true, false), 96132u, vec2<bool>(false, true), vec2<f32>(917f, -1000f), true), Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec2<bool>(true, true), vec2<f32>(1213f, 493f), false), Struct_1(vec4<bool>(false, false, true, false), 15004u, vec2<bool>(false, false), vec2<f32>(-1458f, -1571f), false), Struct_1(vec4<bool>(true, false, true, false), 18488u, vec2<bool>(false, false), vec2<f32>(-986f, 1618f), true), Struct_1(vec4<bool>(false, false, true, true), 13396u, vec2<bool>(true, true), vec2<f32>(326f, 797f), true), Struct_1(vec4<bool>(false, false, true, true), 0u, vec2<bool>(true, true), vec2<f32>(753f, 1219f), true), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, vec2<bool>(true, true), vec2<f32>(1051f, 1188f), false), Struct_1(vec4<bool>(false, true, true, false), 0u, vec2<bool>(true, false), vec2<f32>(-1651f, -618f), false), Struct_1(vec4<bool>(true, true, true, false), 34355u, vec2<bool>(false, true), vec2<f32>(-913f, -1305f), true), Struct_1(vec4<bool>(false, true, true, true), 4294967295u, vec2<bool>(true, false), vec2<f32>(-1168f, 1593f), false), Struct_1(vec4<bool>(true, true, false, true), 0u, vec2<bool>(true, true), vec2<f32>(-564f, -673f), true), Struct_1(vec4<bool>(true, false, false, false), 0u, vec2<bool>(true, false), vec2<f32>(-565f, 415f), false), Struct_1(vec4<bool>(false, true, true, false), 0u, vec2<bool>(true, false), vec2<f32>(1961f, 252f), true), Struct_1(vec4<bool>(true, false, false, true), 0u, vec2<bool>(false, false), vec2<f32>(145f, 562f), false), Struct_1(vec4<bool>(false, true, false, false), 10735u, vec2<bool>(true, true), vec2<f32>(774f, 566f), true), Struct_1(vec4<bool>(false, false, false, true), 17705u, vec2<bool>(false, true), vec2<f32>(1361f, 894f), false), Struct_1(vec4<bool>(true, true, false, true), 10372u, vec2<bool>(false, true), vec2<f32>(-916f, 834f), false), Struct_1(vec4<bool>(true, true, false, true), 0u, vec2<bool>(true, false), vec2<f32>(-318f, 501f), false), Struct_1(vec4<bool>(true, true, false, false), 26299u, vec2<bool>(true, true), vec2<f32>(331f, 621f), true));

var<private> global1: array<f32, 6> = array<f32, 6>(-1482f, 800f, 1483f, -950f, -2078f, -2348f);

var<private> global2: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, false, false)));

var<private> global3: i32 = 1i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = 1u;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(34075u, (var_0 & arg_0.e.b) | arg_0.a.x), 7u)];
    global0 = array<Struct_1, 19>();
    var var_2 = 60061u;
    return !arg_0.e.c;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<bool> {
    global3 = u_input.c.x;
    global1 = array<f32, 6>();
    var var_0 = !func_1(Struct_2(~u_input.d.xy, true, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], 267f)), Struct_1(vec4<bool>(false, false, true, false), arg_1, vec2<bool>(true, false), vec2<f32>(-683f, -518f), false))).x && (arg_1 < ~_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, u_input.d.x), 11898u));
    let var_1 = vec4<u32>(1u, reverseBits(firstLeadingBit(min(~7911u, arg_1))), u_input.a.x, ~(3353u << ((u_input.a.x & 22046u) % 32u)));
    var var_2 = u_input.c.x;
    return vec2<bool>(true, 13383u <= ~_wgslsmith_dot_vec3_u32(var_1.wwy | vec3<u32>(6799u, 27744u, var_1.x), ~vec3<u32>(u_input.a.x, arg_1, 4294967295u)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = vec2<f32>(arg_0, global1[_wgslsmith_index_u32(select(36585u, min(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 18349u), u_input.a.xy), ~u_input.a.yy), 35947u), all(vec3<bool>(arg_0 < -730f, true, false))), 6u)]);
    global3 = -min(i32(-1i) * -1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(reverseBits(u_input.c.x), -2042i), 0i, ~36790i << ((u_input.a.x & 26011u) % 32u)));
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 7u)];
    var var_2 = vec4<i32>(u_input.b >> (~reverseBits(~u_input.d.x) % 32u), -19524i, u_input.b, select(~(u_input.c.x | 6225i) << (~countOneBits(0u) % 32u), 0i, true != var_1.a.x));
    let var_3 = ~vec4<u32>(abs(min(u_input.a.x, firstTrailingBit(1u))), firstTrailingBit(u_input.d.x | ~7371u), abs(~u_input.a.x), select(reverseBits(4029u), countOneBits(~u_input.a.x), true));
    return ~(~var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(func_1(Struct_2(u_input.d.zx, true, -547f, vec2<f32>(1000f, -670f), global0[_wgslsmith_index_u32(u_input.d.x, 19u)])), vec2<bool>(u_input.a.x == 0u, false), func_2(i32(-1i) * -23809i, ~1887u)));
    let var_1 = Struct_4(~u_input.d.x, ~u_input.b);
    let var_2 = global2[_wgslsmith_index_u32(abs(func_3(1000f)), 7u)];
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(var_1.a) & (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 20010u)), vec3<u32>(u_input.d.x, 4294967295u, max(u_input.a.x, 4294967295u))) ^ ((_wgslsmith_add_u32(var_1.a, 47538u) & firstTrailingBit(0u)) ^ 1u)), 19u)];
    var var_4 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a), vec3<u32>(0u, 39459u, var_3.b))), ~_wgslsmith_clamp_u32(~var_1.a, 0u, u_input.a.x | 34299u)), 7u)];
    let var_5 = global2[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_6 = Struct_3(var_2.a);
    var var_7 = select(vec3<bool>(false, true, !(!var_2.a.x)), !(!vec3<bool>(0i == u_input.c.x, var_2.a.x, true)), vec3<bool>(17915u < _wgslsmith_clamp_u32(u_input.d.x | var_1.a, ~39067u, ~var_1.a), all(vec3<bool>(true, true, var_6.a.x != var_5.a.x)), func_2(_wgslsmith_div_i32(-2147483647i, ~u_input.c.x), u_input.a.x).x));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_f_op_f32(-1617f - var_3.d.x)), vec3<u32>(47043u, _wgslsmith_mod_u32(24433u, firstLeadingBit(var_1.a)), 35072u));
}

