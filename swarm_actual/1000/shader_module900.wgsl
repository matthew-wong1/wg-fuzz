struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: Struct_2 = Struct_2(true, vec2<bool>(true, false), Struct_1(-2162f, 1u), 1u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(arg_2.x, arg_2.xy, global1.c, _wgslsmith_sub_u32(1u, min(1u, u_input.b)) ^ 1u), Struct_2(select(global1.c.a >= global1.c.a, true, !(!arg_0.x)), arg_2.zx, global1.c, ~(global1.d << (~global1.d % 32u))), 555f);
    global1 = var_0.b;
    let var_1 = true;
    var_0 = Struct_3(Struct_2(any(arg_0), arg_0.xz, Struct_1(-1099f, reverseBits(4294967295u)), global1.c.b), var_0.a, var_0.a.c.a);
    global0 = array<vec3<bool>, 18>();
    return _wgslsmith_mult_vec3_u32(~select(~vec3<u32>(global1.d, var_0.a.c.b, global1.d), vec3<u32>(u_input.b & global1.d, max(16543u, 699u), 0u), any(vec2<bool>(var_0.b.b.x, arg_2.x))), vec3<u32>(u_input.b, countOneBits(~u_input.b), var_0.a.c.b));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = ~(~((~vec3<u32>(arg_1, 26000u, u_input.b) << (func_3(vec4<bool>(true, false, arg_2, arg_0), global1.b, vec3<bool>(true, arg_2, true)) % vec3<u32>(32u))) ^ min(~vec3<u32>(1u, arg_1, 34662u), _wgslsmith_add_vec3_u32(vec3<u32>(9031u, 6502u, 16127u), vec3<u32>(global1.d, 5040u, global1.d)))));
    var var_1 = 17152u;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(36757u, 2016u)), global1.d) << (~_wgslsmith_div_u32(_wgslsmith_sub_u32(global1.c.b & 8103u, ~20904u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.b, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.d, var_0.x), var_0.yx, vec2<u32>(69590u, arg_1)))) % 32u);
    var_2 = _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_1, arg_1, arg_1, global1.d) << (vec4<u32>(4294967295u, global1.d, arg_1, 34423u) % vec4<u32>(32u))) | (vec4<u32>(global1.c.b, max(u_input.b, 1u), ~u_input.b, ~0u) & abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, u_input.b), vec4<u32>(u_input.b, 1u, 4294967295u, 0u)))), vec4<u32>(33214u, ~4294967295u, _wgslsmith_mult_u32(~global1.d, 1u), 43141u));
    var_2 = func_3(select(!vec4<bool>(true, false, true, global1.d != 1u), select(vec4<bool>(arg_0, true && global1.b.x, global1.c.a > global1.c.a, global1.b.x), select(vec4<bool>(global1.a, false, true, false), !vec4<bool>(false, true, global1.b.x, global1.b.x), any(global0[_wgslsmith_index_u32(u_input.b, 18u)])), vec4<bool>(true & arg_2, true, true, false)), global1.c.a != _wgslsmith_div_f32(global1.c.a, -1049f)), !select(select(vec2<bool>(true, arg_2), select(vec2<bool>(true, arg_0), global1.b, arg_2), !vec2<bool>(arg_0, arg_2)), vec2<bool>(true, all(vec2<bool>(global1.b.x, true))), true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~32298u)), _wgslsmith_clamp_u32(~var_0.x, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 5282u, 21109u), vec3<u32>(0u, 4294967295u, global1.d))) ^ ~var_0.x), 18u)]).x;
    return _wgslsmith_f_op_f32(round(1645f));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a, global1.c.a, -1000f, global1.c.a)), vec4<f32>(202f, _wgslsmith_f_op_f32(global1.c.a + global1.c.a), 357f, arg_1.c.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a, -123f, global1.c.a, global1.c.a)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c.a, arg_1.c.a, -110f, global1.c.a), vec4<f32>(441f, 906f, -164f, global1.c.a)))))));
    global0 = array<vec3<bool>, 18>();
    let var_1 = global1.b;
    global1 = Struct_2(55996i >= _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -5473i, u_input.a, -29260i), vec4<i32>(u_input.a, 6809i, u_input.a, 33708i)), vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i) >> ((vec4<u32>(arg_1.c.b, global1.d, u_input.b, global1.d) >> (vec4<u32>(global1.d, 0u, 1u, 30522u) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_1.b, Struct_1(global1.c.a, ~_wgslsmith_sub_u32(~73535u, u_input.b)), ~0u);
    let var_2 = Struct_1(-119f, 22758u);
    return var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> vec3<i32> {
    var var_0 = func_4(global1.c.a <= _wgslsmith_f_op_f32(func_2(arg_1, ~_wgslsmith_add_u32(global1.c.b, u_input.b), global1.a)), Struct_2(global1.a | global1.b.x, select(!select(global1.b, vec2<bool>(global1.b.x, global1.a), false), global1.b, vec2<bool>(all(vec4<bool>(global1.a, global1.a, true, false)), !global1.a)), global1.c, 64086u));
    var var_1 = global1.b;
    let var_2 = vec3<i32>(0i, u_input.a, 2147483647i | _wgslsmith_mult_i32(arg_0.x, -(~u_input.a)));
    let var_3 = global1.c;
    let var_4 = vec2<bool>(all(vec4<bool>(true, true, true, true)) && global1.a, false);
    return _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 20931i, 1i), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~(~1u), 41077u | (select(u_input.b, global1.d, global1.a) | 26721u), ~(~(~4294967295u))) & ~vec3<u32>(~47857u, 4294967295u, ~u_input.b);
    let var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), firstTrailingBit(vec3<i32>(14486i, u_input.a, u_input.a))), u_input.a), ~((func_1(vec2<i32>(26919i, 2147483647i), global1.a) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(1i, 1i, -1i))) & vec3<i32>(-44500i ^ u_input.a, 1i, _wgslsmith_div_i32(u_input.a, u_input.a))));
    global0 = array<vec3<bool>, 18>();
    var var_2 = !vec3<bool>((all(vec4<bool>(global1.b.x, true, false, global1.b.x)) & true) | true, global1.a, any(!select(vec4<bool>(true, false, false, global1.b.x), vec4<bool>(false, true, false, global1.b.x), vec4<bool>(false, true, false, true))));
    var var_3 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-868i, u_input.a), var_1 << (u_input.b % 32u), func_1(vec2<i32>(-19491i, u_input.a), true).x), vec3<i32>(var_1 >> (0u % 32u), -20410i, ~28469i)), min(1i, ~var_1) | _wgslsmith_div_i32(i32(-1i) * -u_input.a, u_input.a), abs(u_input.a));
    let var_4 = false;
    var_3 = var_1;
    let var_5 = func_4(any(!select(vec4<bool>(var_2.x, true, var_4, var_4), !vec4<bool>(true, false, var_2.x, true), select(vec4<bool>(var_2.x, var_4, global1.a, true), vec4<bool>(global1.a, global1.b.x, global1.b.x, false), true))), Struct_2(!(_wgslsmith_clamp_i32(u_input.a, 14431i, u_input.a) >= (i32(-1i) * -7824i)), select(select(select(vec2<bool>(false, false), var_2.xy, global1.b), !global1.b, var_2.xz), select(global1.b, select(vec2<bool>(false, false), global1.b, var_2.yx), true), var_2.zy), func_4(var_2.x, Struct_2(false, select(var_2.xx, global1.b, var_2.xy), Struct_1(global1.c.a, 4294967295u), global1.d)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(97048u, u_input.b);
}

