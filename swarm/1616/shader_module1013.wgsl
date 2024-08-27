struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(5943i, 2147483647i, i32(-2147483648), 37948i, 0i, -12697i, -1i, i32(-2147483648), -2131i, 2147483647i, -45583i, 2147483647i, -1i, 0i, 21109i, -1i, -1i);

var<private> global1: vec3<i32>;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(~(~min(select(u_input.a.xx, global1.yy, true), vec2<i32>(u_input.a.x, 50486i))), -(~abs(-vec4<i32>(4307i, -1i, -8019i, global3.x))));
    var var_1 = ~vec3<u32>(_wgslsmith_mod_u32(~1u, 51981u), ~abs(~53761u), _wgslsmith_sub_u32(_wgslsmith_add_u32(47316u, 0u), countOneBits(~45677u)));
    let var_2 = Struct_2(4294967295u >> (var_1.x % 32u));
    let var_3 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 32645u), 1u, _wgslsmith_mod_u32(var_1.x, var_2.a), 1u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 0u, 13723u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a, 19369u, var_2.a, 0u), vec4<u32>(51918u, var_1.x, 0u, 1u)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2.a, var_1.x, 38920u, 0u)), abs(~vec4<u32>(var_2.a, var_1.x, var_1.x, 0u)))));
    var_1 = select(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(37561u, 67660u, 0u), vec3<u32>(78650u, var_2.a, 54511u), vec3<u32>(var_1.x, var_2.a, var_3.a))), _wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, var_3.a, 1u), vec3<u32>(0u, var_2.a, 6279u))), ~vec3<u32>(63123u, 5897u, var_2.a)), !all(arg_0) & !(global2.x < -5398i)) << (~(~(~countOneBits(vec3<u32>(4294967295u, var_3.a, 0u)))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-696f + _wgslsmith_f_op_f32(step(1137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1652f, -512f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(134f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1041f + _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1404f, -542f) + -1278f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -516f))));
    global1 = -min(vec3<i32>(global1.x, 0i, abs(global3.x)), u_input.a);
    global2 = vec2<i32>(global3.x, global1.x);
    var var_1 = _wgslsmith_div_f32(-334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0)))));
    let var_2 = Struct_1(u_input.a.zx, min(-min(vec4<i32>(global1.x, 2147483647i, u_input.a.x, -3920i) << (vec4<u32>(0u, 63607u, 3489u, 10818u) % vec4<u32>(32u)), vec4<i32>(0i, -2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(0u, 17u)])), -vec4<i32>(reverseBits(1i), 1i | u_input.a.x, u_input.a.x, _wgslsmith_sub_i32(global3.x, -1i))));
    return var_2;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    global0 = array<i32, 17>();
    var var_0 = func_2();
    var var_1 = 98337u;
    var var_2 = vec4<bool>(any(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), true, firstLeadingBit(arg_0.x) != firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.x, 23216u), arg_0.x, arg_0.x)), true);
    global3 = reverseBits(vec2<i32>(15559i, i32(-1i) * -10644i) ^ (countOneBits(~vec2<i32>(-1i, 1i)) & -(~vec2<i32>(15785i, global0[_wgslsmith_index_u32(arg_0.x, 17u)]))));
    return ~23964i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec2<u32>(select(0u, min(76904u, 40628u), false), 85441u));
    var var_1 = Struct_2(~_wgslsmith_sub_u32(30247u, 3029u));
    var var_2 = false;
    var_1 = Struct_2(0u);
    global1 = _wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, u_input.a.x, -func_1(vec2<u32>(0u, 13124u))) | vec3<i32>(-1i | _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global3.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 0i, -32233i, var_0)), -1i, -1i), u_input.a);
    var var_3 = vec4<bool>(!(true || !any(vec2<bool>(true, true))), var_1.a > ~_wgslsmith_clamp_u32(var_1.a, var_1.a, 27634u), true, true);
    var var_4 = var_3.x;
    var_3 = select(!vec4<bool>(var_3.x, true, _wgslsmith_f_op_f32(ceil(-1607f)) < _wgslsmith_f_op_f32(min(402f, 1203f)), false), vec4<bool>(select(true && var_3.x, var_3.x != !var_3.x, var_3.x), true, true, var_3.x), vec4<bool>(!any(vec4<bool>(true, var_3.x, var_3.x, false)), (0u >> (~var_1.a % 32u)) != (~var_1.a | var_1.a), false, false));
    var_3 = !vec4<bool>(var_3.x, !any(vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 2147483647i), -vec2<i32>(-1i, global3.x)) > _wgslsmith_add_i32(i32(-1i) * -22299i, -13177i), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(651f))))), vec2<f32>(_wgslsmith_f_op_f32(-1310f * _wgslsmith_f_op_f32(abs(-163f))), _wgslsmith_f_op_f32(floor(-1098f))))), _wgslsmith_clamp_u32(var_1.a, var_1.a, 18114u), ((726u | var_1.a) >> (var_1.a % 32u)) ^ abs(_wgslsmith_clamp_u32(1u, var_1.a, ~0u)), -1163f, countOneBits(max(~select(vec3<u32>(var_1.a, 29078u, var_1.a), vec3<u32>(var_1.a, 27364u, 1u), vec3<bool>(var_3.x, false, var_3.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(74219u, 69945u, 1u) & vec3<u32>(var_1.a, 1u, var_1.a), ~vec3<u32>(var_1.a, var_1.a, 12610u), ~vec3<u32>(var_1.a, 1u, 1u)))));
}

