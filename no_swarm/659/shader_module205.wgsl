struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1357f, -2303f);

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> f32 {
    global2 = array<vec2<bool>, 23>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 219f), vec2<f32>(-870f, global0.x), global1.x >= 43143u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 2130f) + vec2<f32>(global0.x, -342f))))))));
    let var_0 = !(!(!all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -577f))))) * _wgslsmith_f_op_f32(global0.x - 1210f));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f * -588f)) + global0.x))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f), global0.x));
    var var_1 = 80182u;
    global2 = array<vec2<bool>, 23>();
    var var_2 = Struct_4(Struct_2(arg_3.a, arg_3.b, Struct_1(reverseBits(arg_1.a), arg_2.b), arg_3.b, 1u), !(-36213i <= ~_wgslsmith_clamp_i32(10202i, -21961i, 2147483647i)), vec4<bool>(all(!select(vec3<bool>(true, arg_3.a, false), vec3<bool>(arg_3.a, arg_3.a, false), false)), !((false & arg_0.x) || !arg_0.x), false, all(!(!vec4<bool>(true, true, arg_0.x, false)))));
    let var_3 = 68978u;
    return select(firstTrailingBit(vec2<u32>(2039u, ~(~1u))), vec2<u32>(abs(1u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.x, u_input.b, arg_3.d.a.x, u_input.b), vec4<u32>(6193u, arg_2.a.x, arg_1.a.x, 1u)), reverseBits(vec4<u32>(var_2.a.b.a.x, 72266u, 4294967295u, 4756u)))), true);
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_2(!(1f == _wgslsmith_f_op_f32(func_2())), Struct_1(global1.xz << (select(vec2<u32>(u_input.b, global1.x), ~global1.yy, true) % vec2<u32>(32u)), _wgslsmith_mult_vec3_i32(select(~u_input.e.wzy, u_input.e.wzw, true), -u_input.e.xzx)), Struct_1(vec2<u32>(abs(29971u), u_input.b) & vec2<u32>(global1.x, min(4294967295u, global1.x)), u_input.e.zxz), Struct_1(_wgslsmith_clamp_vec2_u32(func_3(vec2<bool>(true, true), Struct_1(vec2<u32>(0u, 1u), u_input.e.yyw), Struct_1(global1.zx, vec3<i32>(u_input.a, u_input.c, u_input.d)), Struct_2(true, Struct_1(global1.zx, vec3<i32>(u_input.c, 2147483647i, 68087i)), Struct_1(vec2<u32>(u_input.b, global1.x), vec3<i32>(u_input.a, u_input.d, u_input.c)), Struct_1(global1.zy, vec3<i32>(-2147483647i, u_input.d, 13883i)), global1.x)), _wgslsmith_add_vec2_u32(global1.yz, global1.xy), firstTrailingBit(vec2<u32>(u_input.b, 13913u))) >> (~vec2<u32>(9479u, global1.x) % vec2<u32>(32u)), -((vec3<i32>(29494i, u_input.a, u_input.c) << (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))) ^ countOneBits(u_input.e.xyx))), max(_wgslsmith_div_u32(1u, (u_input.b | 1u) >> (global1.x % 32u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 4294967295u, 0u) ^ vec3<u32>(12531u, u_input.b, u_input.b)), ~vec3<u32>(global1.x, u_input.b, u_input.b) ^ _wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 1260u), vec3<u32>(63231u, u_input.b, 46747u)))));
    let var_1 = !(!select(vec3<bool>(all(vec4<bool>(var_0.a, var_0.a, var_0.a, false)), any(vec4<bool>(true, var_0.a, false, true)), true), vec3<bool>(true, true, true), !(-1i != var_0.c.b.x)));
    var var_2 = Struct_2(!var_1.x, Struct_1(~(~global1.xz), abs(countOneBits(var_0.d.b) >> (vec3<u32>(0u, 4294967295u, u_input.b) % vec3<u32>(32u)))), Struct_1(_wgslsmith_mod_vec2_u32(var_0.c.a, ~_wgslsmith_clamp_vec2_u32(global1.yz, vec2<u32>(2102u, global1.x), global1.xx)), countOneBits(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-2137i, 1i, 0i), vec3<i32>(u_input.a, var_0.d.b.x, 32636i), vec3<bool>(true, var_1.x, var_1.x)), -vec3<i32>(var_0.c.b.x, var_0.b.b.x, var_0.b.b.x)))), Struct_1(func_3(vec2<bool>(all(vec4<bool>(false, false, true, var_1.x)), var_1.x), var_0.b, Struct_1(~global1.xz, var_0.d.b), var_0), vec3<i32>(24107i, _wgslsmith_sub_i32(reverseBits(var_0.d.b.x), var_0.b.b.x), ~(1i ^ var_0.c.b.x))), 26610u);
    let var_3 = Struct_2(any(vec4<bool>(var_0.a, var_1.x, !var_0.a, false)), Struct_1(vec2<u32>(firstLeadingBit(u_input.b) >> (~65304u % 32u), ~69631u), ~(~vec3<i32>(var_0.d.b.x, 0i, u_input.e.x) >> (~vec3<u32>(u_input.b, 35968u, var_2.e) % vec3<u32>(32u)))), Struct_1(var_0.c.a, abs(var_2.d.b)), Struct_1(~reverseBits(var_2.d.a), var_2.c.b), min(abs(global1.x), _wgslsmith_add_u32(_wgslsmith_div_u32(16857u, ~1u), abs(var_2.b.a.x))));
    let var_4 = Struct_3(select(vec3<u32>(firstTrailingBit(u_input.b) >> (global1.x % 32u), 4294967295u, firstTrailingBit(max(var_2.c.a.x, var_2.e))), ~vec3<u32>(var_3.e ^ var_2.e, 0u << (var_3.b.a.x % 32u), var_0.c.a.x & 0u), !var_1));
    return !vec4<bool>(any(!(!vec4<bool>(true, var_0.a, var_2.a, true))), !(true || var_3.a), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)) > arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(func_1(vec4<f32>(-220f, 167f, 624f, -964f)), vec4<bool>(true, true, true, true), true), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)) & (global0.x >= global0.x)), func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -453f))), global0.x, _wgslsmith_f_op_f32(-1000f * 418f), -1487f)), !func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -341f, global0.x, global0.x)))));
    let var_1 = ~(~reverseBits(~(vec4<u32>(23632u, 23930u, 1u, global1.x) >> (vec4<u32>(u_input.b, u_input.b, 1u, global1.x) % vec4<u32>(32u)))));
    var var_2 = Struct_4(Struct_2(var_0.x, Struct_1(reverseBits(vec2<u32>(var_1.x, u_input.b)), vec3<i32>(_wgslsmith_mult_i32(u_input.d, u_input.c), max(u_input.e.x, u_input.a), _wgslsmith_dot_vec3_i32(u_input.e.zzz, vec3<i32>(u_input.e.x, -352i, -1i)))), Struct_1(firstLeadingBit(min(var_1.zy, var_1.xz)), u_input.e.xzx), Struct_1(var_1.wx, ~vec3<i32>(6635i, -13897i, -1i)), _wgslsmith_dot_vec2_u32(global1.yz | var_1.zx, ~var_1.zw) << (var_1.x % 32u)), var_0.x, !select(vec4<bool>(func_1(vec4<f32>(1826f, 239f, global0.x, global0.x)).x, var_0.x || true, all(vec4<bool>(var_0.x, true, true, true)), any(var_0.zyw)), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), !var_0, select(vec4<bool>(false, var_0.x, false, false), var_0, var_0.x)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 159f, global0.x) * vec4<f32>(-2225f, global0.x, global0.x, global0.x)))));
    var var_3 = ~(~abs(vec4<i32>(abs(var_2.a.b.b.x), -u_input.a, firstLeadingBit(u_input.c), _wgslsmith_sub_i32(u_input.c, u_input.a))));
    let var_4 = Struct_4(Struct_2(true, var_2.a.c, Struct_1(var_2.a.c.a, select(_wgslsmith_sub_vec3_i32(u_input.e.zxx, u_input.e.zzx), var_3.xyw, select(var_0.x, var_2.b, var_2.c.x))), var_2.a.c, _wgslsmith_mult_u32(4294967295u, u_input.b)), var_2.b, vec4<bool>(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1552f, -150f, global0.x, 269f), vec4<f32>(1291f, global0.x, 572f, -306f))))).x, true, !var_0.x, true | (true == var_2.b)));
    global1 = var_1.xyw;
    var_2 = Struct_4(Struct_2(var_4.a.a, Struct_1(~(var_4.a.b.a | vec2<u32>(var_4.a.c.a.x, global1.x)), vec3<i32>(1i, ~2147483647i, ~var_3.x)), var_2.a.d, Struct_1(min(vec2<u32>(var_2.a.c.a.x, global1.x), _wgslsmith_mod_vec2_u32(var_2.a.b.a, var_4.a.b.a)), vec3<i32>(var_3.x, u_input.a, 1i)), 1u), !(!(abs(var_4.a.c.b.x) <= 63891i)), var_2.c);
    let var_5 = vec3<bool>(!any(func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -903f, 1493f, 590f), vec4<f32>(global0.x, 956f, 433f, global0.x))))), !var_2.c.x, !var_2.c.x);
    var var_6 = abs(select(abs(max(vec4<u32>(0u, global1.x, 44964u, 33009u) << (vec4<u32>(var_1.x, var_4.a.c.a.x, var_4.a.b.a.x, u_input.b) % vec4<u32>(32u)), min(vec4<u32>(43305u, 54095u, u_input.b, 1u), var_1))), var_1, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(-2886f))) >= _wgslsmith_f_op_f32(min(1170f, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.a.c.a, var_2.a.d.a, !var_0.yx), -1566f, _wgslsmith_mult_u32(52259u, ~_wgslsmith_mod_u32(u_input.b, 64556u) | ((u_input.b | var_6.x) & ~43865u)), ~(-u_input.c));
}

