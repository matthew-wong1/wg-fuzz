struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: vec4<u32> = vec4<u32>(67630u, 0u, 8659u, 0u);

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(29972u, 1u, 4294967295u), vec3<u32>(4294967295u, 42142u, 28195u), vec3<u32>(0u, 35439u, 12953u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = !select(select(vec3<bool>(!global0[_wgslsmith_index_u32(arg_2, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)] & false, any(vec4<bool>(false, false, true, true))), select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.a, arg_3.a, arg_0.a), !vec3<bool>(arg_3.a, true, false)), !(true | global0[_wgslsmith_index_u32(47895u, 22u)])), select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_3.a, true), vec3<bool>(false, arg_0.a, arg_0.a), select(vec3<bool>(arg_0.a, false, arg_3.a), vec3<bool>(arg_0.a, true, global0[_wgslsmith_index_u32(4294967295u, 22u)]), global0[_wgslsmith_index_u32(global1.x, 22u)])), false), false);
    global0 = array<bool, 22>();
    var var_1 = Struct_3(select(vec3<bool>(!arg_0.a, arg_3.a, false), select(select(!vec3<bool>(false, false, arg_3.a), select(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 22u)], false), vec3<bool>(var_0.x, true, false), global0[_wgslsmith_index_u32(35880u, 22u)]), vec3<bool>(var_0.x, true, var_0.x)), select(select(vec3<bool>(global0[_wgslsmith_index_u32(65824u, 22u)], var_0.x, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 22u)], arg_0.a, true), global0[_wgslsmith_index_u32(22087u, 22u)]), select(vec3<bool>(arg_3.a, true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 22u)], arg_3.a), arg_3.a), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)], arg_0.a)), select(vec3<bool>(arg_3.a, true, true), vec3<bool>(true, false, true), false)), !var_0.x), arg_0, Struct_1(false, _wgslsmith_f_op_vec2_f32(-arg_3.c.xy), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-636f, 595f, 686f, _wgslsmith_f_op_f32(round(491f))), vec4<f32>(-1838f, _wgslsmith_f_op_f32(step(455f, 631f)), -691f, _wgslsmith_f_op_f32(-arg_3.b.x)))), arg_0.e.xz & arg_3.e.yx, _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, arg_0.d.x), arg_3.e)));
    global0 = array<bool, 22>();
    var_1 = Struct_3(!select(!select(vec3<bool>(arg_3.a, true, arg_3.a), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 22u)], false), false), var_1.a, true), Struct_1(true, _wgslsmith_f_op_vec2_f32(arg_3.c.yz + arg_0.c.zx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 759f, -1000f, var_1.b.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, var_1.b.b.x, arg_0.c.x, -729f)))), abs(u_input.b), vec3<i32>(~1i, arg_0.e.x, -46752i)), Struct_1(((-43304i <= arg_3.d.x) || true) && true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(arg_3.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1507f, 427f, 364f, arg_3.c.x))))))), vec2<i32>(~u_input.b.x, -41850i), -vec3<i32>(2147483647i, reverseBits(arg_3.d.x), ~(-22662i))));
    return !vec3<bool>(!var_0.x, all(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_2, 22u)], arg_0.a), select(vec4<bool>(arg_3.a, false, var_0.x, arg_3.a), vec4<bool>(arg_3.a, var_1.b.a, arg_0.a, arg_0.a), arg_3.a), select(vec4<bool>(var_1.c.a, true, var_1.b.a, arg_0.a), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], true, false, true), arg_3.a))), false);
}

