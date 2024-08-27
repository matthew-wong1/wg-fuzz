struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = vec4<bool>(true & all(select(vec3<bool>(true, false, false), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x)), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, global1.x), true))), false, !global1.x && global1.x, false);
    let var_1 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), ~(vec2<u32>(21425u, 75506u) & ~vec2<u32>(19022u, u_input.a)) & _wgslsmith_sub_vec2_u32(~(~vec2<u32>(1326u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 38292u)))));
    let var_2 = Struct_2(max(vec3<i32>(1i, -reverseBits(-2147483647i), -1i), abs(select(vec3<i32>(-50680i, 20235i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, 6712i), vec3<i32>(-2147483647i, -2147483647i, 59018i)), vec3<bool>(false, global1.x, global1.x)))), Struct_1(var_0.yzz, -55848i, vec3<bool>(false, global1.x, var_0.x)));
    var var_3 = var_2.b;
    let var_4 = var_2.a.zz;
    return false == var_2.b.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec2<bool> {
    global0 = array<f32, 2>();
    global1 = vec2<bool>(func_3(), !(any(select(vec3<bool>(global1.x, false, true), vec3<bool>(true, false, global1.x), vec3<bool>(false, global1.x, true))) | true));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(arg_0.yx))))));
    global1 = select(select(vec2<bool>(false, reverseBits(0i) > (-57173i >> (u_input.a % 32u))), vec2<bool>(false, global1.x), any(select(vec4<bool>(false, true, true, global1.x), vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x)))), select(select(vec2<bool>(!global1.x, arg_0.x > -448f), !vec2<bool>(global1.x, global1.x), !vec2<bool>(true, global1.x)), select(vec2<bool>(true, select(global1.x, true, true)), select(select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x)), select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), false), !vec2<bool>(global1.x, global1.x)), false), !(!vec2<bool>(false, global1.x))), false);
    let var_1 = Struct_2(vec3<i32>(~firstLeadingBit(-1i), ~firstTrailingBit(abs(1i)), ~firstLeadingBit(-11405i)), Struct_1(select(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, false), global1.x), !select(vec3<bool>(global1.x, true, true), vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, false)), !global1.x), 1i | _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mod_i32(-9108i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 14087i, -54143i, -4706i), vec4<i32>(75295i, 23035i, -2147483647i, 0i))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, true)), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global1.x, true)), true), vec3<bool>(true, true, !global1.x), (true || global1.x) || !global1.x)));
    return !select(vec2<bool>(true, all(select(vec2<bool>(true, false), var_1.b.a.xz, false))), select(vec2<bool>(any(var_1.b.c), any(vec3<bool>(true, false, false))), !var_1.b.a.xx, true), !select(select(vec2<bool>(var_1.b.a.x, global1.x), vec2<bool>(true, false), vec2<bool>(true, var_1.b.a.x)), vec2<bool>(true, true), select(vec2<bool>(var_1.b.a.x, false), var_1.b.a.zz, true)));
}

