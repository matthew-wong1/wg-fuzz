struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_1(i32(-2147483648), vec4<u32>(0u, 4294967295u, 40621u, 4294967295u), -7364i, -743f, 1741f), -21369i, 1954f), Struct_4(Struct_1(17144i, vec4<u32>(79862u, 4294967295u, 73249u, 218u), 51500i, -1224f, 106f), -32404i, -1317f), Struct_4(Struct_1(-11376i, vec4<u32>(1u, 4294967295u, 12758u, 17934u), -17361i, -466f, 765f), i32(-2147483648), -159f), Struct_4(Struct_1(5810i, vec4<u32>(1u, 4294967295u, 1u, 54273u), 14657i, 1194f, -1570f), i32(-2147483648), -820f), Struct_4(Struct_1(10998i, vec4<u32>(10877u, 11415u, 1u, 90944u), -22611i, 1246f, 200f), 1i, -1490f), Struct_4(Struct_1(16138i, vec4<u32>(0u, 1u, 5548u, 315u), 10778i, 736f, -619f), -19611i, -2138f), Struct_4(Struct_1(i32(-2147483648), vec4<u32>(0u, 4294967295u, 37040u, 19733u), 2147483647i, -469f, -1303f), -1i, 518f), Struct_4(Struct_1(17742i, vec4<u32>(44689u, 23507u, 32476u, 0u), i32(-2147483648), 399f, 945f), -26779i, -1738f));

