struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 23> = array<f32, 23>(-1149f, 1733f, -1000f, -119f, 1158f, -1018f, -1000f, 744f, 971f, -276f, -698f, 609f, -1578f, -134f, -1265f, -131f, 406f, -1366f, 808f, 649f, 676f, -1000f, 143f);

var<private> global2: array<Struct_2, 8>;

var<private> global3: vec4<u32>;

var<private> global4: vec4<u32> = vec4<u32>(74007u, 9002u, 55193u, 28429u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global4 = reverseBits(vec4<u32>(173u, 0u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(5250u, global4.x), 1u), ~1u));
    global2 = array<Struct_2, 8>();
    let var_0 = vec4<f32>(global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.d * _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_div_f32(-589f, 121f))), -504f), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(-global0.d)))));
    global4 = ~vec4<u32>(~global4.x, arg_0.b.e, ~(~36197u), max(1u, global4.x) ^ (_wgslsmith_mod_u32(arg_0.b.e, arg_0.b.e) | _wgslsmith_dot_vec4_u32(vec4<u32>(1467u, 15671u, global3.x, global0.e), vec4<u32>(global4.x, arg_0.a.e, 105093u, global3.x))));
    var var_1 = _wgslsmith_div_i32(firstTrailingBit(firstLeadingBit(firstTrailingBit(countOneBits(-1i)))), -15591i);
    return select(!(!global0.a), select(!vec2<bool>(global0.a.x & arg_0.a.b, arg_0.a.d <= -1368f), !select(vec2<bool>(global0.a.x, global0.b), vec2<bool>(false, global0.b), vec2<bool>(arg_0.a.a.x, global0.a.x)), global0.a), !global0.a);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-45171i, 0i, 1i, 29908i), countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, -9916i)))));
    var var_1 = true;
    var_0 = vec4<i32>(-68088i, -11672i, var_0.x, _wgslsmith_mod_i32(max(_wgslsmith_mod_i32(abs(u_input.c.x), -var_0.x), -u_input.b), -2147483647i));
    global2 = array<Struct_2, 8>();
    var var_2 = arg_2;
    return Struct_1(select(select(func_3(global2[_wgslsmith_index_u32(firstLeadingBit(global3.x), 8u)]), global0.a, select(global0.a, func_3(arg_2), vec2<bool>(arg_1.x, false))), vec2<bool>(arg_1.x, var_2.a.a.x), !(!(!vec2<bool>(global0.a.x, global0.a.x)))), var_2.a.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1360f, var_2.b.c.x), _wgslsmith_f_op_f32(-2501f - _wgslsmith_f_op_f32(sign(-1175f))))), global0.c.x, reverseBits(u_input.a));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = ~(~select(vec2<u32>(abs(0u), _wgslsmith_add_u32(global4.x, 25297u)), vec2<u32>(~18032u, arg_0), arg_3.a.x));
    global1 = array<f32, 23>();
    var var_1 = reverseBits(select(~(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.b, 24438i), vec4<i32>(-2147483647i, u_input.b, 0i, -1i))), abs(vec4<i32>(u_input.c.x, u_input.c.x, 29210i, 2147483647i) & -vec4<i32>(1i, -33198i, -14217i, 14393i)), select(!(!vec4<bool>(global0.a.x, arg_3.a.x, false, true)), !(!vec4<bool>(true, arg_2.b, true, arg_3.a.x)), vec4<bool>(all(vec4<bool>(arg_3.b, false, false, true)), arg_2.a.x, true, true))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(112f + arg_3.c.x)))));
    var var_3 = Struct_1(func_3(global2[_wgslsmith_index_u32(global3.x, 8u)]), all(!(!(!vec3<bool>(false, false, arg_2.b)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c.x, global1[_wgslsmith_index_u32(arg_3.e, 23u)]), arg_2.c)))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_0, global3.yz), var_0.x), vec2<u32>(firstTrailingBit(44400u), abs(1u))), 23u)], 0u);
    return vec3<bool>(true, !var_3.b, true);
}

