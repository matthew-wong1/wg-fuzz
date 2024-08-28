struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 39139i;

var<private> global1: Struct_1;

var<private> global2: vec2<u32> = vec2<u32>(871u, 4294967295u);

var<private> global3: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(i32(-2147483648), -21054i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 0i, -34944i), vec3<i32>(2147483647i, 6652i, i32(-2147483648)), vec3<i32>(0i, 1i, -1i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(16140i, 9430i, i32(-2147483648)), vec3<i32>(1i, 1i, -16982i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-1i, -37594i, 14574i), vec3<i32>(-70327i, 64961i, -36511i), vec3<i32>(-46466i, 1i, 145i), vec3<i32>(1i, -19752i, i32(-2147483648)), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(-64401i, 1i, i32(-2147483648)), vec3<i32>(-8485i, 59262i, -2788i), vec3<i32>(-59668i, 7452i, 34351i), vec3<i32>(19087i, 0i, 25805i), vec3<i32>(1i, 0i, 0i), vec3<i32>(1i, 15491i, 1i), vec3<i32>(16695i, 30179i, 17213i), vec3<i32>(21067i, -17620i, 0i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(1i, -92345i, -13089i), vec3<i32>(i32(-2147483648), -25278i, -35804i));

var<private> global4: u32 = 39337u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c), global1.c));
    global3 = array<vec3<i32>, 25>();
    return Struct_1(vec2<bool>(global1.a.x, global1.a.x), ~(~_wgslsmith_div_vec4_u32(~global1.b, ~vec4<u32>(global1.b.x, global2.x, 50921u, global1.b.x))), global1.c);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(select(select(global1.a, func_1(1190f, vec3<u32>(arg_0.b.x, u_input.d.x, 0u), global1.a).a, !global1.a.x), !select(arg_0.a, global1.a, arg_0.a.x), global1.a), global1.a, true), global1.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.x))), global1.c.x, -1106f))));
    let var_1 = all(vec4<bool>(arg_0.b.x < _wgslsmith_mod_u32(global2.x ^ 4294967295u, min(global1.b.x, 68732u)), true, 0i != abs(u_input.c.x), global1.a.x));
    let var_2 = max(~_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.c.x, 0i)), u_input.c.x), _wgslsmith_mod_i32(-u_input.b.x, 30034i));
    var var_3 = u_input.d;
    var var_4 = Struct_1(vec2<bool>(any(select(!vec3<bool>(var_0.a.x, true, false), !vec3<bool>(false, var_1, true), select(vec3<bool>(global1.a.x, true, var_0.a.x), vec3<bool>(true, false, global1.a.x), vec3<bool>(false, var_1, true)))), any(!(!vec4<bool>(var_0.a.x, true, var_1, false)))), vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global2.x, global1.b.x)) | firstTrailingBit(vec2<u32>(var_3.x, u_input.d.x)), var_0.b.ww), ~global2.x, global1.b.x, 7690u), var_0.c);
    return Struct_1(select(vec2<bool>(any(vec3<bool>(var_4.a.x, global1.a.x, true)), !func_1(var_0.c.x, vec3<u32>(2292u, arg_0.b.x, 647u), vec2<bool>(var_4.a.x, false)).a.x), !select(vec2<bool>(true, true), !var_4.a, !global1.a.x), vec2<bool>(global1.a.x, false)), _wgslsmith_mod_vec4_u32(abs(abs(var_0.b)), ~(~vec4<u32>(var_3.x, 4294967295u, 92171u, 1u))) | ~arg_0.b, global1.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    let var_0 = arg_0;
    global1 = Struct_1(select(arg_0.a, !select(!global1.a, func_3(var_0).a, vec2<bool>(true, arg_0.a.x)), var_0.a.x), ~(vec4<u32>(4256u, arg_0.b.x, arg_0.b.x, global2.x) >> (func_3(arg_0).b % vec4<u32>(32u))) ^ vec4<u32>(36201u, firstLeadingBit(global2.x), _wgslsmith_mult_u32(countOneBits(60360u), ~global1.b.x), min(_wgslsmith_add_u32(4294967295u, 0u), ~1u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, 141f)), _wgslsmith_f_op_vec3_f32(func_1(-262f, u_input.d, arg_0.a).c - vec3<f32>(arg_0.c.x, arg_0.c.x, 741f))), _wgslsmith_f_op_vec3_f32(select(arg_3, func_3(var_0).c, select(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0.a.x, var_0.a.x), var_0.a.x), vec3<bool>(arg_0.a.x, false, false), select(vec3<bool>(var_0.a.x, var_0.a.x, arg_0.a.x), vec3<bool>(false, false, arg_0.a.x), vec3<bool>(false, false, true))))))));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(u_input.b.zzx), -(global3[_wgslsmith_index_u32((global1.b.x & global1.b.x) ^ ~42262u, 25u)] << (u_input.d % vec3<u32>(32u))));
    let var_2 = vec4<bool>(all(!(!(!vec3<bool>(false, var_0.a.x, global1.a.x)))), false, true, any(global1.a));
    global0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, arg_1, _wgslsmith_div_i32(firstLeadingBit(var_1), abs(var_1))), vec3<i32>(-6466i, u_input.b.x, _wgslsmith_clamp_i32(-85097i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-11835i, u_input.b.x, arg_1, u_input.c.x)), select(u_input.a.x, 0i, arg_0.a.x)) ^ (u_input.b.x ^ -2147483647i)));
    return ~u_input.d.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_1.a.x;
    let var_1 = vec3<i32>(u_input.b.x, ~u_input.b.x << (_wgslsmith_add_u32(~u_input.d.x, u_input.d.x) % 32u), u_input.c.x);
    global2 = select(vec2<u32>(global2.x, u_input.d.x), ~reverseBits(vec2<u32>(1u, global2.x)), !global1.a);
    global2 = _wgslsmith_mod_vec2_u32(~vec2<u32>(global2.x, 10764u), vec2<u32>(func_4(func_3(arg_1), var_1.x, -1247f, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2146f, arg_1.c.x, arg_1.c.x)))) | ~_wgslsmith_mod_u32(4294967295u, arg_1.b.x), ~func_4(func_1(674f, arg_2.b.ywy, vec2<bool>(global1.a.x, true)), i32(-1i) * -17430i, arg_2.c.x, arg_1.c)));
    global2 = reverseBits(firstLeadingBit(vec2<u32>(~(~10296u), arg_1.b.x)));
    return any(!select(vec3<bool>(true, var_0, arg_2.a.x), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_2.a.x, global1.a.x, var_0), vec3<bool>(arg_2.a.x, true, var_0)), select(vec3<bool>(true, false, arg_2.a.x), vec3<bool>(true, true, false), var_0), any(vec4<bool>(global1.a.x, arg_2.a.x, arg_2.a.x, false))), select(!vec3<bool>(global1.a.x, arg_1.a.x, false), vec3<bool>(false, false, global1.a.x), true)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~(~u_input.d.xy);
    let var_1 = Struct_1(func_1(_wgslsmith_f_op_f32(700f + 1390f), ~u_input.d, vec2<bool>(all(select(vec4<bool>(false, false, true, global1.a.x), vec4<bool>(false, global1.a.x, true, false), global1.a.x)), any(global1.a))).a, ~select(~vec4<u32>(0u, 4294967295u, global2.x, arg_1.b.x), vec4<u32>(~global1.b.x, ~1u, 6469u | u_input.d.x, global2.x), select(!vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), !vec4<bool>(arg_1.a.x, global1.a.x, true, false), select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, false), vec4<bool>(global1.a.x, global1.a.x, false, arg_1.a.x), arg_1.a.x))), global1.c);
    var var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), abs(vec3<u32>(0u, arg_1.b.x >> (79100u % 32u), global1.b.x) | ~vec3<u32>(50924u, global1.b.x, 1u)), arg_1.a);
    global3 = array<vec3<i32>, 25>();
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~var_1.b.x), 1u), arg_1.b.yw);
    return Struct_1(vec2<bool>(func_2(global1.c.yx, Struct_1(vec2<bool>(arg_1.a.x, false), ~vec4<u32>(4294967295u, 47087u, 4294967295u, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1554f, -248f, var_2.c.x) + vec3<f32>(-354f, var_2.c.x, var_1.c.x))), func_1(arg_1.c.x, ~vec3<u32>(global1.b.x, 4294967295u, var_3.x), func_3(Struct_1(arg_1.a, vec4<u32>(global2.x, 7126u, global2.x, 101617u), arg_1.c)).a)), true), vec4<u32>(abs(var_2.b.x), var_2.b.x, 4294967295u, ~17797u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2074f), _wgslsmith_div_f32(-163f, _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(-870f - 768f))), _wgslsmith_f_op_f32(f32(-1f) * -201f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.c.x, ~vec3<u32>(countOneBits(~global2.x), firstTrailingBit(54414u), 44117u), !global1.a);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 1000f, -692f, -132f)))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(158f * global1.c.x))), 740f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + -191f)))));
    var var_1 = var_0.x;
    global4 = ~global1.b.x;
    global1 = func_5(min(select(u_input.a, u_input.a, func_2(_wgslsmith_f_op_vec2_f32(abs(global1.c.yy)), Struct_1(vec2<bool>(false, global1.a.x), vec4<u32>(1u, 1u, global1.b.x, 50064u), global1.c), Struct_1(global1.a, global1.b, vec3<f32>(var_0.x, global1.c.x, 1526f)))), u_input.c), Struct_1(func_3(func_3(func_3(Struct_1(global1.a, global1.b, global1.c)))).a, func_1(_wgslsmith_div_f32(global1.c.x, global1.c.x), vec3<u32>(global2.x, global2.x, global1.b.x), func_1(-394f, vec3<u32>(global1.b.x, 22809u, global1.b.x), vec2<bool>(false, global1.a.x)).a).b | ~global1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, global1.c.x, 1000f))));
    var var_2 = vec2<u32>(func_1(var_0.x, u_input.d, !(!vec2<bool>(global1.a.x, global1.a.x))).b.x, _wgslsmith_sub_u32(36757u, _wgslsmith_div_u32(global1.b.x, _wgslsmith_mult_u32(7062u, global2.x))));
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b.x, 1i, var_3.x, _wgslsmith_clamp_i32(var_3.x >> (global1.b.x % 32u), -8675i, 1i) >> (~func_5(vec2<i32>(1i, -2147483647i), Struct_1(global1.a, vec4<u32>(23386u, global1.b.x, 1u, 20825u), var_0.zxy)).b.x % 32u)), 4294967295u, u_input.b.zz, var_0);
}

