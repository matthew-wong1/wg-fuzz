struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 5> = array<i32, 5>(i32(-2147483648), -33887i, 2147483647i, 2147483647i, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> vec4<bool> {
    var var_0 = 17880i;
    let var_1 = Struct_1(!vec2<bool>(arg_0.a.a.x, any(vec3<bool>(global0.x, arg_2, arg_2))), _wgslsmith_f_op_f32(min(arg_0.a.b, _wgslsmith_f_op_f32(-arg_0.a.b))), select(!(!vec4<bool>(true, true, false, global0.x)), arg_0.a.c, arg_0.a.a.x), _wgslsmith_mod_i32(~2147483647i, firstLeadingBit(reverseBits(33796i))) > arg_1, select(vec3<bool>(arg_0.a.e.x, true, -2147483647i >= global1[_wgslsmith_index_u32(~3459u, 5u)]), vec3<bool>(arg_0.a.a.x, !(17691i <= u_input.a.x), true), global0.zxz));
    let var_2 = Struct_1(select(!select(vec2<bool>(global0.x, arg_0.a.a.x), arg_0.a.e.yz, !var_1.a), select(vec2<bool>(true, global0.x), !(!global0.wy), arg_0.a.c.xw), select(select(select(arg_0.a.c.wx, arg_0.a.e.yz, vec2<bool>(global0.x, true)), select(vec2<bool>(arg_2, global0.x), vec2<bool>(false, true), var_1.d), vec2<bool>(arg_0.a.d, arg_0.a.c.x)), select(select(global0.zz, var_1.e.zz, arg_0.a.a), vec2<bool>(global0.x, false), arg_0.a.e.x), arg_2 || !global0.x)), _wgslsmith_f_op_f32(trunc(-513f)), vec4<bool>(false, arg_0.a.a.x, true == global0.x, true), true, var_1.e);
    global1 = array<i32, 5>();
    var var_3 = Struct_1(select(vec2<bool>(var_2.d, arg_0.a.c.x), !select(select(vec2<bool>(var_1.e.x, arg_2), arg_0.a.a, false), var_1.c.xx, true), 19383i >= _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(9038i, u_input.c)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, u_input.c), vec2<i32>(global1[_wgslsmith_index_u32(86366u, 5u)], arg_1), vec2<i32>(u_input.b.x, 17839i)))), var_1.b, vec4<bool>(all(!vec4<bool>(arg_2, arg_2, true, false)), !any(!var_2.e.xy), !var_1.a.x, true || any(var_2.c.zxz)), all(var_2.a), !var_2.e);
    return var_1.c;
}

