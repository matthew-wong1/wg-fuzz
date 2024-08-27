struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 20> = array<u32, 20>(0u, 0u, 20732u, 1u, 2u, 4294967295u, 0u, 1u, 0u, 27605u, 26350u, 1u, 30885u, 23078u, 4181u, 4294967295u, 0u, 41140u, 1u, 0u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    global1 = array<u32, 20>();
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.a, _wgslsmith_f_op_f32(floor(global0.c.a)), true))), _wgslsmith_add_u32(firstLeadingBit(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 20u)]), _wgslsmith_sub_u32(reverseBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global0.a.b, 20u)], global0.c.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8154u, 20u)], 20u)], 20u)]), vec3<u32>(global0.a.b, global0.c.b, global0.a.b)))), !select(!global0.a.c, select(global0.c.c, vec4<bool>(false, false, false, global0.c.c.x), vec4<bool>(false, true, arg_0.x, global0.a.c.x)), global0.c.c), u_input.a.x & -_wgslsmith_sub_i32(0i, -21108i)), ~(-global0.b & -vec4<i32>(1i, global0.b.x, u_input.a.x, -25814i)) | ~max(vec4<i32>(-19311i, -22300i, 1i, global0.b.x), firstLeadingBit(vec4<i32>(2147483647i, -1i, 12639i, -67284i))), global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f))), !global0.a.c.x);
    var var_0 = Struct_3(true, vec2<i32>(-1i, _wgslsmith_clamp_i32(~u_input.a.x, 35047i, max(-6045i, 11056i) << (~4294967295u % 32u))), global0.b.xz, _wgslsmith_f_op_f32(floor(668f)), Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.a.a)))), 1u, !vec4<bool>(arg_0.x, false, true, true), global0.c.d), countOneBits(global0.b), global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d) * _wgslsmith_f_op_vec2_f32(step(global0.d, vec2<f32>(-945f, 836f))))), false));
    let var_1 = !select(select(!vec4<bool>(false, true, false, var_0.a), !var_0.e.c.c, global0.c.c), select(select(!var_0.e.c.c, !vec4<bool>(true, var_0.e.e, false, true), !vec4<bool>(global0.c.c.x, var_0.a, var_0.a, arg_0.x)), !global0.a.c, any(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), var_0.e.a.c);
    let var_2 = Struct_2(var_0.e.a, vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(29560i, u_input.a.x, 0i), max(-2147483647i, u_input.a.x)), abs(-1584i), abs(var_0.e.c.d) ^ ~var_0.c.x, var_0.b.x) & ~(~vec4<i32>(u_input.a.x, u_input.a.x, var_0.e.a.d, -3352i) & vec4<i32>(76651i, -7752i, u_input.a.x, var_0.e.a.d)), var_0.e.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.d + _wgslsmith_f_op_vec2_f32(-global0.d)))), !(!(!var_1.x)));
    return ~max(vec3<u32>(1u, 21886u, var_0.e.c.b), max(~(~vec3<u32>(2923u, 0u, 0u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.c.b, 1u, 48035u), vec3<u32>(106143u, var_2.a.b, 36840u)), vec3<u32>(var_0.e.c.b, var_2.c.b, global0.a.b), var_1.wyw)));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_2(global0.c, global0.b, global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.d, global0.d)), vec2<f32>(1520f, -3175f)))), any(!select(vec4<bool>(true, false, global0.e, false), !vec4<bool>(true, global0.e, global0.a.c.x, global0.e), select(vec4<bool>(global0.e, global0.e, false, true), vec4<bool>(global0.c.c.x, global0.a.c.x, global0.a.c.x, false), global0.c.c))));
    global0 = Struct_2(var_0.a, ~vec4<i32>(-arg_3.x, 1i, 0i, select(~var_0.b.x, _wgslsmith_add_i32(arg_3.x, 0i), var_0.e)), global0.c, _wgslsmith_f_op_vec2_f32(trunc(var_0.d)), false);
    var var_1 = Struct_3(false, vec2<i32>(reverseBits(_wgslsmith_mod_i32(arg_0, abs(-4041i))), i32(-1i) * -(~u_input.a.x)), arg_2.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1461f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(264f, 352f)))), Struct_2(Struct_1(global0.d.x, firstTrailingBit(~4294967295u), select(select(vec4<bool>(global0.c.c.x, global0.e, var_0.e, global0.a.c.x), var_0.a.c, vec4<bool>(var_0.c.c.x, global0.c.c.x, global0.c.c.x, global0.c.c.x)), select(var_0.a.c, global0.a.c, var_0.a.c), !vec4<bool>(true, global0.a.c.x, true, true)), _wgslsmith_mod_i32(arg_3.x, 1i)), var_0.b, Struct_1(-811f, global0.a.b, vec4<bool>(false, var_0.a.c.x, !var_0.a.c.x, any(vec4<bool>(false, var_0.a.c.x, false, true))), -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.a, 568f))))), false));
    var var_2 = var_0.a.a;
    var var_3 = var_0.a;
    return var_1.e.b.yz;
}

