struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, abs(global0.x)), _wgslsmith_mult_vec2_u32(global0.xx, _wgslsmith_mod_vec2_u32(global0.xz, global0.yy))), global0.x, 22125u), ~(~(~vec3<u32>(20435u, global0.x, global0.x))) << (_wgslsmith_add_vec3_u32(~(vec3<u32>(12498u, global0.x, global0.x) << (vec3<u32>(global0.x, global0.x, 17322u) % vec3<u32>(32u))), abs(vec3<u32>(global0.x, global0.x, global0.x))) % vec3<u32>(32u)), reverseBits(vec3<u32>(global0.x, global0.x, ~(~global0.x))));
    global0 = ~(~_wgslsmith_sub_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 66843u), vec3<u32>(global0.x, global0.x, 29884u), vec3<u32>(48147u, 4294967295u, global0.x))), vec3<u32>(23485u | global0.x, ~global0.x, global0.x)));
    let var_0 = Struct_4(Struct_3(u_input.d.zxz), -1100f, vec2<i32>(u_input.b.x, -6649i), Struct_3(_wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, 0i, -20922i), select(vec3<i32>(-21267i, 28338i, 12506i), countOneBits(u_input.b.zyx), all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-2926f * 1539f), _wgslsmith_f_op_f32(-1918f - 1015f))))));
    global0 = vec3<u32>(4294967295u, abs(4294967295u), max(_wgslsmith_add_u32(~global0.x, 0u), 14799u));
    let var_1 = min(vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.d.x << (global0.x % 32u), _wgslsmith_clamp_i32(-1i, -1i, 1i)) ^ 1i), u_input.d.wx);
    return ~countOneBits(1u);
}

fn func_2() -> Struct_4 {
    global0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.x, global0.x, 5577u) >> (vec3<u32>(0u, 4294967295u, global0.x) % vec3<u32>(32u))), vec3<u32>(13349u, ~0u, func_3())), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(24675u, global0.x), 1u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.x, global0.x, global0.x)) ^ firstTrailingBit(vec3<u32>(global0.x, global0.x, global0.x)), vec3<u32>(_wgslsmith_clamp_u32(2752u, global0.x, 0u), _wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_mod_u32(global0.x, 18256u))));
    global0 = (abs(vec3<u32>(~108556u, max(46675u, global0.x), global0.x)) | ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 16372u, global0.x), vec3<u32>(global0.x, global0.x, 0u)), vec3<u32>(4294967295u, 57290u, global0.x), select(false, false, true))) ^ min(~vec3<u32>(min(4294967295u, 1u), select(17062u, 6642u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(66980u, 68199u, 0u), vec3<u32>(4294967295u, global0.x, 10954u))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(51311u, 1u, 0u)), ~(~vec3<u32>(global0.x, 1u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 70104u, 189u), countOneBits(vec3<u32>(74291u, global0.x, 4294967295u)))));
    let var_0 = Struct_2(-1000f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1247f, -333f)) * 486f), global0.x > 0u, false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), !any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
    global0 = vec3<u32>(global0.x, 0u, _wgslsmith_div_u32(89795u, countOneBits(1u)) | global0.x) >> (min(~select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 15286u, global0.x), vec3<u32>(global0.x, global0.x, global0.x)), vec3<u32>(global0.x, 1u, global0.x), all(vec2<bool>(var_0.c, var_0.c))), max(reverseBits(vec3<u32>(global0.x, global0.x, 53620u)), ~vec3<u32>(global0.x, global0.x, global0.x))) % vec3<u32>(32u));
    var var_1 = vec2<bool>(false || var_0.b.d, false);
    return Struct_4(Struct_3(vec3<i32>(-firstTrailingBit(0i), -(u_input.c | u_input.c), -(-11009i ^ u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), abs(u_input.d.yz), Struct_3(-_wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.d.xzx), vec3<i32>(u_input.a, u_input.c, 0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-731f)), -1731f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.a, var_0.a))))))));
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(global0.x, 1u, ~global0.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(0u, global0.x), 1u, 1u), ~(~(vec3<u32>(global0.x, 0u, global0.x) & vec3<u32>(1u, 18767u, global0.x)))));
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(global0.x ^ global0.x), 25907u, ~global0.x, 4294967295u), ~firstTrailingBit(vec4<u32>(global0.x, global0.x, global0.x, 0u) | vec4<u32>(67040u, global0.x, 65451u, 53417u))), 36886u, global0.x);
    let var_1 = func_2();
    let var_2 = var_1.c.x;
    var_0 = vec3<u32>(_wgslsmith_sub_u32(global0.x, var_0.x), 23112u, 0u) | _wgslsmith_div_vec3_u32(~abs(vec3<u32>(47361u, 10150u, global0.x) & vec3<u32>(global0.x, var_0.x, 59186u)), abs(~vec3<u32>(global0.x, var_0.x, var_0.x)));
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, true, false))));
    global0 = _wgslsmith_sub_vec3_u32(abs(_wgslsmith_add_vec3_u32((vec3<u32>(global0.x, 1u, global0.x) & vec3<u32>(4294967295u, 0u, global0.x)) << ((vec3<u32>(global0.x, global0.x, global0.x) << (vec3<u32>(global0.x, global0.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, 0u, global0.x)))), vec3<u32>(1298u, 1u, ~max(~global0.x, 0u)));
    let var_1 = select(!(!vec2<bool>(var_0.x, true)), !select(vec2<bool>(!var_0.x, false && var_0.x), vec2<bool>(true, true), !any(vec4<bool>(true, var_0.x, var_0.x, false))), all(!select(select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true)));
    var var_2 = u_input.d.x;
    let var_3 = 38827u;
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

