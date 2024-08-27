struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(2684u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(40594u, 71794u, 77839u), vec3<u32>(27041u, 21543u, 0u), vec3<u32>(0u, 90852u, 26590u), vec3<u32>(1031u, 29461u, 70788u), vec3<u32>(3524u, 1u, 1u), vec3<u32>(4294967295u, 24444u, 21142u), vec3<u32>(2217u, 8653u, 9066u), vec3<u32>(1u, 64329u, 30385u), vec3<u32>(47197u, 50393u, 0u), vec3<u32>(39247u, 8150u, 1u), vec3<u32>(10378u, 31230u, 0u), vec3<u32>(39173u, 11235u, 4294967295u), vec3<u32>(15298u, 4294967295u, 4294967295u), vec3<u32>(33779u, 1814u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 13971u, 17471u), vec3<u32>(11406u, 68701u, 83031u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 217u, 28670u), vec3<u32>(70837u, 1u, 0u), vec3<u32>(1u, 36854u, 56213u));

var<private> global3: array<Struct_3, 7>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = Struct_5(true || arg_1.d.b.d, true, _wgslsmith_add_u32(arg_1.d.a.a.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1.d.c), max(countOneBits(global2[_wgslsmith_index_u32(4294967295u, 23u)]), arg_0.d.a.a))), Struct_4(Struct_2(arg_0.d.a.b.wzy, ~arg_0.d.a.b), Struct_3(arg_2, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.d.b.b, 37179u, 1u), arg_1.d.a.b), firstTrailingBit(1u)), arg_0.d.b.c, true, firstTrailingBit(_wgslsmith_sub_vec2_i32(arg_2.wz, arg_0.d.e.yx))), u_input.a.zwx, _wgslsmith_div_vec2_f32(arg_1.d.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.d * arg_1.d.d) + arg_1.d.d)), vec3<i32>(0i, -u_input.c, _wgslsmith_div_i32(arg_2.x, arg_0.d.b.e.x))));
    var var_1 = var_0.d;
    global0 = array<vec3<bool>, 9>();
    let var_2 = arg_1.d.b.c.a.x;
    var var_3 = ~u_input.a;
    return firstTrailingBit(~reverseBits(var_3.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_4(Struct_2(vec3<u32>(~(u_input.b << (u_input.a.x % 32u)), 1u, u_input.b), vec4<u32>(u_input.b, ~1u, 0u, ~func_3(Struct_5(global1.x, arg_0.a.x, arg_1.x, Struct_4(Struct_2(vec3<u32>(0u, 0u, 217u), vec4<u32>(arg_1.x, u_input.a.x, arg_1.x, u_input.b)), global3[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], vec2<f32>(arg_0.c, -2253f), vec3<i32>(-70035i, arg_0.b, 0i))), Struct_5(global1.x, true, u_input.b, Struct_4(Struct_2(vec3<u32>(13876u, arg_1.x, 10598u), vec4<u32>(u_input.b, 63586u, 0u, 22747u)), global3[_wgslsmith_index_u32(34635u, 7u)], u_input.a.yzz, vec2<f32>(arg_0.c, 417f), vec3<i32>(u_input.c, u_input.c, -1i))), vec4<i32>(2147483647i, arg_0.b, arg_0.b, u_input.c), u_input.c))), Struct_3(vec4<i32>(-1i) * -(~vec4<i32>(arg_0.b, 13344i, -14135i, u_input.c)), 1u, arg_0, false, vec2<i32>(_wgslsmith_div_i32(-538i, u_input.c), abs(17414i))), countOneBits(abs(_wgslsmith_mult_vec3_u32(~u_input.a.wzx, vec3<u32>(u_input.a.x, 0u, u_input.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), 1150f), max(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c, 1i) << (u_input.a.zzw % vec3<u32>(32u)), vec3<i32>(arg_0.b, -2147483647i, arg_0.b) | vec3<i32>(-10103i, u_input.c, u_input.c)), -(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_0.b, u_input.c), vec3<i32>(u_input.c, 2147483647i, 45751i)))));
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.d - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d - var_0.d), _wgslsmith_f_op_vec2_f32(-var_0.d)))))));
    global0 = array<vec3<bool>, 9>();
    var_0 = Struct_4(Struct_2(arg_1.xyy, arg_1), Struct_3(-reverseBits(~var_0.b.a), abs(22396u), arg_0, any(global0[_wgslsmith_index_u32(9325u, 9u)]), -vec2<i32>(arg_0.b, u_input.c)), ~select(vec3<u32>(~23437u, arg_1.x, arg_1.x), _wgslsmith_mult_vec3_u32(~var_0.c, ~vec3<u32>(6310u, u_input.b, arg_1.x)), vec3<bool>(var_0.b.c.a.x, !global1.x, u_input.a.x > 1855u)), vec2<f32>(var_0.b.c.c, var_0.d.x), vec3<i32>(u_input.c, select(var_0.b.c.b | 77318i, _wgslsmith_add_i32(u_input.c, -57628i), false), -1i) << (var_0.c % vec3<u32>(32u)));
    return var_0.b.c.c;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    global3 = array<Struct_3, 7>();
    let var_0 = u_input.b;
    global3 = array<Struct_3, 7>();
    global3 = array<Struct_3, 7>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_1.c)))), 793f, arg_1.c, _wgslsmith_f_op_f32(min(244f, _wgslsmith_f_op_f32(-327f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1033f)) * -1373f)))));
    return Struct_2(vec3<u32>(var_0, _wgslsmith_mult_u32(u_input.b >> (var_0 % 32u), firstTrailingBit(0u)) & _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(0u, u_input.a.x)), u_input.b), ~vec4<u32>(~(~0u), ~(u_input.a.x | var_0), ~(~1u), ~u_input.a.x & ~31992u));
}

