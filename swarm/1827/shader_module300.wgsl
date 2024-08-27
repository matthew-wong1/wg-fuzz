struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(300f, -1423f, 1539f, -826f);

var<private> global1: array<vec2<i32>, 4>;

var<private> global2: Struct_2 = Struct_2(vec4<u32>(4294967295u, 0u, 0u, 1u), vec2<f32>(1000f, -1842f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = ~(-1i);
    let var_1 = vec3<bool>(!(global2.b.x == _wgslsmith_f_op_f32(global2.b.x + global2.b.x)), select(any(vec2<bool>(true, true)), global2.b.x > _wgslsmith_f_op_f32(abs(arg_0.b.x)), true && all(vec3<bool>(true, true, false))), 40966u > _wgslsmith_dot_vec3_u32(~(~arg_0.a.zxz), firstTrailingBit(vec3<u32>(55442u, global2.a.x, global2.a.x))));
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(-33644i, 16873i, u_input.a.x, 10110i)), firstLeadingBit(-vec4<i32>(u_input.b, u_input.b, -46087i, u_input.b))) ^ (vec4<i32>(u_input.a.x, -2147483647i, 0i, u_input.b) << (reverseBits(~arg_0.a) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x), ~vec4<i32>(-49086i, 36756i, 0i, u_input.a.x)) >> (vec4<u32>(~u_input.c.x, 11304u, ~0u, global2.a.x >> (u_input.c.x % 32u)) % vec4<u32>(32u)), vec4<i32>(0i, u_input.a.x, u_input.b, _wgslsmith_mult_i32(u_input.b | -2147483647i, -2147483647i))));
    return 428f;
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global0 = vec4<f32>(-882f, _wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + -2875f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(global2.a, vec2<f32>(global0.x, -1032f))))))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), ~(~(-(~u_input.a))), vec4<u32>(1u, ~_wgslsmith_mod_u32(arg_0.x, 12874u), 17971u, _wgslsmith_add_u32(select(16074u, _wgslsmith_dot_vec2_u32(vec2<u32>(8019u, 39317u), vec2<u32>(21769u, arg_0.x)), 3823i == u_input.a.x), 0u)), u_input.a.yy & (abs(global1[_wgslsmith_index_u32(4294967295u, 4u)]) ^ abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, 22103i)))));
    global2 = Struct_2(_wgslsmith_mod_vec4_u32(global2.a, _wgslsmith_div_vec4_u32(global2.a, vec4<u32>(min(34017u, u_input.c.x), u_input.c.x, ~arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.c.x, 1u), var_0.c.wzw)))), global2.b);
    global1 = array<vec2<i32>, 4>();
    let var_1 = select(all(select(vec4<bool>(true, all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, true, true), select(global2.b.x <= 1098f, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 1u == (4294967295u ^ u_input.c.x))), !(!(var_0.a > -1006f) | false));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_mult_vec4_u32(global2.a, global2.a), _wgslsmith_f_op_vec2_f32(abs(global0.xz))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.x, global2.b.x, any(vec4<bool>(true, true, false, true)))))) - _wgslsmith_f_op_f32(-global2.b.x));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> vec4<f32> {
    var var_0 = vec4<f32>(-326f, -1345f, _wgslsmith_f_op_f32(284f + global2.b.x), 701f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.b.x - -149f), _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -624f) - -2739f), _wgslsmith_f_op_f32(-567f * _wgslsmith_f_op_f32(func_2(vec2<u32>(80924u, 82272u))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2221f, global0.x, global2.b.x, global2.b.x) * vec4<f32>(-1909f, global0.x, global2.b.x, -1774f)))))));
    global1 = array<vec2<i32>, 4>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(791f)), _wgslsmith_f_op_f32(floor(199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(244f, 1503f, true))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(firstTrailingBit(global2.a.yzw), ~_wgslsmith_add_vec2_i32(arg_3.b.xz & global1[_wgslsmith_index_u32(0u, 4u)], vec2<i32>(_wgslsmith_clamp_i32(-1i, arg_3.d.x, 1i), 13194i)), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), arg_3.a > -128f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f), 1025f), -227f, arg_1)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1295f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1061f + 585f), _wgslsmith_f_op_f32(arg_3.a - global2.b.x))) * -493f), _wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_div_f32(-927f, -804f)));
    var var_1 = !(!var_0.c.x);
    global1 = array<vec2<i32>, 4>();
    let var_2 = countOneBits(1118i | (~u_input.b << (global2.a.x % 32u)));
    return Struct_1(arg_3.a, arg_3.b, ~arg_3.c, vec2<i32>(1i, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-global0.x), 2147483647i, func_4(_wgslsmith_f_op_vec4_f32(func_1(u_input.b, vec2<u32>(51458u, 51954u) << ((global2.a.ww << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b.x))))), global2.b.x, Struct_1(_wgslsmith_f_op_f32(-232f - global0.x), min(vec3<i32>(2147483647i, 2147483647i, u_input.b), vec3<i32>(1i, u_input.b, u_input.a.x)), max(global2.a >> (vec4<u32>(global2.a.x, global2.a.x, 60521u, u_input.c.x) % vec4<u32>(32u)), global2.a), -countOneBits(vec2<i32>(u_input.b, 9528i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-5325i, u_input.a.x >> (107192u % 32u)), abs(u_input.a.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), u_input.a.zz), -26780i), _wgslsmith_add_vec4_i32((vec4<i32>(u_input.a.x, -2147483647i, u_input.b, u_input.a.x) | vec4<i32>(-48032i, u_input.a.x, u_input.a.x, u_input.b)) & min(vec4<i32>(68942i, u_input.a.x, -43411i, 0i), vec4<i32>(2147483647i, -2147483647i, u_input.b, u_input.a.x)), firstTrailingBit(vec4<i32>(0i, u_input.b, 0i, 49961i)))), select(-u_input.a, u_input.a, true));
    global1 = array<vec2<i32>, 4>();
    global1 = array<vec2<i32>, 4>();
    var var_1 = vec4<bool>(false, true, true, !(_wgslsmith_f_op_f32(global2.b.x * var_0.c.a) != _wgslsmith_f_op_f32(-global2.b.x)) == all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, global0.x))) - var_0.c.a), u_input.a, vec4<u32>(var_0.c.c.x, 31878u, firstLeadingBit(7821u), ~var_0.c.c.x), ~(~select(func_4(vec4<f32>(1099f, -365f, 2721f, -422f), global2.b.x, global0.x, var_0.c).d, abs(var_0.c.d), select(var_1.yw, vec2<bool>(false, var_1.x), var_1.xw))));
    var var_3 = 4294967295u;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1151f)), -261f, _wgslsmith_f_op_f32(1932f - var_0.c.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-410f)))))));
    var var_4 = firstTrailingBit(select(4294967295u, 68660u, var_1.x));
    let var_5 = Struct_4(vec3<u32>(1u, u_input.c.x, ~(~(~var_0.c.c.x))), var_2.b.yz, !(!select(vec4<bool>(true, var_1.x, false, true), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, true)), vec4<bool>(var_1.x, false, var_1.x, var_1.x))), global0.wwx);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_i32(-10946i, var_2.d.x) | -10823i) >> (19472u % 32u), global0.zy, vec2<i32>(select(-18439i, _wgslsmith_add_i32(u_input.a.x, var_2.b.x), any(var_5.c.xz)) << (u_input.c.x % 32u), var_2.b.x), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_vec2_f32(sign(global0.yx)));
}