var<private> global1: array<u32, 15> = array<u32, 15>(45034u, 1u, 4294967295u, 50829u, 79410u, 1u, 4294967295u, 1u, 4294967295u, 21530u, 54004u, 1u, 8456u, 4294967295u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(~1i, reverseBits(vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(~43720u, ~global1[_wgslsmith_index_u32(arg_0, 15u)]), arg_0, 40459u)), 0i, -1552f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2080f))))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(382f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.d)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1488f * 1153f), _wgslsmith_f_op_f32(max(var_0.e, -379f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -528f))), _wgslsmith_f_op_f32(abs(var_0.d)), var_0.d)));
    var_0 = Struct_1(var_0.a, firstTrailingBit(~select(_wgslsmith_div_vec4_u32(var_0.b, var_0.b), vec4<u32>(4294967295u, 13559u, arg_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 15u)], 15u)]), vec4<bool>(true, true, true, true))), u_input.a, 1535f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1094f * var_0.e), 259f))));
    let var_2 = -571f;
    let var_3 = true;
    return _wgslsmith_dot_vec4_i32(~vec4<i32>(abs(2147483647i), -1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec3<i32>(u_input.a, -2147483647i, -2147483647i)), -11457i), var_0.c), vec4<i32>(-1i) * -(~(~vec4<i32>(13323i, u_input.a, u_input.a, -2147483647i))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_1 {
    global1 = array<u32, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    var var_1 = arg_3;
    var_1 = arg_3;
    var_1 = Struct_3(!vec2<bool>(true, u_input.a != _wgslsmith_div_i32(-2627i, arg_2.b)), arg_3.b, _wgslsmith_sub_u32(u_input.b.x, 4294967295u));
    return Struct_1(-(i32(-1i) * -func_3(1u)), min(~(arg_2.a.b >> (vec4<u32>(arg_2.a.b.x, 46121u, global1[_wgslsmith_index_u32(4294967295u, 15u)], var_1.c) % vec4<u32>(32u))), vec4<u32>(var_1.c, max(~0u, arg_2.a.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 41396u, 21874u), ~u_input.b), _wgslsmith_sub_u32(0u, u_input.b.x & 0u))), abs(firstTrailingBit(countOneBits(~arg_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.x)))))), _wgslsmith_f_op_f32(-arg_2.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_mod_vec3_i32(reverseBits(select(vec3<i32>(-15042i, 51574i, 2147483647i) | vec3<i32>(arg_2.c, -1i, u_input.a), select(vec3<i32>(arg_2.c, arg_2.a, 15555i), vec3<i32>(-33701i, arg_1.x, 1i), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)) | firstTrailingBit(vec3<i32>(-51973i, -1i, 2147483647i) & vec3<i32>(arg_2.a, arg_2.c, arg_1.x))), vec3<i32>(arg_1.x, 1i, select(arg_1.x, abs(u_input.a), select(arg_2.e <= arg_0.x, true, arg_0.x != arg_2.e))));
    var var_1 = arg_2;
    global1 = array<u32, 15>();
    var var_2 = vec3<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), any(vec2<bool>(true | (-309f > arg_0.x), -2147483647i <= var_1.a)), false);
    let var_3 = arg_2.d;
    return ~select(vec4<i32>(1i, func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 44187u, u_input.b.x, 4294967295u), arg_2.b)), 10124i, arg_1.x), ~vec4<i32>(countOneBits(arg_1.x), abs(var_0.x), arg_1.x >> (0u % 32u), 25123i), vec4<bool>(var_2.x, all(vec3<bool>(var_2.x, true, var_2.x)), select(all(var_2.zy), !var_2.x, var_2.x && false), var_3 >= var_1.d));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = false;
    var var_1 = true;
    var_0 = ~(-2147483647i) >= u_input.a;
    var var_2 = Struct_4(func_2(u_input.b.zz, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(arg_2)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 1u), vec4<u32>(24404u, arg_3, 72466u, 0u)), ~vec4<u32>(arg_3, arg_3, 65908u, global1[_wgslsmith_index_u32(u_input.b.x, 15u)])), 8u)], Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-arg_2), arg_3)), -31712i, _wgslsmith_f_op_f32(max(-939f, func_2(u_input.b.zy, vec2<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), -2274f), Struct_4(Struct_1(arg_1, vec4<u32>(global1[_wgslsmith_index_u32(arg_3, 15u)], 5447u, arg_3, 1u), 3698i, arg_2.x, arg_2.x), u_input.a, _wgslsmith_f_op_f32(exp2(arg_2.x))), Struct_3(vec2<bool>(true, true), arg_2, ~67806u)).e)));
    var_0 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    return Struct_1(_wgslsmith_add_i32(arg_0.x >> (func_2(var_2.a.b.ww, vec2<f32>(arg_2.x, 590f), global0[_wgslsmith_index_u32(arg_3, 8u)], Struct_3(vec2<bool>(true, false), arg_2, 10618u)).b.x % 32u), func_3(reverseBits(arg_3))), ~(var_2.a.b >> (_wgslsmith_div_vec4_u32(var_2.a.b, reverseBits(vec4<u32>(0u, var_2.a.b.x, 95206u, 54009u))) % vec4<u32>(32u))), -arg_1, _wgslsmith_f_op_f32(f32(-1f) * -755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-741f))));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_3(!vec2<bool>(arg_0.x, !any(vec3<bool>(true, true, arg_0.x))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2133f))), -1268f), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-494f, -1063f, arg_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1407f)), -865f)))), u_input.b.x);
    let var_1 = func_5(select(func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(870f, var_0.b.x, var_0.b.x, var_0.b.x), vec4<f32>(var_0.b.x, var_0.b.x, 306f, 859f))), ~vec2<i32>(u_input.a, -25833i), func_2(u_input.b.zx, vec2<f32>(var_0.b.x, var_0.b.x), Struct_4(Struct_1(18239i, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c, 15u)], 15u)], 4294967295u, global1[_wgslsmith_index_u32(var_0.c, 15u)], 1u), 2147483647i, var_0.b.x, -1040f), u_input.a, -561f), var_0)), ~vec4<i32>(u_input.a, -6096i, 9239i, u_input.a), !(true | arg_0.x)) ^ -_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(0i, -1i, 783i, u_input.a)), ~u_input.a, vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), (4294967295u >> (1u % 32u)) & ~(~_wgslsmith_sub_u32(var_0.c, global1[_wgslsmith_index_u32(var_0.c, 15u)])));
    let var_2 = global0[_wgslsmith_index_u32(~0u, 8u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.d, 950f)));
    let var_4 = _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_2.a.d))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4, _wgslsmith_f_op_f32(var_3 * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -828f))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(func_1(vec2<bool>(true, all(vec3<bool>(false, true, false)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-562f, 741f))) * vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f) - _wgslsmith_f_op_f32(max(-573f, 287f))), -1000f)));
    let var_1 = ~13444u;
    let var_2 = var_1;
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(439f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, var_0.x)))))), true))));
    let var_3 = u_input.a;
    let var_4 = Struct_3(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), any(vec4<bool>(false, false, true, true)))), true | (_wgslsmith_clamp_i32(-22754i, 2147483647i, -19599i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(43033i, u_input.a, -1i), vec3<i32>(u_input.a, 2147483647i, -1859i)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_mod_u32(~var_2, ~0u));
    global0 = array<Struct_4, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(13835u, var_2, 7407u, 111100u), vec4<u32>(1u, var_4.c, var_2, 1u))), var_4.c), i32(-1i) * -28447i);
}

