struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4 = Struct_4(false, 485f, true, vec2<u32>(9188u, 51816u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = 25310i;
    var var_1 = vec3<i32>(~_wgslsmith_mod_i32(~(-8719i), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), vec3<i32>(u_input.d.x, u_input.a.x, 22575i))), arg_0.x, _wgslsmith_sub_i32(arg_0.x, 1i));
    var var_2 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, var_1.x), reverseBits(vec2<i32>(1i, 18351i))), _wgslsmith_add_i32(max(var_1.x, arg_0.x), _wgslsmith_dot_vec3_i32(arg_0.yyy, arg_0.xzx))) & 2161i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b))), _wgslsmith_div_f32(-1364f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, -686f) + _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1382f + -1390f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(global1.b - -726f)))), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - global1.b)) < _wgslsmith_f_op_f32(round(global1.b)), !(!(global1.a | global1.c)), 2147483647i <= var_1.x), Struct_2(Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, u_input.b, u_input.b), vec4<u32>(global1.d.x, global1.d.x, global1.d.x, global1.d.x), vec4<u32>(global1.d.x, global1.d.x, u_input.c.x, global1.d.x)), !(0u != u_input.b), (4294967295u ^ u_input.b) << (global1.d.x % 32u), _wgslsmith_mult_u32(0u, 4294967295u), ~countOneBits(u_input.b))), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_1.x), vec2<i32>(var_1.x, ~var_1.x)));
    var_0 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(min(-920f, 667f));
    return _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c & u_input.c, vec3<u32>(var_2.d.a.e, var_2.d.a.c, var_2.d.a.c))), 25621u) & abs(global1.d.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(i32(-1i) * -u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.b, _wgslsmith_div_f32(762f, -298f), global1.b, global1.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, global1.b, global1.b) + vec4<f32>(global1.b, -248f, global1.b, -1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, 229f, -1000f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 2454f, global1.b, 446f) * vec4<f32>(1034f, 1194f, global1.b, global1.b)), _wgslsmith_div_vec4_f32(vec4<f32>(-160f, global1.b, -1401f, -974f), vec4<f32>(global1.b, global1.b, global1.b, -1055f))))), !(!(!select(vec4<bool>(global1.a, global1.a, global1.c, global1.c), vec4<bool>(true, false, true, global1.a), global1.a))), Struct_2(Struct_1(vec4<u32>(14680u, 1u, func_3(vec4<i32>(u_input.d.x, u_input.a.x, 0i, -2147483647i)), u_input.b), true, 8870u & _wgslsmith_mod_u32(global1.d.x, global1.d.x), select(_wgslsmith_mod_u32(u_input.b, 1461u), u_input.c.x, true), u_input.c.x)), u_input.d.yz);
    let var_1 = Struct_3(u_input.d.x, var_0.b, var_0.c, var_0.d, _wgslsmith_clamp_vec2_i32(-vec2<i32>(-47647i, abs(u_input.a.x)), vec2<i32>(-u_input.a.x, -1i) & ~(~vec2<i32>(-11339i, 1i)), var_0.e));
    var_0 = var_1;
    let var_2 = ((4294967295u | max(~var_1.d.a.e, _wgslsmith_clamp_u32(u_input.c.x, var_0.d.a.d, 1u))) | (1u ^ countOneBits(~var_0.d.a.e))) >> (19364u % 32u);
    var var_3 = u_input.d.xz;
    return Struct_1(~(var_1.d.a.a >> (vec4<u32>(7366u, 0u, var_2, 62440u) % vec4<u32>(32u))) ^ (vec4<u32>(~22230u, 1508u, abs(4294967295u), _wgslsmith_mult_u32(19485u, 16565u)) | var_1.d.a.a), all(select(!(!var_1.c), !select(var_1.c, vec4<bool>(true, true, false, false), var_1.c), true)), 4294967295u, reverseBits(countOneBits(_wgslsmith_dot_vec4_u32(var_1.d.a.a | var_1.d.a.a, reverseBits(vec4<u32>(var_1.d.a.c, var_1.d.a.a.x, 25228u, 4294967295u))))), 50479u & u_input.c.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> bool {
    return any(select(!(!arg_2.c.wzw), vec3<bool>(!(u_input.b > 0u), !(arg_1.b && arg_1.b), func_2().b), !vec3<bool>(false, arg_2.c.x & true, func_2().b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = !func_4(u_input.d, func_2(), Struct_3(-(u_input.a.x << (25662u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(sign(-1742f)), _wgslsmith_div_f32(arg_1.b, -1394f), _wgslsmith_f_op_f32(-global1.b), 1970f), select(select(vec4<bool>(true, true, arg_0.b, arg_3.b), vec4<bool>(arg_3.b, true, false, true), false), vec4<bool>(false, false, arg_2.x, arg_3.b), !vec4<bool>(true, arg_3.b, true, arg_1.c)), Struct_2(Struct_1(vec4<u32>(arg_3.c, global1.d.x, 62030u, arg_3.d), true, 4294967295u, u_input.c.x, 4294967295u)), firstLeadingBit(select(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.a.x, -33665i), vec2<bool>(arg_2.x, false)))), -25813i);
    global0 = arg_0.c;
    global1 = Struct_4(arg_0.b, arg_1.b, arg_0.b && !arg_0.b, ~(~global1.d));
    global0 = 0u;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-388f, arg_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1109f, 305f) - vec2<f32>(global1.b, 1225f)) - vec2<f32>(194f, arg_1.b)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.b) - vec2<f32>(-143f, global1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, 1237f)))))), select(vec2<bool>(!any(vec2<bool>(true, false)), true), arg_2.yz, any(select(vec3<bool>(false, arg_0.b, arg_1.c), select(arg_2, vec3<bool>(global1.a, true, false), vec3<bool>(arg_0.b, false, false)), select(vec3<bool>(arg_0.b, arg_2.x, arg_3.b), vec3<bool>(false, true, arg_1.a), vec3<bool>(false, true, true)))))));
    return Struct_3(_wgslsmith_mult_i32(countOneBits(~firstTrailingBit(8182i)), 40524i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -866f, global1.b) + vec4<f32>(arg_1.b, -1356f, global1.b, 515f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, var_1.x, var_1.x, 1270f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1028f, -914f, arg_1.b, 523f))), _wgslsmith_div_vec4_f32(vec4<f32>(526f, global1.b, -198f, 825f), vec4<f32>(var_1.x, 1600f, var_1.x, 186f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1861f, arg_1.b, var_1.x, arg_1.b), _wgslsmith_div_vec4_f32(vec4<f32>(global1.b, global1.b, global1.b, 851f), vec4<f32>(arg_1.b, 803f, 2465f, -1404f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2228f, arg_1.b, -1886f, 257f))))), arg_1.c)), vec4<bool>(arg_3.b, arg_2.x, all(vec3<bool>(false, true, !arg_1.a)), !(!(4757u < u_input.b))), Struct_2(arg_3), -u_input.a.xz);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_0.b.wz - arg_0.b.wy);
    var var_1 = arg_0.d.a;
    var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.zxx) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-553f, _wgslsmith_f_op_f32(-arg_0.b.x), -1025f) - arg_0.b.wxy))));
    let var_3 = func_1(Struct_1(abs(vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(global1.d.x, 1u, 36120u), _wgslsmith_clamp_u32(0u, arg_2.d.x, arg_2.d.x), arg_0.d.a.a.x)), any(!(!arg_0.c.wyz)), 153u, max(~74006u, ~60842u), ~min(6521u, global1.d.x)), arg_2, vec3<bool>(any(select(select(arg_0.c.yx, arg_0.c.yw, arg_0.c.zx), !arg_0.c.zz, arg_0.c.xy)), true, arg_0.d.a.b), func_2()).d;
    return true;
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = true;
    return arg_2.d.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 24864u, 0u, global1.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.d.x, u_input.b, 1u), vec4<u32>(1u, u_input.c.x, u_input.c.x, 28659u)))), true || (global1.a | (all(vec2<bool>(global1.c, true)) != all(vec2<bool>(global1.a, global1.c)))), global1.d.x, 4294967295u, func_6(vec4<bool>(global1.c, global1.a, true, func_5(func_1(Struct_1(vec4<u32>(74248u, 4294967295u, global1.d.x, u_input.b), true, 0u, u_input.b, 18342u), Struct_4(global1.c, global1.b, global1.a, vec2<u32>(0u, u_input.b)), vec3<bool>(global1.c, global1.c, false), Struct_1(vec4<u32>(1u, 14221u, 0u, 35103u), false, 0u, 0u, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -2325f), Struct_4(true, global1.b, true, global1.d))), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, 0i, -2147483647i), u_input.d)), Struct_3(u_input.d.x, vec4<f32>(_wgslsmith_f_op_f32(global1.b - 156f), global1.b, global1.b, _wgslsmith_f_op_f32(trunc(global1.b))), !vec4<bool>(true, global1.a, false, true), Struct_2(Struct_1(vec4<u32>(global1.d.x, u_input.b, 0u, 0u), global1.a, 4133u, global1.d.x, global1.d.x)), u_input.d.yz)));
    var var_1 = vec4<u32>(u_input.c.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0.a, ~_wgslsmith_sub_vec4_u32(vec4<u32>(20350u, var_0.a.x, global1.d.x, var_0.d), vec4<u32>(1u, global1.d.x, 29645u, 26843u))), var_0.a.x), abs(var_0.e), 21924u >> (u_input.c.x % 32u));
    let var_2 = vec3<bool>(func_4(select(_wgslsmith_mult_vec3_i32(u_input.d, u_input.d) >> (var_1.wzy % vec3<u32>(32u)), u_input.d, func_1(var_0, Struct_4(var_0.b, global1.b, global1.c, vec2<u32>(global1.d.x, var_1.x)), vec3<bool>(global1.a, var_0.b, false), var_0).c.wzz), Struct_1(var_0.a, global1.c, global1.d.x, 69775u, 4294967295u), func_1(var_0, Struct_4(true, -1882f, var_0.b, ~vec2<u32>(global1.d.x, 42888u)), func_1(var_0, Struct_4(var_0.b, 654f, false, vec2<u32>(global1.d.x, var_0.c)), vec3<bool>(var_0.b, true, true), func_2()).c.zyy, func_1(var_0, Struct_4(var_0.b, -160f, var_0.b, var_1.xy), select(vec3<bool>(var_0.b, global1.c, false), vec3<bool>(var_0.b, global1.c, global1.c), global1.c), Struct_1(var_0.a, false, 0u, var_1.x, var_0.a.x)).d.a), ~(-2147483647i)), false, global1.c);
    global1 = Struct_4(-792i <= (abs(u_input.d.x) & -abs(2368i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -669f)), global1.b, var_2.x)))), true, firstTrailingBit(select(~vec2<u32>(49685u, var_0.a.x), _wgslsmith_mod_vec2_u32(u_input.c.zy, vec2<u32>(u_input.c.x, u_input.b)), false)) << (~vec2<u32>(~var_1.x, var_1.x & 36232u) % vec2<u32>(32u)));
    var var_3 = func_1(var_0, Struct_4(-15413i <= countOneBits(~u_input.d.x), global1.b, !var_2.x, (u_input.c.yy & _wgslsmith_add_vec2_u32(vec2<u32>(62387u, var_0.c), vec2<u32>(var_1.x, 3571u))) & _wgslsmith_mult_vec2_u32(vec2<u32>(1u, global1.d.x), vec2<u32>(var_0.e, var_0.d))), var_2, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1272f))) - _wgslsmith_f_op_f32(exp2(global1.b))))), var_3.b.x, ~_wgslsmith_mult_vec4_u32(~var_0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(10534u, u_input.b, 7455u, 4294967295u), vec4<u32>(1u, var_1.x, 0u, 1u), select(var_0.a, var_0.a, var_3.c))), ~(-20264i) ^ abs(max(select(u_input.a.x, 0i, var_0.b), ~2147483647i)));
}

