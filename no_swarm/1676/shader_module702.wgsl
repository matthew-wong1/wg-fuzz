struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(586f, 0u, vec2<i32>(-67500i, i32(-2147483648)));

var<private> global1: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(598f, -1000f, 550f), vec3<f32>(352f, 539f, -813f), vec3<f32>(1316f, -315f, -1000f), vec3<f32>(-167f, 141f, -199f), vec3<f32>(982f, 1000f, 797f), vec3<f32>(-829f, 711f, 1624f), vec3<f32>(572f, 1719f, 920f), vec3<f32>(458f, 624f, 207f), vec3<f32>(986f, 573f, -824f), vec3<f32>(-1386f, -1861f, 1644f), vec3<f32>(-2347f, -1000f, -327f), vec3<f32>(222f, -810f, -111f), vec3<f32>(-620f, -979f, 515f), vec3<f32>(-2791f, -1886f, -156f), vec3<f32>(342f, -910f, 728f), vec3<f32>(-163f, 2094f, 218f), vec3<f32>(-1607f, -230f, 274f));

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(89566u, 36018u, 26030u), vec3<u32>(14619u, 27552u, 0u), vec3<u32>(1u, 4294967295u, 58115u), vec3<u32>(73004u, 0u, 86729u), vec3<u32>(0u, 24050u, 41347u), vec3<u32>(4294967295u, 27409u, 661u));

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global4.x + 622f), ~1u, ~(-(_wgslsmith_mult_vec2_i32(global2.c, vec2<i32>(u_input.b.x, -1i)) & vec2<i32>(global0.c.x, u_input.b.x))));
    let var_1 = Struct_5(-1217f, Struct_2(Struct_1(-310f, 56662u & ~u_input.a.x, u_input.b.zy), Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(min(u_input.a.xx, u_input.a.xx), select(u_input.a.wz, u_input.a.zz, true)), firstLeadingBit(firstLeadingBit(vec2<i32>(global0.c.x, global2.c.x)))), 44400u ^ firstTrailingBit(~4294967295u), _wgslsmith_add_i32(48321i ^ var_0.c.x, global0.c.x)), Struct_2(Struct_1(global4.x, firstLeadingBit(countOneBits(0u)), var_0.c), Struct_1(global4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 25631u, 49504u, 4294967295u), vec4<u32>(74198u, global2.b, 17902u, 1u) | u_input.a), -var_0.c), ~global2.b, u_input.b.x), 2147483647i, Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, var_0.a, global2.a, global4.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1423f, global2.a, 114f, -107f) - vec4<f32>(1207f, -1290f, global0.a, -149f))))), abs(-firstLeadingBit(global2.c.x))));
    var var_2 = abs(vec3<u32>(_wgslsmith_div_u32(reverseBits(21064u), var_0.b), firstLeadingBit(~(~1u)), ~u_input.a.x));
    let var_3 = !select(all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))), any(vec3<bool>(any(vec2<bool>(true, true)), false, false)), global2.b <= _wgslsmith_div_u32(var_0.b, global2.b));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2204f, var_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), abs(_wgslsmith_dot_vec4_u32(u_input.a >> (vec4<u32>(var_1.b.a.b, var_0.b, var_2.x, global0.b) % vec4<u32>(32u)), ~u_input.a)), ~max(-vec2<i32>(9478i, global0.c.x), _wgslsmith_add_vec2_i32(vec2<i32>(-15609i, var_1.e.b), vec2<i32>(var_0.c.x, 1i)))), var_1.b.b, abs(var_2.x), select(var_1.c.b.c.x, _wgslsmith_add_i32(_wgslsmith_div_i32(global2.c.x, _wgslsmith_sub_i32(u_input.b.x, var_0.c.x)), var_1.e.b), any(select(select(vec4<bool>(var_3, true, var_3, var_3), vec4<bool>(false, var_3, var_3, var_3), vec4<bool>(var_3, var_3, false, false)), !vec4<bool>(var_3, var_3, true, true), true))));
    return global0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec4<f32> {
    let var_0 = !select(vec4<bool>(true, !select(false, false, false), all(vec2<bool>(true, true)), true), vec4<bool>(select(true, arg_1.x >= global0.a, true), false, any(vec4<bool>(true, true, false, true)), true), all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, false))));
    let var_1 = reverseBits(u_input.b);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))), arg_1.x));
    var var_3 = select(u_input.a.ww, vec2<u32>(6694u, max(8558u, global2.b)), !select(select(var_0.xx, !var_0.zy, true), vec2<bool>(true, true), vec2<bool>(!var_0.x, true)));
    let var_4 = var_0.xz;
    return vec4<f32>(_wgslsmith_f_op_f32(-1336f * -1427f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) + var_2) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2248f), _wgslsmith_f_op_f32(-var_2), true)) * 532f) * _wgslsmith_div_f32(965f, global0.a)), arg_1.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_5) -> Struct_2 {
    global0 = arg_1.a;
    let var_0 = global4.xx;
    global0 = Struct_1(_wgslsmith_f_op_f32(2130f + _wgslsmith_f_op_f32(f32(-1f) * -247f)), 0u, arg_1.a.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(u_input.b, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -974f)), vec2<f32>(_wgslsmith_f_op_f32(func_3()), -987f))))));
    var var_2 = abs(3785u);
    return Struct_2(arg_1.b, Struct_1(var_1.x, _wgslsmith_mult_u32(select(1u, 78057u, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, arg_1.b.b), vec3<u32>(global0.b, arg_2.c.c, 0u))), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zyz, vec3<i32>(-2147483647i, 17981i, global0.c.x)), arg_2.e.b) | _wgslsmith_clamp_vec2_i32(arg_0, arg_1.a.c, vec2<i32>(-48538i, global0.c.x))), ~abs(1u), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, countOneBits(firstTrailingBit(arg_2.e.b)), -arg_2.d), -20374i));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    return func_2(vec2<i32>(-(~(1i & arg_0.d)), select(arg_1.b, global0.c.x, false)), Struct_2(arg_0.c.a, arg_0.c.b, firstTrailingBit(~global2.b), (arg_1.b & arg_2.b) ^ _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b.wyw), countOneBits(u_input.b.zyw))), Struct_5(-831f, Struct_2(func_2(_wgslsmith_mult_vec2_i32(global0.c, global2.c), arg_0.c, arg_0).b, Struct_1(932f, select(u_input.a.x, global2.b, false), countOneBits(arg_0.b.a.c)), ~_wgslsmith_clamp_u32(1u, arg_0.b.c, u_input.a.x), -19445i), func_2(global2.c, func_2(~global2.c, arg_0.b, arg_0), Struct_5(global4.x, arg_0.b, arg_0.c, -global2.c.x, Struct_4(arg_1.a, 14880i))), -abs(arg_1.b), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, global0.a, -400f, global0.a)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2332f, -1434f, arg_1.a.x, global0.a)))), arg_0.b.b.c.x)));
}

