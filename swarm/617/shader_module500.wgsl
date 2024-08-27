struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(6847u, 1u, 1u);

var<private> global1: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(0u, true, -921f, vec4<i32>(1i, -1i, 1i, 12018i)));

var<private> global3: vec4<u32>;

var<private> global4: f32 = -288f;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(652f)) * _wgslsmith_div_f32(1020f, -671f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(2065f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 148f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(389f))))) + _wgslsmith_f_op_f32(1449f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-502f)))))));
    let var_0 = global0.x & 47075u;
    let var_1 = vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true || all(vec2<bool>(true, false)))), false);
    global4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(290f + 1671f) + 546f))) * _wgslsmith_div_f32(-1137f, 332f)), _wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(610f + 1f))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1378f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1260f - -1007f), _wgslsmith_f_op_f32(f32(-1f) * -936f)))), _wgslsmith_div_f32(-1846f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(326f + 1234f), _wgslsmith_f_op_f32(step(111f, 1388f)), true))))));
    return min(max(0u, countOneBits(0u)), _wgslsmith_dot_vec4_u32(~firstTrailingBit(~vec4<u32>(u_input.b, global3.x, u_input.a.x, global0.x)), vec4<u32>(~max(4294967295u, global3.x), u_input.b, min(4294967295u, ~global0.x), 4294967295u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 1>();
    var var_0 = ~_wgslsmith_clamp_vec3_u32(~(~global3.wyz), global3.zyx, global3.zyw);
    var var_1 = Struct_2(min(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 0u, var_0.x, global3.x), ~vec4<u32>(global3.x, 0u, 4294967295u, 4294967295u)), vec4<u32>(1u, var_0.x, global3.x << (var_0.x % 32u), global3.x)), ~(~(~vec4<u32>(global0.x, 0u, var_0.x, arg_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c, -902f, 773f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 869f, arg_0.c) * vec3<f32>(arg_0.c, 579f, arg_0.c))))));
    return Struct_1(func_3(), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) - 346f) - 217f) - -598f), vec4<i32>(~(firstTrailingBit(2147483647i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_0.x), vec3<u32>(global0.x, 66055u, arg_0.a)) % 32u)), reverseBits(_wgslsmith_clamp_i32(arg_0.d.x, arg_0.d.x, 0i)) >> (1u % 32u), -1039i, -2147483647i));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    global3 = vec4<u32>(~firstLeadingBit(1u), ~(~(~0u)), reverseBits(_wgslsmith_sub_u32(4239u, ~global3.x)), _wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_0.a, _wgslsmith_mult_u32(u_input.a.x, global3.x)), reverseBits(reverseBits(global0.x)))) | min(select(vec4<u32>(61678u, 4294967295u, 44052u, global0.x) | vec4<u32>(0u, 29489u, 4294967295u, 78835u), vec4<u32>(~arg_0.a, 65028u, arg_0.a, ~arg_0.a), select(global1[_wgslsmith_index_u32(global3.x << (28792u % 32u), 15u)], global1[_wgslsmith_index_u32(~arg_0.a, 15u)], all(vec2<bool>(false, true)))), vec4<u32>(1u, max(35838u, u_input.a.x), ~1u, arg_0.a));
    var var_0 = ~vec4<u32>(abs(u_input.b), (global3.x ^ _wgslsmith_mod_u32(arg_0.a, 6207u)) | global3.x, select(_wgslsmith_sub_u32(47002u, ~global3.x), countOneBits(15595u), !(arg_0.b && arg_0.b)), (_wgslsmith_mult_u32(u_input.a.x, arg_0.a) & 4294967295u) << (func_2(func_2(arg_0)).a % 32u));
    return Struct_3(Struct_2(max(~(~vec4<u32>(arg_0.a, global3.x, arg_0.a, u_input.a.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(37140u, arg_0.a, 47815u, 10313u), vec4<u32>(24225u, 79680u, 45650u, global0.x)), ~vec4<u32>(global0.x, u_input.a.x, var_0.x, u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + -1240f), arg_0.c, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_0.c)))), arg_0, Struct_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0.a, 51803u, 1u) | vec4<u32>(var_0.x, var_0.x, 4294967295u, 30920u), firstTrailingBit(vec4<u32>(78207u, 4294967295u, 0u, 0u)), abs(vec4<u32>(40452u, arg_0.a, global3.x, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-660f, arg_0.c, 241f) + vec3<f32>(arg_0.c, arg_0.c, -250f)), vec3<f32>(arg_0.c, arg_0.c, arg_0.c), all(vec3<bool>(arg_0.b, true, arg_0.b)))))));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_1(arg_2.a.a.x, !all(!global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.x, 1u, 3675u), 15u)]), arg_1.x, min(vec4<i32>(_wgslsmith_sub_i32(25619i, 39427i), 35594i, ~31617i, 13362i) ^ ~(~arg_2.b.d), arg_2.b.d));
    return _wgslsmith_f_op_f32(f32(-1f) * -2145f);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))), arg_0.x, _wgslsmith_f_op_f32(func_5(arg_1.b, _wgslsmith_f_op_vec2_f32(arg_0.zz - _wgslsmith_f_op_vec2_f32(min(arg_0.zz, arg_0.yz))), func_4(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 1u)])), vec4<f32>(arg_0.x, arg_1.c, 208f, _wgslsmith_f_op_f32(round(886f))))), -631f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c, arg_1.c, arg_0.x, arg_0.x))) + vec4<f32>(795f, arg_1.c, 826f, -1186f)) * vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -2554f), _wgslsmith_f_op_f32(183f + -362f), arg_0.x))))));
    global1 = array<vec4<bool>, 15>();
    global1 = array<vec4<bool>, 15>();
    return func_4(global2[_wgslsmith_index_u32(~firstTrailingBit(0u), 1u)]).c;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.b.x;
    var var_1 = Struct_1(74425u, func_4(func_4(Struct_1(global3.x, true, _wgslsmith_f_op_f32(round(522f)), _wgslsmith_add_vec4_i32(vec4<i32>(-32681i, -2147483647i, -37593i, -1i), vec4<i32>(30271i, 21508i, 1471i, -38148i)))).b).b.b, func_1(_wgslsmith_div_vec3_f32(func_4(func_4(Struct_1(global0.x, false, -1143f, vec4<i32>(-1i, -1i, 9935i, 1i))).b).c.b, arg_0.b), Struct_1(~0u, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1624f), abs(vec4<i32>(0i, -17716i, 24101i, -2147483647i)))).b.x, vec4<i32>(-1i) * -(~vec4<i32>(-1i, 1i, 6534i, -24055i)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.x << (1u % 32u), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_1.a, arg_0.a.x)), 0u), vec4<u32>(1u, global3.x, 9166u, arg_0.a.x) ^ arg_0.a, vec4<u32>(~4294967295u, 30106u, select(u_input.a.x, u_input.b, var_1.b), global0.x)), arg_0.b), func_2(Struct_1(u_input.a.x, var_1.b, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(func_5(var_1.b, arg_0.b.zx, Struct_3(Struct_2(arg_0.a, vec3<f32>(var_1.c, var_0, arg_0.b.x)), Struct_1(1u, true, 1506f, vec4<i32>(-23103i, 1i, var_1.d.x, var_1.d.x)), arg_0), vec4<f32>(-1845f, -518f, arg_0.b.x, -1729f)))), var_1.d)), arg_0);
    var var_3 = var_2.b.d;
    var var_4 = Struct_2(~var_2.c.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-890f, var_2.c.b.x, -1732f)), vec3<f32>(arg_0.b.x, var_1.c, var_1.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.a.b + vec3<f32>(-1155f, -277f, var_1.c)), _wgslsmith_f_op_vec3_f32(-var_2.c.b), arg_0.b.x >= var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c.b)))));
    return Struct_1(~(~var_1.a), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)) + var_2.b.c) * var_2.a.b.x), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_1.d.x, -2147483647i), func_4(Struct_1(89360u, true, var_4.b.x, vec4<i32>(var_2.b.d.x, 33801i, 1i, -2147483647i))).b.d.x, -86258i, 0i), vec4<i32>(~var_2.b.d.x, ~0i, 1i, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-896f, -1759f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1336f, 974f, -481f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1341f), 1f, _wgslsmith_f_op_f32(round(248f))), vec3<bool>(true, true, true))), Struct_1(u_input.a.x, !any(vec3<bool>(true, true, true)), -931f, ~_wgslsmith_add_vec4_i32(vec4<i32>(-1202i, -1i, 13103i, 24778i), vec4<i32>(2147483647i, 1i, -1i, -20130i)))));
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global1 = array<vec4<bool>, 15>();
    global2 = array<Struct_1, 1>();
    global0 = _wgslsmith_clamp_vec3_u32(~func_4(func_2(global2[_wgslsmith_index_u32(var_0.a, 1u)])).a.a.zyx, global3.ywx, global3.xzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, var_0.c, var_0.c, var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-566f, var_0.c, var_0.c, -1000f)))))));
}

