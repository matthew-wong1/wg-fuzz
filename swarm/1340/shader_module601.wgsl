struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, -24659i)), 0u, Struct_1(vec2<i32>(73093i, 2369i))), 466f, vec3<bool>(false, false, false), Struct_1(vec2<i32>(26764i, 2147483647i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, 24348i)), 1u, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i))), -1267f, vec3<bool>(false, true, false), Struct_1(vec2<i32>(-32967i, -28980i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-4612i, -1i)), 74951u, Struct_1(vec2<i32>(-51062i, 1i))), 2479f, vec3<bool>(false, true, true), Struct_1(vec2<i32>(38725i, 2147483647i))), Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1614i)), 4086u, Struct_1(vec2<i32>(0i, -32196i))), -409f, vec3<bool>(true, false, false), Struct_1(vec2<i32>(1i, 17846i))), Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i)), 19022u, Struct_1(vec2<i32>(11138i, 1i))), -111f, vec3<bool>(false, false, false), Struct_1(vec2<i32>(21635i, -1i))), Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), 10134u, Struct_1(vec2<i32>(-58714i, 2147483647i))), -346f, vec3<bool>(true, true, true), Struct_1(vec2<i32>(-20764i, 229i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, 1i)), 25553u, Struct_1(vec2<i32>(-1i, 0i))), -951f, vec3<bool>(true, false, false), Struct_1(vec2<i32>(28888i, -31488i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-18221i, 70367i)), 29320u, Struct_1(vec2<i32>(-9097i, -16102i))), 172f, vec3<bool>(false, false, false), Struct_1(vec2<i32>(-24158i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec2<i32>(0i, 35389i)), 29074u, Struct_1(vec2<i32>(i32(-2147483648), -1i))), -629f, vec3<bool>(false, true, true), Struct_1(vec2<i32>(0i, 4060i))), Struct_3(Struct_2(Struct_1(vec2<i32>(1i, 49116i)), 4294967295u, Struct_1(vec2<i32>(0i, i32(-2147483648)))), 1052f, vec3<bool>(false, false, false), Struct_1(vec2<i32>(0i, 1i))), Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, -1i)), 27311u, Struct_1(vec2<i32>(2147483647i, 2147483647i))), -112f, vec3<bool>(false, false, true), Struct_1(vec2<i32>(14124i, 43852i))), Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 24502i)), 67640u, Struct_1(vec2<i32>(20215i, 2147483647i))), -317f, vec3<bool>(false, false, false), Struct_1(vec2<i32>(-53140i, -8382i))), Struct_3(Struct_2(Struct_1(vec2<i32>(8744i, 10575i)), 1u, Struct_1(vec2<i32>(40082i, -53185i))), -1000f, vec3<bool>(true, true, false), Struct_1(vec2<i32>(1i, 11335i))), Struct_3(Struct_2(Struct_1(vec2<i32>(3508i, 1i)), 61784u, Struct_1(vec2<i32>(-53763i, -3693i))), -1303f, vec3<bool>(false, false, false), Struct_1(vec2<i32>(-36851i, 0i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-52006i, 0i)), 11855u, Struct_1(vec2<i32>(2147483647i, -6227i))), -620f, vec3<bool>(false, true, false), Struct_1(vec2<i32>(-856i, 2147483647i))), Struct_3(Struct_2(Struct_1(vec2<i32>(1i, 0i)), 0u, Struct_1(vec2<i32>(10943i, i32(-2147483648)))), 874f, vec3<bool>(false, false, false), Struct_1(vec2<i32>(2147483647i, 36349i))));

var<private> global2: array<i32, 23> = array<i32, 23>(0i, 2147483647i, -44748i, -22990i, 1i, i32(-2147483648), 2147483647i, 2147483647i, -1i, 1i, 13037i, 43693i, i32(-2147483648), 1i, 1i, 0i, -52381i, -8728i, i32(-2147483648), 2147483647i, -20285i, 0i, -50234i);

