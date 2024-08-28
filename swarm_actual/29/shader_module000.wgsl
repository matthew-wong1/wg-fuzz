struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    return ~(_wgslsmith_dot_vec2_u32(u_input.a.xx, arg_0) >> (~55085u % 32u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_2 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(abs(0u), _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), u_input.c.x, 31192u ^ func_2(arg_1.zx << (vec2<u32>(9541u, 0u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_sub_vec2_u32(u_input.c.zy, vec2<u32>(u_input.c.x, u_input.a.x)))), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(17409u, _wgslsmith_add_u32(1u, min(u_input.a.x, arg_1.x)), 1u))), 12u)];
    var var_0 = global0.a.a;
    let var_1 = select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, _wgslsmith_mult_i32(-76645i, u_input.b.x) & u_input.b.x), -(~vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 0i))), ~u_input.b.x >> (~_wgslsmith_mod_u32(~4294967295u, ~43284u) % 32u), select(false, any(select(arg_0, global0.a.a.wxy, any(vec3<bool>(false, true, false)))), 0u != _wgslsmith_add_u32(~arg_1.x, u_input.a.x)));
    let var_2 = ~max(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, var_1, 0i), vec4<i32>(var_1, -47908i, u_input.b.x, -48487i)), _wgslsmith_sub_i32(var_1, 0i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), ~13770i, select(0i, -u_input.b.x, true)), select(-firstTrailingBit(u_input.b.yyz), -select(vec3<i32>(var_1, -12991i, 28041i), vec3<i32>(u_input.b.x, u_input.b.x, 16442i), vec3<bool>(arg_0.x, false, false)), vec3<bool>(true, true, true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0.b.x, -393f), _wgslsmith_f_op_vec3_f32(global0.b - global0.b), !(!select(!vec3<bool>(true, global0.a.a.x, false), arg_0, !var_0.x))));
    return Struct_2(Struct_1(global0.a.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-454f)), _wgslsmith_f_op_f32(trunc(995f)), _wgslsmith_f_op_f32(1360f - 1044f))), _wgslsmith_f_op_vec3_f32(-var_3))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x)));
    var var_1 = func_3(global0.a.a.yyx, max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, func_2(u_input.a.xy, -565f, u_input.a.zx), ~4294967295u), ~(~u_input.c)), u_input.c));
    var var_2 = min(~53591u, ~(~(~u_input.c.x))) >= (_wgslsmith_div_u32(max(u_input.c.x, abs(u_input.c.x)), u_input.c.x) | reverseBits(_wgslsmith_mult_u32(u_input.c.x << (u_input.c.x % 32u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, u_input.a.x)))));
    global0 = func_3(select(vec3<bool>(global0.a.a.x, var_1.a.a.x, true), vec3<bool>(false || all(global0.a.a.xy), arg_0, !arg_0), all(var_1.a.a.zz)), _wgslsmith_mult_vec4_u32(select(~(~u_input.c), vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_mod_u32(4294967295u, 51023u), ~38654u, 0u), !arg_0), select(vec4<u32>(56709u, u_input.a.x, u_input.a.x, 7743u), u_input.c, arg_0) << (~vec4<u32>(1u, u_input.c.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))));
    let var_3 = !var_1.a.a.x & arg_0;
    return vec2<i32>(select(-20916i, abs(0i), true), u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 12>();
    return arg_2.a;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = func_3(arg_0.a.a.zwz, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, u_input.c)), vec4<u32>(_wgslsmith_sub_u32(~u_input.a.x, u_input.c.x), ~(u_input.a.x ^ u_input.a.x), u_input.a.x, u_input.c.x), u_input.c)).a;
    let var_2 = func_3(!vec3<bool>(func_3(vec3<bool>(arg_0.a.a.x, false, global0.a.a.x), u_input.c).a.a.x & select(true, true, true), var_0.a.a.x, true), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c.yyz, ~vec3<u32>(14568u, u_input.a.x, 1u)) >> (firstLeadingBit(min(85313u, u_input.c.x)) % 32u), u_input.c.x, ~_wgslsmith_mult_u32(4294967295u >> (u_input.a.x % 32u), u_input.c.x << (u_input.a.x % 32u))));
    let var_3 = func_3(vec3<bool>(false, var_0.a.a.x, all(var_2.a.a.zzz) & select(true, !arg_0.a.a.x, false)), u_input.c);
    global1 = array<Struct_2, 12>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_2(func_4(u_input.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(12799u, 64174u, u_input.a.x, 4294967295u), u_input.c) % 32u), func_1(true), Struct_2(Struct_1(global0.a.a), _wgslsmith_div_vec3_f32(global0.b, global0.b))), vec3<f32>(174f, -160f, -1000f)));
    var var_0 = -(~2147483647i);
    global0 = Struct_2(func_5(Struct_2(func_4(-u_input.b.x, firstLeadingBit(u_input.b.xw), Struct_2(Struct_1(vec4<bool>(global0.a.a.x, true, global0.a.a.x, global0.a.a.x)), global0.b)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, 249f, -1000f)))))).a, global0.b);
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.xz);
    var var_2 = func_3(vec3<bool>(!func_4(u_input.b.x, vec2<i32>(51149i, -13669i), Struct_2(Struct_1(vec4<bool>(global0.a.a.x, false, global0.a.a.x, global0.a.a.x)), global0.b)).a.x, -2147483647i <= u_input.b.x, _wgslsmith_f_op_f32(-global0.b.x) >= global0.b.x), ~vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x & 2453u, u_input.a.x, _wgslsmith_div_u32(117023u, u_input.c.x)), u_input.c.x, u_input.a.x, 4294967295u));
    let var_3 = vec2<i32>(reverseBits(abs(u_input.b.x)), ~(~select(-33003i, 24001i, var_2.a.a.x))) ^ -_wgslsmith_add_vec2_i32(~(u_input.b.xy | vec2<i32>(u_input.b.x, u_input.b.x)), -vec2<i32>(-26191i, u_input.b.x));
    var_2 = global1[_wgslsmith_index_u32(25051u, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -abs(min(var_3.x >> (u_input.c.x % 32u), 31787i)), ~_wgslsmith_add_vec4_i32(-u_input.b, u_input.b >> (vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1u) % vec4<u32>(32u))) >> (~u_input.c % vec4<u32>(32u)));
}

