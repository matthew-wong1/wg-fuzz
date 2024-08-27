struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 27>;

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec2<u32>(1u, 63552u), vec4<i32>(35055i, -4000i, 0i, -11905i), vec3<u32>(58893u, 1u, 4294967295u), true), Struct_3(vec2<u32>(1u, 20330u), vec4<i32>(1i, 1i, 0i, 1i), vec3<u32>(67728u, 44384u, 1u), true), Struct_3(vec2<u32>(1u, 20139u), vec4<i32>(-19342i, 2109i, 18120i, -1i), vec3<u32>(1u, 63801u, 4294967295u), true), Struct_3(vec2<u32>(1u, 1u), vec4<i32>(-1i, i32(-2147483648), 1i, -61192i), vec3<u32>(0u, 4294967295u, 0u), false), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(0i, -5695i, i32(-2147483648), 22914i), vec3<u32>(1u, 0u, 0u), true), Struct_3(vec2<u32>(5764u, 50113u), vec4<i32>(-34103i, -15491i, 2147483647i, 0i), vec3<u32>(8065u, 1u, 1u), false), Struct_3(vec2<u32>(1u, 0u), vec4<i32>(17127i, 1i, -26638i, -1i), vec3<u32>(4294967295u, 0u, 1u), true), Struct_3(vec2<u32>(13042u, 1u), vec4<i32>(-7985i, -8334i, 0i, -37474i), vec3<u32>(42355u, 55805u, 13954u), false), Struct_3(vec2<u32>(8776u, 34937u), vec4<i32>(1i, -20800i, 2147483647i, 1i), vec3<u32>(30688u, 70340u, 4405u), false), Struct_3(vec2<u32>(1u, 4294967295u), vec4<i32>(i32(-2147483648), -17686i, -42697i, 0i), vec3<u32>(26478u, 0u, 58094u), true), Struct_3(vec2<u32>(12827u, 61668u), vec4<i32>(6285i, 0i, -1i, 14477i), vec3<u32>(0u, 4294967295u, 76352u), false), Struct_3(vec2<u32>(48557u, 1u), vec4<i32>(27264i, 0i, -43048i, 7240i), vec3<u32>(7634u, 25861u, 1u), false), Struct_3(vec2<u32>(1u, 910u), vec4<i32>(-37710i, 1i, 1i, -1i), vec3<u32>(79006u, 937u, 9912u), true), Struct_3(vec2<u32>(0u, 0u), vec4<i32>(i32(-2147483648), -1752i, 1i, 2147483647i), vec3<u32>(4294967295u, 111446u, 42020u), true), Struct_3(vec2<u32>(13589u, 26340u), vec4<i32>(-24231i, i32(-2147483648), -36625i, 22765i), vec3<u32>(0u, 4294967295u, 0u), false), Struct_3(vec2<u32>(1u, 0u), vec4<i32>(1i, 0i, i32(-2147483648), -34418i), vec3<u32>(0u, 41348u, 1u), false), Struct_3(vec2<u32>(9763u, 8860u), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i), vec3<u32>(68470u, 0u, 4294967295u), true), Struct_3(vec2<u32>(10221u, 1u), vec4<i32>(-1i, 42027i, 2147483647i, i32(-2147483648)), vec3<u32>(16751u, 54857u, 4294967295u), true), Struct_3(vec2<u32>(98038u, 0u), vec4<i32>(27510i, 0i, 0i, -1i), vec3<u32>(0u, 1u, 35836u), true), Struct_3(vec2<u32>(4294967295u, 19031u), vec4<i32>(1i, -1i, i32(-2147483648), 0i), vec3<u32>(2910u, 4294967295u, 14451u), true), Struct_3(vec2<u32>(54522u, 4294967295u), vec4<i32>(-21988i, -8025i, i32(-2147483648), 1i), vec3<u32>(28834u, 4294967295u, 0u), true), Struct_3(vec2<u32>(87547u, 4294967295u), vec4<i32>(-1i, -25458i, -4503i, -1i), vec3<u32>(4294967295u, 0u, 38764u), true), Struct_3(vec2<u32>(3889u, 25612u), vec4<i32>(-1i, -68222i, 26629i, -1i), vec3<u32>(16689u, 37263u, 93540u), true), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(2147483647i, i32(-2147483648), 17952i, -44839i), vec3<u32>(4836u, 14481u, 68273u), false), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-7148i, -6492i, -1i, -48394i), vec3<u32>(36051u, 57872u, 0u), true), Struct_3(vec2<u32>(34060u, 0u), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 17267i), vec3<u32>(28005u, 1u, 4294967295u), true), Struct_3(vec2<u32>(81158u, 4294967295u), vec4<i32>(10667i, i32(-2147483648), -62908i, i32(-2147483648)), vec3<u32>(0u, 30685u, 44666u), true), Struct_3(vec2<u32>(5786u, 6881u), vec4<i32>(-9552i, -11105i, 1i, 31590i), vec3<u32>(23635u, 1u, 4294967295u), true));

