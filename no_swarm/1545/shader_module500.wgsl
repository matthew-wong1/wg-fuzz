struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> bool {
    var var_0 = u_input.e.x >> (u_input.d.x % 32u);
    var_0 = ~abs(_wgslsmith_add_i32(1i, max(u_input.c.x, arg_1)));
    var_0 = arg_1;
    var_0 = -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, 2147483647i, -62449i, arg_1), vec4<i32>(-37719i, arg_1, arg_1, u_input.e.x)), -(u_input.e | vec4<i32>(22545i, arg_1, 52573i, u_input.a.x))), -2147483647i);
    var_0 = -22762i;
    return !arg_0.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> bool {
    return false;
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    var var_0 = any(vec3<bool>(true, select(func_3(vec4<i32>(u_input.e.x, 1i, 57853i, -2147483647i) << (vec4<u32>(u_input.d.x, 12354u, 23699u, 5028u) % vec4<u32>(32u)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec2<u32>(1u, 1u) & arg_0), false, false), true));
    var_0 = any(select(vec2<bool>(false, (98797u > u_input.d.x) | true), select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(true, any(vec2<bool>(true, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))));
    var_0 = any(!vec3<bool>(false, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1((26634i | ~max(u_input.c.x, u_input.b)) | -_wgslsmith_sub_i32(u_input.e.x, u_input.b), u_input.e.wy, false);
    var var_2 = vec2<bool>(false, var_1.c);
    return vec3<i32>(u_input.a.x, u_input.b, max(-1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_3(u_input.d.x), ~u_input.c.zz, vec4<bool>(201f != _wgslsmith_f_op_f32(select(620f, -1264f, true)), select(true, (u_input.b != 0i) & true, true == func_1(vec3<bool>(false, true, true), u_input.a.x)), false, true), true);
    let var_1 = !var_0.c.www;
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.x, 0i, 1i) << (u_input.d % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(u_input.e.zzx, u_input.c)), -func_2(u_input.d.zx));
    let var_3 = u_input.d.x;
    var_2 = 2147483647i;
    var var_4 = _wgslsmith_clamp_i32(-2147483647i, u_input.b, 1i);
    var var_5 = vec4<i32>(~_wgslsmith_mult_i32(select(0i, var_0.b.x, true), _wgslsmith_add_i32(u_input.e.x, u_input.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.b.x, 0i, ~(-2147483647i)) | _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, 2147483647i) ^ vec3<i32>(u_input.e.x, var_0.b.x, var_0.b.x), countOneBits(u_input.e.yzy)), u_input.e.wwz), ~u_input.c.x, reverseBits(i32(-1i) * -2147483647i) >> ((_wgslsmith_mod_u32(~4294967295u, 92645u & var_0.a.a) >> (u_input.d.x % 32u)) % 32u));
    var var_6 = Struct_5(var_0.a, var_5.yx, vec4<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(var_3, var_0.a.a), vec2<u32>(u_input.d.x, var_0.a.a))) != (var_3 | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, var_3), vec2<u32>(var_3, 15301u))), (2147483647i < _wgslsmith_mod_i32(u_input.c.x, 27159i)) & var_1.x, -_wgslsmith_dot_vec2_i32(var_5.yx, vec2<i32>(var_5.x, 12030i)) == ~(-54911i)), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(countOneBits(var_5.xx), max(vec2<i32>(var_5.x, -2147483647i), u_input.e.xx)), var_5.yz), var_6.a.a, var_5.wxw >> (u_input.d % vec3<u32>(32u)), var_0.b, var_5.x);
}

