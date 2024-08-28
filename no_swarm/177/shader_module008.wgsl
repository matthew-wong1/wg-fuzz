struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-15922i, vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec3<i32>(-6268i, -28106i, 437i), 863f), -242f, Struct_1(-1i, vec4<u32>(0u, 4294967295u, 0u, 52304u), vec3<i32>(-1i, 21602i, i32(-2147483648)), -770f), vec2<f32>(-1395f, 1376f)), vec3<u32>(4294967295u, 4294967295u, 38893u), 0u, 2147483647i, 29675u);

var<private> global1: vec3<u32> = vec3<u32>(25296u, 36769u, 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global1 = arg_0.c.xwz;
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~arg_0.c), _wgslsmith_sub_vec4_u32(global0.a.a.b, vec4<u32>(global0.a.c.b.x, arg_0.b, 1981u, 20727u) ^ vec4<u32>(global1.x, 30160u, arg_0.c.x, 20127u))), ~arg_0.b), firstTrailingBit(1u), global1.x << ((global1.x << (firstLeadingBit(~38754u) % 32u)) % 32u), arg_0.b);
    var var_1 = global0.a.c;
    var var_2 = reverseBits(vec4<u32>(_wgslsmith_sub_u32(arg_0.c.x, _wgslsmith_mult_u32(33010u, firstTrailingBit(1u))), _wgslsmith_mod_u32(0u, 1u), var_0.x, ~global1.x));
    let var_3 = arg_0;
    return arg_0.a.x;
}

fn func_2() -> vec3<bool> {
    let var_0 = any(!vec3<bool>(global0.c <= _wgslsmith_add_u32(17329u, 68558u), false, any(vec2<bool>(true, true))));
    global1 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.b.x, global0.b.x, 14346u), global0.b | global0.b), global1.x), global1.x, ~(0u >> (global0.b.x % 32u)));
    global0 = Struct_3(global0.a, global0.b, ~_wgslsmith_add_u32(global1.x | global0.c, 28836u), func_3(Struct_4(vec3<i32>(-1i, select(0i, global0.a.a.c.x, var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.c.c.x, u_input.a, -1i), global0.a.c.c)), global0.c, global0.a.c.b)), 98542u >> (~(global1.x & max(global0.e, global1.x)) % 32u));
    var var_1 = Struct_3(Struct_2(Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 2426i), vec3<i32>(global0.a.a.a, global0.a.a.a, u_input.a)), vec4<u32>(13031u, ~0u, ~4294967295u, global1.x), ~(vec3<i32>(global0.a.c.c.x, -28387i, u_input.a) | vec3<i32>(-2147483647i, 2147483647i, global0.a.a.c.x)), _wgslsmith_div_f32(global0.a.d.x, _wgslsmith_f_op_f32(min(global0.a.a.d, global0.a.a.d)))), _wgslsmith_f_op_f32(global0.a.a.d - -653f), global0.a.a, vec2<f32>(global0.a.a.d, global0.a.a.d)), abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, global1.x), vec3<u32>(global1.x, global0.e, 43834u))) | (vec3<u32>(min(1u, global0.c), firstTrailingBit(45168u), global1.x) ^ global0.b), global0.c ^ ~select(~0u, global1.x, -1i < global0.a.c.a), ~(-select(global0.a.a.c.x, -1i >> (global0.c % 32u), any(vec3<bool>(true, false, false)))), global1.x >> (_wgslsmith_add_u32(_wgslsmith_add_u32(~global0.e, abs(0u)), 2715u) % 32u));
    global0 = Struct_3(var_1.a, vec3<u32>(firstLeadingBit(7770u) >> (_wgslsmith_mod_u32(global0.b.x, ~global0.a.a.b.x) % 32u), 3155u, _wgslsmith_clamp_u32(var_1.b.x, countOneBits(0u), 2809u)), max(countOneBits(~(var_1.c & 15017u)), min(firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.e), var_1.a.c.b.zz)) << (max(~global0.a.c.b.x, ~0u) % 32u)), _wgslsmith_dot_vec2_i32(-(~_wgslsmith_add_vec2_i32(vec2<i32>(61848i, global0.a.c.c.x), global0.a.a.c.zz)), vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(37052i, u_input.a, u_input.a, 2490i), _wgslsmith_add_vec4_i32(vec4<i32>(9335i, var_1.d, global0.a.a.c.x, var_1.d), vec4<i32>(u_input.a, 0i, var_1.d, var_1.d))))), min(~_wgslsmith_mult_u32(abs(global1.x), ~0u), 76864u));
    return !vec3<bool>(false, select(true && all(vec2<bool>(false, var_0)), false, var_0), _wgslsmith_f_op_f32(abs(1750f)) <= global0.a.a.d);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = all(!func_2());
    return Struct_3(global0.a, (vec3<u32>(45042u, _wgslsmith_dot_vec4_u32(arg_1.a.b, vec4<u32>(global1.x, arg_1.a.b.x, 1u, 0u)), 1u) ^ abs(select(vec3<u32>(global0.e, arg_1.a.b.x, arg_1.a.b.x), arg_1.c.b.xyx, true))) | (vec3<u32>(global0.b.x, 16837u, 43905u) << (min(~vec3<u32>(0u, 111104u, arg_1.c.b.x), select(vec3<u32>(29281u, 19011u, global1.x), global0.b, false)) % vec3<u32>(32u))), select(min(_wgslsmith_sub_u32(abs(16671u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 1u, 4294967295u), vec3<u32>(arg_1.c.b.x, 0u, arg_1.a.b.x))), 86020u), 1u, true), u_input.a, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = (_wgslsmith_add_u32(global1.x, ~min(10141u, global0.b.x)) >= select(1u, 4294967295u, !(global1.x != 12951u))) == false;
    global0 = func_1(26695i, global0.a);
    var var_2 = Struct_3(Struct_2(func_1(1i, func_1(-global0.a.c.a, func_1(global0.d, global0.a).a).a).a.a, _wgslsmith_f_op_f32(global0.a.b * _wgslsmith_f_op_f32(-global0.a.b)), func_1(u_input.a, global0.a).a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, _wgslsmith_f_op_f32(global0.a.d.x * global0.a.d.x)))), vec3<u32>(select(abs(select(0u, global0.a.c.b.x, false)), _wgslsmith_sub_u32(9141u, global0.b.x), !var_1), ~global0.b.x, ~global0.e), 105719u, _wgslsmith_clamp_i32(-1i, -51244i, ~u_input.a), global1.x);
    let var_3 = ~var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.d);
}

