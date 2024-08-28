struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), 1i, -1i);

var<private> global2: i32;

var<private> global3: Struct_4 = Struct_4(false);

var<private> global4: i32 = 41905i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    global1 = select(~(~firstTrailingBit(vec4<i32>(global0.c, 0i, global1.x, -69574i))), vec4<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a.x, 1i), abs(global1.x), global1.x), abs(u_input.a.x) >= (i32(-1i) * -46773i)) | _wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(29755i, global1.x, u_input.a.x, 39279i)), vec4<i32>(max(firstTrailingBit(-15192i), 5659i), global1.x, -abs(global1.x), u_input.a.x));
    let var_0 = global0.d;
    var var_1 = !(!(!vec3<bool>(false, !global3.a, global3.a)));
    let var_2 = -1i;
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(var_2, ~2147483647i), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(~global0.b, abs(vec3<i32>(global0.b.x, var_2, var_2)))), _wgslsmith_sub_i32(1i, ~47995i << (1u % 32u)), ~global0.c), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, -8558i), global1.yz), 38668i, _wgslsmith_mod_i32(u_input.a.x, -777i), _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yy)) >> (reverseBits(global0.d) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, global1.x, global1.x), vec4<i32>(-2147483647i, var_2, 10744i, -32277i)), vec4<i32>(global1.x, 2445i, global1.x, var_2) ^ vec4<i32>(global0.b.x, u_input.a.x, -2147483647i, global0.c))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1337f + -316f) - _wgslsmith_f_op_f32(min(1213f, 1459f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) - _wgslsmith_f_op_f32(f32(-1f) * -790f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(741f * 164f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1834f)) + 164f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1163f, 512f)), -1008f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1113f, 196f, 605f) - vec3<f32>(509f, -236f, 1333f)) * vec3<f32>(-1309f, 830f, 963f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-256f, -1000f, 905f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -548f, -773f))), select(select(vec3<bool>(var_1.x, global3.a, var_1.x), vec3<bool>(global3.a, global3.a, var_1.x), global3.a), vec3<bool>(true, global3.a, var_1.x), var_1.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1702f, 1399f, 414f) + vec3<f32>(1000f, 1000f, 2612f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(253f, 1057f, 573f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, 1764f, -1089f)))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: f32) -> Struct_5 {
    global4 = global0.c;
    global3 = Struct_4(global3.a);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), vec3<f32>(arg_2, -1334f, 652f)) - vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x * 109f), arg_2));
    let var_1 = Struct_2(Struct_1(global0.a, vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-27923i, global1.x), u_input.a.yz), 43504i, _wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(0i, global1.x))), select(arg_1.xwx, _wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_1.x, arg_1.x), vec3<i32>(2147483647i, global0.c, arg_1.x)) >> ((arg_0.xxy << (vec3<u32>(arg_0.x, 1u, arg_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)), select(!vec3<bool>(global3.a, true, global3.a), !vec3<bool>(true, global3.a, global3.a), select(vec3<bool>(global3.a, true, true), vec3<bool>(global3.a, global3.a, false), global3.a)))), Struct_1(~20445u, countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(53247i, 2147483647i, global1.x) ^ u_input.a, vec3<i32>(1i, global0.b.x, -1i) << (vec3<u32>(global0.a, global0.d.x, arg_0.x) % vec3<u32>(32u)))), vec3<i32>(i32(-1i) * -10199i, (global1.x & 36813i) & 51700i, select(_wgslsmith_div_i32(u_input.a.x, global0.b.x), _wgslsmith_dot_vec4_i32(arg_1, arg_1), false))), ~(~abs(global0.d.zx) >> (arg_0.zy % vec2<u32>(32u))));
    let var_2 = ~(firstLeadingBit(64147u >> (~4294967295u % 32u)) & (global0.d.x << (~max(var_1.b.a, 20891u) % 32u)));
    return Struct_5(var_1, select(vec2<bool>(true, true), !select(select(vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, true), vec2<bool>(true, global3.a)), !vec2<bool>(global3.a, true), !vec2<bool>(global3.a, global3.a)), global3.a), _wgslsmith_f_op_f32(ceil(1307f)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<u32>) -> Struct_5 {
    let var_0 = arg_0.c;
    var var_1 = 1u == arg_2.x;
    var var_2 = arg_1.c;
    global0 = Struct_3(global0.a, vec3<i32>(arg_0.a.a.b.x >> (22173u % 32u), func_2(vec4<u32>(~48803u, ~20551u, _wgslsmith_add_u32(arg_1.a.b.a, arg_0.a.b.a), 1u), vec4<i32>(func_2(vec4<u32>(global0.d.x, 0u, 25286u, 24794u), vec4<i32>(2147483647i, arg_1.a.a.c.x, -25337i, 32966i), 566f).a.a.b.x, 0i, 38601i, select(global1.x, global1.x, true)), 1000f).a.b.b.x, u_input.a.x), countOneBits(~(~global0.b.x)) & abs(arg_1.a.b.c.x), global0.d);
    var var_3 = arg_1.a.b;
    return func_2(~(~global0.d), ~(-(~vec4<i32>(0i, u_input.a.x, global1.x, 0i))), -433f);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5) -> Struct_3 {
    global0 = arg_0;
    return Struct_3(abs(51057u ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, 1u, global0.a), vec3<u32>(4294967295u, arg_0.d.x, arg_0.a)), select(arg_1.a.b.a, 0u, true))), vec3<i32>(arg_0.c, _wgslsmith_mod_i32(u_input.a.x >> (global0.a % 32u), _wgslsmith_mult_i32(-13005i, 1i)), ~1i) >> (global0.d.xzy % vec3<u32>(32u)), u_input.a.x, global0.d);
}