fn func_2() -> Struct_3 {
    var var_0 = 2147483647i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1245f - -305f))))), _wgslsmith_f_op_f32(f32(-1f) * -1068f), 537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-263f)), -730f))));
    global0 = array<bool, 22>();
    let var_2 = 4294967295u;
    let var_3 = Struct_3(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(1473u, 22u)], false, global0[_wgslsmith_index_u32(var_2, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(global1.x, 22u)], true), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true))), select(func_3(Struct_1(true, vec2<f32>(-400f, -461f), vec4<f32>(var_1.x, var_1.x, -1000f, var_1.x), vec2<i32>(u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x)), 27289i, global1.x, Struct_1(false, var_1.zz, vec4<f32>(var_1.x, 1233f, -224f, var_1.x), vec2<i32>(u_input.b.x, 14912i), vec3<i32>(2147483647i, -1i, u_input.b.x))), func_3(Struct_1(false, var_1.wx, vec4<f32>(-122f, -1786f, 573f, 182f), vec2<i32>(u_input.b.x, u_input.b.x), vec3<i32>(-1i, 2147483647i, u_input.b.x)), u_input.b.x, 1u, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<f32>(1000f, var_1.x), var_1, u_input.b, vec3<i32>(1i, -2192i, u_input.b.x))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2, var_2), 22u)]), global0[_wgslsmith_index_u32(4294967295u ^ global1.x, 22u)]), select(vec3<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 22u)], false)), true, u_input.b.x != u_input.b.x), vec3<bool>(true, global0[_wgslsmith_index_u32(firstTrailingBit(var_2), 22u)], all(vec4<bool>(false, global0[_wgslsmith_index_u32(85581u, 22u)], global0[_wgslsmith_index_u32(16682u, 22u)], false))), func_3(Struct_1(true, vec2<f32>(var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, -537f, -1699f), u_input.b, vec3<i32>(u_input.b.x, 57869i, u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b), ~1u, Struct_1(false, var_1.xx, vec4<f32>(var_1.x, -692f, 1239f, var_1.x), u_input.b, vec3<i32>(1i, u_input.b.x, 0i)))), func_3(Struct_1(!global0[_wgslsmith_index_u32(global1.x, 22u)], vec2<f32>(-1501f, -1102f), _wgslsmith_f_op_vec4_f32(-var_1), abs(u_input.b), firstLeadingBit(vec3<i32>(1i, 14155i, u_input.b.x))), 2147483647i, _wgslsmith_dot_vec2_u32(~u_input.a.zx, vec2<u32>(1u, global1.x)), Struct_1(u_input.b.x == -2147483647i, var_1.xx, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-825f, var_1.x, var_1.x, var_1.x))), u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<i32>(16630i, 2147483647i, u_input.b.x)))), Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.wz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1 + var_1))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1 * var_1)))), vec2<i32>(2147483647i, -firstTrailingBit(u_input.b.x)), min(max(vec3<i32>(u_input.b.x, u_input.b.x, -79711i), vec3<i32>(17542i, -54287i, 19537i)) | -vec3<i32>(-20305i, 2913i, u_input.b.x), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -32384i), vec3<i32>(u_input.b.x, 10691i, u_input.b.x)))), Struct_1(all(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_2, 22u)], global0[_wgslsmith_index_u32(global1.x, 22u)], false, global0[_wgslsmith_index_u32(global1.x, 22u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), var_1.xz, _wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(countOneBits(-2147483647i), reverseBits(u_input.b.x))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), u_input.b), -u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)) & ~vec3<i32>(0i, u_input.b.x, -35361i)));
    return Struct_3(vec3<bool>(true, any(!vec2<bool>(var_3.b.a, false)), global0[_wgslsmith_index_u32(1u, 22u)]), Struct_1(any(var_3.a.yx), _wgslsmith_f_op_vec2_f32(var_3.b.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_3.c.c.x) - _wgslsmith_div_vec2_f32(vec2<f32>(-753f, 2012f), var_3.c.c.xy))), var_3.b.c, vec2<i32>(~_wgslsmith_sub_i32(var_3.c.e.x, var_3.c.d.x), abs(~11507i)), -var_3.c.e), Struct_1(func_3(Struct_1(global0[_wgslsmith_index_u32(~48172u, 22u)], var_1.zx, _wgslsmith_f_op_vec4_f32(-var_3.b.c), vec2<i32>(var_3.c.d.x, var_3.b.e.x), firstTrailingBit(vec3<i32>(-32818i, u_input.b.x, var_3.b.d.x))), -_wgslsmith_clamp_i32(0i, u_input.b.x, var_3.c.e.x), _wgslsmith_div_u32(_wgslsmith_add_u32(3617u, global1.x), u_input.a.x), var_3.b).x, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(298f * var_1.x))), var_1.x), var_1, -vec2<i32>(var_3.c.e.x, 14336i), firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -2147483647i), ~1i, _wgslsmith_clamp_i32(28761i, var_3.c.d.x, -1i)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec2<bool>(true, arg_0.a.x);
    var var_1 = Struct_3(arg_0.a, func_2().c, Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.b)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.x, arg_2.c.x), arg_0.b.b, arg_0.a.xz)) + _wgslsmith_f_op_vec2_f32(abs(arg_2.b)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(845f, arg_2.c.x, 2237f, 339f), arg_0.b.c), _wgslsmith_f_op_vec4_f32(-arg_2.c))))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-26634i, arg_0.b.e.x, arg_0.c.d.x, arg_0.b.e.x) >> (vec4<u32>(0u, 1u, 92149u, global1.x) % vec4<u32>(32u)), min(vec4<i32>(arg_0.c.e.x, arg_2.e.x, -1i, u_input.b.x), vec4<i32>(1i, -27102i, arg_2.d.x, arg_0.b.e.x))), arg_0.c.d.x), _wgslsmith_add_vec3_i32(arg_0.c.e, arg_0.b.e)));
    var_1 = func_2();
    let var_2 = -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.b.x, -43464i)), ~(u_input.b & arg_0.c.e.xx)), arg_2.e.x);
    global1 = vec4<u32>(~(28098u & u_input.a.x), 1u, global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(~global1.x), max(_wgslsmith_mod_u32(35981u, 4294967295u), max(0u, u_input.a.x)), 27371u, 1u), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 1u), vec4<u32>(0u, u_input.a.x, global1.x, 63051u)))));
    return Struct_2(arg_2.a, arg_0.c.c.yxz, func_2().c, select(~vec2<u32>(~u_input.a.x, ~39053u), _wgslsmith_mult_vec2_u32(firstTrailingBit(~vec2<u32>(1u, 0u)), abs(vec2<u32>(34286u, 1u) >> (global1.wy % vec2<u32>(32u)))), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], false)));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_4 {
    let var_0 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -236f))), arg_0, arg_0);
    global0 = array<bool, 22>();
    var var_1 = -select(vec3<i32>(~u_input.b.x, 0i, firstLeadingBit(-45222i)), abs(vec3<i32>(1i, u_input.b.x, -22297i)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-45207i, u_input.b.x, 2147483647i), vec3<i32>(u_input.b.x, 30843i, u_input.b.x)), true) & _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(~u_input.b.x, -2147483647i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), -min(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, -1i, u_input.b.x) >> (global1.wzz % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, arg_0)));
    var var_3 = func_4(func_2(), global0[_wgslsmith_index_u32(4294967295u, 22u)], func_2().c);
    return Struct_4(select(_wgslsmith_mult_vec2_u32(min(firstTrailingBit(vec2<u32>(92923u, 23367u)), _wgslsmith_clamp_vec2_u32(var_3.d, global1.yy, global1.yz)), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.d.x, 1u), ~vec2<u32>(var_3.d.x, 95717u))), abs(global1.wx), !vec2<bool>(func_2().a.x, var_3.c.a)), -2147483647i, reverseBits(u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1308f, _wgslsmith_f_op_f32(max(1475f, arg_1)), -1279f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(558f, -637f, var_0.x, -1000f) * var_3.c.c)) * vec4<f32>(-1900f, 588f, var_0.x, _wgslsmith_f_op_f32(-787f * 1000f)))), arg_1);
}

