struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: f32 = 243f;

var<private> global2: array<vec4<bool>, 18>;

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = Struct_1(~arg_1.x, global4.a);
    var var_1 = select(_wgslsmith_dot_vec3_i32(countOneBits(global3.c.xyw | vec3<i32>(arg_2.c.x, 2147483647i, arg_0)), abs(vec3<i32>(global3.c.x, global4.c.x, arg_0))), max(global4.c.x, _wgslsmith_add_i32(arg_0, global3.c.x) << (1u % 32u)), all(select(vec2<bool>(true, false), vec2<bool>(true, global4.b), vec2<bool>(false, global3.b))) || global4.b) & abs(abs(i32(-1i) * -32123i));
    var_1 = arg_2.c.x;
    var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(abs(var_0.b)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global3.a)) * var_0.b)))), true, select(global3.c, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global3.c.x, -1i), _wgslsmith_mod_i32(global3.c.x, -14934i), -18591i ^ global3.c.x, _wgslsmith_dot_vec3_i32(arg_2.c.wxx, vec3<i32>(-90733i, arg_0, global4.c.x))), global4.c), false));
    return _wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 0u, 3145u, var_0.a), vec4<u32>(arg_1.x, var_0.a, 4549u, arg_1.x), vec4<u32>(4294967295u, var_0.a, 58051u, 38612u)), ~vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 4294967295u, var_0.a), ~vec4<u32>(arg_1.x, 18946u, u_input.a.x, 35080u)))), vec4<u32>(countOneBits(_wgslsmith_add_u32(u_input.a.x << (0u % 32u), ~4294967295u)), 75401u, 5963u, ~72858u));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -971f)), 111f) - -656f);
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_1 = vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.a.x, 0u), ~1u, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 14959u), ~0u)) >> (min(_wgslsmith_mult_vec4_u32(func_3(_wgslsmith_div_i32(global4.c.x, -2147483647i), u_input.a.xx, Struct_2(vec4<f32>(-998f, global3.a.x, 2789f, var_0), true, vec4<i32>(global3.c.x, global3.c.x, global4.c.x, global4.c.x))), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 35157u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(0u, u_input.a.x, 16285u, 0u), ~vec4<u32>(25256u, 67128u, u_input.a.x, 1u)), max(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(11171u, u_input.a.x, u_input.a.x, u_input.a.x)))) % vec4<u32>(32u));
    let var_2 = u_input.a.x;
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1453f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-816f)))), -128f) + _wgslsmith_f_op_vec4_f32(-global4.a)), !global3.b, global3.c);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    global3 = func_2();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.a.x)) * 209f));
    var var_1 = arg_2;
    var var_2 = arg_2.c.x;
    var var_3 = global4.b;
    return global3.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(-min(abs(global4.c.xzz), global4.c.wyx << (vec3<u32>(2361u, arg_1.a, 0u) % vec3<u32>(32u)))) & vec3<i32>(global4.c.x >> ((_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(30249u, 0u)) ^ arg_1.a) % 32u), global4.c.x, ~global3.c.x);
    var var_1 = firstLeadingBit(-1i);
    let var_2 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(573f))) != global4.a.x, global4.b, true, global4.b);
    var var_3 = arg_1;
    var var_4 = vec2<bool>(-global3.c.x >= _wgslsmith_dot_vec3_i32(global4.c.yzy, -vec3<i32>(-1i, global3.c.x, 2147483647i)), select(global4.b, global4.b, global4.b));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.c.x;
    var var_1 = func_4(~1u, Struct_1(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(-509f, -392f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)] * global3.a.x), -926f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(2338f, u_input.a, Struct_2(global3.a, global4.b, global3.c), Struct_1(u_input.a.x, vec4<f32>(global3.a.x, 644f, -512f, 492f))))))))));
    var_1 = func_4(u_input.a.x, func_4(select(34951u, u_input.a.x & 9382u, any(vec4<bool>(true, false, global3.b, global3.b))), func_4(~(~var_1.a), Struct_1(3662u, _wgslsmith_f_op_vec4_f32(ceil(var_1.b))))));
    let var_2 = Struct_1(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().a.x)), _wgslsmith_f_op_f32(f32(-1f) * -136f), -213f, _wgslsmith_f_op_f32(round(var_1.b.x))));
    global3 = Struct_2(vec4<f32>(var_2.b.x, 1304f, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + var_2.b.x))), false, _wgslsmith_sub_vec4_i32(vec4<i32>(global3.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.x, -67666i, 0i, -2147483647i), vec4<i32>(global4.c.x, global3.c.x, global3.c.x, global3.c.x)), _wgslsmith_dot_vec3_i32(global3.c.xyy, global4.c.zzy), -51252i), _wgslsmith_div_vec4_i32(vec4<i32>(22689i, global4.c.x, -2147483647i, global3.c.x) << (vec4<u32>(var_1.a, 0u, var_2.a, 10035u) % vec4<u32>(32u)), firstLeadingBit(global4.c))) & vec4<i32>(reverseBits(max(2147483647i, -1i)), ~_wgslsmith_mod_i32(-2147483647i, -2147483647i), global3.c.x, -2147483647i));
    var var_3 = Struct_1(~func_4(4294967295u, var_2).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2444f, 114f, global4.a.x, var_1.b.x)))), false))));
    let var_4 = !select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.a, 1u)] != var_1.b.x, !global3.b, global4.b, global3.b), vec4<bool>(true, true, true | global4.b, all(global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), vec4<bool>(global3.b, global4.b, true, !global4.b)), vec4<bool>(true, func_2().b, true, global4.b & all(vec2<bool>(global3.b, false))), global3.b && any(vec3<bool>(global4.b, false, true)));
    global2 = array<vec4<bool>, 18>();
    var_3 = func_4(var_3.a >> (0u % 32u), func_4(~4294967295u, Struct_1(var_1.a, func_2().a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(-global4.c.x, _wgslsmith_add_i32(_wgslsmith_add_i32(global4.c.x, -global3.c.x), global3.c.x), all(vec3<bool>(var_4.x, any(global2[_wgslsmith_index_u32(var_3.a, 18u)]), var_3.b.x != 1040f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, 1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.a, 1u)]), global4.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.b.wy)) + _wgslsmith_f_op_vec2_f32(-global4.a.zx)))));
}

