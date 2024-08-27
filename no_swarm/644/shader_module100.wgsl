struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 12560u, 5381u, 4294967295u), vec4<u32>(109593u, 46436u, 57734u, 4294967295u), vec4<u32>(1u, 4294967295u, 15709u, 4294967295u), vec4<u32>(30340u, 64087u, 1u, 40328u), vec4<u32>(14071u, 4294967295u, 85044u, 7823u), vec4<u32>(87632u, 10544u, 4294967295u, 0u), vec4<u32>(2917u, 2907u, 43381u, 53546u), vec4<u32>(4294967295u, 1u, 28251u, 4294967295u), vec4<u32>(0u, 14215u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 15798u, 0u), vec4<u32>(69783u, 47718u, 1u, 4294967295u), vec4<u32>(25255u, 5795u, 38076u, 0u), vec4<u32>(0u, 7331u, 1u, 1u), vec4<u32>(14992u, 26452u, 4294967295u, 32434u), vec4<u32>(1u, 4294967295u, 69902u, 38063u), vec4<u32>(50798u, 24930u, 0u, 0u), vec4<u32>(0u, 1768u, 18194u, 38311u), vec4<u32>(53453u, 4294967295u, 1u, 1u), vec4<u32>(30530u, 4294967295u, 34681u, 14494u), vec4<u32>(4294967295u, 13983u, 74361u, 4294967295u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(1u, 9579u, 0u, 17341u), vec4<u32>(80574u, 0u, 0u, 0u), vec4<u32>(0u, 49230u, 1u, 35321u), vec4<u32>(25811u, 0u, 4294967295u, 0u), vec4<u32>(1u, 7700u, 0u, 29356u), vec4<u32>(57784u, 4294967295u, 0u, 41095u), vec4<u32>(75564u, 12553u, 0u, 0u));

var<private> global1: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global0 = array<vec4<u32>, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 1000f));
    let var_1 = _wgslsmith_add_u32(1u | min(min(abs(arg_0.d.x), arg_0.d.x), ~_wgslsmith_mult_u32(59305u, 0u)), arg_0.e);
    global0 = array<vec4<u32>, 28>();
    var var_2 = arg_0;
    return vec2<bool>(true, var_2.a);
}

