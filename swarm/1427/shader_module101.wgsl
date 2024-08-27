struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, false, true, true, true, false, false, true, false, true, false, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, false, false, true, false);

var<private> global2: array<bool, 26>;

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(0u, false), Struct_1(60973u, false), Struct_1(48806u, true), Struct_1(53173u, false), Struct_1(89038u, false), Struct_1(4294967295u, true), Struct_1(1109u, true), Struct_1(4294967295u, true), Struct_1(36400u, false), Struct_1(1u, true), Struct_1(0u, true), Struct_1(35404u, false), Struct_1(4294967295u, true), Struct_1(95217u, false), Struct_1(20837u, true), Struct_1(4294967295u, false), Struct_1(84802u, false), Struct_1(40395u, false), Struct_1(38041u, false), Struct_1(0u, true), Struct_1(1u, false), Struct_1(1u, true), Struct_1(58476u, true), Struct_1(72840u, true), Struct_1(0u, true), Struct_1(0u, false));

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(4294967295u, false), Struct_1(1u, false), Struct_1(4294967295u, true), Struct_1(1u, true), Struct_1(32216u, true), Struct_1(27365u, true), Struct_1(6916u, true), Struct_1(11707u, false), Struct_1(0u, true), Struct_1(1u, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(~(~(~arg_1.a)), 26u)];
    let var_1 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), 581f, arg_0.x);
    var var_2 = arg_2.x & 35742i;
    var var_3 = all(vec4<bool>(false, global2[_wgslsmith_index_u32(~60u, 26u)], true, all(select(select(vec4<bool>(var_0.b, true, global1[_wgslsmith_index_u32(1u, 31u)], true), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.b, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(21039u, 31u)], true, true, true)), select(vec4<bool>(arg_1.b, false, false, var_0.b), vec4<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(arg_3.x, 26u)]), false), global2[_wgslsmith_index_u32(~var_0.a, 26u)]))));
    let var_4 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, 1u), vec4<u32>(0u, 19471u, 2093u, var_0.a)), 1u, ~arg_1.a), reverseBits(vec3<u32>(4294967295u, u_input.a.x, arg_3.x))), abs(countOneBits(vec3<u32>(0u, u_input.b, arg_1.a) & vec3<u32>(var_0.a, arg_3.x, u_input.a.x)))), false);
    return u_input.b;
}

