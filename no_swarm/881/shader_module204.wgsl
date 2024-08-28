struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 1u, 58049u, 9070u);

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(max(85864i, -_wgslsmith_mod_i32(abs(global2.c.d), select(global2.a, -1i, false))), u_input.a.x, select(vec4<bool>(false, all(vec2<bool>(true, true)) || any(vec2<bool>(true, global2.c.e.x)), select(true, true, !global2.c.b.x), !all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(global2.c.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), select(!(!global2.c.e), select(vec4<bool>(global0[_wgslsmith_index_u32(48929u, 1u)], true, true, global0[_wgslsmith_index_u32(107013u, 1u)]), select(global2.c.e, global2.c.e, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global2.c.e.x, global2.c.e.x, true)), global2.c.e), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(15320u, 1u), 1u)] == any(global2.c.b)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~u_input.a.x, global1.x), global1.yzy), 1u)]), all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)] && false), !(!global2.c.e.zx), select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 1u)], false), !global2.c.b, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-641f, 414f)));
    global0 = array<bool, 1>();
    var var_1 = ~(-27245i);
    var var_2 = Struct_2(1i, _wgslsmith_div_i32(1i, -(~var_0.a)), global2.c, vec4<u32>(4294967295u, 8686u, (select(global1.x, global2.c.c, global0[_wgslsmith_index_u32(global2.d.x, 1u)]) & ~106196u) & firstLeadingBit(global2.c.a.x), ~(~4294967295u)));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(38469i, -6118i, global2.c.d), vec3<i32>(-35892i, 34637i, -1i)), vec3<i32>(-39157i, 7933i, global2.b) ^ vec3<i32>(var_2.b, var_2.b, 73534i)), vec3<i32>(-var_0.a, ~18515i, _wgslsmith_div_i32(var_0.a, global2.b))), abs(vec3<i32>(-74i, 1i, countOneBits(var_0.a)))) >> (5242u % 32u);
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    global1 = ~global2.d;
    let var_0 = ~_wgslsmith_clamp_u32(~7302u, _wgslsmith_add_u32(_wgslsmith_add_u32(~global1.x, 42423u), 26781u), u_input.a.x);
    let var_1 = func_3();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 1000f)))), arg_0.x, -403f));
    var var_3 = ~(~firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, -18342i, -1i, -24739i), vec4<i32>(7796i, 0i, 1i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, 25847i, global2.a, -1i), vec4<i32>(global2.b, -29181i, var_1, var_1), vec4<i32>(global2.b, var_1, var_1, var_1)))));
    return select(select(global2.c.e.yy, select(select(global2.c.b, !global2.c.e.zz, global2.c.b.x | global0[_wgslsmith_index_u32(14882u, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(~global2.c.c, 1u)], global0[_wgslsmith_index_u32(11637u, 1u)]), false), any(select(global2.c.e.ywz, vec3<bool>(true, global0[_wgslsmith_index_u32(global2.d.x, 1u)], global2.c.e.x), global2.c.e.wxz))), global2.c.e.yy, global2.c.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = ~(vec4<i32>(-1i) * -(~vec4<i32>(23673i, global2.b, -2147483647i, global2.b)));
    global1 = min(_wgslsmith_div_vec4_u32(abs(arg_2.c.a), vec4<u32>(arg_3.c.c, global1.x, _wgslsmith_mult_u32(0u >> (arg_3.d.x % 32u), global1.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(121713u, 4294967295u, 12338u), vec3<u32>(arg_2.d.x, 1u, arg_2.d.x) >> (vec3<u32>(4294967295u, 1u, 1u) % vec3<u32>(32u))))), abs(vec4<u32>(countOneBits(arg_2.c.a.x ^ global2.d.x), ~_wgslsmith_mult_u32(global1.x, global2.c.a.x), 31194u, 1u | (4294967295u ^ u_input.a.x))));
    var var_1 = arg_2;
    var_1 = arg_3;
    global2 = arg_2;
    return Struct_3(-arg_2.c.d, 0u, select(!arg_3.c.e, select(select(select(var_1.c.e, vec4<bool>(true, false, false, arg_0.x), arg_0.x), global2.c.e, false), select(select(var_1.c.e, global2.c.e, false), vec4<bool>(true, arg_0.x, false, false), !arg_2.c.e), arg_2.c.e), true), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -346f)))) * vec2<f32>(617f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1515f)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = any(!(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)]))));
    let var_1 = _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(global2.b, countOneBits(global2.b) ^ ~59661i), -(_wgslsmith_dot_vec2_i32(-vec2<i32>(-14035i, -2147483647i), _wgslsmith_div_vec2_i32(arg_0, arg_0)) >> (3716u % 32u)), -_wgslsmith_div_i32(-_wgslsmith_mod_i32(arg_1.d, -18923i), global2.a));
    let var_2 = vec2<u32>(select(~countOneBits(global2.d.x), ~u_input.a.x, all(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(8623u, 1u)], false), global2.c.e.wyx, vec3<bool>(global2.c.e.x, true, false)), arg_1.e.wxy, select(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], false), global2.c.e.wyy, global2.c.e.zxx)))), abs(0u));
    global1 = global2.c.a;
    let var_3 = !global2.c.e.x;
    return func_4(!func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1768f, -1502f, -1236f, 1184f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, -188f, -2406f, -1618f)), !vec4<bool>(true, arg_1.b.x, false, true)))), -_wgslsmith_clamp_i32(-40965i, ~(-global2.a), var_1), Struct_2(var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, -106i), max(_wgslsmith_sub_vec2_i32(arg_0, vec2<i32>(var_1, 2147483647i)), vec2<i32>(arg_1.d, -2147483647i))), arg_1, select(~vec4<u32>(52290u, 56031u, arg_1.c, arg_1.c), reverseBits(~vec4<u32>(var_2.x, 53344u, var_2.x, 1u)), (2147483647i <= var_1) & any(global2.c.e.zxz))), Struct_2(global2.b, _wgslsmith_clamp_i32(-2147483647i, -1i, arg_1.d), global2.c, ~arg_1.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = 30303u;
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -min(global2.a, -4437i)), vec2<i32>(_wgslsmith_sub_i32(~(-1i), 13000i ^ global2.b), func_4(select(arg_2.c.zz, arg_2.c.xz, vec2<bool>(true, true)), _wgslsmith_div_i32(0i, global2.c.d), Struct_2(arg_2.a, 37884i, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, var_0, 0u), arg_2.c.yx, 4294967295u, global2.c.d, arg_2.c), vec4<u32>(global2.d.x, arg_2.b, arg_0.x, 39254u)), Struct_2(global2.a, global2.c.d, Struct_1(vec4<u32>(global2.d.x, 0u, 59887u, arg_0.x), global2.c.e.wz, 48016u, 41032i, global2.c.e), global2.c.a)).a)), 34543i & global2.c.d, Struct_1(reverseBits(select(~vec4<u32>(global2.c.c, global1.x, 4294967295u, global1.x), ~global2.d, vec4<bool>(true, true, false, true))), vec2<bool>(any(arg_2.c.ww), any(vec2<bool>(arg_1, arg_2.c.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(35789u, arg_0.x), arg_0), 0u, 42159u), vec3<u32>(firstTrailingBit(arg_0.x), arg_0.x | 3382u, ~0u)), reverseBits(global2.c.d), vec4<bool>(true, _wgslsmith_sub_i32(-1365i, arg_2.a) != arg_2.a, global0[_wgslsmith_index_u32(global2.c.a.x, 1u)], !(!global0[_wgslsmith_index_u32(global2.d.x, 1u)]))), global2.d);
    var var_2 = global2.c;
    var var_3 = Struct_1(var_1.c.a, !(!var_1.c.e.xw), var_0, -56240i, func_1(-vec2<i32>(arg_2.a, max(1i, global2.c.d)), var_1.c).c);
    let var_4 = (~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_3.d, 0i), ~vec3<i32>(-2147483647i, var_1.b, 2147483647i)) ^ ~vec3<i32>(1i, -23267i, ~var_1.a)) | _wgslsmith_div_vec3_i32(vec3<i32>(min(0i, -39077i), select(-29979i, arg_2.a, var_1.c.e.x), _wgslsmith_add_i32(var_1.b, 2304i)) & ~firstTrailingBit(vec3<i32>(-48248i, -46376i, arg_2.a)), -select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-14922i, var_3.d, var_3.d), vec3<i32>(1i, var_1.b, var_2.d), vec3<i32>(global2.a, var_2.d, 16490i)), ~vec3<i32>(global2.b, -1i, var_3.d), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], var_2.e.x, false), var_2.e.xzy, vec3<bool>(false, false, global2.c.e.x))));
    return ~(~(-var_4.x | var_1.c.d));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = global2.d.yw;
    global0 = array<bool, 1>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(374f))))));
    let var_2 = !arg_2.c.e.wzz;
    var var_3 = select(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.d.wxx, vec3<u32>(arg_2.d.x, global2.c.c, var_0.x)), 1u, select(global2.d.x, 18483u, arg_2.c.e.x), _wgslsmith_mod_u32(4294967295u, 23914u)), (arg_2.c.a ^ vec4<u32>(7958u, arg_1.c.c, arg_1.d.x, 48039u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c.a.x, 1u, 29083u, 33837u), arg_2.d) % vec4<u32>(32u))), max(~vec4<u32>(arg_1.d.x, global1.x, 1u, 4294967295u), (global2.c.a & vec4<u32>(23892u, global1.x, global1.x, 33265u)) ^ vec4<u32>(arg_1.c.a.x, 4294967295u, 25980u, global1.x))), abs(select(reverseBits(vec4<u32>(global2.d.x, arg_2.c.c, 0u, arg_1.d.x)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c.c, global1.x, 1u, 0u), arg_1.d ^ arg_2.c.a), true)), !func_1(_wgslsmith_add_vec2_i32(~vec2<i32>(-21500i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-72398i, global2.c.d), vec2<i32>(arg_1.c.d, arg_2.c.d))), global2.c).c);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(_wgslsmith_dot_vec2_i32(~(~(-vec2<i32>(-11425i, global2.a))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.d, global2.a, global2.a), vec3<i32>(0i, 1i, 2147483647i)) ^ global2.b, func_5(global2.d.wy, global2.c.b.x, func_1(vec2<i32>(32529i, global2.c.d), global2.c), global0[_wgslsmith_index_u32(~global2.d.x, 1u)]))), Struct_2(2147483647i, global2.b, Struct_1(select(min(global2.c.a, vec4<u32>(27809u, 77394u, global2.c.a.x, 50127u)), vec4<u32>(global2.d.x, global1.x, u_input.a.x, 45032u), vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, global2.c.e.x, true)), func_2(vec4<f32>(-1394f, 1634f, 795f, -709f)), global1.x, global2.a, !global2.c.e), vec4<u32>(~min(global1.x, 1u), 4294967295u, global1.x, global2.c.a.x)), Struct_2(~40700i, ~global2.a, Struct_1(vec4<u32>(0u, 5295u, 4294967295u, u_input.a.x) & (vec4<u32>(global1.x, 4294967295u, global2.c.c, 31073u) & global2.d), !func_4(global2.c.e.ww, global2.a, Struct_2(-89i, -2147483647i, global2.c, vec4<u32>(1u, 19924u, u_input.a.x, 51809u)), Struct_2(global2.b, global2.a, Struct_1(vec4<u32>(74296u, global2.c.c, 69380u, 4294967295u), global2.c.b, 4294967295u, -26326i, global2.c.e), vec4<u32>(4294967295u, 27371u, 2556u, global1.x))).c.wx, 0u, 36166i, func_1(reverseBits(vec2<i32>(global2.b, global2.c.d)), global2.c).c), global2.d));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1531f, 310f, -884f, -950f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-568f, 1079f, 306f, -1606f) * vec4<f32>(1928f, 238f, 505f, -761f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1098f, -3275f, -1000f, 1000f), vec4<f32>(-1270f, -331f, -1000f, 1175f), vec4<bool>(true, true, true, false))), global0[_wgslsmith_index_u32(global2.c.a.x, 1u)] & false))))));
    var var_1 = -410f;
    var var_2 = func_6(~global2.a, func_6(global2.a, Struct_2(-35146i, abs(global2.a << (28391u % 32u)), global2.c, vec4<u32>(12197u, global1.x, global2.c.a.x, 4294967295u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global2.c.a.x, 35102u), vec4<u32>(global1.x, global1.x, global1.x, 0u))), func_6(~1i, Struct_2(2147483647i, select(1i, 1i, global2.c.b.x), global2.c, vec4<u32>(global2.d.x, 74193u, global2.d.x, 42837u)), func_6(global2.c.d, Struct_2(2147483647i, global2.b, Struct_1(global2.c.a, vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true), 40538u, 14129i, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], true, true, global0[_wgslsmith_index_u32(global2.c.a.x, 1u)])), global2.c.a), Struct_2(0i, 41631i, Struct_1(vec4<u32>(37600u, 11338u, global1.x, 1u), global2.c.b, global2.c.a.x, global2.a, vec4<bool>(false, global2.c.b.x, false, global0[_wgslsmith_index_u32(1u, 1u)])), vec4<u32>(73617u, 1u, 39165u, global1.x))))), Struct_2(min(44347i, -global2.a), global2.c.d, Struct_1(reverseBits(vec4<u32>(70181u, global1.x, u_input.a.x, 4294967295u)), !func_2(var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(28701u, global2.c.c, global2.c.c), global2.d.wwy) ^ (6392u ^ global2.c.a.x), global2.c.d, func_1(vec2<i32>(33772i, global2.c.d), func_6(2147483647i, Struct_2(48141i, global2.c.d, global2.c, vec4<u32>(0u, global2.d.x, 8690u, 4294967295u)), Struct_2(17399i, global2.b, Struct_1(global2.c.a, vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 1u)], global0[_wgslsmith_index_u32(10978u, 1u)]), global1.x, 2147483647i, global2.c.e), global2.d)).c).c), vec4<u32>(u_input.a.x, global2.c.a.x >> (63133u % 32u), func_4(global2.c.e.zx, global2.a, Struct_2(global2.c.d, -1i, global2.c, vec4<u32>(1u, global1.x, global1.x, 0u)), Struct_2(11875i, global2.c.d, Struct_1(global2.c.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false), global1.x, global2.a, global2.c.e), vec4<u32>(global2.d.x, 4294967295u, 18029u, 23136u))).b, ~global2.d.x) << (firstTrailingBit(~global2.d) % vec4<u32>(32u))));
    global0 = array<bool, 1>();
    var var_3 = func_1(vec2<i32>(0i, var_2.a), func_6(_wgslsmith_mod_i32(func_1(vec2<i32>(-1i, global2.b) & vec2<i32>(-20372i, -2147483647i), global2.c).a, -17051i), func_6(8483i, Struct_2(i32(-1i) * -1i, global2.c.d, func_6(-2147483647i, Struct_2(-2147483647i, global2.c.d, Struct_1(global2.d, var_2.c.e.wx, global2.d.x, global2.b, vec4<bool>(false, true, false, false)), vec4<u32>(global2.d.x, var_2.d.x, global2.d.x, global2.c.a.x)), Struct_2(global2.c.d, 1i, Struct_1(var_2.d, vec2<bool>(global0[_wgslsmith_index_u32(global2.c.a.x, 1u)], false), 9955u, global2.b, global2.c.e), var_2.c.a)).c, ~vec4<u32>(global2.c.a.x, global1.x, var_2.d.x, global2.c.c)), func_6(-var_2.b, Struct_2(global2.c.d, -5918i, Struct_1(vec4<u32>(global1.x, 1u, 0u, 36498u), vec2<bool>(true, global2.c.b.x), 0u, -48509i, global2.c.e), var_2.d), func_6(60028i, Struct_2(6479i, var_2.b, var_2.c, global2.c.a), Struct_2(56102i, var_2.a, global2.c, vec4<u32>(global1.x, 1u, u_input.a.x, 1u))))), func_6(global2.b, Struct_2(_wgslsmith_mod_i32(-1i, var_2.a), -global2.c.d, var_2.c, var_2.c.a), func_6(~global2.a, func_6(-11171i, Struct_2(-8266i, global2.a, Struct_1(global2.c.a, var_2.c.b, 4294967295u, global2.b, vec4<bool>(false, var_2.c.b.x, false, global0[_wgslsmith_index_u32(global2.d.x, 1u)])), vec4<u32>(global2.d.x, var_2.c.a.x, global2.c.a.x, var_2.d.x)), Struct_2(global2.b, -23171i, Struct_1(global2.d, vec2<bool>(var_2.c.e.x, global0[_wgslsmith_index_u32(11554u, 1u)]), u_input.a.x, var_2.b, var_2.c.e), vec4<u32>(u_input.a.x, 1u, var_2.d.x, global1.x))), func_6(-37643i, Struct_2(var_2.b, 2147483647i, var_2.c, vec4<u32>(1u, global2.c.a.x, 26305u, u_input.a.x)), Struct_2(-96724i, var_2.c.d, Struct_1(var_2.c.a, global2.c.e.xy, var_2.c.c, var_2.a, var_2.c.e), global2.c.a))))).c).c.zx;
    var_3 = vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(var_2.c.a.x), 1u)], var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, global2.b, var_2.c.d), vec4<i32>(-32701i, -1i, 13843i, 0i))), global2.a, vec4<i32>(var_2.b, 0i >> (global2.c.c % 32u), func_4(!global2.c.b, abs(var_2.a), Struct_2(-1i, -1i ^ var_2.b, global2.c, ~vec4<u32>(84816u, global1.x, 33121u, 16244u)), func_6(var_2.a, func_6(-1i, Struct_2(global2.b, var_2.c.d, Struct_1(var_2.c.a, vec2<bool>(global2.c.e.x, true), u_input.a.x, var_2.c.d, vec4<bool>(false, false, false, var_2.c.b.x)), vec4<u32>(4294967295u, global1.x, 4294967295u, 1u)), Struct_2(1i, 1i, global2.c, var_2.c.a)), Struct_2(global2.c.d, global2.a, Struct_1(var_2.d, vec2<bool>(false, false), global1.x, 0i, vec4<bool>(false, var_3.x, true, global2.c.e.x)), vec4<u32>(123860u, u_input.a.x, 1u, global1.x)))).a, global2.a), vec4<u32>(~func_4(select(vec2<bool>(var_3.x, true), vec2<bool>(var_3.x, false), true), -var_2.b, func_6(var_2.a, Struct_2(-1i, 2147483647i, var_2.c, vec4<u32>(18430u, var_2.c.a.x, 19795u, u_input.a.x)), Struct_2(-1i, var_2.a, Struct_1(global2.c.a, vec2<bool>(global2.c.e.x, var_3.x), 0u, global2.a, global2.c.e), global2.d)), func_6(43575i, Struct_2(-31318i, 6069i, Struct_1(vec4<u32>(var_2.c.c, 1u, 64549u, 12532u), vec2<bool>(true, true), global1.x, -1i, var_2.c.e), vec4<u32>(var_2.c.c, u_input.a.x, 1u, var_2.c.c)), Struct_2(var_2.a, -2147483647i, var_2.c, vec4<u32>(57053u, var_2.d.x, 4294967295u, u_input.a.x)))).b, _wgslsmith_div_u32(~0u, 1u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_2.c.a.x, var_2.d.x, 35282u, global1.x)), var_2.c.a), global2.d.x), ~global2.d.x >> (min(global2.d.x, _wgslsmith_div_u32(74849u, 26335u >> (global2.d.x % 32u))) % 32u));
}

