struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-15407i, i32(-2147483648));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true));

var<private> global3: f32 = -1539f;

var<private> global4: Struct_3 = Struct_3(Struct_1(vec2<f32>(-630f, 1434f), vec2<i32>(-1i, -1i), 9531i, 1433f), 770f, vec2<u32>(48745u, 9053u), Struct_2(vec3<i32>(0i, -1i, i32(-2147483648)), vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(-30803i, 1i, 2147483647i), vec4<bool>(true, true, true, false)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_2) -> Struct_5 {
    return Struct_5(arg_0.b.x, arg_0, ~global4.c.x, global4.a, arg_0.a.x);
}

fn func_3(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = global4.d;
    var var_1 = all(!select(var_0.b.www, vec3<bool>(global1.x, global1.x, false), var_0.b.x)) | (var_0.b.x && global1.x);
    global4 = Struct_3(global4.a, global4.a.d, select(~u_input.a.ww, ~(~_wgslsmith_div_vec2_u32(u_input.a.yz, global4.c)), vec2<bool>(false, global1.x)), func_2(global4.d).b, Struct_2(-(~vec3<i32>(-2147483647i, 2147483647i, global4.d.a.x)) & var_0.a, !(!global2[_wgslsmith_index_u32(u_input.a.x, 7u)])));
    var_1 = _wgslsmith_dot_vec4_u32(max(~u_input.a, u_input.a), firstLeadingBit(~abs(vec4<u32>(global4.c.x, global4.c.x, 46382u, 4294967295u)))) >= u_input.a.x;
    var var_2 = Struct_2(firstLeadingBit(-min(select(vec3<i32>(global4.d.a.x, var_0.a.x, -66926i), var_0.a, vec3<bool>(false, global1.x, global1.x)), var_0.a >> (arg_0 % vec3<u32>(32u)))), select(vec4<bool>(var_0.b.x, global1.x, false, any(vec3<bool>(global4.d.b.x, false, global1.x))), var_0.b, !((global4.c.x | u_input.b) != abs(u_input.a.x))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.d, global4.b, 2336f, -450f) - vec4<f32>(global4.b, 790f, global4.b, global4.b)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f - -725f), _wgslsmith_f_op_f32(-global4.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1412f, 292f)), _wgslsmith_f_op_f32(max(global4.a.a.x, global4.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b, global4.a.a.x, 355f, 450f)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: vec4<f32>) -> Struct_5 {
    let var_0 = Struct_4(-1105f);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f - _wgslsmith_f_op_f32(f32(-1f) * -1977f))) * func_2(func_2(Struct_2(vec3<i32>(-41161i, u_input.c.x, 1i), global4.d.b)).b).d.d) - func_2(func_2(global4.d).b).d.a.x);
    var var_1 = global4.d.b;
    var var_2 = _wgslsmith_div_f32(1597f, -253f);
    global1 = arg_1.b.b.zw;
    return arg_1;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = select(~select(~vec4<i32>(arg_0.e, 1i, u_input.d, arg_0.d.c), ~(-vec4<i32>(0i, global0.x, u_input.d, global4.e.a.x)), vec4<bool>(false, !arg_0.b.b.x, global1.x, true)), vec4<i32>(func_2(global4.d).d.b.x, arg_0.e, _wgslsmith_mult_i32(~(-1i), arg_1.e), abs(i32(-1i) * -2147483647i) & _wgslsmith_dot_vec4_i32(~vec4<i32>(30880i, 23878i, arg_1.e, -2147483647i), firstLeadingBit(vec4<i32>(-2147483647i, -18914i, u_input.c.x, u_input.c.x)))), true);
    let var_1 = select(vec3<bool>(global1.x, true, false), func_2(func_2(arg_1.b).b).b.b.yxy, arg_0.a);
    var var_2 = Struct_2(var_0.xzy, !(!select(!arg_0.b.b, vec4<bool>(true, arg_1.b.b.x, global4.d.b.x, true), select(vec4<bool>(var_1.x, global1.x, var_1.x, false), global4.e.b, arg_0.b.b.x))));
    global4 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-767f - 114f))), vec2<i32>(~select(-25959i, 1i, arg_0.b.b.x), func_2(func_2(Struct_2(vec3<i32>(2147483647i, var_0.x, var_0.x), vec4<bool>(false, var_2.b.x, global4.d.b.x, arg_0.b.b.x))).b).b.a.x), -func_4(global4.c ^ vec2<u32>(u_input.a.x, 4294967295u), arg_0, !var_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.a.x, arg_1.d.a.x, arg_0.d.d, global4.b) - vec4<f32>(global4.a.a.x, arg_1.d.d, arg_0.d.d, arg_0.d.a.x))).e, arg_0.d.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.d)), vec2<u32>(_wgslsmith_mod_u32(~arg_3 | u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(14088u, 0u, 1u, 42697u), u_input.a), vec4<u32>(4294967295u, 1u, arg_3, u_input.b))), ~50425u), Struct_2(~(var_0.wyz >> (u_input.a.zww % vec3<u32>(32u))), global2[_wgslsmith_index_u32(u_input.b, 7u)]), Struct_2(-(~abs(var_0.xxw)), vec4<bool>(abs(arg_0.c) < 25576u, any(vec4<bool>(true, false, global4.d.b.x, arg_0.a)), true, any(func_2(Struct_2(var_2.a, vec4<bool>(true, true, var_2.b.x, var_2.b.x))).b.b))));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(114f, arg_0.d.d) + arg_1.d.a.x), 207f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -423f))), _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(22218u, arg_3, _wgslsmith_dot_vec4_u32(abs(u_input.a), u_input.a)))).x);
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.d.a), u_input.c, global4.d.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-392f * arg_1.d.d), _wgslsmith_f_op_f32(-1390f - 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(101f * -2078f) + _wgslsmith_f_op_f32(abs(var_3.x))), _wgslsmith_sub_vec2_u32(~global4.c ^ (vec2<u32>(arg_1.c, arg_0.c) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(19111u, 23611u), vec2<u32>(4294967295u, arg_1.c), u_input.a.zw) % vec2<u32>(32u))), global4.c), Struct_2(var_0.wxw << (select(u_input.a.zyx, u_input.a.wyy, func_4(vec2<u32>(25696u, 4294967295u), arg_0, var_2.b, vec4<f32>(1384f, -588f, arg_0.d.a.x, arg_0.d.d)).b.b.wxx) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(global4.c.x & arg_3, 7u)]), arg_1.b);
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = func_5(func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(0u), max(1u, 48847u)), global4.c), func_2(global4.e), func_2(func_2(func_2(global4.d).b).b).b.b, _wgslsmith_f_op_vec4_f32(func_3(u_input.a.yxz))), func_4(~global4.c, Struct_5(select(true, true, false) & (global4.a.d > global4.a.a.x), global4.d, global4.c.x, global4.a, global4.d.a.x), vec4<bool>(arg_0.x & arg_0.x, all(global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), func_2(func_4(vec2<u32>(4294967295u, global4.c.x), Struct_5(true, Struct_2(vec3<i32>(-2147483647i, global0.x, 2147483647i), vec4<bool>(false, arg_0.x, false, arg_0.x)), u_input.b, Struct_1(vec2<f32>(625f, global4.a.a.x), vec2<i32>(0i, global4.d.a.x), 0i, global4.b), -2147483647i), arg_0, vec4<f32>(global4.a.a.x, 1537f, -1375f, 629f)).b).b.b.x, any(select(vec4<bool>(false, arg_0.x, true, global4.e.b.x), vec4<bool>(false, false, global4.e.b.x, false), global2[_wgslsmith_index_u32(u_input.b, 7u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(644f, 526f, 1011f, global4.a.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2755f, global4.b, 2137f, -465f)))), 43105u, 0u);
    let var_1 = _wgslsmith_f_op_f32(round(1137f));
    var var_2 = any(arg_0);
    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(~var_0.e.a, var_0.d.a >> (u_input.a.ywx % vec3<u32>(32u))), -2147483647i, max(-1195i, 7107i)) >> (vec3<u32>(_wgslsmith_add_u32(44531u, max(1u, global4.c.x)), firstTrailingBit(firstLeadingBit(var_0.c.x)), 23831u) % vec3<u32>(32u)), vec3<i32>(-1i, -1i, countOneBits(18776i)));
    var var_4 = func_2(func_4(reverseBits(u_input.a.zy), func_2(Struct_2(var_0.d.a, vec4<bool>(true, false, var_0.e.b.x, global4.e.b.x))), arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.a.x, u_input.b, global4.c.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(157f, 492f, global4.a.a.x, var_0.a.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 1000f, var_0.a.d, -281f)), !vec4<bool>(global1.x, var_0.e.b.x, global1.x, global1.x))))).b).b.b.yzz;
    return select(func_2(var_0.e).b.b, !func_5(func_2(global4.d), func_4(var_0.c, func_4(vec2<u32>(0u, global4.c.x), Struct_5(false, Struct_2(vec3<i32>(global0.x, 0i, 1i), global2[_wgslsmith_index_u32(4294967295u, 7u)]), u_input.b, global4.a, -1i), vec4<bool>(true, arg_0.x, var_0.d.b.x, var_0.d.b.x), vec4<f32>(-1175f, var_1, global4.a.d, 1319f)), global4.d.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, -626f, global4.a.d, 452f) * vec4<f32>(var_0.b, var_0.a.d, var_1, global4.a.a.x))), countOneBits(abs(u_input.a.x)), abs(u_input.b >> (global4.c.x % 32u))).d.b, u_input.a.x < abs(abs(_wgslsmith_add_u32(77629u, var_0.c.x))));
}

