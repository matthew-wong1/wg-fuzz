struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_3(select(abs(arg_0.xy & countOneBits(vec2<i32>(u_input.b.x, u_input.a.x))), vec2<i32>(u_input.b.x, u_input.b.x), true && all(vec4<bool>(true, true, true, true))), select(select(global0.b.zy, global0.b.yz, true), firstLeadingBit(~(vec2<u32>(56847u, global0.b.x) >> (u_input.e % vec2<u32>(32u)))), select(vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(true, true), vec2<bool>(u_input.b.x >= -24764i, true))), -1000f);
    let var_1 = global0.a.x;
    var var_2 = all(vec4<bool>(!all(vec2<bool>(false, true)), true, any(vec3<bool>(false, false, true)), true)) | false;
    var var_3 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(141f * -1363f) + _wgslsmith_div_f32(var_0.c, 115f))), ~u_input.c));
    var_3 = Struct_2(var_3.a);
    return select(select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))), true), !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(0u < global0.b.x, true, all(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), global0.b.x < var_0.b.x);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.a))) + global0.a), ~select(vec3<u32>(_wgslsmith_clamp_u32(global0.b.x, 1u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(64774u, 4294967295u), vec2<u32>(global0.b.x, global0.b.x)), max(global0.b.x, u_input.c.x)), u_input.c, vec3<bool>(true, false, true)));
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec4_u32(firstLeadingBit(max(reverseBits(vec4<u32>(63490u, 4294967295u, u_input.d.x, u_input.d.x)), firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 3u)]))), vec4<u32>(global0.b.x, global0.b.x, _wgslsmith_mult_u32(~u_input.c.x, 2216u & u_input.c.x), u_input.e.x)));
    var var_1 = select(select(!vec4<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)), false, true), !select(func_3(vec3<i32>(1i, 118i, -58948i)), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(!all(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, false, true)) | (arg_0 < 164f), false, false)), vec4<bool>(true, true, true, true), true);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)))), vec3<u32>(reverseBits(1u), 4294967295u, var_0.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1008f)), global0.a.x)))), u_input.a);
    let var_0 = u_input.b.x;
    var var_1 = -235f;
    return Struct_3(firstTrailingBit(u_input.a.wy), u_input.d, _wgslsmith_div_f32(-199f, global0.a.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0.a.x;
    var var_1 = vec2<u32>(~(~31825u), ~(1u | reverseBits(arg_0.b.x)));
    global0 = Struct_1(func_2(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(arg_0.c - global0.a.x)), -_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(10912i, 0i, u_input.b.x, u_input.a.x)), reverseBits(vec4<i32>(arg_2, -2147483647i, 1i, u_input.b.x)), u_input.a << (global1[_wgslsmith_index_u32(8353u, 3u)] % vec4<u32>(32u)))).a, global0.b);
    var_0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.zxx, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 1i, arg_2), u_input.b)), ~select(u_input.b.x, -2205i, arg_3.x), _wgslsmith_add_i32(-1i, u_input.b.x) << (_wgslsmith_mod_u32(var_1.x, 4294967295u) % 32u)), firstTrailingBit(vec3<i32>(u_input.a.x, -1i, arg_2)) ^ vec3<i32>(arg_0.a.x, u_input.a.x, ~arg_2), !(!(arg_1.x || false))), ~u_input.b);
    let var_2 = -750f;
    return Struct_2(Struct_1(global0.a, ~vec3<u32>(var_1.x, _wgslsmith_clamp_u32(global0.b.x, var_1.x, global0.b.x), u_input.c.x)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    return func_5(func_4(true, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f + -770f)), ~vec4<i32>(-1i, -19189i, 6018i, -1i))), select(func_3(-u_input.a.xzz).yy, !(!func_3(vec3<i32>(-42135i, arg_0.x, -567i)).zw), false), i32(-1i) * -_wgslsmith_sub_i32(~41658i, ~0i), func_3(-(~vec3<i32>(-2147483647i, u_input.b.x, u_input.a.x)) | u_input.a.zyw).ywx);
}

fn func_6(arg_0: Struct_4) -> bool {
    var var_0 = vec3<i32>(i32(-1i) * -u_input.a.x, firstLeadingBit(u_input.b.x), u_input.a.x);
    let var_1 = !(!vec2<bool>(any(vec4<bool>(true, true, true, true)), select(any(vec2<bool>(false, false)), true, true)));
    global1 = array<vec4<u32>, 3>();
    var var_2 = _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(0i, u_input.b.x), -var_0.x), (16135i >> (global0.b.x % 32u)) << (1u % 32u))), var_0.xx);
    var var_3 = Struct_3(u_input.a.wx, firstLeadingBit(global0.b.xz), _wgslsmith_f_op_f32(-global0.a.x));
    return var_3.a.x >= var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_6(Struct_4(func_1(u_input.b), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -985f, -179f)), abs(global0.b)))), true, !(select(true, true, all(vec2<bool>(true, false))) && true));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(select(u_input.e, vec2<u32>(u_input.e.x, 0u), var_0.yx)), vec2<u32>(_wgslsmith_add_u32(global0.b.x, 35323u), 19515u)), vec2<u32>(max(2747u, global0.b.x), 4294967295u) ^ vec2<u32>(reverseBits(global0.b.x), firstLeadingBit(u_input.d.x)), vec2<u32>(countOneBits(1u), 1u));
    global0 = func_5(Struct_3(abs(max(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_div_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, 2147483647i)))), u_input.c.xx, 1345f), func_3(vec3<i32>(u_input.a.x, 0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2609i), vec2<i32>(2147483647i, 16557i)), u_input.a.x))).wx, _wgslsmith_sub_i32(u_input.b.x, firstTrailingBit(u_input.a.x >> (21839u % 32u))), func_3(countOneBits(vec3<i32>(select(u_input.a.x, -7376i, true), ~u_input.a.x, -4083i))).zyy).a;
    var var_2 = u_input.b.x;
    var_1 = ~firstTrailingBit(vec2<u32>(~16396u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.a.xy), min(-(-vec4<i32>(u_input.a.x, u_input.b.x, 0i, -1i) & u_input.a), ~vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x, min(35257i, 1i), -36874i)), (1i | u_input.b.x) >> (func_5(func_4(u_input.a.x != u_input.a.x, func_5(Struct_3(u_input.a.zw, vec2<u32>(37036u, var_1.x), 596f), vec2<bool>(var_0.x, true), -32666i, var_0).a), func_3(u_input.a.wwy).yz, -(~5466i), var_0).a.b.x % 32u), max(vec3<i32>(func_4(false, Struct_1(global0.a, u_input.c)).a.x, firstLeadingBit(u_input.b.x), u_input.a.x) << (vec3<u32>(~1u, ~var_1.x, ~global0.b.x) % vec3<u32>(32u)), u_input.a.xzx));
}

