struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<i32, 10>;

var<private> global2: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(0i, 1i, -2813i, i32(-2147483648)), vec4<i32>(-1i, 0i, 0i, 949i), vec4<i32>(-52379i, 0i, 0i, 70080i), vec4<i32>(-6462i, -1i, -11701i, -26329i), vec4<i32>(-15841i, -1i, -44752i, 1i), vec4<i32>(i32(-2147483648), 1i, 15116i, 0i), vec4<i32>(-36922i, 0i, 34649i, -17716i), vec4<i32>(1i, i32(-2147483648), 8126i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, -42076i, i32(-2147483648)), vec4<i32>(1i, 60167i, -33049i, 0i), vec4<i32>(-45198i, 1i, 10379i, -9264i), vec4<i32>(27338i, 1i, -33914i, 59987i), vec4<i32>(-16769i, i32(-2147483648), -35402i, 1i), vec4<i32>(-1i, i32(-2147483648), 0i, 13539i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(i32(-2147483648), 1i, 15828i, 35484i), vec4<i32>(0i, -1i, -1i, 2147483647i), vec4<i32>(0i, i32(-2147483648), -60327i, 362i), vec4<i32>(-19443i, 28390i, 22855i, -54323i), vec4<i32>(-1i, 0i, -37538i, i32(-2147483648)), vec4<i32>(0i, 48264i, i32(-2147483648), 42203i), vec4<i32>(2147483647i, -1i, -1i, 35417i), vec4<i32>(-1i, 14380i, 21809i, -53379i), vec4<i32>(5638i, -20163i, 1i, 19348i), vec4<i32>(-33857i, 19265i, 1i, 0i));

var<private> global3: array<vec4<f32>, 28>;

