struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = -(~(-abs(~vec4<i32>(56669i, -1i, u_input.d, 1i))));
    var var_2 = 446f;
    var var_3 = reverseBits(u_input.a.zwy);
    global1 = array<vec4<bool>, 23>();
    return min(_wgslsmith_mult_u32(0u, ~0u), 45851u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = -2147483647i;
    var var_1 = Struct_2(Struct_1(~_wgslsmith_mult_u32(~93285u, u_input.c.x >> (u_input.c.x % 32u)), ~0u, ~((vec3<u32>(arg_0.x, 76006u, 19860u) >> (vec3<u32>(15664u, arg_0.x, arg_0.x) % vec3<u32>(32u))) | u_input.a.zwx), vec3<bool>(all(vec4<bool>(true, false, true, true)), !select(false, true, false), true), _wgslsmith_sub_u32(41860u, arg_1.x)), !vec3<bool>(~arg_1.x <= func_3(vec4<f32>(725f, 1748f, 1620f, 1653f), false), true, true), arg_0.x, vec3<bool>(true, ~u_input.b == _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0, -29324i, 0i, var_0), vec4<i32>(var_0, u_input.d, var_0, u_input.b)), select(vec4<i32>(u_input.d, var_0, var_0, var_0), vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.d), vec4<bool>(false, false, true, true))), (u_input.b != -var_0) && !all(global1[_wgslsmith_index_u32(u_input.c.x, 23u)])));
    let var_2 = Struct_1(u_input.a.x, ~abs(0u), ~select(vec3<u32>(arg_1.x, 1u, var_1.c) & u_input.a.zzz, ~var_1.a.c, true) | ~(~reverseBits(var_1.a.c)), vec3<bool>(false, !var_1.d.x, all(var_1.d.xz)), 4294967295u & arg_1.x);
    global0 = array<Struct_3, 22>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1754f + 391f))) * _wgslsmith_f_op_f32(863f + 2610f)), -480f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)))));
    return var_1.a;
}

fn func_1() -> bool {
    let var_0 = func_2(firstLeadingBit((_wgslsmith_clamp_vec2_u32(u_input.a.wz, u_input.c, u_input.a.wz) | vec2<u32>(44124u, u_input.c.x)) << ((u_input.c << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u))), ~(vec2<u32>(firstLeadingBit(u_input.c.x), countOneBits(0u)) >> (u_input.a.xz % vec2<u32>(32u))));
    let var_1 = ~func_2(~(~(~vec2<u32>(u_input.c.x, 1u))), reverseBits(select(reverseBits(vec2<u32>(69501u, 4294967295u)), vec2<u32>(1u, 1u), vec2<bool>(true, true)))).b;
    var var_2 = select(vec4<bool>(false, true, all(var_0.d.zy), !(any(vec2<bool>(var_0.d.x, false)) & var_0.d.x)), select(global1[_wgslsmith_index_u32(var_0.e & u_input.a.x, 23u)], select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, var_0.c.x) ^ ~u_input.a.x, 23u)], !select(global1[_wgslsmith_index_u32(var_1, 23u)], vec4<bool>(false, var_0.d.x, true, var_0.d.x), global1[_wgslsmith_index_u32(var_0.c.x, 23u)]), func_2(u_input.c, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(0u, var_0.c.x))).d.x), global1[_wgslsmith_index_u32(~var_1 ^ 2446u, 23u)]), select(vec4<bool>(true, var_0.d.x, true, true), vec4<bool>((false && var_0.d.x) & true, false, _wgslsmith_mult_u32(41262u, 60395u) > u_input.c.x, all(select(vec4<bool>(true, false, var_0.d.x, var_0.d.x), vec4<bool>(false, false, true, var_0.d.x), false))), var_0.d.x));
    let var_3 = ~abs(-u_input.d);
    var_2 = !vec4<bool>(select(false, false, true), true, any(var_0.d), true);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.ww;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -555f);
    global0 = array<Struct_3, 22>();
    let var_2 = !select(vec4<bool>(func_1(), true, false, true), select(vec4<bool>(true, true, func_2(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.a.x, var_0.x)).d.x, false), vec4<bool>(true, true, true, true), select(false, false, true)), all(vec2<bool>(true, true)) & true);
    var var_3 = Struct_3(-126f, ~_wgslsmith_mod_vec2_i32(vec2<i32>(19036i, u_input.d) & ~vec2<i32>(u_input.d, u_input.d), ~vec2<i32>(-2147483647i, u_input.d)), Struct_2(Struct_1(~(~var_0.x), var_0.x, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 5483u), u_input.a.zwx), select(!var_2.xxx, vec3<bool>(var_2.x, var_2.x, var_2.x), true), 68074u), vec3<bool>(func_2(vec2<u32>(var_0.x, u_input.c.x), u_input.c).c.x >= ~u_input.a.x, !any(var_2.ywx), !(var_2.x | var_2.x)), min(_wgslsmith_div_u32(4294967295u, ~66578u), 205u), select(vec3<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false)), all(vec2<bool>(false, var_2.x))), var_2.xwz, var_2.yyz)));
    let var_4 = 8259i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.a.zz, vec2<u32>(~40163u, u_input.a.x << (u_input.a.x % 32u)))), var_4, _wgslsmith_clamp_i32(var_4, reverseBits(u_input.d), _wgslsmith_div_i32(4884i ^ u_input.b, 1i & var_4)) >> (~func_2(u_input.c >> (vec2<u32>(var_3.c.c, 0u) % vec2<u32>(32u)), u_input.c).b % 32u));
}

