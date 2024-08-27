struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(263f, 522f, 1181f, -1000f);

var<private> global1: array<u32, 19> = array<u32, 19>(4294967295u, 4294967295u, 1u, 105u, 0u, 1u, 14783u, 29242u, 48726u, 35125u, 40157u, 12381u, 0u, 22214u, 85536u, 4294967295u, 22449u, 96636u, 35431u);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(352f, 1705f, -1719f), vec4<f32>(-777f, 549f, -646f, 795f), vec3<bool>(false, true, false), vec4<u32>(0u, 4294967295u, 6149u, 1u), 93910u);

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(216f, -1147f, -708f), vec4<f32>(-1000f, -247f, 1000f, 352f), vec3<bool>(false, false, true), vec4<u32>(4294967295u, 11233u, 15442u, 36055u), 4294967295u), Struct_1(vec3<f32>(543f, 487f, 1256f), vec4<f32>(-114f, -147f, -184f, -1607f), vec3<bool>(true, false, true), vec4<u32>(0u, 0u, 4294967295u, 0u), 56113u), Struct_1(vec3<f32>(-448f, 673f, -317f), vec4<f32>(647f, -447f, 591f, -745f), vec3<bool>(false, false, true), vec4<u32>(43686u, 16452u, 4294967295u, 0u), 1u), Struct_1(vec3<f32>(-1239f, 315f, 811f), vec4<f32>(-1000f, 1580f, 1000f, 620f), vec3<bool>(true, true, true), vec4<u32>(4294967295u, 50418u, 4294967295u, 60294u), 56558u), Struct_1(vec3<f32>(-871f, -1144f, -1000f), vec4<f32>(406f, 1056f, 1182f, -410f), vec3<bool>(false, false, true), vec4<u32>(1u, 47078u, 1u, 4294967295u), 1u), Struct_1(vec3<f32>(873f, 1000f, 590f), vec4<f32>(-963f, 1243f, -298f, -2432f), vec3<bool>(false, false, false), vec4<u32>(2394u, 15736u, 29735u, 4294967295u), 0u), Struct_1(vec3<f32>(2092f, -2058f, 524f), vec4<f32>(-335f, 476f, -1000f, -336f), vec3<bool>(false, false, true), vec4<u32>(5072u, 20573u, 1u, 21898u), 16463u), Struct_1(vec3<f32>(1620f, -681f, -1921f), vec4<f32>(1081f, 983f, -730f, -1515f), vec3<bool>(false, true, false), vec4<u32>(1u, 1u, 0u, 2962u), 1u), Struct_1(vec3<f32>(255f, 1179f, -218f), vec4<f32>(476f, 1096f, -336f, -133f), vec3<bool>(true, false, false), vec4<u32>(39026u, 12530u, 0u, 41241u), 4294967295u), Struct_1(vec3<f32>(764f, 630f, 1422f), vec4<f32>(-2316f, -1621f, -596f, 1200f), vec3<bool>(false, true, true), vec4<u32>(1u, 38771u, 4294967295u, 29760u), 33762u), Struct_1(vec3<f32>(-626f, -1785f, 352f), vec4<f32>(-353f, -461f, -1296f, 447f), vec3<bool>(false, true, true), vec4<u32>(4294967295u, 3998u, 70030u, 83756u), 1u), Struct_1(vec3<f32>(-366f, 141f, 1014f), vec4<f32>(536f, -181f, -680f, 918f), vec3<bool>(true, false, false), vec4<u32>(46401u, 4431u, 0u, 4294967295u), 4294967295u), Struct_1(vec3<f32>(900f, 618f, -1062f), vec4<f32>(-1925f, -530f, -802f, -324f), vec3<bool>(true, false, true), vec4<u32>(35790u, 0u, 4294967295u, 4294967295u), 21875u), Struct_1(vec3<f32>(402f, -2105f, 1000f), vec4<f32>(-1140f, 1000f, -518f, 731f), vec3<bool>(false, true, false), vec4<u32>(0u, 29887u, 64835u, 4294967295u), 42004u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global3 = array<Struct_1, 27>();
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-170f)) + _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1492f, _wgslsmith_f_op_f32(global0.x + global2.a.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global2.a.x, -284f, global2.c.x)), _wgslsmith_f_op_f32(sign(-1265f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f) - global2.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -467f), -475f))) - vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(trunc(global0.x)), global0.x, _wgslsmith_f_op_f32(-global2.a.x))), vec3<bool>(global2.c.x, !global2.c.x, all(global2.c.xz)), vec4<u32>(33741u, ~global1[_wgslsmith_index_u32(~34930u, 19u)], _wgslsmith_mod_u32(global2.e, global1[_wgslsmith_index_u32(global2.d.x, 19u)]), 37650u), reverseBits(u_input.e));
    var var_0 = global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 14u)];
    return var_0.b.x;
}