fn func_2() -> Struct_3 {
    var var_0 = global0.c;
    return Struct_3(all(!select(select(global0.c.c.xw, var_0.c.wz, true), select(vec2<bool>(var_0.c.x, false), var_0.c.zy, var_0.c.wz), global0.a.c.yz)), _wgslsmith_add_vec2_i32(~abs(vec2<i32>(var_0.d, -2147483647i)), func_4(select(_wgslsmith_mult_i32(u_input.a.x, -9606i), abs(-7504i), -1132f > var_0.a), firstLeadingBit(func_3(vec3<bool>(global0.a.c.x, true, false))), countOneBits(countOneBits(vec4<i32>(7644i, 2147483647i, 2147483647i, var_0.d))), -vec2<i32>(u_input.a.x, 48333i))), select(~firstTrailingBit(select(vec2<i32>(0i, global0.a.d), global0.b.xy, global0.c.c.xz)), vec2<i32>(45696i, var_0.d) >> (~select(vec2<u32>(27246u, 81224u), vec2<u32>(1u, 25231u), vec2<bool>(var_0.c.x, global0.a.c.x)) % vec2<u32>(32u)), var_0.c.x), _wgslsmith_f_op_f32(774f + global0.d.x), Struct_2(global0.c, countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d, var_0.d, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, var_0.d))), global0.c, vec2<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.a, -1022f) + _wgslsmith_f_op_f32(-global0.d.x))), global0.e));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> i32 {
    global0 = Struct_2(Struct_1(func_2().d, global1[_wgslsmith_index_u32(select(arg_0.e.a.b, ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20417u, 20u)], 20u)]), arg_2.x | (arg_0.b.x <= -1265i)), 20u)], select(select(select(vec4<bool>(arg_2.x, arg_0.a, false, global0.a.c.x), vec4<bool>(global0.e, true, false, arg_1), true), arg_2, arg_0.a), global0.c.c, !any(arg_2)), global0.c.d), select(max(abs(vec4<i32>(-3454i, u_input.a.x, u_input.a.x, global0.b.x) << (vec4<u32>(1u, 4294967295u, 32978u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(u_input.a.x, u_input.a.x | 16485i, u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), arg_0.e.b, arg_0.e.c.c), func_2().e.c, arg_0.e.d, (func_2().a == false) | any(!vec4<bool>(arg_0.e.e, arg_0.a, arg_2.x, false)));
    let var_0 = func_2().e.c;
    let var_1 = arg_0.c;
    global1 = array<u32, 20>();
    global0 = Struct_2(Struct_1(-539f, global1[_wgslsmith_index_u32(global0.c.b | global1[_wgslsmith_index_u32(~var_0.b, 20u)], 20u)], arg_0.e.a.c, abs(_wgslsmith_sub_i32(0i, 70983i | var_0.d))), -global0.b, var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e.d)), any(vec4<bool>(false, func_2().a, select(any(vec4<bool>(arg_2.x, true, arg_2.x, false)), arg_1 & arg_2.x, -46410i < var_0.d), true)));
    return countOneBits(~var_1.x);
}

