struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, vec2<bool>(true, true), 0u, 15653u), Struct_1(true, vec2<bool>(false, true), 27592u, 3133u), Struct_1(false, vec2<bool>(false, true), 55537u, 4294967295u), Struct_1(true, vec2<bool>(false, false), 1u, 1u), Struct_1(true, vec2<bool>(true, false), 8765u, 0u), Struct_1(false, vec2<bool>(true, true), 1u, 1u), Struct_1(true, vec2<bool>(false, false), 127451u, 11098u), Struct_1(false, vec2<bool>(true, false), 1u, 861u), Struct_1(true, vec2<bool>(true, true), 13527u, 67488u), Struct_1(true, vec2<bool>(true, true), 0u, 39055u), Struct_1(false, vec2<bool>(false, false), 4294967295u, 73954u), Struct_1(false, vec2<bool>(true, true), 42593u, 115170u));

var<private> global1: array<bool, 1>;

var<private> global2: i32 = -15535i;

var<private> global3: u32 = 1u;

var<private> global4: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    let var_0 = vec2<f32>(arg_1, arg_2.x);
    global0 = array<Struct_1, 12>();
    var var_1 = !(!select(vec4<bool>(true, true, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 1u)], arg_0.d.b.x, global1[_wgslsmith_index_u32(8998u, 1u)], arg_0.b.a)), true), select(!vec4<bool>(false, false, arg_0.d.b.x, global1[_wgslsmith_index_u32(global4.x, 1u)]), vec4<bool>(arg_0.b.b.x, arg_0.d.a, global1[_wgslsmith_index_u32(global4.x, 1u)], false), arg_0.d.a & global1[_wgslsmith_index_u32(26638u, 1u)]), !select(false, global1[_wgslsmith_index_u32(global4.x, 1u)], false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(317f, _wgslsmith_f_op_f32(select(-1085f, var_0.x, all(vec4<bool>(false, var_1.x, false, false)))), _wgslsmith_div_f32(-717f, arg_1), arg_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 1000f, arg_1, var_0.x)))), select(arg_0.d.b.x, arg_0.d.a, select(!var_1.x, any(vec4<bool>(var_1.x, true, arg_0.b.a, var_1.x)), arg_1 < -188f)))));
    return 1u;
}

