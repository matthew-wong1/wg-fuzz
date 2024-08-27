struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-1i, vec2<f32>(1657f, 429f)), Struct_1(-12850i, vec2<f32>(2281f, -679f)), 19349u, 70907u), false, vec2<f32>(-269f, -1989f));

var<private> global1: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global2: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(global0.a.c, 6u)];
    global3 = Struct_1(reverseBits(_wgslsmith_mod_i32(-global3.a, ~0i) ^ ~arg_0.a.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1)))), global3.b.x));
    var var_1 = var_0.x;
    var var_2 = arg_0;
    global0 = Struct_3(global0.a, any(!select(select(var_0.zzw, var_0.xxz, var_0.xzy), vec3<bool>(var_0.x, global0.b, false), any(global2[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.b) * _wgslsmith_f_op_vec2_f32(-global3.b)))));
    return 1u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_3 {
    global1 = _wgslsmith_sub_vec2_u32(max(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(107806u, 1u)), ~u_input.e, firstLeadingBit(vec2<u32>(arg_2, u_input.c.x))) | vec2<u32>(~global0.a.d, ~4294967295u), u_input.e), ~vec2<u32>(0u, 46519u));
    global2 = array<vec4<bool>, 6>();
    global2 = array<vec4<bool>, 6>();
    global2 = array<vec4<bool>, 6>();
    var var_0 = Struct_2(global0.a.b, global0.a.b, ~func_3(Struct_2(global0.a.b, global0.a.a, 9445u, arg_2 << (global1.x % 32u)), global0.c.x), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.d, global1.x), u_input.e), ~(arg_2 | u_input.c.x)));
    return Struct_3(Struct_2(var_0.b, Struct_1(_wgslsmith_clamp_i32(arg_0.x, i32(-1i) * -33155i, -u_input.a), var_0.b.b), ~66976u, _wgslsmith_dot_vec2_u32(u_input.c.yz, _wgslsmith_mult_vec2_u32(u_input.c.xy << (u_input.e % vec2<u32>(32u)), select(vec2<u32>(1u, global0.a.d), u_input.e, vec2<bool>(false, global0.b))))), any(select(!(!vec2<bool>(global0.b, false)), vec2<bool>(true, all(vec2<bool>(false, true))), global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-943f, -439f) + global3.b))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    global0 = func_2(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, -vec4<i32>(-4863i, -1i, u_input.b.x, u_input.a), vec4<i32>(28941i, 1i, u_input.b.x, global3.a) & vec4<i32>(-22446i, global3.a, 2147483647i, -18714i)), -(~vec4<i32>(global3.a, global0.a.b.a, u_input.b.x, global3.a) ^ vec4<i32>(2147483647i, global0.a.b.a, global0.a.b.a, 2147483647i))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(arg_1.xwy)))), 8447u);
    global1 = u_input.c.zz;
    var var_0 = global0.b;
    global0 = func_2(vec4<i32>(2147483647i, _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(14874i, global0.a.b.a)), reverseBits(-1i), ~u_input.d) ^ vec4<i32>(-9331i, u_input.a, -15135i, global0.a.b.a), vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f - 852f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1068f)) - global3.b.x)), _wgslsmith_div_f32(-584f, _wgslsmith_f_op_f32(step(449f, 755f)))), _wgslsmith_sub_u32(~u_input.e.x, _wgslsmith_mod_u32(firstTrailingBit(global1.x), arg_0 << (~1591u % 32u))));
    var var_1 = func_2(abs(-(~(~u_input.b))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522f + -316f) + -911f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.x, -701f))))), _wgslsmith_f_op_f32(sign(1460f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))), 54988u);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(-u_input.b.xz, abs(vec2<i32>(-14632i, -1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3.b, vec2<f32>(-2088f, -704f), vec2<bool>(global0.b, global0.b))) - vec2<f32>(global0.a.a.b.x, -708f))), global0.a.a, global1.x, ~(~_wgslsmith_clamp_u32(global1.x, 19355u, 40112u))), 4294967295u <= func_1(_wgslsmith_mod_u32(1u, global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -1121f, -2654f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(627f, _wgslsmith_f_op_f32(max(global3.b.x, -2344f))))));
    let var_1 = -41103i;
    let var_2 = ~(~vec3<u32>(1u, _wgslsmith_sub_u32(global1.x, _wgslsmith_add_u32(global1.x, 1u)), u_input.e.x));
    var var_3 = !vec2<bool>(global0.b, select(true, true, !global0.b));
    var var_4 = var_0.a;
    let var_5 = !(!(!select(select(vec2<bool>(global0.b, var_3.x), vec2<bool>(true, true), vec2<bool>(var_0.b, false)), select(vec2<bool>(true, var_3.x), vec2<bool>(var_3.x, true), vec2<bool>(false, var_3.x)), var_3.x)));
    var var_6 = Struct_1(global0.a.a.a, var_0.a.a.b);
    var var_7 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(step(global3.b.x, global0.c.x))))), _wgslsmith_f_op_vec2_f32(-global0.c), ~(~(~(~u_input.b.wwy))));
}

