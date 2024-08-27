struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(61811u, 29308u, 50426u, 4294967295u), vec4<u32>(31272u, 4294967295u, 15186u, 43956u), vec4<u32>(0u, 0u, 30072u, 1u), vec4<u32>(15090u, 101000u, 1u, 4294967295u), vec4<u32>(101475u, 4912u, 59048u, 0u), vec4<u32>(4294967295u, 1u, 84796u, 57229u), vec4<u32>(0u, 1u, 33267u, 4294967295u), vec4<u32>(32759u, 74991u, 2244u, 19620u), vec4<u32>(4294967295u, 0u, 3918u, 0u), vec4<u32>(9788u, 6156u, 1u, 49467u), vec4<u32>(1u, 69385u, 37574u, 1u));

var<private> global1: i32 = -2954i;

var<private> global2: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_1(-vec4<i32>(20024i, 1i, _wgslsmith_sub_i32(~global2.x, -1i), 31225i), ~((vec3<u32>(3695u, 1u, 0u) | vec3<u32>(u_input.a, u_input.a, u_input.a)) & firstLeadingBit(vec3<u32>(4294967295u, 113622u, 4294967295u))) >> (max(vec3<u32>(0u, u_input.a, 0u) | ~vec3<u32>(u_input.a, 37942u, u_input.a), ~reverseBits(vec3<u32>(u_input.a, u_input.a, 78418u))) % vec3<u32>(32u)), u_input.a, true, -vec4<i32>(_wgslsmith_div_i32(global2.x, global2.x), ~global2.x, global2.x, _wgslsmith_mod_i32(global2.x, -2147483647i)) & (vec4<i32>(global2.x, _wgslsmith_sub_i32(global2.x, 2147483647i), min(-20261i, -1i), global2.x ^ 12832i) << (countOneBits(global0[_wgslsmith_index_u32(u_input.a, 11u)]) % vec4<u32>(32u))));
    global2 = abs(max(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.a.zw, var_0.a.xw), i32(-1i) * -2147483647i), global2.x), vec2<i32>(-2147483647i, _wgslsmith_div_i32(25227i, _wgslsmith_div_i32(var_0.e.x, global2.x)))));
    let var_1 = ~var_0.c;
    global1 = _wgslsmith_dot_vec3_i32(var_0.a.ywz, var_0.e.www);
    let var_2 = 1i;
    return select(select(~(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_0.c, var_0.c, var_1), vec4<u32>(0u, 2671u, u_input.a, 39219u)) ^ ~vec4<u32>(1u, 4294967295u, var_1, var_1)), _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.b.x, 4294967295u), 11u)], global0[_wgslsmith_index_u32(abs(abs(0u)), 11u)]), !vec4<bool>(all(vec4<bool>(true, var_0.d, var_0.d, false)), true && var_0.d, !var_0.d, var_0.d)), ~select(vec4<u32>(1u, var_1, 4294967295u, ~34771u), select(~global0[_wgslsmith_index_u32(4294967295u, 11u)], ~vec4<u32>(35314u, 64676u, 1u, u_input.a), false), vec4<bool>(var_0.d, false, true, false)), u_input.a > u_input.a);
}

fn func_2() -> Struct_4 {
    global1 = global2.x;
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2008f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(702f, 239f)))), Struct_2(Struct_1(firstTrailingBit(vec4<i32>(-2147483647i, global2.x, 30606i, -6571i)) >> (func_3(856f) % vec4<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 18416u, 51379u), vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)) & ~vec3<u32>(u_input.a, 0u, 939u), 1u, !(u_input.a != 30533u), min(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, -1i), vec4<i32>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, 47890i), vec4<i32>(-67058i, global2.x, 0i, global2.x), vec4<i32>(global2.x, global2.x, global2.x, -37948i)))), Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(45378i, 1i, -2147483647i, 0i), vec4<i32>(global2.x, global2.x, 15197i, 1i)), ~vec3<u32>(u_input.a, 1u, 45870u), u_input.a | 21302u, true && all(vec4<bool>(false, true, true, true)), vec4<i32>(-global2.x, global2.x, global2.x, _wgslsmith_clamp_i32(global2.x, -8010i, global2.x))), vec4<f32>(692f, -168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1566f, -510f)) * -647f), 1000f), ~vec4<i32>(reverseBits(-41699i), 19676i, select(global2.x, 1i, false), global2.x), min(34169i ^ _wgslsmith_mult_i32(global2.x, 2147483647i), global2.x)), ~_wgslsmith_sub_u32(u_input.a, u_input.a));
}

