struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 60728u);

var<private> global1: Struct_4;

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true));

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global4: vec3<i32> = vec3<i32>(26268i, -1223i, 21057i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_div_u32(firstTrailingBit(4294967295u), u_input.b);
    global0 = vec2<u32>(_wgslsmith_mod_u32(~1u, min(12218u, ~_wgslsmith_sub_u32(u_input.c, global0.x))), min(25886u, reverseBits(35805u)));
    let var_1 = vec3<f32>(1638f, 904f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1140f)))) * global1.a.x));
    var var_2 = Struct_3(any(!global1.b.yz), ~u_input.d & 1u);
    let var_3 = Struct_3(true, ~(~_wgslsmith_sub_u32(1u, 0u)));
    return global3.x;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec2<bool>) -> vec2<bool> {
    global2 = array<vec4<bool>, 3>();
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, arg_2.b, 60684u), vec3<u32>(global0.x, arg_0.b, 4294967295u)), ~arg_2.b) << (reverseBits(vec2<u32>(29577u, arg_2.b) & vec2<u32>(arg_2.b, arg_0.b)) % vec2<u32>(32u)), abs(_wgslsmith_div_vec2_u32(abs(vec2<u32>(46089u, u_input.d)), select(vec2<u32>(57278u, 48403u), vec2<u32>(arg_2.b, 21033u), vec2<bool>(false, false))))), ~global0.x, 35373u);
    let var_1 = Struct_3(arg_1, ~(~global0.x));
    var var_2 = vec2<bool>(global1.b.x | (any(!global1.b.zzw) & (!arg_1 || true)), global3.x);
    global0 = var_0.zx;
    return select(global1.b.zy, select(!(!global1.b.yw), global3.yw, false), select(global3.wx, select(vec2<bool>(!var_2.x, true), select(!global3.wx, !arg_3, arg_3), select(!arg_3, arg_3, any(global1.b.wx))), func_3(var_0.x, var_0.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_3(global3.x, ~u_input.d);
    global2 = array<vec4<bool>, 3>();
    let var_1 = Struct_1(~var_0.b, vec2<bool>(global1.b.x, all(!select(vec3<bool>(arg_0.x, true, arg_1.x), vec3<bool>(false, global3.x, global3.x), var_0.a))), countOneBits(~(vec3<u32>(global0.x, 13042u, 4155u) ^ (vec3<u32>(805u, arg_3, var_0.b) >> (vec3<u32>(1u, var_0.b, 4294967295u) % vec3<u32>(32u))))), vec3<bool>(_wgslsmith_clamp_i32(firstTrailingBit(global1.c), -u_input.a, ~(-2147483647i)) != _wgslsmith_dot_vec2_i32(-global4.xy, -global4.zy), global1.b.x, true));
    global0 = abs(~vec2<u32>(u_input.c, arg_3));
    let var_2 = arg_2.x == -1052f;
    return Struct_2(var_1);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global1.a.xyy);
    var var_1 = arg_0.a;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), -1305f, _wgslsmith_f_op_f32(var_0.x - global1.a.x));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-global1.a), global2[_wgslsmith_index_u32(1u, 3u)], -12190i);
    var var_3 = select(!arg_0.a.d, arg_1.a.d, false);
    return 1u;
}

fn func_1() -> u32 {
    global0 = vec2<u32>(func_5(func_4(func_2(Struct_3(global3.x, 0u), global3.x, Struct_3(global3.x, 41140u), vec2<bool>(global1.b.x, global1.b.x)), !vec3<bool>(global1.b.x, global3.x, false), global1.a.zzy, ~45461u), func_4(vec2<bool>(global3.x, global3.x), !vec3<bool>(global1.b.x, global1.b.x, false), _wgslsmith_f_op_vec3_f32(abs(global1.a.wyy)), global0.x), ~global0.x, false), _wgslsmith_mod_u32(_wgslsmith_div_u32(30013u, u_input.b), firstLeadingBit(global0.x)) | ~(~global0.x)) & _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(global0.x, global0.x), vec2<u32>(0u, global0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), min(vec2<u32>(u_input.c, 19453u), vec2<u32>(20226u, u_input.c)), vec2<u32>(10081u, 7607u))));
    global1 = Struct_4(global1.a, vec4<bool>(!global1.b.x, global3.x, false, false), global4.x & 18955i);
    var var_0 = min(vec2<u32>(~min(firstLeadingBit(u_input.d), 0u), 44878u & min(1u, u_input.d >> (global0.x % 32u))), max(vec2<u32>(16687u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, u_input.d), u_input.d)), vec2<u32>(~firstTrailingBit(global0.x), (global0.x << (u_input.b % 32u)) & 1u)));
    global2 = array<vec4<bool>, 3>();
    var var_1 = Struct_3(min(u_input.d, 1u) > 1u, _wgslsmith_mod_u32(global0.x, global0.x) ^ ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, global0.x, u_input.b), ~vec3<u32>(1u, 31618u, var_0.x)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(firstTrailingBit(22305i), firstLeadingBit(_wgslsmith_mult_i32(global4.x, -global4.x)), 0i | _wgslsmith_sub_i32(1i, -global4.x | reverseBits(1i)), 1i);
    global0 = _wgslsmith_add_vec2_u32(~(vec2<u32>(global0.x, ~global0.x) & ~max(vec2<u32>(u_input.c, 101883u), vec2<u32>(39524u, u_input.d))), ~(~(~abs(vec2<u32>(u_input.b, u_input.d)))));
    var var_1 = max(~vec2<u32>(1u, ~(global0.x & u_input.c)), vec2<u32>(_wgslsmith_mod_u32(u_input.b, max(~5867u, reverseBits(global0.x))), _wgslsmith_div_u32(~func_1(), max(u_input.c, 141548u) << (~67920u % 32u))));
    var var_2 = ~(~max(vec3<u32>(global0.x, var_1.x, 4294967295u), vec3<u32>(var_1.x, 42687u, 42521u)) | ~(~vec3<u32>(1u, var_1.x, global0.x))) >> (_wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, 0u, var_1.x)) << (vec3<u32>(1u, var_1.x, 66406u) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, var_1.x, 4294967295u), max(vec3<u32>(11880u, 43221u, global0.x), vec3<u32>(global0.x, 0u, 74985u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 31186u, 31507u), vec3<u32>(global0.x, 4294967295u, 16586u))))) % vec3<u32>(32u));
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, i32(-1i) * -_wgslsmith_mult_i32(-5500i, global1.c), firstLeadingBit(-1i >> (_wgslsmith_sub_u32(1u, u_input.d) % 32u)), min(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), var_0.yw), -15373i)), vec4<i32>(max(_wgslsmith_add_i32(_wgslsmith_add_i32(30689i, u_input.a), 0i), _wgslsmith_dot_vec3_i32(var_0.wxw, vec3<i32>(global4.x, var_0.x, u_input.a))), reverseBits(global4.x) >> ((~global0.x >> (4294967295u % 32u)) % 32u), 9430i, 0i));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(350f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-22606i, global4.x), var_0.ww), -global1.c), reverseBits(vec3<u32>(var_1.x, firstLeadingBit(global0.x), global0.x) >> ((select(vec3<u32>(var_1.x, var_2.x, 34771u), vec3<u32>(var_1.x, 15933u, u_input.b), global1.b.x) << (select(vec3<u32>(17715u, 1u, var_2.x), vec3<u32>(u_input.d, global0.x, u_input.c), true) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

