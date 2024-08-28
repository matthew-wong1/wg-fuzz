struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(2549f)), -704f))))), -1146f);
    let var_1 = arg_0.a;
    var var_2 = firstLeadingBit(var_1.a.zy);
    let var_3 = min(vec2<u32>(0u >> (firstLeadingBit(var_2.x) % 32u), arg_0.e.a.x) >> (vec2<u32>(_wgslsmith_sub_u32(var_1.a.x, _wgslsmith_mod_u32(69563u, arg_0.a.a.x)), var_1.a.x & 4294967295u) % vec2<u32>(32u)), firstLeadingBit((u_input.a.yw & (vec2<u32>(var_2.x, u_input.b.x) | u_input.a.zx)) | abs(~vec2<u32>(21651u, 4294967295u))));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_1.b.x))))) - _wgslsmith_f_op_vec2_f32(arg_0.e.b * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.x, var_0.x), _wgslsmith_f_op_vec2_f32(-var_1.b), arg_0.b.yx))))));
    return vec3<i32>(u_input.c, var_1.c, -30548i);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(~u_input.b, ~(vec2<u32>(select(u_input.a.x, 48479u, true), 431u) ^ abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b))), vec2<u32>(23491u, u_input.a.x) << (firstTrailingBit(max(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.b.x, 6289u))) % vec2<u32>(32u)));
    var var_1 = 39653u >> (_wgslsmith_add_u32(var_0.x, ~reverseBits(var_0.x) ^ 1u) % 32u);
    return min(min(abs(~21311u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(u_input.a.x, 31941u)) % 32u), 0u), var_0.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    return select(true, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), true)) || true, any(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(select(false, true, false), arg_1.a.x > 1u, arg_3 < -2147483647i), true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = arg_1.yy;
    global0 = array<Struct_1, 24>();
    var var_1 = abs(vec3<u32>(arg_0.a.a.x, 26708u, countOneBits(18766u)));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.yz, arg_0.a.a.zx), vec2<u32>(var_1.x, 1u)) & ~(var_1.x | arg_0.a.a.x)), 24u)], !arg_0.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c.x, arg_0.a.b.x))))))), all(select(select(select(vec3<bool>(arg_0.b.x, arg_0.d, true), vec3<bool>(arg_0.b.x, false, arg_0.b.x), true), select(vec3<bool>(arg_0.d, true, arg_0.d), vec3<bool>(arg_0.d, false, false), vec3<bool>(arg_0.d, true, arg_0.b.x)), arg_1.x == arg_0.e.c), !vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(true, true, arg_0.d))), Struct_1(abs(vec3<u32>(countOneBits(4294967295u), arg_0.e.a.x, ~var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.b.x, _wgslsmith_f_op_f32(max(-1513f, arg_0.e.b.x))) * arg_0.a.b), -_wgslsmith_mult_i32(-2147483647i, var_0.x)));
    var var_3 = Struct_2(arg_0.a, select(!arg_0.b, !(!(!vec3<bool>(var_2.d, arg_0.d, true))), arg_0.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(var_2.e.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.e.b.x, arg_0.e.b.x))))))), false, Struct_1(~_wgslsmith_mod_vec3_u32(var_2.e.a, _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 50378u, 0u), vec3<u32>(var_2.e.a.x, 67499u, arg_0.a.a.x))), vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -803f)), -1i));
    return select(vec4<bool>(all(var_3.b), var_2.e.c >= ~(-2147483647i), ((25122i ^ arg_0.a.c) <= 21615i) && all(select(var_3.b.xy, vec2<bool>(false, var_3.b.x), vec2<bool>(true, var_2.b.x))), true), vec4<bool>(func_3(var_3.e, Struct_1(var_2.e.a | arg_0.a.a, _wgslsmith_f_op_vec2_f32(-var_3.c), i32(-1i) * -1i), global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -2147483647i), 9245i <= _wgslsmith_clamp_i32(var_3.a.c, -2147483647i, ~62095i), arg_0.b.x && true, var_2.d), vec4<bool>(true, (~u_input.c << (select(var_1.x, 35495u, var_2.b.x) % 32u)) >= _wgslsmith_clamp_i32(abs(var_3.a.c), var_0.x, arg_0.e.c), !(true && func_3(Struct_1(u_input.a.xwz, vec2<f32>(arg_0.c.x, var_2.a.b.x), 0i), Struct_1(vec3<u32>(4294967295u, 1u, 27340u), arg_0.e.b, arg_1.x), Struct_1(vec3<u32>(var_1.x, 1u, 1u), var_2.e.b, var_2.e.c), var_2.a.c)), _wgslsmith_f_op_f32(var_3.a.b.x + arg_0.e.b.x) < var_2.e.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1928f - -754f) * _wgslsmith_f_op_f32(trunc(1109f))), _wgslsmith_f_op_f32(f32(-1f) * -249f)), abs(func_1(Struct_2(Struct_1(u_input.a.xyx, vec2<f32>(-838f, 1692f), u_input.c), vec3<bool>(true, true, false), vec2<f32>(-352f, 572f), false, global0[_wgslsmith_index_u32(0u, 24u)]), vec3<i32>(-1i, u_input.c, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.c, 3013i), vec3<i32>(0i, u_input.c, u_input.c))))), u_input.a.x, u_input.b.x);
    var_0 = 61288u;
    global0 = array<Struct_1, 24>();
    var_0 = u_input.b.x;
    let var_1 = global0[_wgslsmith_index_u32(56117u, 24u)];
    let var_2 = select(vec4<bool>(false, true, true, true), !(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))), func_4(Struct_2(global0[_wgslsmith_index_u32(~u_input.b.x, 24u)], vec3<bool>(func_3(Struct_1(vec3<u32>(12789u, 4294967295u, var_1.a.x), vec2<f32>(var_1.b.x, var_1.b.x), -2147483647i), global0[_wgslsmith_index_u32(var_1.a.x, 24u)], global0[_wgslsmith_index_u32(var_1.a.x, 24u)], var_1.c), var_1.b.x <= var_1.b.x, true), _wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(-var_1.b)), true, global0[_wgslsmith_index_u32(var_1.a.x, 24u)]), _wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c, -7274i, 44089i, -2147483647i), vec4<i32>(u_input.c, 1i, -28785i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_1.c, -1i, 2147483647i), vec4<i32>(-2147483647i, -60155i, var_1.c, 0i)) & select(vec4<i32>(u_input.c, u_input.c, 13241i, u_input.c), vec4<i32>(-8664i, u_input.c, 2147483647i, -11478i), false))));
    let x = u_input.a;
    s_output = StorageBuffer(329f, _wgslsmith_f_op_f32(-var_1.b.x), 798f, (vec4<i32>(~var_1.c, u_input.c, reverseBits(45521i), var_1.c) >> (u_input.a % vec4<u32>(32u))) ^ -vec4<i32>(var_1.c, var_1.c << (u_input.a.x % 32u), -18860i, 0i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-454f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), var_1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(1038f * -359f))))));
}