fn func_2() -> i32 {
    global4 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1574f, -253f))) + 1f), _wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(f32(-1f) * -1872f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(741f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1194f, -168f, -101f, -1525f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1571f, 379f, -551f, -458f), vec4<f32>(653f, -1000f, -207f, 1000f)))))));
    let var_1 = Struct_1(func_3(var_0.xzz, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, u_input.b))), 26u)], vec3<i32>(~u_input.e, -54238i, u_input.e), ~(~vec4<u32>(6203u, 1u, 24001u, u_input.a.x))), !all(select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], true, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(u_input.b, 26u)]), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(1u, 31u)]))));
    global2 = array<bool, 26>();
    global2 = array<bool, 26>();
    return u_input.d;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: f32) -> u32 {
    global3 = array<Struct_1, 26>();
    var var_0 = vec3<f32>(-141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1251f) - _wgslsmith_f_op_f32(f32(-1f) * -1276f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f))))));
    var var_1 = vec3<i32>(i32(-1i) * -2147483647i, func_2(), -(~(~(arg_1 >> (34601u % 32u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-444f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1587f, -839f, arg_0.x)) * -107f) - _wgslsmith_f_op_f32(floor(var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zx)));
    global0 = 75651u;
    return 4294967295u;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec4<f32> {
    global3 = array<Struct_1, 26>();
    var var_0 = global3[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(func_4(vec2<bool>(arg_0.x > arg_2.x, all(arg_1)), countOneBits(func_2()), 282f, -975f), ~_wgslsmith_clamp_u32(~u_input.c, countOneBits(u_input.a.x), 4294967295u))), 26u)];
    var var_1 = arg_1.x;
    var_1 = global2[_wgslsmith_index_u32(4294967295u, 26u)];
    var var_2 = 1095f;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_0.x) + arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-1229f, -1000f, -1010f, 870f), vec4<bool>(true, true, true, true), vec4<f32>(339f, 706f, 684f, -735f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, -368f, -469f, -648f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1050f, -1071f, -334f, -249f))))));
    var var_1 = ~u_input.a.zw;
    let var_2 = var_0.wxz;
    let var_3 = ~u_input.a.zw;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.yzz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zyy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1262f, -594f, var_0.x), vec3<f32>(-530f, var_2.x, var_2.x), false)), _wgslsmith_f_op_vec3_f32(-var_0.xzw)))));
    global0 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.a.yw, var_3)), ~(~var_3 ^ _wgslsmith_clamp_vec2_u32(u_input.a.zw, vec2<u32>(1u, u_input.a.x), var_3))) ^ 4294967295u;
    var var_5 = _wgslsmith_clamp_vec4_i32(-(vec4<i32>(i32(-1i) * -2147483647i, ~(-57923i), -u_input.d, i32(-1i) * -2147483647i) & vec4<i32>(i32(-1i) * -2147483647i, ~u_input.d, _wgslsmith_mod_i32(u_input.d, u_input.e), firstLeadingBit(-7000i))), vec4<i32>(_wgslsmith_clamp_i32(45967i, -(~u_input.e), ~u_input.e), -2007i, (-u_input.d >> (func_4(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], false), 4766i, var_0.x, var_0.x) % 32u)) << (_wgslsmith_clamp_u32(func_3(var_0.yxy, global3[_wgslsmith_index_u32(u_input.c, 26u)], vec3<i32>(-59748i, u_input.e, u_input.e), vec4<u32>(98320u, u_input.c, u_input.c, u_input.a.x)), countOneBits(u_input.c), var_1.x & 34725u) % 32u), ~abs(~(-56939i))), select(_wgslsmith_mult_vec4_i32(-min(vec4<i32>(u_input.e, 0i, u_input.d, -33307i), vec4<i32>(u_input.e, u_input.e, u_input.d, u_input.d)), vec4<i32>(u_input.d, u_input.e, u_input.d, ~(-76071i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(14166i, u_input.d, u_input.e, 27637i), vec4<i32>(15625i, u_input.d, 1i, 3716i) | vec4<i32>(-2147483647i, u_input.e, 8302i, -62761i)), any(select(vec3<bool>(false, false, false), vec3<bool>(global1[_wgslsmith_index_u32(21907u, 31u)], global1[_wgslsmith_index_u32(var_3.x, 31u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)], false))) & true));
    let var_6 = global4[_wgslsmith_index_u32(countOneBits(var_1.x) ^ (24578u & max(_wgslsmith_div_u32(func_3(var_0.zxz, Struct_1(1u, global1[_wgslsmith_index_u32(8850u, 31u)]), var_5.zxx, vec4<u32>(1u, u_input.b, 4294967295u, 0u)), ~21763u), countOneBits(19527u))), 10u)];
    var var_7 = vec3<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(countOneBits(var_3.x)), 26u)], max(1i, max(0i, 0i)) < -(-1i ^ -var_5.x), !(false | !(!global1[_wgslsmith_index_u32(27935u, 31u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec4<u32>(u_input.a.x, var_6.a, var_1.x, u_input.b)) ^ select(u_input.a, select(countOneBits(u_input.a), u_input.a, any(vec3<bool>(global2[_wgslsmith_index_u32(var_3.x, 26u)], var_6.b, false))), select(vec4<bool>(var_7.x, var_7.x, true, global2[_wgslsmith_index_u32(var_6.a, 26u)]), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, var_6.b, true), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-395f, 395f, !var_7.x))))), _wgslsmith_f_op_f32(-var_2.x));
}

