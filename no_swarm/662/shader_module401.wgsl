struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(19270u, 4294967295u, 0u), vec3<u32>(4294967295u, 8207u, 10979u), vec3<u32>(4294967295u, 58740u, 4294967295u), vec3<u32>(33410u, 4821u, 1u), vec3<u32>(26985u, 1u, 3269u), vec3<u32>(75313u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 28293u), vec3<u32>(57805u, 4294967295u, 0u), vec3<u32>(40764u, 0u, 0u), vec3<u32>(12965u, 0u, 1u), vec3<u32>(99527u, 1u, 78873u));

var<private> global1: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(0i, 1i, -5053i, 2147483647i), vec4<i32>(-1i, -1i, 10412i, 13594i), vec4<i32>(2147483647i, -63709i, 16633i, 2147483647i), vec4<i32>(-55243i, 11545i, -1i, -61291i), vec4<i32>(i32(-2147483648), 1i, -6627i, -1i), vec4<i32>(-22424i, 1i, -6684i, -1i), vec4<i32>(-14088i, -27368i, 6373i, 1i), vec4<i32>(19833i, -40867i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 28534i, -54181i, 2147483647i), vec4<i32>(2147483647i, 1i, -13761i, 48622i));

var<private> global2: array<vec4<bool>, 1>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(4294967295u, -1i, vec2<bool>(true, true), -519f, vec4<bool>(true, false, false, true)), Struct_1(3031u, -39750i, vec2<bool>(false, false), 447f, vec4<bool>(false, true, false, true)), Struct_1(74867u, 53344i, vec2<bool>(true, true), 242f, vec4<bool>(false, false, true, true)), Struct_1(4294967295u, 0i, vec2<bool>(true, true), 847f, vec4<bool>(false, false, false, false)), Struct_1(65250u, -1i, vec2<bool>(false, false), -1632f, vec4<bool>(true, false, false, false)), Struct_1(0u, -23928i, vec2<bool>(false, false), -1220f, vec4<bool>(false, true, false, true)), Struct_1(732u, 102730i, vec2<bool>(false, false), -769f, vec4<bool>(false, false, false, true)), Struct_1(0u, -1i, vec2<bool>(false, false), -322f, vec4<bool>(false, true, false, false)), Struct_1(0u, -1i, vec2<bool>(true, false), -148f, vec4<bool>(false, false, false, true)), Struct_1(1u, 2147483647i, vec2<bool>(false, false), -1031f, vec4<bool>(true, true, false, true)), Struct_1(25538u, i32(-2147483648), vec2<bool>(false, false), 866f, vec4<bool>(false, true, true, false)), Struct_1(4294967295u, 6790i, vec2<bool>(false, false), 1014f, vec4<bool>(true, false, false, false)), Struct_1(29821u, -48536i, vec2<bool>(false, true), 1000f, vec4<bool>(true, true, true, false)), Struct_1(12862u, 1i, vec2<bool>(true, false), 472f, vec4<bool>(true, false, true, false)), Struct_1(49017u, 0i, vec2<bool>(true, true), -1175f, vec4<bool>(false, true, true, true)), Struct_1(82910u, i32(-2147483648), vec2<bool>(false, false), 244f, vec4<bool>(false, true, true, true)), Struct_1(0u, -24545i, vec2<bool>(true, false), -805f, vec4<bool>(false, true, true, true)), Struct_1(43844u, 16302i, vec2<bool>(true, true), -308f, vec4<bool>(false, true, false, true)), Struct_1(39818u, i32(-2147483648), vec2<bool>(true, false), 1278f, vec4<bool>(false, false, true, true)), Struct_1(6391u, -37358i, vec2<bool>(true, false), 704f, vec4<bool>(true, true, false, true)), Struct_1(0u, 59i, vec2<bool>(false, true), 728f, vec4<bool>(false, false, true, true)), Struct_1(48978u, -1i, vec2<bool>(true, false), 456f, vec4<bool>(true, true, true, true)), Struct_1(1u, -1i, vec2<bool>(true, true), 134f, vec4<bool>(true, true, false, true)), Struct_1(28135u, 46215i, vec2<bool>(false, false), 1839f, vec4<bool>(true, false, true, false)), Struct_1(64053u, -1i, vec2<bool>(false, true), -892f, vec4<bool>(false, false, true, true)), Struct_1(28908u, 2147483647i, vec2<bool>(true, false), 3744f, vec4<bool>(true, false, false, false)), Struct_1(0u, -37035i, vec2<bool>(false, false), 775f, vec4<bool>(true, false, true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = arg_2.a.e.xwx;
    global1 = array<vec4<i32>, 10>();
    global2 = array<vec4<bool>, 1>();
    global3 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -874f))) * 342f), arg_2.a.d) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.d, 459f))))));
    return !vec4<bool>(false, all(select(arg_2.a.e.wwy, arg_1.xzx, vec3<bool>(arg_1.x, arg_1.x, false))) || all(select(global2[_wgslsmith_index_u32(4294967295u, 1u)], vec4<bool>(var_0.x, true, arg_1.x, arg_1.x), arg_1.x)), false, all(select(select(vec2<bool>(var_0.x, false), arg_2.a.c, true), !vec2<bool>(true, var_0.x), select(arg_2.a.e.xy, vec2<bool>(var_0.x, true), arg_2.a.e.wz))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3.c;
    global0 = array<vec3<u32>, 11>();
    let var_1 = -max((~arg_3.d & (i32(-1i) * -1i)) & _wgslsmith_dot_vec3_i32(arg_0.e, -arg_3.e), max(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.c, arg_3.e.xx)));
    let var_2 = func_3(var_1, vec4<bool>(arg_1.x, all(arg_3.b.e.ywx) & !arg_1.x, select(true, true, true), arg_0.c.a.e.x), arg_0.c).x;
    var var_3 = arg_3.c;
    return _wgslsmith_mult_u32(~arg_0.c.a.a, ~(~2071u) >> (arg_0.c.a.a % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    global2 = array<vec4<bool>, 1>();
    let var_0 = _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(func_4(Struct_3(~u_input.b, arg_1.c.a, arg_1.c, -u_input.c.x, ~vec3<i32>(-2147483647i, 49872i, arg_1.d)), func_3(min(u_input.c.x, -1i), select(vec4<bool>(false, arg_1.b.e.x, arg_1.b.c.x, arg_1.c.a.e.x), arg_1.c.a.e, false), arg_1.c), func_3(_wgslsmith_mult_i32(arg_1.e.x, u_input.c.x), arg_1.c.a.e, Struct_2(Struct_1(u_input.a, -1i, vec2<bool>(arg_1.b.c.x, arg_1.c.a.e.x), -1582f, global2[_wgslsmith_index_u32(1u, 1u)]))).yw, Struct_3(vec3<u32>(8545u, 30688u, 4294967295u), Struct_1(u_input.b.x, arg_1.e.x, arg_1.c.a.c, arg_0.x, arg_1.c.a.e), Struct_2(Struct_1(arg_1.a.x, 1i, arg_1.b.e.ww, 474f, vec4<bool>(arg_1.c.a.c.x, false, false, arg_1.b.c.x))), firstTrailingBit(arg_1.e.x), vec3<i32>(35813i, arg_1.d, u_input.c.x))), u_input.a));
    global0 = array<vec3<u32>, 11>();
    let var_1 = arg_1.c;
    var var_2 = arg_1;
    return u_input.c.x | ~firstTrailingBit(_wgslsmith_div_i32(u_input.c.x, 1i) >> (countOneBits(var_2.c.a.a) % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    var var_0 = firstLeadingBit(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(391f, -982f, 815f, arg_0.b.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-520f, arg_3.b.d, -1000f, arg_3.c.a.d), vec4<f32>(arg_1, arg_1, -822f, -1045f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.d, 931f, 1042f, arg_1), vec4<f32>(arg_2.d, 1747f, 686f, arg_2.d))), arg_0.b.e)), arg_3));
    var var_1 = !select(select(!select(arg_2.e, vec4<bool>(arg_3.c.a.e.x, true, arg_2.c.x, arg_0.b.c.x), vec4<bool>(false, arg_3.b.e.x, false, arg_3.b.c.x)), select(func_3(35431i, vec4<bool>(true, arg_2.c.x, arg_0.b.c.x, arg_2.c.x), arg_0.c), !vec4<bool>(arg_0.b.c.x, arg_2.e.x, false, arg_2.c.x), arg_2.c.x), !global2[_wgslsmith_index_u32(4294967295u, 1u)]), arg_2.e, select(select(select(arg_3.c.a.e, vec4<bool>(arg_3.b.c.x, false, arg_3.b.e.x, true), arg_2.e.x), select(arg_3.b.e, global2[_wgslsmith_index_u32(arg_0.b.a, 1u)], false), true), arg_0.c.a.e, !vec4<bool>(true, arg_0.c.a.e.x, true, arg_2.c.x)));
    var var_2 = Struct_3(arg_3.a, global3[_wgslsmith_index_u32(arg_2.a, 27u)], Struct_2(Struct_1(0u, arg_2.b, vec2<bool>(arg_0.a.x >= arg_0.b.a, !arg_0.c.a.c.x), _wgslsmith_f_op_f32(-arg_2.d), vec4<bool>(arg_0.b.c.x, all(vec4<bool>(true, true, false, true)), !arg_3.b.c.x, all(arg_0.c.a.e)))), _wgslsmith_clamp_i32(12416i, arg_3.d, arg_0.b.b), ~vec3<i32>(arg_3.c.a.b, 2147483647i, _wgslsmith_sub_i32(~u_input.c.x, 24848i)));
    global3 = array<Struct_1, 27>();
    global3 = array<Struct_1, 27>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-166f, -738f, false)), _wgslsmith_f_op_f32(trunc(1f)), arg_3.b.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-365f, -503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(u_input.b, Struct_1(74164u, 29377i, vec2<bool>(true, true), 1817f, global2[_wgslsmith_index_u32(4294967295u, 1u)]), Struct_2(Struct_1(u_input.a, u_input.c.x, vec2<bool>(false, true), -1349f, vec4<bool>(false, true, true, true))), u_input.c.x, vec3<i32>(1i, 11209i, u_input.c.x)), -1091f, Struct_1(1u, -1i, vec2<bool>(true, false), 1000f, vec4<bool>(true, true, true, false)), Struct_3(u_input.b, global3[_wgslsmith_index_u32(u_input.d, 27u)], Struct_2(Struct_1(u_input.b.x, -2147483647i, vec2<bool>(false, true), -1000f, global2[_wgslsmith_index_u32(u_input.a, 1u)])), -1i, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))) - _wgslsmith_div_f32(-121f, -711f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, 700f)) * _wgslsmith_f_op_f32(min(200f, _wgslsmith_f_op_f32(sign(208f))))))), 2147483647i, -u_input.c.x, firstTrailingBit(firstTrailingBit(u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1561f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1778f) + _wgslsmith_f_op_f32(ceil(-939f))))));
}

