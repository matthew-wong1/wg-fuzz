struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(0i, -25375i, -31075i, 22039i, -1i, 35478i, -1i, -1i, -1i, -19595i, 2147483647i, 1i, 1i, 2147483647i, i32(-2147483648), -1548i, 0i, 8085i, 0i, 0i, -31650i, 1i, -1i, i32(-2147483648), i32(-2147483648), 0i, -4067i, -1i, -15631i, -25255i, 0i);

var<private> global1: vec4<f32> = vec4<f32>(-267f, 1825f, -1374f, -2263f);

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(2068u, 41845u, 10781u, 1u), vec4<u32>(87495u, 4294967295u, 4294967295u, 53945u), vec4<u32>(0u, 67399u, 4294967295u, 51561u), vec4<u32>(2032u, 1u, 0u, 1u), vec4<u32>(22575u, 4294967295u, 48599u, 1u), vec4<u32>(36520u, 38801u, 1u, 4294967295u), vec4<u32>(1u, 23780u, 0u, 0u), vec4<u32>(9202u, 24532u, 35263u, 0u), vec4<u32>(4294967295u, 0u, 0u, 44222u), vec4<u32>(1u, 0u, 1u, 75950u), vec4<u32>(0u, 55054u, 1u, 92828u), vec4<u32>(140097u, 0u, 0u, 54761u), vec4<u32>(1u, 1u, 10801u, 4720u), vec4<u32>(74513u, 1u, 4294967295u, 1u), vec4<u32>(57095u, 0u, 4294967295u, 20805u), vec4<u32>(0u, 75454u, 0u, 12405u), vec4<u32>(1u, 24336u, 8002u, 1u), vec4<u32>(79786u, 104738u, 78002u, 4294967295u), vec4<u32>(1u, 79903u, 10175u, 45220u), vec4<u32>(11135u, 1u, 21907u, 0u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 7036u), vec4<u32>(6376u, 4148u, 4294967295u, 51199u), vec4<u32>(69961u, 4294967295u, 1u, 49552u), vec4<u32>(10327u, 0u, 39169u, 18974u), vec4<u32>(4294967295u, 120011u, 1u, 3924u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(23812u, 4294967295u, 0u, 13877u));

var<private> global3: array<Struct_2, 9>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = arg_1.d;
    let var_1 = arg_1.d;
    let var_2 = Struct_2(global1.x, _wgslsmith_f_op_vec4_f32(arg_1.b + arg_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), var_0.c.x)), Struct_1(vec4<bool>(var_0.a.x, any(var_0.a), false, !var_0.e), ~var_0.d.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-344f, var_1.c.x, 791f))), _wgslsmith_f_op_vec3_f32(-global1.zyw), !all(vec2<bool>(var_0.a.x, var_0.a.x)))), vec2<u32>(~min(var_1.b, var_1.d.x), arg_1.d.d.x), ~u_input.a < var_1.b));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.x)));
    var_0 = Struct_1(select(select(select(select(vec4<bool>(false, var_2.d.a.x, var_1.a.x, false), var_1.a, vec4<bool>(false, false, var_0.e, false)), !var_1.a, !var_2.d.a), select(var_2.d.a, vec4<bool>(var_1.a.x, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(var_1.a.yyw), var_0.e, false, any(arg_1.d.a.xwx))), select(vec4<bool>(all(vec2<bool>(false, true)), true, all(var_0.a), false), var_0.a, 0i != min(arg_0, -1i)), var_1.a), 4294967295u, vec3<f32>(_wgslsmith_f_op_f32(-418f * -647f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)) + _wgslsmith_f_op_f32(-var_1.c.x)) - _wgslsmith_div_f32(-1352f, _wgslsmith_f_op_f32(step(994f, var_1.c.x)))), var_1.c.x), reverseBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(73373u, var_0.d.x) ^ select(arg_1.d.d, vec2<u32>(0u, 1u), vec2<bool>(false, var_1.e)), countOneBits(vec2<u32>(var_0.b, 4294967295u)))), var_0.a.x);
    return ~1u < arg_1.d.b;
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, 1338f, -156f, -396f)) + vec4<f32>(-290f, arg_0.c.x, 114f, arg_0.c.x)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1024f, 325f, global1.x, arg_0.c.x), vec4<f32>(global1.x, 1000f, global1.x, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(668f, -1705f, -332f, 1987f), arg_0.a.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -935f, global1.x, global1.x) * vec4<f32>(675f, -470f, global1.x, -1039f))))));
    var var_0 = Struct_1(!(!(!arg_0.a)), max((~29375u ^ u_input.a) ^ ~(arg_0.d.x & 91547u), max(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.a, 28u)], ~global2[_wgslsmith_index_u32(u_input.a, 28u)]), reverseBits(arg_0.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c * arg_0.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(822f, global1.x, arg_0.c.x), arg_0.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, global1.x, -885f))), _wgslsmith_f_op_vec3_f32(sign(global1.zww)), arg_0.e))), arg_0.d, arg_0.e == (u_input.a >= firstTrailingBit(u_input.a)));
    var var_1 = arg_0;
    let var_2 = u_input.b & global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a ^ arg_0.d.x), 31u)];
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -375f);
    return 15980u;
}

