struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 15> = array<bool, 15>(false, true, false, false, true, false, true, false, true, true, false, true, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    global2 = array<bool, 15>();
    let var_0 = select(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 75804u), global0[_wgslsmith_index_u32(19767u, 5u)]), global0[_wgslsmith_index_u32(1u, 5u)]) << ((_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], vec2<u32>(u_input.e, u_input.d)), ~global0[_wgslsmith_index_u32(24039u, 5u)]) | ~(~vec2<u32>(15063u, 37576u))) % vec2<u32>(32u)), reverseBits(global0[_wgslsmith_index_u32(abs(abs(u_input.d)), 5u)]), vec2<bool>(!(!global1.x && false), select(any(vec4<bool>(global1.x, false, true, true)), false, global1.x)));
    let var_1 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1395f)) - _wgslsmith_f_op_f32(-2384f + 2284f)), -708f, 1258f)), !select(select(select(vec4<bool>(global1.x, global1.x, true, global2[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(27879u, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)], false, global1.x), vec4<bool>(false, true, global2[_wgslsmith_index_u32(74644u, 15u)], false)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 15u)], global1.x, global2[_wgslsmith_index_u32(u_input.d, 15u)]), vec4<bool>(true, global1.x, global1.x, false), global2[_wgslsmith_index_u32(var_0.x, 15u)]), global1.x), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(global1.x, global2[_wgslsmith_index_u32(33799u, 15u)], global2[_wgslsmith_index_u32(52678u, 15u)], true)), true, global1.x, true)), vec3<u32>(select(~_wgslsmith_dot_vec2_u32(var_0, global0[_wgslsmith_index_u32(u_input.d, 5u)]), u_input.e, all(select(vec3<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.e, 15u)], global1.x), global1.zzy, global1.zxy))), countOneBits(var_0.x & 0u), u_input.d), Struct_1(vec3<f32>(1f, 1f, 1f)));
    global0 = array<vec2<u32>, 5>();
    let var_2 = global1.xzy;
    return select(vec2<bool>(true, global1.x), vec2<bool>(!global2[_wgslsmith_index_u32(4294967295u, 15u)], true || any(vec2<bool>(true, true))), select(vec2<bool>(true, !(!global1.x)), var_2.xx, all(vec4<bool>(global1.x, all(var_1.b.xzz), var_2.x, var_2.x))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    global2 = array<bool, 15>();
    var var_0 = -2147483647i >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.e, u_input.d, 3741u), ~vec4<u32>(4294967295u, 16684u, 53212u, 0u)), select(~min(vec4<u32>(u_input.e, 1u, 4294967295u, 1u), vec4<u32>(1u, 1u, 0u, u_input.e)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.e)), vec4<u32>(1872u, 76300u, u_input.e, 29384u), ~vec4<u32>(58687u, u_input.e, 0u, u_input.e)), !select(global1.x, global2[_wgslsmith_index_u32(7547u, 15u)], global2[_wgslsmith_index_u32(u_input.e, 15u)]))) % 32u);
    var var_1 = func_3(_wgslsmith_clamp_vec3_i32(u_input.a.xyz, u_input.a.xwx, u_input.a.zxy << (vec3<u32>(~u_input.d, _wgslsmith_div_u32(17207u, u_input.e), countOneBits(0u)) % vec3<u32>(32u))));
    var_0 = -(~(-1i));
    var_1 = select(func_3(vec3<i32>(1028i, firstLeadingBit(i32(-1i) * -26050i), 1i)), global1.wy, all(!global1.wwx));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zww)))), vec4<bool>(arg_0.x >= arg_0.x, true, global2[_wgslsmith_index_u32(u_input.e, 15u)] == var_1.x, true), _wgslsmith_clamp_vec3_u32(select(min(vec3<u32>(0u, 45613u, u_input.d), vec3<u32>(u_input.d, 23059u, 1u)), vec3<u32>(u_input.d, u_input.e, u_input.d), all(vec4<bool>(true, true, false, false))), ~vec3<u32>(4294967295u, 20550u, 4294967295u) >> (select(vec3<u32>(u_input.e, 1u, 67772u), vec3<u32>(u_input.e, 108707u, 4294967295u), vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global1.x, var_1.x)) % vec3<u32>(32u)), ~(~vec3<u32>(0u, 54135u, 50813u))) << (~(~(vec3<u32>(34742u, 1u, 16463u) & vec3<u32>(u_input.d, 0u, u_input.e))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(arg_0.yyw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 342f, 868f) - arg_0.wzy), true))))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = func_2(vec4<f32>(1f, 1f, 1f, 1f));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), 871f, _wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(-var_0.a.a.x))), vec4<f32>(var_0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 511f) + _wgslsmith_f_op_f32(-var_0.d.a.x)), -457f, _wgslsmith_div_f32(-382f, _wgslsmith_f_op_f32(min(1114f, -814f)))), var_0.b))).a;
    var var_2 = u_input.a;
    let var_3 = vec4<i32>(~(-1i), _wgslsmith_div_i32(2147483647i, -44649i), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, 0i), reverseBits(select(var_2.x, -15886i, any(vec2<bool>(false, var_0.b.x))))), countOneBits(11486i));
    let var_4 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(var_0.d.a.x + var_0.a.a.x), var_1.a.x, _wgslsmith_f_op_f32(round(1069f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1910f, var_0.a.a.x, -863f, -1841f), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))))).a, !var_0.b, vec3<u32>(13965u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 48289u, 51508u, u_input.e), reverseBits(vec4<u32>(9193u, u_input.d, 0u, 80043u))), vec4<u32>(17834u, u_input.d, 1u, var_0.c.x >> (var_0.c.x % 32u))), min(~u_input.d, var_0.c.x & _wgslsmith_clamp_u32(u_input.e, 11975u, 40238u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(697f, -1259f, var_1.a.x))))));
    return func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(958f, var_1.a.x, 901f, var_4.d.a.x) + vec4<f32>(169f, var_4.a.a.x, var_4.d.a.x, -901f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, var_4.a.a.x, 123f, var_0.d.a.x), vec4<f32>(var_4.d.a.x, -843f, 525f, -962f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, var_1.a.x, var_1.a.x, var_1.a.x))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(max(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e, u_input.e, u_input.d), vec3<u32>(0u, _wgslsmith_clamp_u32(34744u, u_input.e, u_input.d), ~u_input.e)), countOneBits(~(~vec3<u32>(u_input.e, u_input.d, 58415u)))));
    global1 = vec4<bool>(!global1.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(66994u, 4294967295u, u_input.e, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.e, 1u), vec4<u32>(u_input.d, 1u, u_input.e, 15498u))) != (_wgslsmith_div_u32(u_input.e, func_2(vec4<f32>(-774f, var_0.a.x, 1000f, var_0.a.x)).c.x) | ~(~u_input.e)), any(!(!global1.yxx)), all(select(global1.xwz, select(select(vec3<bool>(false, global1.x, false), global1.yxy, vec3<bool>(false, true, true)), select(global1.yzy, global1.zyx, global2[_wgslsmith_index_u32(40591u, 15u)]), func_2(vec4<f32>(-1132f, -1055f, -657f, var_0.a.x)).b.xww), all(vec4<bool>(global2[_wgslsmith_index_u32(9942u, 15u)], false, false, global2[_wgslsmith_index_u32(u_input.e, 15u)])))));
    var var_1 = reverseBits(select(vec3<u32>(~u_input.d, 12596u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 33372u), global0[_wgslsmith_index_u32(55552u, 5u)])), select(vec3<u32>(u_input.e, u_input.e, 20472u) >> (vec3<u32>(4294967295u, u_input.e, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.d, u_input.d, u_input.d), global1.xyz), true)) ^ ~(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.e, 10196u), vec3<u32>(u_input.d, u_input.d, u_input.e)) ^ min(vec3<u32>(u_input.d, u_input.e, u_input.e) | vec3<u32>(u_input.e, 0u, u_input.d), ~vec3<u32>(u_input.e, 1u, 1u)));
    global0 = array<vec2<u32>, 5>();
    var var_2 = min(max(u_input.a.xzx, _wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -30325i, u_input.a.x), u_input.a.wxw)), vec3<i32>(select(-2147483647i, 37980i, global2[_wgslsmith_index_u32(var_1.x, 15u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), u_input.a.zy), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -39427i, -1i), u_input.a.zzz)))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.c, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.c)), _wgslsmith_mult_vec3_i32(u_input.a.wyz, -vec3<i32>(-2473i, u_input.a.x, 2147483647i))), -_wgslsmith_clamp_vec3_i32(u_input.a.zwx, u_input.a.yzy, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.c), vec3<i32>(0i, u_input.c, u_input.a.x)))));
    global2 = array<bool, 15>();
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_add_u32(u_input.e, countOneBits(4294967295u)) & _wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(u_input.e, 5u)], vec2<u32>(25086u, 49008u)), max(_wgslsmith_mod_u32(u_input.d, u_input.e), ~u_input.d) >> (4294967295u % 32u)), 4294967295u);
}

