struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(i32(-2147483648), vec2<i32>(1i, 2147483647i)));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<i32>(1670i, i32(-2147483648), -15061i, -1i), false, vec2<i32>(-52006i, i32(-2147483648)), vec3<bool>(true, false, false));

var<private> global2: array<bool, 2>;

var<private> global3: Struct_3;

var<private> global4: array<vec4<u32>, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_4) -> u32 {
    let var_0 = 0u | _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(arg_1.wwz, min(arg_0.yyx, arg_1.xzy))), firstLeadingBit(~arg_2));
    var var_1 = Struct_4(Struct_3(u_input.c | _wgslsmith_add_i32(62408i, -7804i), global1.b.yw), !all(select(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(arg_2, 2u)], arg_3.b), vec4<bool>(true, arg_3.b, false, global1.a.x), true)), Struct_1(vec2<bool>(~var_0 < ~6087u, true), abs(vec4<i32>(-1i, arg_3.a.a, u_input.b, -1i)), true, vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(-1i, 1i)), firstLeadingBit(u_input.a)), select(!(!arg_3.c.e), select(select(arg_3.c.e, arg_3.c.e, false), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 2u)], true), select(arg_3.c.e, global1.e, vec3<bool>(arg_3.b, arg_3.b, global1.e.x))), false)));
    let var_2 = arg_0.xyx;
    global0 = array<Struct_3, 1>();
    var var_3 = max(33781u, (1u ^ (firstLeadingBit(arg_0.x) ^ var_0)) << (reverseBits(var_0) % 32u));
    return 0u;
}

fn func_2() -> u32 {
    var var_0 = 1u;
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(func_3(global4[_wgslsmith_index_u32(~4294967295u, 14u)], global4[_wgslsmith_index_u32(~(~72087u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u))), 14u)], 0u, Struct_4(global0[_wgslsmith_index_u32(~(~71576u), 1u)], _wgslsmith_dot_vec3_i32(global1.b.wzz, global1.b.zww) >= -23869i, Struct_1(vec2<bool>(global1.c, global1.c), vec4<i32>(global1.b.x, global3.a, 0i, u_input.b), true, vec2<i32>(-1i, global3.a), vec3<bool>(true, true, global1.e.x)))), 1u)], true, Struct_1(vec2<bool>(false, true), -firstLeadingBit(~vec4<i32>(2147483647i, u_input.a, global3.a, 2147483647i)), true, ~(global3.b | vec2<i32>(global1.d.x, -1i)), vec3<bool>(false, all(select(vec4<bool>(true, global1.c, false, global1.e.x), vec4<bool>(global1.e.x, global2[_wgslsmith_index_u32(0u, 2u)], true, global2[_wgslsmith_index_u32(17112u, 2u)]), vec4<bool>(global1.a.x, false, global1.a.x, false))), global1.a.x)));
    global0 = array<Struct_3, 1>();
    let var_2 = var_1.a;
    var var_3 = Struct_2(Struct_1(select(vec2<bool>(!global2[_wgslsmith_index_u32(0u, 2u)], false), global1.e.zx, var_1.c.e.x), ~global1.b, (global1.a.x && all(var_1.c.e)) && true, global3.b, var_1.c.e));
    return ~0u;
}

fn func_4(arg_0: u32, arg_1: bool) -> Struct_3 {
    var var_0 = vec3<u32>(firstTrailingBit(94263u), 4294967295u, ~4294967295u);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-2320f + -361f);
    var var_3 = select(select(select(vec3<bool>(all(vec4<bool>(true, false, true, var_1)), arg_0 == 0u, any(global1.e)), vec3<bool>(var_1, var_0.x != 1u, true), global1.c), global1.e, all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 2u)], !var_1, true))), select(vec3<bool>(false, !(global1.e.x || global1.e.x), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(13734u, var_0.x), arg_0, func_2()), 2u)]), !vec3<bool>(!arg_1, any(vec2<bool>(true, global1.a.x)), var_1), global1.e), true);
    let var_4 = (!all(!vec3<bool>(var_3.x, true, false)) && true) && !((i32(-1i) * -37887i) < global1.d.x);
    return Struct_3(firstLeadingBit(18177i), global3.b);
}

