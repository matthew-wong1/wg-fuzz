struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<u32>(23300u, 15697u), vec3<u32>(34756u, 52167u, 0u), vec2<i32>(24575i, 1i), 4294967295u, i32(-2147483648)), Struct_2(vec2<u32>(12888u, 4294967295u), vec3<u32>(5651u, 100437u, 1u), vec2<i32>(i32(-2147483648), -1i), 4294967295u, 42543i), Struct_2(vec2<u32>(1u, 5448u), vec3<u32>(3735u, 31535u, 1423u), vec2<i32>(38197i, i32(-2147483648)), 58002u, -61623i), Struct_2(vec2<u32>(2970u, 21962u), vec3<u32>(0u, 8602u, 4294967295u), vec2<i32>(-1i, 0i), 683u, 20084i), Struct_2(vec2<u32>(1u, 0u), vec3<u32>(46755u, 0u, 4294967295u), vec2<i32>(2934i, -33163i), 14756u, -56619i), Struct_2(vec2<u32>(26407u, 1u), vec3<u32>(1u, 4294967295u, 47272u), vec2<i32>(i32(-2147483648), 28776i), 4294967295u, 0i), Struct_2(vec2<u32>(75821u, 21195u), vec3<u32>(1u, 4294967295u, 0u), vec2<i32>(i32(-2147483648), 80178i), 22406u, -19089i), Struct_2(vec2<u32>(25225u, 1u), vec3<u32>(34157u, 55553u, 0u), vec2<i32>(i32(-2147483648), 27608i), 0u, i32(-2147483648)), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(0u, 56485u, 4294967295u), vec2<i32>(-34103i, 7986i), 12721u, 24765i), Struct_2(vec2<u32>(4294967295u, 19412u), vec3<u32>(4294967295u, 1150u, 4294967295u), vec2<i32>(-1155i, 49416i), 30867u, 14285i), Struct_2(vec2<u32>(73340u, 1u), vec3<u32>(51914u, 43692u, 4294967295u), vec2<i32>(12611i, 2147483647i), 4294967295u, -1i), Struct_2(vec2<u32>(71011u, 16855u), vec3<u32>(0u, 13238u, 4294967295u), vec2<i32>(31136i, 0i), 2585u, i32(-2147483648)), Struct_2(vec2<u32>(0u, 0u), vec3<u32>(4294967295u, 1u, 28823u), vec2<i32>(6345i, -72929i), 42156u, 35634i), Struct_2(vec2<u32>(60318u, 1u), vec3<u32>(4294967295u, 95697u, 20498u), vec2<i32>(i32(-2147483648), 12403i), 45379u, 2381i), Struct_2(vec2<u32>(17527u, 46480u), vec3<u32>(4294967295u, 4294967295u, 0u), vec2<i32>(-1i, -1819i), 4294967295u, 38775i), Struct_2(vec2<u32>(1u, 1u), vec3<u32>(29490u, 59868u, 0u), vec2<i32>(-3720i, 2147483647i), 49200u, 13556i), Struct_2(vec2<u32>(9388u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 2773u), vec2<i32>(2147483647i, 1i), 1u, -1i), Struct_2(vec2<u32>(14464u, 7097u), vec3<u32>(0u, 4294967295u, 14337u), vec2<i32>(-9471i, i32(-2147483648)), 94120u, 1i), Struct_2(vec2<u32>(14403u, 57497u), vec3<u32>(19720u, 1u, 15657u), vec2<i32>(17153i, -1483i), 34866u, 0i), Struct_2(vec2<u32>(4294967295u, 15319u), vec3<u32>(54268u, 0u, 20477u), vec2<i32>(2147483647i, 2147483647i), 4294967295u, 1i), Struct_2(vec2<u32>(55489u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<i32>(2147483647i, 4369i), 1u, 7247i), Struct_2(vec2<u32>(1u, 0u), vec3<u32>(66342u, 1u, 37506u), vec2<i32>(20578i, -10756i), 4294967295u, 31222i), Struct_2(vec2<u32>(0u, 34273u), vec3<u32>(4294967295u, 7996u, 0u), vec2<i32>(-1i, -23161i), 0u, -30554i), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(54350u, 41988u, 0u), vec2<i32>(-1i, 1i), 0u, -69849i), Struct_2(vec2<u32>(12679u, 0u), vec3<u32>(65138u, 60564u, 4294967295u), vec2<i32>(-1107i, 16968i), 4294967295u, 18017i), Struct_2(vec2<u32>(19160u, 60968u), vec3<u32>(5504u, 9148u, 1u), vec2<i32>(1i, -1389i), 29701u, -25987i), Struct_2(vec2<u32>(4294967295u, 90074u), vec3<u32>(16847u, 0u, 1u), vec2<i32>(-63254i, 2147483647i), 5755u, -1i), Struct_2(vec2<u32>(55188u, 0u), vec3<u32>(1571u, 61814u, 1u), vec2<i32>(1i, -1i), 0u, 2147483647i));

