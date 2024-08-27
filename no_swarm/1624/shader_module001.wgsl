struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

var<private> global1: array<vec2<u32>, 12>;

var<private> global2: i32 = -1552i;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<u32>(10425u, 14115u, 15183u)), Struct_1(vec3<u32>(1u, 16111u, 0u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a.x, ~21829u, 55688u), ~u_input.a), ~arg_1.a));
    global0 = array<vec4<u32>, 13>();
    let var_1 = select(vec2<bool>(true, arg_2), select(vec2<bool>(arg_2, all(vec3<bool>(arg_2, arg_2, arg_2))), select(select(!vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false)), vec2<bool>(false, select(true, true, false)), arg_2 | true), vec2<bool>(false, _wgslsmith_f_op_f32(floor(1662f)) < _wgslsmith_f_op_f32(max(422f, 675f)))), arg_2);
    global1 = array<vec2<u32>, 12>();
    global0 = array<vec4<u32>, 13>();
    return select(!select(!var_1, var_1, !(arg_2 && arg_2)), !select(var_1, select(vec2<bool>(true, var_1.x), !var_1, all(vec2<bool>(true, true))), var_1), select(!var_1, var_1, arg_2 != true));
}

fn func_2() -> vec2<bool> {
    let var_0 = any(vec2<bool>(true, true));
    let var_1 = Struct_1(vec3<u32>(u_input.a.x, 45046u, ~u_input.a.x));
    let var_2 = u_input.e;
    global0 = array<vec4<u32>, 13>();
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(~u_input.a, vec3<u32>(0u, u_input.a.x, 4294967295u)));
    return select(!(!select(vec2<bool>(false, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0), !var_0)), !func_3(~var_2.x << ((0u >> (var_1.a.x % 32u)) % 32u), Struct_1(firstTrailingBit(var_1.a)), all(select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, false), var_0))), var_0);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(select(1i, _wgslsmith_add_i32(u_input.e.x, u_input.e.x), false), _wgslsmith_sub_i32(~(~(~1i)), -(u_input.b.x ^ -9143i)));
    var var_1 = all(func_2());
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(select(vec4<i32>(-14817i, -2147483647i, u_input.d.x, 18268i), vec4<i32>(31030i, -2147483647i, u_input.c.x, u_input.d.x), vec4<bool>(true, true, true, true))) & u_input.e, ~(-firstTrailingBit(vec4<i32>(-14424i, u_input.c.x, 8450i, -1i)))), vec4<i32>((u_input.d.x ^ _wgslsmith_mod_i32(0i, u_input.c.x)) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.xy), u_input.a.x) % 32u), u_input.d.x, -1i, -(~u_input.d.x) & abs(-2147483647i)));
    global1 = array<vec2<u32>, 12>();
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(~reverseBits(u_input.e.x), ~u_input.d.x, 1i, -_wgslsmith_mod_i32(~0i, -60950i << (u_input.a.x % 32u))), vec4<i32>(firstTrailingBit(~var_2), -(~var_2), var_2, -2147483647i) << (abs(global0[_wgslsmith_index_u32(~(~u_input.a.x), 13u)]) % vec4<u32>(32u)));
    return Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(1u, ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 0u))), 0u, 4294967295u) & reverseBits(countOneBits(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 13u)])));
    var var_1 = vec3<u32>(~var_0.x, 1u, ~3726u);
    var var_2 = func_1();
    let var_3 = func_1();
    global0 = array<vec4<u32>, 13>();
    var var_4 = !(!select(vec4<bool>(func_2().x, true, func_3(1i, Struct_1(var_2.a), false).x, true), vec4<bool>(true, false, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true)));
    global2 = ~(~_wgslsmith_sub_i32(firstTrailingBit(~1i), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, u_input.a.zx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1344f, -149f))), _wgslsmith_f_op_f32(-2165f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f), _wgslsmith_f_op_f32(f32(-1f) * -1230f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1665f))) - 812f)), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), u_input.c.x << (var_3.a.x % 32u), u_input.b.x));
}

