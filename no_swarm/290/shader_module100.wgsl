struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 12> = array<bool, 12>(true, false, true, true, true, false, true, true, true, false, false, false);

var<private> global2: array<vec2<f32>, 13>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1099f, -1073f, global0.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a, global0.a, global0.a))))))));
    var var_1 = -375f;
    global2 = array<vec2<f32>, 13>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1609f * 407f) - 2338f), global0.b.x, Struct_1(global0.a, select(select(!global0.b, select(global0.b, global0.b, vec2<bool>(false, global0.b.x)), global0.c < global0.c), select(vec2<bool>(true, true), global0.b, true), vec2<bool>(true, all(vec4<bool>(global0.b.x, true, global1[_wgslsmith_index_u32(37548u, 12u)], true)))), ~abs(global0.d.x), ~(vec4<u32>(51901u, 4294967295u, global0.c, 39151u) & global0.d)), ~_wgslsmith_clamp_vec4_u32(~global0.d, vec4<u32>(26222u, min(12725u, u_input.d), 4294967295u | global0.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(80608u, 0u), global0.d.yy)), vec4<u32>(u_input.b, firstTrailingBit(4294967295u), global0.d.x, global0.d.x)));
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(max(-(vec4<i32>(u_input.c, -1i, -1i, -30181i) >> (global0.d % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-3118i, u_input.a, 49704i, 2147483647i)), ~vec4<i32>(1i, 0i, u_input.a, 0i))), vec4<i32>(u_input.a, abs(u_input.a), 16580i, abs(~u_input.c))), u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.c, 2147483647i, -2147483647i) ^ abs(~vec4<i32>(u_input.a, u_input.c, -13351i, u_input.c)), vec4<i32>(select(reverseBits(33928i), -2147483647i, any(vec4<bool>(global1[_wgslsmith_index_u32(var_2.c.c, 12u)], true, global0.b.x, true))), 17554i, firstTrailingBit(~11370i), 1i)));
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = !(!global0.b);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a + 991f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * -812f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a)))))), true & arg_1.b.x, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, 180f))))), vec2<bool>(true, func_3() && true), 109369u, ~arg_1.d), ~abs(arg_1.d));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.a + 198f))), var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(716f - 356f), _wgslsmith_div_f32(-1000f, 1f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(581f, -790f, global0.a), vec3<f32>(var_1.a, -1000f, var_1.a)))) - vec3<f32>(global0.a, global0.a, _wgslsmith_f_op_f32(583f + arg_1.a)))));
    let var_3 = -11826i;
    global2 = array<vec2<f32>, 13>();
    return Struct_2(Struct_1(var_1.a, vec2<bool>(false, func_3()), 23127u, ~var_1.d));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = func_2(global0.d.x, Struct_1(1082f, select(!vec2<bool>(global0.b.x, global1[_wgslsmith_index_u32(u_input.d, 12u)]), select(vec2<bool>(false, false), !global0.b, vec2<bool>(global1[_wgslsmith_index_u32(27914u, 12u)], arg_3)), vec2<bool>(true, all(arg_2.zx))), 0u, global0.d), u_input.d);
    var_0 = func_2(var_0.a.c, var_0.a, _wgslsmith_dot_vec4_u32(var_0.a.d, global0.d << (~(global0.d & vec4<u32>(30028u, 54596u, global0.c, 1u)) % vec4<u32>(32u))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1199f)))))), true, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.a))), arg_0.x), !vec2<bool>(false, all(vec3<bool>(arg_2.x, true, arg_2.x))), min(_wgslsmith_dot_vec3_u32(global0.d.zxw, global0.d.www), _wgslsmith_add_u32(u_input.d, var_0.a.d.x)) ^ min(global0.c, global0.d.x), var_0.a.d), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 19222u >> (~4294967295u % 32u), 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 18851u), vec2<u32>(u_input.d, 6487u)), ~var_0.a.d.xy)), _wgslsmith_clamp_vec4_u32(var_0.a.d & var_0.a.d, var_0.a.d, vec4<u32>(global0.c, var_0.a.c, 4294967295u, 0u)) ^ vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(global0.d.wzz, global0.d.yzy), countOneBits(var_0.a.d.x), _wgslsmith_div_u32(global0.c, global0.c))));
    return func_2(global0.d.x, var_0.a, firstLeadingBit(0u));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(select(1288f, 164f, true)), vec2<bool>(true, !(true || arg_0.a.b.x)), 1u, ~(~(global0.d | global0.d) >> (vec4<u32>(4294967295u, func_2(arg_0.a.c, Struct_1(arg_0.a.a, vec2<bool>(true, global0.b.x), 0u, vec4<u32>(4294967295u, global0.c, global0.c, 1u)), 66620u).a.d.x, 21472u | u_input.b, ~78281u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec4<f32>(global0.a, global0.a, _wgslsmith_f_op_f32(1097f * global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(158f)))), reverseBits(_wgslsmith_clamp_i32(u_input.a, ~(-17148i), u_input.a)), vec3<bool>(global0.a <= _wgslsmith_f_op_f32(-global0.a), u_input.a <= ~u_input.c, false), global0.b.x), global0.a, min(_wgslsmith_mod_i32(countOneBits(1i), ~(i32(-1i) * -36003i)), -34102i));
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-1i, -1i, -u_input.c, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-176f))) + _wgslsmith_f_op_f32(max(func_2(u_input.b, Struct_1(-1180f, global0.b, 0u, global0.d), u_input.d & var_1).a.a, global0.a))), vec4<i32>(~(~(u_input.c & 6649i)), -33024i, u_input.a, -countOneBits(u_input.a)), 17430u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(Struct_2(Struct_1(var_0.a, var_0.b, u_input.b, vec4<u32>(global0.c, 1u, 80353u, var_0.d.x))), _wgslsmith_f_op_f32(select(var_0.a, 727f, global1[_wgslsmith_index_u32(15845u, 12u)])), u_input.a & u_input.c).a, global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(646f)), _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-572f, -115f), 103f)))));
}

