struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), true)), arg_0.d, _wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(724f, 1113f, -463f) - vec3<f32>(arg_0.d, -828f, 473f))))))), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(arg_3, false, false)))));
    let var_1 = Struct_3(arg_0.a.c);
    var var_2 = Struct_5(vec2<bool>(false, all(!vec2<bool>(arg_0.e, arg_0.a.d))), (_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.a.x, var_1.a.a.x, -22003i) & vec3<i32>(-16710i, -2147483647i, var_1.a.a.x), ~vec3<i32>(2147483647i, arg_0.a.c.a.x, u_input.b)) ^ -(vec3<i32>(arg_0.a.c.a.x, 0i, 31467i) | vec3<i32>(2147483647i, arg_0.b, u_input.b))) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)), Struct_2(~(~arg_2.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, 53854u), arg_2.zwz)), arg_0.a.b), Struct_1(vec2<i32>(max(0i, 0i), ~u_input.b)), _wgslsmith_mult_u32(arg_2.x | u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 51267u), arg_0.a.b)) >= arg_2.x, arg_0.a.a), arg_0.c & _wgslsmith_div_u32(18309u, 1u), arg_0.a.e);
    var var_3 = Struct_3(arg_0.a.c);
    var_3 = var_1;
    return false;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = ~15439u;
    let var_1 = select(select(select(vec4<bool>(true, true, arg_1.x == arg_1.x, func_3(Struct_4(Struct_2(4294967295u, vec2<u32>(u_input.a.x, u_input.a.x), arg_2.a, false, u_input.a.x), u_input.b, 0u, -605f, false), false, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), any(vec2<bool>(false, false)), u_input.a.x > u_input.a.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)) || true), vec4<bool>(all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))), !any(vec4<bool>(true, true, true, true)), !(-arg_0 >= _wgslsmith_add_i32(arg_2.a.a.x, arg_0)), true), select(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), select(false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), ~0u >= _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(33869u, 1u))), !(!all(vec2<bool>(true, false)))));
    let var_2 = select(var_1, select(select(var_1, vec4<bool>(arg_0 != arg_2.a.a.x, true, true, var_1.x), !select(vec4<bool>(true, var_1.x, false, var_1.x), var_1, vec4<bool>(true, true, true, true))), vec4<bool>(!any(var_1.wzw), 2694f == _wgslsmith_f_op_f32(ceil(-1627f)), var_1.x, true), vec4<bool>(any(vec2<bool>(true, true)), true, var_1.x, var_1.x)), vec4<bool>(any(select(var_1.zww, select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, var_1.x, false), var_1.x), true)), var_1.x, !(_wgslsmith_f_op_f32(max(112f, arg_1.x)) != arg_1.x), any(!var_1.wz)));
    let var_3 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, _wgslsmith_mod_i32(1i, u_input.b)), vec2<i32>(arg_0, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2.a.a.x, u_input.b), vec3<i32>(arg_0, -2147483647i, arg_2.a.a.x)))));
    var_0 = u_input.a.x;
    return vec3<bool>(!(!(var_2.x & true)), true, select(!(u_input.a.x < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(0u, u_input.a.x, 4185u))), var_2.x, !var_2.x));
}

fn func_1() -> StorageBuffer {
    let var_0 = select(!func_2(u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1616f, -1106f, -887f, -1058f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(596f, 1807f, -1366f, -1113f))), Struct_3(Struct_1(vec2<i32>(2147483647i, 61722i)))), vec3<bool>((i32(-1i) * -7615i) < (-1i >> (u_input.a.x % 32u)), true, !(u_input.b > _wgslsmith_dot_vec3_i32(vec3<i32>(12942i, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, -2147483647i)))), vec3<bool>(~u_input.a.x > ~u_input.a.x, func_2(0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, 1000f, 612f, 302f) + vec4<f32>(-172f, 1202f, 139f, -169f))), Struct_3(Struct_1(vec2<i32>(-36440i, 0i)))).x, true));
    var var_1 = countOneBits(~(-30277i) ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(29230i, 73304i), ~vec2<i32>(u_input.b, -1i)));
    let var_2 = Struct_1(-vec2<i32>(-u_input.b, max(reverseBits(u_input.b), reverseBits(u_input.b))));
    return StorageBuffer(var_2.a, u_input.a, select(0u, ~u_input.a.x, var_0.x), ~(-var_2.a.x >> (45187u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ 3885u, u_input.a.x ^ ~24557u)), ~(~(~1u)));
    var var_1 = u_input.b > min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 58946i, u_input.b, u_input.b) >> (vec4<u32>(1u, var_0, 32799u, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 7394u, var_0, u_input.a.x), vec4<u32>(var_0, var_0, u_input.a.x, 35936u)), countOneBits(35596u)) % 32u), u_input.b);
    var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(539f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-423f, -683f) - 1181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-796f, -1335f)) - 200f)))));
    var var_3 = ~vec4<u32>(var_0, 1u, 102010u & ~var_0, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0, 4294967295u), ~u_input.a.x) & (9001u << (u_input.a.x % 32u)));
    let var_4 = 0i;
    let x = u_input.a;
    s_output = func_1();
}

