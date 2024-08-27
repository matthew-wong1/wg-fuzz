struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 5>;

var<private> global3: f32;

var<private> global4: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(1433f, 1000f), vec2<f32>(660f, -285f), vec2<f32>(-993f, -834f), vec2<f32>(269f, -559f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = vec2<bool>(global1.c.x, !(!(any(arg_0.c.zx) & (global1.c.x & global1.c.x))));
    global1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], arg_0.b.x), vec4<u32>(global1.a.x, 15292u, global1.b.x, 0u)), ~45821u), ~vec2<u32>(global1.b.x, 4294967295u)), 4294967295u, _wgslsmith_dot_vec2_u32(global1.a.xx, ~vec2<u32>(arg_0.b.x, 4294967295u))), vec2<u32>(~abs(31581u | arg_0.a.x), 1u), arg_0.c);
    var_0 = !global1.c.zy;
    var var_1 = Struct_1(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, arg_0.b.x), global1.a) << (_wgslsmith_mult_vec3_u32(arg_0.a, global1.a | arg_0.a) % vec3<u32>(32u))), vec2<u32>(~_wgslsmith_mult_u32(arg_0.a.x, arg_0.a.x), ~_wgslsmith_dot_vec2_u32(~arg_0.b, vec2<u32>(4294967295u, global1.b.x))), select(select(select(!arg_0.c, arg_0.c, vec3<bool>(var_0.x, false, false)), !select(arg_0.c, global1.c, var_0.x), all(vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_0.c.x))), arg_0.c, !(!arg_0.c.x)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1268f)))));
    return vec2<u32>(68473u, ~107627u);
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-541f)) - -475f) - -1537f))));
    global0 = array<u32, 32>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(~1u, 4u)])) + vec2<f32>(450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-184f + 961f) * _wgslsmith_f_op_f32(floor(191f))))), _wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(u_input.b, 4u)] - global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.a.x, 0u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(76565u, 32u)], arg_0.b.x, 6405u, 36255u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 6519u, u_input.b, var_0.b.x), vec4<u32>(27719u, var_0.b.x, 31428u, 4294967295u))), 4u)]));
    var var_2 = global2[_wgslsmith_index_u32(1u, 5u)];
    return vec3<u32>(~global1.b.x, ~var_2.b.x, firstTrailingBit(_wgslsmith_mod_u32(~5232u, ~(~global1.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_1(select(arg_2.wzx, func_4(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(global1.a.x, 32u)], 20703u, 4294967295u), func_3(arg_0), select(global1.c, global1.c, global1.c.x))), vec3<bool>(any(vec4<bool>(arg_0.c.x, false, true, true)), !all(vec4<bool>(global1.c.x, true, arg_0.c.x, false)), true)), ~(max(arg_0.a.xy, vec2<u32>(0u, 89373u)) >> (abs(arg_2.zw) % vec2<u32>(32u))) >> (func_3(global2[_wgslsmith_index_u32(global1.a.x, 5u)]) % vec2<u32>(32u)), !vec3<bool>(true, (26719u >> (global0[_wgslsmith_index_u32(4294967295u, 32u)] % 32u)) >= global1.b.x, any(select(vec4<bool>(arg_0.c.x, false, false, false), vec4<bool>(arg_0.c.x, false, true, false), vec4<bool>(true, true, false, global1.c.x)))));
    global1 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(trunc(576f));
    var var_2 = global2[_wgslsmith_index_u32(54895u, 5u)];
    let var_3 = all(global1.c.xx);
    return any(!vec3<bool>(var_2.c.x, !var_2.c.x, true == var_0.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<u32> {
    global0 = array<u32, 32>();
    var var_0 = Struct_1(~_wgslsmith_div_vec3_u32(arg_0.a, ~vec3<u32>(4294967295u, global1.a.x, arg_0.a.x)), global1.b, !select(vec3<bool>(global1.c.x, global1.c.x, global1.c.x), vec3<bool>(false, true, func_2(arg_0, vec4<i32>(u_input.a, 27065i, 1i, u_input.a), vec4<u32>(arg_0.b.x, 0u, global1.a.x, u_input.b))), true));
    let var_1 = ~var_0.b.x;
    global2 = array<Struct_1, 5>();
    var var_2 = 57176i;
    return ~reverseBits(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(24445u, 32u)], var_0.a.x, 2732u, var_0.b.x) << (vec4<u32>(16619u, 0u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(17548u, global1.a.x, global0[_wgslsmith_index_u32(var_1, 32u)], arg_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(global1.a.x, 5u)];
    let var_1 = !all(var_0.c);
    var var_2 = Struct_1(global1.a, _wgslsmith_div_vec2_u32(~vec2<u32>(1u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(58109u, 35784u, global1.b.x), 32u)]), vec2<u32>(_wgslsmith_clamp_u32(0u, 1u, 0u) & _wgslsmith_mult_u32(2634u, global1.b.x), ~0u)), vec3<bool>(true, false, !(true || var_1)));
    let var_3 = (_wgslsmith_add_vec4_i32(firstLeadingBit(~vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), ~firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) << (func_1(Struct_1(global1.a << (vec3<u32>(global0[_wgslsmith_index_u32(var_2.a.x, 32u)], 7058u, var_2.a.x) % vec3<u32>(32u)), var_2.a.yx << (var_2.a.zx % vec2<u32>(32u)), !vec3<bool>(false, var_0.c.x, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(u_input.b, 4u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1712f, 580f) * vec2<f32>(-940f, 336f)))) % vec4<u32>(32u))) & -vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -32060i), vec2<i32>(25483i, u_input.a)), u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.a, u_input.a, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 33490i, 1i), vec4<i32>(u_input.a, 44457i, 2147483647i, u_input.a))), u_input.a);
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1207f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-695f + _wgslsmith_f_op_f32(min(1420f, 808f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f - 232f)))));
    let var_5 = var_4.x;
    let var_6 = -var_3.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(-(~var_3.xwz), var_3.xyx), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, _wgslsmith_f_op_f32(-1000f - 539f))), var_4.xz)));
}

