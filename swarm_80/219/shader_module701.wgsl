struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: f32;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = !select(vec4<bool>(arg_3.x, true, true, false), select(vec4<bool>(true, global3.x & true, !global3.x, any(vec3<bool>(true, global3.x, true))), select(select(vec4<bool>(global1.x, global3.x, global3.x, false), vec4<bool>(true, false, arg_3.x, false), vec4<bool>(false, true, arg_3.x, false)), select(vec4<bool>(arg_3.x, global1.x, false, arg_3.x), vec4<bool>(global3.x, false, arg_3.x, global3.x), false), any(global1.wy)), global1.x), !(!vec4<bool>(arg_3.x, global3.x, false, global1.x)));
    global2 = _wgslsmith_f_op_f32(924f - arg_0.a);
    return min(vec4<u32>(arg_0.b, arg_0.b & 73244u, 76049u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, arg_2.x, 39869u), ~(vec4<u32>(0u, 1u, arg_1.b, arg_2.x) << (vec4<u32>(arg_2.x, 1u, 15908u, arg_0.b) % vec4<u32>(32u))))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2, arg_2) | ~arg_2, arg_2));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(arg_2.b), 65165u >> (1u % 32u), abs(arg_3), arg_2.b) << (max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 17994u, arg_3, 1u), vec4<u32>(38147u, 0u, arg_3, u_input.e.x)), abs(vec4<u32>(u_input.b, 63022u, arg_2.b, u_input.a.x))) % vec4<u32>(32u)), ~func_3(arg_2, Struct_1(arg_2.a, 1u), vec4<u32>(7093u, u_input.a.x, u_input.e.x, 4294967295u), global1.zy) | ~vec4<u32>(31591u, 5259u, arg_2.b, arg_3))), 7u)];
    var var_1 = vec2<u32>(max(68339u, ~_wgslsmith_mod_u32(7288u, 15215u)) >> (~var_0.b % 32u), _wgslsmith_add_u32(max(_wgslsmith_add_u32(u_input.d, 29542u), 1u), _wgslsmith_mod_u32(1u, ~3634u)) & 17861u);
    global0 = array<Struct_1, 7>();
    global3 = select(select(vec3<bool>(all(!vec2<bool>(true, global3.x)), global3.x, false), !select(vec3<bool>(global1.x, arg_0, false), vec3<bool>(true, true, true), any(vec3<bool>(global3.x, global3.x, global1.x))), global1.zzw), select(vec3<bool>(!all(vec3<bool>(arg_0, false, global3.x)), !global1.x, arg_1), vec3<bool>(arg_0, false, any(select(global1.yyw, vec3<bool>(global3.x, true, arg_0), vec3<bool>(global3.x, arg_0, arg_0)))), true), -885f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-arg_2.a))), -244f));
    let var_2 = u_input.e;
    return u_input.c;
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -784f);
    var var_1 = Struct_1(-573f, u_input.a.x);
    global3 = select(!(!vec3<bool>(all(vec3<bool>(global3.x, false, false)), global3.x, global3.x && false)), select(global1.xwy, !select(select(global1.wwx, global1.zzx, global1.x), global1.zyy, !vec3<bool>(false, true, global1.x)), any(select(vec2<bool>(global1.x, global1.x), global1.ww, global3.xz))), false);
    var var_2 = 4294967295u;
    var var_3 = global0[_wgslsmith_index_u32(select(4294967295u, ~1u, any(select(vec3<bool>(true, global1.x, any(vec3<bool>(true, global1.x, global1.x))), global1.xwy, global1.x))), 7u)];
    return Struct_1(-123f, var_1.b);
}

