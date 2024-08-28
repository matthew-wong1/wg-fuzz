struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, false, false), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec2<u32>(60666u, 0u));

var<private> global1: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: bool) -> vec4<bool> {
    let var_0 = abs(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.d.x, 57442u, global0.d.x), _wgslsmith_div_vec3_u32(vec3<u32>(60200u, 12397u, 0u), vec3<u32>(4294967295u, global0.d.x, 1u))), reverseBits(vec3<u32>(1u, global0.d.x, global0.d.x) & vec3<u32>(4156u, global0.d.x, global0.d.x))), firstLeadingBit(_wgslsmith_mod_vec3_u32(min(vec3<u32>(global0.d.x, global0.d.x, 27722u), vec3<u32>(75554u, 4294967295u, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(59936u, 4294967295u, 4294967295u), vec3<u32>(global0.d.x, 75936u, global0.d.x))))));
    var var_1 = Struct_1(vec4<bool>(arg_0, arg_0, arg_2, all(global0.b.xz)), vec3<bool>(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(525f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1497f), !arg_1.x)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-650f)), _wgslsmith_f_op_f32(f32(-1f) * -434f))), select(true, true, false)), global0.c, _wgslsmith_div_vec2_u32(~(~vec2<u32>(11744u, var_0.x)), vec2<u32>(0u, 36753u)));
    var_1 = Struct_1(!(!vec4<bool>(!global0.b.x, all(arg_1.xxw), any(arg_1.zwy), all(vec4<bool>(arg_0, true, true, arg_2)))), vec3<bool>(!(_wgslsmith_clamp_u32(global0.d.x, var_1.d.x, var_1.d.x) >= ~4294967295u), all(vec4<bool>(false, global0.a.x, true, arg_2)), all(global0.a.yyx)), -var_1.c, countOneBits(global0.d));
    global1 = -1385f;
    let var_2 = Struct_1(select(select(arg_1, global0.a, true), !arg_1, ~(~40539u) <= ~reverseBits(var_0.x)), select(arg_1.zzz, vec3<bool>(arg_0, true, false), any(global0.b.xz) | true), abs(vec3<i32>(-1i) * -global0.c) | vec3<i32>(21639i, u_input.a | ~global0.c.x, countOneBits(19559i)), ~vec2<u32>(var_1.d.x, ~(~var_1.d.x)));
    return vec4<bool>(!(1f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1352f)) - -729f)), !(var_1.c.x <= _wgslsmith_div_i32(45784i | var_2.c.x, _wgslsmith_mult_i32(var_2.c.x, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f * _wgslsmith_div_f32(395f, -363f)) + _wgslsmith_f_op_f32(1317f + _wgslsmith_f_op_f32(f32(-1f) * -1242f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1182f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1708f)))), var_1.a.x);
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    return Struct_1(select(select(select(vec4<bool>(global0.a.x, true, false, false), func_3(true, vec4<bool>(true, arg_0, arg_0, false), arg_0), global0.a), vec4<bool>(any(vec3<bool>(global0.a.x, true, false)), true, !global0.b.x, any(global0.b)), global0.a), select(vec4<bool>(global0.d.x >= global0.d.x, select(true, false, global0.b.x), true, !arg_0), vec4<bool>(global0.b.x, !global0.a.x, !global0.a.x, !arg_0), select(func_3(true, global0.a, global0.b.x).x, global0.a.x, true)), global0.b.x), !vec3<bool>(select(true & arg_0, true, !arg_0), true, arg_0), max(~countOneBits(~vec3<i32>(2147483647i, 42349i, -2147483647i)), vec3<i32>(-1i, firstTrailingBit(6947i) ^ (9018i ^ global0.c.x), 17461i)), ~max(global0.d, global0.d));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = global0.b.x;
    var var_1 = global0.c;
    let var_2 = func_2(true, 79886u);
    var_0 = global0.b.x != global0.b.x;
    let var_3 = -1000f;
    return any(!(!global0.a.xyz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(global0.a, vec4<bool>(func_1(495f) & global0.a.x, global0.b.x, true, global0.b.x), vec4<bool>(~global0.d.x >= global0.d.x, func_3(true, select(vec4<bool>(global0.b.x, global0.b.x, false, false), vec4<bool>(global0.b.x, global0.b.x, true, true), vec4<bool>(true, global0.b.x, global0.a.x, false)), all(global0.a.yxx)).x, true, !global0.a.x)), select(!(!func_2(false, 4294967295u).a.zzy), select(vec3<bool>(true, global0.a.x, true), !global0.b, !all(global0.b)), global0.a.ywz), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global0.c, -abs(vec3<i32>(-2147483647i, global0.c.x, global0.c.x))), global0.c), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, global0.d.x), vec2<u32>(global0.d.x, 15622u)));
    let var_1 = func_2(func_2(!var_0.b.x, reverseBits(_wgslsmith_mult_u32(var_0.d.x, abs(var_0.d.x)))).a.x, firstTrailingBit(~var_0.d.x) >> (global0.d.x % 32u));
    var_0 = func_2(!(!any(func_3(var_1.a.x, vec4<bool>(global0.b.x, false, true, var_1.a.x), var_0.a.x).xy)), firstTrailingBit(var_0.d.x));
    var_0 = Struct_1(!vec4<bool>(!var_0.a.x, var_1.b.x & (u_input.a != u_input.a), var_1.b.x, false), func_2(all(var_1.a), global0.d.x).a.xzw, select(select(countOneBits(vec3<i32>(var_1.c.x, var_1.c.x, global0.c.x)), _wgslsmith_mod_vec3_i32(var_0.c, global0.c), true) & (firstTrailingBit(vec3<i32>(-2147483647i, u_input.b, 4086i)) << (vec3<u32>(var_1.d.x, 74479u, 1u) % vec3<u32>(32u))), var_0.c, var_0.a.xww), ~(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.d, var_0.d, global0.d), _wgslsmith_sub_vec2_u32(global0.d, vec2<u32>(1u, global0.d.x))) ^ vec2<u32>(46290u, 1u)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1725f, 307f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1864f)) + -1106f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-547f - 1248f)))))));
    let var_2 = select(abs(vec4<u32>(_wgslsmith_clamp_u32(12847u, var_0.d.x, 0u) & global0.d.x, var_1.d.x, min(4294967295u & global0.d.x, global0.d.x ^ 27064u), max(~var_0.d.x, _wgslsmith_add_u32(17691u, 27339u)))), ~(vec4<u32>(global0.d.x & var_0.d.x, 4294967295u >> (global0.d.x % 32u), 31336u, 4294967295u) | _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 0u, 4294967295u) << (vec4<u32>(var_1.d.x, 27741u, var_0.d.x, 1u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 26389u, 0u, var_1.d.x) | vec4<u32>(global0.d.x, var_1.d.x, 6395u, var_0.d.x))), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0.c.x << (4294967295u % 32u)));
}

