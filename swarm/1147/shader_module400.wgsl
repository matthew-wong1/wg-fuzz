struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<u32, 9> = array<u32, 9>(45488u, 116961u, 0u, 18829u, 1u, 4294967295u, 0u, 1u, 15000u);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(4294967295u, 15567u, 1u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = Struct_2(Struct_1(countOneBits(~global2.a)), _wgslsmith_div_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(12949i, -1i, u_input.a.x, 8215i), vec4<i32>(-2147483647i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(1i, -52062i, u_input.a.x, u_input.b)), max(vec4<i32>(u_input.b, -12494i, 2147483647i, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 6403i)), true), ~abs(vec4<i32>(1i, 29241i, u_input.a.x, 0i))) | vec4<i32>(u_input.a.x, ~u_input.a.x, 1i & (u_input.b ^ u_input.a.x), abs(u_input.b) >> (1u % 32u)), vec4<bool>(false, false, all(!select(arg_0, vec2<bool>(false, arg_0.x), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(546f, 1380f) * 245f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1015f, 1224f)))), global0[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(~global2.a.x, _wgslsmith_mod_u32(0u, 59815u))), 23u)]);
    let var_1 = var_0;
    let var_2 = var_0.d;
    let var_3 = min(121881u, ~28511u);
    global0 = array<Struct_1, 23>();
    return _wgslsmith_clamp_u32(8190u | _wgslsmith_mod_u32(~_wgslsmith_mod_u32(global2.a.x, 1u), var_1.a.a.x), _wgslsmith_dot_vec3_u32(~(vec3<u32>(global2.a.x, 40558u, var_3) | (var_2.a ^ vec3<u32>(global2.a.x, global1[_wgslsmith_index_u32(1u, 9u)], var_1.d.a.x))), ~(~global2.a | vec3<u32>(4294967295u, 0u, 38801u))), var_0.a.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(firstTrailingBit(~vec3<u32>(min(arg_2.a.x, 4294967295u), global2.a.x | global2.a.x, func_3(vec2<bool>(false, false)))));
    global1 = array<u32, 9>();
    let var_1 = var_0.a.x;
    let var_2 = Struct_1(~(~vec3<u32>(~0u, 76023u, 0u)));
    let var_3 = vec4<u32>(global2.a.x, min(global1[_wgslsmith_index_u32(var_0.a.x, 9u)], ~(~1u)), ~1u, 0u) | (vec4<u32>(4294967295u, 4294967295u, firstTrailingBit(4294967295u), 32806u) | vec4<u32>(4294967295u, firstTrailingBit(~0u), firstTrailingBit(firstLeadingBit(var_0.a.x)), ~var_1));
    return Struct_2(arg_2, ~countOneBits(vec4<i32>(-arg_1, arg_1, u_input.b, countOneBits(3355i))), !vec4<bool>(false, _wgslsmith_f_op_f32(floor(-1000f)) <= -979f, true, 1u != (arg_2.a.x >> (3170u % 32u))), Struct_1(arg_2.a));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    global2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-245f - arg_0) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0, arg_0, arg_1.c.x)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(241f))))), _wgslsmith_div_i32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1436f, 735f))), arg_3, arg_1.a, vec2<bool>(true, true)).b.x, 1i), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 1004f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-436f, 1000f) * vec2<f32>(1245f, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(sign(775f)), _wgslsmith_f_op_f32(-arg_0)), !arg_1.c.xw)), arg_1.b.x, Struct_1(~(~arg_1.d.a)), !vec2<bool>(arg_1.c.x, arg_1.c.x)).a, vec2<bool>(true, firstTrailingBit(~(-54064i)) < ~(-16109i))).d;
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(ceil(arg_0))))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(abs(arg_0)), arg_0 == 113f)))), 36913i, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(-1000f * -637f)), vec2<f32>(-210f, _wgslsmith_f_op_f32(f32(-1f) * -232f))), -arg_2.x, Struct_1(~arg_1.a.a), !(!(!arg_1.c.zz))).d, vec2<bool>(any(vec2<bool>(select(false, arg_1.c.x, arg_1.c.x), select(true, true, arg_1.c.x))), arg_1.c.x)).d;
    let var_1 = _wgslsmith_f_op_f32(arg_0 - arg_0);
    let var_2 = _wgslsmith_div_vec2_i32(abs(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.x, -1i), vec2<i32>(arg_1.b.x, arg_1.b.x)))), _wgslsmith_div_vec2_i32(arg_1.b.xx, arg_2.xy | firstTrailingBit(arg_2.xz)));
    global2 = Struct_1(~(global2.a >> (~arg_1.d.a % vec3<u32>(32u))));
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    global1 = array<u32, 9>();
    global0 = array<Struct_1, 23>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~global2.a.x, 23u)], max(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b, -2147483647i, -2147483647i), vec4<i32>(u_input.a.x, arg_2, arg_2, -6359i)) ^ vec4<i32>(13165i, 23356i, 2199i, arg_2), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1i, u_input.b, arg_2), vec4<i32>(0i, -2147483647i, -23559i, arg_2)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(43063u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25360u, 9u)], 9u)], 4294967295u, 4294967295u), vec4<u32>(14353u, global1[_wgslsmith_index_u32(4979u, 9u)], 1855u, global1[_wgslsmith_index_u32(0u, 9u)])) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, arg_2, u_input.a.x, -1i), vec4<i32>(u_input.a.x, arg_2, u_input.a.x, 2147483647i)))), firstLeadingBit(firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, arg_2))))), vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_add_vec3_u32(~global2.a, _wgslsmith_div_vec3_u32(global2.a, global2.a) << ((vec3<u32>(52228u, 97863u, global2.a.x) ^ global2.a) % vec3<u32>(32u)))));
    let var_1 = Struct_2(func_2(arg_1, -(~min(u_input.b, -2147483647i)), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, -242f), vec2<f32>(-908f, -873f))), _wgslsmith_div_i32(-11440i, -23552i ^ var_0.b.x), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1285f, arg_1.x) + vec2<f32>(-1566f, -120f)), i32(-1i) * -1i, global0[_wgslsmith_index_u32(var_0.d.a.x, 23u)], !var_0.c.yz).a, vec2<bool>(true, all(var_0.c.wy))).d, var_0.c.zy).d, -(select(firstLeadingBit(vec4<i32>(u_input.a.x, 1i, 21295i, var_0.b.x)), vec4<i32>(arg_2, u_input.a.x, u_input.b, -1i), any(var_0.c.zyy)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(69279u, 4294967295u, global1[_wgslsmith_index_u32(1u, 9u)], var_0.d.a.x), vec4<u32>(global2.a.x, 1u, global1[_wgslsmith_index_u32(1u, 9u)], 112475u) & vec4<u32>(32151u, var_0.d.a.x, 46465u, global2.a.x)) % vec4<u32>(32u))), var_0.c, global0[_wgslsmith_index_u32(47976u, 23u)]);
    var var_2 = reverseBits(max(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, 27993u, global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.a.a.x), vec4<u32>(var_1.d.a.x, 1u, global2.a.x, var_0.d.a.x)), vec4<u32>(global1[_wgslsmith_index_u32(global2.a.x, 9u)], 4294967295u, 30527u, 0u) | vec4<u32>(var_0.d.a.x, 43761u, global1[_wgslsmith_index_u32(46915u, 9u)], 1u)), vec4<u32>(~var_0.a.a.x, var_0.d.a.x, 58714u, abs(var_1.a.a.x))), select(vec4<u32>(1u, 4294967295u, var_1.d.a.x, var_0.a.a.x) & vec4<u32>(global1[_wgslsmith_index_u32(13609u, 9u)], global2.a.x, global1[_wgslsmith_index_u32(43606u, 9u)], 0u), ~(~vec4<u32>(global1[_wgslsmith_index_u32(global2.a.x, 9u)], var_1.a.a.x, 4294967295u, 4294967295u)), !var_0.c.x)));
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~select(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global2.a.x, 9u)], 9u)], ~1u, !(!(2147483647i > u_input.b))), 23u)];
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -680f) * _wgslsmith_f_op_f32(2471f - -980f))) - -1732f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(694f)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) * _wgslsmith_f_op_f32(arg_0 - -1168f)), func_2(vec2<f32>(1407f, 1509f), i32(-1i) * -35537i, global0[_wgslsmith_index_u32(73417u >> (global2.a.x % 32u), 23u)], vec2<bool>(true, true)), countOneBits(vec4<i32>(2147483647i, -1i, -13926i, u_input.a.x)), 1i))), 1i);
    global0 = array<Struct_1, 23>();
    let var_2 = firstTrailingBit(0u);
    var_1 = Struct_2(var_1.d, var_1.b >> (~(~(~vec4<u32>(var_0.a.x, 59602u, 1u, 0u))) % vec4<u32>(32u)), vec4<bool>(any(!select(vec4<bool>(true, var_1.c.x, true, true), var_1.c, vec4<bool>(var_1.c.x, var_1.c.x, true, var_1.c.x))), select(!(!var_1.c.x), 1u == (0u & var_2), var_1.c.x), all(!(!var_1.c.yzx)), all(vec4<bool>(true, false, var_1.c.x && var_1.c.x, false))), var_1.a);
    return Struct_1(vec3<u32>(var_1.d.a.x, _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76920u, 9u)], 9u)], 9u)], var_2), 40699u) >> (select(vec3<u32>(var_2, 6182u | global2.a.x, 0u), _wgslsmith_sub_vec3_u32(~var_0.a, global2.a), func_5(arg_0, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-441f, 539f), vec2<f32>(-914f, -1036f))), 48269i).c.x) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-205f);
    let var_1 = vec4<f32>(-404f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-475f, -1801f)))), _wgslsmith_f_op_f32(abs(1673f))), -1066f, _wgslsmith_div_f32(-1319f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(745f)), _wgslsmith_f_op_f32(-3080f - -1094f), true)), _wgslsmith_f_op_f32(trunc(-655f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(var_1.wxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -984f), 738f, _wgslsmith_f_op_f32(sign(var_1.x))))), var_1.x != _wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, var_1.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(760f, var_2.x))), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(var_2.zy - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), vec2<f32>(320f, -1225f))))), vec2<f32>(-711f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1770f, 1000f))))), u_input.b, global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~105718u | global2.a.x, 9u)], 23u)], vec2<bool>(true, true));
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f - var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(var_2.x))) * _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-165f)) * _wgslsmith_f_op_f32(-1190f - -192f)) - var_1.x))));
    let var_5 = select(select(func_5(_wgslsmith_f_op_f32(-1000f - -1902f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_4.xy, var_2.zx)), 1i).c.xz, vec2<bool>(var_3.c.x, !var_3.c.x), var_3.c.x), !vec2<bool>(var_3.c.x, all(select(var_3.c.yxw, var_3.c.yww, true))), !(!(!(-1048f < var_1.x))));
    var var_6 = var_3.c.x;
    var var_7 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.a.a.xz & var_0.a.xy, _wgslsmith_div_vec2_u32(var_3.d.a.zx, var_3.d.a.yy)), ~var_3.d.a.yz));
}

