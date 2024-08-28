struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32 = -202f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(select(1861f, 1000f, select(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), !any(vec2<bool>(false, true)), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))))));
    global0 = false;
    let var_1 = u_input.a.x;
    global0 = !(!any(vec2<bool>(true, true)));
    var var_2 = Struct_1(i32(-1i) * -1i);
    return min(-var_2.a, -max(-2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_2.a, var_2.a)), firstLeadingBit(vec2<i32>(var_2.a, var_2.a)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = true;
    global1 = _wgslsmith_f_op_f32(1098f + _wgslsmith_f_op_f32(arg_0.x - arg_0.x));
    let var_1 = (_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -52323i, arg_1.a | 33396i, arg_1.a, min(0i, 1i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(29344i, -51267i, 0i, 1i), vec4<i32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)))) >> (min(~max(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 37753u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 2834u)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 47173u, 10937u))) % vec4<u32>(32u))) & abs(select(vec4<i32>(~arg_1.a, 2147483647i, countOneBits(arg_1.a), -2147483647i), ~vec4<i32>(2147483647i, -85234i, arg_1.a, arg_1.a), vec4<bool>(true, true, true, true)));
    let var_2 = ~_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x) ^ u_input.a.x, u_input.a.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(-1000f, -463f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-747f + 1000f)))))), Struct_1(-1i));
    return func_3();
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = ((34527u >> (u_input.a.x % 32u)) ^ ~select(77442u, ~arg_1.x, arg_2 && arg_2)) <= arg_1.x;
    let var_1 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), arg_1));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(15566i, 1i), vec2<i32>(1i, 1i)), vec2<i32>(min(10420i, 27034i), func_2(vec3<f32>(-336f, 1165f, arg_0.x), Struct_1(2147483647i)))), -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -49114i, 2147483647i, -6379i), vec4<i32>(2147483647i, 27706i, -2147483647i, -2147483647i)), max(-1i, 26333i))));
    var var_3 = _wgslsmith_f_op_f32(select(-1793f, arg_0.x, any(!(!select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, arg_2, false), arg_2)))));
    let var_4 = select(u_input.a, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 57884u, u_input.a.x) << (vec3<u32>(var_1.x, 6279u, u_input.a.x) % vec3<u32>(32u))), ~(u_input.a.x << (0u % 32u))), ~(~u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, 0u), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x)) & ~25651u, arg_1.x)), select(vec3<bool>((arg_2 || arg_2) & (-1000f < arg_3), !(!arg_2), _wgslsmith_f_op_f32(-291f * arg_0.x) == -527f), select(vec3<bool>(arg_2, true, true), !vec3<bool>(true, arg_2, true), false), arg_2));
    return Struct_1(-var_2.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, arg_3.b.a, -1i), -vec3<i32>(arg_3.b.a, arg_1.a, -72373i)), select(abs(vec3<i32>(arg_3.b.a, -11810i, -2147483647i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_3.b.a, arg_1.a, arg_3.b.a), firstTrailingBit(vec3<i32>(17650i, arg_1.a, 30921i)), vec3<i32>(-1i, arg_1.a, arg_3.b.a) & vec3<i32>(-10672i, 0i, -4934i)), select(!arg_0, !arg_0, select(arg_0, arg_0, true)))) << ((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) | _wgslsmith_add_vec3_u32(u_input.a, u_input.a), u_input.a) >> ((~u_input.a >> (abs(u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.a.x, -653f))))), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-963f)) * _wgslsmith_f_op_f32(f32(-1f) * -1205f))))), Struct_1(-2147483647i));
    global0 = !any(arg_0.xz);
    let var_2 = 1i;
    var_1 = arg_3;
    return 1u;
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-772f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-554f + 1188f), _wgslsmith_f_op_f32(-576f - 128f))))));
    global0 = false;
    let var_0 = Struct_1(_wgslsmith_sub_i32((_wgslsmith_mult_i32(6790i, 35123i) << (arg_0.x % 32u)) >> (~(~arg_0.x) % 32u), ~reverseBits(1i)));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-309f, 1000f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(805f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-593f - 637f), -1000f, true))));
    let var_1 = abs(0u >> (0u % 32u));
    return func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1401f + _wgslsmith_f_op_f32(103f * -897f)), _wgslsmith_f_op_f32(ceil(2389f)), _wgslsmith_f_op_f32(f32(-1f) * -827f), -137f))), vec2<u32>(~(~_wgslsmith_dot_vec3_u32(arg_0.wyw, vec3<u32>(0u, var_1, u_input.a.x))), u_input.a.x), false, -1411f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(2147483647i, -3005i);
    var var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(max(2056f, _wgslsmith_f_op_f32(step(-1081f, _wgslsmith_f_op_f32(-1386f + -108f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-262f)) - _wgslsmith_f_op_f32(f32(-1f) * -880f))), true, all(vec2<bool>(true, true)));
    let var_2 = func_5(select(vec4<u32>(func_4(vec3<bool>(var_1.x, false, false), func_1(vec4<f32>(345f, -282f, 102f, 2247f), u_input.a.zx, true, -2048f), true, Struct_2(vec4<f32>(-439f, 284f, 263f, -715f), Struct_1(45023i))), reverseBits(u_input.a.x), ~func_4(vec3<bool>(var_1.x, true, var_1.x), Struct_1(var_0.x), var_1.x, Struct_2(vec4<f32>(-1103f, 1000f, -422f, -444f), Struct_1(var_0.x))), ~(~37867u)), min(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, 17850u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 32093u)), ~vec4<u32>(0u, 4294967295u, 1u, u_input.a.x)), firstLeadingBit(vec4<u32>(u_input.a.x, 10916u, 16806u, 14809u) << (vec4<u32>(6571u, u_input.a.x, u_input.a.x, 65703u) % vec4<u32>(32u)))), vec4<bool>(var_1.x, true, any(var_1.xyw), !var_1.x)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2699f - -1639f), _wgslsmith_f_op_f32(step(214f, 1102f)), _wgslsmith_f_op_f32(round(690f)), -532f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(664f, 996f, 325f, 330f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(149f, -246f, -185f, -104f)))))), func_5(firstTrailingBit(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 5266u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)))));
    var var_4 = Struct_2(vec4<f32>(364f, 1064f, var_3.a.x, _wgslsmith_f_op_f32(-1018f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.a.x - var_3.a.x))))), func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x - -847f)), -731f, var_3.a.x, var_3.a.x), max(firstTrailingBit(u_input.a.yy) | abs(u_input.a.yz), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zy, u_input.a.zz), reverseBits(u_input.a.xz), u_input.a.xx)), !var_1.x, -1057f));
    let var_5 = var_4.a.xzx;
    var var_6 = func_5(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 308u, u_input.a.x), _wgslsmith_mult_vec4_u32(max(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 31887u, 7256u)), vec4<u32>(~4294967295u, u_input.a.x, 0u, u_input.a.x)), vec4<u32>(select(firstLeadingBit(u_input.a.x), ~1u, any(vec4<bool>(true, false, false, var_1.x))), firstLeadingBit(4294967295u), u_input.a.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(7922u, 1u, vec2<i32>(var_2.a, var_2.a));
}

