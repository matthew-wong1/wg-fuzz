struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 11> = array<i32, 11>(32818i, -1i, -19351i, i32(-2147483648), 63573i, -31647i, -9579i, 7920i, -6149i, -17870i, 1i);

var<private> global2: Struct_2 = Struct_2(Struct_1(52500u));

var<private> global3: f32 = 1590f;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> i32 {
    let var_0 = min(global0.a, _wgslsmith_mult_u32(4294967295u, ~(abs(4294967295u) ^ _wgslsmith_clamp_u32(4294967295u, 131946u, 25118u))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(209f, 495f)), -242f), 1f)), -244f)), 1000f);
    var var_2 = vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1756f + var_1) - -625f)), -563f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(112f))))), false);
    var var_3 = ~global0.a;
    var var_4 = firstTrailingBit(abs(0i));
    return _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(arg_2.x << (global4.a % 32u)), ~14936i), _wgslsmith_add_i32(-1i, -2147483647i)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = 212f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global4.a, 20268u, 17811u), _wgslsmith_clamp_vec3_u32(vec3<u32>(45495u, 4294967295u, global0.a), vec3<u32>(12014u, global4.a, global4.a), vec3<u32>(global0.a, global2.a.a, 52708u))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(0u, 4294967295u, 0u)), ~vec3<u32>(global0.a, global0.a, 6994u), ~vec3<u32>(947u, global2.a.a, 0u)))));
    let var_3 = ~_wgslsmith_div_u32(4294967295u, global0.a);
    global1 = array<i32, 11>();
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(315f, -249f), vec2<f32>(418f, -1000f), vec2<bool>(false, true)))))))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f)))), -459f, !arg_0.x & !arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -439f)), 579f)));
    var var_1 = Struct_2(global2.a);
    let var_2 = 274f;
    return select(select(!vec3<bool>(true, arg_0.x || arg_0.x, true), vec3<bool>(all(vec3<bool>(true, false, true)), any(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), !(!arg_0.x)), !all(vec2<bool>(arg_0.x, false))), !(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), min(u_input.a.x, 1i) != 1i);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = ~_wgslsmith_div_vec2_i32(-_wgslsmith_add_vec2_i32(-u_input.a.xz, _wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.zw, vec2<i32>(0i, global1[_wgslsmith_index_u32(11199u, 11u)]))), reverseBits(-firstTrailingBit(vec2<i32>(arg_0.x, 21833i))));
    var var_1 = Struct_2(Struct_1(arg_1.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(316f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(525f * arg_2.x)))) + 443f);
    let var_3 = _wgslsmith_div_u32(4294967295u, 407u);
    let var_4 = var_2;
    return !func_4(func_3(vec2<bool>(false, var_1.a.a >= global4.a)), Struct_1(firstLeadingBit(var_3)), ~vec4<i32>(48006i, -29181i, 60040i, ~17087i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(-_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.xyw, u_input.a.zww)), -55172i) >= _wgslsmith_mod_i32(-firstTrailingBit(-u_input.a.x), -(max(global1[_wgslsmith_index_u32(1334u, 11u)], u_input.a.x) | abs(-9872i)));
    var var_1 = vec3<i32>(max(u_input.a.x | ~_wgslsmith_mod_i32(2147483647i, 1i), u_input.a.x << (~_wgslsmith_mult_u32(36918u, global2.a.a) % 32u)), global1[_wgslsmith_index_u32(79102u, 11u)], ~u_input.a.x);
    let var_2 = func_1(global2.a.a, vec4<bool>(true, true, true, true), abs(u_input.a.wzz));
    var_0 = all(select(vec3<bool>(true, all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(select(629f, 828f, false)) != 529f), vec3<bool>(false, true, all(func_2(u_input.a, vec3<u32>(global4.a, global0.a, global0.a), vec2<f32>(-893f, -1000f), vec4<i32>(1i, 12161i, var_1.x, var_1.x)))), true));
    let var_3 = global2.a;
    var var_4 = Struct_2(Struct_1(reverseBits(global0.a)));
    var_1 = u_input.a.yxy;
    var var_5 = u_input.a.zw;
    let var_6 = vec2<u32>(countOneBits(0u ^ _wgslsmith_sub_u32(var_4.a.a, 0u)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u >> (var_4.a.a % 32u), ~0u), ~var_6), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1475f, -762f, -2011f, 545f))), vec4<f32>(1038f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(260f, -353f, true)), _wgslsmith_f_op_f32(floor(852f)))), _wgslsmith_f_op_f32(692f + _wgslsmith_f_op_f32(f32(-1f) * -742f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f - -183f) * _wgslsmith_f_op_f32(min(-273f, 400f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1149f + _wgslsmith_f_op_f32(f32(-1f) * -539f)), _wgslsmith_f_op_f32(f32(-1f) * -783f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), 620f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-220f, 1245f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-623f, -1000f) - vec2<f32>(-926f, -1199f))))));
}

