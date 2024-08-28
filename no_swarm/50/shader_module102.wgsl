struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec3<u32>;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 69291i, -1i);

var<private> global3: Struct_2 = Struct_2(false, vec4<f32>(-962f, 124f, -1059f, 473f), vec3<i32>(47864i, -5056i, 0i));

var<private> global4: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(false, vec2<i32>(i32(-2147483648), 2147483647i), 4384i, vec3<f32>(730f, 768f, -943f)), Struct_4(false, vec2<i32>(24638i, 21580i), -1i, vec3<f32>(390f, -392f, 929f)), Struct_4(false, vec2<i32>(-38086i, -39818i), -13603i, vec3<f32>(-4064f, 1724f, 2480f)), Struct_4(true, vec2<i32>(i32(-2147483648), i32(-2147483648)), 29475i, vec3<f32>(1472f, 616f, -1141f)), Struct_4(false, vec2<i32>(24389i, -9326i), 1i, vec3<f32>(535f, -185f, 372f)), Struct_4(false, vec2<i32>(i32(-2147483648), -25400i), 2147483647i, vec3<f32>(1184f, -1915f, -392f)), Struct_4(true, vec2<i32>(1i, 15755i), 95356i, vec3<f32>(-500f, 1000f, 324f)), Struct_4(false, vec2<i32>(24285i, 12835i), 36775i, vec3<f32>(532f, -1793f, -1615f)), Struct_4(false, vec2<i32>(-41552i, -14047i), -37197i, vec3<f32>(-954f, -1131f, 337f)), Struct_4(true, vec2<i32>(-1i, -1i), 21952i, vec3<f32>(-753f, -949f, 341f)), Struct_4(true, vec2<i32>(-1i, 11770i), i32(-2147483648), vec3<f32>(951f, -665f, -198f)), Struct_4(true, vec2<i32>(i32(-2147483648), -75022i), 52256i, vec3<f32>(-2388f, -389f, 253f)), Struct_4(true, vec2<i32>(8776i, 66963i), 0i, vec3<f32>(-1325f, 549f, 809f)), Struct_4(true, vec2<i32>(i32(-2147483648), -34781i), -1i, vec3<f32>(226f, -1565f, -111f)), Struct_4(false, vec2<i32>(48363i, 0i), 2147483647i, vec3<f32>(954f, -677f, 1518f)), Struct_4(false, vec2<i32>(-1i, 1i), 2147483647i, vec3<f32>(1313f, -250f, 621f)), Struct_4(true, vec2<i32>(2147483647i, -1i), i32(-2147483648), vec3<f32>(608f, -907f, 1178f)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = Struct_2(true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.b.x - global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -344f), -1137f, _wgslsmith_f_op_f32(f32(-1f) * -1399f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.b.x, global3.b.x, global3.b.x)) - _wgslsmith_f_op_vec4_f32(-global3.b))))), ~_wgslsmith_sub_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(global3.c.x, global3.c.x, u_input.a.x))), max(global3.c, vec3<i32>(global2.x, arg_0, arg_0))));
    global3 = Struct_2(!var_0.a, vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(global3.b.x + 454f), global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))))), -global3.c);
    var var_1 = Struct_3(!vec2<bool>(global3.a, !(!global3.a)), Struct_1(vec4<u32>(global1.x, reverseBits(~267u), countOneBits(global1.x), 94730u), ~firstTrailingBit(global1.x & global1.x), -2147483647i, 0u, !vec3<bool>(true, select(global3.a, global3.a, global3.a), all(vec2<bool>(global3.a, false)))), !all(vec3<bool>(global3.a, any(vec2<bool>(false, var_0.a)), select(var_0.a, global3.a, global3.a))), Struct_2(global3.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_div_vec4_f32(vec4<f32>(-1105f, 208f, -1000f, -1000f), vec4<f32>(702f, 439f, global3.b.x, global3.b.x)), true)), ~u_input.a.wxw));
    global1 = ~(vec3<u32>(global1.x, 77488u << (var_1.b.b % 32u), abs(~global1.x)) & vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, var_1.b.d, 0u), var_1.b.a.zwy), 1u ^ global1.x), ~(~58003u), var_1.b.b));
    let var_2 = vec2<bool>(var_1.a.x | true, var_1.b.e.x);
    return firstLeadingBit(~_wgslsmith_mult_vec4_u32(var_1.b.a, vec4<u32>(~global1.x, _wgslsmith_div_u32(global1.x, 12823u), _wgslsmith_mod_u32(var_1.b.b, var_1.b.b), _wgslsmith_dot_vec3_u32(var_1.b.a.xyy, vec3<u32>(global1.x, global1.x, 30293u)))));
}

