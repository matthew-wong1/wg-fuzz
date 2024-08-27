struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1095f, 911f, -1281f);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<i32>(71839i, 0i, 26198i), vec4<i32>(-11323i, 1565i, 9721i, -36905i)), Struct_1(vec3<i32>(2147483647i, -1i, -1i), vec4<i32>(-1i, 2147483647i, 43944i, -8110i)), Struct_1(vec3<i32>(22630i, -1i, 0i), vec4<i32>(i32(-2147483648), 1i, -55960i, -64223i)), Struct_1(vec3<i32>(-28039i, 2147483647i, 1i), vec4<i32>(-11550i, i32(-2147483648), i32(-2147483648), 1i)), Struct_1(vec3<i32>(0i, i32(-2147483648), 1i), vec4<i32>(61909i, 2147483647i, i32(-2147483648), -19384i)), Struct_1(vec3<i32>(38961i, 9517i, 2147483647i), vec4<i32>(2147483647i, 14347i, -10230i, 64996i)), Struct_1(vec3<i32>(-12717i, 2147483647i, -16924i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -7682i)), Struct_1(vec3<i32>(i32(-2147483648), -42236i, 1i), vec4<i32>(-1i, 0i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(-54195i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 881i, -78877i, 0i)), Struct_1(vec3<i32>(-8120i, 0i, -11561i), vec4<i32>(-1i, 21879i, 39977i, 0i)), Struct_1(vec3<i32>(1i, -1i, 2147483647i), vec4<i32>(2147483647i, 1057i, -15332i, -25530i)), Struct_1(vec3<i32>(-29133i, -18413i, i32(-2147483648)), vec4<i32>(-6662i, 0i, 2147483647i, -31704i)), Struct_1(vec3<i32>(-28321i, i32(-2147483648), i32(-2147483648)), vec4<i32>(13285i, 2147483647i, 304i, i32(-2147483648))), Struct_1(vec3<i32>(-27119i, 50632i, -1i), vec4<i32>(-1i, 36774i, 1i, -1i)), Struct_1(vec3<i32>(-769i, -749i, 46814i), vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -1i), vec4<i32>(2147483647i, 34013i, -31817i, i32(-2147483648))), Struct_1(vec3<i32>(1i, -1i, 41215i), vec4<i32>(12240i, -35080i, 0i, -1i)), Struct_1(vec3<i32>(-18914i, 2147483647i, 409i), vec4<i32>(2147483647i, -66368i, 2147483647i, -1i)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(global0.x + 463f);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.x, global0.x))));
    let var_2 = Struct_3(all(!vec2<bool>(!arg_1.d, all(vec2<bool>(arg_1.e.x, arg_1.e.x)))), arg_1.c.b);
    let var_3 = arg_0.c.b.x;
    var var_4 = Struct_3(var_2.a, firstTrailingBit(arg_0.c.b));
    return var_4.b;
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))) + 166f), -240f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -715f), global0.x)));
    let var_1 = _wgslsmith_f_op_f32(func_2());
    return _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a, ~0i), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(u_input.a, u_input.a) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, -2147483647i))), u_input.a, ~u_input.a), abs(func_3(Struct_4(firstTrailingBit(-1i), Struct_1(vec3<i32>(25810i, 34234i, u_input.a), vec4<i32>(26336i, 0i, u_input.a, 0i)), Struct_1(vec3<i32>(33802i, u_input.a, 1i), vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i)), true, vec4<bool>(false, false, false, false)), Struct_4(44167i, Struct_1(vec3<i32>(u_input.a, -7546i, 2147483647i), vec4<i32>(u_input.a, u_input.a, -2147483647i, 2147483647i)), global1[_wgslsmith_index_u32(1u, 18u)], true, vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(u_input.a, u_input.a, -10233i), abs(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_3(true, ~max(func_1(global0.yy), ~vec4<i32>(u_input.a, 1i, 33011i, u_input.a))));
    let var_1 = -2147483647i;
    let var_2 = Struct_1(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_1), -vec2<i32>(13722i, 1i)), -25643i, 2147483647i), firstTrailingBit(var_0.a.b));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1185f, 614f, global0.x))))))))));
    global1 = array<Struct_1, 18>();
    var var_3 = min(var_2.a.xy, vec2<i32>(1i, i32(-1i) * -_wgslsmith_div_i32(u_input.a, u_input.a)));
    let var_4 = _wgslsmith_clamp_vec2_i32(min(vec2<i32>(~19455i, var_1) & (vec2<i32>(-1i) * -vec2<i32>(-14961i, var_2.a.x)), vec2<i32>(-5049i, var_2.b.x)), countOneBits(var_2.b.wx), var_2.b.wx);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-537f * 1073f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 1000f)), _wgslsmith_f_op_f32(1000f - -399f), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1614f, global0.x)))));
}

