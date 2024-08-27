struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 20>;

var<private> global2: f32 = -1431f;

var<private> global3: array<f32, 22>;

var<private> global4: array<vec4<bool>, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    global3 = array<f32, 22>();
    var var_0 = any(vec3<bool>(any(arg_0.wx), false == any(!vec2<bool>(global0.d.a, arg_0.x)), true));
    var var_1 = -43857i & global0.b.c.x;
    let var_2 = global0.a;
    let var_3 = global1[_wgslsmith_index_u32(var_2.d ^ 1u, 20u)];
    return _wgslsmith_clamp_i32(~0i, global0.e, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-40610i, -5042i), var_3.a.c.yw, true), -(vec2<i32>(24142i, -3784i) ^ u_input.a.yz)), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(var_2.c.x), -8311i & u_input.a.x, ~var_3.b.c.x, ~19297i), var_2.c)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global2 = global0.b.b;
    let var_0 = vec2<u32>(~select(1u, arg_0.x, true != global0.a.a) >> (global0.a.d % 32u), abs(9595u));
    global2 = global3[_wgslsmith_index_u32(abs(14095u << ((var_0.x | arg_0.x) % 32u)), 22u)];
    global1 = array<Struct_2, 20>();
    var var_1 = func_3(vec4<bool>(true, false, (-121f < global0.b.b) | true, !global0.b.a));
    return Struct_2(global0.d, global0.a, _wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.c), vec3<f32>(-1728f, _wgslsmith_f_op_f32(select(global0.b.b, global0.b.b, global0.b.a)), _wgslsmith_f_op_f32(global0.c.x + global0.c.x))))), global0.a, -2147483647i >> ((~reverseBits(global0.d.d) | 8157u) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(global0.b.b, _wgslsmith_f_op_f32(round(global0.d.b)))), -211f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_3)))), arg_0.b.b))), func_2(vec4<u32>(arg_0.a.d ^ (1u << (1u % 32u)), 1u, select(~0u, global0.b.d, true), _wgslsmith_clamp_u32(0u, min(0u, 0u), 0u))).b);
    global3 = array<f32, 22>();
    global2 = 626f;
    let var_1 = vec2<bool>(any(vec3<bool>(arg_0.d.a, arg_0.d.a, true)), arg_0.a.a);
    var var_2 = _wgslsmith_sub_vec4_i32(~global0.d.c, abs(_wgslsmith_add_vec4_i32(arg_1.d.c, arg_0.d.c)));
    return func_2(max(vec4<u32>(countOneBits(var_0.c.d ^ arg_2.d), arg_0.a.d, reverseBits(0u), ~0u ^ select(arg_2.d, 4294967295u, var_0.a.a)), (vec4<u32>(arg_1.d.d, arg_2.d, 1u, arg_2.d) ^ ~vec4<u32>(var_0.c.d, var_0.c.d, global0.b.d, 1u)) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_2.d, 16741u, 82338u), vec4<u32>(arg_0.d.d, 1u, arg_0.a.d, 11075u)), vec4<u32>(var_0.c.d, arg_0.a.d, 0u, 22143u) & vec4<u32>(arg_1.d.d, arg_1.b.d, var_0.c.d, arg_0.d.d)) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> Struct_3 {
    global0 = func_2(abs(min(min(~vec4<u32>(31477u, arg_0.a.d, 4294967295u, 25205u), countOneBits(vec4<u32>(arg_0.a.d, 15757u, 58135u, arg_1))), countOneBits(vec4<u32>(59802u, 4294967295u, 0u, global0.a.d)))));
    let var_0 = func_2(_wgslsmith_add_vec4_u32(max(vec4<u32>(arg_1 << (87287u % 32u), ~4294967295u, arg_0.b.d, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.d, 79853u), vec2<u32>(55429u, 4294967295u))), select(vec4<u32>(arg_0.d.d, global0.b.d, global0.b.d, arg_0.a.d), vec4<u32>(0u, global0.d.d, 4294967295u, arg_0.d.d), vec4<bool>(false, true, arg_0.b.a, false)) | vec4<u32>(48073u, 47697u, 27606u, global0.b.d)), min(min(~vec4<u32>(global0.d.d, arg_1, arg_1, 4118u), vec4<u32>(global0.a.d, 35642u, 0u, arg_1)), vec4<u32>(59778u, reverseBits(global0.b.d), ~24551u, _wgslsmith_mult_u32(arg_0.d.d, arg_1))))).d;
    let var_1 = func_4(func_2(~(~(~vec4<u32>(38282u, var_0.d, 41590u, 66328u)))), global1[_wgslsmith_index_u32(var_0.d, 20u)], arg_0.d, _wgslsmith_f_op_f32(min(arg_2, -465f)));
    let var_2 = -func_2(~vec4<u32>(var_0.d, var_1.d.d | 0u, min(4294967295u, 11051u), arg_0.d.d << (28365u % 32u))).a.c.zxy;
    global4 = array<vec4<bool>, 13>();
    return Struct_3(Struct_1(any(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1833f, global0.d.b) * _wgslsmith_f_op_f32(min(-212f, global0.d.b)))), func_4(func_2(vec4<u32>(var_0.d, 10355u, var_0.d, 7371u) << (vec4<u32>(arg_0.a.d, var_0.d, 40665u, 33749u) % vec4<u32>(32u))), arg_0, func_2(vec4<u32>(global0.d.d, arg_0.a.d, 87654u, 23528u)).a, arg_2).b.c, global0.d.d), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_1.b.b) - _wgslsmith_f_op_f32(-arg_0.d.b)), 1f, 1025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.b, global0.a.b, arg_2, global3[_wgslsmith_index_u32(22562u, 22u)]))))))))), arg_0.a);
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    global2 = arg_2.b.x;
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) * _wgslsmith_f_op_f32(-122f + global3[_wgslsmith_index_u32(arg_0, 22u)])), global0.a.b, 634f, 1000f))));
    var var_1 = arg_2.c;
    let var_2 = func_2(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(global0.d.d, var_1.d, 0u, 42148u)) << (select(vec4<u32>(var_1.d, 0u, 9814u, arg_0), firstTrailingBit(vec4<u32>(2989u, 0u, global0.d.d, 0u)), true) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, global0.d.d, arg_0, var_1.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(106692u, arg_2.a.d, 4294967295u, var_1.d), vec4<u32>(arg_0, 55459u, global0.a.d, 47517u))))).d;
    var var_3 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 22u)]);
    return Struct_2(arg_2.a, Struct_1(all(select(vec3<bool>(true, var_2.a, var_2.a), !vec3<bool>(true, arg_2.a.a, arg_2.c.a), select(vec3<bool>(true, arg_1, true), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-537f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.b)), arg_2.b.x))), vec4<i32>(-62770i, 1i, select(arg_2.c.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-10523i, u_input.a.x, arg_2.c.c.x), var_2.c.zwy), true), 2147483647i ^ arg_2.c.c.x), _wgslsmith_dot_vec2_u32((vec2<u32>(global0.a.d, arg_2.c.d) ^ vec2<u32>(24285u, 24074u)) << (~vec2<u32>(var_2.d, var_2.d) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 71150u), vec2<u32>(arg_2.a.d, 1u)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 311f, -1197f)), vec3<f32>(global3[_wgslsmith_index_u32(arg_2.c.d, 22u)], -415f, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - 985f))), func_2(vec4<u32>(var_2.d, 15222u, 76545u, 1u)).b.b, _wgslsmith_f_op_f32(min(var_2.b, _wgslsmith_f_op_f32(abs(-1685f))))))), var_2, countOneBits(~(~u_input.a.x)) >> (var_1.d % 32u));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = global0.b.d & 29839u;
    global0 = func_6(_wgslsmith_mod_u32(var_0, 1u), !global0.b.a, func_5(func_4(func_2(vec4<u32>(1u, var_0, 0u, arg_2.d.d)), global1[_wgslsmith_index_u32(arg_2.b.d, 20u)], arg_2.a, _wgslsmith_f_op_f32(abs(arg_1))), 0u, -855f, vec4<i32>(arg_2.e, u_input.a.x, _wgslsmith_add_i32(i32(-1i) * -65037i, firstTrailingBit(arg_3)), min(0i, arg_2.b.c.x))));
    global2 = 1221f;
    global2 = -350f;
    global1 = array<Struct_2, 20>();
    return func_5(Struct_2(func_4(arg_2, Struct_2(arg_2.d, Struct_1(false, arg_0.x, vec4<i32>(-1i, 53010i, 2147483647i, 1i), 4294967295u), global0.c, global0.d, arg_3), Struct_1(global0.b.a, _wgslsmith_f_op_f32(-global0.b.b), vec4<i32>(-31930i, u_input.b, arg_2.e, 25150i), 17776u), -827f).a, func_4(arg_2, arg_2, Struct_1(any(vec3<bool>(arg_2.a.a, arg_2.b.a, global0.d.a)), func_2(vec4<u32>(arg_2.b.d, arg_2.a.d, global0.d.d, arg_2.b.d)).b.b, global0.b.c, _wgslsmith_div_u32(32378u, var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(global0.a.d, 22u)]))))).d, _wgslsmith_f_op_vec3_f32(max(arg_2.c, arg_0.zyx)), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(67772u, 84224u, arg_2.d.d, global0.d.d), ~vec4<u32>(21618u, 4294967295u, var_0, arg_2.a.d))).a, 17560i), 23188u, func_4(func_2(min(max(vec4<u32>(59184u, var_0, var_0, arg_2.b.d), vec4<u32>(global0.d.d, 16233u, 1u, 0u)), vec4<u32>(global0.b.d, arg_2.d.d, 4294967295u, 23360u) << (vec4<u32>(arg_2.b.d, 57842u, 75844u, global0.a.d) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, var_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.d.d, global0.d.d, arg_2.a.d), vec3<u32>(1u, 1u, 43504u))), 20u)], Struct_1(global0.d.a, _wgslsmith_f_op_f32(-func_4(global1[_wgslsmith_index_u32(global0.b.d, 20u)], Struct_2(arg_2.b, global0.b, arg_0.xxx, Struct_1(false, -1191f, vec4<i32>(arg_3, -28232i, arg_3, 8864i), arg_2.a.d), -2147483647i), Struct_1(global0.b.a, 456f, vec4<i32>(-16549i, u_input.a.x, -2147483647i, global0.b.c.x), 3591u), -614f).a.b), -(~u_input.a), func_5(func_6(8325u, true, Struct_3(Struct_1(arg_2.d.a, -1000f, vec4<i32>(global0.a.c.x, 13170i, arg_2.e, -7981i), arg_2.d.d), arg_0, Struct_1(global0.b.a, arg_0.x, arg_2.a.c, 149564u))), ~var_0, func_6(11422u, false, Struct_3(Struct_1(global0.a.a, global0.a.b, global0.a.c, 0u), arg_0, arg_2.d)).c.x, -global0.d.c).c.d), func_4(func_6(countOneBits(arg_2.b.d), global0.a.a, func_5(global1[_wgslsmith_index_u32(11268u, 20u)], var_0, 2369f, vec4<i32>(33525i, arg_2.e, -32974i, u_input.a.x))), arg_2, func_4(global1[_wgslsmith_index_u32(~global0.a.d, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], Struct_1(arg_2.a.a, global0.b.b, vec4<i32>(u_input.b, u_input.b, 4150i, -53156i), arg_2.a.d), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_2.d.d, 22u)] - arg_1)).b, _wgslsmith_f_op_f32(sign(385f))).d.b).d.b, vec4<i32>(-arg_2.e << (abs(func_4(Struct_2(Struct_1(false, global3[_wgslsmith_index_u32(global0.b.d, 22u)], arg_2.a.c, 49063u), arg_2.a, global0.c, global0.d, -10191i), global1[_wgslsmith_index_u32(13794u, 20u)], global0.d, 747f).d.d) % 32u), global0.e, 50841i, func_4(Struct_2(func_4(arg_2, Struct_2(Struct_1(true, arg_2.b.b, vec4<i32>(global0.e, -2147483647i, arg_2.b.c.x, -24658i), 17730u), arg_2.d, global0.c, global0.a, 1i), arg_2.d, 1276f).a, func_4(Struct_2(Struct_1(global0.a.a, arg_0.x, u_input.a, 0u), global0.b, arg_2.c, global0.d, u_input.a.x), Struct_2(Struct_1(false, arg_2.b.b, vec4<i32>(arg_3, u_input.a.x, 15064i, 0i), 4294967295u), arg_2.a, arg_2.c, Struct_1(false, -995f, u_input.a, 108049u), u_input.b), Struct_1(arg_2.a.a, global0.d.b, global0.b.c, var_0), arg_1).d, func_6(arg_2.b.d, arg_2.a.a, Struct_3(arg_2.d, vec4<f32>(1209f, global3[_wgslsmith_index_u32(var_0, 22u)], 164f, arg_1), Struct_1(global0.d.a, arg_0.x, vec4<i32>(2147483647i, global0.e, 2147483647i, global0.e), global0.b.d))).c, func_6(3324u, global0.b.a, Struct_3(global0.a, arg_0, arg_2.b)).a, arg_2.d.c.x & 28108i), func_2(firstLeadingBit(vec4<u32>(0u, var_0, 48202u, var_0))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))).a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    global3 = array<f32, 22>();
    var var_1 = var_0.c.x;
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(802f, 1147f, global0.a.b, var_0.b))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(799f, global0.d.b, global3[_wgslsmith_index_u32(global0.b.d, 22u)], global0.a.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -984f, -597f, -166f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-374f, 1544f, global0.a.b, 540f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(377f, global0.a.b, global3[_wgslsmith_index_u32(4294967295u, 22u)], global0.b.b))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(0u, var_0.d), _wgslsmith_mult_u32(var_0.d, 36453u)), 13u)]))), 491f, global1[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(global0.a.d, global0.a.d))), 20u)], -(~u_input.b));
    var var_3 = vec4<i32>(global0.a.c.x, i32(-1i) * -1i, -(u_input.a.x | -var_2.c.c.x), ~(_wgslsmith_mod_i32(~var_2.c.c.x, var_2.a.c.x >> (23980u % 32u)) & (max(var_2.a.c.x, 0i) >> (~var_0.d % 32u))));
    var var_4 = vec2<f32>(global0.c.x, global0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 22u)]))))));
}

