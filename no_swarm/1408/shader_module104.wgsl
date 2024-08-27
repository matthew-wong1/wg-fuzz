struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec4<f32>(2346f, 295f, -2040f, 377f), vec4<u32>(13606u, 5887u, 25600u, 68542u)), Struct_4(vec4<f32>(-489f, -2558f, -1200f, 1000f), vec4<u32>(31670u, 0u, 1u, 869u)), Struct_4(vec4<f32>(1230f, 1223f, 198f, -280f), vec4<u32>(90641u, 1u, 4294967295u, 49927u)), Struct_4(vec4<f32>(1532f, 673f, -945f, 1380f), vec4<u32>(0u, 9603u, 4294967295u, 4294967295u)), Struct_4(vec4<f32>(891f, -1852f, -1052f, 401f), vec4<u32>(92496u, 0u, 3273u, 58899u)), Struct_4(vec4<f32>(232f, 841f, -1000f, -932f), vec4<u32>(0u, 0u, 13774u, 1u)), Struct_4(vec4<f32>(913f, -2176f, -838f, -484f), vec4<u32>(4294967295u, 4294967295u, 46331u, 4294967295u)), Struct_4(vec4<f32>(-1553f, -961f, 311f, 1474f), vec4<u32>(29128u, 0u, 47758u, 0u)), Struct_4(vec4<f32>(218f, 1149f, 1000f, -1720f), vec4<u32>(18133u, 4294967295u, 9565u, 4294967295u)), Struct_4(vec4<f32>(408f, 464f, -1138f, -333f), vec4<u32>(54063u, 7410u, 0u, 1u)), Struct_4(vec4<f32>(-540f, -385f, -852f, -2056f), vec4<u32>(17333u, 1u, 4294967295u, 1u)), Struct_4(vec4<f32>(-209f, -1000f, -404f, 1000f), vec4<u32>(71096u, 5793u, 87532u, 1u)), Struct_4(vec4<f32>(557f, 1886f, 770f, 1000f), vec4<u32>(17799u, 72216u, 32668u, 19916u)), Struct_4(vec4<f32>(110f, -1000f, 798f, 1814f), vec4<u32>(8168u, 12713u, 3023u, 4294967295u)), Struct_4(vec4<f32>(221f, -761f, -811f, -2307f), vec4<u32>(22593u, 47448u, 0u, 19359u)), Struct_4(vec4<f32>(1266f, 375f, -1881f, 554f), vec4<u32>(1u, 17846u, 19927u, 0u)), Struct_4(vec4<f32>(-683f, -117f, -676f, 783f), vec4<u32>(3782u, 1u, 25244u, 28774u)));

var<private> global1: array<bool, 13>;

var<private> global2: f32;

var<private> global3: array<Struct_3, 29>;

var<private> global4: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(0i, 4136i, -1i), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, -5023i, 2147483647i), vec3<i32>(2147483647i, -1605i, 2147483647i), vec3<i32>(6626i, 1i, 2147483647i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(11157i, 17208i, -17425i), vec3<i32>(15399i, 2147483647i, 2147483647i), vec3<i32>(-42956i, 8803i, -1i), vec3<i32>(-38050i, -1i, -7793i), vec3<i32>(32365i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(30734i, -20578i, -1i), vec3<i32>(1i, 16770i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -3913i, 9138i), vec3<i32>(2147483647i, -9065i, 1i), vec3<i32>(3662i, 0i, 7961i), vec3<i32>(1i, 0i, 1i), vec3<i32>(-834i, -19824i, 1i), vec3<i32>(-3353i, i32(-2147483648), -3010i), vec3<i32>(2147483647i, -7458i, 2147483647i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = !vec4<bool>(true, !(arg_1.x != u_input.c), any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], false, global1[_wgslsmith_index_u32(1u, 13u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(37416u, 13u)], global1[_wgslsmith_index_u32(arg_1.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], false), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, arg_1.x), 13u)])), false);
    let var_1 = arg_0;
    global1 = array<bool, 13>();
    let var_2 = countOneBits(abs(abs(2147483647i)));
    global2 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_0.x));
    return ~53046u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<i32>(u_input.d.x ^ _wgslsmith_mult_i32(countOneBits(u_input.d.x << (arg_0.a.x % 32u)), firstLeadingBit(-1i ^ u_input.d.x)), u_input.d.x, 44577i, _wgslsmith_add_i32(u_input.d.x, _wgslsmith_clamp_i32(-(~0i), select(max(u_input.d.x, -1i), countOneBits(u_input.d.x), true), -51594i & (u_input.d.x & u_input.d.x))));
    let var_1 = 27862u;
    global0 = array<Struct_4, 17>();
    let var_2 = vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.yy, firstTrailingBit(vec2<u32>(arg_0.a.x, var_1))), ~func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-578f, -1509f, 217f)), ~u_input.a.zx) | var_1, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1, 31528u, arg_0.a.x), vec4<u32>(54674u, arg_0.a.x, var_1, arg_0.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.a.x, u_input.a.x), vec4<u32>(65014u, arg_0.a.x, arg_0.a.x, var_1)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1, var_1, 7414u), vec4<u32>(42243u, u_input.c, u_input.c, 58583u)), ~vec4<u32>(0u, 24674u, var_1, 28409u))), ~reverseBits(~1u) & _wgslsmith_clamp_u32(34856u, 7049u, arg_0.a.x));
    return func_3(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -543f)), 390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(314f, -525f)))), _wgslsmith_add_vec2_u32(select(vec2<u32>(abs(u_input.a.x), ~1u), abs(arg_0.a.zz >> (vec2<u32>(u_input.c, 3668u) % vec2<u32>(32u))), vec2<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 13u)], true)), all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(var_2.x, 13u)])))), ~(~abs(vec2<u32>(0u, 61289u)))));
}

