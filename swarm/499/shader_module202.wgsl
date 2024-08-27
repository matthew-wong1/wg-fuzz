struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(6912u, 4294967295u)), Struct_1(vec2<u32>(42755u, 4294967295u)), Struct_1(vec2<u32>(72050u, 0u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(90489u, 11660u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(5182u, 0u)), Struct_1(vec2<u32>(0u, 24471u)), Struct_1(vec2<u32>(50730u, 0u)), Struct_1(vec2<u32>(25678u, 0u)), Struct_1(vec2<u32>(76494u, 3249u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(38334u, 73545u)), Struct_1(vec2<u32>(9975u, 4294967295u)), Struct_1(vec2<u32>(0u, 27497u)), Struct_1(vec2<u32>(7749u, 1u)), Struct_1(vec2<u32>(51929u, 4294967295u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(41632u, 45881u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(5080u, 0u)), Struct_1(vec2<u32>(15484u, 39204u)), Struct_1(vec2<u32>(15837u, 4294967295u)), Struct_1(vec2<u32>(14429u, 35596u)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec3<f32>(-188f, 534f, -610f), Struct_1(vec2<u32>(30824u, 1u)), Struct_1(vec2<u32>(4294967295u, 86193u))), Struct_2(vec3<f32>(637f, 1285f, 1503f), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(vec3<f32>(-344f, 366f, 449f), Struct_1(vec2<u32>(0u, 14816u)), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(vec3<f32>(1335f, -129f, 178f), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(4294967295u, 1u))), Struct_2(vec3<f32>(-482f, -115f, -754f), Struct_1(vec2<u32>(31758u, 60731u)), Struct_1(vec2<u32>(5998u, 61596u))), Struct_2(vec3<f32>(666f, -375f, 139f), Struct_1(vec2<u32>(1u, 17222u)), Struct_1(vec2<u32>(73109u, 63245u))), Struct_2(vec3<f32>(-1784f, 1983f, 2018f), Struct_1(vec2<u32>(0u, 25401u)), Struct_1(vec2<u32>(4294967295u, 1u))), Struct_2(vec3<f32>(-1462f, -755f, -1183f), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(77826u, 1u))), Struct_2(vec3<f32>(494f, 1088f, 389f), Struct_1(vec2<u32>(0u, 128605u)), Struct_1(vec2<u32>(4294967295u, 1u))), Struct_2(vec3<f32>(-695f, -231f, 1339f), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(23383u, 462u))), Struct_2(vec3<f32>(-1416f, -1000f, -606f), Struct_1(vec2<u32>(6710u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 0u))), Struct_2(vec3<f32>(-450f, 1113f, -1179f), Struct_1(vec2<u32>(11515u, 16122u)), Struct_1(vec2<u32>(1u, 61602u))), Struct_2(vec3<f32>(125f, 163f, 1000f), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(78948u, 7089u))), Struct_2(vec3<f32>(-1552f, -671f, 405f), Struct_1(vec2<u32>(15027u, 1u)), Struct_1(vec2<u32>(0u, 11086u))), Struct_2(vec3<f32>(-1517f, 572f, 1107f), Struct_1(vec2<u32>(1u, 4991u)), Struct_1(vec2<u32>(4294967295u, 0u))), Struct_2(vec3<f32>(-1070f, -1098f, 317f), Struct_1(vec2<u32>(15866u, 60667u)), Struct_1(vec2<u32>(1u, 4294967295u))), Struct_2(vec3<f32>(-220f, 396f, 808f), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(4294967295u, 74387u))), Struct_2(vec3<f32>(-187f, -2544f, -364f), Struct_1(vec2<u32>(0u, 43014u)), Struct_1(vec2<u32>(0u, 10261u))), Struct_2(vec3<f32>(1149f, 1564f, 324f), Struct_1(vec2<u32>(11461u, 22910u)), Struct_1(vec2<u32>(0u, 34961u))), Struct_2(vec3<f32>(-532f, 1168f, 1000f), Struct_1(vec2<u32>(0u, 59935u)), Struct_1(vec2<u32>(11758u, 4294967295u))), Struct_2(vec3<f32>(-299f, -642f, -1592f), Struct_1(vec2<u32>(4294967295u, 59u)), Struct_1(vec2<u32>(63290u, 0u))), Struct_2(vec3<f32>(1724f, 2160f, 1660f), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(0u, 20773u))), Struct_2(vec3<f32>(1783f, -932f, 1669f), Struct_1(vec2<u32>(14291u, 49289u)), Struct_1(vec2<u32>(1u, 1u))), Struct_2(vec3<f32>(417f, 1078f, -738f), Struct_1(vec2<u32>(93943u, 2049u)), Struct_1(vec2<u32>(1u, 0u))));