var<private> global3: vec4<u32> = vec4<u32>(27356u, 32976u, 10029u, 23536u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(~44903u, 28u)];
    let var_1 = select(select(select(!select(vec4<bool>(false, var_0.d, true, true), vec4<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 27u)], global1[_wgslsmith_index_u32(71614u, 27u)], true, false), var_0.d), select(vec4<bool>(false, global1[_wgslsmith_index_u32(global3.x, 27u)], true, global0.c.x), vec4<bool>(false, true, var_0.d, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global0.c.x, var_0.d, true)), all(vec2<bool>(var_0.d, true))), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(global0.a, 27u)], true, var_0.d), !select(vec4<bool>(true, global0.c.x, global1[_wgslsmith_index_u32(11252u, 27u)], global1[_wgslsmith_index_u32(global3.x, 27u)]), vec4<bool>(global0.c.x, false, false, global1[_wgslsmith_index_u32(global0.a, 27u)]), true), all(global0.c)), select(!var_0.d, !global1[_wgslsmith_index_u32(var_0.c.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)])), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1141f)) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1359f - arg_0.b))), var_0.d, !var_0.d, var_0.d), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a, global3.zy) << (global0.b % 32u), 27u)]);
    let var_2 = _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1800f * 373f))))))));
    var var_3 = _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(sign(634f)), true));
    var var_4 = _wgslsmith_dot_vec3_u32(var_0.c >> (vec3<u32>(96872u, max(global3.x, 19579u), 24973u >> (1u % 32u)) % vec3<u32>(32u)), ~(vec3<u32>(23149u, 46759u, 4294967295u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.x, global0.b, var_0.c.x), vec3<u32>(1u, 0u, 42693u)) % vec3<u32>(32u)))) == 1u;
    return arg_0.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, -756f))))))))) + 621f);
    return vec4<u32>(abs(arg_1.x), 1u & arg_2.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(global0.a, arg_0.x, 23520u), ~41972u, arg_1.x, ~12012u), ~((vec4<u32>(arg_2.c.x, arg_2.a.x, arg_2.c.x, 4294967295u) >> (vec4<u32>(global3.x, 0u, arg_2.a.x, arg_2.a.x) % vec4<u32>(32u))) ^ vec4<u32>(global0.b, 4294967295u, 56643u, global0.a))), _wgslsmith_div_u32(arg_2.a.x << (arg_0.x % 32u), max(arg_2.a.x, 1u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    var var_0 = Struct_3(vec2<u32>(~(~(~31849u)), global3.x), vec4<i32>(1i, min(36318i, -26702i), 31306i, arg_0.x) << ((_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 1u, global0.a, global3.x), func_2(vec2<u32>(global3.x, 0u), global3.xx, Struct_3(global3.wz, vec4<i32>(-847i, 1i, u_input.b.x, -2147483647i), global3.zxw, global1[_wgslsmith_index_u32(global3.x, 27u)]), global0.c.x)) | vec4<u32>(~global0.b, 0u, 28252u, min(41446u, global0.b))) % vec4<u32>(32u)), global3.xxz, _wgslsmith_dot_vec4_u32(vec4<u32>(26487u, global0.a, 1u, ~global0.b), ~(vec4<u32>(global0.b, global3.x, global0.b, global3.x) >> (vec4<u32>(0u, 20213u, 0u, 1u) % vec4<u32>(32u)))) > (~(~global3.x) << (global0.a % 32u)));
    var_0 = global2[_wgslsmith_index_u32(~1u, 28u)];
    let var_1 = !(var_0.a.x <= ~18344u);
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    return -141f;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_5, arg_3: Struct_4) -> Struct_3 {
    let var_0 = global0.c;
    return global2[_wgslsmith_index_u32(firstLeadingBit(~max(_wgslsmith_sub_u32(~arg_2.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.a.a, global3.x), global3.zxx)), arg_2.a.a)), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(global3.x, global0.b);
    var var_1 = func_4(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(vec4<i32>(-22960i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.b.x, 26975i, -12021i, 673i), global0.c.x), 1f)) + _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, 1076f)))) < 571f, Struct_5(Struct_2(~0u, 0u, !(!global0.c))), Struct_4(vec2<bool>(global1[_wgslsmith_index_u32(global3.x, 27u)], global0.c.x), Struct_1(-59895i, _wgslsmith_div_f32(1202f, -201f))));
    global3 = select(~(~vec4<u32>(abs(1u), global0.b, 73019u, _wgslsmith_div_u32(var_1.c.x, 4294967295u))), ~vec4<u32>(max(global3.x, global3.x), ~global0.a, 68729u, _wgslsmith_add_u32(var_1.c.x, global0.a)) ^ vec4<u32>((global0.b >> (1u % 32u)) & 0u, var_1.c.x, global0.a, var_1.c.x), select(vec4<bool>(false, select(true == global0.c.x, var_1.d, true), global0.c.x, var_1.d), vec4<bool>(!global1[_wgslsmith_index_u32(13727u, 27u)] && any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 27u)], true, global1[_wgslsmith_index_u32(0u, 27u)], false)), true, !(!global0.c.x), any(vec3<bool>(var_1.d, true, true))), !vec4<bool>(!global0.c.x, true, any(global0.c), true)));
    global3 = reverseBits(vec4<u32>(_wgslsmith_div_u32(~var_1.a.x, 6159u), abs(27799u), (global3.x & 1u) << (var_1.a.x % 32u), max(var_1.c.x, func_2(var_1.a, global3.yx, Struct_3(var_1.a, vec4<i32>(1i, u_input.b.x, var_1.b.x, -18839i), vec3<u32>(global0.a, var_1.c.x, 20175u), true), true).x))) & ~_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, var_1.c.x, 28191u, 4294967295u), vec4<u32>(0u, 15846u, global3.x, global0.b)), vec4<u32>(0u, 4294967295u, var_1.c.x, ~0u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-692f + _wgslsmith_f_op_f32(-726f * -595f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(595f * -530f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-564f * -632f), -985f)), 885f, any(vec2<bool>(true, true))))));
    var var_3 = !(var_1.d & !var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(39860u, global3.x, 33249u, global3.x), vec4<u32>(global3.x, global0.a, 0u, 0u)), firstLeadingBit(~vec4<u32>(7994u, 1u, global0.a, 10475u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(581f, 370f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + var_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 * var_2) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 689f) * vec2<f32>(var_2.x, var_2.x))))), var_2));
}

