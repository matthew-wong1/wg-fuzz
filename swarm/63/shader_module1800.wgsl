struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(37816i, 11533i), vec2<i32>(i32(-2147483648), -49345i), vec2<i32>(40943i, -60090i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-2584i, 11649i), vec2<i32>(26395i, -13709i), vec2<i32>(2147483647i, -1i));

var<private> global1: vec3<f32> = vec3<f32>(964f, 1595f, 192f);

var<private> global2: Struct_2;

var<private> global3: array<u32, 9>;

var<private> global4: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<bool>(true, false), vec2<bool>(false, true), Struct_1(vec4<i32>(20838i, -1i, 20255i, -18512i), vec2<u32>(39762u, 1u), vec4<bool>(true, true, true, true)), 6997i, vec3<u32>(21381u, 0u, 1u)), Struct_2(vec2<bool>(true, false), vec2<bool>(true, true), Struct_1(vec4<i32>(-1i, 0i, 4460i, 14917i), vec2<u32>(2866u, 30261u), vec4<bool>(false, false, true, true)), -48892i, vec3<u32>(4294967295u, 7449u, 1u)), Struct_2(vec2<bool>(true, true), vec2<bool>(false, false), Struct_1(vec4<i32>(23541i, -1i, -33i, 21247i), vec2<u32>(4294967295u, 48195u), vec4<bool>(false, true, true, false)), 43069i, vec3<u32>(62024u, 4294967295u, 1u)), Struct_2(vec2<bool>(false, false), vec2<bool>(false, true), Struct_1(vec4<i32>(1i, 1i, 3389i, 27320i), vec2<u32>(27662u, 4294967295u), vec4<bool>(false, true, true, false)), 1259i, vec3<u32>(15894u, 102971u, 4294967295u)), Struct_2(vec2<bool>(true, false), vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -13437i), vec2<u32>(1u, 0u), vec4<bool>(true, false, false, false)), 0i, vec3<u32>(1u, 4294967295u, 19136u)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1() -> Struct_1 {
    let var_0 = global2.c.c.zyx;
    let var_1 = global4[_wgslsmith_index_u32(~u_input.a, 5u)];
    var var_2 = Struct_1(global2.c.a, global2.c.b, !vec4<bool>(var_0.x, any(vec3<bool>(var_0.x, global2.c.c.x, false)), true, global2.c.c.x));
    var var_3 = ~(~(~_wgslsmith_dot_vec3_i32(-var_1.c.a.xwy, global2.c.a.xww)));
    return global2.c;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec3<f32> {
    global3 = array<u32, 9>();
    var var_0 = Struct_1(reverseBits(global2.c.a << (vec4<u32>(firstTrailingBit(4294967295u), global2.e.x, u_input.a | 1u, 1u) % vec4<u32>(32u))), ~func_1().b, select(!select(func_1().c, global2.c.c, global2.c.c), vec4<bool>(true, global2.c.c.x, !any(global2.a), arg_0.x), global2.b.x));
    let var_1 = min(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(54498u, u_input.a, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 9u)], 0u)), global2.e), vec3<u32>(~4294967295u, min(func_1().b.x, 90407u), global2.e.x), select(_wgslsmith_mult_vec3_u32(global2.e, global2.e), global2.e, var_0.c.wzy) << (vec3<u32>(_wgslsmith_mult_u32(u_input.a, global2.e.x), _wgslsmith_dot_vec2_u32(global2.e.xz, vec2<u32>(5876u, global2.c.b.x)), 30114u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~select(~vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<u32>(global3[_wgslsmith_index_u32(0u, 9u)], 1u, 34701u), !var_0.c.x), ~min(countOneBits(vec3<u32>(4718u, 4294967295u, 4294967295u)), global2.e)));
    let var_2 = 773f;
    let var_3 = var_0.c.x;
    return vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-542f, var_2)), _wgslsmith_f_op_f32(-var_2));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -530f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 492f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, global1.x) - vec3<f32>(global1.x, global1.x, -1323f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1847f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 314f, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(320f, -307f)), _wgslsmith_f_op_f32(-346f + global1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1177f * arg_1)))))));
    global1 = _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(!select(global2.c.c.x == true, true, !global2.b.x), any(global2.a), global2.b.x), ~global2.c.a.xww));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, arg_1))))));
    global2 = Struct_2(arg_0.zz, !(!arg_0.xz), Struct_1(vec4<i32>(_wgslsmith_sub_i32(2147483647i, arg_2.x) & 19235i, 2253i, abs(0i), max(-54858i, ~arg_3.x)), vec2<u32>(global2.c.b.x, select(~13469u, _wgslsmith_dot_vec3_u32(global2.e, global2.e), any(global2.a))), vec4<bool>(false, false, global2.b.x, true)), countOneBits(~5598i), ~global2.e);
    global2 = Struct_2(select(arg_0.zy, !select(vec2<bool>(true, true), vec2<bool>(global2.c.c.x, arg_0.x), all(global2.a)), vec2<bool>(any(vec2<bool>(true, false)), !(u_input.a == global2.e.x))), select(select(select(select(arg_0.yx, global2.b, vec2<bool>(false, global2.a.x)), vec2<bool>(arg_0.x, arg_0.x), true), vec2<bool>(global2.c.c.x, !arg_0.x), !all(vec3<bool>(arg_0.x, global2.c.c.x, true))), select(!vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_1 != global1.x, arg_0.x), global2.c.c.zx), global2.a.x), Struct_1(global2.c.a, vec2<u32>(global3[_wgslsmith_index_u32(~7439u, 9u)], _wgslsmith_sub_u32(5162u, global3[_wgslsmith_index_u32(u_input.a, 9u)])) ^ ~vec2<u32>(u_input.a, u_input.a), select(!global2.c.c, !(!global2.c.c), vec4<bool>(true, global2.a.x, true, global2.b.x))), 2147483647i, global2.e);
    return Struct_2(func_1().c.yx, !select(!select(vec2<bool>(global2.b.x, true), global2.b, arg_0.x), arg_0.yx, any(func_1().c)), Struct_1(_wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.x, global2.d, global2.c.a.x, 28631i), vec4<i32>(arg_3.x, 4148i, arg_2.x, global2.c.a.x), vec4<i32>(global2.c.a.x, 972i, global2.d, 1i)), max(-vec4<i32>(arg_3.x, arg_2.x, 307i, 0i), abs(global2.c.a))), reverseBits(global2.c.b), vec4<bool>(_wgslsmith_f_op_f32(min(1000f, var_0.x)) == _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(arg_0.x, global2.b.x, false), vec3<i32>(arg_2.x, global2.c.a.x, 0i))).x, !func_1().c.x, select(true, func_1().c.x, arg_0.x), !(52068u >= global3[_wgslsmith_index_u32(0u, 9u)]))), 2979i, ~global2.e);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = vec3<bool>(func_1().c.x, any(vec3<bool>(true, true, global2.a.x)), false);
    global2 = arg_1;
    var var_1 = 23496u;
    let var_2 = func_2(global2.c.c.xwx, -988f, select(func_1().a.xz, vec2<i32>(reverseBits(_wgslsmith_clamp_i32(-28010i, 2147483647i, 1i)), 10545i), vec2<bool>(any(func_2(vec3<bool>(false, false, var_0.x), global1.x, vec2<i32>(32455i, 0i), arg_2).c.c), var_0.x)), countOneBits(_wgslsmith_mult_vec3_i32(arg_2, _wgslsmith_mod_vec3_i32(arg_2, vec3<i32>(-23891i, arg_1.d, -52770i)) ^ select(vec3<i32>(global2.d, 15172i, global2.c.a.x), arg_2, arg_1.b.x)))).c;
    var var_3 = func_1();
    return !vec2<bool>(any(arg_1.c.c), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.c.xzx;
    let var_1 = func_1();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) * _wgslsmith_f_op_f32(-354f - _wgslsmith_div_f32(-336f, -1490f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-1190f - 884f)), -381f)));
    var var_3 = func_1();
    global2 = Struct_2(select(select(!(!var_0.zz), !vec2<bool>(var_3.c.x, global2.a.x), func_4(vec4<u32>(0u, var_3.b.x, 11579u, var_1.b.x) >> (vec4<u32>(44356u, 0u, 18558u, 50551u) % vec4<u32>(32u)), func_2(var_1.c.ywx, global1.x, global0[_wgslsmith_index_u32(61337u, 8u)], global2.c.a.xwz), global2.c.a.yzy)), select(!func_4(vec4<u32>(4294967295u, var_3.b.x, var_3.b.x, u_input.a), global4[_wgslsmith_index_u32(28324u, 5u)], var_1.a.yyx), vec2<bool>(var_0.x, all(var_1.c)), func_1().c.x), var_0.x != true), !var_3.c.xw, global2.c, _wgslsmith_dot_vec2_i32(abs(var_1.a.xw), ~global2.c.a.yx), ~(_wgslsmith_div_vec3_u32(global2.e, vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], u_input.a, u_input.a)) | func_2(!vec3<bool>(global2.c.c.x, true, var_1.c.x), _wgslsmith_f_op_f32(max(-967f, 711f)), ~vec2<i32>(-21227i, var_1.a.x), vec3<i32>(-35184i, global2.c.a.x, -30589i)).e));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~39276u));
}

