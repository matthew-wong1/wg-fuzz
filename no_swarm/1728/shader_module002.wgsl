struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec3<u32>(4294967295u, 1u, 21589u), vec3<i32>(31784i, 2147483647i, -29042i)), Struct_2(vec3<u32>(37824u, 35745u, 25217u), vec3<i32>(22069i, 0i, 0i)), Struct_2(vec3<u32>(31179u, 49934u, 0u), vec3<i32>(-34261i, 0i, 39474i)), Struct_2(vec3<u32>(91917u, 4294967295u, 41674u), vec3<i32>(2147483647i, -20006i, 0i)), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<i32>(-1i, -1i, -50853i)), Struct_2(vec3<u32>(0u, 4177u, 1u), vec3<i32>(1810i, -20541i, -12200i)), Struct_2(vec3<u32>(12818u, 18679u, 0u), vec3<i32>(16696i, 51197i, 0i)), Struct_2(vec3<u32>(59265u, 4294967295u, 1u), vec3<i32>(0i, -9069i, -38944i)), Struct_2(vec3<u32>(1u, 18460u, 46846u), vec3<i32>(8080i, 15683i, 2147483647i)), Struct_2(vec3<u32>(86731u, 74730u, 1u), vec3<i32>(-1i, i32(-2147483648), 15005i)), Struct_2(vec3<u32>(0u, 58083u, 96590u), vec3<i32>(-12929i, -30735i, -12789i)), Struct_2(vec3<u32>(4294967295u, 4929u, 32375u), vec3<i32>(18733i, -13299i, -11822i)), Struct_2(vec3<u32>(30720u, 1u, 13780u), vec3<i32>(1i, -13310i, i32(-2147483648))), Struct_2(vec3<u32>(39352u, 25180u, 21116u), vec3<i32>(2147483647i, -11506i, 2147483647i)), Struct_2(vec3<u32>(3076u, 122846u, 88738u), vec3<i32>(31363i, 1267i, -33011i)), Struct_2(vec3<u32>(0u, 1u, 0u), vec3<i32>(2147483647i, -18013i, 8408i)), Struct_2(vec3<u32>(1u, 13588u, 28778u), vec3<i32>(73352i, 4683i, 1i)), Struct_2(vec3<u32>(16989u, 1u, 33623u), vec3<i32>(i32(-2147483648), 19913i, 1i)), Struct_2(vec3<u32>(0u, 79762u, 214u), vec3<i32>(24508i, 28172i, -55046i)), Struct_2(vec3<u32>(1u, 693u, 16006u), vec3<i32>(29911i, -1i, 923i)), Struct_2(vec3<u32>(0u, 53115u, 1u), vec3<i32>(215i, 857i, -42292i)), Struct_2(vec3<u32>(4294967295u, 10383u, 0u), vec3<i32>(17090i, 35290i, 0i)), Struct_2(vec3<u32>(37670u, 1u, 0u), vec3<i32>(-1i, 13618i, 37489i)), Struct_2(vec3<u32>(0u, 1u, 1u), vec3<i32>(1i, -1i, -69790i)), Struct_2(vec3<u32>(0u, 0u, 1u), vec3<i32>(-1i, 75020i, -9768i)), Struct_2(vec3<u32>(4294967295u, 38007u, 7738u), vec3<i32>(i32(-2147483648), -26550i, 13744i)), Struct_2(vec3<u32>(10000u, 1u, 78770u), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)));

var<private> global2: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -680f)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1431f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(2344f)))));
    let var_1 = Struct_2(abs(~vec3<u32>(global2.x, global2.x & u_input.a, _wgslsmith_sub_u32(13417u, 6224u))), vec3<i32>(~(-2147483647i), i32(-1i) * -2147483647i, -(~(-2147483647i))));
    global1 = array<Struct_2, 27>();
    return _wgslsmith_f_op_f32(ceil(-268f));
}

fn func_2() -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1526f + 122f), -201f)) - -1000f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-444f)), -1797f, true))), _wgslsmith_f_op_f32(1f * -316f));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(652f, var_0.x, true))) + vec2<f32>(-1100f, _wgslsmith_f_op_f32(f32(-1f) * -1104f)));
    var var_2 = all(!vec2<bool>(all(vec4<bool>(true, false, true, true)), 1080f > var_1.x)) && true;
    var var_3 = global1[_wgslsmith_index_u32(global2.x, 27u)];
    let var_4 = Struct_3(global1[_wgslsmith_index_u32(~global2.x, 27u)], !((_wgslsmith_f_op_f32(sign(642f)) > var_1.x) == false), firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), select(vec2<u32>(var_3.a.x, u_input.b), vec2<u32>(var_3.a.x, u_input.b), false)), vec2<u32>(~u_input.b, 4294967295u))), vec2<bool>(true, true));
    return !(global2.x > ~u_input.a);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 27>();
    var var_0 = vec4<bool>(any(!vec4<bool>(all(vec4<bool>(false, true, true, true)), true, func_2(), true)), true, true, !(!any(vec4<bool>(false, false, false, true)) | true));
    var var_1 = var_0.x;
    let var_2 = i32(-1i) * -42262i;
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(min(0u, 55241u), 27u)], any(vec2<bool>(var_2 > ~var_2, -2147483647i >= select(var_2, -1i, var_0.x))), vec2<u32>(~arg_0.a.x, u_input.c.x), vec2<bool>(var_0.x, all(vec2<bool>(true, !var_0.x))));
    return Struct_1(firstLeadingBit(abs(select(vec2<i32>(var_3.a.b.x, -41960i), arg_0.b.xz, var_0.x))) | abs(select(max(vec2<i32>(var_3.a.b.x, 2147483647i), var_3.a.b.yz), _wgslsmith_mod_vec2_i32(arg_0.b.zx, vec2<i32>(0i, arg_0.b.x)), !vec2<bool>(true, var_3.b))), vec4<i32>(2147483647i, arg_0.b.x, 2147483647i, -(countOneBits(arg_0.b.x) >> ((global2.x >> (4294967295u % 32u)) % 32u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    return StorageBuffer(arg_1.a.x, vec3<u32>(~abs(~global2.x), 1u, ~firstLeadingBit(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(-_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(37261i, 1i), vec2<i32>(20145i, 18321i)), -(~vec2<i32>(56008i, 2147483647i)), select(vec2<i32>(2147483647i, 59654i), reverseBits(vec2<i32>(1i, -2730i)), false)), func_1(global1[_wgslsmith_index_u32(global2.x, 27u)]), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, u_input.a), vec2<u32>(global2.x, 1u))) & u_input.c.x, 86564u), func_1(global1[_wgslsmith_index_u32(reverseBits(0u), 27u)]));
}

