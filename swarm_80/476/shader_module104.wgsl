struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: array<Struct_2, 16>;

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(11233i, i32(-2147483648), -19765i, -1i), vec4<i32>(36831i, -1i, 2147483647i, -1i), vec4<i32>(81598i, -80191i, -6611i, 2147483647i), vec4<i32>(-2309i, 1i, 1i, 9142i), vec4<i32>(1i, 36492i, -10971i, 27169i), vec4<i32>(-4754i, 0i, -22314i, 1i), vec4<i32>(i32(-2147483648), 0i, 32009i, 0i), vec4<i32>(-22008i, -1i, 46642i, 62819i));

var<private> global3: f32;

var<private> global4: f32 = -869f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> bool {
    global1 = array<Struct_2, 16>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-214f, arg_1, false)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -491f), -287f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_1, 993f, arg_1)))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, -411f, 414f, arg_1))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(round(399f)), arg_1))), ~(u_input.d >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(arg_0.x, u_input.c)) % vec2<u32>(32u))));
    let var_1 = var_0.b.x;
    var var_2 = Struct_2(arg_0.x, Struct_1(var_0.a, firstLeadingBit(-min(vec2<i32>(-1i, u_input.e), global0[_wgslsmith_index_u32(u_input.c, 22u)]))));
    var_2 = global1[_wgslsmith_index_u32(u_input.c, 16u)];
    return !all(vec3<bool>(false, true, var_2.b.a.x > arg_1));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1449f));
    var var_0 = global1[_wgslsmith_index_u32(1u, 16u)];
    let var_1 = 1u;
    let var_2 = vec3<bool>(select(true, any(vec3<bool>(true, true, true)), !select(u_input.c > 0u, true, true)), true && select(true, func_3(vec3<u32>(4294967295u, var_0.a, var_1) >> (vec3<u32>(var_0.a, var_0.a, var_1) % vec3<u32>(32u)), arg_0.x), select(true, func_3(vec3<u32>(13265u, 3596u, var_0.a), var_0.b.a.x), true)), false);
    var var_3 = var_0.b;
    return Struct_3(~_wgslsmith_mult_vec2_u32(max(vec2<u32>(4294967295u, var_1), ~vec2<u32>(u_input.c, 52929u)), firstTrailingBit(vec2<u32>(0u, u_input.c) >> (vec2<u32>(var_0.a, 10348u) % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a) - var_3.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), vec4<f32>(-473f, 561f, arg_0.x, arg_0.x))))), var_3.b | u_input.d), true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(36789u, var_1), 16u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = arg_1.a;
    return arg_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = arg_2.d.b.a.x;
    global2 = array<vec4<i32>, 8>();
    var var_1 = func_4(func_2(arg_0), func_2(_wgslsmith_f_op_vec3_f32(-arg_1.d.b.a.xxz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1827f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + arg_2.d.b.a.x), _wgslsmith_f_op_f32(arg_1.d.b.a.x + 530f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -1000f) + arg_1.d.b.a.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.b.a.x, 629f, 1196f)) + _wgslsmith_f_op_vec3_f32(ceil(arg_2.b.a.yxx))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-235f, arg_2.d.b.a.x, arg_1.b.a.x), vec3<f32>(-1544f, var_0, 360f))))))));
    let var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(105f)) * -555f)), var_1.d.b.a.x)).d.b;
    var var_3 = func_4(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(var_2.a.x, -223f, var_1.d.b.a.x))) + arg_2.d.b.a.zwy)), func_4(Struct_3(vec2<u32>(abs(26125u), _wgslsmith_sub_u32(arg_2.a.x, 67270u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1105f, 348f, 2454f, var_2.a.x) - vec4<f32>(-1448f, var_2.a.x, 363f, arg_1.b.a.x)), ~vec2<i32>(77922i, 2147483647i)), var_1.c, Struct_2(1u, func_2(var_1.b.a.xzw).b)), func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 2365f, 214f))), func_4(func_4(arg_2, arg_1, vec3<f32>(var_0, var_2.a.x, arg_2.b.a.x)), Struct_3(vec2<u32>(arg_1.d.a, arg_1.d.a), var_1.d.b, true, Struct_2(arg_1.d.a, Struct_1(vec4<f32>(286f, arg_0.x, 768f, arg_0.x), vec2<i32>(arg_2.b.b.x, arg_1.b.b.x)))), var_2.a.zyw), _wgslsmith_f_op_vec3_f32(select(var_1.d.b.a.zyw, _wgslsmith_f_op_vec3_f32(var_1.b.a.zxy - vec3<f32>(var_1.b.a.x, -162f, 1585f)), select(vec3<bool>(false, var_1.c, arg_2.c), vec3<bool>(arg_1.c, false, false), arg_1.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1535f, var_1.b.a.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(228f, arg_2.d.b.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), -526f), func_2(_wgslsmith_f_op_vec3_f32(var_2.a.yxy - arg_2.b.a.xzy)).d.b.a.x)));
    return ~(~(_wgslsmith_mult_u32(4294967295u, arg_2.a.x) & min(21199u, 22889u)) | 85413u);
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = -1i;
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    let var_1 = func_4(func_4(Struct_3(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3.d.a, arg_3.a.x, 4294967295u), vec4<u32>(arg_1, u_input.c, 4294967295u, arg_1)), _wgslsmith_mod_u32(30257u, u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(sign(arg_3.b.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(48415i, -2147483647i), u_input.d)), arg_2 & arg_3.c, Struct_2(~arg_3.d.a, Struct_1(vec4<f32>(179f, 648f, 1256f, 108f), vec2<i32>(43420i, 18214i)))), Struct_3(arg_0, func_4(Struct_3(vec2<u32>(arg_0.x, 4294967295u), Struct_1(vec4<f32>(arg_3.d.b.a.x, 484f, -396f, arg_3.d.b.a.x), vec2<i32>(arg_3.b.b.x, 1i)), true, Struct_2(u_input.c, Struct_1(vec4<f32>(-1397f, arg_3.d.b.a.x, arg_3.d.b.a.x, arg_3.b.a.x), arg_3.b.b))), func_2(arg_3.b.a.zzy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d.b.a.x, arg_3.d.b.a.x, -1486f))).d.b, any(select(vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(arg_2, arg_3.c, arg_2, arg_2), arg_2)), arg_3.d), _wgslsmith_f_op_vec3_f32(arg_3.d.b.a.zzx + vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(max(arg_3.d.b.a.x, -1026f)), -544f))), arg_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-825f, arg_3.d.b.a.x, -1615f) * vec3<f32>(arg_3.b.a.x, 538f, -744f)))) * _wgslsmith_f_op_vec3_f32(arg_3.b.a.wxy + _wgslsmith_f_op_vec3_f32(vec3<f32>(-102f, -1639f, 666f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(743f, arg_3.d.b.a.x, 462f), vec3<f32>(arg_3.b.a.x, arg_3.d.b.a.x, -1710f), vec3<bool>(arg_2, arg_2, arg_3.c)))))));
    global4 = func_4(Struct_3(~vec2<u32>(arg_0.x, _wgslsmith_div_u32(u_input.c, 19385u)), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3.d.b.a.xww, vec3<f32>(var_1.d.b.a.x, 1547f, arg_3.b.a.x), vec3<bool>(false, true, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1193f, -1335f, arg_3.b.a.x)))).d.b, any(vec2<bool>(true, !arg_2)), func_4(arg_3, var_1, _wgslsmith_div_vec3_f32(vec3<f32>(512f, var_1.d.b.a.x, 1135f), _wgslsmith_f_op_vec3_f32(arg_3.d.b.a.zzw - var_1.d.b.a.wyw))).d), func_2(_wgslsmith_f_op_vec3_f32(-arg_3.b.a.zzw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_3.d.b.a.wxx))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(861f, var_1.b.a.x)), _wgslsmith_f_op_f32(-1501f * 878f)))))).d.b.a.x;
    return 112075u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~u_input.c) >> (func_5(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(28621u, 1u))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(307f, -536f, 1334f) - vec3<f32>(-1503f, -1024f, 135f)), Struct_3(vec2<u32>(u_input.c, u_input.c), Struct_1(vec4<f32>(-702f, -1189f, -566f, -504f), u_input.d), true, global1[_wgslsmith_index_u32(u_input.c, 16u)]), Struct_3(vec2<u32>(u_input.c, u_input.c), Struct_1(vec4<f32>(-156f, 429f, 1257f, 737f), vec2<i32>(u_input.a.x, u_input.a.x)), false, global1[_wgslsmith_index_u32(u_input.c, 16u)])), true, Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<f32>(769f, 229f, 512f, 228f), vec2<i32>(u_input.e, 45647i)), true, Struct_2(54972u, Struct_1(vec4<f32>(1038f, 662f, 1506f, 830f), vec2<i32>(u_input.a.x, 24800i))))) % 32u), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-477f, -1279f, 531f), vec3<f32>(917f, -711f, 372f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(-1000f * 764f), _wgslsmith_f_op_f32(ceil(-1000f))))).d.b);
    var var_1 = _wgslsmith_f_op_f32(exp2(var_0.b.a.x));
    var var_2 = var_0.b;
    global4 = var_2.a.x;
    var_0 = global1[_wgslsmith_index_u32(u_input.c, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b.a.zww)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.a.zww * var_2.a.yxy)) * var_2.a.yxy))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(680f, _wgslsmith_f_op_f32(sign(var_2.a.x)))), vec3<u32>(4294967295u, ~(~(u_input.c >> (1u % 32u))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, var_0.b.a.x, var_2.a.x) * vec3<f32>(-1000f, var_0.b.a.x, var_2.a.x)) + _wgslsmith_f_op_vec3_f32(abs(var_2.a.yxx))), Struct_3(vec2<u32>(var_0.a, u_input.c), Struct_1(vec4<f32>(var_2.a.x, -519f, var_0.b.a.x, -1542f), vec2<i32>(var_0.b.b.x, 2147483647i)), true, global1[_wgslsmith_index_u32(func_5(vec2<u32>(u_input.c, var_0.a), 0u, false, Struct_3(vec2<u32>(var_0.a, u_input.c), Struct_1(var_0.b.a, global0[_wgslsmith_index_u32(var_0.a, 22u)]), true, Struct_2(1u, var_0.b))), 16u)]), func_4(func_4(Struct_3(vec2<u32>(u_input.c, var_0.a), var_0.b, true, Struct_2(u_input.c, Struct_1(var_2.a, vec2<i32>(u_input.e, u_input.e)))), Struct_3(vec2<u32>(u_input.c, var_0.a), Struct_1(var_0.b.a, vec2<i32>(var_0.b.b.x, 25205i)), false, Struct_2(4294967295u, Struct_1(var_2.a, var_0.b.b))), var_2.a.wzw), Struct_3(vec2<u32>(var_0.a, 4294967295u), Struct_1(var_2.a, vec2<i32>(u_input.e, 1i)), true, Struct_2(1u, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2429f, -1052f))))));
}

