struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.b >= u_input.a, false, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))));
    var var_1 = var_0.x;
    var var_2 = Struct_3(Struct_2(Struct_1(select(!vec2<bool>(var_0.x, false), var_0.xy, var_0.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-879f, 608f, true)) - _wgslsmith_f_op_f32(abs(-746f))), -2147483647i), Struct_1(select(!var_0.yw, !var_0.wx, !var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1274f)))), -26861i)));
    var var_3 = reverseBits(reverseBits(_wgslsmith_div_vec2_i32(-vec2<i32>(22619i, var_2.a.b.c), vec2<i32>(76339i, var_2.a.b.c))) ^ min(~(vec2<i32>(var_2.a.a.c, var_2.a.b.c) | vec2<i32>(-1i, var_2.a.b.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(26574i, 2147483647i), vec2<i32>(var_2.a.a.c, var_2.a.a.c)) >> (~vec2<u32>(u_input.c.x, u_input.b) % vec2<u32>(32u))));
    var var_4 = Struct_1(var_2.a.b.a, 642f, firstTrailingBit(max(var_3.x, -2147483647i)) >> (~(u_input.b << (82179u % 32u)) % 32u));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.b, -1000f) - _wgslsmith_f_op_f32(-var_2.a.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)))));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(arg_2.a.a.b, arg_2.a.b.b);
    let var_1 = Struct_2(arg_2.a.b, arg_2.a.a);
    let var_2 = _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(func_3()));
    let var_3 = -(vec4<i32>(var_1.b.c, -abs(23086i), -21486i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), arg_3)) ^ select(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_3.x, -5082i, arg_0) << (vec4<u32>(4294967295u, u_input.a, 4294967295u, 43869u) % vec4<u32>(32u)), -vec4<i32>(58428i, 17460i, -2147483647i, -17590i)), firstTrailingBit(-vec4<i32>(-2147483647i, arg_2.a.b.c, 2147483647i, var_1.b.c)), any(!arg_1)));
    var var_4 = _wgslsmith_sub_i32(arg_0, arg_0);
    return arg_2.a.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(2147483647i, ~2476i);
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(_wgslsmith_div_u32(u_input.a, 37776u)) >> (0u % 32u), u_input.c.x, abs(countOneBits(1838u))), u_input.c);
    var var_2 = Struct_1(vec2<bool>(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -465f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.b * arg_1.b.b), arg_0.b.b)), 713f, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(-1i, arg_0.b.c)), abs(~vec2<i32>(arg_0.b.c, 1i))), 1i & firstTrailingBit(-27142i), -1i));
    let var_3 = arg_1.a;
    var_0 = countOneBits(var_3.c);
    return Struct_2(arg_0.a, arg_1.b);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3) -> bool {
    var var_0 = firstTrailingBit(arg_1.a.a.c);
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = true;
    var_0 = func_5(u_input.c.zy, Struct_3(func_4(arg_1.a, Struct_2(func_2(1i, vec3<bool>(true, false, true), Struct_3(arg_1.a), vec2<i32>(-1i, arg_1.a.a.c)), arg_0))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f))) * 1643f));
}

