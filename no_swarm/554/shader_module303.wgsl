struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(select(30794i, ~u_input.b >> (select(u_input.a, u_input.a, arg_0.x) % 32u), !(!global0.x)), reverseBits(~(~u_input.b)), 19354i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-u_input.b, -1i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b, u_input.c.x, u_input.b)), vec3<i32>(0i, -32767i, 24086i)))), vec4<i32>(-2147483647i, 1i, -26690i, _wgslsmith_sub_i32(_wgslsmith_div_i32(min(u_input.c.x, u_input.c.x), select(0i, -3960i, arg_0.x)), 1i)));
    return vec3<u32>(u_input.a >> (1u % 32u), 11720u, ~4294967295u);
}

fn func_2(arg_0: u32) -> vec3<u32> {
    return func_3(vec2<bool>(!all(select(global0.xyw, vec3<bool>(false, false, true), global0.x)), !any(!vec4<bool>(true, true, false, global0.x))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1105f) * _wgslsmith_f_op_vec2_f32(-arg_0.xy)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_0.x)), arg_0.yw))), countOneBits(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))) | _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(99538u, u_input.a), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4314u, u_input.a, u_input.a), vec4<u32>(9764u, u_input.a, 1u, u_input.a))), max(~vec3<u32>(u_input.a, u_input.a, 1u), func_2(u_input.a))), ~firstLeadingBit(-countOneBits(vec4<i32>(-1i, -1i, u_input.c.x, -1i))));
    let var_1 = min(var_0.c.yz, ~select(~select(var_0.c.ww, var_0.c.zx, global0.yw), vec2<i32>(~(-1i), u_input.c.x), true));
    let var_2 = Struct_1(~u_input.a | var_0.b.x, var_1.x, select(!select(!global0.xxx, vec3<bool>(false, true, global0.x), true), select(!(!global0.xxy), vec3<bool>(true, global0.x & global0.x, true & global0.x), select(global0.xyz, global0.yyw, true & global0.x)), false), global0.yx, -select(-vec4<i32>(var_0.c.x, u_input.b, var_0.c.x, -2147483647i), _wgslsmith_sub_vec4_i32(select(vec4<i32>(1i, 0i, var_1.x, -46763i), vec4<i32>(-4599i, u_input.c.x, var_1.x, -1i), global0.x), vec4<i32>(var_1.x, 2147483647i, 2147483647i, -1i)), false));
    let var_3 = var_2.e.wx;
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(379f - arg_1), _wgslsmith_f_op_f32(var_0.a.x * 1000f)))), func_2(u_input.a) & _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(0u, 0u), min(90847u, 4294967295u)), ~vec3<u32>(var_0.b.x, 14764u, 34422u), vec3<u32>(var_0.b.x, 40371u, min(25927u, 48102u))), vec4<i32>(firstTrailingBit(var_0.c.x | -3710i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, -2147483647i, -5641i, 0i), var_2.e), 1i << (_wgslsmith_mult_u32(u_input.a, var_2.a) % 32u), var_2.b) << (select(~(~vec4<u32>(var_2.a, 96645u, u_input.a, 4294967295u)), select(firstTrailingBit(vec4<u32>(42182u, 14015u, u_input.a, 1u)), vec4<u32>(0u, u_input.a, 1u, var_0.b.x), global0.x), all(!vec3<bool>(global0.x, true, global0.x))) % vec4<u32>(32u)));
    return Struct_3(var_0.a, vec3<u32>(24376u, 658u, 0u), vec4<i32>(~(firstLeadingBit(-4169i) & ~var_2.e.x), countOneBits(var_0.c.x & ~1i), firstTrailingBit(_wgslsmith_clamp_i32(countOneBits(-2304i), reverseBits(-1i), firstLeadingBit(u_input.c.x))), ~var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(706f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2382f, _wgslsmith_f_op_f32(-172f + -946f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1425f, -523f))), _wgslsmith_f_op_f32(f32(-1f) * -1739f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-998f, -2287f) * -434f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)), -319f))));
    global0 = select(vec4<bool>(false, ((u_input.a << (u_input.a % 32u)) | ~4294967295u) <= ~(var_0.b.x ^ u_input.a), !any(select(global0.wx, global0.zy, vec2<bool>(global0.x, global0.x))), all(vec4<bool>(global0.x, all(vec2<bool>(true, true)), true, true))), vec4<bool>(false, all(vec2<bool>(global0.x, all(global0.wx))), all(!select(global0.wxx, global0.wzw, global0.x)), ~abs(-1i) > var_0.c.x), global0.x);
    let var_1 = var_0.b;
    global0 = !(!vec4<bool>(false, global0.x, global0.x, true));
    var var_2 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b.x, var_1.x, 39954u), ~var_0.b), firstLeadingBit(u_input.a | u_input.a)), u_input.a, ~var_1.x), ~u_input.c.x, global0.yxy, !vec2<bool>(!(1i > var_0.c.x), !global0.x), min(_wgslsmith_add_vec4_i32(select(vec4<i32>(2147483647i, var_0.c.x, -1i, -21881i), var_0.c, global0.x), vec4<i32>(-1917i, var_0.c.x, 48705i, var_0.c.x)), var_0.c) ^ -(abs(vec4<i32>(var_0.c.x, var_0.c.x, -2147483647i, u_input.b)) ^ vec4<i32>(var_0.c.x, -2147483647i, -2147483647i, u_input.c.x)));
    var_2 = Struct_1(66106u, reverseBits(21118i), !vec3<bool>(true, global0.x, var_0.a.x >= _wgslsmith_f_op_f32(-204f * 905f)), vec2<bool>(var_2.d.x, var_0.c.x <= -_wgslsmith_mod_i32(30238i, 35445i)), -(~vec4<i32>(var_2.b, 16785i, u_input.b ^ -2147483647i, _wgslsmith_dot_vec3_i32(var_0.c.xzy, var_2.e.yyw))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), -395f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - var_0.a.x))), -982f, var_0.a.x), var_0.a.x, var_2.e, ~var_0.b.x, vec4<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, 16213u, var_0.b.x), vec4<u32>(56112u, 4294967295u, 37832u, 4294967295u)) ^ var_0.b.x), abs(_wgslsmith_sub_u32(min(var_0.b.x, var_0.b.x), u_input.a | var_1.x)), var_0.b.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, var_1.x), func_1(vec4<f32>(715f, -852f, var_0.a.x, -893f), 393f).b.x)));
}