var<private> global4: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = !global0.zxw;
    var var_1 = !var_0.x;
    let var_2 = vec3<bool>(any(select(vec4<bool>(false, false && var_0.x, global0.x, true), select(vec4<bool>(true, global0.x, false, global0.x), !vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, false, true, global0.x)), select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, true, var_0.x, false), !vec4<bool>(false, global0.x, false, false)))), any(!select(global0.xw, vec2<bool>(global0.x, var_0.x), !var_0.x)), true);
    var var_3 = countOneBits(firstTrailingBit(vec2<i32>(0i, _wgslsmith_mult_i32(1i, -2147483647i))));
    let var_4 = -max(abs(_wgslsmith_add_vec3_i32(arg_3.e.yxy, -arg_3.e.yyw)), _wgslsmith_sub_vec3_i32(arg_3.e.wyw, vec3<i32>(1i, 25425i, ~var_3.x)));
    return vec4<u32>(max(1u, arg_3.c), ~(arg_3.d.x ^ _wgslsmith_div_u32(22524u >> (0u % 32u), _wgslsmith_mod_u32(u_input.a, 22217u))), arg_3.c, u_input.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = !(!vec3<bool>(arg_1.x, false, false));
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(572f - -506f), _wgslsmith_f_op_f32(f32(-1f) * -590f), -301f)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(822f, 425f, -998f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -312f, 1613f)), !arg_1.yzw)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-661f, 1065f, 230f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(425f, 135f, -526f)))))), 1u, ~(~arg_0.zxw), vec4<i32>(_wgslsmith_add_i32(74877i, global1[_wgslsmith_index_u32(min(u_input.a, 4294967295u) << (reverseBits(u_input.a) % 32u), 10u)]), firstTrailingBit(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 16834i, 1i, -15761i)), global2[_wgslsmith_index_u32(10877u << (0u % 32u), 25u)])), _wgslsmith_clamp_i32(-(i32(-1i) * -14408i), -arg_3.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(arg_0.x, 10u)], arg_3.x, global1[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_div_i32(arg_3.x, 2147483647i))), global1[_wgslsmith_index_u32(~39705u, 10u)]));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-848f * var_1.a.a.x), _wgslsmith_div_f32(516f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.a.x - var_1.b.a.x), var_1.b.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)));
    let var_3 = ~_wgslsmith_dot_vec2_i32(-(~vec2<i32>(arg_3.x, -1i)), select(var_1.e.ww, select(arg_3 & vec2<i32>(-18722i, global1[_wgslsmith_index_u32(var_1.d.x, 10u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3.x, 0i), var_1.e.zw, vec2<i32>(-1i, var_1.e.x)), vec2<bool>(false, var_0.x)), select(vec2<bool>(arg_1.x, true), select(var_0.zz, vec2<bool>(global0.x, false), var_0.xx), all(var_0.zy))));
    let var_4 = 57306u ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(55464u, 25657u), _wgslsmith_mod_u32(1u, 10722u), arg_0.x);
    return ~reverseBits(~vec3<u32>(106892u, u_input.a, 4294967295u)) >> (vec3<u32>(var_4, reverseBits(abs(75595u)), arg_0.x) % vec3<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = func_4(~func_3(-1i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1109f, -339f, -1039f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, -975f, 393f))), Struct_2(Struct_1(vec3<f32>(2230f, 1987f, 1684f)), Struct_1(vec3<f32>(-960f, -1332f, -349f)), select(arg_1.x, 1u, arg_2.x), vec3<u32>(var_0.x, var_0.x, arg_1.x), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, arg_1.x), 25u)])), !select(vec4<bool>(global0.x, global0.x, false, true), select(!vec4<bool>(arg_2.x, global0.x, true, false), vec4<bool>(true, true, global0.x, global0.x), !vec4<bool>(false, false, false, global0.x)), !vec4<bool>(false, false, global0.x, global0.x)), false, -vec2<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_0, 31496i), vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 10u)], global1[_wgslsmith_index_u32(arg_1.x, 10u)], arg_0)), abs(-11770i), global0.x), -16008i));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-184f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2054f))))));
    global2 = array<vec4<i32>, 25>();
    var var_3 = select(vec3<u32>(firstTrailingBit(1u), _wgslsmith_clamp_u32(~countOneBits(1u), _wgslsmith_sub_u32(u_input.a, abs(arg_1.x)), var_1.x), u_input.a), countOneBits(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, func_3(arg_0, vec3<f32>(-564f, var_2.x, 3244f), Struct_1(vec3<f32>(var_2.x, var_2.x, var_2.x)), Struct_2(Struct_1(vec3<f32>(var_2.x, var_2.x, -1000f)), Struct_1(vec3<f32>(-813f, var_2.x, var_2.x)), arg_1.x, vec3<u32>(1u, 0u, var_0.x), global2[_wgslsmith_index_u32(var_0.x, 25u)])).x, ~u_input.a), ~(~41228u), var_0.x)), any(arg_2.xz));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1626f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - var_2.x), _wgslsmith_f_op_f32(floor(var_2.x))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = ~reverseBits(vec3<u32>(36089u, ~(~3190u), 0u));
    let var_1 = select(global0.yz, global0.yy, !arg_0);
    global3 = array<vec4<f32>, 28>();
    global4 = global1[_wgslsmith_index_u32(u_input.a, 10u)];
    var var_2 = ~countOneBits(func_4(abs(vec4<u32>(43788u, var_0.x, 35048u, var_0.x)), select(select(vec4<bool>(global0.x, global0.x, false, var_1.x), vec4<bool>(arg_2, arg_0, false, arg_2), vec4<bool>(true, var_1.x, true, arg_2)), select(vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(global0.x, false, false, global0.x), false), select(vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_2, var_1.x, true, true))), any(select(global0.zy, vec2<bool>(true, true), var_1.x)), vec2<i32>(-6876i << (var_0.x % 32u), _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(var_0.x, 10u)]))).x);
    return Struct_2(arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1562f, -137f, -344f))))), _wgslsmith_mult_u32(firstTrailingBit(u_input.a), _wgslsmith_clamp_u32(19941u, countOneBits(var_0.x), 4294967295u)), vec3<u32>(_wgslsmith_mod_u32(var_0.x, func_4(vec4<u32>(var_0.x, var_0.x, u_input.a, var_0.x), select(vec4<bool>(true, arg_2, global0.x, true), vec4<bool>(arg_0, false, arg_2, global0.x), vec4<bool>(true, true, false, var_1.x)), true & arg_2, _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(30660u, 10u)], -19604i), vec2<i32>(global1[_wgslsmith_index_u32(15768u, 10u)], 18686i))).x), _wgslsmith_div_u32(1u, var_0.x), var_0.x), global2[_wgslsmith_index_u32(var_0.x, 25u)]);
}

