struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(arg_2.c.a, !global2.c.b, 19896u);
    global0 = vec3<u32>(global2.c.c, _wgslsmith_clamp_u32(~(~104258u), ~4294967295u, ~_wgslsmith_div_u32(global2.c.c, global0.x)), ~1u) >> (vec3<u32>(abs(~(~84196u)), _wgslsmith_div_u32(arg_2.c.c, ~select(56001u, 34843u, var_0.b.x)), ~(~(12327u >> (0u % 32u)))) % vec3<u32>(32u));
    var var_1 = var_0;
    var var_2 = arg_2;
    var var_3 = var_2.c;
    return max(-9512i, ~(-1i));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = ~_wgslsmith_mod_u32(1u, firstTrailingBit(select(abs(global2.c.c), 31885u, !arg_2.b.x)));
    global0 = max(vec3<u32>(_wgslsmith_clamp_u32(~global0.x, 13127u, ~min(arg_2.c, global2.c.c)), max(1u, ~countOneBits(1u)), var_0), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u << (0u % 32u), global0.x, 18925u), max(vec3<u32>(var_0, 21896u, global0.x), vec3<u32>(1u, 1u, global0.x)) | vec3<u32>(4294967295u, 0u, var_0), vec3<u32>(25095u, abs(global0.x), countOneBits(global2.c.c))));
    global2 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-554f, _wgslsmith_f_op_f32(-arg_2.a.x))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b))) * arg_2.a.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.x))), arg_2.a.x, 2244f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1637f + arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -932f)))), vec3<bool>(true, all(vec3<bool>(true, true, true)), !(u_input.b.x != u_input.b.x)), ~(~global0.x) << (_wgslsmith_mod_u32(12251u, arg_2.c) % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.c.a.x))));
    let var_1 = -u_input.b ^ u_input.a;
    global1 = _wgslsmith_sub_i32(-arg_0.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(-1144i, _wgslsmith_mod_i32(u_input.b.x, -1i)), 2147483647i));
    return arg_0.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, arg_0.x, abs(max(var_1.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.x, arg_0.x), u_input.a.yyx)), vec4<i32>(13408i, firstLeadingBit(min(var_1.x, -2147483647i)), _wgslsmith_mod_i32(u_input.b.x, abs(var_1.x)), _wgslsmith_clamp_i32(var_1.x | arg_0.x, 21550i, arg_0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = func_4(abs(vec2<i32>(reverseBits(func_3(global2.c.a.x, arg_0.c, Struct_2(-938f, -1000f, arg_0, 744f))), _wgslsmith_div_i32(u_input.a.x, reverseBits(u_input.a.x)))), arg_0.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(506f, global2.d))), arg_0.a.x, 1000f), arg_1.c.b, reverseBits(global2.c.c)));
    global0 = min(vec3<u32>(max(firstLeadingBit(global2.c.c), _wgslsmith_sub_u32(~1u, abs(7222u))), ~1u, arg_0.c), ~_wgslsmith_sub_vec3_u32(vec3<u32>(~0u, 21080u, _wgslsmith_mod_u32(61666u, 29270u)), vec3<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.c.c, 96439u, 1u), vec4<u32>(arg_0.c, 2590u, 4156u, 1u)), ~11857u)));
    global2 = arg_1;
    let var_1 = ~vec3<u32>(~(~4294967295u), select(global0.x >> ((arg_0.c | 4276u) % 32u), ~arg_0.c >> (~3657u % 32u), true), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), 4294967295u, _wgslsmith_add_u32(1u, 107561u)), vec3<u32>(0u, 0u, 41666u) & _wgslsmith_mult_vec3_u32(vec3<u32>(global2.c.c, global2.c.c, arg_0.c), vec3<u32>(global2.c.c, 56135u, 14702u))));
    let var_2 = 69074u;
    return global2.c.a.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    global2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(abs(global2.c.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_3.d) * _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(global2.d)))), any(vec3<bool>(true, arg_3.d < global2.c.a.x, false)))), 220f, Struct_1(_wgslsmith_f_op_vec4_f32(arg_3.c.a * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 452f, 1036f, -112f), global2.c.a)), arg_3.c.b, arg_2.x), _wgslsmith_f_op_f32(-arg_0.x));
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, global0.x), 0u, _wgslsmith_dot_vec2_u32(arg_2.yz, ~global0.xz), ~arg_3.c.c), _wgslsmith_mult_vec4_u32(vec4<u32>(~global0.x, global0.x, global0.x, 4294967295u >> (arg_2.x % 32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, global0.x, global0.x, arg_2.x), ~vec4<u32>(25678u, global0.x, 15267u, 1u)))) ^ select(~vec4<u32>(global2.c.c & 0u, ~26007u, arg_2.x & arg_2.x, ~59480u), ~(~vec4<u32>(arg_2.x, 84668u, 23715u, arg_3.c.c)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(19949u, 1u, 1u, arg_2.x), min(vec4<u32>(4294967295u, 20640u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, arg_2.x, 1u))), true);
    global1 = select(u_input.b.x, -55576i, arg_3.c.b.x);
    let var_1 = 69557u;
    global1 = i32(-1i) * -2147483647i;
    return Struct_1(arg_0, vec3<bool>(true, any(!vec3<bool>(global2.c.b.x, arg_3.c.b.x, global2.c.b.x)), (select(false, global2.c.b.x, true) | (arg_3.a <= -1396f)) | (_wgslsmith_f_op_f32(-global2.b) >= _wgslsmith_f_op_f32(min(arg_3.a, 1466f)))), firstLeadingBit(firstLeadingBit(~0u)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2.c.a + vec4<f32>(_wgslsmith_f_op_f32(min(-1107f, global2.c.a.x)), _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.c.a, arg_0.c.b, 4294967295u), arg_0)), _wgslsmith_f_op_f32(sign(global2.c.a.x)), arg_0.b)))), abs(-(vec2<i32>(-1i) * -u_input.b.xy)), ~vec3<u32>(abs(firstTrailingBit(global2.c.c)), _wgslsmith_sub_u32(1u, global2.c.c), global2.c.c), Struct_2(arg_0.b, -542f, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(global2.c.a, vec4<f32>(200f, -1000f, arg_0.b, -405f))), vec4<f32>(global2.c.a.x, 863f, global2.b, arg_0.b), !vec4<bool>(arg_0.c.b.x, global2.c.b.x, true, arg_0.c.b.x))), vec3<bool>(global0.x <= 1u, arg_0.c.b.x, any(global2.c.b)), 4294967295u), _wgslsmith_f_op_f32(abs(arg_0.d))));
    let var_1 = arg_0;
    var var_2 = arg_0.c;
    let var_3 = 385f;
    var var_4 = arg_0;
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)) + 788f), 579f), _wgslsmith_f_op_f32(abs(var_0.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a + var_2.a)))), !var_1.c.b, var_2.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-456f))))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> i32 {
    var var_0 = func_1(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f)) + arg_1.a), -1138f, global2.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2106f, _wgslsmith_f_op_f32(sign(-1600f)))))).c;
    return -(~(u_input.a.x | u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(firstLeadingBit(vec4<i32>(u_input.a.x, func_6(~global0.xx, func_1(Struct_2(global2.c.a.x, 1000f, Struct_1(vec4<f32>(global2.b, 364f, -1000f, -1000f), vec3<bool>(global2.c.b.x, global2.c.b.x, global2.c.b.x), global0.x), 557f)), func_1(Struct_2(-574f, -125f, global2.c, -259f)), min(global0.x, 0u)), u_input.b.x, u_input.a.x)));
    var var_1 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c.c, global0.x, 21075u, 4255u), max(vec4<u32>(95495u, global2.c.c, global2.c.c, global2.c.c), vec4<u32>(1u, global0.x, global0.x, global0.x)), abs(vec4<u32>(1764u, 2795u, 4294967295u, global0.x))), vec4<u32>(_wgslsmith_div_u32(5489u, 1u), select(2095u, 4294967295u, false), global2.c.c, 0u)));
    let var_2 = ~vec2<i32>(var_0.x, 2147483647i);
    let var_3 = global2.c;
    let var_4 = abs(var_2.x);
    global1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1429f, _wgslsmith_f_op_vec4_f32(floor(var_3.a)), ~var_0.zz, 6481i, 437f);
}

