struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-343f, -283f, 960f, -213f);

var<private> global1: f32;

var<private> global2: array<f32, 1> = array<f32, 1>(-489f);

var<private> global3: i32 = 2147483647i;

var<private> global4: vec2<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<u32> {
    global3 = ~arg_1.e;
    global0 = array<f32, 4>();
    global4 = vec2<bool>(!global4.x, true);
    var var_0 = -1439f;
    var var_1 = arg_0.x;
    return (vec2<u32>(abs(u_input.b) ^ firstTrailingBit(u_input.b), 0u) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 4294967295u) ^ arg_0.zy, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.b, arg_0.x))) % vec2<u32>(32u))) | vec2<u32>(~u_input.b, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(reverseBits(arg_0.x), ~28198u), ~26904u));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.d;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(1f * 183f), -1098f);
    var var_2 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(max(1u, firstLeadingBit(1u)), abs(4294967295u))), func_3(vec3<u32>(~93821u, reverseBits(~10890u), 4294967295u), Struct_2(abs(u_input.c), Struct_1(true), vec4<i32>(i32(-1i) * -1567i, u_input.e >> (u_input.d.x % 32u), ~(-2147483647i), 38068i), global4.x, u_input.a | _wgslsmith_div_i32(-63947i, u_input.e))));
    let var_3 = Struct_2(firstLeadingBit(-(~u_input.a)), Struct_1(any(!(!vec2<bool>(global4.x, global4.x)))), reverseBits(-(vec4<i32>(1i, -1i, u_input.a, u_input.a) | vec4<i32>(2147483647i, -2147483647i, 15114i, 2147483647i)) << (max(vec4<u32>(1u, 0u, 0u, 0u), ~vec4<u32>(0u, 12120u, 43035u, 16935u)) % vec4<u32>(32u))), global4.x, u_input.e);
    let var_4 = var_3.c.yy << (vec2<u32>(u_input.b, var_0.x >> (16669u % 32u)) % vec2<u32>(32u));
    return var_3;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: u32) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(u_input.d.x), ~arg_2), 1u)]) * arg_0);
    var var_0 = func_2();
    global3 = -14140i;
    let var_1 = Struct_2(u_input.e, Struct_1(var_0.b.a), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, 2147483647i, -1i, var_0.e), var_0.c) & var_0.c, false, -u_input.c);
    let var_2 = countOneBits(u_input.b);
    return Struct_2(~_wgslsmith_dot_vec3_i32(var_0.c.wxx, vec3<i32>(-var_1.a, _wgslsmith_mod_i32(-2147483647i, var_0.a), ~(-1i))), var_1.b, (func_2().c & var_1.c) >> (~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, 0u, arg_2, 0u), min(vec4<u32>(44003u, 62337u, 56550u, arg_2), vec4<u32>(53831u, 1u, 13837u, u_input.d.x))) % vec4<u32>(32u)), false, _wgslsmith_add_i32(1i, ~(-_wgslsmith_mult_i32(var_0.c.x, -2147483647i))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> i32 {
    return _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~(-27478i)), ~func_2().c.wz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_clamp_i32(func_4(vec4<u32>(~1u, _wgslsmith_mult_u32(51741u, 1u), u_input.d.x, u_input.b), global4.x, func_1(global2[_wgslsmith_index_u32(abs(74377u), 1u)], vec4<f32>(1385f, 347f, global0[_wgslsmith_index_u32(39657u, 4u)], -192f), ~6466u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 1u)] + -1810f))), -18293i, -7271i), Struct_1((1i >> (22u % 32u)) <= func_2().c.x), vec4<i32>(func_2().a, _wgslsmith_clamp_i32(u_input.c, 2147483647i >> (1u % 32u), -2147483647i), countOneBits(_wgslsmith_add_i32(-1i, u_input.a)), 0i) << ((countOneBits(vec4<u32>(u_input.d.x, 0u, u_input.b, 1u)) >> (~vec4<u32>(u_input.b, u_input.b, u_input.d.x, 45134u) % vec4<u32>(32u))) % vec4<u32>(32u)), true, u_input.a);
    var var_1 = Struct_1((7393i << (firstLeadingBit(u_input.b) % 32u)) > _wgslsmith_add_i32((u_input.a >> (u_input.b % 32u)) | _wgslsmith_add_i32(u_input.a, -491i), func_1(600f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, 736f, -574f, global2[_wgslsmith_index_u32(1u, 1u)])), reverseBits(u_input.b)).a));
    var var_2 = func_2();
    global2 = array<f32, 1>();
    global0 = array<f32, 4>();
    global3 = u_input.c;
    var var_3 = min(_wgslsmith_mult_vec2_i32((~var_0.c.xw >> (_wgslsmith_mod_vec2_u32(u_input.d.xy, vec2<u32>(77197u, u_input.d.x)) % vec2<u32>(32u))) >> (abs(_wgslsmith_add_vec2_u32(u_input.d.zy, vec2<u32>(1u, 80178u))) % vec2<u32>(32u)), -var_0.c.xy), vec2<i32>(u_input.e, _wgslsmith_sub_i32(var_0.a, ~1i)));
    let var_4 = vec3<u32>(abs(~(u_input.b >> (u_input.b % 32u))) >> (u_input.b % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(50977u, 1u, u_input.d.x, 1u), ~vec4<u32>(0u, 4294967295u, u_input.d.x, u_input.b)) | ~(~vec4<u32>(62682u, 48865u, 4294967295u, u_input.d.x)), ~(~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, u_input.d.x)))), 18066u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1106f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-2618f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(556f - -252f), global2[_wgslsmith_index_u32(1u, 1u)], select(global4.x, var_0.d, true))), 668f)), -u_input.a, 1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, var_4.x, u_input.d.x), u_input.d, any(!vec4<bool>(true, false, global4.x, true))), (~vec3<u32>(7917u, 71180u, u_input.d.x) >> (select(vec3<u32>(u_input.d.x, u_input.b, var_4.x), u_input.d, false) % vec3<u32>(32u))) ^ vec3<u32>(func_3(vec3<u32>(78002u, 4294967295u, var_4.x), Struct_2(var_2.c.x, var_0.b, vec4<i32>(var_0.a, var_0.e, 2147483647i, 2147483647i), true, u_input.e)).x, u_input.b, _wgslsmith_add_u32(1u, 0u))));
}