fn func_2() -> vec2<u32> {
    let var_0 = -u_input.a.x;
    var var_1 = 1u;
    global1 = all(!select(!func_3(Struct_2(true, vec2<f32>(-989f, -1000f), 36479i, vec2<u32>(0u, 26832u), 1u)), vec2<bool>(true, true), true));
    var var_2 = Struct_1(~_wgslsmith_sub_u32(~31739u, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(613f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1226f)), _wgslsmith_f_op_f32(step(1304f, 114f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f - -250f) * _wgslsmith_f_op_f32(913f - 466f)), _wgslsmith_f_op_f32(f32(-1f) * -2107f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1811f, 2033f) - vec2<f32>(288f, -448f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2484f, 714f) - vec2<f32>(-185f, 503f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-185f, 2704f) + vec2<f32>(-405f, 2105f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-437f, -1429f))))))))), ~(~select(vec2<u32>(16623u, 61438u), vec2<u32>(1u, 1u), vec2<bool>(true, true))), all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true), vec4<bool>(any(vec3<bool>(false, true, true)), func_3(Struct_2(true, vec2<f32>(-961f, 257f), u_input.a.x, vec2<u32>(41976u, 0u), 0u)).x, true, false))));
    var_2 = Struct_1(_wgslsmith_clamp_u32(~var_2.d.x, 4294967295u & firstTrailingBit(1317u), reverseBits(4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_2.b.x - var_2.c.x), -2255f))) + vec2<f32>(967f, -504f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-344f, 1324f), var_2.b), var_2.b)), select(vec2<bool>(var_2.e, var_2.e), !vec2<bool>(false, var_2.e), !var_2.e))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -178f))))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.d.x, 0u), vec2<u32>(abs(reverseBits(var_2.a)), reverseBits(~var_2.d.x))), !var_2.e);
    return firstTrailingBit(var_2.d);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = arg_0;
    global1 = all(select(vec2<bool>(true, true), select(select(select(arg_1, vec2<bool>(arg_1.x, false), arg_1.x), vec2<bool>(true, arg_1.x), arg_0 >= arg_0), vec2<bool>(true, true), !(arg_1.x | arg_1.x)), select(select(vec2<bool>(true, false), select(arg_1, vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, false)), vec2<bool>(true, true)), arg_1, vec2<bool>(true, true))));
    var var_1 = Struct_3(~((vec2<u32>(1u, 1u) & func_2()) >> (max(_wgslsmith_add_vec2_u32(vec2<u32>(51311u, 0u), vec2<u32>(63518u, 30629u)), countOneBits(vec2<u32>(22115u, 0u))) % vec2<u32>(32u))), select(vec3<bool>(all(vec4<bool>(false, arg_1.x, arg_1.x, true)), true, !(arg_1.x && true)), select(select(select(vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, false, false), arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x)), !(!vec3<bool>(false, false, arg_1.x)), all(select(arg_1, arg_1, arg_1.x))), !select(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_1.x), vec3<bool>(false, arg_1.x, true)), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, false), arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, false))), Struct_2(all(select(!vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x), select(vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(true, true, false, false), true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 1534f))))), select(_wgslsmith_sub_i32(min(17143i, -60984i), _wgslsmith_sub_i32(14394i, u_input.a.x)), u_input.a.x, all(select(vec4<bool>(true, arg_1.x, false, false), vec4<bool>(true, arg_1.x, arg_1.x, false), true))), func_2(), ~1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20195u), ~vec2<u32>(1652u, 0u)), 4294967295u), reverseBits(28105u)));
    let var_2 = min(_wgslsmith_mult_i32(-1i, var_1.c.c), var_1.c.c);
    global0 = array<vec4<u32>, 28>();
    return Struct_3(reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), var_1.a), vec2<u32>(var_1.d, var_1.a.x) | vec2<u32>(36837u, var_1.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.x, var_1.d), vec2<u32>(4294967295u, 44173u)))), vec3<bool>(true, true, true), Struct_2(!any(var_1.b), vec2<f32>(257f, var_1.c.b.x), u_input.a.x, _wgslsmith_add_vec2_u32(var_1.a, _wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.a.x, 18596u), ~vec2<u32>(3434u, var_1.c.d.x))), ~abs(4294967295u)), 60917u >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-1000f, vec2<bool>((any(vec3<bool>(true, false, false)) | (u_input.a.x == -2147483647i)) || !any(vec3<bool>(false, true, true)), abs(firstTrailingBit(55323u)) != ~(~4294967295u)));
    let var_1 = global0[_wgslsmith_index_u32(select(13260u, ~_wgslsmith_mult_u32(var_0.a.x, 60498u), !var_0.c.a) << (max(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, 0u), var_0.c.d), 1u), firstTrailingBit(var_0.a.x)) % 32u), 28u)];
    global0 = array<vec4<u32>, 28>();
    var var_2 = Struct_2(var_0.c.a, vec2<f32>(884f, 773f), var_0.c.c, _wgslsmith_mult_vec2_u32(var_1.wz, abs(~(~var_1.yw))), _wgslsmith_mult_u32(4294967295u, ~(~var_1.x)));
    var var_3 = Struct_2(false, _wgslsmith_f_op_vec2_f32(-var_2.b), var_0.c.c, ~var_2.d, 1u);
    var var_4 = Struct_3(select(~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 54537u), vec2<u32>(var_3.e, var_1.x), var_0.a), vec2<u32>(var_0.d, 0u) | vec2<u32>(var_2.e, 0u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(var_2.d), min(var_1.ww, var_2.d)) ^ _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(668u, 4294967295u), vec2<u32>(1u, 47752u)), var_0.c.d), !(!vec2<bool>(var_0.b.x, true))), select(select(vec3<bool>(func_1(var_0.c.b.x, var_0.b.zz).c.a, all(vec4<bool>(true, var_2.a, var_3.a, var_0.b.x)), true), select(var_0.b, vec3<bool>(true, true, var_2.a), vec3<bool>(var_2.a, var_2.a, var_0.b.x)), true), select(vec3<bool>(true, var_0.c.a, var_0.c.c > var_0.c.c), vec3<bool>(!var_0.c.a, var_2.a & var_0.c.a, true), true), var_0.b), var_0.c, var_0.c.d.x | (select(4294967295u, ~43313u, all(var_0.b)) << (~_wgslsmith_sub_u32(18356u, 913u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~25671u, 28u)] | ~select(firstLeadingBit(vec4<u32>(177u, 5293u, 0u, 33073u)), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 28u)], 53024u != var_0.c.d.x), 11374u & ~var_0.a.x, ~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, ~u_input.a), -select(u_input.a, vec4<i32>(11914i, -2147483647i, u_input.a.x, u_input.a.x), var_3.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_4.c.b, vec2<f32>(var_0.c.b.x, var_0.c.b.x), !vec2<bool>(var_0.b.x, false))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.b.x, var_2.b.x)))))));
}

