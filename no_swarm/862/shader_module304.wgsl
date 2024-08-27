struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = vec3<i32>(-2147483647i, 46166i, reverseBits(reverseBits(_wgslsmith_sub_i32(-u_input.b.x, abs(u_input.b.x)))));
    let var_1 = !any(select(!arg_0.a.yy, arg_0.a.xy, arg_0.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1058f - _wgslsmith_f_op_f32(abs(-170f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(649f, -819f)), -947f), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(979f - 135f), 885f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(103f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) * _wgslsmith_f_op_f32(trunc(-928f)))), arg_0.a.xxw))));
    var var_3 = Struct_1(vec4<bool>(true, true, var_1, all(select(!arg_0.a.yx, vec2<bool>(false, false), !arg_0.a.x))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-369f + var_2.x), -928f);
    return _wgslsmith_mult_vec2_u32(vec2<u32>(~13214u, 1u), _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(53131u, 7275u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 25322u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 0u) ^ vec2<u32>(u_input.a, 87383u)), vec2<u32>(24598u, 68466u >> (u_input.a % 32u))) & select(~vec2<u32>(u_input.a, u_input.a), select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(53040u, 29242u)), vec2<u32>(7457u, u_input.a), select(false, var_3.a.x, false)), !(-412f >= var_4.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(-739f);
    let var_1 = u_input.b.x;
    var_0 = Struct_2(_wgslsmith_f_op_f32(step(var_0.a, var_0.a)));
    var var_2 = vec4<u32>(3428u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 180u), vec2<u32>(u_input.a, 10997u)) ^ vec2<u32>(u_input.a, 40116u), _wgslsmith_mult_vec2_u32(func_3(Struct_1(vec4<bool>(true, false, false, false))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 12106u), vec2<u32>(u_input.a, 1u)))), ~vec2<u32>(u_input.a, u_input.a) & select(_wgslsmith_mult_vec2_u32(vec2<u32>(63667u, u_input.a), vec2<u32>(u_input.a, 0u)), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true))), abs(firstLeadingBit(u_input.a & 0u) << (~(~u_input.a) % 32u)), func_3(Struct_1(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, u_input.a < u_input.a))).x);
    let var_3 = Struct_1(vec4<bool>(false, (0u >> (var_2.x % 32u)) > 56850u, !(2147483647i == max(u_input.b.x, u_input.b.x)), (-1129f <= _wgslsmith_f_op_f32(-var_0.a)) || false));
    return var_3;
}

fn func_1() -> f32 {
    let var_0 = vec3<bool>(false, !(~u_input.a >= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, u_input.a))) && any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true))), true);
    var var_1 = func_2();
    let var_2 = ~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.a, 49881u)), vec2<u32>(_wgslsmith_div_u32(4294967295u & u_input.a, u_input.a), _wgslsmith_div_u32(0u & u_input.a, 26662u)));
    var_1 = func_2();
    var var_3 = min(reverseBits(40033u) >> (var_2.x % 32u), 1u | u_input.a);
    return 220f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.b.x;
    var var_1 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(168f, -537f, true))), -1302f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), all(vec3<bool>(!(var_0 <= var_0), true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)))), func_2().a.x, -1000f > _wgslsmith_f_op_f32(ceil(295f)));
    var var_2 = func_2();
    var_2 = func_2();
    let var_3 = select(true, true || var_2.a.x, all(var_1.wyz));
    var_2 = func_2();
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-516f))));
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.a, -115f)) * var_4.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(28641u, u_input.a, u_input.a)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_5.x, 219f, var_5.x, var_4.a), vec4<f32>(-392f, -1000f, var_4.a, 263f)))))), firstTrailingBit(1i), _wgslsmith_mult_vec2_i32(-(~u_input.b), ~vec2<i32>(31301i, 1i)));
}

