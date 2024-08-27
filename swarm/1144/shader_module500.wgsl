struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<Struct_3, 26>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<u32>(23166u, 4145u, 41575u, 4294967295u), false), Struct_1(vec4<u32>(23845u, 7992u, 28143u, 1u), false), Struct_1(vec4<u32>(8887u, 46208u, 33674u, 10408u), true), Struct_1(vec4<u32>(51071u, 1118u, 0u, 0u), false));

var<private> global3: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = ~arg_0.a.a.zz;
    let var_1 = u_input.a;
    global0 = array<Struct_1, 21>();
    global1 = array<Struct_3, 26>();
    global3 = ~(~var_0.x);
    return false;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> vec3<bool> {
    global3 = max(u_input.a, (~_wgslsmith_sub_u32(0u, arg_1.x) << ((0u | _wgslsmith_mult_u32(u_input.a, 0u)) % 32u)) | arg_1.x);
    var var_0 = ~vec2<i32>(i32(-1i) * -24498i, arg_0);
    let var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), true)), !select(vec4<bool>(true, any(vec3<bool>(true, true, false)), true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))), select(vec4<bool>(select(any(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true)), false), true, false, true), select(vec4<bool>(true, true, any(vec3<bool>(false, true, true)), u_input.a == u_input.a), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), !func_3(Struct_2(Struct_1(vec4<u32>(0u, 20u, u_input.a, 0u), false), vec2<bool>(false, false), arg_1, true), Struct_1(vec4<u32>(4294967295u, 0u, 0u, arg_1.x), true), -3229i)), !vec4<bool>(true, 1202u == u_input.a, true, all(vec2<bool>(false, true)))));
    let var_2 = false;
    var var_3 = Struct_2(Struct_1(vec4<u32>(103584u, arg_1.x, u_input.a, ~_wgslsmith_clamp_u32(4294967295u, 23120u, 0u)), var_2), vec2<bool>(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, arg_0, 2147483647i), -vec3<i32>(arg_0, arg_0, 2147483647i)) != (var_0.x >> (1u % 32u))), arg_1, var_2 | var_1.x);
    return select(select(!select(vec3<bool>(true, false, true), !var_1.zxw, !var_3.d), select(var_1.wxz, !(!var_1.xww), !var_1.wxy), var_2), var_1.xzw, select(select(!select(vec3<bool>(false, var_2, var_3.d), var_1.ywz, var_1.yww), !(!var_1.wzx), var_1.zwy), !select(vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(var_2, true, var_3.b.x), any(vec2<bool>(false, true))), var_1.yyw));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-226f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f) - _wgslsmith_f_op_f32(1070f + -199f)), -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(175f, 1000f)) * -1384f), _wgslsmith_f_op_f32(-432f + _wgslsmith_f_op_f32(f32(-1f) * -435f)))), -116f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1391f, 608f, -1183f, 1175f) - vec4<f32>(-741f, -495f, -783f, -188f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-768f, -1302f, -491f, 2721f) * vec4<f32>(1000f, -2100f, 580f, 713f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(394f, 866f, -1311f, -455f), vec4<f32>(-1000f, 329f, 1000f, -1199f), vec4<bool>(false, true, false, true))))))), true));
    let var_1 = select(vec3<i32>(0i, arg_0, 68314i ^ select(-25015i, arg_0, true)), (vec3<i32>(-1i) * -vec3<i32>(arg_0, arg_0, -41865i)) & vec3<i32>(_wgslsmith_div_i32(~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-40994i, -63861i, arg_0, -25635i), vec4<i32>(-2147483647i, arg_0, arg_0, 50074i))), ~2147483647i, arg_0), ((false & (var_0.x <= -889f)) || any(func_2(79922i, vec3<u32>(1u, 1u, u_input.a)))) | select(false, true, false));
    let var_2 = Struct_2(Struct_1(~min(vec4<u32>(u_input.a, 92733u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 2889u, u_input.a)), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0), vec2<i32>(arg_0, 0i))) > _wgslsmith_clamp_i32(var_1.x >> (1u % 32u), _wgslsmith_sub_i32(0i, -1i), arg_0)), !select(vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_3(Struct_2(Struct_1(vec4<u32>(56502u, u_input.a, u_input.a, u_input.a), false), vec2<bool>(false, true), vec3<u32>(1u, u_input.a, 22644u), false), global2[_wgslsmith_index_u32(1u, 4u)], -2286i))), select(vec3<u32>(~u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), 87239u), max(~vec3<u32>(49613u, u_input.a, u_input.a), ~vec3<u32>(4294967295u, u_input.a, u_input.a)) ^ (vec3<u32>(u_input.a, u_input.a, 4294967295u) ^ vec3<u32>(11744u, 1u, u_input.a)), select(vec3<bool>(true, -1917f <= var_0.x, true), vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec2<bool>(false, false))))), func_2(select(arg_0 >> (1u % 32u), -1995i, (1u << (u_input.a % 32u)) > u_input.a), ~(~vec3<u32>(4294967295u, 1u, u_input.a)) >> (reverseBits(vec3<u32>(u_input.a, u_input.a, 115109u)) % vec3<u32>(32u))).x);
    global2 = array<Struct_1, 4>();
    var var_3 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 4u)], vec2<bool>(var_2.a.b, !var_2.d && true), vec3<u32>(var_2.a.a.x & 22166u, ~u_input.a, var_2.c.x) << (vec3<u32>(1u, ~u_input.a, _wgslsmith_dot_vec3_u32(var_2.a.a.wwx, vec3<u32>(u_input.a, 12217u, var_2.c.x))) % vec3<u32>(32u)), !func_2(0i, _wgslsmith_clamp_vec3_u32(var_2.c, vec3<u32>(u_input.a, 1u, 24721u), vec3<u32>(1u, u_input.a, var_2.a.a.x))).x));
    return var_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(41086u, 4u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(651f)), 444f)))));
    var_0 = func_1(_wgslsmith_mod_i32(max(0i, firstTrailingBit(-10487i)), -15424i));
    var var_2 = var_0.a.yzy;
    var var_3 = abs(firstLeadingBit(~vec4<u32>(_wgslsmith_mult_u32(20544u, u_input.a), 0u, _wgslsmith_mult_u32(42497u, u_input.a), 4294967295u)));
    var var_4 = func_1((1i ^ ~(0i >> (var_3.x % 32u))) ^ ~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 16562i, -35364i, -48107i)), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-486f)), _wgslsmith_f_op_f32(976f + -1000f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-220f)), _wgslsmith_f_op_f32(f32(-1f) * -377f))))));
    var var_6 = Struct_2(func_1(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 15923i), vec2<i32>(38171i, 1i)))), select(vec2<bool>(any(select(vec4<bool>(var_4.b, var_4.b, true, false), vec4<bool>(true, var_4.b, var_0.b, var_0.b), true)), true), vec2<bool>(any(vec4<bool>(false, var_4.b, var_0.b, true)), var_4.b), !func_3(Struct_2(global2[_wgslsmith_index_u32(6662u, 4u)], vec2<bool>(var_0.b, true), vec3<u32>(u_input.a, 861u, 32972u), true), Struct_1(vec4<u32>(18472u, 0u, var_0.a.x, 0u), var_0.b), _wgslsmith_sub_i32(0i, -13809i))), abs(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(10448u, var_3.x, u_input.a)) << (~vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(4294967295u, var_3.x, 4294967295u)))), true);
    var_3 = vec4<u32>(~(~max(var_4.a.x, var_4.a.x)), 64907u, 16609u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_4.a.x, 0u), 41980u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zwx, firstLeadingBit(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -3916i, -4623i), vec3<i32>(-1i, -18156i, -1i)) & firstTrailingBit(-vec3<i32>(2147483647i, 67580i, -2147483647i))), vec4<u32>(var_0.a.x, var_6.c.x, 62892u, var_0.a.x ^ 51160u));
}

