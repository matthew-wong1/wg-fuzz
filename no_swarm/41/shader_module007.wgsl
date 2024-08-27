struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: array<u32, 27> = array<u32, 27>(56102u, 21674u, 4294967295u, 48659u, 4294967295u, 29182u, 72089u, 4294967295u, 1u, 0u, 99460u, 18146u, 4294967295u, 41191u, 1u, 105850u, 36852u, 39482u, 23807u, 118u, 1u, 5628u, 67542u, 27134u, 0u, 0u, 4766u);

var<private> global2: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-535f, 402f, -1946f, 881f), vec4<f32>(-159f, -376f, -603f, -984f), vec4<f32>(-780f, -1364f, 413f, -955f), vec4<f32>(-1103f, 1000f, 425f, 202f), vec4<f32>(-139f, -1137f, 747f, -546f), vec4<f32>(-902f, 1000f, 1000f, -1000f), vec4<f32>(-1595f, 1053f, -392f, -128f), vec4<f32>(727f, 920f, -2265f, 785f), vec4<f32>(1831f, 1457f, 1361f, -436f), vec4<f32>(2166f, -651f, -838f, -1907f), vec4<f32>(-909f, -1000f, -1396f, 1124f), vec4<f32>(-254f, 715f, 145f, 1508f), vec4<f32>(1318f, 580f, -225f, 1189f), vec4<f32>(310f, -2020f, -1538f, -1000f), vec4<f32>(1936f, 254f, -172f, 1202f), vec4<f32>(-2285f, -1055f, -401f, -423f), vec4<f32>(2387f, -1505f, 1004f, 1000f), vec4<f32>(270f, -970f, -960f, 2047f), vec4<f32>(-2580f, -699f, -901f, 476f), vec4<f32>(366f, -295f, -594f, 777f), vec4<f32>(175f, 575f, -1000f, -695f), vec4<f32>(398f, 999f, 892f, 251f), vec4<f32>(541f, 714f, 1458f, 633f), vec4<f32>(-160f, 959f, 1340f, 689f), vec4<f32>(-410f, 1814f, 1178f, -417f), vec4<f32>(202f, -729f, 2385f, 268f), vec4<f32>(190f, -1009f, -152f, 564f), vec4<f32>(-822f, 634f, -688f, 2210f));

