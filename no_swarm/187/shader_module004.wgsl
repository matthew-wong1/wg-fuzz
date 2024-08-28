struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 4>;

var<private> global3: i32;

var<private> global4: array<Struct_5, 3>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    var var_0 = ~(u_input.d.x | global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, firstLeadingBit(19127u)), 4u)]);
    var_0 = u_input.a.x;
    var var_1 = Struct_2(17017u, arg_1);
    let var_2 = global4[_wgslsmith_index_u32(1u, 3u)];
    var var_3 = var_2.a;
    return u_input.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(~(~(_wgslsmith_mod_u32(u_input.c, 40487u) << (~67794u % 32u))), ~select(_wgslsmith_mult_u32(u_input.c, u_input.c), func_3(-876f, select(vec4<u32>(u_input.c, 2721u, u_input.c, 12114u), vec4<u32>(u_input.c, 0u, 60872u, u_input.c), false)), !select(false, true, true)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(1u, ~80842u), 58874u);
    let var_2 = Struct_2(~var_1, vec4<u32>(~(var_1 | u_input.c), u_input.c, 1u, var_0));
    var var_3 = vec2<bool>(true, true);
    let var_4 = _wgslsmith_dot_vec2_u32(~var_2.b.ww, _wgslsmith_sub_vec2_u32(~firstTrailingBit(var_2.b.yy), ~_wgslsmith_mult_vec2_u32(abs(var_2.b.zy), var_2.b.yw | vec2<u32>(7345u, var_0))));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_sub_i32(i32(-1i) * -47022i, -u_input.a.x), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-global1.x))))), arg_0.b.zx, ~arg_0.b.zx), ~(-17318i));
    global0 = ~_wgslsmith_mod_u32(0u, 86644u);
    var var_1 = Struct_5(Struct_3(22064i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, var_0.b.a)), _wgslsmith_f_op_f32(-var_0.b.a)), max(var_0.b.b, _wgslsmith_div_vec2_u32(arg_0.b.zw, var_0.b.b)), arg_0.b.yy), -49397i), ~_wgslsmith_dot_vec3_u32(arg_0.b.zzw << (arg_0.b.yxy % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(arg_0.b.wzw, abs(vec3<u32>(4294967295u, var_0.b.c.x, 1u)))), !vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), all(vec2<bool>(false, true)) | (global1.x > 710f), all(vec4<bool>(true, true, true, true))));
    var var_2 = arg_0;
    let var_3 = vec2<u32>(min(0u, 42186u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(var_2.b, var_2.b), u_input.c, var_2.b.x, 0u ^ arg_0.a), var_2.b), 1u));
    return Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(703i, 2147483647i), select(firstTrailingBit(arg_1), u_input.b.xz, all(vec3<bool>(false, var_1.c.x, true)))), var_0.b, u_input.d.x);
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    global1 = vec4<f32>(297f, -1824f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(global1.x * global1.x), true))))));
    global3 = i32(-1i) * -1i;
    let var_0 = arg_0.x;
    var var_1 = false;
    return Struct_4(func_4(func_2(~select(vec2<i32>(21119i, 1i), u_input.a.zz, vec2<bool>(false, false)), _wgslsmith_dot_vec4_i32(~u_input.a, u_input.d), _wgslsmith_f_op_vec2_f32(global1.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(646f, -1098f) - arg_0))), _wgslsmith_sub_vec2_i32(max(min(vec2<i32>(-2147483647i, u_input.d.x), vec2<i32>(65043i, -6565i)), ~u_input.b.zy), (vec2<i32>(63592i, global2[_wgslsmith_index_u32(26425u, 4u)]) | u_input.d.xy) | vec2<i32>(-49392i, 1i))), min(u_input.d.zzx, ~u_input.b), vec4<u32>(_wgslsmith_div_u32(~1u, ~u_input.c << (func_4(Struct_2(4294967295u, vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)), u_input.a.yy).b.b.x % 32u)), u_input.c, 0u, 71001u), func_2(abs(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], -1i)) & (vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], u_input.d.x) | -u_input.d.zw), abs(-global2[_wgslsmith_index_u32(u_input.c, 4u)]) ^ select(u_input.a.x, -2147483647i, select(false, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1220f, -350f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2027f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-202f - 364f), _wgslsmith_f_op_f32(ceil(762f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.xw);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-159f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.x))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1.wy))));
    let var_2 = min(vec4<u32>(abs(u_input.c), _wgslsmith_div_u32(firstLeadingBit(var_0.c.x), var_0.c.x), max(52311u, max(var_0.a.b.c.x ^ 4294967295u, ~1u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 18824u, u_input.c), ~vec3<u32>(var_0.d.a, 0u, 61392u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.a.b.b.x, u_input.c, var_0.d.a), vec3<u32>(61155u, var_0.c.x, u_input.c), false), firstTrailingBit(var_0.d.b.zyx)))), vec4<u32>(25605u, _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(u_input.c, 54650u, var_0.d.b.x) & ~u_input.c), var_0.c.x, u_input.c));
    global2 = array<i32, 4>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.wx)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1108f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.c), (vec4<i32>(~1i, global2[_wgslsmith_index_u32(var_0.c.x, 4u)] | u_input.d.x, var_0.b.x, var_0.b.x) | _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)) | -_wgslsmith_add_vec4_i32(-u_input.a, vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_0.d.b.x, 4u)], -39313i, 1i) & vec4<i32>(u_input.d.x, global2[_wgslsmith_index_u32(var_2.x, 4u)], 0i, -1i)));
}

