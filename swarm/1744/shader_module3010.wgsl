struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 11>;

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: bool;

var<private> global3: array<f32, 3> = array<f32, 3>(1000f, -1159f, -1257f);

var<private> global4: array<Struct_5, 6>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_4) -> vec2<i32> {
    global3 = array<f32, 3>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 3u)])), -516f));
    let var_1 = abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(arg_1.x, 27214i)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, arg_0.x), vec2<i32>(arg_1.x, -8028i))))) << (abs(vec2<u32>(~u_input.b, u_input.a.x ^ min(u_input.a.x, u_input.a.x))) % vec2<u32>(32u));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1, vec3<i32>(var_1.x, var_2.e.b.x, arg_1.x)), reverseBits(select(~(vec3<i32>(-24915i, arg_1.x, var_1.x) << (var_2.d.a % vec3<u32>(32u))), select(vec3<i32>(var_1.x, 0i, -10609i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_2.c.c.b.x, arg_0.x), vec3<i32>(arg_2.c.c.b.x, var_1.x, arg_1.x)), vec3<bool>(var_2.c.b.x, var_2.c.b.x, true)), select(select(arg_2.c.b.xxw, vec3<bool>(true, false, true), arg_3.a.wwz), !vec3<bool>(var_2.c.b.x, arg_3.a.x, var_2.c.b.x), true))));
    return ~arg_2.e.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(countOneBits(vec3<u32>(~u_input.a.x << (1u % 32u), _wgslsmith_add_u32(u_input.a.x << (813u % 32u), ~2131u), firstLeadingBit(u_input.a.x))), -(~(countOneBits(vec2<i32>(-23057i, -2147483647i)) & func_3(vec4<i32>(-2147483647i, -16868i, 2147483647i, -36719i), vec3<i32>(11160i, 1i, 2147483647i), Struct_3(4294967295u, 392f, Struct_2(u_input.b, vec4<bool>(false, true, true, true), Struct_1(vec3<u32>(4294967295u, u_input.a.x, u_input.b), vec2<i32>(2147483647i, -1i))), Struct_1(vec3<u32>(18823u, 0u, 1u), vec2<i32>(-2147483647i, -31767i)), Struct_1(vec3<u32>(u_input.b, u_input.a.x, 4294967295u), vec2<i32>(2147483647i, 0i))), Struct_4(vec4<bool>(false, false, false, false))))));
    var var_1 = Struct_3(~var_0.a.x ^ _wgslsmith_mult_u32(~u_input.b, ~(~1u)), 107f, Struct_2(~u_input.a.x, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_sub_vec3_u32(~var_0.a, ~vec3<u32>(u_input.b, var_0.a.x, u_input.b)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-24692i, 2147483647i)), firstLeadingBit(vec2<i32>(-22767i, -6186i))))), Struct_1(~(~countOneBits(var_0.a)), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(var_0.b.x, -2147483647i)), var_0.b)), Struct_1(vec3<u32>(u_input.a.x, ~(u_input.b >> (var_0.a.x % 32u)), var_0.a.x), vec2<i32>(-28924i, -19075i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.x, 2147483647i), var_0.b)));
    var var_2 = select(var_1.c.b.wy, var_1.c.b.zz, select(vec2<bool>((var_0.a.x ^ 14261u) == 42851u, false), !select(var_1.c.b.xw, select(vec2<bool>(true, false), vec2<bool>(var_1.c.b.x, false), var_1.c.b.yw), var_1.c.b.yy), !(!var_1.c.b.x)));
    global4 = array<Struct_5, 6>();
    global1 = array<vec4<u32>, 6>();
    return var_1.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    global0 = array<Struct_5, 11>();
    var var_0 = -2147483647i >= arg_0.x;
    global3 = array<f32, 3>();
    global1 = array<vec4<u32>, 6>();
    global1 = array<vec4<u32>, 6>();
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    global1 = array<vec4<u32>, 6>();
    global3 = array<f32, 3>();
    let var_0 = global0[_wgslsmith_index_u32(arg_2.x, 11u)];
    let var_1 = Struct_4(func_4(min(-vec4<i32>(-17350i, 2147483647i, 2147483647i, arg_0.c.b.x) << (_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], vec4<u32>(4294967295u, 20006u, 12816u, 1u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-8260i, arg_0.c.b.x, 35654i, -1i), vec4<i32>(var_0.b.x, -1i, var_0.b.x, 0i)), vec4<i32>(40967i, arg_3, -16848i, arg_3))), vec3<f32>(_wgslsmith_f_op_f32(sign(765f)), arg_1, global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x) | _wgslsmith_add_u32(1u, 16913u), 3u)]), func_2()).b);
    return 2147483647i;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<bool> {
    var var_0 = 0u < arg_0;
    let var_1 = Struct_5(func_5(func_4(select(vec4<i32>(-33302i, 2147483647i, 2147483647i, -1i), vec4<i32>(-2147483647i, 34756i, -1i, 7338i), vec4<bool>(false, arg_1, true, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 3u)], 583f, global3[_wgslsmith_index_u32(25419u, 3u)])), func_2()), _wgslsmith_f_op_f32(-446f + global3[_wgslsmith_index_u32(~arg_0, 3u)]), firstLeadingBit(vec3<u32>(u_input.b, arg_0, 0u)), i32(-1i) * -7750i) & 3271i, vec2<i32>(2147483647i, reverseBits(-abs(-15821i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-548f, 1098f, 160f))), vec3<f32>(832f, -996f, global3[_wgslsmith_index_u32(0u, 3u)])))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(417f, global3[_wgslsmith_index_u32(arg_0, 3u)], 1582f) - vec3<f32>(-454f, 112f, 486f))))))), ((_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -4668i, -40866i, 58454i), vec4<i32>(2147483647i, 2147483647i, 56079i, -25866i)) | (i32(-1i) * -29536i)) >> (func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-22789i, 8463i, 0i, -25825i), vec4<i32>(-7478i, -5436i, 22294i, 26122i)), vec3<f32>(-380f, global3[_wgslsmith_index_u32(arg_0, 3u)], global3[_wgslsmith_index_u32(22380u, 3u)]), func_2()).c.a.x % 32u)) << (_wgslsmith_clamp_u32(arg_0, 13244u, arg_0) % 32u), func_5(Struct_2(~arg_0, vec4<bool>(func_2().b.x, true, arg_1, !arg_1), func_2().c), global3[_wgslsmith_index_u32(~arg_0 & u_input.b, 3u)], abs(func_2().c.a), ~0i));
    global4 = array<Struct_5, 6>();
    let var_2 = firstLeadingBit(~arg_0);
    global2 = arg_1;
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(func_1(~0u, true), vec4<bool>(false, any(vec4<bool>(false, true, true, true)), true, all(vec4<bool>(false, true, true, false))), vec4<bool>(true, any(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, true, true, true)), false)), func_1(u_input.b, func_2().b.x && (any(vec2<bool>(true, true)) && true)), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), false, any(vec2<bool>(true, true))));
    var var_1 = Struct_3(~u_input.b, global3[_wgslsmith_index_u32(1u, 3u)], func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-35921i, -43572i, 82797i, 12101i), vec4<i32>(2147483647i, 2147483647i, -24002i, -4657i), var_0.x) | (vec4<i32>(19969i, 1i, -2147483647i, -12669i) >> (global1[_wgslsmith_index_u32(u_input.b, 6u)] % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, global3[_wgslsmith_index_u32(64057u, 3u)], 1475f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(918f, 114f, 601f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-378f, 211f, global3[_wgslsmith_index_u32(0u, 3u)]) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], -268f, 507f))))), Struct_2(_wgslsmith_div_u32(u_input.b ^ 4294967295u, 4294967295u ^ u_input.a.x), func_2().b, Struct_1(max(vec3<u32>(1u, u_input.b, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 42724u)), ~vec2<i32>(-30489i, 3177i)))), func_2().c, func_2().c);
    let var_2 = Struct_4(!(!(!vec4<bool>(true, false, var_1.c.b.x, var_1.c.b.x))));
    let var_3 = var_1.d.b.x;
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1232f - 355f))) * global3[_wgslsmith_index_u32(firstLeadingBit(~1u), 3u)])), ~var_1.e.a.zy);
}