fn func_2() -> vec3<f32> {
    global3 = firstTrailingBit(~((_wgslsmith_mult_u32(u_input.c, 0u) << (_wgslsmith_clamp_u32(u_input.b.x, u_input.c, 4294967295u) % 32u)) | 4294967295u));
    global4 = vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(select(~4294967295u, func_3(Struct_3(48436u, global0[_wgslsmith_index_u32(global4.x, 12u)], 4294967295u, global0[_wgslsmith_index_u32(global4.x, 12u)]), 843f, vec4<f32>(-386f, -937f, -1056f, -971f)), true), u_input.a.x), 17354u, ~reverseBits(0u)) & ~firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(global4.ywz, vec3<u32>(u_input.c, 49174u, 17793u)), 4294967295u, 1u, u_input.a.x | 0u));
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-768f, -139f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1034f, 876f))))))), Struct_1(true, vec2<bool>(global1[_wgslsmith_index_u32(abs(4294967295u), 1u)], all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], true, global1[_wgslsmith_index_u32(53726u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]))), ~global4.x, 1u), u_input.c, min(-vec4<i32>(~(-28552i), _wgslsmith_div_i32(48270i, -1i), _wgslsmith_add_i32(0i, -11945i), select(0i, -1i, global1[_wgslsmith_index_u32(u_input.a.x, 1u)])), ~vec4<i32>(1i, 1i, 1i, 1i)));
    global1 = array<bool, 1>();
    global3 = 43743u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -862f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 2347f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1199f, var_0.a.x))), vec3<f32>(1289f, _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(abs(var_0.a.x)))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1129f * _wgslsmith_f_op_f32(min(-547f, 1000f))), -365f, 2113f))) + _wgslsmith_f_op_vec3_f32(func_2()));
    global1 = array<bool, 1>();
    var var_1 = ~(~vec4<u32>(firstTrailingBit(0u), 0u, ~u_input.b.x, u_input.b.x) ^ _wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, 27228u, 6073u, 42685u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.c, 8384u, global4.x, u_input.a.x), vec4<u32>(4294967295u, 77744u, u_input.b.x, u_input.a.x), vec4<bool>(global1[_wgslsmith_index_u32(19340u, 1u)], true, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(global4.x, 1u)])), vec4<u32>(2890u, global4.x, u_input.c, u_input.a.x))));
    let var_2 = vec4<bool>(true, any(!vec2<bool>(true, select(global1[_wgslsmith_index_u32(4294967295u, 1u)], true, global1[_wgslsmith_index_u32(4294967295u, 1u)]))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(87697u, var_1.x), 1u)], any(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 1u)], global1[_wgslsmith_index_u32(var_1.x, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 1u)]), true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 1u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(42777u, 1u)], false))));
    var_1 = vec4<u32>(abs(~(firstTrailingBit(58460u) ^ 1u)), abs(37562u), 25565u, var_1.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~4294967295u), func_1(), global4.x), reverseBits(~global4.ywx)), global0[_wgslsmith_index_u32(~(16908u | (0u | global4.x)), 12u)], global4.x, Struct_1(all(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 1u)], false, select(true, true, global1[_wgslsmith_index_u32(52754u, 1u)]))), select(vec2<bool>(false, all(vec3<bool>(global1[_wgslsmith_index_u32(629u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], true))), !select(vec2<bool>(global1[_wgslsmith_index_u32(68059u, 1u)], global1[_wgslsmith_index_u32(70521u, 1u)]), vec2<bool>(global1[_wgslsmith_index_u32(20534u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), global1[_wgslsmith_index_u32(23688u, 1u)]), vec2<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 1u)], false, true)))), ~0u, 1u));
    global2 = _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(1i, 1i), 2147483647i, -(~1i));
    let var_1 = vec3<f32>(-2017f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2()).x))), 465f);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1591f), var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))));
    let var_3 = select(vec3<bool>(global1[_wgslsmith_index_u32(func_3(var_0, -1936f, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 648f, -544f, var_2.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1037f, 822f, var_1.x, var_2.x) + vec4<f32>(var_1.x, 1658f, var_2.x, var_2.x)))), 1u)], !all(vec3<bool>(var_0.b.b.x, var_0.b.b.x, true)), select(!global1[_wgslsmith_index_u32(reverseBits(global4.x), 1u)], global1[_wgslsmith_index_u32(1u, 1u)], any(vec4<bool>(var_0.d.a, false, false, false)))), vec3<bool>(true, true, all(!vec4<bool>(var_0.d.b.x, global1[_wgslsmith_index_u32(global4.x, 1u)], false, global1[_wgslsmith_index_u32(80586u, 1u)]))), var_0.d.b.x);
    var var_4 = true;
    global3 = 4294967295u;
    global3 = var_0.a;
    let var_5 = Struct_3(0u & firstLeadingBit(min(38382u, var_0.d.c) | 5585u), var_0.b, 38773u, Struct_1(~u_input.b.x >= u_input.b.x, vec2<bool>(select(true, false, var_0.b.a), false && (global1[_wgslsmith_index_u32(var_0.c, 1u)] || global1[_wgslsmith_index_u32(4294967295u, 1u)])), ~21942u, abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 44483u), vec4<u32>(global4.x, 84022u, var_0.a, 18835u)), firstTrailingBit(vec4<u32>(67899u, 0u, 1u, global4.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(1i), _wgslsmith_add_i32(-1i, abs(1i)) >> ((_wgslsmith_add_u32(u_input.b.x, u_input.b.x) ^ 12002u) % 32u)), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522f * var_2.x) - _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_2.x), var_2.x, _wgslsmith_f_op_f32(1167f + 397f), _wgslsmith_f_op_f32(floor(591f))))), _wgslsmith_sub_u32(~firstTrailingBit(_wgslsmith_add_u32(global4.x, 1u)), ~0u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1251f * var_1.x), _wgslsmith_div_f32(-1522f, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) * _wgslsmith_f_op_f32(max(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(max(-848f, 555f))));
}

