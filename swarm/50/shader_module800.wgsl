struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: u32 = 11066u;

var<private> global2: vec3<f32>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: vec4<f32> = vec4<f32>(131f, -941f, -155f, 240f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    global3 = select(vec3<bool>(!(!(!global3.x)), true, all(!vec4<bool>(false, global3.x, global3.x, global3.x))), vec3<bool>(!(!all(global3.xz)), true, _wgslsmith_f_op_f32(-global2.x) == global4.x), true);
    var var_0 = global2.x;
    var_0 = global2.x;
    return true;
}

fn func_2() -> bool {
    global3 = vec3<bool>(global3.x & !(!(!global3.x)), !all(vec3<bool>(false, global3.x, global3.x)) & func_3(max(u_input.e, u_input.b.x), -2147483647i), all(select(select(vec4<bool>(true, global3.x, false, false), select(vec4<bool>(global3.x, false, false, false), vec4<bool>(false, global3.x, false, global3.x), vec4<bool>(global3.x, global3.x, true, global3.x)), !vec4<bool>(true, global3.x, global3.x, true)), !vec4<bool>(true, true, global3.x, global3.x), true)));
    let var_0 = u_input.b.x;
    let var_1 = Struct_3(Struct_1(!(all(global3.yz) & select(true, global3.x, true)), ~(~vec4<u32>(55435u, 1u, u_input.e, var_0)), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, _wgslsmith_f_op_f32(f32(-1f) * -1690f))), var_0));
    let var_2 = var_1.a;
    var var_3 = vec4<bool>(!(!((var_1.a.a | var_1.a.c) | true)), _wgslsmith_f_op_f32(global4.x * global2.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-223f, 1409f)), 207f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(400f)) + _wgslsmith_div_f32(global2.x, global4.x)), 488f, var_2.a)) >= _wgslsmith_f_op_f32(max(1686f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true);
    return !var_2.c;
}

fn func_1() -> i32 {
    global3 = select(vec3<bool>(true, global4.x < _wgslsmith_f_op_f32(round(1f)), func_2()), vec3<bool>(true, false, all(global3.zz)), select(select(select(!vec3<bool>(true, global3.x, global3.x), !vec3<bool>(false, false, global3.x), !global3.x), vec3<bool>(true, global3.x, all(vec2<bool>(global3.x, false))), global3.x), vec3<bool>(!(true | global3.x), !(false & global3.x), true), global4.x >= _wgslsmith_f_op_f32(-global2.x)));
    global0 = array<i32, 5>();
    global1 = 0u;
    var var_0 = global3.zy;
    var var_1 = 652f;
    return ~(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~u_input.d, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 0i), u_input.a), global0[_wgslsmith_index_u32(~(~1u), 5u)]) & (_wgslsmith_div_i32(~(-479i), _wgslsmith_div_i32(-6105i, u_input.a)) & (i32(-1i) * -26985i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(50974i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(6039u, 5u)], 2147483647i), ~u_input.d, -(~func_1()));
    let var_1 = Struct_4(Struct_1(true, countOneBits(u_input.b) << ((~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) | _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(u_input.e, u_input.b.x, 4294967295u, u_input.b.x))) % vec4<u32>(32u)), any(!vec3<bool>(true, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(412f, global4.x)), global4.x, _wgslsmith_f_op_f32(step(global4.x, global4.x)), _wgslsmith_f_op_f32(select(-1002f, 1000f, false))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 2032f, global4.x, -164f) + vec4<f32>(-433f, 189f, global2.x, global2.x))))), ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.e), vec2<u32>(u_input.b.x, u_input.e)))), vec3<f32>(348f, -337f, _wgslsmith_f_op_f32(ceil(global2.x))), select(global3.x & global3.x, true, true) == all(global3.zx), ~var_0.yzz, ~33280i);
    var var_2 = Struct_2(global3.xy);
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.x)) + -1384f))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), global4.x));
    var var_3 = var_2.a;
    let var_4 = reverseBits(-_wgslsmith_clamp_i32(4292i, -1i, -global0[_wgslsmith_index_u32(~var_1.a.e, 5u)]));
    global3 = !select(!(!vec3<bool>(false, var_2.a.x, false)), select(vec3<bool>(any(vec3<bool>(var_3.x, global3.x, true)), all(vec3<bool>(var_2.a.x, true, var_3.x)), func_2()), vec3<bool>(func_2(), true, func_3(1u, var_4)), select(select(vec3<bool>(var_2.a.x, var_2.a.x, false), vec3<bool>(true, true, true), var_2.a.x), select(vec3<bool>(var_2.a.x, true, global3.x), vec3<bool>(false, false, var_1.a.a), false), !vec3<bool>(var_1.c, true, var_1.a.c))), vec3<bool>(!(!var_2.a.x), all(select(var_2.a, var_2.a, var_2.a)), !(var_2.a.x || true)));
    let var_5 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * -1074f) * 748f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-984f))), -1248f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(-266f, _wgslsmith_f_op_f32(max(global4.x, 1229f)))))), _wgslsmith_f_op_vec4_f32(select(var_1.a.d, _wgslsmith_f_op_vec4_f32(var_1.a.d - _wgslsmith_f_op_vec4_f32(-var_1.a.d)), !select(!vec4<bool>(var_3.x, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_2.a.x, var_3.x, true), false), !vec4<bool>(false, var_1.a.c, var_2.a.x, var_3.x)))));
    var var_6 = Struct_2(global3.zy);
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~select(vec2<u32>(var_1.a.b.x << (u_input.b.x % 32u), ~u_input.b.x), ~vec2<u32>(3123u, 4294967295u), var_6.a));
}

