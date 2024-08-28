struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec3<f32> = vec3<f32>(-397f, 1000f, 214f);

var<private> global2: array<i32, 6>;

var<private> global3: array<f32, 2>;

var<private> global4: array<vec2<i32>, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = 20774u;
    var var_1 = global1.zx;
    var var_2 = Struct_1(~vec3<u32>(~(~74905u), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 77314u), ~var_0), 1u), reverseBits(-(~u_input.b)), !(all(vec4<bool>(true, false, false, false)) && any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), var_0);
    let var_3 = var_0;
    var var_4 = vec4<i32>(0i << (var_2.d % 32u), var_2.b.x, u_input.b.x, 5057i);
    return abs(vec4<u32>(var_3, ~(~(var_3 << (var_2.a.x % 32u))), 7188u, 1u));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(vec3<u32>(~(78976u << (0u % 32u)) & (1u >> (_wgslsmith_clamp_u32(4247u, 105054u, 4294967295u) % 32u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 125513u), vec2<u32>(4294967295u, 1u))) | 78695u, _wgslsmith_div_u32(1u, firstTrailingBit(~71474u))), u_input.b, true, min(~_wgslsmith_dot_vec4_u32(vec4<u32>(57826u, 28928u, 0u, 1u), vec4<u32>(29406u, 0u, 1u, 50310u)) ^ 1u, 0u));
    var var_1 = Struct_1(var_0.a, ~vec3<i32>(countOneBits(-2147483647i), -2147483647i, -2147483647i) << (~var_0.a % vec3<u32>(32u)), false, 21888u);
    let var_2 = Struct_1(var_1.a, var_1.b, true, var_1.a.x);
    let var_3 = all(vec2<bool>((firstTrailingBit(var_0.a.x) == var_1.d) && true, true));
    global2 = array<i32, 6>();
    return vec2<bool>(all(select(select(!vec2<bool>(false, var_1.c), select(vec2<bool>(false, false), vec2<bool>(var_1.c, var_1.c), false), vec2<bool>(var_3, true)), select(vec2<bool>(var_2.c, true), vec2<bool>(var_1.c, true), !var_1.c), var_3)), any(vec3<bool>(all(vec4<bool>(var_1.c, false, var_3, var_1.c)), select(var_2.c, var_1.c, !var_0.c), var_1.c)));
}

fn func_2() -> Struct_1 {
    global2 = array<i32, 6>();
    var var_0 = select(vec2<bool>(true, true), select(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1187f, global1.x) * _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(33132u, 2u)], 428f, global1.x), vec3<f32>(-111f, 1351f, global3[_wgslsmith_index_u32(11260u, 2u)])))), vec2<bool>(true, true), true), false);
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(ceil(-945f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -315f)))), var_0.x | !(!var_0.x | false));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1692f, -341f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, -351f, global3[_wgslsmith_index_u32(44932u, 2u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(463f, _wgslsmith_f_op_f32(-global1.x), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(696f, global3[_wgslsmith_index_u32(56051u, 2u)], global3[_wgslsmith_index_u32(67570u, 2u)]))))))));
    global4 = array<vec2<i32>, 18>();
    return global0[_wgslsmith_index_u32(~(~44229u), 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(~vec2<u32>(4294967295u, 0u))), countOneBits(arg_0.a.yz));
    let var_1 = 4294967295u;
    var var_2 = true;
    global0 = array<Struct_1, 32>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(28323u, 4294967295u, 1u, 11884u), vec4<u32>(4294967295u, 184549u, 4294967295u, 50487u))), max(func_1(vec2<i32>(-66382i, -1i)), ~vec4<u32>(4294967295u, 1u, 34214u, 18202u))), 6u)] >> (select(24931u, func_4(func_2(), ~abs(13590u)), select(true, true, !func_3(vec3<f32>(622f, global3[_wgslsmith_index_u32(16535u, 2u)], global1.x)).x)) % 32u);
    var var_1 = func_2();
    global0 = array<Struct_1, 32>();
    global4 = array<vec2<i32>, 18>();
    global0 = array<Struct_1, 32>();
    global2 = array<i32, 6>();
    let var_2 = vec4<f32>(global3[_wgslsmith_index_u32(20105u, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f - _wgslsmith_f_op_f32(floor(-760f)))), -2600f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(2540u, 2u)]))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1350f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(-vec4<i32>(global2[_wgslsmith_index_u32(var_1.a.x, 6u)], var_1.b.x, var_0, -2147483647i)), vec4<i32>(-1i) * -abs(vec4<i32>(46936i, global2[_wgslsmith_index_u32(8160u, 6u)], 0i, global2[_wgslsmith_index_u32(43158u, 6u)]))), vec3<u32>(select(firstTrailingBit(0u), _wgslsmith_clamp_u32(var_1.a.x, _wgslsmith_sub_u32(1u, var_1.a.x), firstLeadingBit(var_1.d)), false), _wgslsmith_dot_vec4_u32(vec4<u32>(~61083u, 4294967295u, 24170u, select(var_1.d, 1u, true)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(17503u, var_1.a.x, 0u, 0u), vec4<u32>(0u, 88728u, 4294967295u, 71347u)), vec4<u32>(var_1.d, 0u, 4294967295u, 17553u))), var_1.a.x), 24456u);
}

