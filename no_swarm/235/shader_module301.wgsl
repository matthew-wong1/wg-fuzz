struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -1i, -7166i, 1i);

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<f32, 24> = array<f32, 24>(-1000f, 2208f, -630f, -813f, 1669f, 1223f, 435f, 265f, 2242f, -330f, -138f, -264f, 123f, -108f, -248f, -529f, -1000f, 237f, 575f, -1768f, 1425f, -143f, 663f, 1214f);

var<private> global3: array<vec4<bool>, 19>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_sub_vec2_u32(u_input.a.zx, _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(~u_input.e.xw, u_input.a.zz), u_input.e.wx));
    var var_1 = global0.x;
    global3 = array<vec4<bool>, 19>();
    var var_2 = _wgslsmith_mod_vec2_u32(~u_input.e.xz, ~reverseBits(_wgslsmith_div_vec2_u32(select(u_input.e.wz, vec2<u32>(u_input.a.x, var_0.x), vec2<bool>(true, false)), _wgslsmith_mod_vec2_u32(u_input.a.wz, vec2<u32>(u_input.e.x, 2543u)))));
    var var_3 = firstLeadingBit(firstLeadingBit(u_input.e.x));
    return -1i;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_2;
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(firstLeadingBit(min(~81081u, u_input.a.x)))), 32u)];
    global3 = array<vec4<bool>, 19>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
    var var_3 = arg_2;
    return -(vec3<i32>(arg_1, arg_2.c, 38164i) << ((vec3<u32>(67277u, firstTrailingBit(u_input.a.x), 12560u) >> (~u_input.a.yxy % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_2() -> bool {
    global3 = array<vec4<bool>, 19>();
    global0 = _wgslsmith_add_vec4_i32(select(vec4<i32>(-countOneBits(u_input.b), -1i, ~(-2147483647i), abs(_wgslsmith_sub_i32(global0.x, global0.x))), _wgslsmith_add_vec4_i32(-(vec4<i32>(2147483647i, global0.x, -45629i, -3959i) & vec4<i32>(global0.x, global0.x, -23960i, u_input.b)), vec4<i32>(u_input.c, i32(-1i) * -14656i, ~1i, u_input.b)), !(!global3[_wgslsmith_index_u32(~5080u, 19u)])), ~(-_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, global0.x, u_input.d.x, -66475i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, global0.x, -2147483647i, -2147483647i), vec4<i32>(u_input.b, -2147483647i, 0i, -4236i)))));
    var var_0 = func_4(vec3<bool>(true, -(~global0.x) < func_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(61526u, 24u)]))), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, u_input.d.x, 1i), u_input.d), true), all(vec3<bool>(true, true, true)) || (-142f >= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 24u)]))), -55336i, Struct_1(vec3<i32>(u_input.b, 31526i, countOneBits(abs(global0.x))), false, ~(-6214i), vec2<bool>(true, true)));
    var var_1 = false;
    let var_2 = global1[_wgslsmith_index_u32(103831u, 32u)];
    return !(true && var_2.a);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_1 {
    global0 = vec4<i32>(-3410i, -1890i, _wgslsmith_mod_i32(reverseBits(global0.x), u_input.c), firstTrailingBit(1i));
    global2 = array<f32, 24>();
    let var_0 = _wgslsmith_f_op_f32(max(-223f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2103f))) - global2[_wgslsmith_index_u32(reverseBits(95158u) & min(4294967295u, u_input.a.x), 24u)])))));
    var var_1 = func_2();
    var var_2 = !select(!vec2<bool>(all(arg_1.xy), true), vec2<bool>((24585u & u_input.a.x) > _wgslsmith_dot_vec3_u32(u_input.e.ywy, vec3<u32>(u_input.a.x, 29035u, u_input.e.x)), false), vec2<bool>(func_2() || arg_1.x, (u_input.e.x >> (u_input.e.x % 32u)) >= _wgslsmith_div_u32(113568u, 4294967295u)));
    return Struct_1(global0.zyy, var_2.x && arg_0, 207i, select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)] == var_0, !var_2.x), arg_1.xx, vec2<bool>(false, all(select(arg_1.yz, arg_1.yz, vec2<bool>(arg_0, var_2.x))))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(16170u, 24u)] + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + 660f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 344f))));
    global1 = array<Struct_2, 32>();
    var var_1 = true;
    let var_2 = func_1(arg_2.d.x, select(vec3<bool>(all(vec4<bool>(true, arg_3.d.x, arg_2.b, arg_2.b)), !all(vec4<bool>(arg_3.d.x, true, true, arg_3.d.x)), any(!global3[_wgslsmith_index_u32(u_input.a.x, 19u)])), !vec3<bool>(arg_3.d.x, arg_2.d.x, all(vec3<bool>(arg_2.d.x, arg_1.a, false))), true), ~min(-min(vec3<i32>(-2147483647i, u_input.c, arg_2.a.x), vec3<i32>(19959i, u_input.c, 0i)), _wgslsmith_mult_vec3_i32(arg_2.a, -arg_2.a)));
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-u_input.d.x, _wgslsmith_sub_i32(-28319i, -2147483647i)), abs(1i)), _wgslsmith_div_i32(~abs(arg_3.a.x), arg_3.a.x), -2147483647i), arg_2.d.x, _wgslsmith_div_i32(global0.x, u_input.b), select(!select(select(arg_3.d, vec2<bool>(false, arg_3.d.x), arg_3.d), var_2.d, var_2.d.x), func_1(any(vec3<bool>(true, true, var_2.d.x)) && true, vec3<bool>(!arg_1.a, all(vec3<bool>(arg_2.b, arg_1.a, false)), false), vec3<i32>(-u_input.d.x, arg_2.c, u_input.b)).d, false | (arg_2.a.x < 46775i)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(254f))), 683f, -517f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2336f, _wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -638f))))));
    global1 = array<Struct_2, 32>();
    var var_1 = Struct_1(~(~(vec3<i32>(u_input.d.x, global0.x, u_input.b) & select(vec3<i32>(u_input.c, global0.x, u_input.c), global0.zxz, false))), !any(vec4<bool>(true, true, true, true)), func_5(-331f, global1[_wgslsmith_index_u32(u_input.e.x, 32u)], Struct_1(_wgslsmith_add_vec3_i32(select(vec3<i32>(2147483647i, -24639i, 2147483647i), global0.yyw, vec3<bool>(false, true, false)), u_input.d >> (vec3<u32>(u_input.a.x, 8880u, u_input.a.x) % vec3<u32>(32u))), !any(global3[_wgslsmith_index_u32(u_input.e.x, 19u)]), global0.x, vec2<bool>(true, true)), func_1(!(u_input.b == 0i), vec3<bool>(true, true, any(vec3<bool>(false, false, false))), ~vec3<i32>(-11767i, u_input.d.x, -2147483647i))), !vec2<bool>(!any(vec3<bool>(true, false, false)), func_1(true, vec3<bool>(true, true, true), vec3<i32>(global0.x, global0.x, global0.x)).d.x));
    global2 = array<f32, 24>();
    var var_2 = func_1(true, vec3<bool>(var_1.b, !var_1.b, func_2()), vec3<i32>(countOneBits(func_4(vec3<bool>(var_1.b, var_1.d.x, false), 38677i, Struct_1(u_input.d, var_1.d.x, -1i, vec2<bool>(true, var_1.b))).x) ^ u_input.b, -(~_wgslsmith_sub_i32(-24897i, -2147483647i)), 1i));
    var var_3 = Struct_2(all(vec2<bool>(true, select(0u < u_input.e.x, true, func_1(var_2.b, vec3<bool>(var_1.b, true, var_2.d.x), var_2.a).b))));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.zx, vec2<f32>(121f, -1436f), vec2<bool>(var_2.d.x, true))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(42039u, 24u)], var_0.x)))) + vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-549f - global2[_wgslsmith_index_u32(48565u, 24u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xz, vec2<f32>(var_0.x, 386f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 392f) + var_0.yy)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_0.yz, vec2<f32>(-947f, 1501f)))))), var_0.yx, all(var_2.d) | var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(1u | (u_input.a.x >> (countOneBits(abs(1u)) % 32u)), global0.x, _wgslsmith_f_op_vec3_f32(select(var_0, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.e.x, 24u)] * global2[_wgslsmith_index_u32(1u, 24u)]), 553f, -525f))), !var_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.x * global2[_wgslsmith_index_u32(u_input.e.x, 24u)]), -285f))))), ~var_2.a.zy);
}