fn func_5(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(arg_0.d.zz));
    var var_1 = func_2();
    let var_2 = func_4(Struct_3(var_1.a, Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 + var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1275f, arg_0.e, 264f, arg_0.e))), select(vec2<i32>(1i, -17959i), vec2<i32>(-1i, arg_0.b), !var_1.a.yx), func_4(Struct_3(var_1.a, Struct_1(true, vec2<f32>(arg_0.e, -906f), vec4<f32>(arg_0.d.x, arg_0.e, var_0.x, 1389f), vec2<i32>(arg_0.b, 0i), vec3<i32>(var_1.c.d.x, arg_0.b, -1i)), Struct_1(global0[_wgslsmith_index_u32(32893u, 22u)], var_0, var_1.b.c, vec2<i32>(-20511i, arg_0.b), var_1.b.e)), func_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<f32>(-1003f, -205f), arg_0.d, u_input.b, vec3<i32>(1i, 0i, var_1.c.d.x)), 1i, global1.x, Struct_1(false, vec2<f32>(arg_0.e, arg_0.d.x), vec4<f32>(var_1.b.c.x, var_1.c.c.x, var_0.x, 814f), u_input.b, vec3<i32>(arg_0.b, 1i, arg_0.b))).x, Struct_1(false, vec2<f32>(arg_0.d.x, -697f), arg_0.d, vec2<i32>(22614i, arg_0.b), var_1.c.e)).c.e), Struct_1(!(arg_0.d.x > -718f), _wgslsmith_f_op_vec2_f32(-arg_0.d.xy), _wgslsmith_f_op_vec4_f32(-func_1(853f, 1085f).d), var_1.c.d, vec3<i32>(~(-12001i), i32(-1i) * -1i, max(var_1.b.d.x, var_1.b.e.x)))), false | func_4(func_2(), all(vec4<bool>(false, true, var_1.a.x, var_1.a.x)), var_1.c).a, func_4(func_2(), false, func_2().b).c).c;
    global2 = array<vec3<u32>, 3>();
    var var_3 = ~_wgslsmith_sub_vec2_u32(u_input.a.yx, ~global1.ww);
    return -1114f;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_2 {
    global2 = array<vec3<u32>, 3>();
    global2 = array<vec3<u32>, 3>();
    var var_0 = vec3<bool>(_wgslsmith_div_u32(~59162u, _wgslsmith_mod_u32(arg_1.a.x, arg_1.c.x)) <= 24343u, !global0[_wgslsmith_index_u32(35113u, 22u)], true);
    global2 = array<vec3<u32>, 3>();
    global2 = array<vec3<u32>, 3>();
    return Struct_2(true, vec3<f32>(893f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1563f + -739f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1884f, -631f))), _wgslsmith_f_op_f32(arg_1.e + _wgslsmith_f_op_f32(-1583f * _wgslsmith_f_op_f32(-arg_1.d.x)))), func_2().c, countOneBits(~(~vec2<u32>(arg_1.a.x, arg_1.c.x))));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_3 {
    global0 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.b.c)) - _wgslsmith_f_op_vec4_f32(-arg_0.b.c)));
    var var_1 = Struct_2(arg_1.c.a, _wgslsmith_f_op_vec3_f32(-func_2().c.c.yxx), arg_1.c, select(~_wgslsmith_mult_vec2_u32(min(vec2<u32>(79906u, 0u), vec2<u32>(arg_1.d.x, u_input.a.x)), ~vec2<u32>(46837u, global1.x)), ~vec2<u32>(_wgslsmith_div_u32(arg_1.d.x, 1u), _wgslsmith_add_u32(global1.x, arg_1.d.x)), vec2<bool>(global0[_wgslsmith_index_u32(func_4(func_2(), true, Struct_1(false, var_0.yy, arg_0.c.c, vec2<i32>(arg_0.b.e.x, -2147483647i), vec3<i32>(0i, 2147483647i, u_input.b.x))).d.x, 22u)], func_6(arg_0.c.e, Struct_4(vec2<u32>(arg_1.d.x, global1.x), arg_0.c.d.x, vec3<u32>(48925u, 58603u, global1.x), arg_0.b.c, 834f)).d.x == ~1367u)));
    var var_2 = 4294967295u;
    var var_3 = func_6(-select(~vec3<i32>(u_input.b.x, 1i, arg_0.c.e.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 11164i, 33613i), _wgslsmith_div_vec3_i32(arg_1.c.e, vec3<i32>(arg_1.c.e.x, var_1.c.d.x, arg_1.c.d.x))), select(arg_0.a, select(vec3<bool>(var_1.c.a, arg_1.c.a, global0[_wgslsmith_index_u32(arg_1.d.x, 22u)]), arg_0.a, false), arg_0.a)), func_1(-312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b.x * 3415f)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -575f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(554f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-682f)))));
    let var_1 = func_7(Struct_3(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)], true)), Struct_1(global0[_wgslsmith_index_u32(firstTrailingBit(~global1.x), 22u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -738f) + vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 767f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -929f, var_0, -472f), vec4<f32>(950f, var_0, var_0, -1379f))), ~(~u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, 2147483647i), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)) << (global1.xzx % vec3<u32>(32u))), Struct_1(u_input.b.x < -1i, vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), -854f), _wgslsmith_div_vec4_f32(vec4<f32>(-313f, -860f, -945f, var_0), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1150f, var_0, var_0, 204f), vec4<f32>(-240f, 285f, var_0, var_0)))), -_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), vec3<i32>(1i, 1i, 1i) >> (~global1.zyz % vec3<u32>(32u)))), func_6(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(0i, u_input.b.x, u_input.b.x)), ~vec3<i32>(0i, 0i, u_input.b.x), select(~vec3<i32>(u_input.b.x, -8373i, 41979i), ~vec3<i32>(u_input.b.x, -2147483647i, -38127i), var_0 <= -524f)), Struct_4(~firstLeadingBit(u_input.a.zy), ~21680i, global1.zxw ^ select(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), global0[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, 692f, 788f, var_0)) + vec4<f32>(-1305f, var_0, -1000f, 1246f)), _wgslsmith_f_op_f32(func_5(func_1(687f, 1264f))))), abs(_wgslsmith_add_vec2_i32(~u_input.b << (u_input.a.xy % vec2<u32>(32u)), select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(71017i, -2147483647i), vec2<bool>(false, false)) >> (~u_input.a.xx % vec2<u32>(32u)))));
    var var_2 = ~(-firstTrailingBit(func_6(var_1.c.e, Struct_4(vec2<u32>(global1.x, global1.x), var_1.b.d.x, vec3<u32>(4294967295u, 5645u, 4294967295u), var_1.b.c, 1393f)).c.e ^ ~var_1.c.e));
    var var_3 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(global1.x >> (4294967295u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(25649u, 0u, 1u, 22976u), vec4<u32>(u_input.a.x, 18708u, u_input.a.x, 4294967295u)), _wgslsmith_add_u32(13837u, 1u)), select(~global1.yww, u_input.a, all(vec3<bool>(false, true, true))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true), vec3<bool>(var_1.b.a, global0[_wgslsmith_index_u32(global1.x, 22u)], true)), func_2().a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a.x), 22u)])), ~firstLeadingBit(vec3<u32>(global1.x, 4294967295u, global1.x) << (u_input.a % vec3<u32>(32u)))) != _wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(global1.x, 17056u)), vec2<u32>(u_input.a.x, u_input.a.x) | vec2<u32>(45519u, 9535u), 773f == var_1.c.b.x) >> (~vec2<u32>(4294967295u, 99185u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(func_4(var_1, all(vec4<bool>(true, global0[_wgslsmith_index_u32(2791u, 22u)], var_1.b.a, var_1.b.a)), var_1.c).d, ~u_input.a.zz));
    let var_4 = !(global0[_wgslsmith_index_u32(42571u, 22u)] != true);
    let var_5 = var_1.b;
    let var_6 = func_7(var_1, func_6(abs(vec3<i32>(_wgslsmith_add_i32(var_1.c.e.x, var_5.e.x), -var_5.e.x, _wgslsmith_div_i32(var_1.b.e.x, var_5.d.x))), func_1(_wgslsmith_f_op_f32(func_2().b.c.x * var_5.b.x), -537f)), -var_1.b.e.yx);
    global0 = array<bool, 22>();
    let var_7 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, -130f)) * vec2<f32>(-516f, _wgslsmith_div_f32(var_1.c.c.x, -1757f)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_7(func_2(), func_4(var_6, any(vec4<bool>(true, var_4, false, var_5.a)), var_1.c), var_2.yx).b.e.yy >> (~_wgslsmith_mult_vec2_u32(u_input.a.xz, u_input.a.zy) % vec2<u32>(32u)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), ~global1.x, u_input.a.x), firstTrailingBit(~global1.xyw)), ~(vec3<u32>(global1.x, 30109u, 4294967295u) << (~global2[_wgslsmith_index_u32(56661u, 3u)] % vec3<u32>(32u)))));
}

