struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<f32> = vec3<f32>(-306f, 644f, 1000f);

var<private> global2: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(59234u, 0u, 23113u), vec3<u32>(72443u, 4294967295u, 23854u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    var var_0 = Struct_1(-(arg_2.xww << (~global2[_wgslsmith_index_u32(u_input.c.x | 4294967295u, 2u)] % vec3<u32>(32u))), ~17984u, arg_2.yx, u_input.c.x, global1.x);
    var var_1 = vec2<u32>(u_input.c.x, ~(1u & var_0.b)) >> (abs(~(u_input.c.yx | ~vec2<u32>(4294967295u, var_0.b))) % vec2<u32>(32u));
    var var_2 = Struct_3(select(34201i, arg_2.x, arg_1 | !(true & arg_1)), _wgslsmith_div_f32(-2122f, 725f));
    var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~abs(vec2<u32>(0u, var_1.x)), u_input.c.zx ^ (vec2<u32>(0u, u_input.a) << (vec2<u32>(58813u, var_1.x) % vec2<u32>(32u)))), ~(u_input.c.yy << (~u_input.c.wz % vec2<u32>(32u)))), vec2<u32>(var_1.x, 56504u));
    var var_3 = _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(69555u, u_input.b, 58249u), u_input.c.yzz), ~u_input.c.zzx, global2[_wgslsmith_index_u32(var_0.d & var_1.x, 2u)]), vec3<u32>(~46649u, reverseBits(var_1.x), ~(~0u & u_input.c.x)));
    return 1859f;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(any(vec4<bool>(true, true, true, true)), true, vec4<i32>(-3134i, var_0, -68466i, _wgslsmith_sub_i32(-1i, firstTrailingBit(arg_0.a))))) + arg_0.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))), global1.x) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(func_3(1415f >= var_1, true, select(vec4<i32>(arg_0.a, 10256i, 33687i, arg_0.a), vec4<i32>(-23397i, 1i, -13305i, -1i), false))))));
    let var_3 = select(-var_0, 33914i, any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(all(vec3<bool>(false, false, false)), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), all(vec4<bool>(false, true, false, false))))));
    var var_4 = u_input.a;
    return Struct_1(vec3<i32>(1i, _wgslsmith_sub_i32(var_0, ~1i), 46552i), _wgslsmith_div_u32(reverseBits(u_input.a), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c.x, 0u, u_input.c.x)), firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c.x, 2u)]))), ~firstLeadingBit(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(var_0, 1i)), -vec2<i32>(2147483647i, 47896i))), 16216u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(257f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    global2 = array<vec3<u32>, 2>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(-global1.x), arg_0.x)))));
    let var_0 = select(arg_2.a.x, func_2(Struct_3(-(~2147483647i), _wgslsmith_f_op_f32(step(-102f, -2228f)))).a.x, false);
    let var_1 = Struct_1(select(~vec3<i32>(arg_2.a.x & arg_2.a.x, 1i, arg_2.c.x), arg_2.a, vec3<bool>(true, true, true)), _wgslsmith_mult_u32(~reverseBits(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), ~1u), ~(-(func_2(Struct_3(var_0, 1000f)).a.yx ^ vec2<i32>(1i, 1i))), arg_2.d, 962f);
    var var_2 = Struct_3(_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(var_1.a.x, var_1.c.x, arg_2.c.x)) | ((arg_2.a | var_1.a) << (vec3<u32>(32556u, var_1.d, var_1.d) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(var_1.a, vec3<i32>(~23850i, _wgslsmith_clamp_i32(1i, 0i, -2147483647i), -33037i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-793f - -1498f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, false, vec4<i32>(var_1.a.x, 0i, 2147483647i, 2147483647i))))) * -531f));
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<f32>(arg_0.e, -506f, arg_0.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -454f, global1.x) + vec3<f32>(global1.x, -2231f, arg_0.e)), func_2(Struct_3(arg_0.c.x, 447f))))), -690f, -709f));
    let var_0 = Struct_3(~2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(441f, -1000f))))));
    let var_1 = Struct_2(Struct_1(func_2(var_0).a, 0u, arg_0.c, _wgslsmith_sub_u32(1u, u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1232f, arg_0.e)) - _wgslsmith_f_op_f32(1151f + -230f)))), arg_0.c.x);
    var var_2 = var_0;
    global0 = true;
    return abs(~abs(41424u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(-2147483647i << ((func_1(Struct_1(vec3<i32>(1i, 1i, 30690i), 92746u, vec2<i32>(-75069i, -1i), 73677u, -160f), 20964u) >> (((22069u << (u_input.c.x % 32u)) ^ 20169u) % 32u)) % 32u), ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(~(-1i)), 0i), vec2<i32>(-1i, -2301i)));
    let var_1 = func_2(Struct_3(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 1825f) - global1.x))).a | _wgslsmith_mult_vec3_i32(func_2(Struct_3(max(-10419i, 7757i), -828f)).a, vec3<i32>(2147483647i, -11744i, abs(i32(-1i) * -1i)));
    global0 = all(vec4<bool>(all(vec3<bool>(all(vec3<bool>(true, true, true)), 9769u >= u_input.a, true)), u_input.c.x != u_input.b, true, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))));
    let var_2 = func_2(Struct_3(~1i, _wgslsmith_f_op_f32(global1.x + global1.x)));
    var var_3 = Struct_3(var_2.a.x << (4294967295u % 32u), 700f);
    var var_4 = Struct_3(-var_2.a.x, _wgslsmith_f_op_f32(-global1.x));
    var var_5 = _wgslsmith_f_op_vec2_f32(-global1.yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(global1.yy)), var_3.a, 4294967295u);
}

