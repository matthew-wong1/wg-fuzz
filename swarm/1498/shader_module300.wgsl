struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<vec3<u32>, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1076f, -2232f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-948f, 953f))))))));
    let var_1 = Struct_1(arg_2.x);
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    global1 = array<vec3<u32>, 12>();
    let var_3 = vec4<u32>(var_1.a, abs(8449u | (1u | u_input.a)), u_input.a, firstLeadingBit(39911u));
    return ~vec2<u32>(var_1.a, 3179u);
}

fn func_2() -> Struct_2 {
    var var_0 = max((_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -36107i), ~vec2<i32>(u_input.c, 24694i)) << (vec2<u32>(u_input.a ^ 1u, firstTrailingBit(u_input.e)) % vec2<u32>(32u))) >> (select(countOneBits(func_3(vec2<bool>(false, false), u_input.d.x, vec2<u32>(10834u, u_input.d.x))), _wgslsmith_mult_vec2_u32(~u_input.d.zx, vec2<u32>(u_input.a, u_input.e)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, false))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(~firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.b, u_input.b))), countOneBits(~vec2<i32>(u_input.b, 14306i))));
    let var_1 = 20650u;
    let var_2 = Struct_2(Struct_1(43970u), Struct_1(~(u_input.d.x >> (_wgslsmith_add_u32(u_input.a, u_input.e) % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -647f), Struct_1(~1u));
    global0 = array<Struct_2, 12>();
    var_0 = -vec2<i32>(~(-22962i), reverseBits(-2147483647i));
    return global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(~34971u)), 12u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> i32 {
    global0 = array<Struct_2, 12>();
    let var_0 = Struct_1(select((~arg_0.x >> (arg_0.x % 32u)) | ~_wgslsmith_sub_u32(u_input.e, arg_1.a), 0u, select(true && any(vec3<bool>(false, false, false)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), true)));
    var var_1 = _wgslsmith_add_i32(-1i, -(~abs(-u_input.c)));
    var_1 = _wgslsmith_sub_i32(~_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, u_input.b, u_input.b), _wgslsmith_mult_i32(u_input.b, u_input.c)), i32(-1i) * -2147483647i), 2147483647i);
    let var_2 = _wgslsmith_f_op_f32(trunc(668f));
    return ~_wgslsmith_mod_i32(-(~(-1i)) >> ((45123u ^ (arg_0.x << (arg_1.a % 32u))) % 32u), 33615i);
}

fn func_1() -> bool {
    global1 = array<vec3<u32>, 12>();
    global1 = array<vec3<u32>, 12>();
    let var_0 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, u_input.c, 497i)), vec3<i32>(u_input.b, u_input.b, u_input.b)), func_4(abs(vec3<u32>(10362u, u_input.a, 3253u)), Struct_1(u_input.d.x), func_2(), _wgslsmith_div_vec3_f32(vec3<f32>(-1125f, -423f, -1087f), vec3<f32>(-1000f, -1000f, -939f))), u_input.c, ~u_input.c) | (vec4<i32>(-1i) * -(~(~vec4<i32>(u_input.b, -2147483647i, -36281i, 70237i))));
    let var_1 = ~_wgslsmith_add_i32(-_wgslsmith_sub_i32(2147483647i, ~(-10774i)), max(_wgslsmith_div_i32(i32(-1i) * -39566i, var_0.x), abs(u_input.b)));
    global1 = array<vec3<u32>, 12>();
    return all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, select(false, true, false)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, true)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)))));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> i32 {
    global1 = array<vec3<u32>, 12>();
    global0 = array<Struct_2, 12>();
    global1 = array<vec3<u32>, 12>();
    var var_0 = u_input.e;
    var var_1 = Struct_2(func_2().d, Struct_1(max(min(u_input.a ^ 4294967295u, firstTrailingBit(4294967295u)), 17080u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-596f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - 1145f))), Struct_1(15823u));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-17904i, arg_2, 2147483647i), ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.b, u_input.c, arg_2)), -vec3<i32>(1i, 54434i, arg_0)), vec3<i32>(1i, arg_2, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>(func_5(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1698i, u_input.b, 26233i, u_input.c), vec4<i32>(u_input.b, u_input.b, -1i, u_input.c)), select(u_input.c, u_input.b, false), false), !(u_input.e >= u_input.d.x), select(~(-1i), u_input.b, func_1()), vec3<f32>(212f, 381f, _wgslsmith_f_op_f32(-1967f * 226f))), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -43862i), vec2<i32>(1i, 1i)), abs(u_input.b)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i >> (u_input.d.x % 32u), _wgslsmith_clamp_i32(1i, u_input.c, 2147483647i), 19498i), abs(abs(vec3<i32>(6429i, -1i, 12004i)))), vec3<i32>(~(~2147483647i), 0i | -u_input.c, u_input.b)), (func_1() != (true && all(vec2<bool>(false, true)))) || func_1());
    var var_1 = Struct_1(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.e, u_input.d.x), countOneBits(global1[_wgslsmith_index_u32(u_input.e, 12u)])), select(~vec3<u32>(4294967295u, 34532u, 1u), vec3<u32>(4294967295u, u_input.a, u_input.e), true))));
    let var_2 = -48787i;
    var_1 = func_2().d;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1896f);
    var var_4 = 16900u;
    let var_5 = (~max(-18489i, abs(31863i)) & (-(i32(-1i) * -1694i) ^ var_0.x)) << (u_input.d.x % 32u);
    var_1 = func_2().d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f + 1098f) + -367f)))), ~33534u);
}