fn func_2() -> Struct_1 {
    global0 = !func_3(Struct_2(Struct_1(select(global0.wx, global0.wy, global0.yz), _wgslsmith_f_op_f32(floor(2729f)), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, global0.x, true, true)), global0.x, vec3<bool>(true, true, global0.x))), 69120i, !any(!vec4<bool>(global0.x, false, global0.x, global0.x)));
    global0 = select(vec4<bool>(global0.x, !(_wgslsmith_f_op_f32(-1149f - -1429f) < _wgslsmith_f_op_f32(ceil(209f))), func_3(Struct_2(Struct_1(vec2<bool>(global0.x, global0.x), 706f, vec4<bool>(true, global0.x, global0.x, global0.x), global0.x, vec3<bool>(global0.x, true, true))), countOneBits(31645i), false).x, func_3(Struct_2(Struct_1(global0.yw, -572f, vec4<bool>(true, global0.x, false, global0.x), true, global0.wyz)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 5u)], 13504i, 72640i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], u_input.c, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 39952i, 1i, u_input.c), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 5u)], 2158i, -38338i))), true).x), !vec4<bool>(true, true, global0.x, false), !(!func_3(Struct_2(Struct_1(vec2<bool>(global0.x, global0.x), -919f, vec4<bool>(global0.x, global0.x, global0.x, true), true, global0.yzz)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(1u, 5u)], -37669i, -1i), vec4<i32>(u_input.c, -2147483647i, 0i, -56695i)), global0.x)));
    global1 = array<i32, 5>();
    var var_0 = _wgslsmith_add_i32(u_input.c, min(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 5u)], 1i), vec2<i32>(global1[_wgslsmith_index_u32(27200u, 5u)], u_input.b.x)) & -2147483647i, countOneBits(global1[_wgslsmith_index_u32(1u, 5u)])) & -28445i);
    global0 = select(!vec4<bool>(global0.x, (u_input.b.x >= global1[_wgslsmith_index_u32(1u, 5u)]) || true, true, any(!vec4<bool>(global0.x, false, false, global0.x))), !vec4<bool>(global0.x, true, global0.x, all(!vec4<bool>(global0.x, global0.x, global0.x, true))), all(vec3<bool>(any(!vec2<bool>(global0.x, global0.x)), select(true, false, false), any(global0.xx))));
    return Struct_1(vec2<bool>(select(any(select(vec2<bool>(global0.x, false), global0.yx, false)), all(vec4<bool>(global0.x, global0.x, false, true)), func_3(Struct_2(Struct_1(vec2<bool>(true, global0.x), 2325f, vec4<bool>(global0.x, false, global0.x, false), global0.x, vec3<bool>(global0.x, global0.x, global0.x))), -20210i, all(global0.zwx)).x), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-230f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-609f - -1029f) * _wgslsmith_div_f32(-489f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f * _wgslsmith_f_op_f32(f32(-1f) * -1368f))))), !(!func_3(Struct_2(Struct_1(global0.xy, -762f, vec4<bool>(global0.x, global0.x, global0.x, global0.x), false, vec3<bool>(true, global0.x, global0.x))), u_input.b.x, true)), func_3(Struct_2(Struct_1(global0.wz, -243f, vec4<bool>(false, global0.x, global0.x, global0.x), !global0.x, vec3<bool>(global0.x, true, global0.x))), u_input.b.x, true).x, vec3<bool>(true, true, global0.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> bool {
    global0 = arg_0.a.c;
    global0 = vec4<bool>(all(func_2().a), !arg_1.c.x, arg_0.a.a.x, true);
    global1 = array<i32, 5>();
    global0 = arg_1.c;
    global0 = vec4<bool>(!((_wgslsmith_f_op_f32(-arg_0.a.b) != _wgslsmith_f_op_f32(667f * -1802f)) & !func_2().c.x), arg_0.a.e.x, true, !all(vec2<bool>(false, arg_3 != arg_3)));
    return func_3(arg_0, -2147483647i, func_2().c.x).x;
}

fn func_1(arg_0: u32) -> Struct_2 {
    global1 = array<i32, 5>();
    let var_0 = Struct_1(select(vec2<bool>(false, func_4(Struct_2(Struct_1(global0.yz, 166f, vec4<bool>(global0.x, false, global0.x, true), false, global0.xzy)), func_2(), Struct_3(vec4<u32>(arg_0, arg_0, arg_0, 59571u), 4294967295u, vec3<f32>(586f, 420f, 100f), -1054f), 1u)), global0.wx, !func_2().c.zw), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1006f) + -103f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1191f)))), vec4<bool>(true, arg_0 <= arg_0, func_3(Struct_2(Struct_1(vec2<bool>(false, true), -1302f, vec4<bool>(global0.x, global0.x, global0.x, false), global0.x, global0.xxw)), -2147483647i, global0.x).x, func_4(Struct_2(Struct_1(vec2<bool>(global0.x, true), -2225f, vec4<bool>(global0.x, true, global0.x, true), global0.x, vec3<bool>(false, false, global0.x))), func_2(), Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 22896u, 58829u, arg_0), vec4<u32>(46242u, 24966u, 1u, 1u)), ~1u, vec3<f32>(300f, 672f, 1503f), _wgslsmith_f_op_f32(-910f - -298f)), arg_0)), func_3(Struct_2(func_2()), -select(global1[_wgslsmith_index_u32(arg_0, 5u)], -2147483647i, true), func_3(Struct_2(Struct_1(vec2<bool>(global0.x, false), -1941f, vec4<bool>(global0.x, true, true, global0.x), global0.x, global0.zxz)), -16188i, false).x).x, global0.xyw);
    global0 = select(func_2().c, select(!var_0.c, select(var_0.c, var_0.c, !global0.x), !select(select(vec4<bool>(global0.x, global0.x, true, var_0.e.x), vec4<bool>(true, var_0.e.x, true, false), var_0.d), func_2().c, any(vec3<bool>(false, var_0.c.x, false)))), var_0.c);
    return Struct_2(func_2());
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = 1u;
    let var_1 = func_3(arg_0, firstLeadingBit(-2147483647i), arg_1.c.x).x;
    var var_2 = vec3<bool>(func_2().a.x, global0.x, true);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.a.b, 980f)), func_1(_wgslsmith_mult_u32(var_0, var_0)).a.b);
    var var_4 = _wgslsmith_div_f32(1711f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(509f - -3074f)), arg_1.b) + 1408f));
    return StorageBuffer(_wgslsmith_f_op_f32(-1f), max(-firstTrailingBit(u_input.a) ^ reverseBits(_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(-1i, u_input.b.x), vec2<i32>(-9275i, 1i))), vec2<i32>(u_input.c, 1i) ^ u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 5>();
    var var_0 = vec3<bool>(true, true, !(!any(!global0.xyx)));
    global1 = array<i32, 5>();
    let x = u_input.a;
    s_output = func_5(func_1(1u), func_2());
}

