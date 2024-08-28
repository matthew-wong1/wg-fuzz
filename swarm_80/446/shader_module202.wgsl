struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: f32;

var<private> global4: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(1u, 17785u, 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, ~(~(-2147483647i)), ~(-8677i)), ~(~vec3<i32>(1i, -1i, u_input.c.x))) & _wgslsmith_div_vec3_i32(select(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 32558i), u_input.c)), u_input.c, arg_0.x), ~vec3<i32>(-u_input.c.x, u_input.c.x & u_input.c.x, -2147483647i));
    let var_1 = vec2<i32>(select((u_input.c.x & var_0.x) ^ var_0.x, ~(-20463i), true), i32(-1i) * -30403i);
    let var_2 = arg_0.x;
    var var_3 = -811f;
    global1 = array<vec3<f32>, 29>();
    return ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u) | ~u_input.b, u_input.d.x << (_wgslsmith_add_u32(u_input.a, 0u) % 32u)), ~u_input.a, u_input.b, 1u ^ ~(~u_input.a));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = Struct_1(~_wgslsmith_clamp_vec4_u32(func_3(vec4<bool>(true, arg_0.x, false, arg_0.x)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(2502u, u_input.a, 0u, 1498u), vec4<u32>(11918u, u_input.d.x, 4294967295u, 65400u)), countOneBits(vec4<u32>(11153u, 1u, 9193u, u_input.a))), vec4<u32>(1453u, _wgslsmith_mult_u32(1u, 1u), u_input.d.x, _wgslsmith_mult_u32(50099u, 47881u))), u_input.c.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1105f + 1501f), -623f), vec2<f32>(-115f, _wgslsmith_f_op_f32(sign(1656f)))))));
    var var_1 = Struct_1(reverseBits(var_0.a), ~(-firstTrailingBit(u_input.c.xz)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * 1091f))))));
    var_1 = Struct_1(~(~var_0.a), _wgslsmith_sub_vec2_i32(u_input.c.yz, firstTrailingBit(var_1.b)) & vec2<i32>(-1058i, 1i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)))))));
    return _wgslsmith_f_op_f32(max(1508f, -1540f)) >= _wgslsmith_div_f32(1458f, _wgslsmith_f_op_f32(exp2(var_0.c.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<u32> {
    global4 = array<vec3<u32>, 1>();
    let var_0 = vec4<bool>(true, func_2(vec4<bool>(false, any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, false)), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1288f * arg_0.c.x)))) > _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x))))), false);
    let var_1 = ~(~12643u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1367f, _wgslsmith_f_op_f32(-arg_0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1229f)), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.c.x))))));
    let var_3 = -(~abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x), select(vec4<i32>(-2147483647i, u_input.c.x, -1i, 2147483647i), vec4<i32>(arg_0.b.x, u_input.c.x, arg_1.x, -33461i), var_0.x))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(select(0u, 2346u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.d), u_input.b, u_input.a >> (1u % 32u)), min(vec4<u32>(100250u, u_input.b, 21422u, 43028u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.d.x)) << (func_1(Struct_1(vec4<u32>(1u, 16867u, 4294967295u, 4294967295u), u_input.c.yy, global0[_wgslsmith_index_u32(u_input.b, 13u)]), u_input.c.xx) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, u_input.b), u_input.b, ~u_input.d.x, 1u) % vec4<u32>(32u)), vec2<i32>(-2147483647i, 2147483647i << (~_wgslsmith_div_u32(u_input.d.x, u_input.b) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(abs(-1056f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1112f - 1223f)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1089f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1444f)) - _wgslsmith_f_op_f32(min(-420f, var_1.c.x))))));
    var var_2 = var_1.c.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x) - 342f)))) + 673f);
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(~_wgslsmith_mult_i32(var_1.b.x, u_input.c.x), 33678i | -var_1.b.x), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.c.x)))))), vec4<f32>(_wgslsmith_f_op_f32(min(var_1.c.x, 2036f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-917f, -527f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(205f, 344f))))), var_1.c.x, -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-122f, var_1.c.x, var_1.c.x))), -(~(~abs(vec4<i32>(-45864i, u_input.c.x, 2147483647i, var_1.b.x)))));
}