var<private> global3: array<vec4<u32>, 28>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    global3 = array<vec4<u32>, 28>();
    var var_0 = Struct_1(select(firstLeadingBit(-(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]) | vec2<i32>(39376i, 0i))), -select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(48616i, u_input.b), false) >> (_wgslsmith_div_vec2_u32(u_input.a.xx, abs(u_input.a.zz)) % vec2<u32>(32u)), -(i32(-1i) * -2361i) >= max(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -70665i, global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])))));
    var_0 = Struct_1(abs(var_0.a));
    return _wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - arg_0.x)), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(847f - _wgslsmith_f_op_f32(max(-241f, arg_0.x)))), _wgslsmith_div_f32(arg_0.x, -1658f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1044f, 1193f, 661f, -864f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(136f, -641f, -199f, -449f) - vec4<f32>(-149f, -1282f, 854f, -1084f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1529f, 746f, -1000f, -749f), vec4<f32>(996f, 517f, 1536f, 406f), vec4<bool>(true, arg_1.x, false, arg_1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1093f, -570f, -778f, -607f) - vec4<f32>(-458f, -253f, 862f, 622f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-284f, _wgslsmith_f_op_f32(f32(-1f) * -1920f), 337f, _wgslsmith_f_op_f32(-286f + _wgslsmith_f_op_f32(floor(2176f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-360f, -208f, 479f, -344f))))))));
    global1 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_f_op_f32(step(1607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(260f)))));
    let var_2 = var_0.yzz;
    global0 = array<i32, 19>();
    return Struct_2(Struct_1(~arg_0.a ^ ~arg_0.a), max(countOneBits(u_input.a.x), u_input.a.x), Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], 30587i), -arg_0.a, arg_0.a) & vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)] & global2[_wgslsmith_index_u32(4294967295u, 23u)], i32(-1i) * -28820i)));
}

fn func_1() -> i32 {
    let var_0 = func_2(Struct_1(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], 0i)) >> (abs(vec2<u32>(4294967295u, 38029u)) % vec2<u32>(32u)))), vec2<bool>(all(vec2<bool>(true, true)), true));
    var var_1 = select(vec3<bool>(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), true, false), vec3<bool>(false, true, false), false);
    var var_2 = Struct_3(func_2(func_2(Struct_1(~var_0.a.a), select(var_1.zz, select(vec2<bool>(var_1.x, var_1.x), var_1.yy, var_1.xy), var_1.yz)).c, vec2<bool>(true, any(vec2<bool>(true, true)))), -1524f, !(!vec3<bool>(false, false, any(vec3<bool>(var_1.x, true, var_1.x)))), func_2(var_0.a, vec2<bool>(var_1.x, true)).a);
    var var_3 = select(-vec3<i32>(var_2.a.a.a.x, firstLeadingBit(global2[_wgslsmith_index_u32(var_0.b, 23u)]), i32(-1i) * -7646i), vec3<i32>(~var_2.d.a.x, abs(var_2.a.c.a.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 0i), vec2<i32>(-1i, global2[_wgslsmith_index_u32(var_0.b, 23u)]) >> (vec2<u32>(40042u, 1u) % vec2<u32>(32u)))), select(select(vec3<bool>(false, var_1.x, false), var_2.c, any(select(var_2.c, var_2.c, true))), vec3<bool>(!(!var_1.x), 1i < max(2196i, var_2.a.a.a.x), ~u_input.a.x != _wgslsmith_sub_u32(var_0.b, 4294967295u)), vec3<bool>(!(!var_2.c.x), true, !var_2.c.x)));
    var_3 = vec3<i32>(var_2.d.a.x, ~(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(var_0.b), 4392u & u_input.a.x), 19u)]), _wgslsmith_mod_i32(~0i, ~var_2.a.c.a.x));
    return ~_wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-54201i), var_3.x & 0i), abs(global2[_wgslsmith_index_u32(60120u, 23u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(1i ^ global0[_wgslsmith_index_u32(~u_input.a.x, 19u)]);
    global0 = array<i32, 19>();
    global1 = array<Struct_3, 16>();
    global1 = array<Struct_3, 16>();
    let var_1 = vec2<bool>(true, u_input.c <= 17412i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wxy, _wgslsmith_div_i32(_wgslsmith_clamp_i32(func_1(), ~(i32(-1i) * -1i), var_0), -34441i), reverseBits(vec3<i32>(i32(-1i) * -2147483647i, -(-1i << (1u % 32u)), min(reverseBits(u_input.c), u_input.c))), ~(~abs(vec3<u32>(0u, u_input.a.x, 4294967295u)) >> (select(u_input.a, select(vec3<u32>(u_input.d.x, 6630u, 4294967295u), u_input.d.xww, false), !var_1.x) % vec3<u32>(32u))), var_0);
}