var<private> global2: vec3<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(arg_2.b * 228f);
    global2 = _wgslsmith_mult_vec3_u32(min(reverseBits(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 0u, global2.x)), vec3<u32>(1u, 2567u, arg_0.b))), max(firstLeadingBit(u_input.d.wxx), vec3<u32>(1u, arg_0.b, global2.x)) ^ ~u_input.d.xzx), reverseBits(abs(u_input.b.wyw)));
    global1 = array<Struct_2, 28>();
    var var_1 = 542f;
    let var_2 = ~(~(~firstTrailingBit(u_input.d.zzw)));
    return _wgslsmith_mult_vec2_i32(arg_0.e, vec2<i32>(6048i, -1i));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<i32> {
    global1 = array<Struct_2, 28>();
    var var_0 = arg_0;
    var_0 = Struct_1(4294967295u, ~(~(~(~arg_0.a))), var_0.d.x, arg_0.d, _wgslsmith_mult_vec2_i32(-vec2<i32>(abs(arg_0.e.x), _wgslsmith_dot_vec2_i32(var_0.e, arg_1)), vec2<i32>(i32(-1i) * -3323i, _wgslsmith_dot_vec2_i32(-var_0.e, arg_0.e))));
    let var_1 = !global0[_wgslsmith_index_u32(~(~arg_0.b), 25u)];
    global0 = array<bool, 25>();
    return _wgslsmith_sub_vec2_i32(-(~func_3(Struct_1(u_input.c, 8786u, 461f, arg_0.d, arg_0.e), !vec2<bool>(global0[_wgslsmith_index_u32(63320u, 25u)], false), Struct_3(u_input.a, arg_0.c))), var_0.e);
}

fn func_2() -> vec3<u32> {
    let var_0 = ~global2.x;
    var var_1 = Struct_1(44280u, global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -704f))), 1929f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-580f, 521f), vec2<f32>(960f, 1089f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, -226f)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 22587u), 25u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(187f, -793f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(596f, 1016f))))), func_4(Struct_1(6585u, ~global2.x, 662f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(225f, -661f) * vec2<f32>(324f, -466f))), _wgslsmith_div_vec2_i32(~vec2<i32>(-3661i, -2147483647i), func_3(Struct_1(var_0, 32085u, 102f, vec2<f32>(1302f, 1950f), vec2<i32>(29850i, -44932i)), vec2<bool>(global0[_wgslsmith_index_u32(5613u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), Struct_3(global2.x, 400f)))), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(26952i, 38832i, -1i, 1i), vec4<i32>(-1i, -1i, 2558i, 1i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2889i), vec2<i32>(0i, -30643i)))));
    global2 = max(vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(~var_0, 21711u << (var_0 % 32u))), _wgslsmith_dot_vec3_u32(max(select(u_input.d.xyw, vec3<u32>(var_1.a, 0u, 1u), global0[_wgslsmith_index_u32(u_input.e, 25u)]), u_input.d.xwx), _wgslsmith_sub_vec3_u32(vec3<u32>(4708u, var_0, u_input.b.x), u_input.b.xxy) | vec3<u32>(0u, var_0, 4294967295u)), 13564u), ~u_input.b.zyx);
    var_1 = Struct_1(~(~var_1.a), 0u, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-var_1.c)), vec2<f32>(889f, -116f), false)) + _wgslsmith_div_vec2_f32(var_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d * var_1.d)))), -countOneBits(var_1.e ^ (var_1.e << (vec2<u32>(25544u, 4294967295u) % vec2<u32>(32u)))));
    global1 = array<Struct_2, 28>();
    return ~(~vec3<u32>(var_1.b, ~78999u, _wgslsmith_div_u32(var_0, var_0) & (10431u << (global2.x % 32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> vec2<f32> {
    global2 = func_2();
    var var_0 = !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true);
    let var_1 = arg_0;
    global1 = array<Struct_2, 28>();
    let var_2 = arg_1.x;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, arg_0.d.x)))) * _wgslsmith_f_op_vec2_f32(abs(arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 28>();
    global1 = array<Struct_2, 28>();
    var var_0 = !all(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(max(18433u, 28176u), 25u)], true));
    var var_1 = global0[_wgslsmith_index_u32(~1u, 25u)];
    let var_2 = 396f;
    global2 = reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~24429u, 0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.d)) | vec3<u32>(u_input.c, select(global2.x, 5925u, false), 38005u), u_input.d.wwx << (firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.d.wyz, u_input.b.yww)) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_2), vec2<f32>(-1000f, -1131f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(813f, 871f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(u_input.a, global2.x, var_2, vec2<f32>(var_2, var_2), vec2<i32>(-2147483647i, -1i)), vec2<i32>(19862i, -7950i), Struct_3(u_input.c, var_2)))))) * vec2<f32>(var_2, -1553f));
    var var_4 = select(vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], any(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(global2.x, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(76924u, 25u)], false), vec2<bool>(false, false)))), select(vec3<bool>(any(!vec2<bool>(true, global0[_wgslsmith_index_u32(global2.x, 25u)])), true, global0[_wgslsmith_index_u32(global2.x, 25u)]), select(select(vec3<bool>(false, true, false), select(vec3<bool>(global0[_wgslsmith_index_u32(45635u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], true), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(global2.x, 25u)]), global2.x > 37644u), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(global2.x, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), true), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(28254u, 25u)]), all(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)], true, false))), true && global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 25u)]), any(vec4<bool>(global0[_wgslsmith_index_u32(53646u, 25u)] & global0[_wgslsmith_index_u32(global2.x, 25u)], all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], false)), !global0[_wgslsmith_index_u32(u_input.d.x, 25u)], all(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]))))), select(!select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)], false), vec3<bool>(global0[_wgslsmith_index_u32(5483u, 25u)], global0[_wgslsmith_index_u32(47650u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), !vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)], false)), vec3<bool>(true, false, true), any(vec2<bool>(select(false, false, global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), global0[_wgslsmith_index_u32(~global2.x, 25u)]))));
    var var_5 = Struct_3(u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -575f));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~_wgslsmith_mult_i32(0i, -1i)), u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-686f)), _wgslsmith_f_op_f32(ceil(var_5.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_5.b))) - var_2), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(518f, var_5.b, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_5.b) - vec3<f32>(var_2, -124f, var_5.b)), false)))))));
}

