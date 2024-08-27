struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
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

var<private> global0: array<vec4<f32>, 31>;

var<private> global1: Struct_4 = Struct_4(vec3<i32>(-12300i, i32(-2147483648), 2147483647i), 0u, 647f, Struct_3(vec3<i32>(1i, 1i, 0i)));

var<private> global2: Struct_2;

var<private> global3: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec3<i32>(2147483647i, -1i, 1i), 0u, 854f, Struct_3(vec3<i32>(-79897i, 2835i, 2147483647i))), Struct_4(vec3<i32>(-44426i, -7503i, -11691i), 1u, 538f, Struct_3(vec3<i32>(0i, 81198i, 1i))), Struct_4(vec3<i32>(-39755i, 1826i, 60789i), 4294967295u, 467f, Struct_3(vec3<i32>(41516i, -6608i, -46808i))), Struct_4(vec3<i32>(-15385i, -12762i, 2594i), 13409u, -1340f, Struct_3(vec3<i32>(2800i, 8671i, 11681i))), Struct_4(vec3<i32>(2147483647i, i32(-2147483648), -4805i), 0u, -869f, Struct_3(vec3<i32>(68306i, 19025i, -19382i))), Struct_4(vec3<i32>(-49576i, 60568i, 33912i), 1u, 262f, Struct_3(vec3<i32>(-1i, i32(-2147483648), 70160i))), Struct_4(vec3<i32>(2147483647i, -22159i, 0i), 102560u, 1987f, Struct_3(vec3<i32>(-1i, 60256i, -1i))), Struct_4(vec3<i32>(25223i, -707i, -5583i), 26947u, -1945f, Struct_3(vec3<i32>(-86014i, -12356i, 1i))), Struct_4(vec3<i32>(-14226i, -12727i, 0i), 4294967295u, 483f, Struct_3(vec3<i32>(0i, 67265i, 11532i))), Struct_4(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), 1u, -944f, Struct_3(vec3<i32>(-1i, -9293i, -24131i))), Struct_4(vec3<i32>(1i, 2147483647i, i32(-2147483648)), 73560u, -966f, Struct_3(vec3<i32>(1i, 2147483647i, 14015i))));

var<private> global4: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<i32>(65i, -7837i, 13260i)), Struct_3(vec3<i32>(2147483647i, 0i, 1i)), Struct_3(vec3<i32>(52586i, -568i, 1i)), Struct_3(vec3<i32>(2147483647i, 58090i, 11349i)), Struct_3(vec3<i32>(58058i, -17183i, i32(-2147483648))), Struct_3(vec3<i32>(2147483647i, -20898i, 1i)), Struct_3(vec3<i32>(1i, 68470i, 1i)), Struct_3(vec3<i32>(34676i, 51712i, -15474i)), Struct_3(vec3<i32>(1i, 0i, i32(-2147483648))), Struct_3(vec3<i32>(20416i, 17312i, 44585i)), Struct_3(vec3<i32>(-1i, -1i, 1i)), Struct_3(vec3<i32>(-1i, i32(-2147483648), 2147483647i)), Struct_3(vec3<i32>(-1i, -1i, 0i)), Struct_3(vec3<i32>(-49600i, 1i, 29984i)), Struct_3(vec3<i32>(-21328i, -16907i, 2147483647i)), Struct_3(vec3<i32>(-36353i, 1i, 0i)), Struct_3(vec3<i32>(0i, 14289i, 0i)), Struct_3(vec3<i32>(2147483647i, -2352i, 2147483647i)), Struct_3(vec3<i32>(12257i, 12123i, 0i)), Struct_3(vec3<i32>(i32(-2147483648), 1i, 28931i)), Struct_3(vec3<i32>(1i, 54212i, 1i)), Struct_3(vec3<i32>(-37405i, -1i, 25991i)), Struct_3(vec3<i32>(0i, 28863i, -22750i)), Struct_3(vec3<i32>(2147483647i, -33598i, i32(-2147483648))), Struct_3(vec3<i32>(-17117i, -1i, -9799i)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> vec4<u32> {
    global0 = array<vec4<f32>, 31>();
    global0 = array<vec4<f32>, 31>();
    global1 = global3[_wgslsmith_index_u32(~(u_input.b.x ^ global2.b), 11u)];
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(6623i, global1.d.a.x), abs(~global1.a.zz)), -34579i, -(~abs(-1i))) == ~(-33137i);
    var var_1 = true;
    return max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x << (21209u % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_1.wzw, vec3<u32>(u_input.b.x, arg_1.x, u_input.b.x)), global2.b), u_input.b.x, 0u), abs(_wgslsmith_mod_vec4_u32(~arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(global1.b, global2.b, global2.b, arg_1.x), vec4<u32>(global1.b, global1.b, global1.b, arg_1.x))))), arg_1);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(true, ~(~global2.b), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)), vec4<bool>(any(vec2<bool>(true, true)), true, false, true), vec4<bool>(true, true, true, true)), true, true);
    let var_1 = Struct_4(vec3<i32>(36531i, 2147483647i, 2147483647i & ~abs(global1.a.x)), _wgslsmith_sub_u32(1u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -401f), global1.d);
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(0u, 4294967295u)), 31u)] * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(var_1.b, 31u)], global2.a, false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1289f, -132f, 1422f, global2.a.x))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-117f, var_1.c, 426f, global1.c))))), ~u_input.b.x);
    global2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c - -2011f), 1555f))), var_1.c, global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-276f, _wgslsmith_f_op_f32(826f * -361f), false)))), 4294967295u);
    let var_2 = _wgslsmith_div_u32(countOneBits(1u), ~(abs(0u) | ~global2.b) & _wgslsmith_dot_vec2_u32(~(~u_input.b.zz), vec2<u32>(131555u, 1u)));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(abs(1u), 31u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.b.x, 31u)] - global0[_wgslsmith_index_u32(var_1.b, 31u)])))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, global1.c, _wgslsmith_f_op_f32(select(983f, global1.c, var_0.e)), _wgslsmith_f_op_f32(global2.a.x - -919f)), global2.a)))), vec4<bool>(true & any(select(var_0.c.wy, vec2<bool>(var_0.e, var_0.e), var_0.d)), select(var_0.d, var_0.a, global2.a.x != 706f) && true, any(var_0.c.yw), var_0.c.x)));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec4_u32(~u_input.b, u_input.b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c)))), u_input.b));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(select(global1.b, 18022u, false), 31u)]), abs(arg_1));
    global0 = array<vec4<f32>, 31>();
    global1 = arg_0;
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3()))), global2.b);
    return _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, global1.a.x), global1.a.yx) | (5567i << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)) <= _wgslsmith_f_op_f32(-global1.c), any(vec2<bool>(true, true)), global1.c < 974f, true);
    let var_1 = true;
    let var_2 = Struct_3(vec3<i32>(_wgslsmith_mult_i32(-1i, 1i), _wgslsmith_sub_i32(func_1(global3[_wgslsmith_index_u32(~u_input.b.x, 11u)], global1.b, min(u_input.b.xz, vec2<u32>(24565u, global1.b))), _wgslsmith_sub_i32(-19342i, -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(1i, -1i)) & global1.a.zy, global1.a.yy)));
    global4 = array<Struct_3, 25>();
    var var_3 = global3[_wgslsmith_index_u32(firstTrailingBit(global2.b), 11u)];
    global3 = array<Struct_4, 11>();
    var var_4 = firstTrailingBit(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-26455i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-417f)) + _wgslsmith_f_op_f32(-var_3.c)));
}

