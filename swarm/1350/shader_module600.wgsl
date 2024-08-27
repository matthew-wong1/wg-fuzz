struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<f32>(-785f, 183f, 1000f), -1i), Struct_1(vec3<f32>(-795f, 764f, -223f), 1i), Struct_1(vec3<f32>(890f, -1698f, -432f), 1i), Struct_1(vec3<f32>(-2457f, 1439f, 1000f), 3884i), Struct_1(vec3<f32>(210f, 1000f, -720f), i32(-2147483648)), Struct_1(vec3<f32>(-687f, 291f, 1000f), 5990i), Struct_1(vec3<f32>(2883f, 2588f, -730f), 0i), Struct_1(vec3<f32>(755f, 1525f, -277f), 0i), Struct_1(vec3<f32>(1341f, -965f, 645f), -58451i), Struct_1(vec3<f32>(1172f, -1000f, 831f), 0i), Struct_1(vec3<f32>(1021f, 933f, 697f), -1i), Struct_1(vec3<f32>(407f, -1175f, -1815f), 21668i), Struct_1(vec3<f32>(451f, 365f, -626f), -1i), Struct_1(vec3<f32>(290f, 674f, 1325f), 47198i), Struct_1(vec3<f32>(-844f, 1000f, 109f), -11782i), Struct_1(vec3<f32>(162f, 901f, -100f), 0i), Struct_1(vec3<f32>(1920f, 150f, 794f), -30429i), Struct_1(vec3<f32>(-1000f, 2991f, 396f), -1i));

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(vec3<f32>(arg_1.a.x, 471f, _wgslsmith_f_op_f32(-arg_1.a.x)), -arg_1.b | _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(arg_0), abs(0i), -18510i, -arg_0), -(vec4<i32>(u_input.c.x, arg_1.b, -1i, 26498i) & vec4<i32>(1i, -17836i, arg_1.b, u_input.b.x))));
    global0 = array<Struct_1, 18>();
    var var_1 = vec2<i32>(abs(select(~u_input.a.x, 0i ^ (u_input.c.x | arg_1.b), all(vec3<bool>(true, true, true)))), -1i);
    var var_2 = global0[_wgslsmith_index_u32(32001u >> (max(~countOneBits(1u), ~u_input.d) % 32u), 18u)];
    global0 = array<Struct_1, 18>();
    return ~abs(-31461i);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(arg_0.x, 602f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1525f, 536f, -2779f), vec3<f32>(1000f, -396f, var_0.x)) * vec3<f32>(-597f, -2054f, 1639f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(413f, 1852f, -662f)))), arg_1);
    var var_2 = Struct_1(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(ceil(var_1.a.x)), 345f), countOneBits(arg_3.x));
    var var_3 = arg_0.x;
    var var_4 = vec4<bool>(~u_input.b.x > (_wgslsmith_div_i32(abs(1i), 15962i) & arg_3.x), true, true, false);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(566f - var_1.a.x), arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f)), -595f))), -2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a.zx)), arg_2.a.xy), select(-1i, 19144i, all(vec3<bool>(true, true, true)) && (func_2(1i, Struct_1(arg_0.a, u_input.c.x)) > _wgslsmith_add_i32(u_input.c.x, 36359i))), arg_1.x, -vec4<i32>(~arg_0.b, _wgslsmith_mod_i32(49128i, arg_0.b), _wgslsmith_mult_i32(arg_2.b, u_input.c.x), 12392i) ^ vec4<i32>(28428i, countOneBits(-19292i), arg_0.b, ~(-arg_0.b)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, var_0.a.x, 1526f) * vec3<f32>(1399f, var_0.a.x, -788f)))))))), -2147483647i);
    var var_1 = arg_2;
    var_1 = func_3(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1766f - var_0.a.x))), var_1.a.x), func_2(-min(var_1.b, u_input.b.x), arg_2), u_input.d, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, _wgslsmith_mod_i32(-34464i, _wgslsmith_dot_vec3_i32(vec3<i32>(-10255i, -36390i, var_0.b), u_input.b)), var_0.b, _wgslsmith_clamp_i32(abs(arg_2.b), 1i, arg_0.b)), firstLeadingBit(vec4<i32>(1i, arg_2.b, 3835i, -1i))));
    let var_2 = vec4<u32>(arg_1.x, _wgslsmith_clamp_u32(u_input.d, 53194u, arg_1.x), 0u, u_input.d);
    return func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(365f, -289f)), -2848i, 18755u, _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.c.x, arg_0.b, arg_0.b, _wgslsmith_add_i32(func_2(arg_2.b, Struct_1(var_0.a, 57143i)), -u_input.b.x)), ~vec4<i32>(0i, ~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.a.x, arg_0.b), vec4<i32>(-2147483647i, arg_2.b, -2147483647i, arg_2.b)), 15748i)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true;
    global0 = array<Struct_1, 18>();
    var var_1 = countOneBits(_wgslsmith_add_vec3_i32((firstLeadingBit(vec3<i32>(u_input.b.x, arg_0.b, 29161i)) ^ u_input.c) & u_input.c, ~u_input.c));
    let var_2 = Struct_1(vec3<f32>(arg_0.a.x, -987f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)) - -1000f)), u_input.a.x);
    let var_3 = Struct_1(arg_0.a, var_1.x);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) - _wgslsmith_f_op_f32(-var_2.a.x))), func_1(var_2, vec3<u32>(~12558u, ~u_input.d, u_input.d), func_3(_wgslsmith_f_op_vec2_f32(-var_3.a.xx), -8481i, ~36768u, vec4<i32>(0i, arg_0.b, -1i, -2616i))).a.x, -835f), -1i);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1912f);
    let var_1 = func_3(_wgslsmith_f_op_vec2_f32(exp2(func_1(func_3(arg_0.a.yy, u_input.c.x, 8670u, vec4<i32>(arg_0.b, u_input.c.x, arg_0.b, u_input.b.x) << (vec4<u32>(u_input.d, 42705u, u_input.d, 27583u) % vec4<u32>(32u))), vec3<u32>(firstLeadingBit(30946u), u_input.d, ~u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-277f, var_0, arg_0.a.x) + vec3<f32>(699f, var_0, var_0)), i32(-1i) * -1i)).a.yz)), max(9873i, ~_wgslsmith_add_i32(u_input.a.x, 2147483647i)) ^ -9091i, ~(~((u_input.d & u_input.d) ^ _wgslsmith_mult_u32(u_input.d, u_input.d))), -firstTrailingBit(vec4<i32>(u_input.a.x | arg_0.b, arg_0.b, _wgslsmith_mult_i32(-29768i, arg_0.b), func_1(global1[_wgslsmith_index_u32(24545u, 20u)], vec3<u32>(u_input.d, u_input.d, 15221u), Struct_1(vec3<f32>(arg_0.a.x, var_0, var_0), -7721i)).b)));
    global0 = array<Struct_1, 18>();
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(u_input.d) >> (u_input.d % 32u), 18u)];
    let var_3 = var_1;
    return select(!arg_3, arg_3, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!func_5(func_4(func_1(Struct_1(vec3<f32>(1000f, 358f, -1762f), 1i), vec3<u32>(85413u, 1u, 30563u), Struct_1(vec3<f32>(-453f, 419f, -329f), -1i))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, false)), !select(false, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(10712u, u_input.d), 20u)];
    global0 = array<Struct_1, 18>();
    var var_2 = _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(1i, -(i32(-1i) * -20884i), _wgslsmith_add_i32(var_1.b, ~reverseBits(u_input.c.x))));
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-(var_2.x ^ var_1.b)), select(0i, -_wgslsmith_mult_i32(var_2.x, -1i), _wgslsmith_dot_vec2_i32(var_2.zx, var_2.zx) >= ~73525i)), _wgslsmith_clamp_i32(-8754i, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.b, -34885i), _wgslsmith_add_i32(_wgslsmith_sub_i32(829i, 1i), -2147483647i >> (u_input.d % 32u))), var_2.x), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.d, 0u) | vec3<u32>(u_input.d, 27738u, 84428u), vec3<u32>(44382u, u_input.d, 3249u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 35225u)))) >> (~firstTrailingBit(vec3<u32>(4294967295u, u_input.d, 46983u) & vec3<u32>(71765u, 9691u, u_input.d)) % vec3<u32>(32u)));
}

