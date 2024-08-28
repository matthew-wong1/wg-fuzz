struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(false, vec3<u32>(29701u, 1u, 25566u), vec2<bool>(true, false), false, vec3<u32>(34884u, 92281u, 4294967295u)), Struct_2(false, vec3<u32>(7046u, 13591u, 0u), vec2<bool>(false, true), true, vec3<u32>(1u, 0u, 116053u)), Struct_2(true, vec3<u32>(81112u, 4294967295u, 1u), vec2<bool>(true, true), true, vec3<u32>(4294967295u, 1u, 33409u)), Struct_2(false, vec3<u32>(47033u, 22604u, 4294967295u), vec2<bool>(true, true), true, vec3<u32>(11394u, 0u, 43715u)), Struct_2(false, vec3<u32>(36634u, 54925u, 4294967295u), vec2<bool>(false, false), true, vec3<u32>(33255u, 4294967295u, 0u)), Struct_2(false, vec3<u32>(16611u, 584u, 0u), vec2<bool>(true, false), true, vec3<u32>(0u, 3973u, 95308u)), Struct_2(true, vec3<u32>(4421u, 11081u, 1u), vec2<bool>(true, true), true, vec3<u32>(0u, 33117u, 1u)), Struct_2(true, vec3<u32>(40379u, 4294967295u, 39026u), vec2<bool>(false, false), false, vec3<u32>(21223u, 4294967295u, 28804u)), Struct_2(false, vec3<u32>(17678u, 35388u, 79973u), vec2<bool>(false, false), true, vec3<u32>(0u, 48798u, 4294967295u)), Struct_2(true, vec3<u32>(12464u, 4294967295u, 5475u), vec2<bool>(false, true), true, vec3<u32>(6751u, 4294967295u, 4294967295u)), Struct_2(true, vec3<u32>(1u, 38805u, 62609u), vec2<bool>(false, false), false, vec3<u32>(6055u, 4294967295u, 44394u)), Struct_2(true, vec3<u32>(15193u, 40963u, 29627u), vec2<bool>(true, false), false, vec3<u32>(4294967295u, 88970u, 1u)), Struct_2(true, vec3<u32>(706u, 22037u, 11149u), vec2<bool>(true, false), true, vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(true, vec3<u32>(0u, 1u, 76311u), vec2<bool>(false, false), false, vec3<u32>(1u, 36661u, 0u)), Struct_2(false, vec3<u32>(34932u, 1u, 52550u), vec2<bool>(false, true), false, vec3<u32>(33166u, 34540u, 1u)), Struct_2(true, vec3<u32>(0u, 0u, 28380u), vec2<bool>(true, true), true, vec3<u32>(0u, 27761u, 0u)), Struct_2(false, vec3<u32>(1u, 4294967295u, 20432u), vec2<bool>(false, false), true, vec3<u32>(20474u, 1u, 21985u)), Struct_2(true, vec3<u32>(6689u, 15251u, 4294967295u), vec2<bool>(true, true), false, vec3<u32>(44787u, 1u, 1u)), Struct_2(false, vec3<u32>(10222u, 1u, 2486u), vec2<bool>(true, true), true, vec3<u32>(8122u, 65632u, 1u)), Struct_2(true, vec3<u32>(883u, 4294967295u, 26513u), vec2<bool>(false, false), true, vec3<u32>(38319u, 68202u, 45185u)), Struct_2(true, vec3<u32>(0u, 4294967295u, 37086u), vec2<bool>(false, false), false, vec3<u32>(8095u, 1u, 0u)), Struct_2(true, vec3<u32>(30257u, 91677u, 91798u), vec2<bool>(true, false), false, vec3<u32>(0u, 6268u, 0u)), Struct_2(true, vec3<u32>(27016u, 4294967295u, 58454u), vec2<bool>(false, false), false, vec3<u32>(72062u, 0u, 103484u)), Struct_2(true, vec3<u32>(1u, 2417u, 1u), vec2<bool>(true, true), false, vec3<u32>(4294967295u, 0u, 97843u)));

