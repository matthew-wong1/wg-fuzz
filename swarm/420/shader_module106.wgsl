struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<u32>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))))));
    let var_1 = 1171f;
    let var_2 = Struct_1(-vec4<i32>(countOneBits(global3.a.x) | global3.a.x, u_input.d, _wgslsmith_sub_i32(u_input.e.x, 28813i & global2.x), -1644i));
    global0 = global1.x;
    global1 = vec4<u32>(abs(0u), global1.x, 1641u, global1.x);
    return global3.a.x;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> u32 {
    let var_0 = vec3<u32>(~u_input.c.x, abs(_wgslsmith_add_u32(~1u, 1u | arg_1.x) & ~reverseBits(0u)), 57107u);
    global0 = ~arg_1.x;
    let var_1 = Struct_2(Struct_1(vec4<i32>(arg_0, countOneBits(0i), ~(~global3.a.x), i32(-1i) * -u_input.d)), vec3<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), true), Struct_1((global3.a ^ global3.a) >> (vec4<u32>(1u, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(4294967295u, global1.x, 49530u)), global1.x, arg_1.x) % vec4<u32>(32u))), Struct_1(global3.a));
    var var_2 = var_1.c;
    var var_3 = !var_1.b;
    return select(~(~arg_1.x) | _wgslsmith_dot_vec4_u32(abs(arg_1), arg_1), u_input.c.x, false) & max(~(~(~global1.x)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global1.x, arg_1.x), u_input.a.x));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_add_vec4_u32(countOneBits(min(u_input.a, vec4<u32>(4951u, 0u, max(25397u, 21356u), ~4294967295u))), vec4<u32>(0u, ~0u, u_input.a.x, func_3(func_2(), u_input.a)));
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(global3.a, select(vec4<i32>(_wgslsmith_dot_vec4_i32(global3.a, vec4<i32>(global3.a.x, global2.x, 4251i, u_input.d)), countOneBits(global3.a.x), -global2.x, 22620i), _wgslsmith_mult_vec4_i32(select(global3.a, global3.a, true), firstLeadingBit(vec4<i32>(u_input.d, u_input.d, global3.a.x, 44514i))), true)));
    global1 = vec4<u32>(32458u, _wgslsmith_add_u32(~abs(~u_input.c.x), ~var_0.x), 1u, 1u);
    var var_2 = _wgslsmith_sub_vec4_i32(-vec4<i32>(global3.a.x, u_input.d, _wgslsmith_mod_i32(global2.x, u_input.e.x), -8653i) << (~select(firstTrailingBit(var_0), countOneBits(var_0), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false))) % vec4<u32>(32u)), firstTrailingBit(abs(global3.a << (abs(vec4<u32>(1u, global1.x, 1u, u_input.c.x)) % vec4<u32>(32u)))));
    var var_3 = ~_wgslsmith_div_vec3_i32(vec3<i32>(abs(~var_2.x), global2.x, reverseBits(u_input.d)), -reverseBits(countOneBits(global2.wzz)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(333f)), _wgslsmith_f_op_f32(692f + 1000f))))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    global1 = _wgslsmith_mod_vec4_u32(max(arg_0, _wgslsmith_mod_vec4_u32(arg_0, select(firstTrailingBit(vec4<u32>(u_input.c.x, 4789u, global1.x, 10308u)), arg_0, false))), arg_0 >> (~select(select(vec4<u32>(4294967295u, 969u, 1u, 47433u), arg_0, true), arg_0, !vec4<bool>(true, arg_1.x, false, true)) % vec4<u32>(32u)));
    let var_0 = all(vec2<bool>(!arg_1.x, true));
    var var_1 = Struct_2(Struct_1(global3.a), vec3<bool>(true, arg_1.x, ~(u_input.b.x | 8752u) >= 0u), Struct_1(-_wgslsmith_sub_vec4_i32(-global3.a, -global3.a)), Struct_1(~_wgslsmith_sub_vec4_i32(vec4<i32>(global3.a.x, 0i, -607i, global2.x), countOneBits(vec4<i32>(u_input.d, global2.x, u_input.e.x, global3.a.x)))));
    global3 = var_1.a;
    var var_2 = 1i;
    return Struct_1(firstTrailingBit(min(min(_wgslsmith_add_vec4_i32(global3.a, vec4<i32>(2147483647i, global2.x, var_1.a.a.x, var_1.a.a.x)), -vec4<i32>(global3.a.x, var_1.d.a.x, 1i, global3.a.x)), var_1.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.yyw;
    global3 = func_4(u_input.a, !vec3<bool>(true, true, (u_input.c.x >= global1.x) & all(vec4<bool>(true, true, false, true))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(f32(-1f) * -2392f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(783f, -128f))))))));
    global1 = u_input.a;
    global0 = 9428u;
    global0 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_0.x), vec3<u32>(_wgslsmith_clamp_u32(~global1.x, countOneBits(1u), 8148u), countOneBits(16840u), u_input.b.x) << (_wgslsmith_sub_vec3_u32(global1.xxw, ~(~vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x))) % vec3<u32>(32u)));
}