fn func_1() -> Struct_4 {
    global3 = func_4(~(~func_2()), false);
    global4 = array<vec4<u32>, 14>();
    let var_0 = Struct_1(!global1.e.xx, -min(-min(vec4<i32>(0i, -2147483647i, -26941i, -2147483647i), global1.b), select(-vec4<i32>(29703i, 1i, 1918i, 9613i), vec4<i32>(-1i, u_input.c, u_input.c, u_input.b), all(vec2<bool>(false, true)))), true, global3.b, global1.e);
    global3 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(global1.b.x), -1i, u_input.c >> (0u % 32u), 1i), vec4<i32>(_wgslsmith_div_i32(-2147483647i, 1i), 34967i, -firstTrailingBit(3227i), _wgslsmith_sub_i32(-38334i, firstLeadingBit(-2147483647i)))), select(vec2<i32>(-1i) * -global3.b, -vec2<i32>(var_0.b.x, global3.a), false));
    let var_1 = !var_0.a;
    return Struct_4(global0[_wgslsmith_index_u32(~(~39427u) ^ (34959u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(30853u, 82654u, 3509u), vec3<u32>(4294967295u, 1u, 4294967295u)) % 32u)), 1u)], true, Struct_1(select(!vec2<bool>(var_1.x, global2[_wgslsmith_index_u32(31122u, 2u)]), select(select(global1.e.zy, vec2<bool>(false, true), var_1.x), vec2<bool>(var_0.e.x, global2[_wgslsmith_index_u32(4294967295u, 2u)]), var_1.x), !select(global1.a, vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], var_0.a.x), var_1)), _wgslsmith_div_vec4_i32(~(var_0.b >> (vec4<u32>(0u, 32416u, 4294967295u, 15481u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d.x, 1i, -2147483647i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(13426i, -17996i, 1i, -1i), vec4<i32>(-2147483647i, 854i, u_input.b, var_0.d.x)), ~vec4<i32>(global1.b.x, var_0.d.x, u_input.b, -1i))), global1.c & any(select(vec2<bool>(global1.a.x, global1.a.x), global1.a, vec2<bool>(false, false))), vec2<i32>(-u_input.a, 1i), vec3<bool>(true, select(!var_0.c, false, true), true)));
}

fn func_5(arg_0: Struct_4) -> f32 {
    let var_0 = ~vec4<u32>(_wgslsmith_mod_u32(countOneBits(max(1u, 0u)), ~1u), max(1u, 1u), 1u, ~_wgslsmith_clamp_u32(3934u, 0u, 1u) ^ ~(~0u));
    let var_1 = vec3<u32>(var_0.x, 24856u, ~var_0.x) & vec3<u32>(0u, _wgslsmith_clamp_u32(44238u & var_0.x, 4294967295u, var_0.x), ~var_0.x & ~(~4294967295u));
    let var_2 = func_1();
    let var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 63874u) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 33972u), vec2<u32>(32837u, var_0.x)), ~reverseBits(vec2<u32>(4294967295u, var_0.x))), var_1.zy), countOneBits(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_1.x, var_0.x)), _wgslsmith_mult_vec2_u32(var_0.xy, vec2<u32>(4942u, var_0.x)))) ^ select(~_wgslsmith_mod_vec2_u32(vec2<u32>(241u, 1u), vec2<u32>(var_0.x, 65127u)), var_1.xx, !(4804u >= var_0.x)));
    var var_4 = ~var_0.xw;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(721f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(534f, 224f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(-(~_wgslsmith_sub_i32(_wgslsmith_add_i32(19817i, global3.a), _wgslsmith_add_i32(global3.b.x, global3.a))), _wgslsmith_sub_vec2_i32(global1.b.xz | (global1.b.zw >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), abs(-select(vec2<i32>(global3.b.x, 42056i), global3.b, false))));
    global3 = Struct_3(_wgslsmith_mult_i32(abs(global3.b.x), global3.a), ~global3.b);
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2321f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1()))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2193f * _wgslsmith_f_op_f32(step(287f, 1096f))), -855f)))));
    let var_1 = 1u;
    var var_2 = -1i;
    let var_3 = func_1().a;
    global2 = array<bool, 2>();
    global4 = array<vec4<u32>, 14>();
    var var_4 = func_4(var_1, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy);
}

