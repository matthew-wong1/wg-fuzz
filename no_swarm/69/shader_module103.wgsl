struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: vec4<f32>;

var<private> global3: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(0u, 16504u, 4294967295u), vec3<u32>(4294967295u, 40091u, 4294967295u), vec3<u32>(29590u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 45266u, 1u), vec3<u32>(4294967295u, 1u, 16553u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_1(countOneBits(32530u), arg_1.c.c, -761f);
    let var_1 = vec2<bool>(true, true);
    var var_2 = global1[_wgslsmith_index_u32(var_0.a, 28u)];
    var var_3 = Struct_1(_wgslsmith_mult_u32(~(~arg_1.a), u_input.a.x), ~(~_wgslsmith_div_i32(i32(-1i) * -19201i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.b, 1i, 0i, -2147483647i), vec4<i32>(arg_1.c.c, -12473i, 1i, -9862i)))), -656f);
    var var_4 = Struct_2(!any(vec4<bool>(false | var_1.x, true, true, !var_1.x)), ~(var_3.b ^ var_0.b), ~(~(-14251i) << (u_input.a.x % 32u)) << (var_3.a % 32u));
    return 8430u;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<i32> {
    let var_0 = vec3<u32>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(449f + global2.x), arg_0)), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, u_input.a.x)), true, Struct_2(any(vec4<bool>(false, false, true, true)), -77537i, 282i))), arg_1, 33183u);
    let var_1 = !select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), all(vec4<bool>(true, true, true, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec4<bool>(false, false, false, false))), !all(vec4<bool>(false, true, true, false))), !vec2<bool>(true, all(vec2<bool>(false, true))));
    var var_2 = _wgslsmith_f_op_f32(round(157f));
    global0 = array<Struct_4, 26>();
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, arg_0, -1180f, 403f), vec4<f32>(arg_0, -1000f, arg_0, -654f), vec4<bool>(true, var_1.x, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(214f, arg_0, 788f, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -643f, global2.x, arg_0)) - vec4<f32>(global2.x, global2.x, arg_0, 232f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, -755f, 286f), vec4<f32>(arg_0, 483f, global2.x, arg_0), global1[_wgslsmith_index_u32(0u, 28u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_0, 647f, 1048f)), vec4<bool>(!var_1.x, any(vec3<bool>(var_1.x, false, var_1.x)), var_1.x, var_1.x)))));
    return -vec3<i32>(firstTrailingBit(min(11002i, countOneBits(7674i))), -25539i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -5346i, 2147483647i))));
}

fn func_1() -> Struct_1 {
    global2 = vec4<f32>(global2.x, -829f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1268f + -568f))));
    global2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), global2.x, 920f, _wgslsmith_f_op_f32(step(-1579f, -665f))) + vec4<f32>(-259f, 458f, global2.x, _wgslsmith_f_op_f32(-258f + _wgslsmith_f_op_f32(step(global2.x, -2026f)))))));
    var var_0 = _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-44063i, countOneBits(59843i), select(-2147483647i, 2147483647i, true)), ~firstLeadingBit(vec3<i32>(1i, 0i, 2147483647i))) & _wgslsmith_div_vec3_i32(func_2(global2.x, 1u) | ~vec3<i32>(-1i, -2147483647i, -1i), countOneBits(vec3<i32>(-1i, 0i, 2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(-abs(-2147483647i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-21993i, 0i)), vec2<i32>(1i, 1i)), 1i), ~(~(vec3<i32>(1i, -1i, -2269i) << (global3[_wgslsmith_index_u32(47494u, 6u)] % vec3<u32>(32u))))), vec3<i32>(~1i, min(1i, 1i), 1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, global2.x, -207f, 174f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-640f)), -1930f)), global2.x, 342f)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(~(~u_input.a.x), 0u, all(!global1[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_dot_vec2_u32(~(u_input.a << (u_input.a % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 35529u, 36443u), global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), 83192u ^ u_input.a.x)), ~_wgslsmith_add_u32(1u, u_input.a.x), 4294967295u), firstLeadingBit(~(~vec4<u32>(u_input.a.x, 4294967295u, 41384u, u_input.a.x)))), 28u)];
    return Struct_1(_wgslsmith_mult_u32(countOneBits(u_input.a.x), u_input.a.x), ~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(592f))), ~(u_input.a.x | 22218u)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 282f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1716f * -685f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_1(), Struct_3(1u, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_2(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -1i, -2147483647i) << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 36928u) % vec4<u32>(32u)), vec4<i32>(-9416i, -1i, 1i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 7181i), vec2<i32>(1i, 25194i)))), Struct_3(u_input.a.x, select(!all(global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), any(select(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), true && all(vec2<bool>(true, false))), Struct_2(true, ~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(25705i, -2630i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(1i, 1i)))), abs(reverseBits(i32(-1i) * -2147483647i)));
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(453f * _wgslsmith_f_op_f32(var_0.a.c * 567f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) * _wgslsmith_f_op_f32(-var_0.a.c))), _wgslsmith_f_op_f32(global2.x * 773f), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(-var_0.a.c)))), vec4<f32>(-281f, -903f, global2.x, global2.x));
    global1 = array<vec4<bool>, 28>();
    let var_1 = Struct_2(select(select(var_0.c.c.a, any(vec2<bool>(false, var_0.b.b)), !var_0.b.b), true, true), -35926i, -2147483647i);
    var var_2 = select(vec3<bool>(var_0.c.c.a, false, false), vec3<bool>(var_0.b.b, false | (var_0.c.c.c >= _wgslsmith_sub_i32(-2147483647i, -1i)), true), vec3<bool>(!all(vec3<bool>(true, true, true)), true, !all(!global1[_wgslsmith_index_u32(80985u, 28u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.c.b, ~var_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1290f - global2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) - var_0.a.c)) - -328f), (_wgslsmith_div_u32(51953u, 1u) >> (0u % 32u)) << (func_1().a % 32u), vec4<u32>(var_0.a.a, ~(~u_input.a.x), select(_wgslsmith_add_u32(u_input.a.x, var_0.b.a), ~var_0.a.a, true) & ~abs(1u), 0u));
}