fn func_1() -> Struct_1 {
    global2 = ~(_wgslsmith_mod_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, -1i), vec2<i32>(1i, -2147483647i)), vec2<i32>(1i, -2147483647i) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), true), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global2.x), vec2<i32>(global2.x, -46611i))) << (_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(60913u, 25570u), vec2<u32>(0u, u_input.a)), firstLeadingBit(vec2<u32>(4294967295u, 95559u)) & ~vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u)));
    var var_0 = func_2();
    let var_1 = var_0.b.b.a.xy;
    let var_2 = 1u;
    var var_3 = var_0.b.b.d;
    return func_2().b.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(~vec4<i32>(~(-64525i), global2.x, _wgslsmith_div_i32(global2.x, arg_0.a.x), -25734i), ~arg_2, arg_0.b.x, all(select(!vec3<bool>(arg_0.d, arg_0.d, arg_0.d), !vec3<bool>(false, arg_0.d, true), select(vec3<bool>(arg_0.d, false, arg_0.d), vec3<bool>(arg_0.d, false, arg_0.d), vec3<bool>(true, true, arg_0.d)))), vec4<i32>(-1i) * -min(vec4<i32>(37742i, global2.x, arg_0.e.x, 1i), arg_0.e)), vec3<i32>(func_1().a.x, firstLeadingBit(global2.x), arg_0.a.x), any(!select(select(vec4<bool>(false, false, arg_0.d, false), vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d), false), vec4<bool>(true, false, arg_0.d, arg_0.d), all(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true)))), (vec4<u32>(~u_input.a, 31613u, 17823u | arg_0.b.x, _wgslsmith_clamp_u32(4294967295u, arg_0.b.x, arg_0.b.x)) | global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, arg_2.x), 11u)]) >> ((~reverseBits(global0[_wgslsmith_index_u32(93710u, 11u)]) << (~vec4<u32>(4294967295u, arg_0.c, 0u, arg_0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_mult_i32(-1i, 2147483647i);
    let var_2 = func_2().b;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2438f * _wgslsmith_f_op_f32(arg_1 + 525f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * -2527f)))))), var_2, (~1u >> ((~arg_0.b.x >> (26128u % 32u)) % 32u)) >> ((4294967295u ^ _wgslsmith_mod_u32(var_0.d.x >> (arg_0.b.x % 32u), _wgslsmith_dot_vec2_u32(var_2.a.b.zz, arg_0.b.zx))) % 32u));
    global1 = -78114i;
    return vec4<bool>(arg_0.d, var_2.d.x != firstLeadingBit(-37555i), false || select(!any(vec2<bool>(arg_0.d, var_0.c)), true || all(vec4<bool>(false, true, var_0.c, var_3.b.b.d)), false), !var_2.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = vec2<bool>(!any(vec2<bool>(false, false)), all(func_4(func_1(), _wgslsmith_div_f32(-291f, _wgslsmith_f_op_f32(927f + -660f)), vec3<u32>(u_input.a, 15489u, var_0))));
    let var_2 = _wgslsmith_sub_u32(var_0, _wgslsmith_clamp_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -830f)).x, 40506u, 19143u));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-501f, -1182f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-818f, -2563f)))))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))));
    var var_4 = Struct_3(Struct_1(-(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global2.x, global2.x, 50769i), vec4<i32>(0i, 1i, 0i, global2.x)) >> (vec4<u32>(39515u, var_2, 23216u, 55993u) % vec4<u32>(32u))), func_2().b.b.b, 4294967295u, any(select(!vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(false, var_1.x, true))), -vec4<i32>(~1i, ~4745i, global2.x, ~global2.x)), -(-countOneBits(vec3<i32>(global2.x, global2.x, 30751i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(60121u, 4294967295u, var_0), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 7089u, var_0), vec3<u32>(30055u, var_2, u_input.a))) % vec3<u32>(32u))), (539f <= _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(f32(-1f) * -488f))) && false, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_2, 0u), 4294967295u, min(15453u, var_0), countOneBits(30011u)), ~(~vec4<u32>(0u, 7130u, var_0, 23980u))), ~(~(~global0[_wgslsmith_index_u32(7301u, 11u)])), vec4<u32>(reverseBits(~95766u), u_input.a, ~u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 1u, u_input.a), vec3<u32>(var_2, 37387u, var_2)) % 32u), func_2().c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_3.x)))), _wgslsmith_f_op_f32(abs(-1000f)))));
}