fn func_2() -> bool {
    global0 = array<i32, 31>();
    var var_0 = vec4<u32>(func_4(Struct_1(vec4<bool>(false, true, func_3(global0[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(49544u, 9u)], u_input.b), u_input.c < 0i), (u_input.a << (u_input.a % 32u)) & abs(u_input.a), global1.wyw, vec2<u32>(78403u, 0u), false)), u_input.a, 42120u, _wgslsmith_add_u32(~firstTrailingBit(select(u_input.a, 0u, false)), 113102u));
    var var_1 = select(select(vec3<bool>(true, true, global1.x != global1.x), !vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true), !(1668f >= _wgslsmith_f_op_f32(trunc(global1.x)))), vec3<bool>(true, true, true), vec3<bool>(!all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(-729f, 718f)) < global1.x, true));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) * global1.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(trunc(-1102f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-640f, 1231f, global1.x, global1.x) + vec4<f32>(global1.x, 999f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(842f, global1.x, -113f, -424f)))))) * vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(757f, global1.x, false))), global1.x, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(975f, -353f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(global1.x, -859f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1000f - 654f)))), Struct_1(vec4<bool>(true, _wgslsmith_clamp_u32(var_0.x, 7843u, 0u) == ~0u, false, all(!vec3<bool>(var_1.x, true, true))), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1.zzx, vec3<f32>(-806f, 770f, global1.x))) - _wgslsmith_f_op_vec3_f32(global1.xxw * vec3<f32>(562f, global1.x, 1000f))), _wgslsmith_f_op_vec3_f32(global1.zyw - _wgslsmith_f_op_vec3_f32(sign(global1.zwy)))), ~firstLeadingBit(var_0.ww), true));
    var var_3 = vec3<i32>(-2147483647i, u_input.c, -2147483647i);
    return var_2.d.a.x;
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_1(!(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)))), u_input.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.zyz, vec3<f32>(global1.x, arg_0, -1362f)))))), select(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, u_input.a), true)) ^ _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 66024u), vec2<u32>(u_input.a, 1u))), ~vec2<u32>(_wgslsmith_mod_u32(u_input.a, 1u), u_input.a ^ 0u), any(vec4<bool>(false, 1i > u_input.c, any(vec2<bool>(true, true)), func_2()))), true);
    let var_1 = var_0;
    let var_2 = ~global2[_wgslsmith_index_u32(reverseBits(~var_1.b), 28u)];
    let var_3 = _wgslsmith_f_op_f32(-var_0.c.x);
    let var_4 = -22110i;
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(global2[_wgslsmith_index_u32(var_0.d.x, 28u)]) >> (max(vec4<u32>(var_1.d.x, 2749u, 10735u, var_2.x), vec4<u32>(1u, var_1.b, var_0.b, u_input.a)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.x, u_input.a, u_input.a, var_0.d.x), ~var_2, var_2)), _wgslsmith_mod_vec4_u32(var_2, ~vec4<u32>(var_0.d.x, 4294967295u, 49001u, var_2.x)), abs(~(~global2[_wgslsmith_index_u32(u_input.a, 28u)]))) << (reverseBits(global2[_wgslsmith_index_u32(~(~4294967295u) >> (func_4(var_1) % 32u), 28u)]) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 28>();
    global3 = array<Struct_2, 9>();
    global4 = global1.x;
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 9u)];
    var var_1 = _wgslsmith_mod_u32(var_0.d.d.x, reverseBits(reverseBits(u_input.a))) & min(firstTrailingBit(51834u), u_input.a);
    var var_2 = (firstTrailingBit(select(var_0.d.d.x << (var_0.d.d.x % 32u), abs(var_0.d.b), true)) ^ var_0.d.b) >= _wgslsmith_mult_u32(min(~4294967295u, ~1u), 1u);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(0u, var_0.d.b)), max(4294967295u, firstLeadingBit(43777u))) >> (u_input.a % 32u), 28u)] >> (_wgslsmith_clamp_vec4_u32(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.d.b, 4294967295u), firstLeadingBit(var_0.d.b)), 28u)]), firstLeadingBit(func_1(global1.x)), select(~global2[_wgslsmith_index_u32(var_0.d.d.x, 28u)] >> (~global2[_wgslsmith_index_u32(49943u, 28u)] % vec4<u32>(32u)), func_1(var_0.b.x), !var_0.d.a)) % vec4<u32>(32u));
    let var_4 = Struct_2(global1.x, var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f)), _wgslsmith_f_op_f32(exp2(global1.x)))), Struct_1(!var_0.d.a, var_3.x, _wgslsmith_f_op_vec3_f32(select(var_0.b.zxy, vec3<f32>(-1144f, _wgslsmith_f_op_f32(f32(-1f) * -544f), -1000f), !all(vec2<bool>(var_0.d.a.x, var_0.d.a.x)))), var_3.yz, any(!var_0.d.a)));
    let var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(u_input.c, global0[_wgslsmith_index_u32(0u, 31u)]), select(_wgslsmith_add_i32(~(-2147483647i), ~(-1i)), 36049i, !var_0.d.a.x), global0[_wgslsmith_index_u32(u_input.a, 31u)]));
}