fn func_6(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(global4.a.a, -vec2<i32>(reverseBits(global0.x), 1i), _wgslsmith_add_i32(global0.x, ~0i), _wgslsmith_f_op_f32(-1567f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.b))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.d - 561f) * _wgslsmith_f_op_f32(445f - 1f)), global4.b)), vec2<u32>(0u, u_input.a.x), global4.d, global4.e);
    var var_1 = vec3<u32>(var_0.c.x, var_0.c.x, global4.c.x);
    var var_2 = global4.a.a.x;
    var var_3 = var_0.b;
    var_1 = firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(min(var_0.c.x, var_0.c.x), 1u, _wgslsmith_mod_u32(var_0.c.x, 84137u)) | (vec3<u32>(14793u, 0u, u_input.b) & select(vec3<u32>(44337u, 446u, u_input.a.x), u_input.a.xwx, var_0.d.b.xzx)), ~(~vec3<u32>(global4.c.x, 1u, 1u)) << (u_input.a.wyy % vec3<u32>(32u))));
    return Struct_4(var_0.a.d);
}

fn func_7(arg_0: Struct_4, arg_1: i32, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = func_5(Struct_5(((global4.a.b.x ^ global0.x) < _wgslsmith_add_i32(u_input.c.x, global4.a.c)) == global1.x, func_5(Struct_5(global4.d.b.x, global4.d, firstLeadingBit(arg_2.x), Struct_1(global4.a.a, vec2<i32>(global0.x, global0.x), -1i, 855f), 61679i), func_4(vec2<u32>(u_input.b, 0u) | arg_2.yy, func_2(Struct_2(global4.e.a, global4.d.b)), vec4<bool>(global1.x, true, global4.d.b.x, true), vec4<f32>(446f, arg_0.a, 468f, 933f)), 1u, u_input.b).e, u_input.b, global4.a, arg_1), Struct_5(true, func_2(Struct_2(-global4.d.a, global2[_wgslsmith_index_u32(1u, 7u)])).b, 11692u, global4.a, -39890i), u_input.b, max(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(global4.c.x), _wgslsmith_sub_u32(106554u, u_input.a.x)), ~vec2<u32>(global4.c.x, u_input.a.x) ^ arg_2.yx), countOneBits(1u)));
    let var_1 = Struct_3(Struct_1(global4.a.a, ~(~(vec2<i32>(2147483647i, global4.a.b.x) >> (vec2<u32>(105u, u_input.a.x) % vec2<u32>(32u)))), 13717i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1110f, arg_0.a))), global4.a.a.x, firstTrailingBit(abs(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global4.c.x, global4.c.x), var_0.c), var_0.c))), Struct_2(min(vec3<i32>(26916i, _wgslsmith_sub_i32(0i, global0.x), _wgslsmith_mod_i32(arg_1, arg_1)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 2147483647i, u_input.d), vec3<i32>(88112i, u_input.c.x, -1i))), vec4<bool>(true, -1000f >= global4.a.d, var_0.e.b.x, true)), global4.d);
    global4 = Struct_3(func_5(func_2(Struct_2(~vec3<i32>(-55161i, var_1.a.b.x, -2147483647i), vec4<bool>(var_0.d.b.x, false, true, global1.x))), Struct_5(global1.x & !var_0.d.b.x, Struct_2(vec3<i32>(var_0.a.c, u_input.d, arg_1), !vec4<bool>(var_1.e.b.x, true, var_0.d.b.x, false)), global4.c.x, func_2(func_4(var_1.c, Struct_5(global4.e.b.x, Struct_2(vec3<i32>(global0.x, 24550i, 12901i), var_1.e.b), arg_2.x, var_0.a, global0.x), vec4<bool>(true, global1.x, global1.x, var_1.d.b.x), vec4<f32>(global4.a.d, var_0.b, 497f, var_0.b)).b).d, global0.x), 31572u, 1545u).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f * -1302f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1317f * -515f) + 1f)), firstTrailingBit(_wgslsmith_mult_vec2_u32(~firstTrailingBit(var_0.c), _wgslsmith_add_vec2_u32(vec2<u32>(global4.c.x, 0u), vec2<u32>(global4.c.x, u_input.b)))), func_4(global4.c, Struct_5(global4.d.b.x, var_1.d, 1u, func_5(Struct_5(true, var_0.e, var_0.c.x, var_0.a, -18953i), func_2(Struct_2(vec3<i32>(-28083i, -33349i, 0i), var_1.d.b)), _wgslsmith_mult_u32(41598u, var_1.c.x), 1u).a, _wgslsmith_sub_i32(var_1.e.a.x, global0.x << (u_input.a.x % 32u))), func_2(func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(36366u, var_0.c.x), arg_2.yz), Struct_5(false, Struct_2(vec3<i32>(-418i, var_1.a.b.x, var_1.a.b.x), global2[_wgslsmith_index_u32(44206u, 7u)]), var_1.c.x, Struct_1(var_1.a.a, var_0.d.a.xz, var_0.d.a.x, -1176f), var_0.e.a.x), !global4.e.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 1511f, 1010f, global4.b) * vec4<f32>(-395f, global4.b, arg_0.a, global4.b))).b).b.b, vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(~u_input.a.wzw)).x, -877f, _wgslsmith_f_op_f32(-206f - -489f), _wgslsmith_f_op_f32(-arg_0.a))).b, var_0.e);
    let var_2 = _wgslsmith_dot_vec3_u32(arg_2, arg_2);
    var var_3 = func_5(Struct_5(true, var_1.e, select(_wgslsmith_div_u32(4635u, reverseBits(4294967295u)), 1u, false), var_0.a, abs(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(2147483647i, 41340i, -2147483647i)), -vec3<i32>(global4.d.a.x, var_1.d.a.x, var_0.d.a.x)))), func_2(func_5(Struct_5(false, func_2(var_1.d).b, 0u, Struct_1(vec2<f32>(var_0.b, -853f), vec2<i32>(global0.x, -4781i), u_input.c.x, -351f), ~31877i), Struct_5(func_5(Struct_5(false, var_0.e, 0u, var_0.a, global4.d.a.x), Struct_5(var_1.d.b.x, Struct_2(var_1.d.a, global2[_wgslsmith_index_u32(var_2, 7u)]), 4294967295u, Struct_1(vec2<f32>(arg_0.a, arg_0.a), u_input.c, -26367i, -489f), 38401i), var_1.c.x, 0u).d.b.x, Struct_2(global4.e.a, var_1.d.b), reverseBits(var_1.c.x), Struct_1(vec2<f32>(global4.a.d, global4.b), vec2<i32>(var_0.e.a.x, -1i), -20689i, 1000f), global4.d.a.x), 0u, func_5(Struct_5(true, Struct_2(vec3<i32>(-2147483647i, var_0.e.a.x, -2147483647i), var_0.e.b), 4294967295u, Struct_1(vec2<f32>(-1296f, -817f), var_1.a.b, var_1.a.b.x, -188f), -35340i), func_2(var_1.e), var_2, firstTrailingBit(var_1.c.x)).c.x).d), min(var_0.c.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(60753u, var_2), 1u)), 87060u).e.b;
    return !var_1.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 7>();
    var var_0 = !select(select(select(!vec4<bool>(global1.x, true, global4.e.b.x, true), global2[_wgslsmith_index_u32(select(11631u, 1u, global4.e.b.x), 7u)], !global4.e.b.x), global2[_wgslsmith_index_u32(36502u, 7u)], vec4<bool>(true, global4.e.b.x, global4.d.b.x != global4.e.b.x, global4.a.a.x >= -1000f)), func_7(func_6(func_1(vec4<bool>(global4.e.b.x, false, true, true))), -global0.x, ~vec3<u32>(global4.c.x, global4.c.x, 70609u)), global4.d.b);
    var var_1 = -1000f;
    var var_2 = func_5(func_4(global4.c, Struct_5(global1.x, global4.e, ~_wgslsmith_clamp_u32(41694u, u_input.a.x, global4.c.x), global4.a, global4.a.b.x), !(!func_1(global4.d.b)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f * global4.a.a.x)), 528f, -583f)), func_2(Struct_2(_wgslsmith_div_vec3_i32(max(vec3<i32>(global0.x, 2076i, global0.x), vec3<i32>(39304i, global0.x, global4.a.b.x)), min(global4.e.a, vec3<i32>(global4.e.a.x, global4.a.b.x, 48713i))), global4.d.b)), global4.c.x, global4.c.x);
    let var_3 = reverseBits(~u_input.a);
    global2 = array<vec4<bool>, 7>();
    var var_4 = var_2.a;
    global2 = array<vec4<bool>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -848f), func_5(func_2(Struct_2(~var_2.d.a, func_1(global2[_wgslsmith_index_u32(global4.c.x, 7u)]))), func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, var_3.x), var_2.c) << (firstLeadingBit(u_input.a.wx) % vec2<u32>(32u)), Struct_5(select(global4.d.b.x, global1.x, false), var_2.e, global4.c.x, func_5(Struct_5(true, var_2.d, var_2.c.x, Struct_1(vec2<f32>(var_2.a.a.x, var_2.a.a.x), u_input.c, -22896i, var_4.a.x), var_2.a.c), Struct_5(var_0.x, Struct_2(vec3<i32>(-34787i, -38221i, global4.d.a.x), vec4<bool>(global1.x, global1.x, global1.x, false)), 4294967295u, var_2.a, var_2.a.c), var_2.c.x, 46641u).a, -1i), func_1(vec4<bool>(var_0.x, global1.x, global1.x, global1.x)), vec4<f32>(_wgslsmith_f_op_f32(round(-963f)), 1200f, _wgslsmith_f_op_f32(global4.a.d * global4.a.d), var_2.a.d)), 4294967295u, global4.c.x).b, -var_4.c);
}

