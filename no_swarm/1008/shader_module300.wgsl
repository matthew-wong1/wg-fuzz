struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    return Struct_1(vec4<i32>(countOneBits(-u_input.a.x) & ~(~u_input.a.x), -24158i, _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-29822i, 1i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a.x, -52996i), vec3<i32>(u_input.a.x, -20873i, 16246i)), _wgslsmith_sub_vec3_i32(vec3<i32>(37932i, -18796i, -39040i), vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x)) & ~vec3<i32>(2147483647i, -2147483647i, -22432i)), reverseBits(u_input.b.x) ^ ~(u_input.a.x << (59694u % 32u))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> bool {
    var var_0 = max(min(24742i, reverseBits(-4606i & arg_1.a)), arg_0.x) & _wgslsmith_sub_i32(208i, -abs(_wgslsmith_mod_i32(24214i, 5966i)));
    let var_1 = arg_1.b.a;
    var var_2 = !any(select(select(!vec4<bool>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x), select(vec4<bool>(false, arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x), vec4<bool>(false, arg_1.b.b.x, true, true), arg_1.b.b.x), arg_1.b.b.x), select(select(vec4<bool>(true, arg_1.b.b.x, true, true), vec4<bool>(arg_1.b.b.x, true, true, false), true), vec4<bool>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x, false), select(vec4<bool>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x, false), vec4<bool>(arg_1.b.b.x, arg_1.b.b.x, false, arg_1.b.b.x), arg_1.b.b.x)), select(0u, 0u, false) > arg_1.b.c.x));
    let var_3 = 12204u;
    return arg_1.b.b.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = !select(any(vec3<bool>(true, true, true)), false, any(vec4<bool>(true, true, true, true))) && true;
    var var_1 = Struct_2(func_2(vec3<u32>(1u, 1u, 1u)), vec3<bool>(true, true, true), abs(vec4<u32>(1u, 1u, 1u, 1u)) & vec4<u32>(1u, ~51181u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(16981u, 47272u, 4294967295u), vec3<u32>(55735u, 68200u, 4294967295u)), ~3166u), ~_wgslsmith_sub_i32(~(-u_input.a.x), -u_input.b.x));
    var var_2 = vec4<bool>(!var_1.b.x & func_3(-vec3<i32>(var_1.a.a.x, var_1.a.a.x, 63671i), Struct_3(u_input.a.x, Struct_2(var_1.a, vec3<bool>(false, var_1.b.x, true), vec4<u32>(var_1.c.x, var_1.c.x, 0u, 1u), u_input.b.x))), !var_1.b.x, var_1.b.x, func_3(~countOneBits(var_1.a.a.xwx) | max(-vec3<i32>(var_1.a.a.x, u_input.b.x, 32907i), _wgslsmith_div_vec3_i32(var_1.a.a.ywx, var_1.a.a.yzw)), Struct_3(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-28488i, -2147483647i, u_input.b.x, 1i), vec4<i32>(var_1.a.a.x, 1i, 0i, -38765i)), ~vec4<i32>(0i, 36116i, var_1.d, -31694i)), Struct_2(func_2(var_1.c.xwy), var_1.b, var_1.c ^ vec4<u32>(var_1.c.x, var_1.c.x, 9010u, 1u), 2147483647i))));
    var var_3 = Struct_2(Struct_1(var_1.a.a), vec3<bool>(var_2.x, false, true), vec4<u32>(var_1.c.x, select(var_1.c.x, abs(reverseBits(1u)), true), _wgslsmith_div_u32(_wgslsmith_mult_u32(51206u, abs(1u)), ~var_1.c.x), ~4294967295u), func_2(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(var_1.c.xwx, vec3<u32>(var_1.c.x, 39150u, 0u), vec3<u32>(0u, 55113u, var_1.c.x)))).a.x);
    var_0 = select(!(!var_1.b.x), false, select(any(!select(vec4<bool>(var_3.b.x, var_2.x, var_2.x, false), vec4<bool>(var_3.b.x, var_3.b.x, false, true), vec4<bool>(true, var_2.x, true, var_3.b.x))), !var_1.b.x, true));
    return StorageBuffer(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(1140u, 21385u, 4294967295u, var_3.c.x), vec4<u32>(4093u, var_3.c.x, var_1.c.x, var_3.c.x), vec4<bool>(true, true, true, true)) << (vec4<u32>(~61354u, 28902u, firstLeadingBit(var_1.c.x), 1u) % vec4<u32>(32u)), ~var_3.c), _wgslsmith_clamp_vec3_u32(((var_1.c.zwx | vec3<u32>(var_3.c.x, 0u, var_3.c.x)) << (~var_3.c.yzy % vec3<u32>(32u))) & ~(~var_3.c.zzy), max(~var_1.c.xyw ^ var_3.c.yyy, ~var_3.c.ywx), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(20118u, var_3.c.x, 24198u), ~vec3<u32>(var_3.c.x, var_1.c.x, 91437u)))), abs(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.a.x)), var_1.a.a)), 15426i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<i32>(u_input.a.x, -2147483647i, -u_input.a.x, -2147483647i), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, 0i), _wgslsmith_dot_vec2_i32(u_input.b, select(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(4612u, 30u)], vec2<i32>(u_input.b.x, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.b.x, u_input.b.x)), all(vec3<bool>(true, true, false)))), ~u_input.b.x, -1i));
    let var_1 = Struct_1(var_0);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f + -806f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))));
    var var_3 = u_input.b.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-480f))))));
    var_4 = 645f;
    var var_5 = var_1;
    let x = u_input.a;
    s_output = func_1();
}