fn func_6(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global0.a, global4.x, global2.a) * vec4<f32>(-161f, arg_0.a.a, global4.x, -1830f))))))), global0.c.x);
    global4 = global1[_wgslsmith_index_u32(1u, 17u)];
    global3 = array<vec3<u32>, 6>();
    global1 = array<vec3<f32>, 17>();
    var var_1 = vec3<u32>(~firstTrailingBit(abs(global0.b)), ~0u, 51560u) & (~vec3<u32>(max(1u, global2.b), global0.b, 8617u) & vec3<u32>(_wgslsmith_mult_u32(global2.b, ~u_input.a.x), 25916u, global0.b));
    return arg_0.b.b;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_6(func_5(Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -250f), Struct_2(Struct_1(global0.a, 1u, vec2<i32>(global0.c.x, global0.c.x)), Struct_1(-425f, global0.b, vec2<i32>(11778i, global0.c.x)), global2.b, -9483i), func_2(vec2<i32>(2147483647i, -4322i), Struct_2(Struct_1(global2.a, 32095u, vec2<i32>(-1i, -2147483647i)), Struct_1(611f, 36824u, vec2<i32>(-8431i, -3190i)), 35089u, 0i), Struct_5(global2.a, Struct_2(Struct_1(-275f, 92584u, global2.c), Struct_1(625f, 1u, vec2<i32>(global2.c.x, global2.c.x)), 0u, u_input.b.x), Struct_2(Struct_1(-223f, u_input.a.x, u_input.b.wz), Struct_1(874f, global0.b, global2.c), global0.b, 1i), global2.c.x, Struct_4(vec4<f32>(-1845f, global4.x, global2.a, global4.x), global2.c.x))), i32(-1i) * -1i, Struct_4(vec4<f32>(global2.a, -900f, -619f, global0.a), global0.c.x)), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -1007f, global0.a, global4.x) - vec4<f32>(-1243f, global4.x, 422f, global0.a)), ~(-1i)), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, 1247f, global4.x, global2.a) + vec4<f32>(412f, global0.a, 112f, -239f)), global0.c.x | 1i))) | global0.b;
    global3 = array<vec3<u32>, 6>();
    let var_1 = Struct_1(280f, 38196u, global0.c);
    let var_2 = -1728f;
    let var_3 = ~(~var_0);
    return StorageBuffer(reverseBits(global2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 17>();
    let x = u_input.a;
    s_output = func_1();
}