var<private> global3: array<vec4<bool>, 3>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: f32) -> i32 {
    global0 = array<vec3<bool>, 17>();
    var var_0 = !(!(arg_2 <= 710f));
    var var_1 = all(select(!(!(!global0[_wgslsmith_index_u32(4294967295u, 17u)])), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_1.x > 543f), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(abs(1u), 27u)], 17u)], true), !all(vec4<bool>(false, true, false, false))));
    var var_2 = vec3<i32>(abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-77629i, u_input.a, -2147483647i, 2147483647i), vec4<i32>(-25121i, -11174i, -2147483647i, u_input.a), vec4<i32>(-2147483647i, 1i, 2147483647i, u_input.a))), _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, u_input.a, -23936i, u_input.a), select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(689i, 1i, 2147483647i, u_input.a), true)))), 0i, u_input.a);
    global2 = array<vec4<f32>, 28>();
    return var_2.x;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_i32(13897i, _wgslsmith_clamp_i32(u_input.a, func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-677f, 1831f, 458f))), _wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(31186u, 28u)])), 535f), 0i)), ~(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26881u, 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)]))) << (firstLeadingBit(abs(vec2<u32>(13283u, 1u))) % vec2<u32>(32u)), vec4<bool>(select(any(!vec2<bool>(arg_0, true)), any(select(vec2<bool>(arg_0, false), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0))), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16307u, 27u)], 27u)], 27u)], 8465u) >= _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)], 27u)], global1[_wgslsmith_index_u32(76959u, 27u)])), true, arg_0, false), 47003u, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(~u_input.a, 2147483647i, -2956i, 1072i)), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -2147483647i), _wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a), -(~(-19522i)), u_input.a)));
    global2 = array<vec4<f32>, 28>();
    global1 = array<u32, 27>();
    var_0 = Struct_1(52691i, abs(var_0.b), global3[_wgslsmith_index_u32(min(countOneBits(0u), ~1u), 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~max(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(var_0.b.x, 27u)] | 1u), 27u)], _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.d, var_0.b.x), var_0.b.x >> (1u % 32u))), 27u)], 27u)], vec4<i32>(i32(-1i) * -11314i, ~(~(-2147483647i)), ~_wgslsmith_sub_i32(31372i, var_0.a) << (~(~1u) % 32u), 22156i));
    let var_1 = vec3<i32>(~(~(-var_0.a >> ((global1[_wgslsmith_index_u32(22427u, 27u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8568u, 27u)], 27u)] % 32u)) % 32u))), 2147483647i, 7612i);
    return global0[_wgslsmith_index_u32(0u, 17u)];
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(select(firstTrailingBit(vec2<i32>(-29439i, u_input.a)), vec2<i32>(1i, 1i), arg_1.xx), ~(-abs(arg_2))), vec2<u32>(~global1[_wgslsmith_index_u32(countOneBits(max(84201u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20616u, 27u)], 27u)], 27u)], 27u)], 27u)])), 27u)], 4294967295u), select(!select(global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(142757u, 27u)], 3u)], vec4<bool>(arg_1.x, false, arg_0, true), vec4<bool>(true, arg_0, true, arg_1.x)), vec4<bool>(arg_1.x, select(arg_1.x != false, arg_0, true), true, false), vec4<bool>(any(global3[_wgslsmith_index_u32(4294967295u, 3u)]), any(arg_1), -arg_2.x >= 2147483647i, global1[_wgslsmith_index_u32(~0u, 27u)] != _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23272u, 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)]), vec2<u32>(54759u, global1[_wgslsmith_index_u32(4294967295u, 27u)])))), 81527u, ~vec4<i32>(-22081i, -12210i, abs(u_input.a), u_input.a));
    global2 = array<vec4<f32>, 28>();
    var var_1 = var_0;
    var var_2 = any(vec3<bool>(var_0.c.x, 2147483647i != select(-var_0.a, firstTrailingBit(-26254i), true), arg_1.x));
    global1 = array<u32, 27>();
    return 1i;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32) -> vec4<i32> {
    var var_0 = Struct_1(func_4(true, select(func_2(true), global0[_wgslsmith_index_u32(~(25613u << (0u % 32u)), 17u)], (u_input.a != 26476i) && true), _wgslsmith_add_vec2_i32(countOneBits(min(vec2<i32>(u_input.a, u_input.a), arg_1.ww)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.a, -14371i))))), ~arg_0, vec4<bool>(!(!select(true, false, true)), all(vec3<bool>(true, true, false)), true, any(select(vec4<bool>(false, true, false, true), global3[_wgslsmith_index_u32(arg_2, 3u)], global3[_wgslsmith_index_u32(1u, 3u)]))), arg_0.x, arg_1);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1473f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -705f)))))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -737f)));
    global0 = array<vec3<bool>, 17>();
    global1 = array<u32, 27>();
    let var_2 = -1000f;
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, abs(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 0u))), select(vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(~3591u, 3u)], all(vec3<bool>(false, false, true)) || all(!global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 3u)])), global1[_wgslsmith_index_u32(4294967295u, 27u)], -min(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-39863i, u_input.a, u_input.a, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(40838i, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), func_1(vec2<u32>(0u, global1[_wgslsmith_index_u32(56037u, 27u)]), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), global1[_wgslsmith_index_u32(16075u, 27u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -20193i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) ^ vec4<i32>(40716i, 1i, 50346i, -66454i)));
    global0 = array<vec3<bool>, 17>();
    let var_1 = _wgslsmith_add_i32(reverseBits((u_input.a >> (~var_0.b.x % 32u)) | -50337i), 2147483647i);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 135088u), 27u)], 28u)] + _wgslsmith_f_op_vec4_f32(vec4<f32>(504f, -394f, -1126f, -159f) * vec4<f32>(1000f, -353f, -1351f, -424f))) * vec4<f32>(395f, _wgslsmith_f_op_f32(ceil(-1642f)), _wgslsmith_f_op_f32(sign(779f)), _wgslsmith_div_f32(-1101f, -408f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f - -335f), _wgslsmith_f_op_f32(-1720f + 157f), _wgslsmith_f_op_f32(-1101f * -709f), -539f)), vec4<bool>(true, false, func_2(!(0u >= var_0.b.x)).x, var_0.c.x)));
    let var_3 = var_2;
    var var_4 = 14580i;
    var var_5 = var_0;
    let var_6 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(793f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1325f * -953f)))))), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), var_3.x, _wgslsmith_f_op_f32(sign(132f)));
}

