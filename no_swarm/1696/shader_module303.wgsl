struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<vec3<i32>, 32>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<f32>(144f, -1200f, -1017f), vec3<u32>(22437u, 0u, 1u), Struct_1(vec4<u32>(14467u, 4294967295u, 54533u, 0u)), Struct_1(vec4<u32>(1u, 5748u, 16388u, 46114u))), Struct_2(vec3<f32>(467f, -854f, 1437f), vec3<u32>(28307u, 19539u, 0u), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 21085u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 3188u))), Struct_2(vec3<f32>(2023f, -450f, -1078f), vec3<u32>(1u, 15488u, 4294967295u), Struct_1(vec4<u32>(53643u, 1u, 24475u, 4294967295u)), Struct_1(vec4<u32>(30845u, 4294967295u, 0u, 22868u))), Struct_2(vec3<f32>(-1182f, -436f, 443f), vec3<u32>(4294967295u, 4294967295u, 74220u), Struct_1(vec4<u32>(17503u, 0u, 7645u, 4294967295u)), Struct_1(vec4<u32>(91519u, 1957u, 21208u, 48614u))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<bool> {
    global2 = array<Struct_2, 4>();
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(select(arg_0.b.x, 71099u, true), arg_0.c.a.x, ~arg_0.b.x, 4294967295u), ~(arg_1.a ^ vec4<u32>(72556u, u_input.b, arg_1.a.x, 71639u))), vec4<u32>(~abs(arg_0.b.x), ~(~4294967295u), _wgslsmith_dot_vec3_u32(select(arg_0.d.a.xwx, vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(false, false, true)), vec3<u32>(u_input.c.x, 1u, u_input.b)), ~arg_0.c.a.x)));
    let var_1 = true;
    let var_2 = firstTrailingBit(global0[_wgslsmith_index_u32(~max(_wgslsmith_dot_vec3_u32(~arg_0.b, firstTrailingBit(vec3<u32>(0u, 35745u, arg_0.b.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, 51932u), vec3<u32>(53090u, u_input.c.x, arg_0.b.x))), 9u)]);
    let var_3 = true;
    return !(!select(!(!vec4<bool>(false, var_3, var_3, true)), vec4<bool>(all(vec2<bool>(var_3, false)), all(vec4<bool>(false, var_1, var_1, false)), !var_3, false), true));
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 9>();
    global1 = array<vec3<i32>, 32>();
    global1 = array<vec3<i32>, 32>();
    global2 = array<Struct_2, 4>();
    var var_0 = !func_3(global2[_wgslsmith_index_u32(u_input.b, 4u)], Struct_1(~max(vec4<u32>(u_input.c.x, 1u, u_input.b, u_input.b), vec4<u32>(73615u, 31701u, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1820f, 361f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(630f, 1095f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 552f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1915f, 1523f) * vec2<f32>(1000f, 661f)))));
    return Struct_1(min(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c.x, 1u, 0u, u_input.c.x), vec4<u32>(0u, 0u, 1u, 35980u), true), ~vec4<u32>(0u, 46914u, u_input.b, u_input.b), firstLeadingBit(vec4<u32>(u_input.b, 94524u, 4294967295u, u_input.b))) & firstLeadingBit(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.c.x)), vec4<u32>(u_input.b, 2003u, _wgslsmith_mult_u32(u_input.c.x, u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 1u, u_input.b), vec4<u32>(18019u, u_input.c.x, 4899u, u_input.c.x)), abs(vec4<u32>(28044u, 17837u, 11581u, u_input.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = func_2();
    global1 = array<vec3<i32>, 32>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.x)), arg_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, -1000f, true)) + _wgslsmith_f_op_f32(-arg_1.a.x)), -653f)), select(~vec3<u32>(~var_0.a.x, 54168u, 61425u), arg_0.a.ywz, true), func_2(), Struct_1(abs(select(vec4<u32>(u_input.c.x, u_input.c.x, 1u, arg_1.c.a.x), arg_1.d.a, false)) << (~max(var_0.a, arg_1.c.a) % vec4<u32>(32u))));
    global2 = array<Struct_2, 4>();
    let var_2 = vec3<bool>(any(select(vec2<bool>(8789u >= u_input.b, func_3(Struct_2(var_1.a, vec3<u32>(38731u, arg_1.b.x, arg_1.d.a.x), Struct_1(vec4<u32>(0u, arg_1.b.x, var_1.c.a.x, 58762u)), var_1.c), arg_0, vec2<f32>(var_1.a.x, -759f)).x), vec2<bool>(true, true), any(vec4<bool>(false, false, false, true)) || false)), true, func_3(arg_1, Struct_1(~vec4<u32>(var_1.c.a.x, 4294967295u, arg_1.d.a.x, 8484u)), var_1.a.yy).x);
    return -2199i;
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = vec4<i32>(arg_2.x, _wgslsmith_div_i32(arg_2.x, select(~2147483647i, _wgslsmith_add_i32(15626i, -16776i), !all(vec2<bool>(true, false)))), _wgslsmith_dot_vec2_i32(select(~vec2<i32>(1i, -2147483647i), -u_input.a.wz, arg_0.x) << (vec2<u32>(_wgslsmith_mod_u32(var_0.a.x, var_0.a.x), u_input.c.x) % vec2<u32>(32u)), firstTrailingBit(min(max(vec2<i32>(0i, global0[_wgslsmith_index_u32(0u, 9u)]), vec2<i32>(u_input.a.x, arg_2.x)), vec2<i32>(-1i, 1i)))), u_input.a.x);
    let var_2 = ~(u_input.b | (countOneBits(abs(u_input.c.x)) | 57970u));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1503f)) - _wgslsmith_f_op_f32(arg_1 * arg_1))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))), -1485f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1224f - arg_1)), 1000f))));
    var var_4 = global2[_wgslsmith_index_u32(~(~(~(~select(var_0.a.x, var_0.a.x, true)))), 4u)];
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(_wgslsmith_sub_u32(~(~22691u), _wgslsmith_dot_vec3_u32(var_4.b, ~var_4.c.a.zxx)), _wgslsmith_mod_u32(0u, (1u << (var_2 % 32u)) | u_input.b), arg_0.x & true), ~(~countOneBits(1u))), 4u)];
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(1u, (_wgslsmith_div_u32(arg_3.x, 4294967295u) ^ (arg_2.c.a.x | 4294967295u)) << (4094u % 32u)) >= 51881u;
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.a.x, 11614u), arg_2.c.a.ww)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 5822u, arg_0, 1u), arg_1.a) >> (~arg_3.x % 32u), arg_3.x, arg_1.a.x));
    global1 = array<vec3<i32>, 32>();
    var var_2 = reverseBits(-16212i);
    var_0 = false;
    return func_5(vec4<bool>(select(-53721i <= global0[_wgslsmith_index_u32(~4294967295u, 9u)], all(vec3<bool>(false, true, false)), true), !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(sign(arg_2.a.x)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x) * _wgslsmith_f_op_f32(arg_2.a.x - 2269f)), all(vec3<bool>(true, true, true)) && true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_2.a.x, 494f)), _wgslsmith_f_op_f32(f32(-1f) * -1417f), true))), func_5(select(vec4<bool>(true, true, true, true), func_3(Struct_2(arg_2.a, vec3<u32>(4294967295u, 4294967295u, 0u), var_1, var_1), Struct_1(vec4<u32>(1u, 19875u, 24211u, 0u)), arg_2.a.yz), any(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(-func_5(vec4<bool>(false, true, false, false), arg_2.a.x, vec2<i32>(u_input.a.x, -29791i)).a.x), select(select(vec2<i32>(-8389i, 58417i), vec2<i32>(1i, -36878i), vec2<bool>(false, true)), -u_input.a.xy, vec2<bool>(true, true))).a.x)), vec2<i32>(8976i, 1i)).d;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 4u)];
    var var_1 = func_6(21363u, Struct_1(~(vec4<u32>(10918u, u_input.c.x, 1u, 0u) << ((var_0.c.a | var_0.d.a) % vec4<u32>(32u)))), func_5(!vec4<bool>(true, false, true, u_input.b > u_input.b), var_0.a.x, vec2<i32>(func_4(func_2(), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.b.x, 59968u, 20756u), 4u)], -u_input.a.x), -1i)), min(vec2<u32>(~(~0u), firstTrailingBit(~u_input.b)), vec2<u32>(reverseBits(reverseBits(u_input.b)), 1u)));
    global2 = array<Struct_2, 4>();
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(291f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-266f, arg_0)), -1679f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, var_0.a.x, 1199f, var_0.a.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-120f, var_2.x, 771f, -2400f))))))))));
    return ~abs(_wgslsmith_mult_u32(var_0.d.a.x, _wgslsmith_add_u32(0u, var_1.a.x))) ^ (11294u >> (min(61u, ~u_input.c.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 4>();
    var var_0 = Struct_2(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2489f + -940f)))), -228f), ~(vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), func_1(1000f)) >> (~firstLeadingBit(vec3<u32>(0u, 110594u, 1u)) % vec3<u32>(32u))), func_5(vec4<bool>(true && func_3(Struct_2(vec3<f32>(-1000f, 1067f, -754f), vec3<u32>(0u, u_input.b, 10793u), Struct_1(vec4<u32>(88443u, 7556u, u_input.b, 21319u)), Struct_1(vec4<u32>(6754u, 35112u, 0u, 68411u))), Struct_1(vec4<u32>(u_input.c.x, 54879u, 1u, 46424u)), vec2<f32>(208f, -362f)).x, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true)), ~u_input.a.x > global0[_wgslsmith_index_u32(1u, 9u)], -u_input.a.x == (-2147483647i ^ u_input.a.x)), _wgslsmith_f_op_f32(538f + 1343f), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], abs(2147483647i))).d, Struct_1(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(35369u, 8750u, u_input.b, u_input.b), vec4<u32>(103658u, u_input.b, u_input.b, u_input.c.x)))));
    let var_1 = var_0.c;
    let var_2 = func_3(func_5(!vec4<bool>(any(vec2<bool>(true, false)), true, true, all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1337f)), max(select(u_input.a.yx, u_input.a.yx, false), u_input.a.xx) << (func_5(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(-var_0.a.x), ~u_input.a.yx).c.a.yw % vec2<u32>(32u))), func_5(select(func_3(global2[_wgslsmith_index_u32(func_6(var_1.a.x, var_0.d, global2[_wgslsmith_index_u32(30939u, 4u)], u_input.c).a.x, 4u)], var_0.c, vec2<f32>(var_0.a.x, var_0.a.x)), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, false, true)), false, func_3(Struct_2(var_0.a, var_1.a.xyy, Struct_1(var_1.a), var_0.c), Struct_1(vec4<u32>(22337u, u_input.b, var_0.c.a.x, 4570u)), var_0.a.xx).x)), -796f, ~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-26618i, -1i), vec2<i32>(-54116i, u_input.a.x)), vec2<i32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(13591u, 9u)]))).d, vec2<f32>(_wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1615f)), _wgslsmith_f_op_f32(-1000f - var_0.a.x)))), var_0.a.x)).x;
    var var_3 = ~global0[_wgslsmith_index_u32(1u, 9u)];
    var var_4 = func_5(!vec4<bool>(_wgslsmith_div_f32(258f, 1000f) < var_0.a.x, true | all(vec3<bool>(true, var_2, var_2)), var_2, true), 760f, u_input.a.zy);
    var var_5 = func_5(vec4<bool>(var_2, !select(true, false, true), !select(1i < global0[_wgslsmith_index_u32(18904u, 9u)], any(vec2<bool>(var_2, var_2)), var_2 || true), -12490i <= (0i >> (select(var_1.a.x, u_input.c.x, true) % 32u))), -841f, -select(u_input.a.xy, u_input.a.wy, select(!vec2<bool>(var_2, var_2), vec2<bool>(true, true), select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_2), vec2<bool>(false, var_2)))));
    var var_6 = _wgslsmith_f_op_f32(-var_5.a.x);
    let var_7 = func_5(select(vec4<bool>(true, var_2 | all(vec4<bool>(var_2, true, false, var_2)), func_3(global2[_wgslsmith_index_u32(var_1.a.x, 4u)], func_2(), vec2<f32>(-1178f, -396f)).x, var_2), select(!select(vec4<bool>(var_2, true, true, var_2), vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(false, var_2, var_2, var_2)), !vec4<bool>(true, var_2, var_2, false), false), !all(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, var_2), false))), _wgslsmith_f_op_f32(461f + _wgslsmith_f_op_f32(f32(-1f) * -383f)), countOneBits(_wgslsmith_mod_vec2_i32(~u_input.a.zz, vec2<i32>(u_input.a.x, -global0[_wgslsmith_index_u32(18999u, 9u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.c.a, u_input.c.x | _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.b.x, 1u, var_0.d.a.x, 13090u) << (vec4<u32>(70648u, var_0.d.a.x, var_5.c.a.x, var_4.b.x) % vec4<u32>(32u))), ~(~var_0.d.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x * -427f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-348f)), func_5(func_3(Struct_2(vec3<f32>(908f, var_7.a.x, -448f), vec3<u32>(var_0.b.x, var_7.b.x, 54355u), var_0.d, Struct_1(var_1.a)), Struct_1(vec4<u32>(var_0.b.x, var_1.a.x, u_input.c.x, 38780u)), vec2<f32>(726f, -337f)), var_0.a.x, u_input.a.zy).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1052f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(var_5.a.x * var_0.a.x)))), firstTrailingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(39424u, 1u, 49139u, var_1.a.x)), var_5.c.a) | _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_1.a.x, 80589u)), _wgslsmith_sub_vec2_u32(var_0.d.a.yx, var_5.d.a.yw))));
}

