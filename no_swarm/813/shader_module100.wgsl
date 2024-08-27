struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<i32>(-1i, 1i, 20385i, 0i), 9361u, -1i, vec2<u32>(76918u, 11134u)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 2147483647i, 36656i), 4294967295u, -37584i, vec2<u32>(80619u, 50367u)), Struct_1(vec4<i32>(-54310i, 45993i, 1344i, 2147483647i), 91560u, 2147483647i, vec2<u32>(52042u, 1u)), Struct_1(vec4<i32>(1i, -1i, i32(-2147483648), 65850i), 0u, 8925i, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<i32>(i32(-2147483648), -48324i, 26196i, 0i), 4294967295u, i32(-2147483648), vec2<u32>(1u, 52665u)), Struct_1(vec4<i32>(39608i, -3567i, -1i, 2147483647i), 1u, 2147483647i, vec2<u32>(4294967295u, 31695u)), Struct_1(vec4<i32>(-18527i, -44698i, 8621i, -1i), 7702u, -69276i, vec2<u32>(34517u, 4294967295u)), Struct_1(vec4<i32>(25565i, -15455i, -1i, -1i), 44754u, 0i, vec2<u32>(4861u, 18588u)), Struct_1(vec4<i32>(i32(-2147483648), -156i, 1i, 2147483647i), 1u, -9303i, vec2<u32>(1u, 14672u)), Struct_1(vec4<i32>(0i, 45370i, 0i, 19383i), 20794u, -13513i, vec2<u32>(14881u, 8247u)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 14855i, 31421i), 9028u, 1i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<i32>(0i, 0i, -28854i, 22197i), 69573u, 0i, vec2<u32>(4294967295u, 31u)), Struct_1(vec4<i32>(-35305i, 14855i, i32(-2147483648), 20923i), 6778u, 0i, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<i32>(39519i, 1i, -27582i, -44301i), 11511u, -2488i, vec2<u32>(30628u, 16852u)), Struct_1(vec4<i32>(-97741i, i32(-2147483648), 22608i, 3113i), 17333u, 4699i, vec2<u32>(3124u, 4294967295u)), Struct_1(vec4<i32>(1i, -1990i, -12157i, 35221i), 25151u, 1616i, vec2<u32>(17923u, 0u)), Struct_1(vec4<i32>(2147483647i, -37352i, 1i, 43472i), 23915u, 1i, vec2<u32>(28784u, 74504u)), Struct_1(vec4<i32>(2147483647i, 1i, 0i, -20354i), 4294967295u, -1i, vec2<u32>(28280u, 0u)), Struct_1(vec4<i32>(11702i, -35776i, -9471i, 2147483647i), 71027u, 1i, vec2<u32>(4294967295u, 0u)), Struct_1(vec4<i32>(1198i, 5723i, 0i, 0i), 1733u, -1i, vec2<u32>(7138u, 88827u)), Struct_1(vec4<i32>(24744i, 2147483647i, 14595i, 1i), 4294967295u, i32(-2147483648), vec2<u32>(0u, 75311u)), Struct_1(vec4<i32>(0i, 6294i, 17085i, 26370i), 1u, -10116i, vec2<u32>(65912u, 4294967295u)), Struct_1(vec4<i32>(13073i, 13711i, -1i, 62232i), 1u, -11002i, vec2<u32>(25928u, 30350u)), Struct_1(vec4<i32>(30468i, -20296i, 0i, 0i), 4294967295u, i32(-2147483648), vec2<u32>(1u, 53712u)), Struct_1(vec4<i32>(2147483647i, 0i, 0i, i32(-2147483648)), 0u, -3126i, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), 44222i, 1i, 2147483647i), 44652u, 1087i, vec2<u32>(93330u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), -28448i, i32(-2147483648), 0i), 59431u, 1i, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<i32>(-752i, i32(-2147483648), 1i, 1i), 65172u, -29816i, vec2<u32>(25446u, 21297u)), Struct_1(vec4<i32>(-23696i, 2147483647i, 2147483647i, 2147483647i), 34511u, 2147483647i, vec2<u32>(1u, 0u)), Struct_1(vec4<i32>(0i, 0i, 10468i, 5900i), 1u, 1i, vec2<u32>(50882u, 14337u)), Struct_1(vec4<i32>(627i, i32(-2147483648), -28525i, -15811i), 4294967295u, 1i, vec2<u32>(0u, 34231u)), Struct_1(vec4<i32>(1i, 38548i, -34611i, -4260i), 13393u, i32(-2147483648), vec2<u32>(4294967295u, 0u)));

var<private> global3: array<bool, 24> = array<bool, 24>(false, false, true, true, true, false, true, false, false, false, false, true, false, true, false, true, false, true, false, false, true, true, false, true);