fn func_1(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = func_5(func_2(), func_2().e.a.c.x, arg_0.e.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.c.a + _wgslsmith_div_f32(-656f, global0.d.x)))));
    global0 = func_2().e;
    var var_1 = arg_0.e;
    let var_2 = Struct_3(!(!(true & all(var_1.c.c.xz))), _wgslsmith_sub_vec2_i32(vec2<i32>(-9685i, func_4(i32(-1i) * -10705i, vec3<u32>(131234u, 16348u, 4294967295u) ^ vec3<u32>(116722u, 0u, var_1.c.b), -var_1.b, select(global0.b.xx, u_input.a.xx, arg_0.e.c.c.x)).x), func_2().e.b.ww), vec2<i32>(-1i & _wgslsmith_sub_i32(global0.c.d << (24577u % 32u), u_input.a.x), 0i), -292f, func_2().e);
    global1 = array<u32, 20>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f + var_1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(643f, -558f)) - 1000f), _wgslsmith_f_op_f32(floor(370f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(841f, arg_0.d)), _wgslsmith_div_f32(var_1.a.a, var_1.a.a), _wgslsmith_f_op_f32(-var_2.d)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.e.d.x, -1000f, 294f))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a * 585f) * -1518f))));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    global1 = array<u32, 20>();
    var var_0 = global0.b;
    let var_1 = vec3<i32>(func_2().c.x >> (1u % 32u), countOneBits(-1i), 4118i);
    global1 = array<u32, 20>();
    global0 = func_2().e;
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_6(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-442f, -1000f, 739f), vec3<f32>(global0.c.a, global0.d.x, -1355f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, global0.c.a, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a, -664f, global0.a.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a, global0.c.a, 125f) - vec3<f32>(global0.c.a, 310f, global0.d.x))), 4294967295u >= abs(global1[_wgslsmith_index_u32(24904u, 20u)]))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.c.a, -767f) - vec3<f32>(1433f, global0.c.a, global0.a.a)), _wgslsmith_f_op_vec3_f32(func_1(Struct_3(true, global0.b.yx, global0.b.yw, -696f, Struct_2(global0.c, global0.b, Struct_1(-1071f, global0.c.b, vec4<bool>(true, false, global0.e, global0.a.c.x), u_input.a.x), vec2<f32>(521f, 1678f), global0.c.c.x)))), !vec3<bool>(global0.a.c.x, global0.c.c.x, global0.a.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, -551f, -270f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.a, global0.d.x, 308f)))))), func_2().e.a, ~func_3(select(vec3<bool>(false, global0.a.c.x, false), global0.a.c.wzx, global0.a.c.ywx)).x), func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1227f, 1077f, 1761f) * vec3<f32>(793f, global0.d.x, 150f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1749f, 343f, -751f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3549f, global0.d.x, 1368f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, 1000f, -1423f) - vec3<f32>(global0.d.x, -771f, 731f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.a))), global0.d.x, -2125f), global0.c, 26332u), !global0.e);
    let var_1 = global0.c;
    var var_2 = Struct_2(func_2().e.c, global0.b, global0.c, global0.d, any(var_1.c.yxw));
    var var_3 = ~vec3<i32>(6153i, countOneBits(var_2.a.d) >> (func_2().e.a.b % 32u), u_input.a.x);
    var var_4 = func_5(Struct_3(firstLeadingBit(global1[_wgslsmith_index_u32(abs(51717u), 20u)]) < 44856u, _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a.x, 17774i), global0.b.yx), vec2<i32>(9514i, -7222i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(321f, var_1.a) + global0.c.a), Struct_2(func_2().e.c, func_2().e.b, Struct_1(586f, ~4294967295u, !vec4<bool>(var_0.x, var_2.c.c.x, false, false), func_4(u_input.a.x, vec3<u32>(global0.c.b, var_2.c.b, var_1.b), vec4<i32>(u_input.a.x, u_input.a.x, -14997i, var_2.c.d), u_input.a.xx).x), vec2<f32>(_wgslsmith_div_f32(global0.d.x, -220f), var_1.a), var_0.x)), !func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2105f, var_1.a, global0.d.x)) * vec3<f32>(-396f, 1727f, var_1.a)), _wgslsmith_f_op_vec3_f32(func_1(Struct_3(var_1.c.x, var_3.xy, vec2<i32>(var_1.d, var_2.b.x), var_1.a, Struct_2(var_2.c, global0.b, Struct_1(var_1.a, global0.c.b, vec4<bool>(global0.a.c.x, true, var_0.x, var_1.c.x), -2147483647i), var_2.d, false)))), global0.a, ~1u << (_wgslsmith_mod_u32(global0.a.b, 0u) % 32u)).x, vec4<bool>(true, false, !any(func_2().e.a.c.wz), all(var_2.a.c.yxw) || var_0.x), 979f);
    let var_5 = var_1.a;
    let var_6 = -415f;
    var var_7 = 6572u;
    var var_8 = var_2.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, -((i32(-1i) * -2147483647i) | select(var_3.x, 0i, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1330f, var_6, 321f, var_1.a)) * vec4<f32>(1124f, global0.d.x, var_2.a.a, global0.a.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(440f, 653f, var_1.a, var_6))))))), _wgslsmith_f_op_vec2_f32(global0.d * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d))))));
}

