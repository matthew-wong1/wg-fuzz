struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(1i, -12342i, -3145i), vec2<i32>(-10416i, -1i), -42843i, vec2<u32>(40624u, 7666u)), 81978u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec3<i32>(-13013i, -44359i, 2147483647i), vec2<i32>(20199i, 14363i), 0i, vec2<u32>(1u, 0u)), false, Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(47269i, 2904i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), -8973i, vec2<u32>(4294967295u, 4294967295u)), 39617u, vec2<i32>(1i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(1i, -4667i, 1i), vec2<i32>(5504i, -1i), 1i, vec2<u32>(33184u, 29594u)), 37910u, vec2<i32>(-745i, -1i)), Struct_1(vec2<bool>(true, false), vec3<i32>(46069i, 0i, 0i), vec2<i32>(-26568i, 6838i), i32(-2147483648), vec2<u32>(20153u, 1u)), false, Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(0i, 2147483647i, 44282i), vec2<i32>(i32(-2147483648), 1i), 16229i, vec2<u32>(1u, 0u)), 26056u, vec2<i32>(1384i, 39262i))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -47681i, i32(-2147483648)), vec2<i32>(-9872i, i32(-2147483648)), 62940i, vec2<u32>(1u, 3075u)), 0u, vec2<i32>(2147483647i, -8103i)), Struct_1(vec2<bool>(false, true), vec3<i32>(-61194i, -1i, 64329i), vec2<i32>(7169i, -19464i), -51429i, vec2<u32>(40407u, 18283u)), false, Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-19428i, 6746i, 8808i), vec2<i32>(1i, -8341i), -1i, vec2<u32>(0u, 19848u)), 1u, vec2<i32>(-24944i, -1i))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-19713i, 1i, 65181i), vec2<i32>(1i, 19851i), 42989i, vec2<u32>(23331u, 18168u)), 53738u, vec2<i32>(0i, 8218i)), Struct_1(vec2<bool>(false, false), vec3<i32>(-6809i, -29223i, 16438i), vec2<i32>(-22438i, -1i), i32(-2147483648), vec2<u32>(4294967295u, 7111u)), false, Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(68728i, 4426i, 0i), vec2<i32>(1i, 29136i), i32(-2147483648), vec2<u32>(38208u, 32199u)), 4294967295u, vec2<i32>(-16981i, 50532i))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 1i, 53590i), vec2<i32>(-1i, 0i), 0i, vec2<u32>(73851u, 19672u)), 0u, vec2<i32>(33172i, 33277i)), Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 1i, -1i), vec2<i32>(1i, 49636i), 0i, vec2<u32>(0u, 1u)), true, Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 12675i, 17274i), vec2<i32>(i32(-2147483648), 1i), -47518i, vec2<u32>(1u, 51618u)), 25537u, vec2<i32>(i32(-2147483648), i32(-2147483648)))));

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-1539i, -39391i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), 2147483647i, vec2<u32>(31745u, 7448u)), 138942u, vec2<i32>(0i, 1i)), Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -1i, 49947i), vec2<i32>(-1i, 0i), -27151i, vec2<u32>(0u, 1u)), true, Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 34192i, 2147483647i), vec2<i32>(40656i, 53199i), 55556i, vec2<u32>(4294967295u, 24024u)), 0u, vec2<i32>(0i, -1i)));

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), -1288f, global1.x);
    var var_1 = 1u;
    var var_2 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.a.e.x, global3.a.b), global3.a.a.e), 26u)], ~1u, countOneBits(select(vec2<i32>(_wgslsmith_mod_i32(global3.d.c.x, global3.d.c.x), -21940i ^ global3.d.a.c.x), reverseBits(vec2<i32>(79222i, global3.a.a.d)), select(global3.a.a.a, global3.d.a.a, select(global3.d.a.a, vec2<bool>(arg_0, true), vec2<bool>(true, global3.d.a.a.x))))));
    var var_3 = max(u_input.a, min(global3.d.a.c.x, reverseBits(1i | -var_2.a.b.x)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -951f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1462f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2228f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(177f, global1.x, true)))))) * -1156f));
    return abs(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(64928u, var_2.b, global3.a.b, var_2.b), select(vec4<u32>(var_2.b, 4294967295u, 4294967295u, 48795u), vec4<u32>(var_2.b, 98768u, 0u, 41174u), vec4<bool>(var_2.a.a.x, arg_0, global3.a.a.a.x, arg_0)))));
}

