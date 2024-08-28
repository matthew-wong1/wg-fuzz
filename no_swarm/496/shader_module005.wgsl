struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(31159i, 14293i), vec2<i32>(i32(-2147483648), 52984i), vec2<i32>(2147483647i, -77239i));

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(12033u), vec2<u32>(44641u, 1u)), Struct_2(Struct_1(0u), vec2<u32>(1u, 2286u)), Struct_2(Struct_1(1u), vec2<u32>(19926u, 83873u)), Struct_2(Struct_1(1u), vec2<u32>(4294967295u, 2356u)), Struct_2(Struct_1(24469u), vec2<u32>(80257u, 61978u)), Struct_2(Struct_1(51190u), vec2<u32>(19899u, 98574u)), Struct_2(Struct_1(1u), vec2<u32>(57242u, 37818u)), Struct_2(Struct_1(1u), vec2<u32>(1u, 0u)), Struct_2(Struct_1(18398u), vec2<u32>(67141u, 31735u)), Struct_2(Struct_1(19367u), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(1u), vec2<u32>(0u, 1u)), Struct_2(Struct_1(0u), vec2<u32>(0u, 0u)), Struct_2(Struct_1(1u), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(28485u), vec2<u32>(68784u, 61811u)), Struct_2(Struct_1(63707u), vec2<u32>(49001u, 0u)), Struct_2(Struct_1(19707u), vec2<u32>(0u, 1u)), Struct_2(Struct_1(4294967295u), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(45553u), vec2<u32>(67306u, 2915u)), Struct_2(Struct_1(0u), vec2<u32>(15624u, 0u)), Struct_2(Struct_1(29268u), vec2<u32>(34286u, 4294967295u)), Struct_2(Struct_1(4294967295u), vec2<u32>(42909u, 4294967295u)), Struct_2(Struct_1(43141u), vec2<u32>(35541u, 31656u)), Struct_2(Struct_1(4294967295u), vec2<u32>(1u, 1u)), Struct_2(Struct_1(35735u), vec2<u32>(0u, 4294967295u)), Struct_2(Struct_1(0u), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(4294967295u), vec2<u32>(30633u, 16245u)), Struct_2(Struct_1(4294967295u), vec2<u32>(1u, 20844u)), Struct_2(Struct_1(61820u), vec2<u32>(0u, 63675u)), Struct_2(Struct_1(16255u), vec2<u32>(4294967295u, 57222u)), Struct_2(Struct_1(74231u), vec2<u32>(70030u, 86008u)), Struct_2(Struct_1(3043u), vec2<u32>(0u, 61948u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_0 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), arg_0, abs(firstLeadingBit(600u)), 30852u), ~(firstTrailingBit(vec4<u32>(arg_0, 0u, arg_0, 1u)) >> ((vec4<u32>(arg_0, 11685u, arg_0, arg_0) & vec4<u32>(1u, 12821u, 102002u, 1u)) % vec4<u32>(32u)))) % 32u), 31u)];
    let var_1 = ~firstTrailingBit(vec4<u32>(4294967295u, min(arg_0, 8778u) & (arg_0 | 4294967295u), var_0.b.x >> (arg_0 % 32u), _wgslsmith_add_u32(46740u, reverseBits(12211u))));
    return vec4<u32>(0u, 1u, select(var_1.x, var_1.x, any(vec4<bool>(true, true, false, false)) | (any(vec4<bool>(false, false, true, true)) | true)), 37686u);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_4) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), arg_1.x, 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(100f * _wgslsmith_f_op_f32(412f - arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))))));
    let var_1 = Struct_5(arg_0.b.zz, func_3(_wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(43459u, arg_0.c.a)), 1u)));
    var var_2 = Struct_4(i32(-1i) * -60072i);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, arg_1.x, -1632f, 600f))))))));
    let var_4 = all(vec4<bool>(any(arg_0.b), (~arg_2.a & var_2.a) <= u_input.a, all(select(select(arg_0.b, arg_0.b, vec3<bool>(true, false, false)), vec3<bool>(false, var_1.a.x, var_1.a.x), vec3<bool>(arg_0.b.x, true, false))), true));
    return select(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u)), vec3<u32>(var_1.b.x, 4294967295u, var_1.b.x), arg_0.b), firstTrailingBit(firstTrailingBit(var_1.b.ywx))), min(var_1.b.zyx, var_1.b.xyw)), 1u, !(!var_1.a.x && var_4) && true);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(vec3<i32>(8299i << (arg_0.a % 32u), 1i, ~u_input.b) >> (vec3<u32>(~abs(18981u), _wgslsmith_mod_u32(func_2(Struct_3(-2147483647i, vec3<bool>(true, false, false), Struct_1(63091u), global0[_wgslsmith_index_u32(0u, 3u)], 41175u), vec2<f32>(623f, 280f), Struct_4(-1i)), 63002u | arg_0.a), 4294967295u) % vec3<u32>(32u)));
    global1 = array<Struct_2, 31>();
    var var_1 = func_2(Struct_3(1i, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), arg_0, global0[_wgslsmith_index_u32(~(0u | arg_0.a) & 0u, 3u)], countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(46122u, 60924u, arg_0.a), vec3<u32>(arg_0.a, 1u, arg_0.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1072f * -989f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(950f, -225f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(552f, -681f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, -2227f))))), Struct_4(abs(~var_0.x) >> (~arg_0.a % 32u)));
    var var_2 = Struct_4(80171i);
    let var_3 = select(reverseBits(u_input.b >> (1876u % 32u)), _wgslsmith_mod_i32(i32(-1i) * -var_2.a, -2147483647i), select(true, (firstLeadingBit(u_input.a) ^ -2147483647i) == _wgslsmith_add_i32(var_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(20701i, -13512i, u_input.a, 0i), vec4<i32>(1i, var_0.x, 0i, -2147483647i))), select(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), true, true)));
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = array<vec2<i32>, 3>();
    global1 = array<Struct_2, 31>();
    let var_0 = global1[_wgslsmith_index_u32(arg_3.a, 31u)];
    let var_1 = 30619i;
    var var_2 = 4294967295u;
    return ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(21486u, var_0.b.x, 25918u)), ~vec3<u32>(4294967295u, 14202u, arg_3.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_3.a, arg_3.a), vec3<u32>(var_0.a.a, arg_3.a, arg_3.a)) >> (vec3<u32>(arg_3.a, arg_3.a, func_2(Struct_3(2147483647i, arg_0, Struct_1(var_0.a.a), vec2<i32>(0i, 0i), 4294967295u), vec2<f32>(arg_2, 259f), Struct_4(u_input.b))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!vec3<bool>(any(vec2<bool>(true, true)), true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2063f)) * -152f)), func_1(Struct_1(4294967295u)));
    let var_1 = false;
    let var_2 = ~vec2<u32>(_wgslsmith_add_u32(0u, 22307u), ~abs(_wgslsmith_div_u32(38631u, 55148u)));
    let var_3 = -1412f;
    global0 = array<vec2<i32>, 3>();
    let var_4 = 4294967295u;
    var var_5 = Struct_3(u_input.a, vec3<bool>(!(!(false & var_1)), true, var_1), func_1(func_1(Struct_1(_wgslsmith_dot_vec2_u32(var_2, var_2)))), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, 17913i, 14194i), max(u_input.b, ~reverseBits(-2147483647i))), max(20995u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(var_4 & var_2.x, var_2.x, abs(0u)))));
    var_5 = Struct_3(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(~74204u << (_wgslsmith_add_u32(15449u, var_4) % 32u), 3u)]) ^ countOneBits(-1i), var_5.b, func_1(Struct_1(~(var_5.e & 0u))), countOneBits(global0[_wgslsmith_index_u32(64982u, 3u)]), ~var_5.e);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~vec3<u32>(1u, var_2.x, 0u))) | firstTrailingBit(select(~vec3<u32>(var_4, 22841u, 83821u), ~vec3<u32>(19847u, 0u, 4294967295u), var_5.b.x | var_1)));
}

