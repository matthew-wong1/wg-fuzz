struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, 10668i, i32(-2147483648));

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true));

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(0i, Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -20176i, -17364i, -40682i), vec4<u32>(27674u, 24904u, 82824u, 4294967295u), vec3<i32>(0i, 2147483647i, 2147483647i)), vec2<u32>(0u, 4294967295u), 0u, false), Struct_2(2665i, Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 54506i, 0i, -17831i), vec4<u32>(56140u, 1u, 3471u, 1u), vec3<i32>(i32(-2147483648), 2147483647i, -40993i)), vec2<u32>(19784u, 0u), 0u, false), Struct_2(1i, Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 2147483647i, 1i, 2147483647i), vec4<u32>(0u, 55306u, 0u, 15266u), vec3<i32>(0i, i32(-2147483648), -9959i)), vec2<u32>(23464u, 68512u), 86235u, false), Struct_2(63245i, Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 41137i, 2147483647i, 0i), vec4<u32>(0u, 35111u, 26147u, 1u), vec3<i32>(61921i, 11288i, 21397i)), vec2<u32>(45483u, 4294967295u), 1u, true), Struct_2(i32(-2147483648), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, -48096i, -1i, -10581i), vec4<u32>(13765u, 6514u, 21197u, 19541u), vec3<i32>(22560i, -1i, 50286i)), vec2<u32>(4294967295u, 4294967295u), 4294967295u, true), Struct_2(2147483647i, Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 24544i), vec4<u32>(60526u, 4294967295u, 9753u, 0u), vec3<i32>(55402i, -1i, 26700i)), vec2<u32>(8976u, 0u), 0u, true), Struct_2(0i, Struct_1(vec2<bool>(false, false), vec4<i32>(1i, 2147483647i, -36805i, 24170i), vec4<u32>(0u, 16602u, 1666u, 53243u), vec3<i32>(2147483647i, 5608i, 2147483647i)), vec2<u32>(1u, 41058u), 16646u, false), Struct_2(-32791i, Struct_1(vec2<bool>(false, true), vec4<i32>(-37685i, -1i, 2147483647i, i32(-2147483648)), vec4<u32>(20266u, 27918u, 0u, 0u), vec3<i32>(1086i, -1i, 2329i)), vec2<u32>(38543u, 1u), 106662u, true), Struct_2(-24913i, Struct_1(vec2<bool>(false, true), vec4<i32>(-3165i, i32(-2147483648), -3365i, -57459i), vec4<u32>(11965u, 1u, 18299u, 72588u), vec3<i32>(-1i, 10559i, 22944i)), vec2<u32>(12988u, 66173u), 0u, true), Struct_2(33982i, Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 0i, 2147483647i, i32(-2147483648)), vec4<u32>(1u, 22649u, 1u, 61581u), vec3<i32>(29263i, 2147483647i, 32559i)), vec2<u32>(1u, 4294967295u), 4294967295u, true), Struct_2(-1i, Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, -54777i, 2147483647i, -1i), vec4<u32>(0u, 55977u, 27460u, 112491u), vec3<i32>(26794i, -7087i, 2788i)), vec2<u32>(80386u, 4294967295u), 17458u, true), Struct_2(2147483647i, Struct_1(vec2<bool>(true, false), vec4<i32>(-10894i, -6652i, 2147483647i, 537i), vec4<u32>(1u, 1u, 1u, 1u), vec3<i32>(12882i, -37704i, -40612i)), vec2<u32>(25305u, 1u), 4294967295u, true), Struct_2(1i, Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, i32(-2147483648), -36451i, 1i), vec4<u32>(4294967295u, 4294967295u, 22588u, 4294967295u), vec3<i32>(0i, -4588i, 10527i)), vec2<u32>(1u, 49478u), 84776u, true), Struct_2(1i, Struct_1(vec2<bool>(false, false), vec4<i32>(5947i, -4669i, 5193i, 25415i), vec4<u32>(43412u, 56318u, 1u, 4294967295u), vec3<i32>(1i, -4188i, 0i)), vec2<u32>(18425u, 69235u), 4294967295u, false));

