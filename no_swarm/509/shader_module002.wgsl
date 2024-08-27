struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec4<i32> {
    global0 = array<Struct_5, 2>();
    var var_0 = arg_1.c.x;
    var_0 = ~(arg_1.c.x ^ 1u);
    global0 = array<Struct_5, 2>();
    var_0 = firstTrailingBit(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4189u, arg_1.c.x, 0u), vec4<u32>(1u, 0u, arg_1.c.x, arg_1.c.x)), vec4<u32>(4294967295u, 23807u, 57304u, arg_1.c.x) & vec4<u32>(4294967295u, 4294967295u, 6331u, 1u)))) ^ firstTrailingBit(4294967295u);
    return -select(-_wgslsmith_mult_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, u_input.b)), vec4<i32>(firstTrailingBit(reverseBits(arg_1.a.a.x)), min(-1i, arg_1.a.a.x), _wgslsmith_mod_i32(2147483647i >> (0u % 32u), 7884i << (arg_1.c.x % 32u)), ~arg_1.a.a.x), true);
}

fn func_2(arg_0: Struct_5, arg_1: vec4<bool>) -> u32 {
    var var_0 = select(max(-(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-7579i, 1i, arg_0.b, 2147483647i)) >> ((vec4<u32>(arg_0.a, arg_0.a, arg_0.a, 99607u) & vec4<u32>(113622u, 10255u, 0u, arg_0.a)) % vec4<u32>(32u))), ~vec4<i32>(arg_0.b, abs(u_input.a), -u_input.a, -1i)), vec4<i32>(-37896i, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_add_i32(select(4518i, 1i, false), 0i)), firstTrailingBit(-47046i ^ arg_0.b), u_input.a), arg_1.x);
    global0 = array<Struct_5, 2>();
    let var_1 = vec4<i32>(u_input.a, arg_0.b | -27304i, _wgslsmith_dot_vec3_i32(var_0.wzx, var_0.yzz), 13065i & u_input.a);
    let var_2 = arg_0.a;
    var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(func_3(false, Struct_4(Struct_1(var_1.yw), arg_0.a, vec2<u32>(1u, 4294967295u))), vec4<i32>(28316i, arg_0.b, var_1.x, u_input.a)), _wgslsmith_div_vec4_i32(select(var_1, vec4<i32>(arg_0.b, arg_0.b, 0i, u_input.b.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, 9314i, u_input.a), vec4<i32>(u_input.b.x, 6755i, arg_0.b, u_input.b.x)))), vec4<i32>(-1i, -reverseBits(var_1.x), -24470i, arg_0.b)), -var_1.x | 1i, -var_1.x >> (24075u % 32u), ~var_0.x);
    return ~(~arg_0.a);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_5) -> vec3<f32> {
    var var_0 = arg_0;
    var var_1 = vec3<bool>(arg_1.d.c.x, arg_2.a > func_2(Struct_5(arg_2.a, 16272i), !select(vec4<bool>(false, arg_1.d.c.x, arg_1.d.c.x, arg_1.d.c.x), vec4<bool>(arg_1.d.c.x, true, arg_1.d.c.x, false), vec4<bool>(arg_1.d.c.x, arg_1.d.c.x, true, arg_1.d.c.x))), all(select(select(arg_1.d.c, arg_1.d.c, true), arg_1.d.c, !arg_1.d.c)) & arg_1.d.c.x);
    let var_2 = ~_wgslsmith_clamp_vec2_i32(func_3(false, Struct_4(arg_1.c, abs(arg_2.a), vec2<u32>(arg_2.a, arg_2.a))).xy, vec2<i32>(~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_2.b, -2147483647i, 49146i, -2147483647i)), func_3(var_1.x, Struct_4(arg_1.d.b, arg_2.a, vec2<u32>(1u, arg_2.a))).x), abs(vec2<i32>(1i, 1i)) | vec2<i32>(_wgslsmith_mod_i32(arg_2.b, arg_2.b), -2147483647i << (arg_2.a % 32u)));
    let var_3 = arg_1.d;
    var_1 = !(!arg_1.d.c);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 2277f, arg_0));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~vec3<u32>(31991u, 1u, ~4294967295u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(16977u, 1u, 10305u), true), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, 1u, 18420u)), vec3<u32>(1u, 1u, 1u), max(vec3<u32>(9978u, 96426u, 4294967295u), vec3<u32>(4888u, 0u, 1u)))));
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(2336f, Struct_3(u_input.b.wxz, Struct_1(u_input.b.wz), Struct_1(u_input.b.xw), Struct_2(vec4<f32>(1838f, 882f, -1531f, 1312f), Struct_1(vec2<i32>(-21651i, u_input.a)), vec3<bool>(true, true, false))), Struct_5(1u, u_input.a))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-896f, -2336f, -2006f))))) * vec3<f32>(-865f, 2609f, _wgslsmith_f_op_f32(f32(-1f) * -1801f))), Struct_3(~(~vec3<i32>(u_input.a, u_input.a, -2147483647i) | min(vec3<i32>(1i, u_input.b.x, u_input.a), u_input.b.zyz)), Struct_1(min(u_input.b.zy, u_input.b.wy | u_input.b.zx)), Struct_1(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b.x, -2147483647i)), u_input.b.yy, -u_input.b.xz)), Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(159f, -139f, 2094f, 1247f))), Struct_1(vec2<i32>(u_input.a, u_input.b.x)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), u_input.b.x <= -53269i))), -1964f, ~((~vec2<u32>(46630u, var_0.x) & vec2<u32>(var_0.x, 0u)) | _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 0u), _wgslsmith_mult_vec2_u32(var_0.yz, vec2<u32>(var_0.x, 4294967295u)))));
    var var_2 = -vec4<i32>(-var_1.b.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a, 2147483647i, 56277i), vec4<i32>(u_input.a, u_input.b.x, 1i, -20909i), false), abs(vec4<i32>(6905i, u_input.a, var_1.b.a.x, 23898i))), -vec4<i32>(u_input.b.x, 1i, var_1.b.a.x, 0i)), u_input.b.x, -2147483647i);
    var_2 = select(max(_wgslsmith_mult_vec4_i32(vec4<i32>(1692i, 39643i, u_input.a, var_1.b.a.x), -u_input.b), _wgslsmith_clamp_vec4_i32(firstTrailingBit(u_input.b), -u_input.b, vec4<i32>(var_1.b.a.x, var_1.b.a.x, var_2.x, -1i))) >> ((vec4<u32>(~var_0.x, var_0.x | 35304u, ~77364u, abs(44315u)) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 77912u, var_0.x, var_0.x), vec4<u32>(27884u, var_0.x, 1u, 67694u))) % vec4<u32>(32u)), ~u_input.b, !select(select(vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(false, false, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), !vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x && false, var_1.c.x, true & var_1.c.x, select(false, true, var_1.c.x))));
    var var_3 = Struct_3(countOneBits(u_input.b.yww), var_1.b, Struct_1(var_2.xy), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, u_input.a, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~(~var_3.a.yy), vec2<i32>(var_3.a.x, var_1.b.a.x)), ~(~var_1.b.a) & vec2<i32>(0i, 1i)), -var_3.d.b.a.x, 994f);
}