fn func_2(arg_0: i32) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global2.b - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1040f, global2.b.x, -634f, global2.b.x))))))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - _wgslsmith_f_op_f32(-1267f + global2.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1475f)))) + global0.xzx), global2.b, !(!global2.c), global2.d, 39863u);
    let var_1 = var_0.a.x;
    global1 = array<u32, 19>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(600f, global0.x), var_0.a.x, global2.b.x))) + global0.yww), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), 743f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + global2.a.x) * _wgslsmith_f_op_f32(-var_0.a.x)), 538f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, global2.b.x, -1000f), global2.a)))))), select(global2.c, global2.c, select(select(global2.c, !var_0.c, var_0.c), !var_0.c, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~(u_input.a << (4294967295u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.d.x, global2.d.x, 23575u), vec3<u32>(4294967295u, var_0.d.x, 37609u)), max(18767u, global1[_wgslsmith_index_u32(u_input.e, 19u)]), firstTrailingBit(var_0.e << (global2.d.x % 32u))), max(u_input.d & var_0.d, var_0.d), ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 19u)], firstTrailingBit(4294967295u), 39244u, 0u)), ~firstTrailingBit(_wgslsmith_div_u32(global2.e << (global2.d.x % 32u), select(var_0.e, global1[_wgslsmith_index_u32(global2.d.x, 19u)], var_0.c.x))));
    return vec3<u32>(~min(~firstTrailingBit(0u), 1u), 1u, 4294967295u);
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    let var_0 = global2.c.xz;
    var var_1 = global0.yxw;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, u_input.d.wxy), 14u)];
    var_1 = global0.yzw;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.b.xxz)), _wgslsmith_f_op_vec3_f32(var_2.b.yzz - global2.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-125f, var_1.x, global0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(583f, global0.x, 192f))) * vec3<f32>(var_2.b.x, -1195f, 1330f)))));
    return 1388f;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = vec4<f32>(945f, _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_2(-31698i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.x)))), true))));
    let var_1 = true;
    let var_2 = vec3<i32>(-30776i, _wgslsmith_mod_i32(2147483647i, _wgslsmith_mod_i32(15051i, -2147483647i)), u_input.c) << (min(vec3<u32>(global2.d.x, firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 19u)]), ~u_input.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(global1[_wgslsmith_index_u32(arg_0.d.x, 19u)]), func_2(u_input.c).x, arg_0.d.x), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, arg_0.e, global2.d.x)), countOneBits(vec3<u32>(4294967295u, global2.d.x, 53859u))))) % vec3<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, global0.x, var_0.x))), arg_0.b.xzz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(global0.x - 704f), _wgslsmith_f_op_f32(var_0.x - global2.a.x)) + vec3<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(min(1384f, global2.b.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1079f, global2.b.x, 1347f, global2.b.x), _wgslsmith_f_op_vec4_f32(floor(arg_0.b)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -496f), global0.x, 1056f))))), global2.c, ~vec4<u32>(~_wgslsmith_mod_u32(1u, global2.d.x), global2.d.x, _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u, 19u)], ~arg_0.d.x), 45038u), _wgslsmith_dot_vec4_u32(~arg_0.d, ~arg_0.d));
    var var_4 = global2.b.x;
    return all(arg_0.c.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(global2.b + global2.b);
    var var_0 = vec3<bool>(!all(vec4<bool>(true, func_1(global3[_wgslsmith_index_u32(0u, 27u)], u_input.c), global2.c.x, all(vec3<bool>(global2.c.x, false, true)))), !(firstLeadingBit(global2.d.x) > func_2(i32(-1i) * -35497i).x), global2.c.x);
    global1 = array<u32, 19>();
    let var_1 = global4[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~func_2(u_input.c).x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(48393u | global1[_wgslsmith_index_u32(global2.e, 19u)]), 19u)], 19u)])), 14u)];
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global2.e >> (1u % 32u)), 14u)];
    var var_3 = ~u_input.d.x;
    let var_4 = var_2.d.yyy;
    var_3 = ~_wgslsmith_div_u32(~(~(~4294967295u)), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(u_input.c, -14832i), -26025i, 9768i | max(2147483647i, u_input.c ^ 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, countOneBits(-1i), ~u_input.c), ~vec3<i32>(14595i, u_input.c, -1i) << (global2.d.zwx % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2393f, 463f)) + vec2<f32>(-825f, var_2.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), 192f)), vec2<bool>(var_2.c.x, func_1(Struct_1(var_1.b.yxx, var_1.b, vec3<bool>(var_0.x, global2.c.x, global2.c.x), vec4<u32>(12324u, 76222u, 1u, var_1.d.x), global2.d.x), ~u_input.c)))), 1093f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.b, var_2.b)), vec4<f32>(-1000f, 386f, global2.b.x, global2.b.x))) - _wgslsmith_f_op_vec4_f32(-var_1.b)));
}