var<private> global4: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1226f)), _wgslsmith_f_op_f32(floor(-1308f)), _wgslsmith_f_op_f32(1130f + 455f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, -1863f, 167f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1502f), _wgslsmith_f_op_f32(min(2036f, -631f))), -754f, -1757f), arg_0.wyy)));
    let var_1 = abs(abs(-32105i));
    var var_2 = all(select(vec3<bool>((var_0.x > 336f) & false, arg_3.x, false), vec3<bool>(true | !global3[_wgslsmith_index_u32(global4.d.x, 24u)], !all(arg_0.yxz), global3[_wgslsmith_index_u32(min(arg_2.x, 4294967295u), 24u)]), vec3<bool>(true, false, arg_3.x)));
    let var_3 = var_0.x;
    return vec3<bool>(!(!arg_3.x), true, arg_3.x);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec4<u32> {
    var var_0 = true || global3[_wgslsmith_index_u32(arg_3, 24u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(arg_2 >> (~arg_2 % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 0u, u_input.b, global4.b), ~arg_2), !(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], false, global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(global4.d.x, 24u)]))), arg_2 & _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 33312u, arg_3, u_input.b), ~arg_2)), ~arg_2), 13u)];
    var var_2 = vec3<i32>(-2147483647i, 28160i & (~(~arg_0.x) << (38278u % 32u)), 1i);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~min(~u_input.b, var_1.b), arg_2.x), 32u)];
    var var_4 = _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, _wgslsmith_add_u32(0u, 9672u), ~1u, 0u), select(~arg_2, ~arg_2, select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(68218u, 24u)], global3[_wgslsmith_index_u32(27920u, 24u)], global3[_wgslsmith_index_u32(arg_3, 24u)]), vec4<bool>(global3[_wgslsmith_index_u32(global4.d.x, 24u)], true, global3[_wgslsmith_index_u32(var_3.d.x, 24u)], global3[_wgslsmith_index_u32(39052u, 24u)]), true))), arg_2);
    return min(vec4<u32>(66776u >> (~var_4.x % 32u), ~(1u << (min(global4.d.x, 69185u) % 32u)), select(arg_1.b, max(~arg_3, ~60211u), true), 78490u), vec4<u32>(46069u, ~var_1.d.x, ~(~reverseBits(34709u)), arg_1.b));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = !(!vec2<bool>(all(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], true, global3[_wgslsmith_index_u32(67307u, 24u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(global3[_wgslsmith_index_u32(global4.d.x, 24u)], global3[_wgslsmith_index_u32(arg_0.x, 24u)], global3[_wgslsmith_index_u32(global4.b, 24u)]))), any(func_2(vec4<bool>(true, true, false, false), global4.c, vec4<u32>(global4.b, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(arg_1.b, 24u)])))));
    var var_1 = reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(global4.a.x, arg_1.c), u_input.a));
    var var_2 = !select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 24u)], !var_0.x, var_0.x || var_0.x, all(select(vec2<bool>(false, true), vec2<bool>(var_0.x, global3[_wgslsmith_index_u32(6525u, 24u)]), global3[_wgslsmith_index_u32(arg_1.d.x, 24u)]))), select(vec4<bool>(var_0.x, true, any(vec4<bool>(var_0.x, global3[_wgslsmith_index_u32(arg_1.b, 24u)], var_0.x, global3[_wgslsmith_index_u32(arg_0.x, 24u)])), global3[_wgslsmith_index_u32(3329u >> (global4.b % 32u), 24u)]), vec4<bool>(all(vec4<bool>(false, var_0.x, true, var_0.x)), any(vec3<bool>(false, var_0.x, global3[_wgslsmith_index_u32(u_input.b, 24u)])), !var_0.x, any(vec2<bool>(false, true))), select(vec4<bool>(var_0.x, global3[_wgslsmith_index_u32(global4.d.x, 24u)], global3[_wgslsmith_index_u32(0u, 24u)], var_0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x), false)), vec4<bool>(var_0.x, var_0.x & all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], true, true, global3[_wgslsmith_index_u32(1u, 24u)])), true, false));
    let var_3 = ~4294967295u > _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(61847u, arg_0.x, 1u, 0u), ~vec4<u32>(arg_0.x, global4.d.x, 0u, global4.b)) >> ((countOneBits(vec4<u32>(global4.b, arg_1.b, arg_0.x, arg_0.x)) ^ firstLeadingBit(vec4<u32>(global4.d.x, arg_1.b, 27940u, 4294967295u))) % vec4<u32>(32u)), func_3(abs(-vec3<i32>(12950i, -22626i, -2147483647i)), global2[_wgslsmith_index_u32(~(~0u), 32u)], ~vec4<u32>(4294967295u, arg_1.d.x, 58067u, 16385u), ~arg_1.b));
    var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f - -233f) - 389f), 1f, false)) > -2255f, true, !(any(var_2.xx) || all(select(vec4<bool>(false, var_3, false, global3[_wgslsmith_index_u32(u_input.b, 24u)]), vec4<bool>(global3[_wgslsmith_index_u32(94165u, 24u)], var_3, false, false), false))));
    return func_2(select(!select(vec4<bool>(var_3, var_2.x, true, false), select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1.b, 24u)], true, true), vec4<bool>(false, true, var_3, var_3), global3[_wgslsmith_index_u32(19328u, 24u)]), vec4<bool>(true, false, var_2.x, global3[_wgslsmith_index_u32(arg_1.b, 24u)])), select(select(vec4<bool>(global3[_wgslsmith_index_u32(16434u, 24u)], false, global3[_wgslsmith_index_u32(arg_0.x, 24u)], false), select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, var_0.x, var_2.x, var_2.x), vec4<bool>(global3[_wgslsmith_index_u32(94278u, 24u)], var_2.x, var_2.x, global3[_wgslsmith_index_u32(100959u, 24u)])), var_0.x), vec4<bool>(false, true, true, any(vec3<bool>(var_0.x, var_3, var_3))), vec4<bool>(var_3, var_3 | var_2.x, true, false)), !(!vec4<bool>(var_2.x, var_3, var_3, true))), countOneBits(-(u_input.a << (u_input.b % 32u))), ~firstLeadingBit(~vec4<u32>(18015u, u_input.b, 17939u, 9830u)), !vec4<bool>(_wgslsmith_f_op_f32(round(847f)) <= -152f, true, func_2(!vec4<bool>(false, true, true, var_2.x), 1i, ~vec4<u32>(global4.d.x, 26449u, u_input.b, 17288u), vec4<bool>(true, true, true, true)).x, var_3));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = select(!(!func_1(global4.d, Struct_1(global4.a, 1u, 2147483647i, global4.d))), select(!select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], false, false), vec3<bool>(false, global3[_wgslsmith_index_u32(60792u, 24u)], true), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(42692u, 24u)], false)), vec3<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false, false), true), select(!(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(28463u, 24u)], true)), vec3<bool>(func_1(global4.d, Struct_1(u_input.c, 35861u, u_input.c.x, global4.d)).x, global3[_wgslsmith_index_u32(4294967295u, 24u)] & global3[_wgslsmith_index_u32(31186u, 24u)], all(vec4<bool>(global3[_wgslsmith_index_u32(61811u, 24u)], global3[_wgslsmith_index_u32(global4.d.x, 24u)], global3[_wgslsmith_index_u32(global4.b, 24u)], global3[_wgslsmith_index_u32(u_input.b, 24u)]))), vec3<bool>(!global3[_wgslsmith_index_u32(u_input.b, 24u)], !global3[_wgslsmith_index_u32(0u, 24u)], true)), !func_2(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], false, false, false), -global4.a.x, vec4<u32>(4294967295u, global4.d.x, 1u, global4.d.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], false, global3[_wgslsmith_index_u32(global4.b, 24u)], false))), vec3<bool>(true, true, any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], false, false, false)) | (global3[_wgslsmith_index_u32(1u, 24u)] & !global3[_wgslsmith_index_u32(0u, 24u)])));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u >> (_wgslsmith_mod_u32(global4.b, 1u) % 32u), u_input.b, abs(global4.b)), 24u)];
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-733f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-495f)), _wgslsmith_f_op_f32(trunc(-420f))))), _wgslsmith_f_op_f32(f32(-1f) * -1296f));
    global4 = global0[_wgslsmith_index_u32(func_3(global4.a.yzz, Struct_1(~firstTrailingBit(u_input.c ^ u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.b, ~global4.b, _wgslsmith_div_u32(u_input.b, u_input.b)), ~abs(vec3<u32>(4294967295u, global4.d.x, 48408u))), _wgslsmith_clamp_i32(1i, global4.a.x, firstTrailingBit(min(global4.a.x, 28081i))), func_3(global4.a.wyz, Struct_1(~global4.a, global4.d.x, -1i & u_input.a, abs(global4.d)), (vec4<u32>(u_input.b, 1u, u_input.b, 0u) ^ vec4<u32>(1u, u_input.b, 34303u, 50982u)) | firstTrailingBit(vec4<u32>(u_input.b, global4.b, 0u, 66904u)), _wgslsmith_add_u32(u_input.b, countOneBits(global4.b))).zx), vec4<u32>(countOneBits(u_input.b), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~103057u, ~u_input.b), ~14947u, select(_wgslsmith_clamp_u32(0u, global4.d.x, 41275u), _wgslsmith_sub_u32(u_input.b, u_input.b), all(vec2<bool>(false, false)))), global4.b, global4.d.x), ~1u).x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(~global4.d.x);
}