fn func_1() -> vec3<bool> {
    global3 = array<Struct_3, 29>();
    let var_0 = Struct_2(Struct_1(countOneBits(u_input.b)), vec2<i32>(firstTrailingBit(i32(-1i) * -u_input.d.x), -2147483647i << (u_input.b.x % 32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x ^ func_2(Struct_1(vec3<u32>(4294967295u, 40593u, 0u))), ~_wgslsmith_add_u32(82082u, 0u), 0u), vec3<u32>(~u_input.b.x, 10522u, ~0u)), Struct_1(~firstTrailingBit(max(u_input.b, u_input.a))));
    global0 = array<Struct_4, 17>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(u_input.a.zz >> (u_input.b.xx % vec2<u32>(32u))), vec2<u32>(select(var_0.d.a.x, ~u_input.b.x << (u_input.c % 32u), all(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], false))), ~_wgslsmith_sub_u32(4294967295u, 46128u))), 29u)];
    var var_2 = Struct_1(vec3<u32>(var_1.c.a.a.x | var_0.c.x, ~(max(var_0.a.a.x, 13061u) >> (~u_input.c % 32u)), 52625u));
    return vec3<bool>(!any(vec4<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 13u)], true, global1[_wgslsmith_index_u32(34759u, 13u)])), false, true, global1[_wgslsmith_index_u32(var_0.c.x, 13u)])), true, all(vec4<bool>(any(vec3<bool>(false, true, true)), true, all(vec2<bool>(false, false)) & (true & global1[_wgslsmith_index_u32(0u, 13u)]), all(select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(true, false, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(var_2.a.x, 13u)], false, false))))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_add_i32(firstLeadingBit(u_input.d.x), u_input.d.x);
    let var_1 = arg_0.yz;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-176f, -1379f)))))), _wgslsmith_f_op_f32(-377f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1955f), _wgslsmith_f_op_f32(min(-305f, -964f)), false)))))));
    let var_3 = vec2<bool>(any(vec4<bool>(var_1.x | arg_0.x, all(vec4<bool>(false, var_1.x, arg_0.x, global1[_wgslsmith_index_u32(50561u, 13u)])), global1[_wgslsmith_index_u32(~4381u, 13u)], arg_0.x | arg_0.x)) || (false && !any(var_1)), var_1.x);
    global0 = array<Struct_4, 17>();
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24307u | _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, 0u), _wgslsmith_div_u32(u_input.c, 28264u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 12201u, u_input.a.x, u_input.c), vec4<u32>(u_input.a.x, u_input.c, 0u, 144380u), true) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 25965u, 27134u, u_input.a.x), vec4<u32>(u_input.a.x, 26707u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(23507u, 0u, 4294967295u, 40925u))), _wgslsmith_sub_u32(reverseBits(u_input.b.x), _wgslsmith_dot_vec2_u32(~u_input.b.xz, vec2<u32>(4294967295u, 83430u))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(5772u, 1u, 1u)), u_input.b)), ~((vec4<u32>(u_input.c, u_input.c, 21115u, 0u) >> (vec4<u32>(4294967295u, 1611u, u_input.c, u_input.b.x) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.b.x) & vec4<u32>(u_input.a.x, 39964u, 0u, 4294967295u), select(vec4<u32>(39336u, 1u, u_input.b.x, u_input.c), vec4<u32>(u_input.a.x, u_input.b.x, 37557u, 0u), false)) % vec4<u32>(32u)))), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.a, ~(~(~u_input.b) << ((max(vec3<u32>(4294967295u, u_input.c, u_input.a.x), u_input.a) << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)))), 17u)];
    var var_1 = func_4(select(func_1(), !(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 13u)], true, true)), false));
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(func_4(vec3<bool>(u_input.d.x <= -1i, all(vec2<bool>(true, true)), true)).a)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.b.x, 50810u, u_input.c, 0u), vec4<u32>(20568u, 196191u, var_1.b.x, var_1.b.x) ^ abs(var_1.b)) << (var_1.b % vec4<u32>(32u)));
    let var_2 = func_3(var_1.a.ywy, ~_wgslsmith_mult_vec2_u32(var_0.b.yx, ~vec2<u32>(var_0.b.x, 41712u)));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, global1[_wgslsmith_index_u32(0u, 13u)])))) * var_0.a.x)));
    var var_4 = all(select(vec4<bool>(true, !global1[_wgslsmith_index_u32(~u_input.a.x, 13u)], global1[_wgslsmith_index_u32(func_2(Struct_1(var_1.b.wzw)), 13u)], true), !(!(!vec4<bool>(global1[_wgslsmith_index_u32(var_2, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(var_1.b.x, 13u)], global1[_wgslsmith_index_u32(34985u, 13u)]))), select(u_input.d.x != firstLeadingBit(-1i), !all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(1456u, 13u)])), !(global1[_wgslsmith_index_u32(0u, 13u)] | global1[_wgslsmith_index_u32(4294967295u, 13u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, var_0.a.x, vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-u_input.d), vec2<i32>(u_input.d.x, u_input.d.x)), -(5902i & max(u_input.d.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(_wgslsmith_div_f32(var_0.a.x, 1491f), _wgslsmith_f_op_f32(-3047f - var_1.a.x), var_1.a.x, var_1.a.x)));
}