fn func_1() -> Struct_1 {
    var var_0 = select(!select(vec3<bool>(global0.a.x | global0.b, all(vec4<bool>(global0.b, global0.a.x, global0.b, true)), true), !(!vec3<bool>(false, true, global0.a.x)), select(select(vec3<bool>(false, global0.b, global0.b), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(global0.a.x, global0.a.x, global0.b), vec3<bool>(true, true, true))), !select(func_4(global0.e, _wgslsmith_f_op_vec2_f32(-global0.c), func_2(global2[_wgslsmith_index_u32(41436u, 8u)], vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), global2[_wgslsmith_index_u32(10736u, 8u)]), Struct_1(vec2<bool>(false, global0.a.x), global0.a.x, vec2<f32>(global0.d, 1725f), -134f, global4.x)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(global0.b, global0.a.x, global0.a.x)), select(vec3<bool>(global0.b, global0.a.x, global0.a.x), vec3<bool>(false, global0.a.x, global0.a.x), global0.a.x), !vec3<bool>(global0.b, global0.b, global0.a.x)), global0.a.x), all(vec3<bool>(global0.b, true, (u_input.a > 46997u) & global0.b)));
    global4 = vec4<u32>(_wgslsmith_mod_u32(52931u, ~reverseBits(37029u) ^ u_input.a), _wgslsmith_clamp_u32(abs(4294967295u ^ ~u_input.a), ~u_input.a, global4.x), 1u, ~reverseBits(u_input.d));
    var var_1 = true;
    var_1 = !all(var_0.xx);
    var var_2 = ~_wgslsmith_mod_vec2_u32(select(_wgslsmith_sub_vec2_u32(~global3.xw, ~global4.xx), vec2<u32>(_wgslsmith_mult_u32(u_input.d, 5080u), global0.e), any(!vec4<bool>(true, true, var_0.x, var_0.x))), ~(~global4.xx));
    return Struct_1(global0.a, _wgslsmith_f_op_f32(-global0.d) != _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1150f * global0.c.x), func_2(global2[_wgslsmith_index_u32(global0.e, 8u)], vec4<bool>(true, var_0.x, true, false), global2[_wgslsmith_index_u32(global3.x, 8u)]).c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.x, 23u)])), _wgslsmith_sub_u32(global4.x, ~_wgslsmith_add_u32(var_2.x, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), Struct_1(global0.a, true, _wgslsmith_f_op_vec2_f32(floor(global0.c)), _wgslsmith_f_op_f32(select(-1141f, global1[_wgslsmith_index_u32(~global0.e & (u_input.a & 75060u), 23u)], false)), select(max(0u, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, 1u, 79723u), vec3<u32>(global4.x, u_input.a, global0.e)) << (abs(global0.e) % 32u), global0.a.x)));
    global1 = array<f32, 23>();
    global4 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global4.yyy, vec3<u32>(u_input.a, 8509u, global4.x)) << (global3.zzy % vec3<u32>(32u)), max(vec3<u32>(1u, 104725u, 42726u), ~vec3<u32>(global3.x, global3.x, var_0.b.e))) & func_2(var_0, vec4<bool>(any(vec4<bool>(false, true, global0.a.x, var_0.a.b)), global0.b, true, func_1().b), var_0).e, 0u, 33114u, ~1u);
    global2 = array<Struct_2, 8>();
    let var_1 = Struct_2(var_0.a, Struct_1(!(!vec2<bool>(true, var_0.b.b)), !all(!global0.a), vec2<f32>(global0.c.x, -625f), var_0.a.d, ~_wgslsmith_dot_vec2_u32(~global3.zy, global4.wz)));
    global4 = _wgslsmith_div_vec4_u32(abs(select(_wgslsmith_sub_vec4_u32(vec4<u32>(38308u, 4294967295u, var_1.b.e, u_input.a), vec4<u32>(0u, global4.x, 24702u, u_input.d)), ~vec4<u32>(global4.x, u_input.a, 1u, 1u), true)) & ((vec4<u32>(0u, global0.e, 7323u, 18492u) << (firstTrailingBit(vec4<u32>(var_1.a.e, 0u, 4294967295u, global3.x)) % vec4<u32>(32u))) << ((abs(vec4<u32>(global3.x, 0u, global3.x, global0.e)) >> (~vec4<u32>(1u, var_0.b.e, u_input.d, 67862u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(89774u, 21085u, 4294967295u, global3.x), ~min(vec4<u32>(global0.e, u_input.a, 4294967295u, 22910u), vec4<u32>(var_1.b.e, global3.x, 45907u, 42016u))) & ~(~(vec4<u32>(0u, var_1.a.e, var_1.b.e, global3.x) | vec4<u32>(u_input.d, var_1.b.e, u_input.d, var_0.b.e))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(global0.c.x * -482f), _wgslsmith_f_op_f32(-591f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 23u)])) - -692f))), global1[_wgslsmith_index_u32(~(~10890u), 23u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.b.d, _wgslsmith_f_op_f32(select(func_2(var_0, vec4<bool>(global0.a.x, var_0.a.b, var_1.a.a.x, var_0.b.a.x), Struct_2(var_1.a, var_1.a)).c.x, _wgslsmith_f_op_f32(var_1.b.c.x - -564f), var_0.b.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.d - 507f), global0.c.x) - vec2<f32>(var_0.a.d, var_1.a.c.x)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(exp2(var_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x))) + -958f), select(-u_input.b, firstTrailingBit(select(u_input.c.x, max(u_input.b, u_input.c.x), any(vec4<bool>(var_1.a.a.x, true, false, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(-var_0.a.d)) < var_2.x));
}

