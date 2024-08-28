struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = Struct_1(0i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2236f, _wgslsmith_f_op_f32(-2127f - -331f)))) + _wgslsmith_f_op_f32(trunc(1000f))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1545f * 211f)))), _wgslsmith_f_op_f32(191f + -207f)));
    let var_2 = arg_0;
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(0u, 9u)], 14723u, global0[_wgslsmith_index_u32(firstTrailingBit(max(~(~0u), 72568u)), 9u)], -275f);
    var var_4 = var_3.a.wzz;
    return ~vec3<i32>(-var_0.a, countOneBits(~select(0i, 11743i, false)), 29330i);
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<u32>, 9>();
    let var_0 = abs(firstLeadingBit(select(_wgslsmith_sub_i32(u_input.b, u_input.b), max(u_input.b, -1i), true))) <= 54143i;
    return Struct_3(Struct_1(_wgslsmith_dot_vec3_i32(func_3(vec4<i32>(2147483647i, u_input.b, u_input.b, 46627i)) >> (~vec3<u32>(4294967295u, 4294967295u, 0u) % vec3<u32>(32u)), u_input.a.xwz)), Struct_1(1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2126f, -191f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-772f, 2314f)), -110f, _wgslsmith_f_op_f32(-1444f * -311f)) + vec3<f32>(-814f, _wgslsmith_div_f32(1000f, 193f), -1000f))));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(var_0.a.a, var_0.b.a), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(31304i, u_input.b, -47207i), vec3<i32>(u_input.b, -2147483647i, u_input.b)), 2147483647i)), -(_wgslsmith_sub_vec2_i32(u_input.a.wy, vec2<i32>(u_input.b, 0i)) & vec2<i32>(1i, 68640i))) | max(_wgslsmith_mod_vec2_i32(u_input.a.wy, u_input.a.yz), vec2<i32>(-u_input.b, 6473i));
    var var_2 = func_2();
    var_2 = Struct_3(var_0.b, var_0.b, _wgslsmith_f_op_vec3_f32(-func_2().c));
    return var_1.x | 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.b, _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(-5962i, -2147483647i, 0i, u_input.a.x)) | (_wgslsmith_mod_vec4_i32(vec4<i32>(-3773i, u_input.a.x, -57670i, 0i), vec4<i32>(u_input.b, 36453i, 41272i, 1i)) << (_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(40807u, 9u)], vec4<u32>(27295u, 1u, 52786u, 0u)) % vec4<u32>(32u))), ~vec4<i32>(~(-1i), _wgslsmith_sub_i32(-1i, 14525i), -u_input.a.x, firstTrailingBit(-2147483647i))), _wgslsmith_add_i32(-_wgslsmith_mult_i32(-1i, func_1()), ~(~_wgslsmith_div_i32(u_input.b, u_input.a.x))));
    global0 = array<vec4<u32>, 9>();
    global0 = array<vec4<u32>, 9>();
    var var_1 = ~_wgslsmith_div_u32(reverseBits(2842u), 1u);
    let var_2 = func_2().b;
    var_1 = ~(~(~max(firstLeadingBit(2991u), ~0u)));
    var var_3 = ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 60059u), select(vec2<u32>(1u, 10163u), vec2<u32>(127326u, 0u), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1293f), ~select(max(~var_3.x, var_3.x), abs(reverseBits(var_3.x)), all(vec2<bool>(false, false))), u_input.b);
}