fn func_6(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global4 = 47950i & -_wgslsmith_div_i32(1i, abs(~arg_2.e.x));
    global4 = ~0i;
    return func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~u_input.a)), ~(~arg_2.d.x & 1u)), 10u)], vec4<u32>(1u, arg_2.c, 2725u, _wgslsmith_dot_vec4_u32(vec4<u32>(min(25433u, arg_0.x), ~4294967295u, 10267u, ~101008u), ~(vec4<u32>(arg_2.d.x, arg_0.x, u_input.a, arg_2.c) << (vec4<u32>(arg_0.x, arg_2.c, arg_0.x, 49906u) % vec4<u32>(32u))))), !global0.ywy);
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-286f))))), _wgslsmith_f_op_f32(-arg_0)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, -507f, 1000f), var_0.a, global0.www)), vec3<f32>(-1305f, arg_0, var_0.a.x)), var_0.a))), func_6((select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a), global0.zw) | countOneBits(vec2<u32>(59094u, u_input.a))) | ~(vec2<u32>(94086u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)), any(select(!vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(false, true, false, false), vec4<bool>(global0.x, global0.x, false, global0.x))), func_5(!any(vec3<bool>(global0.x, true, false)), func_2(34099i, ~vec4<u32>(1u, 13786u, 0u, u_input.a), vec3<bool>(false, global0.x, true)), all(global0.xxx) | !global0.x)), u_input.a, ~vec3<u32>(_wgslsmith_div_u32(0u, 1u), u_input.a, ~56501u), func_5(any(global0.xwy), func_2(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_add_i32(2147483647i, -14779i)), vec4<u32>(~u_input.a, countOneBits(u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a), 1u ^ u_input.a), vec3<bool>(true, !global0.x, -1223f < var_0.a.x)), global0.x).e);
    var var_2 = var_1.b;
    global1 = array<i32, 10>();
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.d.x, u_input.a), min(var_1.c, var_1.d.x)) | u_input.a, ~4294967295u) >> (firstTrailingBit(var_1.d.yy) % vec2<u32>(32u));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(928f, 368f) - _wgslsmith_f_op_f32(-728f + 1113f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-338f * -591f) - _wgslsmith_f_op_f32(func_1(370f))), 710f))));
    var var_1 = -(~vec2<i32>(global1[_wgslsmith_index_u32(84596u, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)]) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.a), select(vec2<u32>(5298u, u_input.a), vec2<u32>(23220u, 1641u), vec2<bool>(global0.x, global0.x))) % vec2<u32>(32u))) | vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(13565i, -global1[_wgslsmith_index_u32(u_input.a, 10u)])), select(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 10u)], -16392i, -12155i) << (vec3<u32>(u_input.a, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(global1[_wgslsmith_index_u32(25598u, 10u)], 0i, global1[_wgslsmith_index_u32(105003u, 10u)]) >> (vec3<u32>(22645u, 88242u, 26391u) % vec3<u32>(32u))), ~(~33772i), false));
    let var_2 = var_0.a.x;
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * -480f) + _wgslsmith_f_op_f32(437f * var_0.a.x))), _wgslsmith_f_op_f32(abs(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(vec2<u32>(u_input.a, 1u), global0.x, func_5(true, var_0, global0.x)).a.x - 1087f)), -444f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-454f * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(746f * -1305f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_2 * 601f)))));
    var var_4 = -495f;
    let var_5 = ~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 33084u)), 21742u, u_input.a, ~0u)), vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, max(u_input.a, u_input.a)), u_input.a, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zyz, firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 10u)], 0i, global1[_wgslsmith_index_u32(50047u, 10u)]), select(vec3<i32>(13048i, -118i, global1[_wgslsmith_index_u32(0u, 10u)]), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 40159i, -2147483647i), global0.wxx)), select(_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(1677u, 10u)], global1[_wgslsmith_index_u32(33427u, 10u)]), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 10u)], 2147483647i)), -vec3<i32>(-1i, 2147483647i, -1i), var_1.x <= global1[_wgslsmith_index_u32(0u, 10u)]))), func_2(_wgslsmith_clamp_i32(-2147483647i, 0i, _wgslsmith_sub_i32(-45763i, reverseBits(var_1.x))), vec4<u32>(49304u, ~(~var_5.x), ~1u, 35038u | func_4(vec4<u32>(0u, var_5.x, 0u, 38495u), vec4<bool>(false, false, true, global0.x), global0.x, vec2<i32>(var_1.x, 2147483647i)).x), !(!global0.zww)).a.x);
}

