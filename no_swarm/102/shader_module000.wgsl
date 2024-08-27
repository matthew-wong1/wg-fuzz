struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_2, 32>();
    let var_0 = Struct_4(Struct_2(Struct_1(select(vec4<i32>(u_input.d.x, u_input.e, -2147483647i, 31718i), select(vec4<i32>(-18507i, u_input.d.x, 23015i, u_input.e), vec4<i32>(2147483647i, u_input.e, -2147483647i, u_input.d.x), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), true)), abs(u_input.b));
    var var_1 = vec3<i32>(u_input.d.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 3365i >> (u_input.b.x % 32u), var_0.a.a.a.x, 0i), -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.a.x, -1i, 110010i, var_0.a.a.a.x), var_0.a.a.a)), var_0.a.a.a.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_0.a.a.a, var_0.a.a.a), firstLeadingBit(-2147483647i)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, 2147483647i), var_0.a.a.a.ywx), -var_0.a.a.a.x)), countOneBits(u_input.e)));
    var var_2 = 5354u;
    var var_3 = _wgslsmith_add_i32(_wgslsmith_mult_i32(-var_1.x, _wgslsmith_mod_i32(var_1.x, _wgslsmith_sub_i32(max(var_1.x, var_0.a.a.a.x), i32(-1i) * -264i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-39158i, _wgslsmith_clamp_i32(reverseBits(u_input.c), 1i, u_input.c << (var_0.b.x % 32u)), _wgslsmith_div_i32(var_0.a.a.a.x, var_0.a.a.a.x >> (u_input.a % 32u))), ~reverseBits(-var_0.a.a.a.xwx)));
    return !(!(!select(vec2<bool>(true, var_0.a.a.b), !vec2<bool>(var_0.a.a.b, var_0.a.a.b), vec2<bool>(true, true))));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_0 = !select(vec2<bool>(true, false), vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true), !select(vec2<bool>(true, true), func_3(), vec2<bool>(true, true)));
    return vec3<bool>(true, !(var_0.x & true), true);
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = vec2<bool>(!arg_0.a.b, arg_0.a.b);
    let var_1 = vec2<bool>(all(!vec3<bool>(arg_0.a.b, true, true)), any(func_2(1i)));
    var var_2 = vec3<bool>(arg_0.a.b, true, true);
    var_2 = func_2(max(i32(-1i) * -1i, arg_0.a.a.x));
    let var_3 = Struct_4(Struct_2(arg_0.a), vec2<u32>(_wgslsmith_mod_u32(~(~u_input.b.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b)), ~4294967295u));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, _wgslsmith_f_op_f32(f32(-1f) * -194f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1099f, 829f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-190f, -1781f)))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = ~(-min(select(~vec4<i32>(4259i, u_input.c, -2147483647i, arg_2.a.x), arg_2.a ^ vec4<i32>(arg_2.a.x, 0i, u_input.e, -8047i), vec4<bool>(arg_2.b, arg_2.b, true, false)), _wgslsmith_add_vec4_i32(vec4<i32>(-13862i, arg_2.a.x, 0i, u_input.c), vec4<i32>(arg_2.a.x, arg_2.a.x, -48175i, arg_2.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.x, arg_1.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(178f))), -485f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -1903f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(arg_0.x))))))));
    let var_2 = i32(-1i) * -abs(u_input.e);
    var_0 = ~arg_2.a;
    global0 = array<Struct_2, 32>();
    return StorageBuffer(var_2, 1239f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let var_0 = false;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1655f, -581f) + vec2<f32>(-1732f, 768f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1639f, 732f), vec2<f32>(1669f, -2153f)))) - vec2<f32>(-875f, _wgslsmith_f_op_f32(2159f * 948f))) - _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(61310u, 1u, 1u) & vec3<u32>(u_input.b.x, 20490u, 33411u), vec3<u32>(27758u, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.a, 94367u, 4294967295u) % vec3<u32>(32u))), 32u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1764f, -203f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-715f, 997f) + vec2<f32>(-287f, 454f))), var_0))), Struct_1(vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 13213i, u_input.d.x), vec3<i32>(54607i, u_input.d.x, 2147483647i)), i32(-1i) * -8130i, u_input.e) << (((vec4<u32>(u_input.b.x, 1u, 89947u, u_input.a) >> (vec4<u32>(0u, u_input.a, 1u, 4294967295u) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.a, u_input.a, u_input.b.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1095f, 1200f, true)) + -394f) > 546f));
}

