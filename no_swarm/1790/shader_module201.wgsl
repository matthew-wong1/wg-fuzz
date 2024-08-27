struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<bool, 30> = array<bool, 30>(false, false, false, false, false, true, false, true, false, false, true, false, false, true, false, true, false, true, false, true, true, true, true, true, false, false, false, true, false, true);

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(1u, 45343u), Struct_3(26879u, 17735u), Struct_3(0u, 1u), Struct_3(28253u, 55207u), Struct_3(4294967295u, 6759u), Struct_3(4294967295u, 85151u), Struct_3(36149u, 63534u), Struct_3(4294967295u, 41254u), Struct_3(4294967295u, 0u), Struct_3(41429u, 9252u), Struct_3(6827u, 15406u), Struct_3(2829u, 0u), Struct_3(63971u, 47051u));

var<private> global3: array<Struct_2, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> vec4<u32> {
    global1 = array<bool, 30>();
    global2 = array<Struct_3, 13>();
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(166f)), _wgslsmith_f_op_f32(f32(-1f) * -1239f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(188f, 599f) + vec2<f32>(arg_0, arg_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -155f), vec2<f32>(-554f, arg_2.a))) * vec2<f32>(_wgslsmith_f_op_f32(arg_1 - 1912f), 1f))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.d, 13u)];
    var var_2 = reverseBits(abs(u_input.b) << (_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.d, 22529u, 19847u, 1u) | vec4<u32>(33355u, var_1.b, 71483u, var_1.b)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_1.a, var_1.a, var_1.b, var_1.b)), ~vec4<u32>(u_input.d, 75090u, 4294967295u, 4294967295u))) % 32u));
    return ~firstLeadingBit(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1.a, var_1.a, 4294967295u), vec4<u32>(10106u, u_input.d, 48626u, var_1.b)), vec4<u32>(var_1.b, 43758u, u_input.d, var_1.a) & vec4<u32>(4294967295u, 62422u, 1u, var_1.a), u_input.e != 0i) >> (~vec4<u32>(9324u, 0u, var_1.b, var_1.a) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_3(arg_2.a.x, -1252f, Struct_4(-1000f, -u_input.c & ~(~0i)));
    let var_1 = var_0.yxy;
    global2 = array<Struct_3, 13>();
    global3 = array<Struct_2, 20>();
    var var_2 = Struct_5(global3[_wgslsmith_index_u32(abs(abs(_wgslsmith_sub_u32(u_input.d, ~0u))), 20u)], ~(-vec4<i32>(u_input.b, abs(0i), 2147483647i, 14473i >> (arg_1.a % 32u))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1379f), _wgslsmith_f_op_f32(ceil(1642f)))), var_2.a.a.x, 832f), max(max(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.b, arg_2.b), _wgslsmith_mod_vec4_i32(var_2.b, vec4<i32>(u_input.c, arg_2.b.x, -2147483647i, -14502i))), _wgslsmith_add_vec4_i32(vec4<i32>(39639i, -1i, -1i, var_2.b.x), vec4<i32>(-2147483647i, -7019i, u_input.e, -1i))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-var_2.b, arg_2.b), reverseBits(vec4<i32>(2147483647i, 14634i, -39534i, -1i)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = func_2(vec2<bool>(false, any(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.d, 30u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(62221u, 30u)], true, global1[_wgslsmith_index_u32(u_input.d, 30u)]), true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 30u)], false, global1[_wgslsmith_index_u32(35966u, 30u)], false), !global1[_wgslsmith_index_u32(u_input.d, 30u)]))), global2[_wgslsmith_index_u32(~u_input.d, 13u)], Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)) + arg_1.a), -vec4<i32>(arg_1.b.x, arg_1.b.x, _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(0i, arg_1.b.x)), i32(-1i) * -44897i)));
    let var_1 = select(!(!vec3<bool>(global1[_wgslsmith_index_u32(~9214u, 30u)], global1[_wgslsmith_index_u32(1u & u_input.d, 30u)], true)), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 30u)] | !global1[_wgslsmith_index_u32(404u, 30u)], !all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)])), !global1[_wgslsmith_index_u32(u_input.d, 30u)]), !select(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d, 30u)]), vec3<bool>(true, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 30u)], false)), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 30u)], true), vec3<bool>(global1[_wgslsmith_index_u32(15988u, 30u)], true, global1[_wgslsmith_index_u32(u_input.d, 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(34840u, 30u)], true, global1[_wgslsmith_index_u32(u_input.d, 30u)])), vec3<bool>(true, true, true), true), any(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 30u)]))));
    let var_2 = _wgslsmith_f_op_f32(trunc(var_0.a.x));
    var var_3 = all(select(vec4<bool>(var_1.x, all(var_1), true, true), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 30u)], false, true, global1[_wgslsmith_index_u32(35410u, 30u)]), vec4<bool>(true, var_1.x, var_1.x, true), false)), vec4<bool>(true, true, true, true)));
    let var_4 = vec2<u32>(firstTrailingBit(0u), u_input.d);
    return Struct_3(u_input.d << (reverseBits(~27974u << (var_4.x % 32u)) % 32u), ~(~var_4.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, u_input.e), -1i, arg_1.b.x, abs(-39866i)), vec4<i32>(-2958i, arg_1.b.x, -37716i, arg_1.b.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 73007u, 13460u, 43493u), vec4<u32>(arg_0.b, 1u, 32015u, 33613u)) % vec4<u32>(32u))) < _wgslsmith_dot_vec2_i32(arg_1.b.wz ^ arg_1.b.wx, _wgslsmith_add_vec2_i32(arg_1.b.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.x, -2147483647i), arg_1.b.yx, u_input.a.xy))), !(!arg_2), 1i > ~arg_1.b.x);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x + 149f) + _wgslsmith_f_op_f32(sign(-1869f)))))), u_input.e);
    var var_2 = global3[_wgslsmith_index_u32(arg_0.b, 20u)];
    global1 = array<bool, 30>();
    global2 = array<Struct_3, 13>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a, 265f, _wgslsmith_f_op_f32(-arg_1.a.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a.x, var_2.a.x, -1853f) * vec3<f32>(-174f, var_2.a.x, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, arg_1.a.a.x, 262f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.x, -1654f, -1806f))), vec3<f32>(1472f, -532f, -1000f))))), select(select(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(arg_2, global1[_wgslsmith_index_u32(u_input.d, 30u)], false), global1[_wgslsmith_index_u32(arg_0.a, 30u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(20061u, 30u)]), select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 30u)], false, global1[_wgslsmith_index_u32(4294967295u, 30u)]), !vec3<bool>(arg_2, true, global1[_wgslsmith_index_u32(0u, 30u)]))), !vec3<bool>(all(vec2<bool>(var_0.x, false)), true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, 6481u), 30u)]), global1[_wgslsmith_index_u32(28570u, 30u)])));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = _wgslsmith_add_i32(0i, arg_2.b);
    global0 = 1i;
    global2 = array<Struct_3, 13>();
    global2 = array<Struct_3, 13>();
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 20u)];
    return _wgslsmith_div_vec3_f32(vec3<f32>(-1420f, arg_2.a, -2185f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_5(func_4(arg_2.b ^ -44355i, func_2(vec2<bool>(true, global1[_wgslsmith_index_u32(30739u, 30u)]), global2[_wgslsmith_index_u32(3109u, 13u)], Struct_1(vec3<f32>(-1145f, arg_2.a, 620f), u_input.a))), Struct_5(Struct_2(vec2<f32>(var_1.a.x, var_1.a.x)), vec4<i32>(arg_2.b, 1i, arg_2.b, u_input.c)), var_1.a.x <= 1f, Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.a, 1113f)))))))));
}