var<private> global2: array<vec4<bool>, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> vec3<u32> {
    var var_0 = arg_0.c;
    var var_1 = arg_0.b.zyz;
    let var_2 = arg_0.a;
    global1 = array<Struct_2, 24>();
    global2 = array<vec4<bool>, 29>();
    return _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(arg_0.b.x), ~(~36361u), _wgslsmith_add_u32(var_0.a, 0u) ^ (~var_1.x ^ u_input.d.x)), ~u_input.a.wwy);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: f32) -> Struct_3 {
    global0 = Struct_1(_wgslsmith_div_u32(0u, arg_0.x));
    global0 = arg_1.c;
    global0 = Struct_1(global0.a);
    global1 = array<Struct_2, 24>();
    var var_0 = Struct_2(arg_1.a, min(u_input.d.wyx, vec3<u32>(arg_1.c.a, _wgslsmith_dot_vec3_u32(arg_0 | arg_0, ~vec3<u32>(arg_1.b.x, 85103u, arg_0.x)), 0u << ((arg_1.b.x >> (3394u % 32u)) % 32u))), !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), arg_1.a), (false == arg_1.a) & arg_1.a, _wgslsmith_mod_vec3_u32(~(~func_3(Struct_3(arg_1.a, u_input.a, arg_1.c, u_input.c.x, arg_3), u_input.b.xzw)), min(~vec3<u32>(52581u, 1u, global0.a), vec3<u32>(global0.a & global0.a, arg_0.x, arg_1.c.a))));
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<i32>) -> u32 {
    var var_0 = func_2(~u_input.d.wxy, func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(8947u, 21914u, 22496u, 0u), u_input.d), ~u_input.a.x), arg_1.b.yxw), func_2(func_2(arg_1.b.ywx, Struct_3(false, vec4<u32>(global0.a, arg_1.b.x, 84966u, 16437u), Struct_1(u_input.a.x), 7263i, arg_1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -520f, arg_1.e)), _wgslsmith_f_op_f32(arg_1.e * arg_1.e)).b.ywy, arg_1, vec3<f32>(arg_1.e, _wgslsmith_f_op_f32(step(arg_1.e, 266f)), _wgslsmith_f_op_f32(382f - -870f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.e * arg_1.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1513f, -614f, 434f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(544f, arg_1.e, -1151f), vec3<f32>(-1000f, arg_1.e, arg_1.e))) * vec3<f32>(arg_1.e, -1343f, -764f))), _wgslsmith_f_op_f32(-1000f + -1419f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e, 583f, -642f) - vec3<f32>(409f, arg_1.e, arg_1.e)), vec3<f32>(arg_1.e, 1415f, arg_1.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e, -1177f, 814f) * vec3<f32>(arg_1.e, arg_1.e, -724f)))), -1145f);
    global1 = array<Struct_2, 24>();
    global0 = func_2(min(arg_1.b.yxx, firstLeadingBit(abs(var_0.b.zyw))), arg_1, vec3<f32>(_wgslsmith_div_f32(arg_1.e, _wgslsmith_f_op_f32(var_0.e + arg_1.e)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e + -173f)) - var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.e, 982f), -796f, false)))))).c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(917f, var_0.e), vec2<f32>(var_0.e, var_0.e))))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1526f), vec2<f32>(arg_1.e, arg_1.e))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, arg_1.e))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, arg_1.e))), vec2<bool>(false, !var_0.a)))));
    let var_2 = _wgslsmith_add_vec4_i32(u_input.b | u_input.b, ~u_input.b);
    return 0u;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = array<vec4<bool>, 29>();
    var var_0 = arg_0.e | abs(vec3<u32>(4294967295u, ~firstTrailingBit(45998u), func_4(true, func_2(u_input.d.zyy, Struct_3(true, u_input.d, Struct_1(u_input.a.x), u_input.b.x, -757f), vec3<f32>(655f, -341f, -2431f), -2086f), _wgslsmith_mod_vec3_i32(u_input.b.xwy, u_input.b.zzy))));
    var var_1 = global2[_wgslsmith_index_u32(9091u, 29u)];
    let var_2 = vec2<i32>(~(-26758i), ~(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-36898i, u_input.c.x), u_input.b.zx)));
    let var_3 = Struct_3(select(select(false, !var_1.x == true, all(!vec4<bool>(false, var_1.x, var_1.x, false))), !select(true, true, true), all(select(global2[_wgslsmith_index_u32(~4294967295u, 29u)], select(global2[_wgslsmith_index_u32(0u, 29u)], vec4<bool>(false, true, true, var_1.x), vec4<bool>(false, arg_0.c.x, false, true)), !var_1.x))), select(select(u_input.a, countOneBits(~u_input.d), !var_1.x), _wgslsmith_add_vec4_u32(abs(u_input.d) & u_input.d, vec4<u32>(firstTrailingBit(1u), 1u | arg_0.b.x, arg_0.e.x, _wgslsmith_mod_u32(17740u, 60987u))), vec4<bool>(any(select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x), false)), arg_0.b.x < var_0.x, arg_0.d, arg_0.d)), Struct_1(~(1u ^ (global0.a ^ u_input.d.x))), -_wgslsmith_dot_vec2_i32(var_2, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, var_2.x), vec2<i32>(var_2.x, 0i), vec2<i32>(var_2.x, var_2.x)) | (vec2<i32>(u_input.b.x, var_2.x) ^ vec2<i32>(2147483647i, -61i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-900f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1568f)), 144f)) * _wgslsmith_f_op_f32(-1304f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)))));
    return Struct_1(_wgslsmith_sub_u32(firstLeadingBit(20587u & arg_0.b.x), (max(1u, 0u) ^ func_3(Struct_3(var_1.x, vec4<u32>(var_3.b.x, 24094u, var_3.b.x, global0.a), var_3.c, 5339i, 807f), vec3<i32>(var_3.d, var_2.x, -1i)).x) | 8988u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_2(false, ~firstTrailingBit(u_input.d.zzx), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), any(global2[_wgslsmith_index_u32(~3928u, 29u)]) || select(false, true, true), abs(vec3<u32>(1u >> (global0.a % 32u), _wgslsmith_mod_u32(global0.a, 4227u), 13466u))));
    let var_0 = _wgslsmith_div_vec3_u32(~(u_input.a.xyw << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global0.a, global0.a), ~u_input.d.yyx) % vec3<u32>(32u))), min(reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(14700u, 13873u, 53806u), vec3<u32>(u_input.d.x, 23565u, 13575u)), func_2(u_input.d.xzw, Struct_3(true, vec4<u32>(0u, 1u, 23517u, 20945u), Struct_1(36312u), u_input.c.x, -1727f), vec3<f32>(1000f, 1000f, 655f), -429f).b.xwy)), ~vec3<u32>(~76917u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 30631u), vec2<u32>(1u, 0u)), 1u)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(_wgslsmith_mod_u32(u_input.d.x, var_0.x), ~(firstLeadingBit(var_0.x) & ~4294967295u), false), var_0.x), 24u)];
    var_1 = Struct_2(false, var_1.b, vec2<bool>(var_1.d, !(firstLeadingBit(22750i) > ~u_input.c.x)), !var_1.d, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1618f))), _wgslsmith_f_op_f32(f32(-1f) * -653f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f))));
}

