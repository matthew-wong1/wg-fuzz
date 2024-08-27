struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<u32, 5>();
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.e);
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    var var_1 = Struct_3(arg_0, ~vec3<u32>(13527u, 0u, 22642u & ~global0[_wgslsmith_index_u32(var_0, 5u)]), u_input.c, arg_0.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x + var_1.a.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -1593f))) * _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.x)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(1636f, -1009f), u_input.a.x, 20787i, vec2<f32>(-192f, -1088f)))), _wgslsmith_f_op_f32(min(282f, 730f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-350f, -1404f), vec2<f32>(780f, -251f))))), ~1u, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 1i, 0i, -8147i), u_input.c)), i32(-1i) * -51890i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-810f, 836f) + vec2<f32>(1020f, -1727f))), vec2<f32>(_wgslsmith_f_op_f32(-263f * -379f), _wgslsmith_f_op_f32(f32(-1f) * -1186f))))), u_input.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1753f), vec2<f32>(354f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(1388f + 1000f), _wgslsmith_f_op_f32(-209f - 517f)))), 665u >> (u_input.b.x % 32u), -25167i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1840f, 1415f))))))));
    var var_1 = countOneBits(u_input.c.x);
    var var_2 = ~_wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(~u_input.e, _wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(82561u, var_0.c.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], var_0.a.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 52505u, var_0.c.b, 8111u), vec4<u32>(global0[_wgslsmith_index_u32(var_0.c.b, 5u)], u_input.a.x, 3613u, 0u))), ~(~vec4<u32>(var_0.c.b, 102813u, 1u, var_0.a.b)), true), u_input.a);
    var_2 = u_input.a.x >> (4294967295u % 32u);
    var_0 = Struct_2(Struct_1(var_0.c.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(0u)), 5u)], 5u)], _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -32249i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -28699i) ^ u_input.c.yy, ~vec2<i32>(-8099i, 247i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.a))), u_input.c.x, var_0.c);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.d.x)), _wgslsmith_f_op_f32(566f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f)))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~1u, 5u)], var_0.c.b), firstTrailingBit(_wgslsmith_dot_vec2_i32(select(u_input.c.zy, u_input.c.wz, true), abs(u_input.c.yx))) >> (((_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(1u, u_input.b.x)) & 4294967295u) >> (countOneBits(global0[_wgslsmith_index_u32(~0u, 5u)]) % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.d.x, var_0.a.a.x)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_3(func_2(), arg_2.b, arg_2.c, -6146i);
    var var_1 = u_input.d;
    let var_2 = reverseBits(4480u);
    let var_3 = ~u_input.c.x;
    var var_4 = select(select(select(vec2<bool>(true, select(true, true, true)), vec2<bool>(true, true), !any(vec2<bool>(false, false))), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), any(vec3<bool>(true, all(vec2<bool>(true, true)), true))), select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), -1386f >= _wgslsmith_f_op_f32(-var_0.a.d.x)), true), true);
    return arg_1.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(612f, _wgslsmith_f_op_f32(func_1(abs(1u), Struct_2(Struct_1(vec2<f32>(-613f, 1452f), 1u, u_input.c.x, vec2<f32>(366f, 674f)), 1i, Struct_1(vec2<f32>(-1000f, 142f), 0u, 0i, vec2<f32>(-1626f, -599f))), Struct_3(Struct_1(vec2<f32>(-492f, 1846f), u_input.e.x, u_input.d, vec2<f32>(-713f, 344f)), vec3<u32>(1u, 6748u, u_input.e.x), vec4<i32>(u_input.c.x, -2147483647i, -1i, u_input.d), 2147483647i))), 832f, _wgslsmith_f_op_f32(abs(257f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1262f, 1230f, -871f, 312f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(511f, 1688f, -906f, 204f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(373f, 347f, 1814f, 1038f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1431f, 940f, -709f, 1000f), vec4<f32>(-831f, -170f, 450f, -245f)))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(1047f)), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -286f)) * 1148f), -245f);
    var var_1 = var_0.xwz;
    var var_2 = var_1.x;
    let var_3 = 0u;
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, ~(u_input.d & u_input.c.x)), var_0.wy, ~(~(~_wgslsmith_clamp_vec2_u32(u_input.a.xw, vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)])))), global0[_wgslsmith_index_u32(~(~reverseBits(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(9249u, 5u)]))), 5u)]);
}

