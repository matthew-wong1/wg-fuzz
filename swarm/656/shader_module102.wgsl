struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<u32> = vec4<u32>(0u, 4294967295u, 4294967295u, 0u);

var<private> global2: Struct_2 = Struct_2(false, Struct_1(vec2<u32>(5766u, 0u)), true, vec3<i32>(-5363i, 16025i, -19394i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1667f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1866f + _wgslsmith_f_op_f32(f32(-1f) * -194f)))));
    global0 = arg_1;
    let var_1 = 1i;
    var var_2 = 31198i;
    var var_3 = u_input.a.x;
    return -287f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-160f, _wgslsmith_f_op_f32(sign(1330f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> u32 {
    var var_0 = vec2<u32>(~abs(62559u), min(1147u, ~4294967295u));
    var var_1 = Struct_4(arg_1.d.a.x, -2147483647i, global1.x > 6073u, Struct_1(~(abs(arg_1.d.a) ^ (global1.xx & arg_1.d.a))));
    return ~global1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(global0.d.a.x, ~global0.d.a.x), func_4(~global1.x, Struct_4(global0.d.a.x, 2147483647i, func_3(global2.d.xy & vec2<i32>(global0.b, 58224i), Struct_4(46590u, global0.b, false, Struct_1(u_input.a.yx)), !vec4<bool>(true, false, global0.c, true), Struct_4(global1.x, global2.d.x, false, Struct_1(vec2<u32>(global0.a, 69612u)))), Struct_1(u_input.a.yz)), 0i), ~44923u, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global1.x), vec2<u32>(1u, global1.x), u_input.a.zx), vec2<u32>(global2.b.a.x, global2.b.a.x)), 1u, select(reverseBits(max(global2.b.a.x, 0u)), 4294967295u, true)));
    var var_1 = u_input.a.x;
    var_1 = ~u_input.a.x;
    global1 = firstLeadingBit(firstLeadingBit(countOneBits(_wgslsmith_mod_vec4_u32(var_0, _wgslsmith_mod_vec4_u32(var_0, vec4<u32>(72463u, global2.b.a.x, global0.a, var_0.x))))));
    var_1 = global0.a;
    return global0.d;
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    global2 = Struct_2(any(!(!(!vec2<bool>(global2.a, global0.c)))), func_2(), global2.c, firstTrailingBit(_wgslsmith_mult_vec3_i32(global2.d, _wgslsmith_mult_vec3_i32(global2.d, global2.d))));
    let var_0 = -1322f;
    var var_1 = ~global2.d.x;
    var var_2 = Struct_1(~vec2<u32>(56188u, 1u));
    let var_3 = select(select(select(!select(vec4<bool>(false, global2.a, false, global2.c), vec4<bool>(true, true, true, false), vec4<bool>(global2.a, global0.c, true, false)), select(select(vec4<bool>(false, global2.a, global2.c, false), vec4<bool>(false, global2.c, true, global2.a), false), select(vec4<bool>(global2.c, true, true, global0.c), vec4<bool>(false, false, true, false), false), global2.c), !(1i != arg_0.x)), !select(select(vec4<bool>(global2.a, false, false, false), vec4<bool>(true, true, true, global2.a), false), vec4<bool>(global0.c, global2.a, false, global2.c), select(vec4<bool>(global0.c, false, false, true), vec4<bool>(true, global2.a, true, false), global2.a)), global2.c), !vec4<bool>(all(vec3<bool>(global2.a, global2.a, global0.c)), global2.a, true, ~global0.b != global2.d.x), false);
    return Struct_4(select(_wgslsmith_div_u32(global2.b.a.x, 0u) & ~var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(72296u, u_input.a.x, 70084u, 1459u) ^ vec4<u32>(1u, 58151u, u_input.a.x, global0.d.a.x), ~vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), global0.c) & _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(24920u, 1u, 45458u, var_2.a.x) >> (vec4<u32>(0u, global1.x, global1.x, var_2.a.x) % vec4<u32>(32u))), ~(~vec4<u32>(global1.x, global0.a, u_input.a.x, global0.d.a.x))), -global2.d.x, global2.c, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(global0.b, _wgslsmith_div_i32(54068i, global2.d.x))), _wgslsmith_mult_vec2_i32(-max(vec2<i32>(19723i, 2147483647i), global2.d.yz), vec2<i32>(global0.b, min(global0.b, global0.b)))));
    global2 = Struct_2(global0.c, Struct_1(_wgslsmith_div_vec2_u32(global1.wx, firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.zy)))), global0.c, _wgslsmith_mult_vec3_i32(select(reverseBits(global2.d), global2.d, global0.c | false), select(global2.d, abs(-global2.d), select(vec3<bool>(global0.c, false, global0.c), select(vec3<bool>(false, global0.c, false), vec3<bool>(global2.c, global0.c, global2.a), vec3<bool>(global0.c, global0.c, true)), true))));
    let var_0 = Struct_3(func_1(vec2<i32>(global2.d.x & global0.b, 0i)).d, ~_wgslsmith_add_u32(42378u, u_input.a.x));
    var var_1 = vec2<f32>(1f, 1f);
    let var_2 = Struct_2(!(!(_wgslsmith_f_op_f32(var_1.x - 321f) <= var_1.x)), func_2(), any(vec2<bool>(any(vec3<bool>(global2.c, false, global2.a)) && false, var_0.b != 42090u)), abs(~(~(~global2.d))));
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), vec3<i32>(-2147483647i, -58400i, i32(-1i) * -_wgslsmith_clamp_i32(-1i, global0.b, 0i)));
}