fn func_2() -> vec4<u32> {
    var var_0 = !global3.a;
    global0 = u_input.a.x;
    return func_3(abs(u_input.a.x));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(arg_3.b * _wgslsmith_f_op_vec4_f32(-global3.b));
    var var_1 = -18941i << (global1.x % 32u);
    var var_2 = -2147483647i;
    var var_3 = max((arg_0 ^ (~0i | _wgslsmith_mod_i32(arg_0, arg_0))) | -2147483647i, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_0, global2.x, global3.c.x), vec4<i32>(global3.c.x, arg_0, arg_3.c.x, u_input.a.x)), vec4<i32>(-1i) * -abs(vec4<i32>(arg_3.c.x, arg_0, -5619i, arg_0))));
    global4 = array<Struct_4, 17>();
    return vec3<bool>(global3.a, !(!all(select(vec3<bool>(arg_3.a, true, false), vec3<bool>(global3.a, arg_3.a, global3.a), vec3<bool>(global3.a, global3.a, arg_3.a)))), any(!vec4<bool>(-1092f < arg_3.b.x, global2.x >= 0i, false, false)));
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<i32>(1i, _wgslsmith_mult_i32(global3.c.x, ~global2.x), u_input.a.x);
    let var_1 = Struct_2(false, global3.b, select(u_input.a.wxz, ~u_input.a.wyw, select(func_4(abs(46866i), func_2(), countOneBits(global1.yy), Struct_2(false, global3.b, vec3<i32>(-2147483647i, global3.c.x, global3.c.x))), !(!vec3<bool>(global3.a, true, global3.a)), vec3<bool>(true, global3.a, any(vec3<bool>(global3.a, global3.a, true))))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(4294967295u, global1.x), global1.x >> (45309u % 32u), global1.x ^ 46736u, 14482u), vec4<u32>(global1.x, ~(~130023u), ~(~4294967295u), global1.x), vec4<u32>(~(~global1.x), _wgslsmith_mod_u32(~global1.x, min(global1.x, global1.x)), _wgslsmith_add_u32(global1.x, _wgslsmith_mod_u32(global1.x, 4294967295u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), global1.yz), abs(1u), global1.x))), _wgslsmith_add_u32(_wgslsmith_mult_u32(func_3(global3.c.x).x, ~(~global1.x)), ~(_wgslsmith_sub_u32(global1.x, 4294967295u) >> (min(global1.x, global1.x) % 32u))), ~global2.x & ~var_1.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(global1.x, global1.x)), select(vec2<u32>(55343u, 712u), vec2<u32>(global1.x, 4294967295u), vec2<bool>(global3.a, true))), vec2<u32>(global1.x, abs(4294967295u))), ~func_3(global3.c.x).yx), select(select(vec3<bool>(func_4(1i, vec4<u32>(global1.x, global1.x, global1.x, global1.x), global1.xy, var_1).x, all(vec2<bool>(true, var_1.a)), !var_1.a), select(select(vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.a, global3.a, false), var_1.a), select(vec3<bool>(false, global3.a, var_1.a), vec3<bool>(global3.a, var_1.a, var_1.a), global3.a), !vec3<bool>(false, false, var_1.a)), !(global3.a && false)), !vec3<bool>(var_1.c.x != var_0.x, !global3.a, false), !(!vec3<bool>(true, true, global3.a))));
    var var_3 = !(!select(!vec4<bool>(false, global3.a, global3.a, false), vec4<bool>(false, true, true, true), false));
    let var_4 = Struct_3(var_2.e.yx, Struct_1(var_2.a << (firstLeadingBit(var_2.a) % vec4<u32>(32u)), firstTrailingBit(reverseBits(1u)), -1i, ~(_wgslsmith_div_u32(var_2.b, global1.x) << (4294967295u % 32u)), !var_2.e), all(vec2<bool>(any(select(vec4<bool>(true, var_2.e.x, false, true), vec4<bool>(var_2.e.x, true, false, var_1.a), var_1.a)), (global1.x <= 49736u) & any(vec4<bool>(true, var_2.e.x, var_1.a, false)))), var_1);
    return Struct_2(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(817f, global3.b.x)), _wgslsmith_f_op_f32(var_4.d.b.x + 149f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(392f, -1337f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(1558f - global3.b.x))), _wgslsmith_f_op_f32(-605f - var_1.b.x)), ~var_4.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(1u, global1.x, global1.x, global1.x))) | ~max(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(39964u, 0u, 0u, 1u), vec4<u32>(4294967295u, global1.x, global1.x, global1.x), global3.a), ~vec4<u32>(global1.x, 4294967295u, global1.x, 7456u), vec4<u32>(global1.x, global1.x, 0u, 4294967295u)), ~vec4<u32>(4294967295u, 4294967295u, global1.x, global1.x));
    global4 = array<Struct_4, 17>();
    var_0 = vec4<u32>(4294967295u, 44808u << (global1.x % 32u), ~global1.x, ~(4294967295u >> (_wgslsmith_mult_u32(~var_0.x, global1.x) % 32u)));
    global2 = vec3<i32>(_wgslsmith_dot_vec4_i32(-(~select(u_input.a, vec4<i32>(global3.c.x, u_input.a.x, 0i, 0i), vec4<bool>(global3.a, global3.a, global3.a, global3.a))), ~vec4<i32>(0i << (global1.x % 32u), -1i, 18498i >> (global1.x % 32u), reverseBits(global3.c.x))), -abs(15280i), -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, u_input.a.x, -1i), vec4<i32>(-16455i, u_input.a.x, 51466i, global2.x)) << (~global1.x % 32u), _wgslsmith_add_i32(u_input.a.x, 0i | global3.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

