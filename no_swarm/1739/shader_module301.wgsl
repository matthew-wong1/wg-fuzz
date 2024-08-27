struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-388f, -742f, -395f, -894f, 1592f, 891f, 1310f, 1286f, -1459f);

var<private> global1: Struct_5 = Struct_5(vec3<f32>(474f, 1000f, -1687f), -8144i, -164f, vec2<f32>(-391f, 1039f));

var<private> global2: Struct_5;

var<private> global3: array<vec2<i32>, 27>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_3.a;
    let var_1 = var_0.c;
    let var_2 = !(!arg_3.d.x);
    var var_3 = Struct_4(~(~arg_2.d), arg_2.a.zz, Struct_3(arg_2.c.a, vec3<u32>(~firstTrailingBit(arg_2.a.x), 0u, arg_2.d.x)), vec3<u32>(((14250u >> (arg_3.b.a.x % 32u)) | ~1u) << (firstLeadingBit(~1u) % 32u), u_input.c, 8174u));
    var var_4 = arg_3.a;
    return arg_2.c;
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-3474f, -665f))), arg_0.a.b.x)), global2.a.x, func_2(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x + -631f)), Struct_4(vec3<u32>(1u, u_input.d, 0u), arg_0.b.yz, func_2(-1i, 1057f, Struct_4(vec3<u32>(1179u, 51707u, arg_0.a.a.x), arg_0.b.yy, Struct_3(Struct_1(arg_0.b, global1.a, vec4<i32>(0i, global1.b, 1i, 19404i), u_input.a.zz), vec3<u32>(0u, u_input.c, 11766u)), vec3<u32>(u_input.d, u_input.d, 0u)), Struct_2(Struct_1(vec3<u32>(arg_0.a.a.x, u_input.c, 4294967295u), vec3<f32>(global2.c, -491f, global2.a.x), vec4<i32>(global2.b, -2271i, 66778i, -19936i), arg_0.a.d), arg_0.a, global2.a, vec3<bool>(true, false, false))), ~arg_0.b), Struct_2(arg_0.a, func_2(0i, global2.c, Struct_4(vec3<u32>(u_input.d, 0u, arg_0.a.a.x), vec2<u32>(arg_0.b.x, u_input.c), Struct_3(arg_0.a, arg_0.b), arg_0.a.a), Struct_2(Struct_1(vec3<u32>(arg_0.b.x, u_input.d, u_input.d), global1.a, vec4<i32>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, -1i), vec2<i32>(0i, 40904i)), Struct_1(vec3<u32>(1u, 75716u, 57797u), vec3<f32>(arg_0.a.b.x, global2.c, -411f), arg_0.a.c, vec2<i32>(u_input.e.x, global2.b)), global1.a, vec3<bool>(false, true, true))).a, vec3<f32>(arg_0.a.b.x, global2.a.x, arg_0.a.b.x), vec3<bool>(true, true, true))).a.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, reverseBits(0i) >> (1u % 32u), global1.b), _wgslsmith_clamp_vec3_i32(u_input.e, abs(vec3<i32>(1i, global2.b, global2.b)), vec3<i32>(u_input.b >> (25787u % 32u), ~arg_0.a.d.x, 0i | global1.b))), arg_0.a.b.x, _wgslsmith_f_op_vec2_f32(-arg_0.a.b.xx));
    let var_0 = _wgslsmith_mod_u32(~firstLeadingBit(_wgslsmith_sub_u32(1u & arg_0.b.x, 1u)), ~(~u_input.d));
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(-(min(global1.b, 20924i) ^ abs(-32951i)), _wgslsmith_div_i32(arg_0.a.c.x, arg_0.a.c.x), firstLeadingBit(-(~(-1i)))), arg_0.a.c.x, -2147483647i);
    var var_2 = -1837f;
    var var_3 = func_2(_wgslsmith_dot_vec4_i32(arg_0.a.c, (vec4<i32>(-1i, -20303i, global1.b, var_1.x) >> (~vec4<u32>(var_0, 9657u, 0u, 37772u) % vec4<u32>(32u))) << (~firstTrailingBit(vec4<u32>(0u, u_input.d, var_0, 31395u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-842f + _wgslsmith_f_op_f32(-func_2(global2.b, global0[_wgslsmith_index_u32(u_input.d, 9u)], Struct_4(vec3<u32>(arg_0.b.x, arg_0.a.a.x, 18721u), vec2<u32>(1u, u_input.c), Struct_3(arg_0.a, arg_0.b), arg_0.a.a), Struct_2(Struct_1(vec3<u32>(arg_0.b.x, u_input.d, arg_0.b.x), global1.a, vec4<i32>(var_1.x, 31007i, 91235i, global2.b), u_input.e.zy), Struct_1(arg_0.a.a, vec3<f32>(global2.d.x, global0[_wgslsmith_index_u32(var_0, 9u)], global2.d.x), arg_0.a.c, global3[_wgslsmith_index_u32(u_input.c, 27u)]), vec3<f32>(1269f, -383f, 1000f), vec3<bool>(true, false, false))).a.b.x))), Struct_4(select(_wgslsmith_mod_vec3_u32(countOneBits(arg_0.b), arg_0.b), _wgslsmith_sub_vec3_u32(arg_0.a.a, _wgslsmith_add_vec3_u32(arg_0.a.a, arg_0.b)), !any(vec3<bool>(false, true, false))), _wgslsmith_mult_vec2_u32(vec2<u32>(~arg_0.b.x, ~arg_0.b.x), arg_0.a.a.yx), Struct_3(func_2(_wgslsmith_div_i32(var_1.x, global2.b), _wgslsmith_f_op_f32(abs(global2.c)), Struct_4(vec3<u32>(96573u, var_0, var_0), vec2<u32>(4294967295u, 60154u), arg_0, vec3<u32>(var_0, arg_0.b.x, 120380u)), Struct_2(Struct_1(arg_0.b, vec3<f32>(370f, -161f, 400f), vec4<i32>(global2.b, -17408i, u_input.b, u_input.a.x), u_input.a.xx), Struct_1(arg_0.a.a, vec3<f32>(global2.a.x, arg_0.a.b.x, global2.c), vec4<i32>(var_1.x, -47096i, 1i, u_input.e.x), arg_0.a.d), vec3<f32>(global1.c, global0[_wgslsmith_index_u32(u_input.d, 9u)], -1510f), vec3<bool>(false, true, true))).a, _wgslsmith_sub_vec3_u32(arg_0.b, vec3<u32>(1u, var_0, 49290u)) & select(vec3<u32>(arg_0.a.a.x, 74805u, u_input.d), arg_0.b, vec3<bool>(true, true, false))), ~arg_0.b ^ arg_0.a.a), Struct_2(Struct_1(~arg_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, global1.a.x, 1285f)), -select(arg_0.a.c, arg_0.a.c, true), _wgslsmith_sub_vec2_i32(firstLeadingBit(global3[_wgslsmith_index_u32(var_0, 27u)]), vec2<i32>(-15979i, arg_0.a.c.x))), Struct_1(vec3<u32>(1u, arg_0.a.a.x, u_input.d), vec3<f32>(global0[_wgslsmith_index_u32(abs(var_0), 9u)], _wgslsmith_f_op_f32(step(1315f, -690f)), _wgslsmith_f_op_f32(-global2.a.x)), vec4<i32>(arg_0.a.c.x, _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-530i, -1i, var_1.x)), reverseBits(2147483647i), global1.b >> (34967u % 32u)), abs(~vec2<i32>(global2.b, 3406i))), _wgslsmith_f_op_vec3_f32(-arg_0.a.b), select(vec3<bool>(all(vec4<bool>(false, true, false, true)), false, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-190f, _wgslsmith_f_op_f32(trunc(-1000f)), -584f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1814f, -1000f, -1324f), global1.a))))) - arg_0.a.b);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_5, arg_3: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1216f, _wgslsmith_f_op_f32(359f * global0[_wgslsmith_index_u32(1u, 9u)]), global2.c, _wgslsmith_f_op_f32(-1270f - 273f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, -1496f, 670f, arg_2.a.x))), true))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), -534f, _wgslsmith_f_op_f32(-1001f - _wgslsmith_f_op_f32(arg_2.d.x - global1.d.x)), _wgslsmith_f_op_f32(sign(999f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, global2.d.x, global0[_wgslsmith_index_u32(u_input.d, 9u)], 928f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1826f, -867f, -1000f, global2.a.x), vec4<f32>(global1.c, global1.d.x, global1.a.x, -553f))))))));
    let var_1 = -112f;
    var var_2 = 930f;
    let var_3 = global2.d.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global2.a, vec3<f32>(global1.a.x, var_1, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(func_2(39426i, global0[_wgslsmith_index_u32(arg_3.x, 9u)], Struct_4(vec3<u32>(arg_3.x, 1u, 94226u), arg_3, Struct_3(Struct_1(vec3<u32>(arg_3.x, 43456u, u_input.c), global1.a, vec4<i32>(arg_0, -3550i, global1.b, -1i), vec2<i32>(-24617i, global2.b)), vec3<u32>(arg_1, 0u, 0u)), vec3<u32>(21264u, arg_1, 0u)), Struct_2(Struct_1(vec3<u32>(arg_3.x, 1u, 1u), arg_2.a, vec4<i32>(arg_0, 3342i, 2297i, u_input.e.x), global3[_wgslsmith_index_u32(61011u, 27u)]), Struct_1(vec3<u32>(u_input.c, 0u, arg_3.x), vec3<f32>(global2.c, global2.d.x, global2.d.x), vec4<i32>(6059i, -7655i, arg_0, u_input.e.x), u_input.a.yy), global1.a, vec3<bool>(false, true, true))))) + global1.a))));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.c, 299f)) * 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(vec3<u32>(43682u, u_input.d, u_input.d), global1.a, vec4<i32>(arg_1.x, -1i, arg_1.x, -1i), arg_1), vec3<u32>(40892u, u_input.c, u_input.d)))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1324f, -1280f, 1599f)), vec3<f32>(-682f, global0[_wgslsmith_index_u32(u_input.c, 9u)], -1362f), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 415f, global1.d.x)) - _wgslsmith_f_op_vec3_f32(arg_2 * global1.a)))), firstLeadingBit(~(~min(0i, global2.b))), arg_0, _wgslsmith_f_op_vec2_f32(sign(arg_2.xx)));
    global2 = Struct_5(global2.a, global2.b, 226f, arg_2.zx);
    global0 = array<f32, 9>();
    global2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(global1.a))))), global1.b, -107f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1037f) - _wgslsmith_f_op_vec2_f32(global2.a.xy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1292f, arg_0)))))));
    global2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global2.a)), arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, 455f, 1000f) + _wgslsmith_f_op_vec3_f32(-arg_2))))), u_input.b, _wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(step(global2.d.x, global2.d.x))), global2.a.yx);
    return func_2(_wgslsmith_sub_i32(~u_input.a.x, -(~(~global2.b))), arg_0, Struct_4(reverseBits(vec3<u32>(_wgslsmith_mod_u32(u_input.d, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(38731u, 0u)), ~1u)), abs(vec2<u32>(~0u, func_2(72720i, global1.d.x, Struct_4(vec3<u32>(u_input.d, u_input.d, 112685u), vec2<u32>(u_input.d, 53095u), Struct_3(Struct_1(vec3<u32>(33692u, u_input.c, 30084u), vec3<f32>(475f, arg_2.x, -551f), vec4<i32>(11406i, -1i, arg_1.x, u_input.e.x), vec2<i32>(global1.b, arg_1.x)), vec3<u32>(u_input.d, u_input.c, u_input.c)), vec3<u32>(u_input.c, u_input.d, 4294967295u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 50010u, 20419u), arg_2, vec4<i32>(arg_1.x, global1.b, global1.b, u_input.b), u_input.e.zx), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<f32>(global1.c, -511f, arg_3), vec4<i32>(-2147483647i, arg_1.x, 1i, -38098i), vec2<i32>(2257i, 0i)), arg_2, vec3<bool>(true, true, false))).b.x)), func_2(_wgslsmith_mult_i32(-2147483647i, global2.b) | (global2.b << (u_input.d % 32u)), -1093f, Struct_4(vec3<u32>(u_input.d, u_input.c, 37133u) & vec3<u32>(0u, 4294967295u, u_input.c), vec2<u32>(48254u, 12753u), func_2(20161i, -2661f, Struct_4(vec3<u32>(15023u, 17516u, 68260u), vec2<u32>(u_input.d, 4294967295u), Struct_3(Struct_1(vec3<u32>(u_input.d, u_input.c, u_input.c), vec3<f32>(1893f, arg_0, arg_3), vec4<i32>(1i, u_input.a.x, 0i, 28581i), u_input.e.zx), vec3<u32>(4294967295u, u_input.c, u_input.d)), vec3<u32>(u_input.d, u_input.d, u_input.c)), Struct_2(Struct_1(vec3<u32>(u_input.d, 1u, u_input.d), vec3<f32>(-1484f, arg_2.x, global1.a.x), vec4<i32>(arg_1.x, -2147483647i, 1i, 1i), arg_1), Struct_1(vec3<u32>(u_input.d, 0u, 1u), vec3<f32>(465f, 1189f, arg_2.x), vec4<i32>(2147483647i, u_input.a.x, -34508i, arg_1.x), arg_1), arg_2, vec3<bool>(false, false, false))), min(vec3<u32>(u_input.d, u_input.c, 4294967295u), vec3<u32>(0u, 1u, 1u))), Struct_2(Struct_1(vec3<u32>(0u, 59628u, 4294967295u), vec3<f32>(arg_0, -1565f, arg_2.x), vec4<i32>(88854i, global1.b, 13493i, 0i), u_input.a.yz), Struct_1(vec3<u32>(u_input.d, 1u, u_input.c), vec3<f32>(arg_0, 549f, -393f), vec4<i32>(-14650i, u_input.a.x, global2.b, -4083i), u_input.e.xy), _wgslsmith_f_op_vec3_f32(arg_2 + global1.a), vec3<bool>(true, true, true))), min(vec3<u32>(_wgslsmith_div_u32(28995u, u_input.c), firstLeadingBit(u_input.d), reverseBits(1u)), vec3<u32>(38316u, ~u_input.d, abs(57189u)))), Struct_2(Struct_1((vec3<u32>(0u, 4294967295u, u_input.d) | vec3<u32>(0u, 0u, u_input.d)) & ~vec3<u32>(u_input.d, 1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, global1.d.x, arg_2.x)), func_2(-70274i, _wgslsmith_f_op_f32(936f + arg_0), Struct_4(vec3<u32>(0u, 1749u, 1u), vec2<u32>(0u, 1u), Struct_3(Struct_1(vec3<u32>(45149u, u_input.c, u_input.c), arg_2, vec4<i32>(22398i, -1099i, 2147483647i, -19030i), arg_1), vec3<u32>(0u, 56965u, 57632u)), vec3<u32>(28691u, u_input.c, u_input.d)), Struct_2(Struct_1(vec3<u32>(4294967295u, 25691u, u_input.c), vec3<f32>(1000f, arg_3, arg_0), vec4<i32>(u_input.b, 26808i, arg_1.x, global2.b), vec2<i32>(global2.b, arg_1.x)), Struct_1(vec3<u32>(38478u, 7342u, u_input.d), vec3<f32>(1000f, global2.a.x, arg_0), vec4<i32>(global1.b, -42497i, 21310i, 30735i), vec2<i32>(u_input.e.x, -87036i)), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 9u)], arg_0, 2250f), vec3<bool>(false, true, true))).a.c, abs(vec2<i32>(u_input.b, 49755i))), func_2(_wgslsmith_add_i32(u_input.b, -arg_1.x), 951f, Struct_4(~vec3<u32>(u_input.d, 5903u, 0u), vec2<u32>(0u, 34072u), Struct_3(Struct_1(vec3<u32>(u_input.d, 4035u, 0u), global2.a, vec4<i32>(-2147483647i, 0i, u_input.b, -2147483647i), arg_1), vec3<u32>(u_input.d, u_input.c, u_input.d)), ~vec3<u32>(u_input.d, u_input.d, 4294967295u)), Struct_2(func_2(u_input.a.x, -886f, Struct_4(vec3<u32>(0u, 68379u, u_input.d), vec2<u32>(u_input.c, u_input.c), Struct_3(Struct_1(vec3<u32>(u_input.c, u_input.d, u_input.c), vec3<f32>(arg_3, 2135f, -1836f), vec4<i32>(-19019i, arg_1.x, u_input.b, arg_1.x), vec2<i32>(u_input.b, arg_1.x)), vec3<u32>(u_input.c, 14907u, 19705u)), vec3<u32>(4294967295u, 4294967295u, u_input.d)), Struct_2(Struct_1(vec3<u32>(u_input.d, u_input.d, u_input.c), arg_2, vec4<i32>(47617i, -44050i, u_input.b, global1.b), vec2<i32>(0i, -13887i)), Struct_1(vec3<u32>(u_input.c, 31213u, 36191u), global1.a, vec4<i32>(-1i, 0i, 48943i, arg_1.x), vec2<i32>(-1i, global1.b)), global1.a, vec3<bool>(false, true, true))).a, Struct_1(vec3<u32>(36707u, u_input.d, 1u), vec3<f32>(global1.c, arg_2.x, 254f), vec4<i32>(1i, 0i, global1.b, arg_1.x), vec2<i32>(-5816i, global1.b)), vec3<f32>(-268f, -332f, 235f), vec3<bool>(true, true, false))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-742f, 721f, -753f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, global2.d.x, arg_3)) * arg_2)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), any(vec2<bool>(true, true))))).a.b.x;
}

