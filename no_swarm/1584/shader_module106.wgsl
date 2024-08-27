struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.c))));
    global0 = array<Struct_2, 11>();
    var_0 = arg_0.c;
    let var_1 = vec3<bool>(true, false, true);
    let var_2 = -1000f;
    return !select(!(!vec4<bool>(true, var_1.x, true, true)), !select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), any(vec4<bool>(var_1.x, false, var_1.x, false))), var_1.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> f32 {
    global0 = array<Struct_2, 11>();
    var var_0 = select(!select(vec4<bool>(arg_1.a.x, true && arg_1.a.x, u_input.a.x == 46463u, all(vec2<bool>(arg_1.a.x, arg_1.a.x))), !vec4<bool>(arg_1.a.x, true, false, arg_1.a.x), arg_1.a.x), select(vec4<bool>(arg_3 <= ~arg_3, !(arg_1.a.x & true), all(select(vec2<bool>(true, arg_1.a.x), arg_1.a.wy, vec2<bool>(arg_1.a.x, arg_1.a.x))), false), func_1(global0[_wgslsmith_index_u32(~(~u_input.a.x), 11u)]), arg_1.a.x), arg_1.a);
    global0 = array<Struct_2, 11>();
    var_0 = arg_1.a;
    global0 = array<Struct_2, 11>();
    return arg_1.b;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -451f)) + 1037f) * 577f), -abs(abs(vec4<i32>(u_input.c.x, -33514i, -471i, u_input.c.x))) | vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-15385i, -1i, 2147483647i, u_input.c.x), u_input.c), -17565i, countOneBits(_wgslsmith_mult_i32(-153i, u_input.c.x))), _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = vec2<i32>(u_input.c.x, 0i);
    return Struct_2(702f, u_input.c, 168f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) - _wgslsmith_f_op_f32(815f + _wgslsmith_f_op_f32(-358f + -1158f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1701f, -493f, true))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(526f * 1960f)), Struct_1(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), 1192f, u_input.c.zx, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 13397i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.xz ^ vec2<i32>(u_input.c.x, 44885i)), _wgslsmith_div_f32(-1521f, _wgslsmith_f_op_f32(floor(-1000f))), 28745u))), any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), u_input.c.x <= u_input.c.x)));
    var var_1 = _wgslsmith_dot_vec3_i32(var_0.b.zzz, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(firstLeadingBit(1474i), -56205i), u_input.c.x | u_input.c.x), 39563i, u_input.c.x));
    global0 = array<Struct_2, 11>();
    let var_2 = vec2<bool>(true, all(vec4<bool>(false, true, u_input.c.x <= 0i, true)) && all(vec4<bool>(true, true, true, true)));
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(19300i, 0i, u_input.c.x, var_0.b.x)), firstTrailingBit(~var_0.b), _wgslsmith_div_vec4_i32(u_input.c, var_0.b)), _wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(var_0.b.x, var_0.b.x, -33800i, -1i))) | (u_input.c | vec4<i32>(var_0.b.x, u_input.c.x, -1i, u_input.c.x))), select(countOneBits(countOneBits(vec4<u32>(85016u, 4294967295u, u_input.b.x, 0u))) << ((~vec4<u32>(0u, 4294967295u, 52398u, u_input.b.x) | firstLeadingBit(u_input.a)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.b.x), ~u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, abs(u_input.a)), u_input.b.x, _wgslsmith_mod_u32(u_input.a.x, 1u)), vec4<bool>(var_2.x, var_2.x, !(u_input.b.x >= 35759u), !(var_2.x & true))), firstTrailingBit(~u_input.a.wxw) ^ countOneBits(~(~u_input.b)), _wgslsmith_mult_vec2_u32(u_input.b.yy, u_input.b.zx), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(abs(u_input.b), ~u_input.a.zxw), abs(vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u)) ^ (u_input.b ^ vec3<u32>(52784u, u_input.b.x, 17773u))));
}

