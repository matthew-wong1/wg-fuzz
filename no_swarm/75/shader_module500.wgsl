struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-40876i, 2147483647i, i32(-2147483648)), vec3<i32>(-25847i, 1i, 1142i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(-1i, -13519i, 2147483647i), vec3<i32>(-22484i, 0i, 2147483647i), vec3<i32>(-35705i, 1i, 14440i), vec3<i32>(-17649i, -56048i, 58018i), vec3<i32>(0i, -47515i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -5632i), vec3<i32>(1i, 1i, -242i), vec3<i32>(-1i, 1i, -44502i), vec3<i32>(-20419i, 2147483647i, 10340i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(-1i, 11668i, i32(-2147483648)), vec3<i32>(29411i, 1743i, -3006i), vec3<i32>(43706i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), -1i, 423i), vec3<i32>(2147483647i, 32535i, -1i), vec3<i32>(i32(-2147483648), 11281i, 21748i), vec3<i32>(24289i, i32(-2147483648), 1i), vec3<i32>(34285i, 1i, 51037i), vec3<i32>(-15307i, 34032i, 1i), vec3<i32>(i32(-2147483648), -37261i, 26097i), vec3<i32>(-63759i, -10916i, 0i), vec3<i32>(-40894i, -61151i, -54249i), vec3<i32>(1i, 16756i, -6269i), vec3<i32>(-33575i, 2147483647i, 2147483647i));

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global4: array<vec2<bool>, 19>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    global1 = array<Struct_1, 23>();
    var var_1 = !(true == var_0.e.a.x);
    global1 = array<Struct_1, 23>();
    let var_2 = var_0.d;
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    global4 = array<vec2<bool>, 19>();
    global3 = !vec4<bool>(!all(vec4<bool>(global0.d.a.x, true, false, global0.d.a.x)), global0.d.a.x, arg_0.a.x, true);
    let var_0 = vec4<bool>(all(global3.xxw), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x * arg_1.x), _wgslsmith_f_op_f32(-global0.a.x))), any(vec4<bool>(false, global3.x, arg_0.a.x, global0.c.a.x)) && arg_0.a.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -1142f), arg_0.a.x);
    global3 = var_0;
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -1000f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * 839f)), _wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(arg_1.x, -476f, 708f, 386f))))), 1u ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 0u, 105747u) >> (vec3<u32>(4294967295u, u_input.a.x, global0.b) % vec3<u32>(32u)), u_input.c) >> (~global0.b % 32u)), Struct_1(vec2<bool>(!(arg_0.a.x || arg_2), 0i >= u_input.b.x)), global1[_wgslsmith_index_u32(global0.b, 23u)], Struct_1(!select(vec2<bool>(false, true), arg_0.a, select(global3.zy, global0.e.a, vec2<bool>(global0.d.a.x, global3.x)))));
    return _wgslsmith_mod_u32(37663u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, arg_3.x))) & u_input.c.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-491f)) + 434f);
    global4 = array<vec2<bool>, 19>();
    var var_1 = ~(~(~(~vec4<u32>(3481u, global0.b, 1u, 22779u) >> (~vec4<u32>(global0.b, 0u, 10250u, 1u) % vec4<u32>(32u)))));
    var_1 = _wgslsmith_clamp_vec4_u32(~max(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, global0.b, 9251u, var_1.x), vec4<u32>(51083u, 23653u, 41922u, global0.b) >> (vec4<u32>(28078u, global0.b, 5748u, global0.b) % vec4<u32>(32u))), vec4<u32>(abs(0u), u_input.a.x, var_1.x, ~var_1.x)), ~vec4<u32>(~u_input.a.x, firstLeadingBit(62328u), 0u, ~1u) ^ ~(~vec4<u32>(41156u, 0u, 63124u, 104511u)), vec4<u32>(select(~global0.b, ~func_2(global1[_wgslsmith_index_u32(var_1.x, 23u)], Struct_2(vec4<f32>(global0.a.x, -1006f, 833f, 319f), var_1.x, Struct_1(vec2<bool>(true, true)), global0.d, global0.d)), any(select(vec4<bool>(global3.x, true, true, false), vec4<bool>(global0.c.a.x, true, true, true), vec4<bool>(false, false, false, true)))), _wgslsmith_mult_u32(func_3(Struct_1(vec2<bool>(false, false)), global0.a.zz, global3.x, vec3<u32>(40454u, 9888u, 4294967295u)) ^ ~4294967295u, u_input.a.x), u_input.c.x, countOneBits(max(u_input.a.x << (global0.b % 32u), var_1.x << (global0.b % 32u)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, -195f, global0.a.x, -187f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 851f, 430f, 482f) - global0.a)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -615f), 952f, global0.a.x, _wgslsmith_f_op_f32(floor(global0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x) * global0.a)))), ~var_1.x & countOneBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 4294967295u), global0.b << (global0.b % 32u))), global0.e, Struct_1(global4[_wgslsmith_index_u32(1u, 19u)]), Struct_1(vec2<bool>(any(select(vec4<bool>(false, global0.d.a.x, global0.e.a.x, global3.x), vec4<bool>(global3.x, true, global0.c.a.x, false), vec4<bool>(global3.x, global3.x, false, true))), !global0.e.a.x)));
    return Struct_1(vec2<bool>(true, any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(vec4<bool>(!global3.x, global0.e.a.x, false, true), select(vec4<bool>(global3.x, global3.x, false, global0.d.a.x), select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(global3.x, true, global3.x, global3.x), true), true), true));
    var var_1 = -361f;
    let var_2 = func_1(~_wgslsmith_div_vec2_i32(max(~u_input.b, -vec2<i32>(u_input.b.x, -2925i)), ~u_input.b));
    var var_3 = min(_wgslsmith_dot_vec4_u32(select(countOneBits(abs(vec4<u32>(u_input.a.x, 1u, u_input.c.x, 0u))), ~(~vec4<u32>(22568u, global0.b, global0.b, 1u)), all(func_1(vec2<i32>(-76776i, u_input.b.x)).a)), ~(~(~vec4<u32>(23779u, u_input.a.x, u_input.c.x, u_input.c.x)))), ~1u);
    let var_4 = !(!vec4<bool>(!var_2.a.x, _wgslsmith_f_op_f32(global0.a.x + global0.a.x) <= 148f, false, all(!vec4<bool>(var_0, false, true, var_2.a.x))));
    global0 = Struct_2(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~46905u, 1u, ~global0.b, 9635u)), ~max(select(vec4<u32>(global0.b, 15662u, global0.b, global0.b), vec4<u32>(global0.b, global0.b, u_input.c.x, global0.b), true), ~vec4<u32>(0u, 0u, 11819u, global0.b))), func_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), min(vec2<i32>(-60528i, 25536i), vec2<i32>(u_input.b.x, 4632i))) & vec2<i32>(_wgslsmith_sub_i32(93669i, u_input.b.x), u_input.b.x)), Struct_1(select(vec2<bool>(true, false), vec2<bool>(global3.x, any(vec2<bool>(global3.x, global3.x))), var_4.x)), Struct_1(select(var_4.wy, !(!global3.zz), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-23165i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 76473i)), vec3<i32>(u_input.b.x, u_input.b.x, -1754i)) | _wgslsmith_mult_vec3_i32(global2[_wgslsmith_index_u32(u_input.c.x, 28u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), 4294967295u);
}