fn func_6(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_5 {
    let var_0 = !global1[_wgslsmith_index_u32(u_input.d, 30u)];
    let var_1 = select(select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(arg_3.b, 30u)]), vec3<bool>(var_0, false, var_0)), vec3<bool>(true, true, var_0), !global1[_wgslsmith_index_u32(u_input.d, 30u)]), vec3<bool>(false, select(all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 30u)], var_0, true)), global1[_wgslsmith_index_u32(func_4(u_input.b, Struct_1(vec3<f32>(arg_2, arg_0, arg_0), vec4<i32>(4531i, -47660i, 1i, -35126i))).b, 30u)], global1[_wgslsmith_index_u32(~u_input.d, 30u)]), !any(vec2<bool>(global1[_wgslsmith_index_u32(arg_3.b, 30u)], global1[_wgslsmith_index_u32(2678u, 30u)]))), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_3.a, 30u)], true)), vec3<bool>(true, true, true), select(vec3<bool>(!all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_3.b, 30u)])), true, any(select(vec2<bool>(var_0, false), vec2<bool>(global1[_wgslsmith_index_u32(5352u, 30u)], true), vec2<bool>(var_0, var_0)))), vec3<bool>(!global1[_wgslsmith_index_u32(u_input.d, 30u)], !(arg_3.a != 0u), any(vec2<bool>(false, false))), vec3<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(var_0, true, global1[_wgslsmith_index_u32(5431u, 30u)])), false)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_2), _wgslsmith_f_op_f32(arg_0 * arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, arg_1.x)))))) - arg_1.yz));
    global2 = array<Struct_3, 13>();
    let var_3 = func_4(-1i, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, arg_2, arg_2) * vec3<f32>(764f, 548f, 132f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, 562f, -1553f) - vec3<f32>(var_2.a.x, arg_1.x, 911f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_2.a.x, var_2.a.x)), arg_1)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.c >> (u_input.d % 32u), u_input.a.x) >> (firstLeadingBit(~vec4<u32>(1u, 67095u, arg_3.a, arg_3.b)) % vec4<u32>(32u))));
    return Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(func_5(Struct_3(~4294967295u, var_3.b), Struct_5(Struct_2(vec2<f32>(1000f, -541f)), ~u_input.a), true, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, func_3(1120f, arg_1.x, Struct_4(arg_2, 0i)).x), 20u)])).xx), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(reverseBits(1i), ~u_input.e), u_input.b, -5935i, ~1i), vec4<i32>(func_2(!vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(u_input.d, 30u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, 28890u), 13u)], func_2(var_1.xy, arg_3, Struct_1(vec3<f32>(-933f, -534f, 216f), u_input.a))).b.x, u_input.c, u_input.a.x, reverseBits(u_input.a.x))));
}

