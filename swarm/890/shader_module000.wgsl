struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-997f, -901f, -404f);

var<private> global1: bool;

var<private> global2: array<vec4<bool>, 30>;

var<private> global3: array<f32, 28>;

var<private> global4: array<Struct_3, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_div_vec3_i32(~arg_0.a.a.c.ywz, vec3<i32>(u_input.a.x, ~arg_1.d.x, ~_wgslsmith_dot_vec3_i32(u_input.a.zwx, vec3<i32>(-17157i, 42591i, arg_0.a.a.d.x))));
    let var_1 = -2147483647i;
    let var_2 = var_0.x >> ((~30066u << (~reverseBits(min(u_input.d.x, 8799u)) % 32u)) % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1462f, arg_0.a.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1280f, arg_0.a.a.b.x)), global0.x) - arg_0.a.a.a.x), 758f)));
    let var_4 = select(false, !(!(!all(vec2<bool>(true, true)))), false);
    return min(0u, ~(~(~u_input.e))) & u_input.e;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> f32 {
    let var_0 = arg_0.a.c;
    global1 = all(vec2<bool>(any(!global2[_wgslsmith_index_u32(17558u ^ u_input.d.x, 30u)]), true));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.yy), vec4<f32>(global3[_wgslsmith_index_u32(min(~122356u, countOneBits(u_input.b.x)), 28u)], arg_0.a.b.x, 1000f, 711f), var_0, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.c.x, var_0.x) | vec2<i32>(arg_1.x, -30129i), ~vec2<i32>(u_input.a.x, u_input.c)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-667f, var_1.a.b.x), arg_0.a.a, true))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.x, -1560f)) - vec2<f32>(global0.x, arg_0.a.a.x)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1959f, -1384f))))));
    global1 = true;
    return _wgslsmith_f_op_f32(-var_1.a.a.x);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f * _wgslsmith_f_op_f32(f32(-1f) * -1084f))), Struct_1(vec2<f32>(-308f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(global0.zy, vec4<f32>(-157f, global3[_wgslsmith_index_u32(u_input.d.x, 28u)], 245f, 857f), u_input.a, u_input.a.xx)), ~u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(144f, global0.x, 2084f, global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -349f, global3[_wgslsmith_index_u32(5346u, 28u)], -973f), vec4<f32>(global0.x, global0.x, -1000f, -1439f)))), vec4<i32>(u_input.a.x, countOneBits(u_input.c) >> (~u_input.b.x % 32u), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-15191i, u_input.a.x, u_input.c), u_input.a.zzw), u_input.c, true), u_input.c), u_input.a.wz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(-1283f, global0.x, true))))));
    let var_1 = vec4<bool>(!((true != all(vec3<bool>(false, true, false))) == true), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), global2[_wgslsmith_index_u32(4294967295u, 30u)], false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(var_0.b.b.wy, vec4<f32>(-346f, global0.x, global3[_wgslsmith_index_u32(u_input.e, 28u)], var_0.a), var_0.b.c, u_input.a.ww)), vec4<i32>(-7814i, -3018i, var_0.b.c.x, -16102i)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f)), all(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.d.x, 0u), vec2<u32>(24016u, u_input.b.x), vec2<bool>(true, false)), ~u_input.b.zx), vec2<u32>(u_input.e & u_input.e, select(u_input.b.x, 1u, true))), 30u)]));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1670f * 392f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - var_0.b.b.x), _wgslsmith_f_op_f32(1103f + -396f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e, 28u)]), _wgslsmith_f_op_f32(-1623f - 527f))))));
    var var_3 = var_0.b.c.xwx;
    global1 = !all(select(vec4<bool>(var_1.x & var_1.x, true, !var_1.x, all(vec2<bool>(var_1.x, var_1.x))), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), !global2[_wgslsmith_index_u32(u_input.d.x, 30u)]), select(!vec4<bool>(true, true, var_1.x, true), !var_1, true)));
    return _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, reverseBits(abs(~u_input.a))), reverseBits(_wgslsmith_mult_vec4_i32(-(~var_0.b.c), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = u_input.a.x == abs(1i);
    var var_1 = countOneBits((firstTrailingBit(~vec4<u32>(30707u, 4294967295u, u_input.b.x, 39487u)) >> ((vec4<u32>(4294967295u, u_input.d.x, u_input.b.x, 1606u) >> (firstTrailingBit(vec4<u32>(u_input.d.x, 30031u, 14557u, 25504u)) % vec4<u32>(32u))) % vec4<u32>(32u))) | countOneBits(vec4<u32>(u_input.e | u_input.e, ~38408u, 1u, 0u)));
    global4 = array<Struct_3, 15>();
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~(~func_1(Struct_5(Struct_3(Struct_1(global0.yz, vec4<f32>(global0.x, 460f, 342f, global0.x), u_input.a, vec2<i32>(59383i, u_input.a.x))), vec4<i32>(-52885i, 0i, 0i, 22896i)), Struct_1(global0.zy, vec4<f32>(-536f, global3[_wgslsmith_index_u32(var_1.x, 28u)], global0.x, global3[_wgslsmith_index_u32(var_1.x, 28u)]), vec4<i32>(u_input.a.x, -14843i, -56505i, 1i), vec2<i32>(u_input.c, 9263i)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(23515u, u_input.e, u_input.d.x, var_1.x), vec4<u32>(var_1.x, var_1.x, u_input.d.x, var_1.x)), vec4<u32>(u_input.e, u_input.e, 4294967295u, 1u) ^ vec4<u32>(2621u, u_input.d.x, 1u, u_input.d.x))), var_1.x);
    let var_3 = ~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b.x, 144829u)), var_1.zw));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, var_3.x, 9064u), 28u)], _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(func_2(), vec4<i32>(u_input.c, -24285i, u_input.a.x, u_input.c)), reverseBits(-vec4<i32>(u_input.a.x, u_input.c, 2147483647i, 34622i))), _wgslsmith_mult_vec4_i32(~(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(u_input.c, u_input.c, -53253i, -2147483647i)), abs(vec4<i32>(-32903i, u_input.c, u_input.a.x, u_input.a.x)))));
}

