struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_clamp_i32(-42372i, arg_0, -u_input.d);
    let var_1 = 23984i;
    global0 = array<Struct_2, 13>();
    var_0 = arg_0;
    var var_2 = arg_1.ww;
    return true;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(max(vec3<i32>(select(2147483647i, countOneBits(2147483647i), all(vec3<bool>(false, true, false))), -(~2147483647i), abs(_wgslsmith_mod_i32(-38960i, u_input.d))), countOneBits(vec3<i32>(u_input.d, -u_input.d, ~(-29706i)))), select(select(vec4<bool>(true, select(true, false, true), func_3(0i, vec4<u32>(1u, 20565u, 2740u, 4294967295u)), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, true)), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, false)));
    var var_1 = Struct_3(select(u_input.e.x, 58281u, true == (_wgslsmith_add_i32(u_input.b, var_0.a.x) != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0.a.x, -31678i), vec3<i32>(u_input.b, u_input.d, var_0.a.x)))), _wgslsmith_f_op_f32(floor(1f)), u_input.b, Struct_1(var_0.a, !var_0.b), _wgslsmith_sub_i32(-11673i, ~(-45335i)));
    let var_2 = Struct_5(48341u != u_input.c.x, Struct_4(Struct_2(!vec2<bool>(var_0.b.x, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, var_1.b)), var_1.d, var_1.d.b, 401f), -14823i), true);
    let var_3 = 11406u;
    let var_4 = var_2;
    return min(min(-(vec4<i32>(-39072i, var_2.b.b, var_4.b.b, -10630i) << (vec4<u32>(4294967295u, u_input.e.x, 4294967295u, u_input.c.x) % vec4<u32>(32u))) ^ (-vec4<i32>(-5931i, -1i, 2147483647i, 2147483647i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, 92196i, 1i, -1i), vec4<i32>(18962i, -6502i, 2147483647i, u_input.d), vec4<i32>(-39174i, -2147483647i, -51139i, 58852i))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_4.b.b, var_1.e, 74461i, -12894i), ~vec4<i32>(1i, var_4.b.b, -20816i, 0i)), vec4<i32>(-1i) * -vec4<i32>(0i, -22595i, u_input.d, var_0.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(-41287i, var_2.b.b, var_2.b.a.c.a.x, firstTrailingBit(32471i)), firstTrailingBit(vec4<i32>(-1i, var_0.a.x, 0i, var_1.c))) ^ ~(firstTrailingBit(vec4<i32>(u_input.d, -2147483647i, 14930i, 1i)) & select(vec4<i32>(2147483647i, var_4.b.b, var_2.b.b, var_1.d.a.x), vec4<i32>(23754i, 24254i, var_0.a.x, -62062i), var_0.b)));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_4 {
    var var_0 = Struct_3(arg_1, _wgslsmith_f_op_f32(ceil(-768f)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(0i, 1i, u_input.d, u_input.d), -arg_0, vec4<bool>(true, true, true, true)), vec4<i32>(2147483647i, arg_0.x, -2147483647i, _wgslsmith_add_i32(u_input.d, -1i))), -reverseBits(arg_0 ^ vec4<i32>(arg_0.x, 31357i, 10907i, u_input.d))), Struct_1(arg_0.yyx, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true))), u_input.d);
    var var_1 = vec4<bool>(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 81021i), var_0.d.a) < _wgslsmith_mod_i32(~u_input.d, _wgslsmith_sub_i32(~var_0.c, abs(2147483647i))), true, true, true);
    var_1 = var_0.d.b;
    var var_2 = Struct_5(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -35286i, 1i, -2147483647i) | vec4<i32>(-39233i, -8579i, var_0.e, arg_0.x), vec4<i32>(arg_0.x, u_input.b, 1i, u_input.d)) > (u_input.b >> (arg_1 % 32u)), Struct_4(Struct_2(select(vec2<bool>(var_1.x, true), var_0.d.b.yx, any(vec4<bool>(var_1.x, true, false, var_0.d.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1038f, var_0.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-165f, -685f, 100f), vec3<f32>(var_0.b, -567f, var_0.b), var_1.xxx))), Struct_1(var_0.d.a, select(var_0.d.b, var_0.d.b, var_1.x)), !vec4<bool>(var_0.d.b.x, true, true, var_1.x), var_0.b), -_wgslsmith_dot_vec3_i32(select(arg_0.zwx, arg_0.zwz, var_1.wzw), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, 57989i, -18410i), vec3<i32>(41078i, u_input.d, -2147483647i)))), true);
    var var_3 = var_2.c;
    return var_2.b;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    var var_0 = u_input.e.x;
    let var_1 = func_4(func_2(), ~u_input.a);
    var_0 = abs(_wgslsmith_dot_vec2_u32(abs(reverseBits(u_input.e.xz << (u_input.c.yx % vec2<u32>(32u)))), vec2<u32>(~u_input.e.x, u_input.c.x)));
    let var_2 = -arg_0.a.x;
    var var_3 = ~(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(10457u, 28315u, 22296u, 57173u)), ~u_input.e) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.a, 0u, u_input.e.x), _wgslsmith_sub_vec4_u32(vec4<u32>(12434u, 0u, 1u, u_input.e.x), ~vec4<u32>(0u, u_input.a, 1u, 0u))));
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5, arg_3: bool) -> vec2<bool> {
    var var_0 = vec2<bool>(true, any(select(func_1(func_1(arg_0.a.c, arg_2.b.a.e).a.c, _wgslsmith_f_op_f32(select(103f, arg_2.b.a.e, arg_0.a.a.x))).a.c.b, !arg_2.b.a.c.b, arg_0.a.d)));
    global0 = array<Struct_2, 13>();
    let var_1 = arg_0.a.b.x;
    global0 = array<Struct_2, 13>();
    let var_2 = ~u_input.c;
    return !vec2<bool>(true, all(vec2<bool>(var_1 != var_1, arg_2.b.a.b.x != -1537f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    let var_0 = 57227u;
    global0 = array<Struct_2, 13>();
    var var_1 = Struct_4(Struct_2(select(func_5(func_1(Struct_1(vec3<i32>(113894i, 30213i, u_input.d), vec4<bool>(false, false, false, true)), 935f), false, Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(u_input.c.x, 13u)], u_input.d), false), false), func_4(abs(vec4<i32>(u_input.d, 7965i, 0i, u_input.d)), 0u).a.a, true), vec3<f32>(_wgslsmith_f_op_f32(floor(-777f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1272f - -1000f))), 689f), Struct_1(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.b, -2147483647i, u_input.b)), vec3<i32>(u_input.b, -4947i, u_input.d), select(vec3<i32>(u_input.d, u_input.b, 2147483647i), vec3<i32>(2147483647i, -2147483647i, 1i), vec3<bool>(true, true, false))), func_4(max(vec4<i32>(u_input.d, 0i, u_input.d, u_input.d), vec4<i32>(u_input.b, 54824i, -8717i, u_input.d)), ~var_0).a.d), func_4(-_wgslsmith_mult_vec4_i32(vec4<i32>(-11046i, u_input.b, u_input.b, 13793i), vec4<i32>(u_input.d, u_input.d, -55795i, u_input.b)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), u_input.c.yy), abs(var_0))).a.d, -1261f), 1i >> (_wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, var_0), u_input.c)) % 32u));
    var_1 = func_4(vec4<i32>(~(~var_1.b), 0i & (_wgslsmith_mult_i32(u_input.d, u_input.d) << (max(var_0, var_0) % 32u)), -_wgslsmith_dot_vec2_i32(var_1.a.c.a.yx, vec2<i32>(-1i, var_1.b)), abs(0i ^ u_input.b)), ~(var_0 << (u_input.a % 32u)));
    let var_2 = 74486i << (1u % 32u);
    let var_3 = var_1.a.c.a;
    var var_4 = Struct_3(~abs(~(~var_0)), var_1.a.b.x, abs(17121i), var_1.a.c, _wgslsmith_mod_i32(0i, ~14499i >> (u_input.e.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.e.zxw & (u_input.c >> (vec3<u32>(var_4.a, var_4.a, var_4.a) % vec3<u32>(32u))), vec3<u32>(var_4.a, countOneBits(45828u), 1552u)), (_wgslsmith_div_u32(var_4.a, 55130u) | var_0) >> (23394u % 32u), var_4.a), vec4<i32>(-var_2, _wgslsmith_add_i32(min(-2425i, var_1.b), var_2 ^ firstTrailingBit(var_4.c)), var_1.a.c.a.x, _wgslsmith_add_i32(func_4(firstLeadingBit(vec4<i32>(var_2, var_3.x, 1i, var_1.a.c.a.x)), ~1u).a.c.a.x, 2147483647i)), u_input.c.xy, _wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(-vec3<i32>(var_1.b, 0i, -1i), -vec3<i32>(-10039i, var_1.a.c.a.x, -2147483647i))), var_4.d.a));
}