fn func_6(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = !(arg_1 && false);
    var var_1 = func_4(Struct_2(Struct_1(vec2<bool>(!arg_1, arg_1), arg_0.x, _wgslsmith_mod_i32(arg_2, -1i)), Struct_1(vec2<bool>(false, u_input.b > 13372u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + 1990f), _wgslsmith_f_op_f32(sign(-170f)))), 0i)), Struct_2(Struct_1(select(!vec2<bool>(arg_1, false), func_4(Struct_2(Struct_1(vec2<bool>(arg_1, true), -489f, arg_2), Struct_1(vec2<bool>(true, arg_1), arg_0.x, 2147483647i)), Struct_2(Struct_1(vec2<bool>(arg_1, arg_1), 1000f, 39394i), Struct_1(vec2<bool>(true, false), arg_0.x, 1i))).b.a, vec2<bool>(arg_1, true)), arg_0.x, func_2(_wgslsmith_mult_i32(0i, -9899i), vec3<bool>(arg_1, arg_1, true), Struct_3(Struct_2(Struct_1(vec2<bool>(arg_1, false), arg_0.x, 33932i), Struct_1(vec2<bool>(arg_1, arg_1), arg_0.x, arg_2))), vec2<i32>(arg_2, arg_2) & vec2<i32>(arg_2, 1i)).c), Struct_1(select(!vec2<bool>(arg_1, true), func_2(arg_2, vec3<bool>(arg_1, true, false), Struct_3(Struct_2(Struct_1(vec2<bool>(arg_1, arg_1), 836f, arg_2), Struct_1(vec2<bool>(true, false), -588f, arg_2))), vec2<i32>(1i, arg_2)).a, arg_1), -2339f, abs(-3181i))));
    var_1 = Struct_2(Struct_1(vec2<bool>(all(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(var_1.b.a.x, arg_1, false), vec3<bool>(var_1.b.a.x, arg_1, false))), false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f), -1196f) * _wgslsmith_f_op_f32(-var_1.b.b)), _wgslsmith_div_i32(func_4(Struct_2(var_1.a, var_1.b), Struct_2(Struct_1(var_1.b.a, 375f, arg_2), Struct_1(vec2<bool>(false, var_1.b.a.x), -597f, var_1.b.c))).a.c, -2147483647i)), var_1.b);
    var_0 = true;
    let var_2 = 0i;
    return Struct_2(var_1.a, func_2(i32(-1i) * -var_2, !vec3<bool>(!arg_1, func_5(vec2<u32>(u_input.a, 30555u), Struct_3(Struct_2(var_1.a, var_1.b))), true), Struct_3(Struct_2(func_4(Struct_2(Struct_1(vec2<bool>(false, var_1.a.a.x), 465f, -40091i), var_1.b), Struct_2(Struct_1(vec2<bool>(arg_1, var_1.b.a.x), -517f, -25363i), var_1.b)).b, Struct_1(var_1.a.a, var_1.b.b, arg_2))), vec2<i32>(min(arg_2, -40656i), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !(countOneBits(_wgslsmith_sub_u32(69186u, u_input.b)) >= min(u_input.b, ~1u)), !all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    let var_1 = func_6(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-234f * 1146f))) - _wgslsmith_f_op_f32(-1215f * _wgslsmith_f_op_f32(func_1(Struct_1(var_0.xy, 1000f, 0i), Struct_3(Struct_2(Struct_1(vec2<bool>(var_0.x, false), 2480f, 57271i), Struct_1(vec2<bool>(true, false), 1000f, -5010i))), u_input.c, vec3<f32>(814f, 2077f, 1054f))))), -2120f, -283f), false, _wgslsmith_div_i32(~1i, countOneBits(-13759i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(258f, var_1.b.b)), -1670f), _wgslsmith_f_op_f32(func_4(var_1, Struct_2(var_1.a, var_1.b)).b.b * _wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(-var_1.a.b)), vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.b.b)), var_1.a.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b), -411f), var_1.a.b)));
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.c, var_1.a.c, var_1.a.c << (u_input.b % 32u)), vec3<i32>(var_1.a.c, var_1.b.c, 53729i)) | _wgslsmith_sub_vec3_i32(-max(vec3<i32>(1i, var_1.b.c, var_1.a.c), vec3<i32>(4966i, 20783i, var_1.a.c)), vec3<i32>(_wgslsmith_add_i32(var_1.a.c, 0i), 6286i, var_1.a.c)), reverseBits(vec3<i32>(~reverseBits(var_1.b.c), 1i >> (~u_input.c.x % 32u), -13086i)));
    var var_4 = func_6(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_2.zxz, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, var_1.b.b, 1761f))))), min(var_1.a.c, var_1.b.c) >= var_3)))), var_1.a.a.x, ~53600i);
    var_4 = var_1;
    let var_5 = Struct_3(Struct_2(var_1.a, func_6(var_2.wzz, false, -2147483647i).b));
    var_4 = func_4(func_6(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.a.b.b, var_1.a.b) * _wgslsmith_f_op_f32(-var_1.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.b * 187f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f))), false, var_4.b.c), var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(801f - 222f) + _wgslsmith_f_op_f32(var_4.b.b + -729f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b - _wgslsmith_f_op_f32(var_2.x * var_4.b.b)))), ~max(~(vec2<i32>(45546i, var_1.a.c) << (u_input.c.zx % vec2<u32>(32u))), vec2<i32>(var_4.b.c, ~(-12254i))), u_input.c.x, _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_div_f32(var_1.b.b, _wgslsmith_f_op_f32(abs(var_5.a.a.b))))), u_input.d);
}

