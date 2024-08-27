struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, vec4<i32>(19724i, -10268i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-664f, 701f, -1157f, -1145f), vec4<i32>(-18658i, 6443i, 1i, 15900i), vec3<bool>(false, true, true));

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 24>;

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(~0u, u_input.a) << (vec2<u32>(4294967295u, ~1u) % vec2<u32>(32u))), countOneBits(~abs(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a)))), 24u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-587f, arg_1.x)), vec2<bool>(true, global2.e.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-157f, global2.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1585f, 285f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-659f, global2.c.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.c.x, -713f)))), global0.e.x)), global2.e.x))));
    global0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(firstLeadingBit(~(~vec4<u32>(u_input.a, 26920u, u_input.a, u_input.a))), ~abs(vec4<u32>(104473u, 26480u, u_input.a, u_input.a) | vec4<u32>(4294967295u, 98314u, u_input.a, u_input.a))), 24u)];
    let var_2 = min(_wgslsmith_dot_vec2_u32(max(min(firstTrailingBit(vec2<u32>(0u, u_input.a)), vec2<u32>(4294967295u, 1u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), select(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(37161u, u_input.a), vec2<u32>(u_input.a, u_input.a)), select(vec2<bool>(var_0.e.x, false), global0.e.xy, true))), firstTrailingBit(abs(vec2<u32>(u_input.a, u_input.a))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(64532u, 0u)), vec2<u32>(38074u, u_input.a)) % vec2<u32>(32u))), ~1u & (1u << (u_input.a % 32u)));
    var var_3 = select(vec2<bool>(453f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(654f))), !(!any(global0.e))), vec2<bool>(false, false), select(global0.e.xy, select(global0.e.zz, select(vec2<bool>(true, global2.e.x), !var_0.e.zy, false), _wgslsmith_mult_i32(global2.d.x, var_0.d.x) >= global0.a), global2.e.xz));
    return 565f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = false;
    var var_1 = !global1[_wgslsmith_index_u32(u_input.a, 12u)];
    let var_2 = Struct_1(58451i, vec4<i32>(~1i, 2147483647i, 0i, -arg_2.d.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1620f, -217f, global0.c.x))))), 178f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(751f))), -481f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * global0.c.x), 394f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)))), arg_2.d, !select(arg_2.e, select(select(vec3<bool>(global2.e.x, false, global0.e.x), arg_2.e, vec3<bool>(false, true, arg_0.e.x)), select(arg_2.e, vec3<bool>(arg_0.e.x, false, var_1.x), vec3<bool>(var_1.x, false, true)), !global2.e), select(select(vec3<bool>(true, var_1.x, var_0), arg_0.e, true), arg_2.e, !vec3<bool>(false, arg_0.e.x, true))));
    global1 = array<vec4<bool>, 12>();
    var var_3 = global2.b.xz;
    return Struct_1(firstLeadingBit(reverseBits(var_2.b.x)) << (max(1u, arg_3) % 32u), arg_0.d, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(round(arg_0.c.x))) + _wgslsmith_f_op_f32(trunc(arg_2.c.x))), global2.c.x, arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)))), ~arg_0.d, vec3<bool>(true, var_0, var_0));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(Struct_1(global2.b.x, ~(~(-vec4<i32>(arg_2.d.x, -17434i, global0.b.x, arg_3.b.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(558f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1890f * 746f), _wgslsmith_f_op_f32(-arg_2.c.x))), -629f, arg_1.c.x), reverseBits(arg_2.d >> (~vec4<u32>(18952u, 95256u, u_input.a, 95980u) % vec4<u32>(32u))), select(arg_2.e, !(!arg_1.e), arg_0)), _wgslsmith_add_vec2_i32(firstLeadingBit(-global0.d.xx), -arg_1.d.xx), global3[_wgslsmith_index_u32(~u_input.a, 24u)], 77338u);
    global2 = arg_1;
    var var_1 = var_0.a;
    var var_2 = func_2(func_2(arg_3, ~vec2<i32>(_wgslsmith_sub_i32(arg_2.d.x, arg_1.d.x), -1i), arg_1, reverseBits(4294967295u)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-53093i, arg_2.b.x) | func_2(Struct_1(arg_1.b.x, vec4<i32>(25225i, global0.d.x, var_0.a, -25499i), vec4<f32>(arg_3.c.x, 181f, 163f, var_0.c.x), global0.b, vec3<bool>(true, var_0.e.x, false)), vec2<i32>(-9823i, 0i), Struct_1(global0.a, vec4<i32>(var_0.d.x, 19182i, arg_3.a, 1i), global2.c, vec4<i32>(-30600i, 1i, -13863i, -2147483647i), arg_3.e), 43270u).b.yx), arg_1.b.zw ^ (reverseBits(global0.b.zy) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), Struct_1(~1i, _wgslsmith_add_vec4_i32(vec4<i32>(-var_0.d.x, select(-1i, global2.d.x, true), arg_3.d.x, 24199i << (u_input.a % 32u)), arg_1.d), global2.c, ~abs(arg_3.b | vec4<i32>(arg_3.d.x, -16976i, var_0.b.x, 20342i)), select(!(!vec3<bool>(global2.e.x, arg_3.e.x, arg_3.e.x)), global0.e, true)), 5812u << (_wgslsmith_clamp_u32(~57741u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(69824u, 1u, u_input.a, u_input.a), vec4<u32>(6451u, u_input.a, 14967u, 109448u)), u_input.a, !var_0.e.x), u_input.a) % 32u));
    var var_3 = _wgslsmith_clamp_vec4_i32(reverseBits(~arg_1.d ^ vec4<i32>(arg_2.d.x | arg_1.d.x, ~(-2147483647i), -12142i, arg_2.a >> (0u % 32u))), arg_2.b, -vec4<i32>(-33616i, (arg_1.b.x | var_2.b.x) ^ ~(-81324i), arg_2.a, -27753i));
    return Struct_1(countOneBits(-2147483647i), abs(-(~var_0.b)), arg_3.c, -(~(arg_1.b >> (vec4<u32>(u_input.a, u_input.a, 37273u, u_input.a) % vec4<u32>(32u)))) >> ((vec4<u32>(59988u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(119081u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 30977u, 1u)), u_input.a) << (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 54431u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), vec4<u32>(17974u, u_input.a, u_input.a, u_input.a) | vec4<u32>(4294967295u, u_input.a, 1u, 32664u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec3<bool>(!arg_2.e.x, false, !(!func_2(Struct_1(var_0.d.x, vec4<i32>(var_3.x, arg_1.d.x, arg_2.b.x, global2.b.x), arg_1.c, arg_1.d, vec3<bool>(arg_2.e.x, true, arg_2.e.x)), vec2<i32>(-2147483647i, 2147483647i), Struct_1(var_3.x, var_0.d, vec4<f32>(var_0.c.x, global0.c.x, arg_3.c.x, 2140f), var_0.b, vec3<bool>(global0.e.x, arg_3.e.x, arg_2.e.x)), 30568u).e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, u_input.a, u_input.a, _wgslsmith_mult_u32(~u_input.a, _wgslsmith_add_u32(u_input.a, 0u))), _wgslsmith_mult_vec4_u32(vec4<u32>(16881u, 4294967295u, u_input.a << (_wgslsmith_mod_u32(1u, 40289u) % 32u), _wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(1u, u_input.a))), ~(~vec4<u32>(u_input.a, 0u, u_input.a, 49857u))), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(118191u, u_input.a, 0u, 0u) << (vec4<u32>(4401u, u_input.a, 30461u, u_input.a) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), 1u, u_input.a << (45935u % 32u), ~u_input.a)));
    global2 = func_1(true, global3[_wgslsmith_index_u32(6848u >> (_wgslsmith_div_u32(var_0.x, (var_0.x << (44820u % 32u)) >> (1u % 32u)) % 32u), 24u)], global3[_wgslsmith_index_u32(~max(~(var_0.x >> (11289u % 32u)), ~u_input.a), 24u)], Struct_1(~(-3302i), global0.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(315f, -125f, global2.c.x, global2.c.x))))), ~global2.d, !global2.e));
    let var_1 = -200f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2.c.yyy)));
    global4 = all(select(!global2.e.xz, vec2<bool>(false && global2.e.x, true), !(!global0.e.yy)));
    let var_3 = Struct_1(global0.b.x, global2.b, global2.c, global2.b, vec3<bool>(func_1(global0.d.x != global2.b.x, Struct_1(40558i, -vec4<i32>(-14414i, global0.b.x, 10472i, -5703i), vec4<f32>(-732f, global2.c.x, var_2.x, 631f), func_1(true, global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)], Struct_1(global2.a, global2.b, vec4<f32>(global0.c.x, 161f, var_1, var_1), global0.b, vec3<bool>(true, global0.e.x, false))).b, global0.e), Struct_1(-43354i, vec4<i32>(0i, -22128i, global2.d.x, global2.d.x), global2.c, ~vec4<i32>(global2.d.x, global2.a, global2.a, -1i), global0.e), Struct_1(-2147483647i, vec4<i32>(global2.a, global0.d.x, -13248i, 6203i), global2.c, vec4<i32>(global2.b.x, -33750i, 0i, -44723i), global0.e)).e.x, -2147483647i < -(~global2.b.x), all(vec4<bool>(global0.e.x, func_1(false, global3[_wgslsmith_index_u32(var_0.x, 24u)], Struct_1(2147483647i, global0.b, vec4<f32>(-782f, -630f, -1000f, global2.c.x), vec4<i32>(2644i, -1i, 38821i, global2.d.x), global2.e), Struct_1(3843i, global0.d, vec4<f32>(619f, -198f, global0.c.x, global2.c.x), vec4<i32>(-17302i, 1i, -26934i, 19569i), vec3<bool>(global2.e.x, false, true))).e.x, global2.e.x, 6805i <= global2.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_3, global2.b.xx, global3[_wgslsmith_index_u32(~(~max(u_input.a, u_input.a)), 24u)], 42664u).b.yw, u_input.a, -(_wgslsmith_mod_i32(-1i, var_3.d.x) >> (abs(69568u) % 32u)));
}

