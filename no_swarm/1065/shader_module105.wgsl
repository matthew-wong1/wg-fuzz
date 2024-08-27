struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: Struct_2 = Struct_2(37215i, vec4<f32>(782f, -957f, -976f, 490f), vec4<i32>(i32(-2147483648), 54863i, 9063i, -1i), Struct_1(vec2<f32>(1633f, -784f)), 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    return firstTrailingBit(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(0u, 4294967295u), u_input.c), vec2<u32>(1u, 1u)) << (~(~u_input.b.x) % 32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global0 = array<Struct_2, 21>();
    let var_0 = ~global1.e;
    global0 = array<Struct_2, 21>();
    let var_1 = -451f;
    let var_2 = Struct_2(arg_3, _wgslsmith_f_op_vec4_f32(round(global1.b)), ~(-min(global1.c, firstTrailingBit(vec4<i32>(u_input.a, arg_3, arg_3, 0i)))), arg_2, countOneBits(func_3(global0[_wgslsmith_index_u32(arg_1, 21u)], abs(global1.e) >> (1u % 32u), global1.b)));
    return Struct_2(min(var_2.a, _wgslsmith_clamp_i32(i32(-1i) * -var_2.a, global1.c.x, arg_3)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-713f, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(step(var_1, var_1))))), var_2.c >> (_wgslsmith_sub_vec4_u32(vec4<u32>(select(1u, 4294967295u, false), var_0, ~18785u, ~1u), select(abs(vec4<u32>(52247u, 0u, var_2.e, 0u)), select(vec4<u32>(global1.e, arg_1, u_input.c.x, 4294967295u), vec4<u32>(global1.e, arg_1, arg_1, 4294967295u), vec4<bool>(false, arg_0.x, false, arg_0.x)), true)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.a))), 8263u);
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = func_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(58845u, global1.e, u_input.c.x, 4294967295u), vec4<u32>(51183u, u_input.b.x, 4294967295u, 11249u)) >> (4294967295u % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(max(global1.d.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a.x, 977f)))))), -28005i);
    let var_0 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false))), all(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    let var_1 = func_2(vec2<bool>(var_0.x, var_0.x), u_input.c.x, global1.d, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(2673i, 9574i), _wgslsmith_dot_vec2_i32(global1.c.xy, global1.c.wy)), abs(2147483647i)), global1.c.x)).d;
    var var_2 = func_2(vec2<bool>(u_input.a == select(abs(u_input.a), ~global1.c.x, !var_0.x), true), reverseBits(abs(max(55280u, 1u))) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, global1.e, global1.e) ^ vec3<u32>(0u, u_input.c.x, global1.e), _wgslsmith_sub_vec3_u32(vec3<u32>(7234u, 1u, 62680u), vec3<u32>(7399u, global1.e, 24190u))), ~vec3<u32>(global1.e, global1.e, global1.e)) % 32u), arg_0, _wgslsmith_div_i32(min(global1.c.x, -abs(u_input.a)), 0i));
    var var_3 = Struct_2(_wgslsmith_dot_vec3_i32(min(_wgslsmith_mod_vec3_i32(var_2.c.ywz | global1.c.yzx, vec3<i32>(u_input.a, u_input.a, u_input.a)), -var_2.c.yxz), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-60045i, 0i, 2147483647i), var_2.c.wwy ^ global1.c.wzw))), vec4<f32>(var_1.a.x, -2391f, var_1.a.x, _wgslsmith_f_op_f32(-905f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))))), _wgslsmith_add_vec4_i32(vec4<i32>(-452i, -1054i, 5044i, global1.c.x) | (var_2.c << (vec4<u32>(var_2.e, 24614u, 55346u, u_input.c.x) % vec4<u32>(32u))), vec4<i32>(2147483647i, 0i, -1i, i32(-1i) * -42695i)) | var_2.c, func_2(select(select(select(var_0.zx, vec2<bool>(var_0.x, false), var_0.zx), var_0.yz, select(var_0.xy, var_0.wy, var_0.zx)), !(!var_0.wz), !(var_0.x && false)), var_2.e, func_2(!vec2<bool>(var_0.x, var_0.x), firstTrailingBit(var_2.e), func_2(var_0.xx, 1u, Struct_1(vec2<f32>(global1.d.a.x, 1320f)), 40859i).d, global1.a).d, countOneBits(6057i)).d, ~66877u);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    let var_1 = max(-func_1(global1.d), u_input.a);
    var_0 = _wgslsmith_f_op_vec4_f32(-global1.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(-func_2(vec2<bool>(true, true), _wgslsmith_mod_u32(~14507u, _wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * global1.d.a))), countOneBits(_wgslsmith_clamp_i32(u_input.a, var_1, _wgslsmith_sub_i32(15717i, 14250i)))).b);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.b))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1.b, vec4<f32>(-1793f, var_0.x, global1.d.a.x, _wgslsmith_f_op_f32(-var_0.x))))));
    var var_3 = func_2(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(!all(vec4<bool>(true, false, false, false)), true), select(vec2<bool>(24142u > global1.e, true), vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, false, true))))), reverseBits(abs(~83833u)), func_2(vec2<bool>(~global1.e == min(u_input.c.x, global1.e), any(vec2<bool>(false, true))), 61156u, Struct_1(vec2<f32>(-778f, _wgslsmith_f_op_f32(-var_0.x))), ~reverseBits(1i)).d, abs(u_input.a));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1499f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * var_0.x))), var_0.x, var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f)))) * _wgslsmith_f_op_vec4_f32(var_3.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -781f, var_2.x, -221f)))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -reverseBits(firstTrailingBit(var_1)), vec3<i32>(-1269i, 33869i >> (1u % 32u), -2147483647i), vec3<u32>(_wgslsmith_clamp_u32(global1.e, 79353u, 4294967295u), 1u, 1u));
}

