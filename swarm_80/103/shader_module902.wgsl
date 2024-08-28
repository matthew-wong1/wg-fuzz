struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(2516i, 1i, 17388i), vec3<i32>(-7526i, -1i, -1i), vec3<i32>(33829i, -6186i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -3664i, i32(-2147483648)), vec3<i32>(0i, 60113i, -28164i), vec3<i32>(0i, -19357i, -11145i), vec3<i32>(-1845i, -25857i, 0i), vec3<i32>(-19617i, -25853i, 32955i), vec3<i32>(0i, 1i, -1i), vec3<i32>(-1i, 2147483647i, -6388i), vec3<i32>(i32(-2147483648), -70471i, 1i), vec3<i32>(83823i, -41137i, -14900i), vec3<i32>(i32(-2147483648), -4394i, 37166i), vec3<i32>(86128i, -36376i, -17241i), vec3<i32>(0i, 27261i, -1i), vec3<i32>(-1i, i32(-2147483648), 50136i), vec3<i32>(30508i, i32(-2147483648), -30270i));

var<private> global1: vec2<f32> = vec2<f32>(-373f, -1000f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(1616f, _wgslsmith_f_op_f32(global1.x * global1.x), true)), global1.x))));
    global1 = _wgslsmith_f_op_vec2_f32(-var_0);
    return -3577i ^ u_input.c;
}