fn func_1() -> vec2<u32> {
    var var_0 = Struct_5(true, global1.x, u_input.b, Struct_4(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(false, global1.x, global1.x), u_input.c, -409f), vec4<u32>(51729u, 4294967295u, 14874u, u_input.a.x))), _wgslsmith_f_op_f32(min(-1783f, 847f)), _wgslsmith_f_op_f32(f32(-1f) * -223f)), Struct_1(!global0[_wgslsmith_index_u32(125750u, 9u)], max(19713i, u_input.c), -371f), !vec2<bool>(global1.x, global1.x)), Struct_3(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 18958i), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c)), select(vec4<i32>(u_input.c, 9401i, 1861i, u_input.c), vec4<i32>(u_input.c, -60871i, -25806i, -2147483647i), vec4<bool>(global1.x, global1.x, true, true))), 1u, Struct_1(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, global1.x), global1.x), ~2147483647i, _wgslsmith_f_op_f32(floor(-2523f))), all(vec2<bool>(true, false)) & global1.x, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, 21537i))), ~(~vec3<u32>(1u, u_input.a.x, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(418f)), _wgslsmith_f_op_f32(trunc(-904f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-147f, -346f), vec2<f32>(-299f, 1080f), false)) - vec2<f32>(-596f, 2234f))), vec3<i32>(abs(u_input.c), min(u_input.c, u_input.c), _wgslsmith_clamp_i32(u_input.c, 1i, 0i)) >> (vec3<u32>(reverseBits(0u), _wgslsmith_mult_u32(4294967295u, u_input.a.x), u_input.a.x) % vec3<u32>(32u))));
    return vec2<u32>(38621u ^ var_0.d.b.b, func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.b.c.c, var_0.d.b.c.c, var_0.d.d.x)))), Struct_1(vec3<bool>(!var_0.b, true, true == var_0.d.b.c.a.x), var_0.d.e.x, _wgslsmith_f_op_f32(step(-486f, 256f))), !(!vec2<bool>(global1.x, global1.x))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 7>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 9u)];
    var var_1 = _wgslsmith_div_vec2_u32(func_1(), _wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(u_input.a.x, 73507u)), _wgslsmith_div_vec2_u32(vec2<u32>(~108706u, 18172u), vec2<u32>(0u, max(u_input.a.x, 4294967295u)))));
    var var_2 = u_input.a;
    global3 = array<Struct_3, 7>();
    var var_3 = !select(select(vec4<bool>(any(vec4<bool>(var_0.x, global1.x, true, global1.x)), global1.x, false, false), select(!vec4<bool>(global1.x, var_0.x, global1.x, true), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, false), true), !vec4<bool>(false, global1.x, global1.x, true)), global1.x), !vec4<bool>(global1.x, global1.x && true, true, var_0.x), true);
    global0 = array<vec3<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.c, u_input.c, ~u_input.c, u_input.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-470f, _wgslsmith_f_op_f32(f32(-1f) * -422f))))));
}

