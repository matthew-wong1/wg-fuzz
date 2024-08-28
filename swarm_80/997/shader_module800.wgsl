struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(-711f, 1232f), vec2<f32>(-771f, 720f), vec2<f32>(233f, -919f), vec2<f32>(957f, -508f), vec2<f32>(271f, -655f), vec2<f32>(447f, 1311f), vec2<f32>(-1932f, -800f), vec2<f32>(866f, -743f), vec2<f32>(1654f, -789f), vec2<f32>(274f, 820f), vec2<f32>(-818f, -2127f), vec2<f32>(-2790f, 984f), vec2<f32>(821f, -148f), vec2<f32>(-2566f, -1642f), vec2<f32>(1000f, 344f), vec2<f32>(-772f, -412f), vec2<f32>(-1219f, -940f));

var<private> global1: vec4<bool>;

var<private> global2: vec2<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    global1 = arg_2.d;
    global0 = array<vec2<f32>, 17>();
    let var_0 = Struct_4(~select(vec4<u32>(58116u, ~u_input.a, min(63820u, 0u), ~u_input.a), ~(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), arg_2.d), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1092f, 340f)), ~(~(~vec4<u32>(u_input.a, u_input.c, 59239u, u_input.c))), Struct_1(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(52749i, u_input.b, 0i), arg_1.a, arg_2.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -8422i, 32320i), vec3<i32>(-2530i, 25024i, 23120i)), global1.zyz))), arg_1, arg_2, u_input.c);
    var var_1 = var_0.b;
    var var_2 = var_0.b.b.zw;
    return -arg_1.a.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = vec2<i32>(~func_3(arg_0, Struct_1(vec3<i32>(-14632i, 15557i, 0i)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -964f), true, vec3<i32>(global2.x, u_input.b, 3617i), select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(true, global1.x, true, global1.x), true), _wgslsmith_f_op_f32(min(1589f, -1434f)))), reverseBits(firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 1i, global2.x, global2.x), ~vec4<i32>(1i, u_input.b, 12352i, 91055i)))));
    var var_1 = Struct_1(vec3<i32>(u_input.b, _wgslsmith_sub_i32(-1i, abs(-2147483647i)), global2.x));
    global1 = vec4<bool>(true, true, any(global1.yx) & all(select(!global1.zwy, select(global1.zww, global1.wzz, global1.yzw), global1.x)), true);
    global2 = arg_0;
    let var_2 = !select(select(!(!vec4<bool>(true, global1.x, global1.x, false)), vec4<bool>(global1.x & true, u_input.b > global2.x, true, false), vec4<bool>(all(vec4<bool>(false, false, false, global1.x)), !global1.x, global1.x, global1.x)), !select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, global1.x, false, true), global1.x), select(vec4<bool>(false, global1.x, false, true), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, false, false)), select(vec4<bool>(true, true, global1.x, false), vec4<bool>(false, true, true, false), vec4<bool>(global1.x, global1.x, true, true))), select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, !global1.x), false));
    return Struct_1(-abs(max(-var_1.a, vec3<i32>(arg_0.x, 1i, var_1.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = _wgslsmith_div_u32(abs(0u), 1u);
    var var_1 = all(vec2<bool>(global1.x, -2147483647i == ~_wgslsmith_sub_i32(2147483647i, u_input.b)));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(~0u, ~arg_1.e), 33057u, 8013u, 30930u), vec4<u32>(u_input.c, _wgslsmith_mod_u32(~20678u | _wgslsmith_dot_vec3_u32(arg_0.b.yyx, arg_1.a.xww), arg_0.b.x), firstTrailingBit(_wgslsmith_mult_u32(arg_1.a.x | u_input.c, arg_0.b.x >> (4294967295u % 32u))), _wgslsmith_add_u32(u_input.a, arg_0.b.x)));
    let var_3 = arg_1;
    global2 = arg_1.d.c.zz;
    return arg_1.d.c.yy;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> u32 {
    global2 = func_4(Struct_2(global0[_wgslsmith_index_u32(countOneBits(~u_input.a) >> (~(~arg_0.x) % 32u), 17u)], max(~vec4<u32>(57473u, u_input.c, 108271u, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(20063u, 24740u, 44916u, u_input.c), vec4<u32>(42082u, 0u, arg_0.x, 28852u))), func_2(arg_1.zx)), Struct_4(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, u_input.a, arg_0.x, u_input.c)), firstTrailingBit(vec4<u32>(4294967295u, 0u, 4294967295u, 0u)) ^ vec4<u32>(30523u, u_input.a, u_input.a, u_input.a)), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-546f, 229f))))), vec4<u32>(25950u, u_input.a << (u_input.c % 32u), 364u, ~arg_0.x), func_2(~vec2<i32>(arg_1.x, 1i))), Struct_1(vec3<i32>(-12545i, arg_1.x, u_input.b) & ~vec3<i32>(u_input.b, arg_1.x, -62362i)), Struct_3(_wgslsmith_f_op_f32(-997f + _wgslsmith_div_f32(261f, -938f)), !global1.x, vec3<i32>(1i << (arg_0.x % 32u), ~u_input.b, 0i), vec4<bool>(true, global1.x, true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f + 2193f) * _wgslsmith_f_op_f32(sign(724f)))), arg_0.x));
    let var_0 = -1000f;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(0u, 17u)] + global0[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(round(519f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(u_input.c, 17u)], _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(107593u, 17u)]))))));
    global2 = arg_1.yx;
    global2 = select(countOneBits(arg_1.xy), vec2<i32>(-3894i, global2.x), global1.x);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -_wgslsmith_clamp_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, 2147483647i), ~vec2<i32>(u_input.b, u_input.b)), select(_wgslsmith_mult_vec2_i32(-vec2<i32>(global2.x, global2.x), vec2<i32>(-31930i, u_input.b)), -(vec2<i32>(u_input.b, -19866i) | vec2<i32>(-1327i, -2147483647i)), 0u > u_input.c), abs(abs(firstTrailingBit(vec2<i32>(global2.x, -2308i)))));
    var var_0 = 1u;
    var var_1 = func_1(min(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(3554u, 23884u, u_input.c)), vec3<u32>(u_input.c, 56477u, 1u) >> (vec3<u32>(u_input.c, 18942u, u_input.a) % vec3<u32>(32u))), vec3<u32>(u_input.c, ~u_input.c, u_input.c)), -(-vec3<i32>(-73856i, global2.x, -8398i) << (~vec3<u32>(30u, 88593u, 4294967295u) % vec3<u32>(32u)))) >= reverseBits(u_input.c);
    global0 = array<vec2<f32>, 17>();
    let var_2 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), -global2.x, -40283i), firstTrailingBit(min(func_1(vec3<u32>(u_input.c, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.c, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.b, u_input.b, global2.x)), ~4294967295u)), countOneBits(~firstTrailingBit(countOneBits(vec4<i32>(0i, u_input.b, -49740i, u_input.b)))));
}