fn func_5(arg_0: f32) -> Struct_5 {
    var var_0 = any(vec4<bool>(true, true, true, true)) && (_wgslsmith_dot_vec3_i32(max(firstLeadingBit(vec3<i32>(global1.b, 57494i, global1.b)), u_input.a), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), u_input.e.xx), ~24191i, firstTrailingBit(global1.b))) < -37893i);
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(35210u, 9u)] - global1.d.x) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-782f + -416f), global1.a.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 100544u) >> (~u_input.c % 32u), 9u)]))), abs(19228i), global2.c, _wgslsmith_f_op_vec2_f32(sign(func_2(global2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 9u)]))), Struct_4(~vec3<u32>(u_input.c, u_input.c, 15799u), vec2<u32>(0u, 4294967295u), Struct_3(Struct_1(vec3<u32>(u_input.c, u_input.d, 7303u), global1.a, vec4<i32>(14568i, global2.b, 0i, global2.b), vec2<i32>(1i, u_input.b)), vec3<u32>(37860u, u_input.d, u_input.d)), ~vec3<u32>(94938u, u_input.c, 92001u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 78847u, 4294967295u), global1.a, vec4<i32>(global1.b, -2147483647i, 24855i, global2.b), vec2<i32>(-2147483647i, u_input.a.x)), Struct_1(vec3<u32>(u_input.c, u_input.d, 37478u), global2.a, vec4<i32>(37597i, u_input.a.x, u_input.a.x, global1.b), u_input.e.zy), global1.a, vec3<bool>(true, true, true))).a.b.zz)));
    let var_1 = Struct_2(func_2(-18677i, -1429f, Struct_4(abs(vec3<u32>(4294967295u, u_input.d, u_input.c)) >> (firstTrailingBit(vec3<u32>(36387u, u_input.c, u_input.d)) % vec3<u32>(32u)), vec2<u32>(min(u_input.c, u_input.c), ~u_input.c), Struct_3(func_2(global2.b, -1000f, Struct_4(vec3<u32>(1u, u_input.c, 110795u), vec2<u32>(27571u, 0u), Struct_3(Struct_1(vec3<u32>(93622u, u_input.c, 195u), vec3<f32>(651f, global1.d.x, -636f), vec4<i32>(global1.b, -1899i, global1.b, global1.b), global3[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<u32>(0u, 14952u, u_input.c)), vec3<u32>(u_input.c, 34225u, u_input.d)), Struct_2(Struct_1(vec3<u32>(2584u, u_input.c, u_input.d), global2.a, vec4<i32>(global2.b, global1.b, 44901i, global2.b), global3[_wgslsmith_index_u32(u_input.c, 27u)]), Struct_1(vec3<u32>(1u, 1u, 16937u), vec3<f32>(899f, -738f, 795f), vec4<i32>(u_input.b, -38617i, 0i, -21652i), vec2<i32>(u_input.a.x, global2.b)), vec3<f32>(global2.a.x, -1102f, -784f), vec3<bool>(true, true, false))).a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 12864u, u_input.d), vec3<u32>(4294967295u, 95581u, u_input.d))), vec3<u32>(~u_input.d, 19188u, select(u_input.c, 0u, true))), Struct_2(func_2(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, 0i, global2.b)), _wgslsmith_f_op_vec3_f32(func_1(global2.b, 0u, Struct_5(vec3<f32>(arg_0, global0[_wgslsmith_index_u32(33345u, 9u)], 1215f), -1i, global0[_wgslsmith_index_u32(u_input.d, 9u)], vec2<f32>(arg_0, arg_0)), vec2<u32>(u_input.c, u_input.d))).x, Struct_4(vec3<u32>(0u, u_input.d, 5686u), vec2<u32>(u_input.c, 31073u), Struct_3(Struct_1(vec3<u32>(u_input.c, 59488u, u_input.d), global2.a, vec4<i32>(-2147483647i, 1i, 43129i, global2.b), vec2<i32>(20346i, -57211i)), vec3<u32>(u_input.d, 4294967295u, u_input.d)), vec3<u32>(u_input.d, u_input.c, 1u)), Struct_2(Struct_1(vec3<u32>(0u, 18475u, 1u), global1.a, vec4<i32>(-1i, global2.b, -20161i, global2.b), vec2<i32>(u_input.a.x, 1i)), Struct_1(vec3<u32>(1u, u_input.d, 0u), vec3<f32>(114f, global2.c, global2.d.x), vec4<i32>(13166i, -1i, -13576i, global1.b), vec2<i32>(51396i, 2611i)), global1.a, vec3<bool>(true, false, true))).a, func_2(19264i, _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(vec3<u32>(32886u, u_input.c, 34328u), vec3<f32>(-449f, 1012f, -196f), vec4<i32>(0i, global1.b, u_input.e.x, global2.b), vec2<i32>(1i, global2.b)), vec3<u32>(u_input.d, 29972u, 16934u)))).x, Struct_4(vec3<u32>(u_input.c, u_input.c, 20993u), vec2<u32>(90044u, 4294967295u), Struct_3(Struct_1(vec3<u32>(34462u, 4294967295u, 1u), vec3<f32>(arg_0, 182f, 259f), vec4<i32>(u_input.a.x, global2.b, 2147483647i, global2.b), vec2<i32>(-1i, -30916i)), vec3<u32>(4294967295u, 4294967295u, u_input.c)), vec3<u32>(38777u, u_input.c, 45353u)), Struct_2(Struct_1(vec3<u32>(46424u, u_input.d, u_input.c), global1.a, vec4<i32>(global1.b, -41250i, global2.b, global2.b), global3[_wgslsmith_index_u32(u_input.c, 27u)]), Struct_1(vec3<u32>(4294967295u, u_input.c, 58452u), global2.a, vec4<i32>(1i, u_input.a.x, global1.b, global2.b), u_input.a.zy), vec3<f32>(global1.a.x, arg_0, 1141f), vec3<bool>(false, false, false))).a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.d.x, -268f, 218f))), global1.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec4<bool>(false, false, true, true))))).a, Struct_1(vec3<u32>(~u_input.c & ~u_input.c, u_input.d, u_input.c), _wgslsmith_f_op_vec3_f32(-global2.a), -_wgslsmith_sub_vec4_i32(vec4<i32>(-54703i, u_input.e.x, global2.b, -18930i), vec4<i32>(global1.b, 26565i, 1i, -30377i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 51315u, u_input.c, u_input.c), abs(vec4<u32>(u_input.d, u_input.c, 171017u, 73303u))) % vec4<u32>(32u)), ~vec2<i32>(abs(8667i), 43247i & global1.b)), vec3<f32>(_wgslsmith_f_op_f32(191f - _wgslsmith_f_op_f32(floor(1489f))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.c, 9u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 9u)] - 982f), _wgslsmith_f_op_f32(select(arg_0, 980f, true))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * -436f), _wgslsmith_f_op_f32(abs(arg_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-430f, global2.c)) + _wgslsmith_f_op_f32(select(-484f, -1000f, true))))), vec3<bool>(any(vec4<bool>(true, true, all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)))), u_input.d <= ~(u_input.d >> (0u % 32u)), !any(vec4<bool>(false, true, false, false))));
    let var_2 = func_2(global2.b, global2.a.x, Struct_4(vec3<u32>(var_1.b.a.x, 20324u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d, var_1.a.a.x, u_input.d), 97692u)), var_1.b.a.xy, Struct_3(func_2(global2.b, _wgslsmith_div_f32(563f, 1000f), Struct_4(vec3<u32>(41249u, u_input.c, 1u), vec2<u32>(var_1.b.a.x, 53123u), Struct_3(Struct_1(var_1.b.a, vec3<f32>(global0[_wgslsmith_index_u32(55843u, 9u)], global1.c, -436f), vec4<i32>(-2147483647i, global2.b, global2.b, 42438i), u_input.e.zy), var_1.b.a), var_1.a.a), Struct_2(Struct_1(vec3<u32>(var_1.a.a.x, 1u, 4294967295u), var_1.b.b, vec4<i32>(global2.b, u_input.a.x, global1.b, global1.b), global3[_wgslsmith_index_u32(0u, 27u)]), Struct_1(var_1.a.a, vec3<f32>(global1.c, global0[_wgslsmith_index_u32(var_1.b.a.x, 9u)], 431f), var_1.b.c, global3[_wgslsmith_index_u32(u_input.d, 27u)]), global1.a, vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x))).a, _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.a.x, var_1.a.a.x, var_1.b.a.x), var_1.a.a), var_1.b.a, vec3<u32>(u_input.d, var_1.b.a.x, 1u))), var_1.b.a), var_1);
    global2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(40679u, 9u)], arg_0, var_2.a.b.x), var_1.a.b), global2.a, !vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a))) - global2.a), ~var_1.b.d.x, global1.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1737f, arg_0), var_2.a.b.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(7979i, global1.c, Struct_4(vec3<u32>(var_1.a.a.x, 84276u, u_input.d), vec2<u32>(16369u, u_input.d), var_2, var_2.b), var_1).a.b.yx * _wgslsmith_f_op_vec2_f32(-var_1.b.b.zy)))));
    return Struct_5(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0)))), global2.c, 1f))), u_input.e.x ^ 456i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b.x) * global1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.a.b.yz, vec2<f32>(var_2.a.b.x, 506f), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.b.xx)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 27>();
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(977f, vec2<i32>(u_input.e.x, global2.b), _wgslsmith_f_op_vec3_f32(func_1(u_input.b, min(57582u, 20310u), Struct_5(global1.a, -6183i, global0[_wgslsmith_index_u32(u_input.d, 9u)], global2.d), vec2<u32>(1u, 0u))), _wgslsmith_div_f32(297f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 9u)]))))));
    var var_1 = ~firstTrailingBit(u_input.c);
    var var_2 = u_input.c;
    var var_3 = vec4<f32>(228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(global2.c * global1.d.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(-global2.d.x)))), _wgslsmith_f_op_f32(ceil(global2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(2390u, 9u)], _wgslsmith_f_op_f32(floor(1131f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c, 9u)], global2.c)) - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2260f) * global1.a.x))), 1214f), abs(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, u_input.c, u_input.c), vec4<u32>(4294967295u, 54368u, 0u, u_input.c)), vec4<u32>(9330u, u_input.c, 114918u, u_input.d))));
}

