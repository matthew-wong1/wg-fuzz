struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<f32>(216f, 1103f), vec3<u32>(27747u, 10134u, 4294967295u), i32(-2147483648), 51105u), Struct_1(vec2<f32>(1875f, -1609f), vec3<u32>(18322u, 0u, 14512u), -10134i, 16117u), Struct_1(vec2<f32>(542f, -1000f), vec3<u32>(31045u, 31149u, 57651u), 1512i, 4294967295u), Struct_1(vec2<f32>(620f, 504f), vec3<u32>(18277u, 70580u, 4294967295u), 3092i, 1u), Struct_1(vec2<f32>(-525f, 849f), vec3<u32>(4294967295u, 0u, 4294967295u), 0i, 65923u), Struct_1(vec2<f32>(-594f, -533f), vec3<u32>(1u, 41148u, 4294967295u), -25238i, 1u), Struct_1(vec2<f32>(480f, 1956f), vec3<u32>(103801u, 28100u, 5749u), 0i, 1u), Struct_1(vec2<f32>(-697f, -134f), vec3<u32>(119593u, 4294967295u, 1u), 2147483647i, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    global0 = array<Struct_1, 8>();
    var var_0 = any(vec4<bool>(true, true, true, true));
    let var_1 = abs(u_input.b);
    global0 = array<Struct_1, 8>();
    var var_2 = !(true | !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)));
    return false;
}

fn func_2() -> vec3<i32> {
    global0 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-600f, _wgslsmith_f_op_f32(select(-965f, -287f, false))))))));
    var var_1 = Struct_2(vec3<bool>(false, func_3(), true), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, -293f)), vec2<f32>(var_0, -1114f)))), ~vec3<u32>(~4874u, _wgslsmith_div_u32(28189u, 4294967295u), 84800u), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -47360i, u_input.b.x, -1i) >> (vec4<u32>(u_input.a.x, 9038u, 0u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, u_input.b.x, -8244i), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x)), true), _wgslsmith_add_vec4_i32(vec4<i32>(17801i, -31157i, -8451i, u_input.b.x) | vec4<i32>(u_input.b.x, u_input.b.x, 1i, -2147483647i), vec4<i32>(u_input.b.x, 0i, 58098i, u_input.b.x))), firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) << (~0u % 32u)));
    global0 = array<Struct_1, 8>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a))))), ~var_1.b.b, var_1.b.c, ~_wgslsmith_div_u32(~4294967295u ^ var_1.b.b.x, _wgslsmith_sub_u32(45121u, var_1.b.d) & _wgslsmith_clamp_u32(u_input.a.x, var_1.b.b.x, u_input.a.x)));
    return select(firstLeadingBit(u_input.b), u_input.b, select(false, true, all(select(var_1.a.xy, var_1.a.xy, var_1.a.zy)))) >> (var_2.b % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_4(~vec4<u32>(_wgslsmith_mult_u32(~arg_0.d, 49863u), (arg_0.a.b.x ^ 25433u) | max(91893u, 90810u), arg_0.a.d, reverseBits(~4294967295u)), false);
    global0 = array<Struct_1, 8>();
    let var_1 = select(select(vec3<bool>(max(arg_0.c.d, var_0.a.x) == 27053u, 1i == u_input.b.x, false), select(vec3<bool>(var_0.b, false, false), select(select(vec3<bool>(false, var_0.b, true), vec3<bool>(false, false, false), true), vec3<bool>(var_0.b, true, var_0.b), select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, var_0.b, false), var_0.b)), vec3<bool>(var_0.b, -199f < arg_0.c.a.x, !var_0.b)), select(!(false | var_0.b), arg_1.x != (arg_0.a.c & arg_0.c.c), var_0.b)), vec3<bool>(true, var_0.b, !select(func_3(), false, !var_0.b)), !select(!(!vec3<bool>(var_0.b, false, false)), vec3<bool>(select(false, true, true), var_0.b, true), select(select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(false, var_0.b, var_0.b)), select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, var_0.b, false), var_0.b), true)));
    global0 = array<Struct_1, 8>();
    let var_2 = !var_1.zx;
    return all(select(var_2, vec2<bool>(var_0.b, true), var_1.x));
}

fn func_5(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(4294967295u), 16748u), 8u)];
    var var_1 = ~firstLeadingBit(~(~u_input.a.x)) > (_wgslsmith_div_u32(min(0u, u_input.a.x), 22293u) ^ (_wgslsmith_mult_u32(~4294967295u, min(17614u, var_0.d)) & u_input.a.x));
    var var_2 = -min(_wgslsmith_div_vec3_i32(~u_input.b, u_input.b), vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0.c, u_input.b.x, 1i), vec4<i32>(-2147483647i, u_input.b.x, 1i, 64945i)) | (i32(-1i) * -1i), countOneBits(var_0.c)));
    var var_3 = firstTrailingBit(var_0.b);
    var var_4 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(var_3.x, _wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(_wgslsmith_add_u32(var_3.x, u_input.a.x), ~var_3.x, firstLeadingBit(u_input.a.x)))), 76696u);
    return Struct_2(select(!vec3<bool>(arg_0.x, any(vec4<bool>(false, false, false, arg_0.x)), !arg_0.x), !vec3<bool>(arg_0.x, true, !arg_0.x), true), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-549f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), 1u), reverseBits(var_3.x), 1u), _wgslsmith_div_i32(~36084i, select(var_2.x, -6989i, arg_0.x)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, 3273u, 0u, 15296u), vec4<u32>(76148u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(var_0.d, 1u, 28331u, 0u)), vec4<u32>(var_3.x, var_0.b.x, 1u, 2072u) & vec4<u32>(var_4.x, u_input.a.x, var_3.x, u_input.a.x)) % 32u), ~7315u));
}

fn func_1() -> u32 {
    var var_0 = 640f;
    let var_1 = _wgslsmith_mod_u32(~28852u, u_input.a.x);
    var var_2 = func_5(vec2<bool>(!func_4(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], vec4<f32>(247f, 951f, -795f, 1000f), Struct_1(vec2<f32>(-815f, 1097f), vec3<u32>(15654u, u_input.a.x, u_input.a.x), u_input.b.x, 0u), 4294967295u, Struct_1(vec2<f32>(176f, 772f), vec3<u32>(var_1, var_1, u_input.a.x), -59162i, 64199u)), func_2()), true));
    var_2 = func_5(!(!var_2.a.zy));
    let var_3 = vec2<bool>(false, true);
    return 1200u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    var var_1 = select(65419u, ~0u, !any(vec4<bool>(true, true, true, true)));
    global0 = array<Struct_1, 8>();
    var_1 = reverseBits(~func_1());
    var var_2 = select(vec2<bool>(abs(-u_input.b.x) <= 16185i, true), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1430f)), -639f) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(419f, 726f) * _wgslsmith_f_op_f32(sign(-1000f))), false), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)) && all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))));
    var var_3 = func_5(vec2<bool>(select(any(vec3<bool>(var_2.x, true, true)) != true, false, any(!vec2<bool>(var_2.x, false))), 1u >= u_input.a.x));
    var_1 = u_input.a.x;
    var_2 = var_3.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(func_5(var_3.a.xy).b.d, ~u_input.a.x), select(~0u, 63743u, true));
}

