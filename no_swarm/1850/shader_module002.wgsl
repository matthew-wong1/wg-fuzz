struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> i32 {
    let var_0 = countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, arg_1, 4294967295u), countOneBits(vec4<u32>(arg_1, arg_1, 1u, 1u))) << (~(vec4<u32>(arg_1, arg_1, 38580u, arg_1) >> (vec4<u32>(arg_1, 0u, 4294967295u, 26176u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(71524u, ~1u << (u_input.a.x % 32u), 53158u, 32550u)));
    global0 = global1.x;
    let var_1 = -60177i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -405f)), u_input.c.yz << (~var_0.xx % vec2<u32>(32u)), 4307i);
    global1 = select(select(!select(vec4<bool>(global1.x, true, global1.x, global1.x), select(vec4<bool>(false, global1.x, false, false), vec4<bool>(global1.x, global1.x, true, global1.x), global1.x), select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(false, false, global1.x, false), true)), !vec4<bool>(true, true, true, global1.x), !global1.x), !(!vec4<bool>(var_1 <= var_1, !global1.x, global1.x, global1.x)), !all(vec3<bool>(global1.x, true, true)));
    return _wgslsmith_dot_vec4_i32(~((-vec4<i32>(var_2.c, var_2.c, u_input.b, 0i) | vec4<i32>(2147483647i, var_2.c, -47489i, -29887i)) & abs(~vec4<i32>(2147483647i, u_input.b, var_1, var_2.c))), max(select(vec4<i32>(-2718i, var_1, var_1, 1i) << (var_0 % vec4<u32>(32u)), select(vec4<i32>(2416i, -2147483647i, -1i, -1i), vec4<i32>(var_1, 2147483647i, 2147483647i, 2147483647i), false), !vec4<bool>(true, false, global1.x, false)) ^ vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(5936i, 1i, var_1, 1i), vec4<i32>(var_2.b.x, 28878i, 0i, 1i)), -8477i >> (0u % 32u), -22448i), firstTrailingBit(min(vec4<i32>(var_2.c, var_2.b.x, 25434i, 62594i), vec4<i32>(-2147483647i, -32488i, var_2.b.x, var_1))) ^ _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(var_1, -7564i, u_input.b, -1i)), reverseBits(vec4<i32>(u_input.c.x, var_1, -1i, var_2.c)), vec4<i32>(2147483647i, var_2.b.x, var_1, 0i))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1379f, -1166f, 490f) - vec3<f32>(-734f, -1000f, -1953f)), vec3<f32>(-162f, -429f, 921f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1756f, -1137f, 1000f) + vec3<f32>(755f, 217f, -276f))))));
    let var_1 = Struct_1(var_0.a.a.x, vec2<i32>(~2147483647i, u_input.c.x), func_3(var_0, 0u));
    let var_2 = ~firstLeadingBit(select(~vec4<u32>(33779u, 0u, 4294967295u, 97962u), vec4<u32>(u_input.a.x, 84566u & u_input.a.x, ~u_input.a.x, ~u_input.a.x), vec4<bool>(true, false && global1.x, select(global1.x, true, false), var_1.b.x >= 77278i)));
    let var_3 = _wgslsmith_mod_u32(u_input.a.x, select(max(u_input.a.x, var_2.x & u_input.a.x), var_2.x, true)) << (var_2.x % 32u);
    let var_4 = 1u;
    return var_0.a;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    global0 = ~u_input.a.x != max(firstLeadingBit(1u), ~(7948u << (u_input.a.x % 32u)) << (_wgslsmith_add_u32(firstLeadingBit(4294967295u), u_input.a.x) % 32u));
    let var_0 = vec4<u32>(max(22576u, 1u), firstLeadingBit(max(u_input.a.x | u_input.a.x, ~4294967295u)), ~13703u, u_input.a.x) & ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(42314u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 89032u)), countOneBits(vec4<u32>(1070u, 13775u, u_input.a.x, u_input.a.x))));
    let var_1 = arg_1.a.x;
    global1 = vec4<bool>(true, false, false, select(global1.x, !global1.x, !global1.x | !global1.x));
    var var_2 = all(!select(!vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, true, arg_1.a.x <= var_1, any(vec4<bool>(global1.x, global1.x, false, true))), any(global1.xxx)));
    return vec4<bool>(global1.x, true, false, global1.x);
}

fn func_1() -> Struct_3 {
    global1 = select(!(!vec4<bool>(global1.x, !global1.x, false, true)), func_4(u_input.d.x, func_2(), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(-41918i, u_input.b), firstTrailingBit(u_input.b))), firstTrailingBit(~1i) > ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-464i, u_input.e, 30669i, u_input.d.x), vec4<i32>(27696i, u_input.e, u_input.d.x, -2147483647i), vec4<i32>(u_input.e, 1i, 16503i, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.e, u_input.e, u_input.e), vec4<i32>(-1i, u_input.b, 9542i, u_input.c.x))));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~reverseBits(u_input.d.zz), _wgslsmith_clamp_vec2_i32(u_input.d.yz, u_input.c.zx, u_input.c.zx) & ~vec2<i32>(0i, 28524i)), min(-u_input.e, -12628i) ^ ~u_input.e), u_input.d.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1427f))))), abs(u_input.c.yy), _wgslsmith_sub_i32(2147483647i, 2147483647i));
    let var_2 = vec2<f32>(691f, var_1.a);
    var_0 = ~var_1.b.x;
    return Struct_3(0u, true, ~1u, var_1);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    global0 = global1.x;
    global0 = global1.x;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a))) * arg_0.d.a), arg_0.d.b, 2147483647i);
    let var_1 = func_1().d;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a - -672f))), var_1.a, -1030f)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = func_5(func_1(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_1().d.a, 907f))), vec2<i32>(~(-16673i), u_input.b ^ u_input.d.x) >> (_wgslsmith_add_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(u_input.a, u_input.a)) % vec2<u32>(32u)), u_input.c.x));
    global2 = !(!select(1u != u_input.a.x, func_5(var_0, var_0.d).b, func_4(108106i, Struct_2(vec3<f32>(343f, var_0.d.a, var_0.d.a)), -21687i).x)) | func_5(func_5(Struct_3(_wgslsmith_clamp_u32(26538u, 4294967295u, 87700u), u_input.e >= 0i, 53966u, var_0.d), var_0.d), var_0.d).b;
    var var_1 = Struct_4(func_2());
    var var_2 = firstTrailingBit(~vec4<i32>(abs(firstLeadingBit(-2147483647i)), 0i, -u_input.d.x ^ -u_input.d.x, ~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_1.a.a.x, var_1.a.a.x, true)), _wgslsmith_f_op_f32(-355f * -726f), -1000f)) + vec3<f32>(var_1.a.a.x, 575f, 958f)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.a, _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), _wgslsmith_mult_u32(var_0.a, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 22807u), ~(~(~(u_input.a.x >> (u_input.a.x % 32u)))), _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(var_0.a, 25512u), u_input.a.x, func_5(Struct_3(31922u, false, var_0.a, Struct_1(var_0.d.a, u_input.d.yy, var_2.x)), Struct_1(var_0.d.a, u_input.d.zz, 1i)).c), vec3<u32>(u_input.a.x, ~(~0u), 86832u)));
}