fn func_2() -> i32 {
    let var_0 = vec4<bool>(false, !any(vec3<bool>(true, all(vec2<bool>(false, false)), true)), true, (select(any(vec4<bool>(true, false, false, false)), true, global1.x < global1.x) || true) | any(vec2<bool>(all(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, true, false)))));
    var var_1 = vec2<i32>(~10043i, ~(func_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, 0u), -1852f), Struct_1(u_input.d.zyz, -1632f), Struct_1(vec3<u32>(1u, u_input.d.x, u_input.d.x), 280f), Struct_1(u_input.d.zxx, 1095f), Struct_1(u_input.d.xxy, global1.x)), u_input.d.x, Struct_1(u_input.d.zxx, -391f)) | -7052i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1268f, global1.x, 149f)))))));
    let var_3 = select(!vec3<bool>(all(!var_0.zy), var_0.x, global1.x >= -1117f), !(!(!vec3<bool>(true, var_0.x, var_0.x))), vec3<bool>(false, any(!var_0.zzy), u_input.d.x > 28783u));
    global0 = array<vec3<i32>, 17>();
    return abs(~_wgslsmith_div_i32(-2408i, _wgslsmith_clamp_i32(0i, u_input.a.x, -54837i))) >> (abs(7030u) % 32u);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = i32(-1i) * -((arg_0 & u_input.a.x) & max(-arg_0, func_2()));
    var var_1 = Struct_2(arg_2, arg_2, Struct_1(~_wgslsmith_sub_vec3_u32(abs(arg_2.a), ~vec3<u32>(0u, u_input.b.x, 7137u)), _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1141f)), global1.x))), arg_1, Struct_1(arg_2.a, arg_2.b));
    let var_2 = Struct_2(Struct_1(u_input.d.wzw, -1525f), Struct_1(~vec3<u32>(arg_2.a.x, ~4294967295u, var_1.b.a.x), var_1.d.b), Struct_1(_wgslsmith_mod_vec3_u32(abs(var_1.b.a), vec3<u32>(arg_1.a.x >> (arg_2.a.x % 32u), 1u, 1u)), var_1.c.b), Struct_1(~(~vec3<u32>(arg_2.a.x, arg_1.a.x, arg_2.a.x)) | u_input.d.wzz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(766f, 918f)) * global1.x))), Struct_1(arg_2.a, global1.x));
    global0 = array<vec3<i32>, 17>();
    var var_3 = arg_0;
    return var_1.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_mult_i32(arg_3.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(~1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_3.x, arg_3.x), 16581i, abs(arg_3.x))), ~u_input.a.x ^ func_3(Struct_2(arg_2, arg_2, arg_2, arg_2, Struct_1(u_input.d.zzy, arg_2.b)), 4294967295u, func_1(u_input.a.x, arg_2, arg_2))));
    let var_1 = -1000f;
    var_0 = abs(-_wgslsmith_mult_i32(u_input.c, arg_3.x));
    global1 = arg_0;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d.zzz, abs(vec3<u32>(arg_1, 4294967295u, u_input.d.x))), ~reverseBits(vec3<u32>(16606u, arg_2.a.x, 4294967295u))) & select(~vec3<u32>(67102u, 0u, u_input.e), ~(u_input.d.zxz << (vec3<u32>(arg_2.a.x, 32388u, 4294967295u) % vec3<u32>(32u))), true), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(firstTrailingBit(arg_1), ~u_input.b.x, arg_1)), reverseBits(vec3<u32>(arg_1, 77051u, arg_2.a.x)) >> (u_input.d.wyw % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, -1i, 2147483647i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.c), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.c, -2147483647i), ~select(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), global0[_wgslsmith_index_u32(1u, 17u)], vec3<bool>(true, true, true)) | ~(~min(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], u_input.a)));
    global0 = array<vec3<i32>, 17>();
    var var_1 = Struct_2(Struct_1(vec3<u32>(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1060f, global1.x)), u_input.d.x, func_1(u_input.a.x, Struct_1(vec3<u32>(u_input.e, 7251u, 53636u), global1.x), Struct_1(u_input.d.zzw, -513f)), firstTrailingBit(u_input.a.zy)), u_input.b.x, ~u_input.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(813f - -474f))))), Struct_1(select(~(vec3<u32>(u_input.d.x, u_input.b.x, u_input.e) | u_input.d.wzy), max(u_input.d.ywz, u_input.d.xyx) << (_wgslsmith_sub_vec3_u32(u_input.d.zxy, u_input.d.zxy) % vec3<u32>(32u)), any(vec3<bool>(false, false, false)) && (u_input.a.x > u_input.c)), global1.x), Struct_1(u_input.d.yzy, 1140f), Struct_1(~(~vec3<u32>(0u, 47950u, u_input.e)), func_1(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.yz), -u_input.a.yz), Struct_1(u_input.d.wxy, -2400f), Struct_1(countOneBits(vec3<u32>(1u, 1u, u_input.e)), -833f)).b), Struct_1(~_wgslsmith_clamp_vec3_u32(u_input.d.wzz, func_1(var_0.x, Struct_1(vec3<u32>(u_input.b.x, u_input.e, 4294967295u), -2073f), Struct_1(u_input.d.wwx, global1.x)).a, u_input.d.zxz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    var var_2 = Struct_1(var_1.d.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1178f - global1.x), var_1.a.b));
    let var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-905f * 249f), var_2.b)), var_1.c.b)));
    var var_4 = -8613i;
    var_1 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.a.x, 1u), vec2<u32>(87713u, 1u)), ~_wgslsmith_div_u32(12744u, var_2.a.x), var_1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b)))), func_1(0i, func_1(var_0.x, Struct_1(var_1.d.a, global1.x), Struct_1(abs(var_1.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1993f))), var_1.a), Struct_1(~vec3<u32>(~0u, 1u >> (var_1.b.a.x % 32u), var_2.a.x), -775f), func_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.x, 1i), 2147483647i), func_1(u_input.c, Struct_1(~var_2.a, _wgslsmith_f_op_f32(-global1.x)), func_1(-var_0.x, Struct_1(vec3<u32>(var_3.a.x, 85250u, 93975u), 3863f), func_1(var_0.x, Struct_1(var_3.a, 1000f), Struct_1(vec3<u32>(28438u, u_input.e, 4294967295u), 1000f)))), Struct_1(vec3<u32>(43195u, func_4(vec2<f32>(-1846f, -1654f), 50123u, var_3, u_input.a.yx), 0u), _wgslsmith_f_op_f32(ceil(global1.x)))), var_1.c);
    var var_5 = var_2.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b, -672f))), 2088u, func_1(-39648i, Struct_1(var_1.c.a, var_1.a.b), Struct_1(var_3.a, var_2.b)), vec2<i32>(u_input.c, 0i))), _wgslsmith_clamp_u32(var_2.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_3.a, vec3<u32>(16775u, u_input.b.x, 19538u), var_2.a), vec3<u32>(var_3.a.x, 81538u, var_3.a.x)), ~u_input.e), 1u ^ ~abs(var_1.a.a.x)), min(u_input.a.x, i32(-1i) * -1i), var_1.c.a.zz);
}

