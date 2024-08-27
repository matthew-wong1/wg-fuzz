struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    global0 = !select(vec2<bool>(any(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, false), global0.x)), !(global0.x & true)), select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(false, false)), select(vec2<bool>(global0.x, false), vec2<bool>(false, false), !global0.x), vec2<bool>(global1.x <= -538f, global0.x)), global0.x);
    let var_0 = Struct_2(true, any(vec4<bool>(false, true, true, !all(vec4<bool>(global0.x, false, global0.x, global0.x)))), vec2<bool>(true, all(vec3<bool>(global0.x, global0.x, all(vec4<bool>(global0.x, true, true, false))))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, global1.x, 2056f, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, global1.x, global1.x, -2178f)))), vec4<f32>(-815f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-180f, global1.x) * _wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -133f))) + vec4<f32>(-843f, -142f, 1f, _wgslsmith_div_f32(-1243f, _wgslsmith_f_op_f32(f32(-1f) * -644f))));
    let var_1 = any(!select(!select(vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(global0.x, false, var_0.c.x), var_0.b), !select(vec3<bool>(var_0.c.x, var_0.c.x, global0.x), vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, var_0.b, global0.x)), select(vec3<bool>(false, false, global0.x), vec3<bool>(false, global0.x, global0.x), !var_0.b)));
    let var_2 = select(u_input.c.yz, ~u_input.c.xx, true) & (u_input.c.yx >> (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)));
    return u_input.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = global1.x;
    var var_1 = Struct_3(_wgslsmith_div_i32(func_3(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a)).x ^ 0i, 1i >> (u_input.c.x % 32u)));
    global0 = select(vec2<bool>(!all(!vec2<bool>(arg_0.x, true)), true), select(vec2<bool>(true, true), select(arg_0, vec2<bool>(645f >= global1.x, arg_0.x), select(vec2<bool>(true, arg_0.x), !arg_0, all(vec4<bool>(false, true, arg_0.x, false)))), vec2<bool>(true, true)), !vec2<bool>(false, !arg_0.x));
    var var_2 = all(!select(!(!vec3<bool>(true, true, global0.x)), select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(arg_0.x, false, global0.x), vec3<bool>(global0.x, arg_0.x, arg_0.x)), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(global0.x, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, arg_0.x, true), vec3<bool>(global0.x, global0.x, arg_0.x), arg_0.x)), select(vec3<bool>(false, true, false), select(vec3<bool>(arg_0.x, global0.x, arg_0.x), vec3<bool>(arg_0.x, true, false), vec3<bool>(arg_0.x, global0.x, arg_0.x)), arg_0.x)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1290f))) * -1267f) + -1091f), 551f, -1393f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1946f)) + _wgslsmith_f_op_f32(floor(320f))))))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-498f, -533f, global1.x, global1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -400f, global1.x, -265f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, 1367f, -174f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1795f, global1.x, global1.x, -598f), vec4<f32>(1656f, 1544f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1728f, global1.x, global1.x, 833f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), 1328f) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-453f)), _wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(-1403f - 233f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-170f, global1.x)), _wgslsmith_f_op_f32(global1.x - -1957f)))))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    let var_0 = arg_2.d;
    global2 = array<Struct_1, 18>();
    var var_1 = countOneBits(vec4<i32>(~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(6194i, arg_1), vec2<i32>(arg_1, -16569i))), u_input.b.x, 10989i, _wgslsmith_add_i32(reverseBits(arg_0.a >> (arg_2.d % 32u)), u_input.a.x)));
    global1 = _wgslsmith_f_op_vec4_f32(func_4(arg_2.c.zy, func_3(~u_input.a)));
    global0 = select(vec2<bool>(-555f <= _wgslsmith_f_op_f32(trunc(-596f)), true), !select(vec2<bool>(var_1.x != arg_0.a, !arg_2.c.x), !vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.c.xx), !any(vec3<bool>(all(vec3<bool>(true, arg_2.a, false)), true, arg_2.a)));
    return arg_2.c;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_1.c;
    var_0 = vec3<bool>(arg_1.c.x != arg_1.c.x, true, var_0.x);
    let var_1 = Struct_2(true && any(func_2(arg_0, i32(-1i) * -34278i, Struct_1(true, vec2<i32>(u_input.d, arg_1.b.x), vec3<bool>(false, arg_1.a, var_0.x), 1u), _wgslsmith_f_op_f32(global1.x + global1.x))), any(func_2(Struct_3(arg_1.b.x), 0i, global2[_wgslsmith_index_u32(arg_1.d, 18u)], global1.x)) | arg_1.c.x, var_0.zy);
    var var_2 = arg_0;
    var var_3 = global1.yw;
    return Struct_2(true, !(!global0.x), select(var_1.c, var_1.c, true));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1721f, -919f, 732f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1491f, 1354f, -946f, global1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, 218f, 1129f, 1134f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 188f, global1.x, global1.x) * vec4<f32>(global1.x, 1405f, global1.x, -969f))))));
    let var_0 = -firstTrailingBit(max(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, 2147483647i), u_input.a.x), 1i));
    let var_1 = ~(vec3<u32>(arg_1.d, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(58618u, 37449u), u_input.c.xy, vec2<u32>(17589u, u_input.c.x)), abs(vec2<u32>(0u, u_input.c.x))), ~0u << (countOneBits(u_input.c.x) % 32u)) << (vec3<u32>(u_input.c.x, 3167u, _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), ~u_input.c.x)) % vec3<u32>(32u)));
    var var_2 = ~u_input.a;
    return Struct_3(16745i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(Struct_3(1i), global2[_wgslsmith_index_u32(u_input.c.x, 18u)]), Struct_1(!global0.x, ~(~u_input.a.zy) ^ ((vec2<i32>(u_input.b.x, 51476i) | vec2<i32>(-3956i, 17630i)) | (vec2<i32>(2147483647i, -13201i) | u_input.b.xz)), select(vec3<bool>(!global0.x, true, !global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false)), select(false, true, u_input.b.x > u_input.b.x)), 4294967295u), select(reverseBits(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 55190u, u_input.c.x), u_input.c))), u_input.c, !vec3<bool>(true, true, all(vec2<bool>(global0.x, true)))));
    let var_1 = Struct_2(abs(var_0.a) < u_input.a.x, global0.x, select(select(select(func_1(Struct_3(-2147483647i), Struct_1(true, vec2<i32>(38088i, var_0.a), vec3<bool>(true, true, false), u_input.c.x)).c, func_1(Struct_3(u_input.a.x), Struct_1(global0.x, vec2<i32>(u_input.a.x, 27028i), vec3<bool>(false, global0.x, false), 80747u)).c, vec2<bool>(false, global0.x)), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, false)), func_1(Struct_3(5528i), Struct_1(false, ~u_input.b.zx, !vec3<bool>(false, global0.x, global0.x), _wgslsmith_add_u32(u_input.c.x, u_input.c.x))).c, !all(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, global0.x)))));
    global0 = !(!var_1.c);
    let var_2 = -min(vec3<i32>(u_input.d >> (firstLeadingBit(u_input.c.x) % 32u), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-75277i, -1i, u_input.a.x), var_0.a), var_0.a), u_input.b);
    var_0 = Struct_3(u_input.a.x);
    let var_3 = vec3<bool>(true, true, true);
    var_0 = func_5(Struct_2(true, var_1.b & true, vec2<bool>(!all(var_3), false)), Struct_1(false, _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(var_2.x, 26155i)), vec2<i32>(_wgslsmith_mod_i32(-9846i, -2147483647i), var_2.x), u_input.a.zy), var_3, 0u), u_input.c);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(~9156u, u_input.c.x), ~4294967295u), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_3(-u_input.a).x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(var_2), ~var_2), vec3<i32>(1i, -1i, var_0.a) >> (firstTrailingBit(u_input.c) % vec3<u32>(32u))), 29426i, var_0.a));
}

