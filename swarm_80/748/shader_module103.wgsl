struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32 = -1255f;

var<private> global2: f32 = 1209f;

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_0.c.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2420f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + arg_0.c.e))), arg_0.e.x));
    var var_1 = Struct_2(67842u, (firstTrailingBit(min(4294967295u, 4294967295u)) & _wgslsmith_mod_u32(arg_0.a, u_input.c << (0u % 32u))) != arg_2.x, ~firstTrailingBit(vec2<u32>(97507u, 1u) | ~arg_3.zy), arg_0.a < _wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(4294967295u, arg_2.x)), max(~4294967295u, ~u_input.a), ~(arg_3.x ^ 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-794f))));
    var_1 = arg_0.c;
    var var_2 = arg_0.d.zx;
    return u_input.e.x;
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_0.e.x));
    var var_1 = -firstTrailingBit(1i);
    var var_2 = !all(select(arg_0.d, !vec3<bool>(arg_0.c.b, false, true), !vec3<bool>(true, true, arg_0.d.x)));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(var_0, var_0)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(sign(var_0)))) - var_0), 733f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, 268f)))), arg_0.c.e));
    let var_4 = ~(~1u);
    return vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.e.x)))) >= _wgslsmith_f_op_f32(-var_3.x), select(arg_0.d.x, true, !(!all(arg_0.d))), arg_0.d.x & ((1i | arg_0.b) >= _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-57681i, -13136i, 32216i, u_input.b), vec4<i32>(8143i, 10228i, -2147483647i, arg_0.b)), arg_0.b ^ 0i)));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.c;
    global3 = array<Struct_1, 29>();
    global1 = -443f;
    global1 = -588f;
    let var_1 = vec4<u32>(abs(abs(_wgslsmith_sub_u32(u_input.c, 12461u))), 36791u, 15968u, 54545u);
    return Struct_3(~_wgslsmith_mod_u32(~(~4294967295u), u_input.a), u_input.b, Struct_2(var_0 & 0u, true, select(var_1.zy, vec2<u32>(u_input.c, _wgslsmith_mult_u32(46312u, 1u)), all(vec3<bool>(false, false, true))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))), func_4(Struct_3(~_wgslsmith_mod_u32(var_0, 0u), func_3(Struct_3(var_1.x, 1i, Struct_2(var_0, true, vec2<u32>(var_0, 56687u), false, -659f), vec3<bool>(true, true, false), vec2<f32>(global0.x, 1344f)), Struct_4(u_input.d.x, var_1.x), abs(var_1.zz), firstTrailingBit(var_1.zzy)), Struct_2(36733u, true, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(0u, var_1.x)), true, _wgslsmith_f_op_f32(-758f * 1609f)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1395f, -832f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-596f, _wgslsmith_f_op_f32(f32(-1f) * -241f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-932f, 1000f) - vec2<f32>(global0.x, 1193f))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-349f * global0.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_3 {
    let var_0 = func_2();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), arg_1);
    let var_1 = Struct_4(select(~var_0.b, ~_wgslsmith_add_i32(~u_input.b, -29216i), firstTrailingBit(1i) <= reverseBits(-2147483647i)), 4294967295u);
    let var_2 = func_2();
    var var_3 = !vec2<bool>(true && var_0.d.x, var_2.d.x);
    return var_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1105f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-196f - func_1(arg_2, global0.x).e.x) * _wgslsmith_f_op_f32(f32(-1f) * -754f))));
    var var_0 = firstTrailingBit(~u_input.c);
    var var_1 = reverseBits(firstTrailingBit(~vec2<u32>(min(14785u, arg_0.a), 1u)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(68252u, _wgslsmith_add_u32(u_input.a, max(4294967295u, 1u)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, -215f, true)) - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f - -111f))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -382f))), _wgslsmith_f_op_f32(f32(-1f) * -474f));
    global3 = array<Struct_1, 29>();
    var var_1 = func_5(func_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), 292f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * 1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(935f, global0.x, true)), _wgslsmith_f_op_f32(min(1298f, -171f)), true)))), select(func_4(Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 22848u, u_input.a, u_input.a), vec4<u32>(0u, 1u, 1u, 4607u)), u_input.d.x, func_2().c, select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -1000f))))).zz, vec2<bool>(select(true, any(vec2<bool>(true, false)), func_1(vec2<bool>(true, false), global0.x).c.b), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true))), !vec2<bool>(true, all(vec4<bool>(false, true, true, true)))), func_2().c);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-715f, global0.x, var_1.e.x))))))), u_input.b ^ -12675i, _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~var_0.x), 1u, var_1.c.c.x, ~(24136u << (var_1.c.a % 32u))), ~(~(~vec4<u32>(var_0.x, var_0.x, var_1.c.c.x, var_1.c.a))), _wgslsmith_clamp_vec4_u32(max(~vec4<u32>(u_input.a, var_0.x, 4294967295u, var_0.x), abs(vec4<u32>(59140u, var_1.c.c.x, u_input.c, var_0.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.c.a, 4294967295u, u_input.c), vec4<u32>(var_1.c.a, var_0.x, 46640u, 4294967295u), vec4<u32>(4294967295u, u_input.c, var_0.x, 1u)) ^ abs(vec4<u32>(0u, u_input.c, var_0.x, 16922u)), _wgslsmith_div_vec4_u32(~vec4<u32>(3192u, 4294967295u, var_1.a, u_input.c), vec4<u32>(2672u, var_0.x, 4294967295u, 17134u)))));
    var_2 = global3[_wgslsmith_index_u32(var_1.a, 29u)];
    let var_3 = global3[_wgslsmith_index_u32(u_input.c, 29u)];
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a), ~((~(-35582i) | -u_input.b) ^ _wgslsmith_sub_i32(select(1i, 2147483647i, false), var_1.b)), ~(~_wgslsmith_mult_vec4_u32(var_2.c, vec4<u32>(var_2.c.x, var_1.a, var_1.c.c.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(49387u, _wgslsmith_mod_u32(var_1.c.a, _wgslsmith_dot_vec4_u32(var_3.c, var_2.c))), var_3.c.xw), -1i);
}

