struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, 14462i, i32(-2147483648), 1i), true, 50737u, vec4<f32>(1694f, -1327f, 1000f, 788f));

var<private> global1: vec2<bool>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(-arg_1.d.x));
    var var_1 = _wgslsmith_f_op_f32(global0.d.x * arg_1.d.x);
    global0 = arg_1;
    global2 = Struct_2(54444i, vec4<bool>(any(vec4<bool>(true, any(vec3<bool>(false, true, global0.b)), select(true, false, false), true)), global1.x, true, arg_1.b));
    global2 = Struct_2(global2.a, !global2.b);
    return global0.c;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<u32>) -> i32 {
    var var_0 = Struct_1(arg_1.a | (-arg_1.a ^ ~(-vec4<i32>(-22096i, 0i, 1i, arg_0.a))), true, arg_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.d, vec4<f32>(-773f, -763f, -1296f, -262f)) - _wgslsmith_div_vec4_f32(vec4<f32>(2439f, arg_1.d.x, 321f, 1198f), vec4<f32>(1000f, global0.d.x, -256f, arg_1.d.x)))) + _wgslsmith_f_op_vec4_f32(-arg_1.d)));
    global1 = select(vec2<bool>(true, !all(vec4<bool>(arg_0.b.x, true, false, arg_1.b)) & false), vec2<bool>(true, global1.x), select(vec2<bool>(global1.x, !all(global2.b.zzx)), global2.b.zw, global2.b.xw));
    global0 = Struct_1(-select(var_0.a, _wgslsmith_add_vec4_i32(u_input.d, arg_1.a) | global0.a, arg_0.b), global1.x, _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.a.x, arg_1.c, arg_3.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(78520u, var_0.c, arg_1.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, global0.c, var_0.c), vec3<u32>(4294967295u, 9425u, 0u), vec3<u32>(arg_3.x, global0.c, 1u))), ~vec3<u32>(arg_3.x, arg_1.c, arg_3.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.x, u_input.a.x, 79173u), vec3<u32>(u_input.e, var_0.c, arg_3.x)) % vec3<u32>(32u)), vec3<u32>(arg_1.c, global0.c, 0u))), vec4<f32>(-1710f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(434f, var_0.d.x, arg_1.b)), 136f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-367f)) + arg_1.d.x), var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.d.x * global0.d.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.d.x, -911f)) * _wgslsmith_f_op_f32(f32(-1f) * -163f)))));
    global1 = !vec2<bool>(!all(vec3<bool>(global2.b.x, true, false)), global0.b);
    let var_1 = ~_wgslsmith_mod_vec3_i32(global0.a.xzw >> (~vec3<u32>(4294967295u, arg_1.c, global0.c) % vec3<u32>(32u)), var_0.a.wyy);
    return _wgslsmith_sub_i32(1i, min(-12566i, arg_0.a));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = global0.c;
    let var_1 = global1.x;
    let var_2 = Struct_1(~(global0.a ^ vec4<i32>(arg_0, 18774i, arg_0, -216i)) << (vec4<u32>(func_2(u_input.d.zy ^ vec2<i32>(global2.a, 2147483647i), Struct_1(vec4<i32>(arg_0, global0.a.x, 34200i, -41218i), true, u_input.c, vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x))), _wgslsmith_mult_u32(~1u, u_input.c), max(global0.c, u_input.a.x) >> (86479u % 32u), _wgslsmith_mult_u32(max(22091u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.c, u_input.c), vec3<u32>(4294967295u, 32538u, 37407u)))) % vec4<u32>(32u)), global2.b.x, ~global0.c, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(520f - global0.d.x) + _wgslsmith_f_op_f32(635f + 430f)))), 2263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-494f - global0.d.x) * _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)))));
    let var_3 = Struct_2(_wgslsmith_div_i32(abs(-2147483647i), firstLeadingBit(func_3(Struct_2(arg_0, global2.b), Struct_1(vec4<i32>(arg_0, u_input.d.x, arg_0, 1i), global0.b, u_input.e, vec4<f32>(1159f, -1560f, 1014f, global0.d.x)), _wgslsmith_clamp_vec2_i32(u_input.d.wy, global0.a.xy, global0.a.ww), _wgslsmith_mod_vec2_u32(vec2<u32>(23707u, 27801u), vec2<u32>(26939u, u_input.c))))), vec4<bool>(true, select(all(!global2.b.zx), global2.b.x, !(!var_2.b)), true, true));
    let var_4 = ~min(1i, arg_0);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (all(!global2.b) || !func_1(_wgslsmith_dot_vec2_i32(u_input.d.yw, u_input.d.zw))) && !all(global2.b.wyz);
    var var_1 = Struct_1(~u_input.d, true, 26456u, _wgslsmith_f_op_vec4_f32(round(global0.d)));
    let var_2 = firstTrailingBit(~(-select(var_1.a, vec4<i32>(global0.a.x, u_input.b, u_input.d.x, global2.a), false)) >> ((reverseBits(firstTrailingBit(vec4<u32>(var_1.c, 45364u, 0u, 4294967295u))) >> (abs(~vec4<u32>(var_1.c, 18231u, var_1.c, 10448u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global2 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, u_input.d.x, min(_wgslsmith_mult_i32(global0.a.x, u_input.d.x), global0.a.x), 26156i), select(~vec4<i32>(var_2.x, 51546i, 0i, var_2.x) << (vec4<u32>(global0.c, 64856u, 4294967295u, 1u) % vec4<u32>(32u)), select(var_1.a, vec4<i32>(u_input.b, global0.a.x, 40659i, 1i) << (vec4<u32>(0u, 0u, global0.c, global0.c) % vec4<u32>(32u)), var_0 || global1.x), !(!global2.b))), global2.b);
    var var_3 = _wgslsmith_f_op_f32(ceil(var_1.d.x));
    global2 = Struct_2(min(var_1.a.x, 2147483647i), vec4<bool>(global0.b, any(select(!vec4<bool>(true, false, false, global1.x), select(global2.b, global2.b, global0.b), true)), true, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d.wy - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-609f, var_1.d.x), _wgslsmith_f_op_vec2_f32(-var_1.d.xy), false)))), firstLeadingBit(func_3(Struct_2(0i, !vec4<bool>(true, false, global1.x, true)), Struct_1(min(u_input.d, vec4<i32>(global2.a, -1i, -2147483647i, -2097i)), false, 59552u, _wgslsmith_f_op_vec4_f32(max(var_1.d, vec4<f32>(var_1.d.x, global0.d.x, -753f, -1132f)))), _wgslsmith_mod_vec2_i32(select(var_2.yw, var_2.zz, global2.b.yx), var_1.a.zy), vec2<u32>(global0.c >> (u_input.e % 32u), _wgslsmith_add_u32(19016u, 18877u)))));
}

