struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(1u, 1u, 2380u), vec3<u32>(0u, 1u, 1u), vec3<u32>(7174u, 41828u, 29514u), vec3<u32>(1595u, 1u, 9445u), vec3<u32>(1u, 0u, 0u), vec3<u32>(22564u, 1u, 21448u), vec3<u32>(4294967295u, 1u, 32747u), vec3<u32>(15804u, 19505u, 0u), vec3<u32>(0u, 40652u, 1u), vec3<u32>(0u, 4945u, 51802u), vec3<u32>(15655u, 0u, 22855u), vec3<u32>(6840u, 0u, 16549u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 73992u), vec3<u32>(52355u, 1u, 0u), vec3<u32>(26751u, 53226u, 4294967295u), vec3<u32>(4294967295u, 56533u, 66391u), vec3<u32>(1535u, 1u, 14999u), vec3<u32>(59158u, 0u, 37408u), vec3<u32>(4294967295u, 24074u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(40277u, 1u, 0u));

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    return select(vec2<bool>(!((37419i != u_input.c.x) | true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(464f, 428f)), -855f, true)) <= -644f), vec2<bool>(5648u != max(min(u_input.e, u_input.e), 1u), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)) & (u_input.a < 1i)), !vec2<bool>(all(vec3<bool>(true, false, true)), !all(vec2<bool>(false, false))));
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), false), _wgslsmith_div_u32(1u, u_input.e) > 1u), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))), vec3<bool>(any(func_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, 1u), 20u)])), true, select((global2.x > 1777f) | true, true, false)), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), select(vec3<bool>(false, true, true), vec3<bool>(all(vec2<bool>(false, false)), false, true), true), all(vec4<bool>(true, 9761u > u_input.e, true, u_input.b <= u_input.b))));
    let var_1 = Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) * _wgslsmith_div_f32(527f, 1223f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.zzy, _wgslsmith_f_op_vec3_f32(-global2.yzx)) * global2.xwy)), u_input.c);
    return Struct_1(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-870f + global2.x) + 1f)))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_3(true, func_2(), func_2(), max(_wgslsmith_mult_vec2_i32(min(vec2<i32>(-13190i, u_input.b), u_input.c), countOneBits(u_input.c)), u_input.c << (~vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u))) & (reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 0i), u_input.c)) << (firstLeadingBit(~vec2<u32>(u_input.e, 1u)) % vec2<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1000f + func_2().a));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1361f, 1198f), -1687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-641f, -219f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 1465f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-664f, 1972f, var_0.b.a, 435f), vec4<f32>(arg_0.x, var_1.a, arg_0.x, global2.x), var_0.a))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(476f)), -895f)), 537f, _wgslsmith_f_op_f32(sign(var_1.a)), func_2().a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, arg_0.x, 1258f, 1000f), vec4<f32>(global2.x, global2.x, var_0.c.a, global2.x)) + vec4<f32>(1054f, _wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(-global2.x), var_1.a))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.yzz), arg_0, _wgslsmith_f_op_f32(var_1.a * var_0.c.a) > var_0.b.a)), max(u_input.c, _wgslsmith_mod_vec2_i32(~u_input.c, ~var_0.d)));
    let var_4 = _wgslsmith_add_u32(_wgslsmith_add_u32(max(reverseBits(~60498u), max(~1u, ~66920u)), u_input.e), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(~(u_input.e << (u_input.e % 32u)), 22u)] | ~global0[_wgslsmith_index_u32(u_input.e, 22u)], countOneBits(vec3<u32>(_wgslsmith_add_u32(4301u, 0u), abs(u_input.e), _wgslsmith_sub_u32(u_input.e, u_input.e)))));
    return _wgslsmith_clamp_u32(u_input.e, ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_4, u_input.e), vec2<u32>(u_input.e, 53620u)) >> (~vec2<u32>(u_input.e, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_4, 77321u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(47962u, u_input.e)), abs(vec2<u32>(u_input.e, 68782u)))), 59686u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(5624u, u_input.e), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -1171f, 317f, 1000f)))), vec4<f32>(1866f, 868f, _wgslsmith_f_op_f32(min(-233f, global2.x)), -376f)))), -1i, func_1(global2.wxy), ~(~vec4<u32>(~u_input.e, ~u_input.e, ~u_input.e, _wgslsmith_sub_u32(u_input.e, 35494u))));
}

