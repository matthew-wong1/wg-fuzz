struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-13297i, 0i, -1i, 0i, 18627i, 0i, -47757i, -6848i, -11237i, -17783i, -52171i, 53120i, -1i, 1i, -12245i, -1i, 2147483647i, -1i, 2147483647i, i32(-2147483648));

var<private> global1: vec4<i32>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    let var_0 = Struct_2(global2.a, max(global1.x, u_input.a), any(global2.d.a) && true, Struct_1(global2.d.a), countOneBits(~firstTrailingBit(global2.e)));
    global2 = var_0;
    global0 = array<i32, 20>();
    global2 = var_0;
    var var_1 = -2805f;
    return global2.c;
}

fn func_2() -> Struct_2 {
    var var_0 = func_3();
    global2 = Struct_2(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(min(-1494f, _wgslsmith_f_op_f32(sign(global2.a.x))))), -(u_input.a & (global2.b >> (u_input.b.x % 32u))), true, Struct_1(global2.d.a), global2.e);
    let var_1 = abs(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 2147483647i, global2.b)), firstTrailingBit(-vec4<i32>(u_input.a, -43820i, -28201i, -1i))));
    var var_2 = global1.x;
    var_0 = global2.d.a.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global2.a * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(global2.a.x, 209f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-628f, -331f)))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(global2.b, firstTrailingBit(~global0[_wgslsmith_index_u32(9488u, 20u)])), abs(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(26693u, 12121u), 20u)])), select(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 23182u)) == _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, global2.e.x), ~73331u, 55439u), !global2.c, true), Struct_1(global2.d.a), ~global2.e);
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    var var_0 = func_2();
    let var_1 = func_2();
    var var_2 = Struct_2(var_0.a, -countOneBits(2147483647i), func_3() & var_0.d.a.x, Struct_1(vec3<bool>(global2.c, var_1.d.a.x && false, 43738u > ~var_0.e.x)), var_1.e);
    global0 = array<i32, 20>();
    let var_3 = ~(-_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(global1.yxx, vec3<i32>(var_0.b, global1.x, var_2.b)) >> (func_2().e % vec3<u32>(32u)), select(~vec3<i32>(15491i, var_0.b, var_0.b), global1.zzx, false)));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~firstLeadingBit(func_2().e.x), _wgslsmith_dot_vec2_u32(u_input.b, ~global2.e.yy), ~51673u), ~global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global2.a))), u_input.a, all(vec2<bool>(true, !(true | global2.d.a.x))), global2.d, ~max(_wgslsmith_mult_vec3_u32(global2.e, func_1(vec3<u32>(29553u, 32313u, 1u))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(10995u, 1u, u_input.b.x)), vec3<u32>(1u, 1u, 1u))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(130f + 1000f)), global2.a));
    var var_1 = _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(62623i, 0i), global1.zx) << (global2.e.xx % vec2<u32>(32u)), ~(~_wgslsmith_clamp_vec2_i32(global1.zw, vec2<i32>(-2147483647i, global1.x), global1.xx) & -_wgslsmith_add_vec2_i32(vec2<i32>(18767i, global2.b), vec2<i32>(global2.b, -1i))));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -206f)), 663f)), ~44555i, !select(global2.d.a.x, global2.c, global2.c), func_2().d, global2.e);
    let var_2 = !select(!vec3<bool>(var_0.x < 969f, false, any(vec2<bool>(global2.d.a.x, false))), select(func_2().d.a, global2.d.a, global2.d.a), false);
    var var_3 = !func_2().d.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1107f - -1000f)), global2.a.x), func_2().a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2137f * var_0.x), _wgslsmith_f_op_f32(386f - -1000f))), global2.a.x, 121f) - vec3<f32>(global2.a.x, -489f, var_0.x)), u_input.b.x, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, ~(u_input.b.x & u_input.b.x), ~(~u_input.b.x)), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(39970u, 7272u, 4294967295u), vec3<u32>(u_input.b.x, global2.e.x, 1u)) ^ vec3<u32>(u_input.b.x, 0u, 11598u), global2.e, vec3<u32>(1u, _wgslsmith_mod_u32(2916u, global2.e.x), ~u_input.b.x))));
}

