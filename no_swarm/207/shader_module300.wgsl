struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-arg_1.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-469f, _wgslsmith_f_op_f32(ceil(arg_1.b)))));
    global0 = array<Struct_2, 12>();
    let var_1 = Struct_1((~57297i | -_wgslsmith_mult_i32(u_input.b.x, -1i)) | u_input.b.x, ~_wgslsmith_sub_vec2_u32(arg_1.e.b.b << (arg_1.c.b % vec2<u32>(32u)), ~abs(vec2<u32>(22312u, 4294967295u))), !(!select(arg_1.e.b.c, !vec2<bool>(arg_1.c.c.x, arg_1.c.c.x), !arg_1.a.x)));
    var var_2 = Struct_3(!vec3<bool>(true, any(arg_1.a.xz) & arg_1.c.c.x, -639f >= _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(867f)), Struct_1(arg_1.e.b.a, ~vec2<u32>(arg_1.e.a.b.x & u_input.c.x, 26337u), !vec2<bool>(select(true, true, var_1.c.x), !arg_1.e.a.c.x)), var_1.a, arg_1.e);
    var_2 = arg_1;
    return 0i;
}

fn func_2() -> Struct_3 {
    var var_0 = -(i32(-1i) * -func_3(1u, Struct_3(vec3<bool>(false, true, false), -617f, Struct_1(u_input.b.x, vec2<u32>(18841u, 0u), vec2<bool>(true, false)), 1i, global0[_wgslsmith_index_u32(19347u, 12u)])));
    var var_1 = ~countOneBits(u_input.d) >> (~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.www, vec3<u32>(1u, 0u, 0u)), _wgslsmith_mult_u32(24830u, u_input.c.x)) % vec2<u32>(32u));
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_i32(firstTrailingBit(-1i ^ u_input.a), abs(firstTrailingBit(1i))), (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 67862u), vec2<u32>(u_input.d.x, 1u)) >> (vec2<u32>(93069u, var_1.x) % vec2<u32>(32u))) << (u_input.d % vec2<u32>(32u)), !vec2<bool>(all(vec4<bool>(false, true, false, false)), true)), Struct_1(_wgslsmith_mult_i32(u_input.b.x, ~(u_input.a >> (var_1.x % 32u))), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, 2331u)), u_input.d << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d.x), u_input.d) % vec2<u32>(32u))), !vec2<bool>(all(vec2<bool>(true, true)), false)));
    var var_3 = ~(~(vec4<i32>(1i, _wgslsmith_sub_i32(-7698i, var_2.a.a), ~1i, -var_2.a.a) >> (u_input.c % vec4<u32>(32u))));
    var var_4 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, abs(~vec4<u32>(var_1.x, 0u, u_input.c.x, var_2.b.b.x))), firstTrailingBit((u_input.c >> (u_input.c % vec4<u32>(32u))) | (vec4<u32>(95625u, var_1.x, 342u, var_2.a.b.x) << (vec4<u32>(0u, var_2.b.b.x, var_2.b.b.x, u_input.d.x) % vec4<u32>(32u)))), u_input.c);
    return Struct_3(!(!select(!vec3<bool>(var_2.b.c.x, var_2.b.c.x, false), select(vec3<bool>(false, var_2.b.c.x, var_2.a.c.x), vec3<bool>(var_2.b.c.x, var_2.a.c.x, var_2.a.c.x), vec3<bool>(var_2.a.c.x, true, true)), select(vec3<bool>(var_2.b.c.x, var_2.a.c.x, true), vec3<bool>(var_2.a.c.x, var_2.b.c.x, var_2.a.c.x), vec3<bool>(true, var_2.a.c.x, var_2.a.c.x)))), _wgslsmith_f_op_f32(-627f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-189f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1255f, 1208f))))), var_2.a, _wgslsmith_sub_i32(reverseBits(firstLeadingBit(-16757i)), 1i), global0[_wgslsmith_index_u32(0u, 12u)]);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0.a.x != (~(-_wgslsmith_div_i32(-16584i, arg_2.x)) >= 22551i);
    var var_1 = func_2().e;
    var var_2 = var_0;
    let var_3 = 4294967295u;
    var var_4 = false;
    return Struct_1(arg_2.x, min(max(select(arg_0.e.b.b, arg_0.e.b.b, !var_0), ~(~vec2<u32>(var_3, arg_0.e.b.b.x))), _wgslsmith_mod_vec2_u32(arg_0.c.b, select(~var_1.a.b, vec2<u32>(u_input.d.x, var_1.a.b.x) >> (u_input.d % vec2<u32>(32u)), var_0))), vec2<bool>(var_1.a.c.x, any(!select(vec4<bool>(var_1.b.c.x, true, false, false), vec4<bool>(true, arg_0.e.a.c.x, var_1.b.c.x, arg_0.a.x), vec4<bool>(arg_0.e.a.c.x, var_1.b.c.x, false, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<u32>) -> vec3<u32> {
    global0 = array<Struct_2, 12>();
    let var_0 = Struct_2(arg_2.c, Struct_1(~arg_1.a ^ ~(i32(-1i) * -27216i), firstLeadingBit(vec2<u32>(1u, ~arg_3.x)), func_2().a.yy));
    global0 = array<Struct_2, 12>();
    let var_1 = func_2();
    let var_2 = func_2();
    return u_input.c.zzz;
}

fn func_6(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    var var_0 = -u_input.b.wxy;
    var_0 = _wgslsmith_sub_vec3_i32(~vec3<i32>(2914i, ~func_3(48076u, Struct_3(vec3<bool>(false, false, false), 1491f, Struct_1(var_0.x, arg_0.yy, vec2<bool>(false, true)), 0i, Struct_2(Struct_1(u_input.b.x, u_input.d, vec2<bool>(true, true)), Struct_1(var_0.x, vec2<u32>(u_input.c.x, 55714u), vec2<bool>(false, false))))), u_input.b.x), -abs(~vec3<i32>(-39332i, u_input.b.x, 2147483647i)));
    let var_1 = true;
    var var_2 = !(_wgslsmith_add_i32(19857i, var_0.x) > reverseBits(~(u_input.e.x << (arg_1 % 32u))));
    let var_3 = Struct_3(func_2().a, func_2().b, func_2().e.b, u_input.e.x, Struct_2(func_2().e.a, Struct_1(var_0.x, _wgslsmith_mult_vec2_u32(~arg_0.xy, vec2<u32>(arg_1, u_input.d.x)), !(!vec2<bool>(false, var_1)))));
    return Struct_3(select(select(var_3.a, vec3<bool>(var_1, all(vec4<bool>(var_1, var_1, var_1, var_3.c.c.x)), true), select(vec3<bool>(var_3.a.x, var_1, var_3.a.x), func_2().a, var_3.a)), var_3.a, select(vec3<bool>(false, false, any(vec3<bool>(var_3.e.a.c.x, true, var_1))), var_3.a, !vec3<bool>(var_1, var_1, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b)) * var_3.b), var_3.e.a, firstTrailingBit(-2147483647i), func_2().e);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = func_6(func_5(func_4(func_2(), _wgslsmith_f_op_f32(-232f * _wgslsmith_f_op_f32(-273f + 1242f)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.b.a, -1i), u_input.b.xy), 1i), arg_3.a, func_2(), select(u_input.c.yzx, _wgslsmith_div_vec3_u32(u_input.c.xxx, _wgslsmith_add_vec3_u32(vec3<u32>(104317u, arg_2.x, u_input.c.x), u_input.c.yyw)), !select(vec3<bool>(arg_3.b.c.x, arg_3.b.c.x, false), vec3<bool>(arg_3.a.c.x, true, arg_3.b.c.x), vec3<bool>(arg_3.a.c.x, false, arg_3.a.c.x)))), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1 >> (arg_2.x % 32u), countOneBits(arg_3.a.b.x), abs(u_input.d.x), max(4294967295u, arg_3.b.b.x)), _wgslsmith_div_vec4_u32(u_input.c, u_input.c))));
    let var_1 = arg_3.a.c.x;
    let var_2 = true;
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return StorageBuffer(var_0.c.b.x, max(-reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.a.a, arg_0, u_input.e.x, -16926i), u_input.b)), abs(vec4<i32>(_wgslsmith_clamp_i32(41255i, arg_3.b.a, -16764i), arg_3.b.a, arg_0, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    let var_0 = vec3<u32>(~1566u, 4294967295u, 30096u);
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    let var_1 = ~var_0;
    global0 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = func_1(u_input.a & -(-2147483647i >> (min(1u, 4294967295u) % 32u)), 1u, vec2<u32>(u_input.c.x, 54751u), global0[_wgslsmith_index_u32(1u, 12u)]);
}

