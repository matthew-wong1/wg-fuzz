struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 11>;

var<private> global2: Struct_3 = Struct_3(vec3<f32>(567f, -688f, -1489f), false);

var<private> global3: array<Struct_2, 23>;

var<private> global4: Struct_3 = Struct_3(vec3<f32>(533f, -568f, 217f), false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> vec3<bool> {
    global1 = array<Struct_2, 11>();
    global4 = Struct_3(arg_3.zxy, any(vec2<bool>(true, global2.b | (u_input.a.x >= -2147483647i))));
    let var_0 = arg_0 & -33505i;
    var var_1 = Struct_2(Struct_1(!select(vec3<bool>(false, global4.b, true), vec3<bool>(global2.b, arg_1.a.a.x, arg_1.a.a.x), vec3<bool>(global2.b, false, false)), countOneBits(select(vec3<u32>(44532u, 2346u, arg_1.a.b.x), arg_1.a.b, vec3<bool>(global2.b, global2.b, global4.b))) & (vec3<u32>(arg_1.c.x, 8541u, arg_1.c.x) << (~arg_1.a.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(568f, -1487f, false)))), 1000f)), !vec2<bool>(true, all(arg_1.a.a.xy))), _wgslsmith_add_vec4_i32(u_input.a, reverseBits(vec4<i32>(abs(74161i), var_0, _wgslsmith_mod_i32(arg_1.b.x, 1i), 6946i))), select(~(~arg_1.a.b.xx), abs(vec2<u32>(arg_1.a.b.x, 33775u)), vec2<bool>(global2.b, !global4.b)) >> (arg_1.a.b.yz % vec2<u32>(32u)));
    var var_2 = Struct_2(arg_1.a, select(~u_input.b >> (vec4<u32>(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.b.x, 4294967295u, 0u, 78847u), vec4<u32>(4294967295u, var_1.c.x, arg_1.c.x, arg_1.a.b.x)), 4294967295u & var_1.a.b.x, ~arg_2) % vec4<u32>(32u)), vec4<i32>(min(_wgslsmith_sub_i32(-43693i, var_1.b.x), u_input.a.x), -1i, -(~arg_1.b.x), firstTrailingBit(_wgslsmith_mult_i32(5852i, arg_0))), vec4<bool>(global4.b, true, false, global2.b)), select(min(vec2<u32>(~arg_1.c.x, 4294967295u), _wgslsmith_clamp_vec2_u32(arg_1.c, arg_1.c, vec2<u32>(78880u, arg_1.a.b.x)) & ~var_1.c), arg_1.c, select(vec2<bool>(true, !var_1.a.a.x), select(vec2<bool>(global4.b, false), !vec2<bool>(false, global2.b), !var_1.a.d.x), !select(vec2<bool>(global4.b, arg_1.a.a.x), arg_1.a.a.zz, arg_1.a.a.x))));
    return arg_1.a.a;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = arg_0.x;
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(142f - _wgslsmith_div_f32(-1093f, -689f)), global2.a.x, 1192f), all(select(vec3<bool>(global2.b, global4.b, arg_0.x == arg_0.x), !select(vec3<bool>(global2.b, global2.b, false), vec3<bool>(false, false, global2.b), vec3<bool>(false, false, global4.b)), vec3<bool>(global4.b, false, global4.b))));
    let var_2 = !func_3(~u_input.c, global1[_wgslsmith_index_u32(arg_0.x, 11u)], arg_0.x | ~17994u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.a.x, global2.a.x), _wgslsmith_f_op_f32(330f - -532f), _wgslsmith_f_op_f32(1917f + global4.a.x), _wgslsmith_f_op_f32(-global4.a.x))));
    var var_3 = var_1;
    global1 = array<Struct_2, 11>();
    return ~(~_wgslsmith_div_u32(arg_0.x, 3933u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    let var_0 = global2.a.yy;
    let var_1 = Struct_2(arg_1, firstLeadingBit(u_input.a), vec2<u32>(0u, 1u));
    let var_2 = var_1;
    global3 = array<Struct_2, 23>();
    global2 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.c, -934f, arg_1.c), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.c, 2131f, var_1.a.c), global2.a))), _wgslsmith_div_vec3_f32(global2.a, vec3<f32>(740f, var_0.x, global2.a.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global2.a))))))), !any(!select(vec4<bool>(true, false, var_2.a.d.x, arg_1.d.x), vec4<bool>(var_2.a.a.x, arg_1.a.x, var_1.a.d.x, true), var_2.a.d.x)));
    return -2147483647i;
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_2, 11>();
    var var_0 = func_4(select(~vec2<u32>(~1u, ~23022u), vec2<u32>(select(~24505u, 1u, global2.b), _wgslsmith_clamp_u32(func_2(vec3<u32>(25929u, 77917u, 1u)), select(10342u, 22739u, true), min(46556u, 4294967295u))), true), Struct_1(select(select(!vec3<bool>(false, global4.b, false), vec3<bool>(global4.b, true, false), vec3<bool>(global4.b, global2.b, global2.b)), select(func_3(u_input.c, Struct_2(Struct_1(vec3<bool>(global4.b, global2.b, false), vec3<u32>(54851u, 1u, 4294967295u), 161f, vec2<bool>(false, global2.b)), vec4<i32>(u_input.a.x, u_input.c, u_input.b.x, u_input.c), vec2<u32>(0u, 1u)), 1u, vec4<f32>(global2.a.x, -160f, global4.a.x, -2111f)), !vec3<bool>(true, true, global2.b), !vec3<bool>(global2.b, global4.b, true)), !(false && global4.b)), ~(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))), select(func_3(min(2147483647i, u_input.c), global3[_wgslsmith_index_u32(0u, 23u)], 4294967295u, vec4<f32>(global2.a.x, global2.a.x, 1815f, 1443f)).yz, vec2<bool>(true, true), select(vec2<bool>(global4.b, false), func_3(u_input.c, Struct_2(Struct_1(vec3<bool>(true, global4.b, global4.b), vec3<u32>(0u, 16218u, 15645u), 213f, vec2<bool>(true, false)), u_input.a, vec2<u32>(1u, 68966u)), 62575u, vec4<f32>(-926f, global2.a.x, 127f, global2.a.x)).zx, vec2<bool>(global2.b, true)))), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(sign(global2.a.x)), _wgslsmith_f_op_f32(min(-747f, global2.a.x))) - _wgslsmith_f_op_vec3_f32(-global4.a)), global2.b));
    global0 = 5396i;
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(~reverseBits(0u)), ~_wgslsmith_add_u32(~31397u, _wgslsmith_dot_vec4_u32(vec4<u32>(58916u, 4294967295u, 53628u, 1u), vec4<u32>(91899u, 89433u, 4294967295u, 5192u)))), countOneBits(firstTrailingBit(~vec2<u32>(72654u, 1u))) >> (vec2<u32>(2063u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(19228u, 967u, 1u, 21589u), vec4<u32>(60327u, 68672u, 4294967295u, 4294967295u)))) % vec2<u32>(32u)));
    var var_2 = vec4<u32>(~(~select(4294967295u, 1u, all(vec4<bool>(global4.b, true, global4.b, global2.b)))), ~1u ^ func_2(firstTrailingBit(vec3<u32>(1u, 1u, 1u))), 44036u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(508u, 1u, 51336u, 1u))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(min(global4.a, global4.a)), any(func_3(u_input.b.x, Struct_2(Struct_1(vec3<bool>(global2.b, true, global2.b), vec3<u32>(var_2.x, 23515u, var_2.x), global4.a.x, vec2<bool>(global2.b, true)), u_input.a, vec2<u32>(var_2.x, var_2.x) ^ var_2.xy), 1u, vec4<f32>(-1357f, _wgslsmith_f_op_f32(f32(-1f) * -709f), -1247f, _wgslsmith_f_op_f32(step(global4.a.x, 740f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(45875u, ~(~func_2(abs(vec3<u32>(36465u, 31027u, 8766u))))), 23u)];
    let var_1 = ~1u;
    global4 = func_1();
    let var_2 = vec4<u32>(~var_1, 1u, _wgslsmith_mult_u32(0u, ~_wgslsmith_div_u32(var_1, var_0.a.b.x)), firstLeadingBit(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(8551u, var_0.c.x, var_0.c.x), reverseBits(11912u))));
    var var_3 = global4.b;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1185f, 702f), min(max(vec3<i32>(firstTrailingBit(var_0.b.x), u_input.c, 2147483647i), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xyz, vec3<i32>(var_0.b.x, var_0.b.x, 5457i)), -u_input.b.x, 29888i)), vec3<i32>(2147483647i, firstTrailingBit(_wgslsmith_add_i32(var_0.b.x, var_0.b.x)), var_0.b.x)));
}

