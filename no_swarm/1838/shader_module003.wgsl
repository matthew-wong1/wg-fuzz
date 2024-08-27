struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> bool {
    let var_0 = ~(-10102i);
    var var_1 = u_input.a;
    let var_2 = u_input.a.yyx;
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_2, 17>();
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -732f, -512f)))))))) + vec3<f32>(1f, 1f, 1f));
    var var_2 = _wgslsmith_sub_vec2_i32(-(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_0, -1i)), -vec2<i32>(var_0, var_0), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 26089i), vec2<i32>(var_0, var_0))) << (vec2<u32>(23792u, ~u_input.a.x) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-7177i, 1i), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(-2147483647i, var_0)))));
    var_2 = ~vec2<i32>(var_2.x | (var_2.x << (113476u % 32u)), var_0);
    return Struct_2(2147483647i);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec2<f32>) -> u32 {
    global0 = array<Struct_2, 17>();
    var var_0 = func_3(select(select(vec4<bool>(all(vec2<bool>(false, false)), true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), vec4<bool>(true, true, true, true), func_2(vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, true, true))), false)), abs(u_input.a.xz));
    let var_1 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(u_input.a.x == u_input.a.x, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true)));
    let var_2 = global0[_wgslsmith_index_u32(min(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(24222u, 1u), vec2<u32>(arg_1, 4294967295u))), firstLeadingBit(~8774u)) >> (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x ^ 12978u, u_input.a.x ^ u_input.a.x, u_input.a.x << (arg_1 % 32u))), u_input.a.wxz) % 32u), 17u)];
    var_0 = Struct_2(_wgslsmith_sub_i32(min(-(~var_0.a), 18288i >> (~u_input.a.x % 32u)), ~_wgslsmith_mod_i32(2147483647i >> (arg_1 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_2.a, var_2.a), vec3<i32>(var_2.a, var_0.a, var_2.a)))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-50590i, 2147483647i, -2147483647i)), vec3<i32>(-2147483647i, 2147483647i, 1i)), min(1i, reverseBits(-43842i)), -firstLeadingBit(2147483647i), 41559i)), _wgslsmith_div_vec4_i32(vec4<i32>(min(_wgslsmith_add_i32(1i, -39831i), ~2147483647i), countOneBits(1i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(22988i, 16106i), vec2<i32>(7083i, -6365i)), vec2<i32>(8229i, -2147483647i)), 0i >> (func_1(vec4<f32>(-372f, -644f, -1193f, 2446f), u_input.a.x, vec3<f32>(1079f, -657f, -1859f), vec2<f32>(966f, -2016f)) % 32u)), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 0i), vec3<i32>(43910i, 22333i, -1i)), _wgslsmith_clamp_i32(-2147483647i, 17614i << (u_input.a.x % 32u), -2147483647i), -firstLeadingBit(2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -26482i, 2147483647i), vec3<i32>(-20057i, 23301i, 1i), vec3<i32>(-2147483647i, -18123i, -2147483647i)), max(vec3<i32>(1i, -1i, 46674i), vec3<i32>(67535i, -11969i, -54869i))))), vec4<i32>(-abs(abs(-60702i)), firstLeadingBit(_wgslsmith_mod_i32(10824i, 26505i)), -7923i, select(_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 26535i, 40474i), vec3<i32>(1220i, 2147483647i, 1i)), i32(-1i) * -2147483647i), _wgslsmith_sub_i32(-1i, 1628i), false)));
    global0 = array<Struct_2, 17>();
    var var_1 = global0[_wgslsmith_index_u32(~11724u, 17u)];
    var_1 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i >> (0u % 32u), ~(-1i), var_1.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~var_1.a, countOneBits(910i)), _wgslsmith_dot_vec4_i32(-var_0, abs(var_0)))), min(vec4<i32>(~(~var_0.x), var_0.x, -(~var_1.a), _wgslsmith_add_i32(-56831i, var_0.x)), ~countOneBits(vec4<i32>(12866i, var_1.a, 25050i, 16190i) & var_0)), select(var_0.zzz, vec3<i32>(firstLeadingBit(firstTrailingBit(-15465i)), 2147483647i, -_wgslsmith_mult_i32(1i, -18538i)), vec3<bool>(!select(true, false, false), u_input.a.x <= countOneBits(u_input.a.x), false)));
}