fn func_7(arg_0: Struct_5) -> f32 {
    var var_0 = 584f;
    global0 = select(arg_0.b.x, _wgslsmith_mult_i32(func_6(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a.x, arg_0.a.a.x) - _wgslsmith_f_op_f32(-arg_0.a.a.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 848f, 1531f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, arg_0.a.a.x, -1030f)))), arg_0.a.a.x, global2[_wgslsmith_index_u32(u_input.d, 13u)]).b.x, ~(-2147483647i)), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(24714u, u_input.d), 30u)]);
    global0 = _wgslsmith_dot_vec2_i32(countOneBits(-arg_0.b.wx), ~vec2<i32>(firstTrailingBit(2147483647i), 0i));
    let var_1 = !vec4<bool>(true, !all(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 30u)], global1[_wgslsmith_index_u32(103184u, 30u)])), all(select(select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(5095u, 30u)], false, global1[_wgslsmith_index_u32(u_input.d, 30u)], global1[_wgslsmith_index_u32(u_input.d, 30u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 30u)], true, global1[_wgslsmith_index_u32(1u, 30u)])), vec4<bool>(global1[_wgslsmith_index_u32(59239u, 30u)], global1[_wgslsmith_index_u32(u_input.d, 30u)], global1[_wgslsmith_index_u32(564u, 30u)], global1[_wgslsmith_index_u32(u_input.d, 30u)]), 4294967295u > u_input.d)), true);
    var var_2 = !(all(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d, 30u)]), select(var_1.xzz, vec3<bool>(global1[_wgslsmith_index_u32(10317u, 30u)], true, false), false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 30u)], true, true))) || false);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.a.a.x, arg_0.a.a.x)));
}

fn func_8(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(countOneBits(u_input.d), 20u)];
    global1 = array<bool, 30>();
    let var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 0u, abs(~50478u), ~select(arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(27446u, arg_1.x, 4294967295u, arg_1.x)), abs(vec4<u32>(arg_1.x, u_input.d, 4294967295u, 74587u))));
    global0 = abs(arg_0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1545f, var_0.a.x, -1869f)))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1120f, -1031f, arg_0.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 396f)))))), countOneBits(-u_input.a));
    return Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1000f, var_2.a.x)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_5(global2[_wgslsmith_index_u32(reverseBits(arg_1.x), 13u)], func_6(-328f, var_2.a, -545f, Struct_3(u_input.d, 1u)), global1[_wgslsmith_index_u32(var_1.x, 30u)] != false, func_6(arg_0.a, vec3<f32>(var_2.a.x, var_0.a.x, -1885f), 1000f, global2[_wgslsmith_index_u32(11617u, 13u)]).a)).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-1f)))), countOneBits(~_wgslsmith_sub_vec4_i32(~var_2.b, ~vec4<i32>(u_input.e, u_input.a.x, u_input.c, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(Struct_4(_wgslsmith_f_op_f32(func_7(func_6(-1223f, _wgslsmith_f_op_vec3_f32(func_1(true, u_input.d, Struct_4(-1000f, 2147483647i))), _wgslsmith_f_op_f32(1184f * -616f), global2[_wgslsmith_index_u32(abs(u_input.d), 13u)]))), ~(-43344i)), select(firstLeadingBit(vec3<u32>(~29651u, abs(u_input.d), _wgslsmith_mod_u32(u_input.d, 4294967295u))), ~(~(~vec3<u32>(13528u, u_input.d, 57096u))), vec3<bool>(false, !(u_input.b == u_input.e), any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 30u)], true), vec2<bool>(global1[_wgslsmith_index_u32(102966u, 30u)], global1[_wgslsmith_index_u32(50150u, 30u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 30u)]))))));
    global3 = array<Struct_2, 20>();
    let var_1 = ~(~(~u_input.d));
    global1 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(843f, -1541f, var_0.a.x, -1000f), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))) - vec4<f32>(662f, var_0.a.x, 495f, -589f)))), _wgslsmith_add_u32(var_1, ~(4294967295u >> (_wgslsmith_mod_u32(1297u, var_1) % 32u))), ~u_input.d);
}

