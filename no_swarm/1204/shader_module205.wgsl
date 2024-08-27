struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: Struct_2;

var<private> global3: vec2<f32> = vec2<f32>(458f, 406f);

var<private> global4: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<u32>(1u, 47802u), 15850i, -719f), 65262u), Struct_2(Struct_1(vec2<u32>(4294967295u, 38859u), -30127i, 443f), 13454u), Struct_2(Struct_1(vec2<u32>(23697u, 1u), 44811i, -1035f), 9631u), Struct_2(Struct_1(vec2<u32>(1u, 77861u), 0i, -231f), 11881u), Struct_2(Struct_1(vec2<u32>(8086u, 22284u), 2147483647i, 1197f), 0u), Struct_2(Struct_1(vec2<u32>(66826u, 1u), 47911i, 107f), 7447u), Struct_2(Struct_1(vec2<u32>(48341u, 0u), 6710i, -325f), 12845u), Struct_2(Struct_1(vec2<u32>(10024u, 0u), 1i, -1588f), 0u), Struct_2(Struct_1(vec2<u32>(0u, 0u), 21132i, 950f), 27087u), Struct_2(Struct_1(vec2<u32>(0u, 24603u), 19614i, -1570f), 66050u), Struct_2(Struct_1(vec2<u32>(0u, 77447u), 0i, 1158f), 0u), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), -16107i, 315f), 0u), Struct_2(Struct_1(vec2<u32>(1u, 11020u), 1i, 1156f), 1534u), Struct_2(Struct_1(vec2<u32>(15880u, 92945u), 0i, 949f), 18042u), Struct_2(Struct_1(vec2<u32>(136731u, 47128u), 1i, 1000f), 4294967295u), Struct_2(Struct_1(vec2<u32>(36237u, 4896u), -8484i, 228f), 0u), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 65848i, -1362f), 4294967295u), Struct_2(Struct_1(vec2<u32>(21391u, 4294967295u), 0i, 486f), 4294967295u), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), 351i, -623f), 69947u), Struct_2(Struct_1(vec2<u32>(1u, 16730u), 42185i, -336f), 7941u), Struct_2(Struct_1(vec2<u32>(23861u, 54462u), -53771i, 326f), 19753u), Struct_2(Struct_1(vec2<u32>(39056u, 41925u), -14873i, -171f), 30418u), Struct_2(Struct_1(vec2<u32>(0u, 10235u), 2147483647i, -275f), 4294967295u), Struct_2(Struct_1(vec2<u32>(1u, 1u), -49845i, 1000f), 4294967295u), Struct_2(Struct_1(vec2<u32>(39702u, 4294967295u), 1i, -810f), 4294967295u), Struct_2(Struct_1(vec2<u32>(53422u, 18190u), 2147483647i, -1690f), 0u), Struct_2(Struct_1(vec2<u32>(0u, 30800u), 1i, 1728f), 59964u), Struct_2(Struct_1(vec2<u32>(44969u, 0u), 2147483647i, 808f), 48510u), Struct_2(Struct_1(vec2<u32>(5107u, 4294967295u), 0i, 1718f), 4114u), Struct_2(Struct_1(vec2<u32>(4294967295u, 59357u), -30723i, -1000f), 1u), Struct_2(Struct_1(vec2<u32>(11835u, 0u), -18010i, 228f), 0u), Struct_2(Struct_1(vec2<u32>(13089u, 1u), 1i, 557f), 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    let var_0 = -1289f;
    global0 = !select(global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(global2.a.a.x, u_input.a)), 3u)], global1[_wgslsmith_index_u32(82679u, 3u)], select(!global1[_wgslsmith_index_u32(global2.b, 3u)], select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(false, true, global0.x, global0.x), global1[_wgslsmith_index_u32(12813u, 3u)], vec4<bool>(true, global0.x, global0.x, true)), global0.x), vec4<bool>(global0.x, true, global0.x, true)));
    global3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + -1000f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(max(var_0, 1823f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(600f - global2.a.c), _wgslsmith_f_op_f32(select(-1638f, global2.a.c, true))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.a.c, global2.a.c))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, global2.a.c))))))));
    global2 = Struct_2(global2.a, u_input.a);
    let var_1 = ~(-(-(~(-63366i)) & -(global2.a.b | global2.a.b)));
    return Struct_1(global2.a.a, -1i, _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(-global2.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f * global2.a.c)))), false)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.b.xzy, _wgslsmith_mult_vec3_u32(u_input.b.xxx, vec3<u32>(~15431u, arg_0.a.x, 4294967295u))), 32u)];
    global3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a.c, 534f))), func_2().c)), -449f), -290f);
    var var_1 = Struct_2(func_2(), ~_wgslsmith_sub_u32(57195u, firstLeadingBit(~u_input.b.x)));
    let var_2 = var_0.a;
    global2 = Struct_2(func_2(), _wgslsmith_dot_vec2_u32(select(~var_2.a & var_2.a, var_0.a.a, select(global0.wy, select(vec2<bool>(true, false), global0.zw, vec2<bool>(true, global0.x)), global0.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.b, 61551u, 1u), vec4<u32>(4294967295u, global2.a.a.x, 66111u, 71709u)), select(4294967295u, u_input.b.x, true)), ~var_0.a.a | vec2<u32>(u_input.a, var_0.a.a.x))));
    return u_input.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(func_2(), _wgslsmith_mult_u32(func_3(Struct_1(vec2<u32>(1u, arg_3.b), ~arg_1.a.x, _wgslsmith_f_op_f32(max(393f, 1214f)))), 1u));
    let var_1 = vec3<u32>(arg_3.b, ~(~_wgslsmith_add_u32(36662u, u_input.b.x & global2.b)), ~min(~47331u, 0u));
    var var_2 = arg_3;
    var_0 = global4[_wgslsmith_index_u32(1u, 32u)];
    global1 = array<vec4<bool>, 3>();
    return Struct_1(_wgslsmith_mult_vec2_u32(~vec2<u32>(23507u, firstLeadingBit(6901u)), countOneBits(var_0.a.a)), firstTrailingBit(~(i32(-1i) * -12174i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1094f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    global0 = !select(select(!global1[_wgslsmith_index_u32(global2.b, 3u)], select(vec4<bool>(true, global0.x, false, arg_1.x), select(vec4<bool>(false, arg_1.x, false, arg_1.x), global1[_wgslsmith_index_u32(global2.b, 3u)], false), global0.x), !arg_1.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.b.zz), 3u)], global1[_wgslsmith_index_u32(4294967295u ^ arg_0.b, 3u)]);
    global0 = !vec4<bool>(arg_1.x, all(select(select(global0.xx, arg_1.zz, global0.xw), !vec2<bool>(arg_1.x, true), !arg_1.zx)), false, arg_1.x);
    let var_0 = 32692u;
    let var_1 = -210f;
    var var_2 = global0.yz;
    return Struct_2(Struct_1(arg_0.a.a, arg_2, _wgslsmith_f_op_f32(-arg_3.x)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(Struct_2(func_1(!vec4<bool>(global0.x, global0.x, global0.x, false), Struct_3(vec2<i32>(1i, 1i), any(global1[_wgslsmith_index_u32(60368u, 3u)])), any(!global1[_wgslsmith_index_u32(0u, 3u)]), global4[_wgslsmith_index_u32(~38703u, 32u)]), ~u_input.a & ~u_input.b.x), !global0.wyw, (~_wgslsmith_add_i32(global2.a.b, global2.a.b) >> (_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 1u), u_input.b)) % 32u)) >> (38406u % 32u), vec3<f32>(global2.a.c, func_1(!global1[_wgslsmith_index_u32(4294967295u, 3u)], Struct_3(~vec2<i32>(global2.a.b, 0i), any(global0.wyz)), all(select(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(global2.a.a.x, 3u)], global1[_wgslsmith_index_u32(12108u, 3u)])), global4[_wgslsmith_index_u32(1u, 32u)]).c, 386f));
    let var_0 = 31378i ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i & global2.a.b, ~(-16468i)), max(vec2<i32>(global2.a.b, global2.a.b) ^ vec2<i32>(-1i, global2.a.b), vec2<i32>(-1i, global2.a.b) >> (vec2<u32>(0u, global2.a.a.x) % vec2<u32>(32u)))), min(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.b, 29480i, global2.a.b), vec3<i32>(global2.a.b, -2147483647i, -24037i)), 0i));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x)));
    global0 = !vec4<bool>(any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), global1[_wgslsmith_index_u32(109803u, 3u)], global0.x), !vec4<bool>(false, global0.x, true, true))), true, all(!select(global0.zw, global0.wx, global0.x)), global0.x);
    global4 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-4300i, var_0, ~var_0), firstLeadingBit(min(vec3<i32>(var_0, var_0, var_0) ^ vec3<i32>(var_0, 2147483647i, -18323i), -vec3<i32>(var_0, -2147483647i, 20425i))), vec3<i32>(2147483647i, -12469i, global2.a.b)), global2.b, reverseBits(var_0), reverseBits(-(~vec2<i32>(32498i, 36648i)) ^ min(select(vec2<i32>(-56737i, -23012i), vec2<i32>(var_0, global2.a.b), global0.x), vec2<i32>(1i, 1i))));
}