var<private> global4: array<vec3<i32>, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    global1 = arg_1;
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1057f, 2040f, -1549f, 1741f)))))), vec4<f32>(-850f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(405f, -846f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(194f, _wgslsmith_f_op_f32(abs(1068f)))), 649f)), -447f)));
    let var_1 = global1.b | max(~global1.b, firstTrailingBit(vec4<i32>(0i, global1.d.x, 2653i, 0i) << (u_input.b % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(-657f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1108f)), _wgslsmith_f_op_f32(var_0.x - 1000f)))), _wgslsmith_f_op_f32(min(var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yww)))));
    global2 = array<vec4<bool>, 5>();
    return _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b.x, u_input.b.x) << (~u_input.b.wz % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(arg_1.c.x << (u_input.b.x % 32u), arg_1.c.x))) ^ reverseBits(u_input.b.wy);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_mod_i32(u_input.c, u_input.a), Struct_1(vec2<bool>(!arg_0.e & true, global1.a.x), vec4<i32>(-19049i, 1i, 0i, -1i), ~global1.c, arg_0.b.b.wyw), _wgslsmith_sub_vec2_u32(global1.c.yz >> (~func_3(u_input.a, Struct_1(arg_0.b.a, global1.b, u_input.b, vec3<i32>(u_input.c, u_input.c, -1i))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(min(u_input.b.zw, _wgslsmith_mult_vec2_u32(global1.c.zw, vec2<u32>(4294967295u, arg_0.b.c.x))), ~(~arg_0.b.c.yw))), 17046u, !global1.a.x);
    var var_1 = 0i;
    global0 = ~(-arg_0.b.b ^ vec4<i32>(11289i, select(arg_0.b.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -1i, -25799i), vec3<i32>(global1.b.x, global1.d.x, -1i)), true), var_0.a, -1i));
    var var_2 = min(_wgslsmith_sub_vec3_i32(arg_0.b.b.zxx, max(vec3<i32>(min(-2147483647i, 0i), -24475i, _wgslsmith_div_i32(u_input.a, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a, -5491i, -27424i) ^ vec3<i32>(global0.x, global0.x, -47796i), _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, var_0.b.d.x, global1.d.x), global1.d)))), global4[_wgslsmith_index_u32(~var_0.c.x, 20u)]);
    let var_3 = !select(global2[_wgslsmith_index_u32(0u, 5u)], !(!select(vec4<bool>(global1.a.x, false, false, global1.a.x), vec4<bool>(false, global1.a.x, var_0.e, global1.a.x), global2[_wgslsmith_index_u32(0u, 5u)])), true);
    return global3[_wgslsmith_index_u32(~48160u, 14u)];
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: bool) -> vec2<u32> {
    global2 = array<vec4<bool>, 5>();
    let var_0 = func_2(global3[_wgslsmith_index_u32(arg_2.a.x, 14u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + arg_0))), arg_0)));
    global4 = array<vec3<i32>, 20>();
    global2 = array<vec4<bool>, 5>();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -1293f))), _wgslsmith_f_op_f32(-497f * _wgslsmith_f_op_f32(519f - -950f)), _wgslsmith_f_op_f32(-546f * -751f), _wgslsmith_f_op_f32(f32(-1f) * -571f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-331f, -119f, 1182f, 1442f) - vec4<f32>(-1234f, -2738f, -1423f, 602f))), vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = ~(-1i);
    let var_2 = _wgslsmith_div_vec3_i32(global4[_wgslsmith_index_u32(~u_input.b.x, 20u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(func_1(-1442f, global1.c, Struct_3(u_input.b.zw, Struct_1(vec2<bool>(global1.a.x, global1.a.x), global1.b, u_input.b, global1.b.xww), 65966u, vec2<bool>(true, true), vec2<i32>(-41900i, global1.b.x)), global1.a.x), vec2<u32>(0u, global1.c.x)), _wgslsmith_add_u32(select(0u, u_input.b.x, false), 1u)), vec2<u32>(_wgslsmith_mult_u32(u_input.b.x ^ 0u, firstTrailingBit(1u)), ~(~u_input.b.x))), 20u)]);
    let var_3 = 1i;
    global0 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(func_2(func_2(global3[_wgslsmith_index_u32(global1.c.x, 14u)])).b.b, min(countOneBits(global1.b) | global1.b, firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, var_2.x, global0.x, 4278i), vec4<i32>(-2147483647i, 2147483647i, 13756i, u_input.a)))), !(!vec4<bool>(global1.a.x, false, false, false))), -min(-14198i, _wgslsmith_dot_vec4_i32(vec4<i32>(3512i, global1.b.x, global1.d.x, 2147483647i) ^ global1.b, global1.b)), _wgslsmith_f_op_f32(-434f + -931f));
}