fn func_1(arg_0: bool) -> vec4<u32> {
    let var_0 = Struct_4(global3.a);
    var var_1 = -205f;
    global2 = _wgslsmith_mult_i32(~global0.b.x, global0.c);
    global0 = func_5(Struct_3(~_wgslsmith_mod_u32(firstTrailingBit(4186u), firstLeadingBit(112972u)), vec3<i32>(-61109i, u_input.a.x, u_input.a.x) << (~vec3<u32>(8817u, 103913u, 82319u) % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(u_input.a.xz, global1.xy), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(39346u, 1u, 1u, global0.d.x), global0.d), _wgslsmith_add_vec4_u32(~global0.d, vec4<u32>(global0.a, global0.d.x, 54562u, global0.d.x)))), func_4(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 57089u, 56507u, 1u) << (global0.d % vec4<u32>(32u)), vec4<u32>(global0.a, global0.a, global0.a, 1465u)), vec4<i32>(firstTrailingBit(global0.c), ~1i, ~(-2147483647i), _wgslsmith_mod_i32(global0.c, u_input.a.x)), 1000f), func_2(global0.d, vec4<i32>(-global0.c, global0.b.x, global0.c | 2147483647i, firstTrailingBit(global1.x)), -1000f), ~abs(vec2<u32>(global0.d.x, global0.a))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0.d, global0.d), ~vec4<u32>(8082u, 1u, global0.d.x, 22743u)), 46662u), 1u), ~((global0.a << (global0.d.x % 32u)) >> (global0.a % 32u)) ^ select(~(~1u), max(90075u, global0.a) >> (1u % 32u), !(!var_0.a)));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(4294967295u, u_input.a, global0.c, max(_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(global0.d, global0.d)), ~(~vec4<u32>(global0.a, 120006u, global0.a, 1u))), func_1(global3.a)));
    global0 = func_5(func_5(func_5(Struct_3(_wgslsmith_sub_u32(4294967295u, global0.a), ~vec3<i32>(-62037i, 1i, 11419i), select(global0.b.x, global1.x, global3.a), global0.d), Struct_5(func_2(global0.d, vec4<i32>(28238i, u_input.a.x, global0.c, -2147483647i), 1000f).a, vec2<bool>(false, false), _wgslsmith_f_op_f32(abs(272f)))), Struct_5(func_2(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a, 1u, global0.d.x, global0.d.x), vec4<u32>(global0.a, 27004u, 59123u, 2630u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -1i, global0.b.x, -1452i), vec4<i32>(12474i, 2147483647i, global1.x, global1.x)), _wgslsmith_f_op_f32(677f + -756f)).a, select(!vec2<bool>(global3.a, global3.a), vec2<bool>(true, true), true), 1621f)), Struct_5(Struct_2(func_2(vec4<u32>(global0.a, global0.a, global0.a, 1u), vec4<i32>(-33511i, global0.c, global1.x, 47356i), _wgslsmith_f_op_f32(612f - -261f)).a.b, func_2(vec4<u32>(0u, 1u, 49778u, global0.d.x), vec4<i32>(0i, global1.x, 2147483647i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -282f)).a.b, reverseBits(~vec2<u32>(global0.a, global0.d.x))), func_4(func_2(vec4<u32>(1u, 23711u, 90508u, 36768u), firstTrailingBit(vec4<i32>(global1.x, global0.c, 49796i, global1.x)), _wgslsmith_f_op_f32(-1039f + -141f)), Struct_5(Struct_2(Struct_1(global0.a, vec3<i32>(-32373i, -54201i, 1i), vec3<i32>(-2147483647i, global0.c, -2147483647i)), Struct_1(global0.d.x, vec3<i32>(-35736i, global0.c, global0.b.x), vec3<i32>(global1.x, 28638i, global1.x)), global0.d.zz), select(vec2<bool>(global3.a, false), vec2<bool>(false, true), global3.a), _wgslsmith_f_op_f32(-318f + 1299f)), ~countOneBits(global0.d.xz)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f + _wgslsmith_f_op_f32(floor(1000f))))));
    global3 = Struct_4(true);
    global2 = func_2(global0.d, _wgslsmith_sub_vec4_i32(select(vec4<i32>(~(-29301i), reverseBits(global1.x), _wgslsmith_div_i32(-7104i, 14763i), _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(-1i, -1i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 2147483647i, -36806i, -2147483647i), vec4<i32>(-2147483647i, global1.x, 311i, -50928i), vec4<i32>(global1.x, global1.x, global0.c, u_input.a.x)), vec4<i32>(51280i, 24081i, u_input.a.x, -10105i), ~vec4<i32>(-5372i, global1.x, -2147483647i, u_input.a.x)), vec4<bool>(false | global3.a, true, global3.a, 1i >= global0.c)), select(abs(vec4<i32>(1i, 1i, 1i, 1i)), reverseBits(abs(vec4<i32>(global1.x, 55251i, global1.x, -19851i))), (global1.x != global1.x) | global3.a)), -629f).a.b.b.x;
    let var_0 = Struct_1(_wgslsmith_div_u32(~(~0u), global0.d.x), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 66226i) ^ vec3<i32>(-6167i, 1i, 2147483647i), _wgslsmith_add_vec3_i32(-global1.yxz, u_input.a)), -(~(~(-global1.wxw))));
    global3 = Struct_4(true);
    let var_1 = 1u;
    var var_2 = global3.a;
    var_2 = _wgslsmith_f_op_vec3_f32(func_3()).x >= -1425f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a | 1u, ~min(global1.wyx ^ vec3<i32>(1i, u_input.a.x, 15675i), min(vec3<i32>(global0.c, 8118i, -11908i), vec3<i32>(-1i, 1i, global1.x))) | ~global1.wyw, var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -135f), -352f, func_4(Struct_5(Struct_2(var_0, Struct_1(36895u, vec3<i32>(u_input.a.x, -5718i, -1i), vec3<i32>(var_0.b.x, 0i, -2147483647i)), vec2<u32>(36460u, 75066u)), vec2<bool>(global3.a, global3.a), -614f), func_4(Struct_5(Struct_2(Struct_1(4294967295u, vec3<i32>(var_0.b.x, u_input.a.x, global1.x), vec3<i32>(global1.x, 15475i, -38360i)), var_0, vec2<u32>(64413u, 44339u)), vec2<bool>(global3.a, false), 1000f), Struct_5(Struct_2(Struct_1(var_1, vec3<i32>(-1i, global1.x, u_input.a.x), var_0.b), Struct_1(var_1, vec3<i32>(-37423i, 65486i, -1i), vec3<i32>(var_0.c.x, 21610i, u_input.a.x)), vec2<u32>(var_0.a, var_1)), vec2<bool>(global3.a, false), -893f), vec2<u32>(var_1, var_0.a)), global0.d.yx).c, _wgslsmith_f_op_f32(func_4(Struct_5(Struct_2(var_0, Struct_1(global0.d.x, global0.b, vec3<i32>(global1.x, -25783i, var_0.c.x)), vec2<u32>(0u, var_1)), vec2<bool>(true, global3.a), -917f), Struct_5(Struct_2(Struct_1(global0.d.x, vec3<i32>(2147483647i, global0.c, var_0.c.x), vec3<i32>(global1.x, -4489i, global0.c)), Struct_1(global0.d.x, vec3<i32>(-20986i, global1.x, global1.x), global0.b), global0.d.xx), vec2<bool>(true, global3.a), 1000f), global0.d.xx).c + _wgslsmith_f_op_f32(abs(-403f))))), abs(-select(global1.xww, vec3<i32>(-1i, 1i, u_input.a.x), global3.a & global3.a)));
}

