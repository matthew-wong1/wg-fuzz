struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(48285u, 73753u, 5527u, 0u), Struct_1(true, vec4<u32>(45315u, 0u, 1u, 0u)), Struct_1(true, vec4<u32>(4294967295u, 0u, 38050u, 4294967295u)));

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: Struct_1 = Struct_1(false, vec4<u32>(0u, 51836u, 68988u, 16642u));

var<private> global3: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-385f, -223f, 350f, 794f), vec4<f32>(-744f, 1000f, 1485f, 384f), vec4<f32>(-1808f, -784f, -2152f, 527f), vec4<f32>(-1310f, 1434f, 680f, -652f), vec4<f32>(375f, 1060f, 136f, -494f), vec4<f32>(909f, -1049f, -312f, -465f), vec4<f32>(802f, 603f, 402f, -1208f), vec4<f32>(250f, -715f, 1257f, -648f), vec4<f32>(400f, 252f, -899f, 591f));

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = array<vec2<bool>, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(323f, 1810f, 203f))))))));
    let var_1 = arg_0.b;
    global2 = Struct_1(var_1.a, reverseBits(global2.b));
    let var_2 = firstTrailingBit(~(~vec3<u32>(arg_0.c.b.x, ~73759u, 1u)));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = ~(~min(~(~global0.c.b.x), ~firstTrailingBit(13343u)));
    let var_1 = 0u;
    global1 = array<vec2<bool>, 8>();
    global3 = array<vec4<f32>, 9>();
    var var_2 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c.b.x, ~37020u), ~(global0.a.xx | vec2<u32>(75255u, arg_3.b.x))), arg_3.b.zy, global0.b.b.zx);
    return !(!select(vec3<bool>(select(false, true, true), global0.b.a, true), !select(vec3<bool>(true, arg_3.a, global2.a), vec3<bool>(arg_3.a, true, arg_0.a), vec3<bool>(global2.a, global2.a, true)), vec3<bool>(true, arg_3.a, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = max(vec2<u32>(~firstTrailingBit(62113u), firstLeadingBit(26201u)), vec2<u32>(arg_2.x, global2.b.x));
    global3 = array<vec4<f32>, 9>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f * -864f)))), -1305f, _wgslsmith_f_op_f32(811f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-206f)))));
    var var_2 = !(!select(!vec3<bool>(global2.a, arg_3.a, false), func_3(global4[_wgslsmith_index_u32(arg_1, 11u)], 0i & u_input.c, vec2<u32>(1u, 35301u), global0.b), any(global1[_wgslsmith_index_u32(global2.b.x, 8u)])));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(413f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -543f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    return Struct_2(_wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(2720u, 1u, arg_2.x, 64088u))), vec4<u32>(~_wgslsmith_mod_u32(arg_3.b.x, 1u), global0.a.x, global0.a.x >> (32131u % 32u), 4294967295u)), global4[_wgslsmith_index_u32(3943u, 11u)], Struct_1(arg_3.a, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(23291u, arg_2.x, arg_1, 7234u), u_input.d) << (~vec4<u32>(var_0.x, arg_3.b.x, arg_3.b.x, arg_1) % vec4<u32>(32u)), ~vec4<u32>(arg_1, global0.b.b.x, 23899u, 21590u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    let var_0 = -(~_wgslsmith_div_vec3_i32(vec3<i32>(~0i, ~u_input.c, -3276i), -(~vec3<i32>(-1i, 39406i, -78093i))));
    var var_1 = ~u_input.d;
    global0 = Struct_2(~max(firstTrailingBit(u_input.d), ~countOneBits(arg_1.b)), Struct_1(all(vec3<bool>(true, true, true)), reverseBits(vec4<u32>(_wgslsmith_div_u32(5135u, 18704u), _wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(57846u, 4294967295u, 4526u, 55100u)), ~24059u, 4294967295u))), func_1(arg_0));
    global1 = array<vec2<bool>, 8>();
    var_1 = abs(global2.b);
    return -(~select(countOneBits(vec4<i32>(-22541i, -2147483647i, -1i, var_0.x)), -vec4<i32>(-2147483647i, u_input.c, -1i, u_input.c), vec4<bool>(false, global2.a, true, arg_1.a)) ^ firstLeadingBit(~reverseBits(vec4<i32>(var_0.x, 1i, -13274i, -22758i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(179f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(413f, _wgslsmith_f_op_f32(f32(-1f) * -289f))))));
    let var_1 = ~func_4(Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, global2.b.x, global0.c.b.x, u_input.e.x), global0.a), func_1(Struct_2(vec4<u32>(81161u, global0.a.x, global0.a.x, global2.b.x), Struct_1(true, global0.b.b), Struct_1(false, vec4<u32>(0u, global0.b.b.x, global2.b.x, 83938u)))), global0.c), func_1(func_2(vec4<u32>(global2.b.x, u_input.d.x, global0.c.b.x, global2.b.x) & vec4<u32>(u_input.a.x, 1u, global2.b.x, global0.a.x), ~0u, ~vec2<u32>(u_input.e.x, 33707u), Struct_1(global2.a, u_input.d))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1183f), -668f)));
    var var_2 = Struct_1(true, _wgslsmith_sub_vec4_u32(select(~u_input.d, global2.b, vec4<bool>(true, true, true, true)), global2.b));
    let var_3 = (vec2<i32>(-1i) * -vec2<i32>(1i, 0i)) << (abs(_wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(var_2.b.zy, global0.a.yy)), func_2(u_input.d, 4294967295u, vec2<u32>(1u, var_2.b.x), Struct_1(false, vec4<u32>(var_2.b.x, 46199u, 52320u, global2.b.x))).a.zw & _wgslsmith_mult_vec2_u32(vec2<u32>(49605u, global0.c.b.x), vec2<u32>(1u, var_2.b.x)), ~(~global0.a.wz))) % vec2<u32>(32u));
    global0 = Struct_2(func_1(func_2(vec4<u32>(65697u, min(5210u, global2.b.x), 4492u, 1u), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(global0.a.x, u_input.d.x, 1u)), ~(var_2.b.zz ^ vec2<u32>(global2.b.x, global2.b.x)), Struct_1(all(vec4<bool>(false, var_2.a, global2.a, global0.b.a)), max(vec4<u32>(4294967295u, 36992u, var_2.b.x, global2.b.x), vec4<u32>(global2.b.x, 52136u, global2.b.x, 0u))))).b, Struct_1(var_2.a, vec4<u32>(4294967295u, 4294967295u & select(0u, global2.b.x, global2.a), ~reverseBits(u_input.b.x), ~global0.b.b.x >> (25774u % 32u))), Struct_1(!all(!vec4<bool>(global2.a, global2.a, false, false)), ~(global0.b.b >> (vec4<u32>(1u, global0.c.b.x, global2.b.x, global2.b.x) % vec4<u32>(32u))) & u_input.d));
    global4 = array<Struct_1, 11>();
    global3 = array<vec4<f32>, 9>();
    let var_4 = Struct_2((u_input.d >> (min(vec4<u32>(u_input.a.x, u_input.e.x, 0u, global0.c.b.x), ~vec4<u32>(65178u, 85426u, global0.b.b.x, 0u)) % vec4<u32>(32u))) << (var_2.b % vec4<u32>(32u)), global0.c, func_1(Struct_2(vec4<u32>(global2.b.x, global0.a.x, 1u, 1u), Struct_1(false | var_2.a, func_1(Struct_2(u_input.d, global4[_wgslsmith_index_u32(global0.c.b.x, 11u)], global4[_wgslsmith_index_u32(0u, 11u)])).b), Struct_1(global2.a, vec4<u32>(24332u, global0.c.b.x, 1u, 8161u)))));
    let x = u_input.a;
    s_output = StorageBuffer(635f);
}

