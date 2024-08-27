struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<u32>(1u, 139460u), vec2<i32>(1i, -5831i), 277f), Struct_1(vec2<u32>(0u, 71340u), vec2<i32>(0i, i32(-2147483648)), 1971f), Struct_1(vec2<u32>(67212u, 0u), vec2<i32>(2147483647i, 0i), 2338f), Struct_1(vec2<u32>(0u, 9923u), vec2<i32>(9280i, -21279i), -1120f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<i32>(21714i, 44474i), -2289f), Struct_1(vec2<u32>(1u, 46343u), vec2<i32>(2147483647i, 18901i), -1000f), Struct_1(vec2<u32>(77808u, 15431u), vec2<i32>(i32(-2147483648), 0i), 1826f), Struct_1(vec2<u32>(1u, 49864u), vec2<i32>(-5544i, 24708i), -548f));

var<private> global1: f32 = -2342f;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<i32>(28734i, i32(-2147483648)), 975f);

var<private> global3: bool;

var<private> global4: array<f32, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: vec4<u32>) -> u32 {
    global4 = array<f32, 14>();
    global3 = !(!all(vec4<bool>(true, true, true, true)));
    global0 = array<Struct_1, 8>();
    var var_0 = ~(~_wgslsmith_add_u32(global2.a.x, 1u)) >= 1u;
    return arg_2.x;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    global4 = array<f32, 14>();
    global3 = true;
    var var_0 = -_wgslsmith_clamp_vec4_i32(select(firstTrailingBit(~vec4<i32>(0i, u_input.a, global2.b.x, -23306i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(global2.b.x, global2.b.x, global2.b.x, -2147483647i), vec4<i32>(global2.b.x, u_input.a, global2.b.x, u_input.a), arg_1), -vec4<i32>(u_input.a, 61068i, -13762i, -1i)), select(select(vec4<bool>(true, false, true, arg_1), vec4<bool>(true, false, false, true), vec4<bool>(false, arg_1, arg_1, arg_1)), !vec4<bool>(true, true, arg_1, true), select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, false, true, arg_1), arg_1))), select(~vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a), ~min(vec4<i32>(u_input.a, 14347i, global2.b.x, 1i), vec4<i32>(global2.b.x, u_input.a, -8621i, u_input.a)), _wgslsmith_dot_vec2_i32(global2.b, global2.b) == -global2.b.x), -vec4<i32>(abs(u_input.a), 1i, -u_input.a, global2.b.x));
    let var_1 = Struct_2(Struct_1(vec2<u32>(~_wgslsmith_dot_vec2_u32(arg_2.b.xz, vec2<u32>(global2.a.x, global2.a.x)), ~4294967295u), (var_0.yx << ((vec2<u32>(17693u, 35420u) ^ vec2<u32>(arg_0, 972u)) % vec2<u32>(32u))) << (select(arg_2.b.xx & arg_2.b.wx, vec2<u32>(arg_2.b.x, arg_0) << (vec2<u32>(1u, 23712u) % vec2<u32>(32u)), false) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f + global2.c)))), vec3<u32>(_wgslsmith_mult_u32(87728u, ~4294967295u), arg_0, 1u));
    let var_2 = var_1;
    return firstLeadingBit(_wgslsmith_mod_vec3_u32(var_1.b, abs(var_1.b)));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_3 {
    let var_0 = (func_4(~func_3(global4[_wgslsmith_index_u32(global2.a.x, 14u)], 1u, vec3<u32>(global2.a.x, global2.a.x, 32301u), vec4<u32>(global2.a.x, 4294967295u, 4294967295u, 33780u)), any(select(vec3<bool>(arg_1, false, true), vec3<bool>(false, true, arg_1), vec3<bool>(true, true, false))), Struct_3(-1556f, vec4<u32>(global2.a.x, 1u, global2.a.x, 1u), global2.c)) ^ vec3<u32>(36607u, 69934u << (global2.a.x % 32u), ~func_3(163f, global2.a.x, vec3<u32>(6650u, 1u, global2.a.x), vec4<u32>(global2.a.x, 17084u, 6327u, global2.a.x)))) | vec3<u32>(global2.a.x, global2.a.x, global2.a.x);
    global1 = 848f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(var_0.x, 14u)], 328f, -822f, global2.c), vec4<f32>(global2.c, global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(5592u, 14u)], 448f))) * vec4<f32>(_wgslsmith_f_op_f32(arg_0 * -165f), global4[_wgslsmith_index_u32(global2.a.x, 14u)], -881f, 548f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-882f, -199f, arg_0, global2.c))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1102f, 1993f, arg_0, global2.c) * vec4<f32>(global4[_wgslsmith_index_u32(29014u, 14u)], arg_0, -525f, global4[_wgslsmith_index_u32(0u, 14u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2207f, global2.c, -2147f, -754f))))));
    global3 = !all(vec2<bool>(max(global2.b.x, 1i) < 1i, all(!vec2<bool>(arg_1, true))));
    let var_2 = Struct_1(var_0.zz, -vec2<i32>(u_input.a, global2.b.x << (~global2.a.x % 32u)), 1405f);
    return Struct_3(global2.c, vec4<u32>(~var_2.a.x, ~var_2.a.x, ~(~_wgslsmith_clamp_u32(global2.a.x, 1u, var_0.x)), min(global2.a.x << (var_2.a.x % 32u), _wgslsmith_mult_u32(~var_2.a.x, ~10275u))), arg_0);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_3(430f, ~vec4<u32>(abs(global2.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.a.x, 100673u, global2.a.x) & vec4<u32>(18282u, 49391u, global2.a.x, global2.a.x), select(vec4<u32>(global2.a.x, 86152u, global2.a.x, global2.a.x), vec4<u32>(global2.a.x, global2.a.x, 4294967295u, global2.a.x), vec4<bool>(true, false, true, true))), select(1u, global2.a.x, true), _wgslsmith_dot_vec3_u32(vec3<u32>(13344u, 1u, global2.a.x) | vec3<u32>(4294967295u, global2.a.x, 36934u), ~vec3<u32>(0u, 0u, global2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2854f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global2.c)))))));
    global0 = array<Struct_1, 8>();
    var_0 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -142f)))))), false);
    let var_1 = all(vec4<bool>(select(any(vec2<bool>(true, false)), select(false, false, true), any(vec3<bool>(true, false, true))) | true, func_4(global2.a.x, true, Struct_3(1053f, var_0.b, -819f)).x != (countOneBits(global2.a.x) >> (global2.a.x % 32u)), true, true));
    global0 = array<Struct_1, 8>();
    return Struct_2(global0[_wgslsmith_index_u32(func_4(global2.a.x, false, Struct_3(-157f, _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, 13617u, var_0.b.x), var_0.b) ^ vec4<u32>(37242u, global2.a.x, 55841u, 1u), 1f)).x, 8u)], var_0.b.wxw);
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = 4586u;
    global2 = Struct_1(~(select(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 48502u), vec2<u32>(4294967295u, global2.a.x)), abs(vec2<u32>(33482u, global2.a.x)), any(vec2<bool>(false, arg_1))) >> (max(~vec2<u32>(var_0, 1u), vec2<u32>(arg_2.a.a.x, 34767u)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-11077i, 22461i, u_input.a), 27920i << (1u % 32u)), _wgslsmith_mod_vec2_i32(global2.b, _wgslsmith_add_vec2_i32(arg_2.a.b, vec2<i32>(u_input.a, 0i)))), abs(vec2<i32>(u_input.a, i32(-1i) * -2147483647i))), _wgslsmith_f_op_f32(trunc(global2.c)));
    global1 = 1027f;
    return Struct_2(Struct_1(global2.a, func_1(~_wgslsmith_sub_i32(arg_2.a.b.x, global2.b.x)).a.b, global2.c), reverseBits(vec3<u32>(arg_2.a.a.x, 1u, var_0)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global1 = _wgslsmith_f_op_f32(round(855f));
    var var_0 = arg_0.a;
    var var_1 = arg_0;
    let var_2 = arg_1.b.x;
    let var_3 = abs(vec4<u32>(23231u, global2.a.x, func_1(_wgslsmith_mult_i32(-1i, ~var_0.b.x)).a.a.x, ~(_wgslsmith_clamp_u32(arg_1.a.a.x, 1u, 4294967295u) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, 56514u, var_1.a.a.x), vec4<u32>(arg_0.b.x, 16455u, 46209u, 79047u)))));
    return var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-191f, -1213f, -719f, global4[_wgslsmith_index_u32(7976u, 14u)]), vec4<f32>(global4[_wgslsmith_index_u32(1u, 14u)], -1038f, -424f, -792f), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(2833u, 14u)], -790f, global2.c, global4[_wgslsmith_index_u32(global2.a.x, 14u)]))))), true, func_1(~0i), i32(-1i) * -u_input.a), Struct_2(func_1(firstTrailingBit(u_input.a)).a, max(_wgslsmith_div_vec3_u32(~vec3<u32>(66351u, global2.a.x, 4294967295u), firstLeadingBit(vec3<u32>(1u, global2.a.x, global2.a.x))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global2.a.x, global2.a.x), vec3<u32>(global2.a.x, 4294967295u, 1u))))));
    global0 = array<Struct_1, 8>();
    var var_0 = !(4987i != global2.b.x);
    let var_1 = _wgslsmith_clamp_u32(global2.a.x, 94845u >> (global2.a.x % 32u), global2.a.x);
    let var_2 = vec3<u32>(select(select(_wgslsmith_div_u32(0u, var_1), firstLeadingBit(4294967295u), select(true, true, false)), ~(~4294967295u), all(vec3<bool>(true, false, false)) || any(vec3<bool>(true, true, true))), ~global2.a.x, global2.a.x << (~(~11340u) % 32u)) ^ vec3<u32>(91097u, ~(~var_1), min(var_1, _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, var_1), global2.a.x)));
    var var_3 = -_wgslsmith_div_vec2_i32(vec2<i32>(13403i, global2.b.x), ~(-vec2<i32>(1i, u_input.a)));
    global4 = array<f32, 14>();
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1u), -1i, _wgslsmith_f_op_f32(-global2.c));
}

