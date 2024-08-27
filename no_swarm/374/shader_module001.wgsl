struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<f32, 6>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = ~u_input.c < ((4294967295u | u_input.c) | ~(4294967295u << (~u_input.c % 32u)));
    let var_1 = ~firstLeadingBit(arg_0.c.a.x);
    global0 = array<Struct_2, 21>();
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32172u, u_input.c, arg_0.d.x), firstTrailingBit(abs(vec3<u32>(1u, u_input.c, 1u) & vec3<u32>(arg_0.d.x, u_input.c, u_input.c)))), u_input.c ^ select(u_input.c, ~1u, global2.x));
    var var_3 = 66978u;
    return select(select(vec3<bool>(-350f < _wgslsmith_f_op_f32(arg_0.a - 517f), u_input.b.x < -33278i, u_input.c >= arg_0.d.x), vec3<bool>((u_input.c < 4294967295u) != (50984u < arg_0.d.x), !var_0, true), vec3<bool>(any(select(vec3<bool>(var_0, global2.x, false), vec3<bool>(var_0, true, false), vec3<bool>(var_0, true, var_0))), all(select(vec2<bool>(true, var_0), global2.yz, global2.x)), all(vec3<bool>(global2.x, true, var_0)))), select(vec3<bool>(any(select(vec2<bool>(false, var_0), global2.zx, false)), false, global2.x), !select(!vec3<bool>(var_0, global2.x, var_0), select(vec3<bool>(var_0, var_0, global2.x), vec3<bool>(false, global2.x, true), false), vec3<bool>(var_0, true, var_0)), !(!select(vec3<bool>(global2.x, true, true), vec3<bool>(true, global2.x, true), true))), !var_0);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> Struct_3 {
    let var_0 = global2.x;
    let var_1 = true;
    let var_2 = _wgslsmith_mod_u32(~u_input.c, 83139u);
    global2 = !select(vec3<bool>(!var_1, global2.x, true), !vec3<bool>(true, any(global2.xy), true), var_2 >= ~u_input.c);
    global2 = select(select(vec3<bool>(var_1, true, any(vec2<bool>(var_1, var_1))), select(func_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 26288u, var_2), 21u)]), select(vec3<bool>(false, global2.x, global2.x), !vec3<bool>(global2.x, var_1, global2.x), !var_1), var_1), false), !(!vec3<bool>(false, true, !var_1)), select(vec3<bool>(false, all(select(vec4<bool>(false, false, var_1, true), vec4<bool>(false, false, var_1, var_1), vec4<bool>(global2.x, true, true, false))), any(select(vec4<bool>(global2.x, global2.x, true, var_1), vec4<bool>(var_1, true, false, var_1), vec4<bool>(global2.x, true, var_1, false)))), vec3<bool>(false, all(select(vec4<bool>(global2.x, global2.x, true, var_1), vec4<bool>(false, true, global2.x, global2.x), global2.x)), var_1), func_3(global0[_wgslsmith_index_u32(countOneBits(max(38918u, u_input.c)), 21u)])));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    return 65362i;
}

fn func_1() -> Struct_1 {
    let var_0 = !(!select(vec3<bool>(global2.x, !global2.x, any(vec3<bool>(global2.x, global2.x, false))), select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), global2.x), !vec3<bool>(true, global2.x, false), global2.x), global2.x));
    let var_1 = vec3<i32>(u_input.b.x, -24756i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32((vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.c, u_input.c, 16582u) % vec3<u32>(32u))) | (vec3<i32>(1i, 37328i, -1i) & vec3<i32>(-35785i, u_input.d, -2147483647i)), _wgslsmith_mod_vec3_i32(abs(u_input.b), u_input.b >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x))), u_input.b));
    global0 = array<Struct_2, 21>();
    var var_2 = true;
    global2 = var_0;
    return Struct_1(_wgslsmith_mult_vec4_i32(~abs(-vec4<i32>(u_input.b.x, u_input.a, -11449i, var_1.x)), select(~(vec4<i32>(u_input.d, u_input.a, var_1.x, u_input.a) >> (vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, 37547i, 31982i, u_input.d), min(vec4<i32>(var_1.x, var_1.x, 1i, u_input.d), vec4<i32>(-11187i, 30307i, 19260i, -23154i))), !(!vec4<bool>(var_0.x, true, true, true)))), vec3<i32>(u_input.a, func_4(func_2(Struct_3(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)], -217f)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(6505u, 1u), 6u)], 1i), Struct_1(~vec4<i32>(var_1.x, u_input.b.x, var_1.x, 2147483647i), select(vec3<i32>(-1477i, -9433i, var_1.x), u_input.b, vec3<bool>(true, global2.x, global2.x)), 16350i), Struct_2(-326f, u_input.b, Struct_1(vec4<i32>(u_input.d, var_1.x, -1i, var_1.x), var_1, -1i), vec2<u32>(u_input.c, 37806u) & vec2<u32>(42039u, u_input.c))), u_input.d), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~abs(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 6u)])), _wgslsmith_f_op_f32(f32(-1f) * -120f), global1[_wgslsmith_index_u32(1u, 6u)]))) + vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 6u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f - 190f)))));
    let var_2 = min(vec3<u32>(21044u, 19763u, ~var_0.x) ^ ~var_0.xzx, ~select((vec3<u32>(var_0.x, 116429u, u_input.c) | var_0.zxx) & var_0.wyy, vec3<u32>(~1u, u_input.c, _wgslsmith_sub_u32(22228u, var_0.x)), vec3<bool>(true, true, true)));
    global2 = select(select(vec3<bool>(true, any(vec2<bool>(global2.x, true)), global2.x), select(vec3<bool>(true, global2.x, true), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, global2.x), !global2.x), !(!global2.x)), false), select(select(!vec3<bool>(global2.x, global2.x, false), vec3<bool>(!global2.x, true, any(vec4<bool>(false, global2.x, true, global2.x))), !vec3<bool>(global2.x, false, global2.x)), !vec3<bool>(var_2.x <= u_input.c, true, false), select(!(!vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(true, global2.x, false), select(!vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, global2.x, global2.x)))), global2.x);
    let var_3 = func_1();
    global1 = array<f32, 6>();
    let var_4 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(var_3.a, vec4<i32>(0i, ~u_input.b.x, _wgslsmith_mod_i32(-17428i, u_input.b.x), 10341i)), countOneBits(var_3.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, firstLeadingBit(_wgslsmith_sub_i32(-377i, u_input.a)), u_input.b.x, (u_input.d << (58606u % 32u)) << (11192u % 32u)), var_3.a));
    var_1 = func_2(Struct_3(var_1.a), _wgslsmith_f_op_f32(399f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-267f))))), -19682i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~4294967295u, ~19861u, 1u | _wgslsmith_clamp_u32(4294967295u | var_0.x, var_2.x, 20337u), 1254u), 22451i, 10670i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(var_1.a.x, -1304f, 341f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-800f, var_1.a.x, var_1.a.x))), -1i >= var_4)) - _wgslsmith_f_op_vec3_f32(var_1.a * var_1.a)))), ~(-max(var_3.a.zx, var_3.a.zw) | select(-vec2<i32>(0i, -11702i), -var_3.a.wx, all(vec2<bool>(global2.x, false)))));
}

