struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(7376u, 9636u);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(10292u, 4294967295u, 35336u, 4294967295u), vec3<i32>(2147483647i, 1i, 11148i), -41657i);

var<private> global2: Struct_5 = Struct_5(-1815f, Struct_1(vec4<u32>(19978u, 20772u, 5116u, 0u), vec3<i32>(25287i, -25362i, -13068i), 55259i));

var<private> global3: u32 = 5432u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global2 = Struct_5(global2.a, Struct_1(~vec4<u32>(abs(global1.a.x), u_input.d, global1.a.x, ~global1.a.x), max(~vec3<i32>(0i, 17298i, global2.b.b.x), global2.b.b), _wgslsmith_sub_i32(u_input.c, -(global1.b.x ^ global1.c))));
    global0 = ~max(vec2<u32>(51281u, global2.b.a.x), min(_wgslsmith_add_vec2_u32(global2.b.a.wx, global1.a.xx ^ vec2<u32>(7310u, global1.a.x)), global2.b.a.xy >> (~vec2<u32>(1u, 7146u) % vec2<u32>(32u))));
    global2 = Struct_5(_wgslsmith_f_op_f32(-global2.a), Struct_1(global2.b.a, global1.b, firstLeadingBit(global2.b.c >> (_wgslsmith_add_u32(global0.x, global0.x) % 32u))));
    global3 = ~countOneBits(~(~(global2.b.a.x ^ global2.b.a.x)));
    let var_0 = vec4<f32>(-1081f, -2090f, _wgslsmith_f_op_f32(sign(1118f)), global2.a);
    return global1.a.yx;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    var var_0 = 1u;
    let var_1 = global2.b.a.yzw;
    global0 = func_3();
    var var_2 = 1422f;
    var var_3 = Struct_2(max(_wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(global1.a.wz, global2.b.a.zy, var_1.xy), ~vec2<u32>(26614u, 22087u)), global1.a.xy), Struct_1(~global1.a, global1.b << (global1.a.xzy % vec3<u32>(32u)), global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-840f)))) - _wgslsmith_f_op_f32(-global2.a)), global2.b, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * -490f))), _wgslsmith_div_f32(global2.a, arg_0), _wgslsmith_f_op_f32(max(1289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + 432f))))));
    return 913f;
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global3 = u_input.a.x;
    var var_0 = 11172u;
    var var_1 = Struct_3(global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-848f, 500f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, -771f))) - vec2<f32>(_wgslsmith_f_op_f32(round(global2.a)), _wgslsmith_f_op_f32(func_2(global2.a, ~global1.a.x, ~vec2<i32>(global1.c, global1.c))))));
    var var_2 = countOneBits(countOneBits(39505i) & global2.b.c);
    var var_3 = _wgslsmith_dot_vec3_i32(var_1.a.b, _wgslsmith_div_vec3_i32(max(vec3<i32>(1i, global2.b.b.x, u_input.c), _wgslsmith_div_vec3_i32(global2.b.b, vec3<i32>(0i, u_input.b, -1i))), countOneBits(vec3<i32>(22969i, global2.b.c, -12718i)) | vec3<i32>(-2147483647i, 30462i, global1.c))) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i << (reverseBits(0u) % 32u), firstLeadingBit(-2147483647i ^ global1.b.x)), var_1.a.b.xz);
    return Struct_3(Struct_1(~vec4<u32>(u_input.a.x, var_1.a.a.x, abs(var_1.a.a.x), min(global2.b.a.x, 1u)), max(vec3<i32>(_wgslsmith_mult_i32(global2.b.c, global2.b.b.x), global1.b.x, 48353i), var_1.a.b), select(-global1.c, ~firstTrailingBit(-2147483647i), arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(select(-759f, _wgslsmith_f_op_f32(select(-441f, _wgslsmith_f_op_f32(791f - var_1.b.x), arg_0.x && arg_0.x)), !(!arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(var_1.c.x * global2.a))))), _wgslsmith_f_op_vec2_f32(max(var_1.c, _wgslsmith_f_op_vec2_f32(-var_1.c))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_5) -> vec2<bool> {
    var var_0 = Struct_2(global2.b.a.ww, func_1(arg_2.xz).a, arg_3.a, Struct_1(global2.b.a, abs(arg_3.b.b), arg_1.a.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a + arg_3.a) + -655f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -157f), arg_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(551f + _wgslsmith_f_op_f32(-arg_3.a))), arg_3.a));
    let var_1 = Struct_2(~(~global1.a.xz), Struct_1(u_input.a << ((vec4<u32>(global0.x, global1.a.x, 0u, u_input.d) >> (~arg_3.b.a % vec4<u32>(32u))) % vec4<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(arg_3.b.c, 2147483647i, u_input.c), global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)), Struct_1(arg_1.a.a, global2.b.b, _wgslsmith_sub_i32(2202i << (abs(var_0.a.x) % 32u), u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - global2.a) * 122f), 1f, 406f));
    var var_2 = Struct_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, ~_wgslsmith_add_u32(arg_3.b.a.x, 36670u), ~var_0.b.a.x), ~vec3<u32>(15834u, u_input.a.x, global2.b.a.x >> (0u % 32u)), global1.a.zyz | global1.a.wwy));
    let var_3 = var_1.e;
    global1 = Struct_1(~vec4<u32>(52042u >> (1u % 32u), ~var_0.b.a.x, 1u, 73411u & arg_1.a.a.x) & (vec4<u32>(_wgslsmith_mult_u32(4294967295u, global1.a.x), ~arg_1.a.a.x, 1u, ~global0.x) >> ((_wgslsmith_mod_vec4_u32(arg_3.b.a, u_input.a) >> (_wgslsmith_add_vec4_u32(arg_3.b.a, global2.b.a) % vec4<u32>(32u))) % vec4<u32>(32u))), vec3<i32>(-1i) * -var_0.d.b, 26968i);
    return select(vec2<bool>(arg_2.x, arg_2.x != (any(vec4<bool>(false, true, arg_2.x, arg_2.x)) & any(vec2<bool>(arg_2.x, arg_2.x)))), select(select(arg_2.yz, vec2<bool>(any(vec3<bool>(true, arg_2.x, true)), any(arg_2.xx)), !vec2<bool>(true, arg_2.x)), select(vec2<bool>(select(false, arg_2.x, arg_2.x), !arg_2.x), arg_2.xy, arg_2.x), arg_2.x != false), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), vec2<bool>(true, false), _wgslsmith_f_op_f32(-global2.a) <= global2.a), select(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, global2.a, -289f) * vec3<f32>(152f, 237f, global2.a))), func_1(vec2<bool>(false, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), Struct_5(global2.a, func_1(vec2<bool>(true, true)).a)), !func_4(vec3<f32>(1391f, global2.a, -1000f), Struct_3(global2.b, vec2<f32>(global2.a, global2.a), vec2<f32>(global2.a, global2.a)), vec3<bool>(true, true, true), Struct_5(326f, global2.b)), vec2<bool>(true, true)), true);
    let var_1 = vec2<i32>(-1i, 1i);
    var var_2 = Struct_4(global2.b.a.wzx);
    var_2 = Struct_4(~(~(~(~global2.b.a.xww))));
    global3 = ~abs(4138u);
    var var_3 = Struct_2(vec2<u32>(~((73359u ^ global1.a.x) << (_wgslsmith_dot_vec4_u32(global1.a, vec4<u32>(var_2.a.x, 5800u, 35791u, 1u)) % 32u)), ~_wgslsmith_sub_u32(~u_input.a.x, global2.b.a.x)), Struct_1(select(vec4<u32>(~4294967295u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(17969u, var_2.a.x, 4294967295u), vec3<u32>(39478u, global1.a.x, global0.x)), global2.b.a.x), global1.a, vec4<bool>(var_0.x, true, all(vec3<bool>(true, true, var_0.x)), any(vec2<bool>(var_0.x, false)))), ~(~vec3<i32>(1i, global2.b.c, global1.b.x)) | (-global1.b ^ -global2.b.b), 0i), _wgslsmith_f_op_f32(-global2.a), func_1(var_0).a, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global2.a, global2.a)), _wgslsmith_f_op_f32(-global2.a), !var_0.x)), -972f, -202f));
    var_3 = Struct_2(u_input.a.yz | vec2<u32>(firstLeadingBit(44620u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 61282u, var_3.a.x), u_input.a.yxw)), global2.b, _wgslsmith_f_op_f32(var_3.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)))), Struct_1(select(select(~vec4<u32>(21637u, var_3.a.x, global2.b.a.x, global1.a.x), ~global2.b.a, select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false))), ~(vec4<u32>(global0.x, global1.a.x, 1u, global0.x) << (vec4<u32>(0u, 47413u, 1u, 99433u) % vec4<u32>(32u))), false), global1.b ^ vec3<i32>(~global1.c, u_input.b ^ 98593i, ~(-1123i)), -16327i << (func_3().x % 32u)), _wgslsmith_f_op_vec3_f32(select(var_3.e, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(689f))), -1244f, var_3.c), !func_4(_wgslsmith_f_op_vec3_f32(min(var_3.e, var_3.e)), Struct_3(global2.b, var_3.e.xz, var_3.e.zx), vec3<bool>(var_0.x, true, false), Struct_5(252f, Struct_1(vec4<u32>(4294967295u, 20621u, global2.b.a.x, 1u), global1.b, global1.b.x))).x)));
    var var_4 = func_3().x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(select(var_0, !vec2<bool>(true, var_0.x), any(vec3<bool>(var_0.x, true, true)) || true)).a.b.x);
}