fn func_1() -> vec4<u32> {
    var var_0 = func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.c, u_input.c, 14487i, -44500i)), vec4<i32>(~1211i, -2147483647i, 1i, func_2(global1.x, global3.x, Struct_1(363f, 1u), u_input.d)), reverseBits(-vec4<i32>(u_input.c, u_input.c, u_input.c, -9538i))), vec4<i32>(u_input.c, -u_input.c, ~_wgslsmith_mod_i32(u_input.c, 28876i), u_input.c)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(var_0.a, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -526f)), _wgslsmith_f_op_f32(f32(-1f) * -273f), -401f) - vec4<f32>(var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))), 152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f * var_0.a) + _wgslsmith_f_op_f32(abs(-636f))))));
    let var_2 = vec4<bool>(all(select(vec4<bool>(var_0.b >= u_input.e.x, u_input.c <= u_input.c, any(vec4<bool>(global1.x, global3.x, global3.x, true)), true), vec4<bool>(select(global3.x, true, true), u_input.e.x >= var_0.b, any(global1.zzx), true), select(select(vec4<bool>(false, global3.x, global1.x, global1.x), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(global1.x, global3.x, false, false)), vec4<bool>(true, global1.x, global1.x, global1.x), global3.x || false))), ~0u == ((17515u & u_input.b) >> (func_3(Struct_1(697f, u_input.a.x), global0[_wgslsmith_index_u32(var_0.b & 0u, 7u)], abs(vec4<u32>(u_input.d, 87531u, var_0.b, var_0.b)), global3.zy).x % 32u)), any(!vec4<bool>(true, global1.x, true, false)), u_input.c <= _wgslsmith_clamp_i32(min(abs(1i), u_input.c), max(-1i, u_input.c), abs(abs(2147483647i))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1373f, -461f, var_1.x, var_0.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(230f, var_1.x, 849f, var_1.x) * vec4<f32>(var_1.x, -1749f, var_0.a, -1249f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(486f, -2224f, var_0.a, -943f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1171f) * _wgslsmith_f_op_f32(var_1.x * var_0.a)), _wgslsmith_f_op_f32(-1383f + _wgslsmith_f_op_f32(max(var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a, 1f, var_1.x))), !(!(!select(var_2, var_2, global3.x)))));
    var var_3 = -20840i;
    return countOneBits(vec4<u32>(~u_input.b, countOneBits(~0u), 74138u, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.b, var_0.b), 9943u))) >> (~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1695u, 2162u, 1u), ~vec4<u32>(var_0.b, 1u, 38354u, 0u))) % vec4<u32>(32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = !vec2<bool>(!any(select(vec2<bool>(global1.x, global3.x), global1.zx, vec2<bool>(false, false))), u_input.c == -u_input.c);
    let var_1 = ~(vec4<i32>(-1i) * -vec4<i32>(-13901i, min(1217i, u_input.c), 0i, ~u_input.c));
    global2 = arg_0.a;
    let var_2 = global0[_wgslsmith_index_u32(arg_3.x, 7u)];
    let var_3 = vec2<bool>(any(!select(select(global3.xz, global1.yw, global1.xy), select(var_0, vec2<bool>(global3.x, false), global1.x), true)), !global1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)) - _wgslsmith_f_op_f32(exp2(var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!vec4<bool>(true, true, true | select(global3.x, global3.x, global3.x), global1.x));
    var var_0 = global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(1u, u_input.d), u_input.e.x), 7u)];
    let var_1 = Struct_1(_wgslsmith_div_f32(-437f, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(func_5(Struct_1(var_0.a, u_input.a.x), func_1(), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1729f, var_0.a), vec2<f32>(var_0.a, var_0.a))), vec2<u32>(1758u, 0u))))), var_0.b);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(1000f)), ~countOneBits(u_input.a.x));
    let var_3 = u_input.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(u_input.c, u_input.c, max(6417i, u_input.c), u_input.c << (select(9577u, u_input.a.x, global1.x) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, var_0.a, 725f, var_2.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, var_2.a, -1778f, -1000f), vec4<f32>(-1365f, var_0.a, 591f, var_1.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-132f, var_0.a, 205f, 135f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(327f, var_2.a, var_0.a, var_0.a))))), -1i, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(func_4(min(vec4<i32>(-2147483647i, 0i, u_input.c, 13024i), vec4<i32>(u_input.c, u_input.c, u_input.c, -1i))).a - _wgslsmith_f_op_f32(1372f * _wgslsmith_f_op_f32(round(1000f)))), -1601f), _wgslsmith_f_op_f32(min(2306f, _wgslsmith_f_op_f32(var_1.a * var_2.a))));
}