fn func_1() -> vec4<u32> {
    global1 = !(!func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1680f, global0[_wgslsmith_index_u32(0u, 2u)], 1631f, 2046f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(38719u, 2u)], 1000f, global0[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-280f, -1000f, global0[_wgslsmith_index_u32(91001u, 2u)], 1485f))))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), min(vec3<u32>(81055u, 10895u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    return ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 12481u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<f32, 2>();
    let var_0 = vec4<bool>(true, all(!select(select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(true, false, false, global1.x), vec4<bool>(global1.x, global1.x, true, true)), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x)), true)), global1.x, !global1.x);
    var var_1 = Struct_2(-max(~firstTrailingBit(vec3<i32>(2147483647i, 14594i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(-41965i, -78795i, -1i), vec3<i32>(62281i, 1i, 0i)) << (select(arg_0.wzz, arg_0.yyy, global1.x) % vec3<u32>(32u))), Struct_1(select(select(select(vec3<bool>(global1.x, var_0.x, false), vec3<bool>(var_0.x, true, global1.x), vec3<bool>(true, var_0.x, global1.x)), vec3<bool>(var_0.x, true, global1.x), true), select(select(vec3<bool>(true, var_0.x, false), var_0.xzz, var_0.x), select(vec3<bool>(true, false, false), var_0.wzx, vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), all(!vec3<bool>(var_0.x, global1.x, true))), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2106i, 0i, 1i), firstLeadingBit(0i)), select(!var_0.xwx, !vec3<bool>(var_0.x, false, true), true)));
    global0 = array<f32, 2>();
    let var_2 = i32(-1i) * -_wgslsmith_add_i32(2147483647i, var_1.b.b);
    return Struct_1(vec3<bool>(true, select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 2u)]) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22541u, 2u)]), true, var_1.b.c.x), var_1.b.a.x), ~(~(~1i)), var_0.yyx);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = -(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, arg_1.b), vec3<i32>(arg_1.b, arg_1.b, arg_1.b))) << (max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 39065u, 86704u), vec3<u32>(u_input.a, 38561u, 1u)), firstLeadingBit(arg_0.x), 83522u), vec3<u32>(70829u, ~1u, reverseBits(u_input.a))) % vec3<u32>(32u)));
    let var_1 = func_4(min(~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.x, u_input.a, 1u, arg_0.x)), vec4<u32>(0u, arg_0.x, u_input.a, arg_0.x), vec4<u32>(29902u, arg_0.x, 1678u, arg_0.x)), _wgslsmith_mod_vec4_u32(func_1(), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, u_input.a, 10790u, 0u), ~vec4<u32>(arg_0.x, 17231u, u_input.a, arg_0.x), vec4<u32>(38445u, 57330u, 18079u, 60186u) >> (vec4<u32>(33392u, u_input.a, 29981u, u_input.a) % vec4<u32>(32u))))));
    global1 = var_1.c.yx;
    var var_2 = Struct_1(func_4(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(38792u, arg_0.x, 4294967295u, 18714u), vec4<u32>(1u, 10511u, u_input.a, 0u)), select(vec4<u32>(u_input.a, 36818u, u_input.a, u_input.a), reverseBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, 32034u)), !vec4<bool>(false, var_1.c.x, false, var_1.a.x)))).a, firstTrailingBit(func_4(~countOneBits(vec4<u32>(arg_0.x, 4294967295u, 0u, arg_0.x))).b), vec3<bool>(true, all(!func_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 290f, global0[_wgslsmith_index_u32(u_input.a, 2u)], 436f), vec3<u32>(arg_0.x, 34703u, u_input.a))), arg_1.a.x));
    let var_3 = Struct_2(abs(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b, -10834i, -51886i), vec3<i32>(-2147483647i, -2147483647i, -5411i)), select(vec3<i32>(-44053i, 2147483647i, var_1.b), vec3<i32>(-2147483647i, var_2.b, arg_1.b), false)), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(arg_1.b, var_2.b, -21210i)), vec3<i32>(6838i, -2147483647i, var_2.b), vec3<i32>(1393i, var_1.b, var_2.b) | vec3<i32>(-16746i, 522i, var_0.x)))), func_4((vec4<u32>(0u, u_input.a, 35031u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 0u, 1u) % vec4<u32>(32u))) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x), vec4<u32>(arg_0.x, 0u, arg_0.x, u_input.a))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(all(vec2<bool>(true, true)) == func_5(~max(vec2<u32>(51963u, u_input.a), vec2<u32>(u_input.a, u_input.a)), func_4(func_1())), true);
    global1 = select(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(464f, global0[_wgslsmith_index_u32(u_input.a, 2u)], -154f, 488f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], 1623f, -352f))) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 1359f, global0[_wgslsmith_index_u32(0u, 2u)], -179f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], -842f)), select(!vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), func_5(vec2<u32>(u_input.a, 4294967295u), Struct_1(vec3<bool>(global1.x, global1.x, global1.x), 2147483647i, vec3<bool>(true, true, global1.x)))))), select(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)), ~vec3<u32>(u_input.a, 46554u, u_input.a)), ~(~vec3<u32>(0u, u_input.a, 77092u)), vec3<bool>(global1.x || global1.x, true, global1.x))), func_4(vec4<u32>(_wgslsmith_clamp_u32(u_input.a | 0u, min(u_input.a, 76932u), 1u), u_input.a, 42464u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(27379u, 4294967295u)))).c.zz, !vec2<bool>(global1.x, 27550i >= firstTrailingBit(28029i)));
    let var_0 = abs(~vec2<u32>(u_input.a, u_input.a));
    global1 = !vec2<bool>(all(select(!vec3<bool>(global1.x, true, true), !vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), true))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-63375i, -1i, 11080i), vec3<i32>(46691i, -1i, 2147483647i)) ^ _wgslsmith_sub_i32(-21348i, -2147483647i)), countOneBits(0i)));
}