fn func_2() -> u32 {
    global4 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(6297i, _wgslsmith_mult_i32(21718i, _wgslsmith_dot_vec3_i32(global3.d.a.b, global3.d.a.b)), _wgslsmith_mod_i32(-11650i, ~global3.b.d), ~1i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(43358u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], -1i, u_input.a), vec4<i32>(50198i, global3.a.a.b.x, -5978i, global3.b.b.x) & vec4<i32>(-2147483647i, u_input.a, u_input.a, 36784i)), 1i, -u_input.a | 2147483647i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(43865u, 8u)], ~31219i)), vec4<i32>(_wgslsmith_sub_i32(global3.d.a.d, 1i), ~reverseBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.c.x, 1i, global3.d.a.c.x, global3.a.a.c.x), vec4<i32>(global3.a.c.x, global0[_wgslsmith_index_u32(1u, 8u)], u_input.a, u_input.a)) | 1i, _wgslsmith_div_i32(-1i, global3.d.a.d))) << (func_3(all(vec4<bool>(true, true, global3.d.a.a.x, any(global3.a.a.a)))) % vec4<u32>(32u));
    var var_1 = Struct_1(global3.a.a.a, var_0.xzx, select(countOneBits(~vec2<i32>(0i, global0[_wgslsmith_index_u32(global3.a.a.e.x, 8u)])), ~_wgslsmith_mult_vec2_i32(global3.d.a.c, vec2<i32>(1i, -21887i)) << (global3.d.a.e % vec2<u32>(32u)), select(global3.d.a.a, vec2<bool>(global3.b.a.x, true), select(vec2<bool>(true, global3.a.a.a.x), select(vec2<bool>(true, true), global3.a.a.a, true), !global3.a.a.a))), var_0.x, global3.b.e);
    var_0 = select(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, var_0.x, u_input.a, 1i), vec4<i32>(var_0.x, global3.a.c.x, var_0.x, -1i)), abs(var_0.x), u_input.a & -69825i, ~firstTrailingBit(-1i)), _wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, -1i, u_input.a, var_1.b.x), _wgslsmith_mult_vec4_i32(max(vec4<i32>(var_0.x, 2147483647i, var_0.x, global3.a.a.d), vec4<i32>(u_input.a, var_1.d, -47539i, global0[_wgslsmith_index_u32(global3.d.b, 8u)])), -vec4<i32>(u_input.a, var_0.x, 0i, -11828i))), var_1.a.x) >> (select(vec4<u32>(global3.d.b, global3.b.e.x, _wgslsmith_div_u32(~global3.b.e.x, ~0u), ~(global3.a.b >> (74593u % 32u))), vec4<u32>(abs(0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.a.a.e.x, var_1.e.x, 4294967295u), vec4<u32>(global3.a.a.e.x, global3.a.b, var_1.e.x, var_1.e.x)) % 32u), ~(~4294967295u), 0u, 32241u), !(!(!vec4<bool>(false, false, global3.a.a.a.x, var_1.a.x)))) % vec4<u32>(32u));
    global3 = global2[_wgslsmith_index_u32(var_1.e.x, 5u)];
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~abs(~1u), _wgslsmith_clamp_u32(max(var_1.e.x, global3.a.b), ~reverseBits(var_1.e.x), var_1.e.x & (61766u | var_1.e.x)), global3.a.a.e.x, ~40705u), vec4<u32>(global3.d.b, var_1.e.x, global3.b.e.x, ~4294967295u));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<bool>) -> bool {
    global0 = array<i32, 8>();
    global4 = array<Struct_1, 26>();
    let var_0 = firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.b.e.x, 51156u, func_2(), global3.a.a.e.x), firstTrailingBit(~vec4<u32>(4294967295u, global3.d.b, global3.b.e.x, 66975u))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 36096u, 95670u, 4294967295u), ~vec4<u32>(global3.b.e.x, 87429u, 4294967295u, 7211u))));
    var var_1 = countOneBits(12739u);
    global4 = array<Struct_1, 26>();
    return !arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global3.d.a.b;
    global4 = array<Struct_1, 26>();
    let var_1 = 0u;
    var var_2 = select(!vec3<bool>(true, true, global3.d.a.a.x), vec3<bool>(any(vec4<bool>(all(vec2<bool>(true, global3.d.a.a.x)), func_1(Struct_4(vec3<f32>(global1.x, 261f, 1639f), 12553i, global3.c), vec4<i32>(global0[_wgslsmith_index_u32(1u, 8u)], 0i, 1i, -27411i), vec2<bool>(true, global3.c)), var_0.x == global0[_wgslsmith_index_u32(var_1, 8u)], global3.a.a.a.x)), global3.a.a.a.x, 1u >= ~(3103u << (global3.b.e.x % 32u))), !vec3<bool>(!all(vec4<bool>(false, global3.b.a.x, false, global3.c)), !func_1(Struct_4(global1.zzx, var_0.x, global3.d.a.a.x), vec4<i32>(var_0.x, -7100i, -38441i, var_0.x), global3.a.a.a), !global3.c));
    var var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(min(global1.x, 1184f))))), global1.x, global1.x), -110i, any(!select(select(vec3<bool>(false, global3.d.a.a.x, global3.b.a.x), vec3<bool>(global3.b.a.x, var_2.x, true), vec3<bool>(var_2.x, false, global3.b.a.x)), select(vec3<bool>(true, true, false), vec3<bool>(false, global3.a.a.a.x, true), vec3<bool>(global3.c, true, false)), global3.b.d < u_input.a)));
    var_2 = select(select(vec3<bool>(var_3.c, !(var_2.x | var_3.c), all(!vec4<bool>(var_3.c, true, false, true))), !vec3<bool>(var_2.x, global3.a.a.a.x && global3.a.a.a.x, !global3.a.a.a.x), vec3<bool>(true, !global3.c, any(vec2<bool>(false, false)))), select(select(!vec3<bool>(false, var_3.c, var_2.x), !select(vec3<bool>(global3.a.a.a.x, var_2.x, true), vec3<bool>(var_2.x, global3.a.a.a.x, true), vec3<bool>(true, global3.a.a.a.x, var_2.x)), vec3<bool>(var_3.c, any(vec4<bool>(true, false, var_3.c, var_3.c)), true)), select(select(!vec3<bool>(var_3.c, var_2.x, var_2.x), vec3<bool>(global3.d.a.a.x, false, true), true), !(!vec3<bool>(var_3.c, true, true)), true), !vec3<bool>(!var_3.c, all(vec4<bool>(true, global3.a.a.a.x, false, true)), true)), vec3<bool>(var_3.c, true, func_1(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, global1.x, global1.x)), -var_0.x, var_2.x), vec4<i32>(-var_0.x, 33577i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(2611u, 8u)], -15436i), u_input.a), !var_2.yx)));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1693f, global1.x, -1198f), var_3.a), _wgslsmith_f_op_vec3_f32(-global1.wxy), vec3<bool>(var_2.x, false, false))), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 545f, 314f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global1.wzz)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, 642f, 746f)))))))), global3.a.c.x, any(vec4<bool>(true, !var_3.c, -2147483647i > var_0.x, func_1(Struct_4(var_3.a, 0i, true), vec4<i32>(var_3.b, u_input.a, global0[_wgslsmith_index_u32(var_1, 8u)], var_0.x), global3.a.a.a))) || (all(vec3<bool>(true, var_2.x, false)) & !any(vec3<bool>(false, var_3.c, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(var_1, _wgslsmith_div_u32(1521u, var_1), _wgslsmith_mod_u32(global3.d.a.e.x, var_1), min(~global3.d.b, 43709u & var_1)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 0u, 1u, var_1), max(vec4<u32>(global3.a.b, global3.a.b, var_1, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, var_1))), vec4<bool>(!func_1(var_4, vec4<i32>(global3.a.c.x, 17774i, var_3.b, 1i), vec2<bool>(var_3.c, global3.b.a.x)), true, true, true)), var_4.a, var_4.a.x, ~u_input.a, vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(19785i), 11660i), 1i, -var_3.b));
}