var<private> global3: Struct_2 = Struct_2(vec3<f32>(1329f, 1088f, 244f), Struct_1(vec2<u32>(0u, 32429u)), Struct_1(vec2<u32>(4294967295u, 0u)));

var<private> global4: vec2<u32> = vec2<u32>(30620u, 2261u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(-(abs(min(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(1576i, 9246i, u_input.c))) << (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, arg_0.a.x), vec3<u32>(1u, arg_0.a.x, 55801u)), countOneBits(vec3<u32>(u_input.a, 0u, 69510u))) % vec3<u32>(32u))), reverseBits(-vec3<i32>(0i, abs(u_input.c), 7267i)));
    let var_1 = abs(arg_0.a);
    var_0 = select(~min(-select(vec3<i32>(u_input.c, 10794i, var_0.x), vec3<i32>(var_0.x, -37574i, u_input.c), vec3<bool>(false, false, false)), vec3<i32>(1i ^ u_input.c, u_input.c << (1u % 32u), -2147483647i)), ~min(~vec3<i32>(u_input.c, u_input.c, 1i), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 37275i, u_input.c), vec3<i32>(-1469i, var_0.x, 30698i)), vec3<i32>(u_input.c, u_input.c, var_0.x) | vec3<i32>(-8717i, var_0.x, u_input.c))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), !any(vec3<bool>(false, true, true))), !select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), true), select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), !(global1.a.x <= 4294967295u), false)));
    var var_2 = vec3<u32>(select(1943u, ~_wgslsmith_clamp_u32(global1.a.x, ~0u, 4542u), var_1.x <= _wgslsmith_mod_u32(66751u, ~global1.a.x)), 55160u, var_1.x);
    let var_3 = !select(!vec4<bool>(global4.x < u_input.b, true, all(vec4<bool>(true, false, false, true)), false), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, all(vec4<bool>(false, true, false, false))), vec4<bool>(true, (var_0.x > u_input.c) | false, _wgslsmith_f_op_f32(-425f - 854f) <= _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_dot_vec2_u32(global3.b.a, vec2<u32>(global4.x, global3.c.a.x)) <= u_input.b));
    return u_input.c;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: u32) -> vec2<bool> {
    var var_0 = func_3(Struct_1(vec2<u32>(~_wgslsmith_add_u32(u_input.a, 64479u), 29073u)));
    global2 = array<Struct_2, 24>();
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1001f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global3.a.x)), 135f)))), global3.c, global0[_wgslsmith_index_u32(global4.x, 24u)]);
    global0 = array<Struct_1, 24>();
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(reverseBits(global4.x), arg_3, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 14643u, global4.x), vec3<u32>(14220u, global1.a.x, 4294967295u))), firstLeadingBit(vec3<u32>(countOneBits(39961u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, global4.x, 4294967295u), vec3<u32>(arg_3, global1.a.x, 36842u))))) ^ abs(~4294967295u), 24u)];
    return !vec2<bool>(all(select(select(vec4<bool>(arg_2.x, true, arg_2.x, false), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(true, false, true, arg_2.x), arg_2.x), arg_2.x == false)), any(select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = -(_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, -2147483647i, 747i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-18032i, -54442i, u_input.c)), select(firstLeadingBit(vec3<i32>(67530i, -1i, 1i)), reverseBits(vec3<i32>(u_input.c, u_input.c, -41575i)), arg_0.x)) | (vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 73088i), vec2<i32>(-2147483647i, u_input.c)), _wgslsmith_mult_i32(u_input.c, u_input.c)) & abs(firstLeadingBit(vec3<i32>(-13952i, 36657i, u_input.c)))));
    let var_1 = countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, min(1u, arg_2.c.a.x) << (select(61666u, 0u, arg_0.x) % 32u), ~min(arg_2.c.a.x, 4294967295u), global3.b.a.x), select(vec4<u32>(8023u, _wgslsmith_sub_u32(79357u, u_input.a), u_input.b, arg_2.b.a.x), select(vec4<u32>(9611u, 0u, u_input.b, 65840u) | vec4<u32>(0u, 1u, arg_1, global4.x), ~vec4<u32>(global3.b.a.x, u_input.a, global3.b.a.x, arg_1), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), !vec4<bool>(arg_0.x, true, arg_0.x, false)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1678u, 4294967295u, 4294967295u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 20095u, 24104u, 4294967295u), vec4<u32>(global4.x, 0u, 0u, arg_2.b.a.x)))));
    var var_2 = Struct_1(arg_2.c.a);
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, arg_1), 24u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a) - _wgslsmith_f_op_vec3_f32(-arg_2.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1309f, arg_2.a.x, arg_2.a.x))), arg_0.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(global3.c.a.x, 24u)];
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(global3.a, _wgslsmith_f_op_vec3_f32(func_4(func_2(26424i, arg_1, vec2<bool>(arg_0.x <= 1000f, true), _wgslsmith_div_u32(abs(arg_1.x), var_1)), ~(~1u), global2[_wgslsmith_index_u32(global1.a.x, 24u)]))));
    global2 = array<Struct_2, 24>();
    let var_3 = _wgslsmith_div_u32(reverseBits(~var_1), ~1u);
    return u_input.b ^ _wgslsmith_div_u32(~global3.c.a.x, global4.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = global2[_wgslsmith_index_u32(~select(global4.x, ~(u_input.b >> (max(global3.b.a.x, u_input.b) % 32u)), all(vec3<bool>(true, true, true))), 24u)];
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-460f, global3.a.x, false)))))), _wgslsmith_f_op_f32(ceil(343f))))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_0, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(15721i, arg_0.x, u_input.c, 30781i)), _wgslsmith_add_vec4_i32(select(arg_0, arg_0, vec4<bool>(true, true, true, false)), arg_0 & vec4<i32>(arg_0.x, 10282i, u_input.c, arg_0.x)))), 14844i);
    return Struct_1(vec2<u32>(func_1(vec4<f32>(-670f, _wgslsmith_f_op_f32(-global3.a.x), 838f, global3.a.x), vec2<u32>(~0u, 44957u)), global3.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<i32>(u_input.c >> (0u % 32u), _wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_add_i32(u_input.c, ~u_input.c), u_input.c) << (vec4<u32>(~_wgslsmith_mult_u32(4294967295u, global1.a.x), ~(~global4.x), func_1(vec4<f32>(-893f, global3.a.x, global3.a.x, global3.a.x), global1.a) >> (u_input.a % 32u), 70155u) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1198f) - _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(false, false), 4294967295u, Struct_2(global3.a, global0[_wgslsmith_index_u32(38597u, 24u)], global3.c))).x)))));
    var var_1 = 36378i;
    var var_2 = min(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(1797i), 8439i), min(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(1i, u_input.c)))), firstLeadingBit(vec2<i32>(u_input.c, -u_input.c)));
    var_0 = global3.b;
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(global3.a.x, -144f)), max(_wgslsmith_add_vec3_u32(vec3<u32>(16809u, 54049u, u_input.a), firstLeadingBit(vec3<u32>(0u, global4.x, 39411u))), ~vec3<u32>(var_0.a.x, global3.b.a.x, 13899u)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(global3.b.a.x, 4294967295u, global1.a.x), vec3<u32>(1u, 43326u << (global3.c.a.x % 32u), 1u)) % vec3<u32>(32u)), func_5(max(select(-vec4<i32>(2147483647i, u_input.c, 9384i, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(9964i, -11266i, 1i, 2147483647i), vec4<i32>(2147483647i, var_2.x, 9331i, 0i)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false)), -vec4<i32>(46672i, u_input.c, var_2.x, 719i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.a.yz)))).a.x, vec4<u32>(~1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(abs(4294967295u), 2094u), _wgslsmith_div_u32(~39248u, _wgslsmith_clamp_u32(var_0.a.x, 76904u, 1u))), u_input.a, global4.x));
}

