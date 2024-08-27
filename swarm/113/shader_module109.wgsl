struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(720f, false, vec4<u32>(35498u, 26709u, 12789u, 1u), 29222u, vec4<f32>(-1000f, 1000f, 349f, -263f));

var<private> global2: array<vec4<f32>, 11>;

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1209f, false, vec4<u32>(78618u, 32744u, 4294967295u, 1u), 4294967295u, vec4<f32>(-797f, -1206f, -1312f, 839f)), Struct_1(-175f, false, vec4<u32>(0u, 26020u, 922u, 0u), 0u, vec4<f32>(1985f, -1093f, -321f, -425f)), Struct_1(574f, false, vec4<u32>(0u, 51982u, 24959u, 0u), 0u, vec4<f32>(-762f, -1848f, -451f, 754f)), Struct_1(188f, false, vec4<u32>(0u, 9453u, 17731u, 1u), 14241u, vec4<f32>(-265f, -1000f, 1000f, 528f)), Struct_1(-400f, false, vec4<u32>(54404u, 4294967295u, 50985u, 55399u), 73692u, vec4<f32>(151f, 769f, 488f, -273f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global0 = Struct_3(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(global0.a, global0.a, -2147483647i, 1i)), vec4<i32>(global0.a, -1i, global0.d, 0i)), i32(-1i) * -2147483647i), vec2<i32>(global0.a, countOneBits(_wgslsmith_sub_i32(0i, global0.d))) << (abs(global1.c.wy) % vec2<u32>(32u)), vec2<bool>(false, global0.c.x), global0.a);
    var var_0 = global1.a;
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~54645u) | ~_wgslsmith_div_u32(u_input.a.x, 72970u), global1.d), 25163u);
    global0 = Struct_3(-2147483647i, ~max(global0.b, vec2<i32>(~54688i, 5787i)), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(553f)) * global1.a) >= _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(max(global1.e.x, -781f))), false), -global0.a);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a, _wgslsmith_div_f32(global1.a, global1.a), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1135f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, _wgslsmith_f_op_f32(global1.e.x + global3.x), 708f, global1.a)))));
    return min(~global0.b.x, firstTrailingBit(-_wgslsmith_div_i32(global0.d, -38003i)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_1(-608f, all(vec3<bool>(global3.x != global1.e.x, global0.c.x, false)) || true, (vec4<u32>(arg_0, _wgslsmith_mod_u32(global1.d, 62628u), _wgslsmith_sub_u32(arg_0, 40002u), global1.c.x) << (global1.c % vec4<u32>(32u))) ^ abs(~vec4<u32>(1u, global1.c.x, 26920u, u_input.a.x)), global1.c.x, global2[_wgslsmith_index_u32(1506u, 11u)]);
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a, i32(-1i) * -46178i, 8675i), vec3<i32>(-1i) * -vec3<i32>(global0.a, -73873i, -2147483647i)), firstLeadingBit(-vec3<i32>(16871i, 17727i, global0.d))), _wgslsmith_mod_vec3_i32(vec3<i32>(func_3(), -_wgslsmith_clamp_i32(-1i, global0.d, global0.a), _wgslsmith_mult_i32(-global0.d, global0.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.d, _wgslsmith_add_i32(global0.b.x, 1i), -24347i), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global0.d, global0.a), vec3<i32>(i32(-1i) * -1i, i32(-1i) * -2147483647i, func_3()))));
    let var_2 = any(!select(vec4<bool>(global1.b, false, var_0.b, false), select(vec4<bool>(true, true, global1.b, false), !vec4<bool>(var_0.b, global1.b, global0.c.x, var_0.b), !vec4<bool>(global1.b, global0.c.x, true, var_0.b)), !select(vec4<bool>(true, false, global1.b, var_0.b), vec4<bool>(var_0.b, true, global1.b, true), vec4<bool>(true, true, global0.c.x, false))));
    let var_3 = !all(vec2<bool>(false, true));
    let var_4 = vec2<u32>(_wgslsmith_mod_u32(~select(0u, 1u, true), 100474u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(global1.d, u_input.a.x), global1.c.xw, global0.c), u_input.a & vec2<u32>(106678u, arg_0)), global1.c.wz) & 4294967295u);
    return Struct_3(-(i32(-1i) * -abs(-9176i)), abs(firstTrailingBit(~var_1.xy)), global0.c, -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, 0i) << (vec3<u32>(18561u, var_4.x, 43928u) % vec3<u32>(32u)), var_1), -_wgslsmith_dot_vec2_i32(global0.b, global0.b)));
}

fn func_1() -> f32 {
    let var_0 = !all(vec2<bool>(global0.c.x || true, true)) & !all(vec4<bool>(global1.b, global1.b, global0.d <= global0.a, u_input.a.x > 1u));
    global3 = _wgslsmith_f_op_vec4_f32(global1.e * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1512f, _wgslsmith_f_op_f32(exp2(global3.x)), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1271f)))), -943f, _wgslsmith_f_op_f32(-1f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-155f, global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-210f))), global3.x, 1148f)));
    global0 = func_2(~46695u);
    global0 = func_2(4294967295u);
    let var_1 = u_input.a.x;
    return 711f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))))), global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a)))))), -675f);
    global4 = array<Struct_1, 5>();
    var var_0 = Struct_2(~(~firstTrailingBit(22902u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e.wwy) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, 611f, global1.a), global1.e.zzx))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, global3.x, global1.a))))))), Struct_1(global1.e.x, true, vec4<u32>(u_input.a.x, _wgslsmith_add_u32(~0u, global1.c.x), ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), reverseBits(128562u)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.c.x, u_input.a.x, 65459u), vec3<u32>(global1.d, 4294967295u, global1.c.x)), min(vec3<u32>(global1.d, u_input.a.x, 0u), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 2275f) * _wgslsmith_f_op_f32(global1.e.x * global3.x)), -136f)), 62162u, !vec4<bool>(true, true, all(select(vec4<bool>(false, false, global1.b, false), vec4<bool>(false, false, global0.c.x, global0.c.x), vec4<bool>(false, true, true, true))), false));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~max(1u, ~(~u_input.a.x)), 11u)], vec2<u32>(firstLeadingBit(2449u ^ _wgslsmith_dot_vec3_u32(var_0.c.c.xwx, vec3<u32>(1u, 1u, 41429u))), global1.c.x), global0.a, abs(vec4<i32>(_wgslsmith_sub_i32(global0.a, _wgslsmith_sub_i32(global0.b.x, 38360i)), global0.b.x, _wgslsmith_mult_i32(i32(-1i) * -10470i, countOneBits(global0.a)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i), -31965i >> (var_0.a % 32u), func_3()))), ~0u);
}

