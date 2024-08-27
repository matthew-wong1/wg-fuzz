struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<f32, 21> = array<f32, 21>(-1293f, -139f, -836f, 1202f, -214f, 2019f, -655f, -1472f, -683f, 873f, 271f, 942f, 357f, -272f, 1000f, 573f, -1685f, -2494f, -1165f, 770f, 259f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    global0 = array<Struct_2, 17>();
    let var_0 = arg_0.a.a.x;
    global0 = array<Struct_2, 17>();
    var var_1 = arg_0.a;
    global0 = array<Struct_2, 17>();
    return !arg_2.a.a;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    return _wgslsmith_sub_vec3_i32(arg_2.b & (_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, 31930i) << (vec3<u32>(u_input.c.x, 26416u, u_input.c.x) % vec3<u32>(32u)), arg_1.b) ^ ~vec3<i32>(arg_1.b.x, arg_2.b.x, u_input.a)), -arg_2.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = 7356i;
    var var_1 = true;
    var var_2 = u_input.a << (~1u % 32u);
    var_1 = arg_0.a.a.x;
    var var_3 = !select(!(!arg_3.xx), select(vec2<bool>(true, !arg_2.x), arg_2.xz, arg_3.x), vec2<bool>(arg_1.a.x, arg_0.a.a.x));
    return ~vec3<i32>(-_wgslsmith_mod_i32(-43280i, arg_0.b.x) | ~0i, arg_1.b.x, ~(~(-55195i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(arg_0, func_4(Struct_2(Struct_1(func_2(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], vec2<bool>(true, arg_0.a.x), global0[_wgslsmith_index_u32(1u, 17u)], 12597u), vec3<i32>(u_input.a, -42109i, 1i)), func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-688f, 711f, global1[_wgslsmith_index_u32(4800u, 21u)]), vec3<f32>(1267f, 468f, global1[_wgslsmith_index_u32(0u, 21u)]))), arg_0, Struct_1(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(21255i, arg_0.b.x, 58367i))), ~arg_0.b << (vec3<u32>(73816u, u_input.c.x, u_input.b.x) % vec3<u32>(32u))), arg_0, !(!arg_1), !select(!vec4<bool>(false, arg_0.a.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_0.a.x, true), 69223u > u_input.b.x)), -select(vec3<i32>(_wgslsmith_div_i32(arg_0.b.x, u_input.a), _wgslsmith_mult_i32(-24697i, -1i), -2147483647i | arg_0.b.x), arg_0.b | vec3<i32>(u_input.a, u_input.a, -15260i), all(!arg_0.a.xz)));
    var var_1 = 16283u;
    global1 = array<f32, 21>();
    var var_2 = arg_0;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(max(0u, 4294967295u), 21u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 21u)]))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], -591f)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x, ~1u), 21u)]);
    return var_0.a;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 17u)];
    var var_1 = !vec4<bool>(!(!(var_0.a.a.x && false)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x | u_input.b.x, 21u)]) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(932f)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)])))), all(!func_2(Struct_2(Struct_1(var_0.a.a, vec3<i32>(arg_3, arg_2.b.x, arg_2.b.x)), arg_2.b, var_0.c), vec2<bool>(arg_1.x, var_0.a.a.x), Struct_2(Struct_1(vec3<bool>(false, false, false), arg_2.b), arg_2.b, vec3<i32>(31387i, arg_3, var_0.b.x)), 0u).xy), all(vec3<bool>(true, true, !var_0.a.a.x)));
    let var_2 = 1u;
    global0 = array<Struct_2, 17>();
    let var_3 = arg_2;
    return vec4<bool>(false, arg_2.a.x, true, func_1(arg_2, select(select(!vec4<bool>(var_3.a.x, false, arg_1.x, arg_1.x), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, var_1.x), arg_2.a.x)), select(vec4<bool>(arg_1.x, true, arg_2.a.x, var_1.x), select(vec4<bool>(arg_2.a.x, var_3.a.x, true, arg_2.a.x), vec4<bool>(true, var_3.a.x, false, true), vec4<bool>(var_1.x, var_1.x, arg_1.x, false)), vec4<bool>(arg_1.x, true, false, true)), select(!vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x), !vec4<bool>(var_1.x, arg_1.x, var_1.x, var_3.a.x), true))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(false, !(-692f < _wgslsmith_div_f32(-1062f, global1[_wgslsmith_index_u32(0u, 21u)])), all(func_5(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)] * -1000f), vec2<bool>(true, false), func_1(Struct_1(vec3<bool>(true, true, true), vec3<i32>(-1i, -8095i, -28936i)), vec4<bool>(true, false, false, false)), u_input.a & 14152i)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(360f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 28560u, 47600u), vec3<u32>(u_input.b.x, 4294967295u, 1u)), _wgslsmith_mod_vec3_u32(u_input.b.zyz, vec3<u32>(35444u, u_input.b.x, 0u))), 21u)])))) < -1268f;
    let var_2 = any(var_0.zz);
    var var_3 = firstLeadingBit(vec4<i32>(-(i32(-1i) * -506i), -2147483647i, u_input.a, reverseBits(-1i))) ^ _wgslsmith_mod_vec4_i32(select(vec4<i32>(~u_input.a, u_input.a, i32(-1i) * -23472i, -38927i), countOneBits(vec4<i32>(u_input.a, u_input.a, -40838i, 2147483647i) << (vec4<u32>(u_input.b.x, u_input.c.x, 27611u, u_input.b.x) % vec4<u32>(32u))), func_5(_wgslsmith_f_op_f32(abs(827f)), select(vec2<bool>(var_2, false), var_0.xz, var_0.x), func_1(Struct_1(var_0, vec3<i32>(u_input.a, 1i, u_input.a)), vec4<bool>(true, true, var_0.x, var_2)), -u_input.a)), ~vec4<i32>(-20020i, -16316i, -20842i, 49859i) ^ -min(vec4<i32>(-1i, 21924i, -9906i, -60373i), vec4<i32>(u_input.a, u_input.a, u_input.a, -65571i)));
    var var_4 = func_1(Struct_1(var_0, vec3<i32>(-2147483647i, 0i, -38326i)), func_5(-542f, !var_0.yx, func_1(Struct_1(vec3<bool>(true, true, true), -var_3.xxw), !(!vec4<bool>(false, true, var_0.x, false))), 23625i));
    let var_5 = -_wgslsmith_mult_i32(var_4.b.x, u_input.a);
    var var_6 = Struct_1(var_0, vec3<i32>(-2147483647i, var_4.b.x, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i ^ func_1(func_1(Struct_1(vec3<bool>(true, var_6.a.x, false), vec3<i32>(var_6.b.x, -2147483647i, 1i)), vec4<bool>(var_6.a.x, true, var_2, true)), !vec4<bool>(true, var_4.a.x, var_4.a.x, true)).b.x, ~6051i, i32(-1i) * -var_3.x, firstLeadingBit(_wgslsmith_mod_i32(-var_6.b.x, 20287i))), -18342i, 1127u, func_4(global0[_wgslsmith_index_u32(94954u, 17u)], Struct_1(vec3<bool>(true, all(var_6.a), any(vec4<bool>(var_6.a.x, var_6.a.x, true, false))), ~var_4.b), select(select(select(vec4<bool>(var_2, true, var_4.a.x, false), vec4<bool>(var_2, true, var_6.a.x, var_2), false), !vec4<bool>(var_4.a.x, var_0.x, var_4.a.x, var_6.a.x), any(vec4<bool>(false, false, false, true))), select(!vec4<bool>(true, var_0.x, true, false), !vec4<bool>(false, true, true, var_2), select(vec4<bool>(var_6.a.x, false, var_6.a.x, var_0.x), vec4<bool>(false, true, var_2, false), var_6.a.x)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(var_0.x, true, false, var_2), func_5(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], vec2<bool>(false, false), Struct_1(vec3<bool>(true, var_2, true), var_6.b), u_input.a), !vec4<bool>(var_6.a.x, true, var_6.a.x, false))).x, -abs(min(var_6.b.yy, vec2<i32>(var_5, var_6.b.x))));
}

