struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-44622i, 1i);

var<private> global1: array<Struct_4, 17>;

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), -61407i, -1i, 0i), vec4<i32>(47529i, 0i, 27320i, 16824i), vec4<i32>(0i, -55052i, -72724i, -5116i), vec4<i32>(18081i, -1i, 2147483647i, 2147483647i), vec4<i32>(-1i, -7280i, i32(-2147483648), 1i), vec4<i32>(-42180i, i32(-2147483648), -23486i, 1i), vec4<i32>(0i, -1i, -1i, -1756i), vec4<i32>(i32(-2147483648), -83851i, 66104i, -1i), vec4<i32>(-1i, -1i, 1i, 57961i), vec4<i32>(1i, 39576i, -36711i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(26749i, 1i, -1i, 2147483647i), vec4<i32>(-12245i, 1i, 1i, -20213i), vec4<i32>(2147483647i, 26475i, -1i, 5785i), vec4<i32>(0i, 0i, -86423i, 1i), vec4<i32>(-1i, i32(-2147483648), 0i, 47355i), vec4<i32>(i32(-2147483648), -61243i, 0i, -27129i), vec4<i32>(2147483647i, i32(-2147483648), -1i, -14324i), vec4<i32>(i32(-2147483648), 44380i, 5235i, 2147483647i), vec4<i32>(8560i, 26542i, 27837i, 27629i), vec4<i32>(-27559i, 1i, 1i, -1i), vec4<i32>(0i, 71086i, -22739i, 16948i), vec4<i32>(1i, 2147483647i, -1i, 12285i), vec4<i32>(9358i, -39025i, 0i, 4892i), vec4<i32>(10952i, i32(-2147483648), 2147483647i, 25551i), vec4<i32>(1i, 13573i, i32(-2147483648), i32(-2147483648)));

var<private> global3: Struct_4 = Struct_4(vec2<i32>(2147483647i, -1i), vec4<bool>(false, true, true, false), Struct_2(-454f, false, vec4<i32>(-1i, i32(-2147483648), -1i, i32(-2147483648)), 43643i, 0u), vec2<u32>(17741u, 91161u), vec4<i32>(1i, 26099i, 29232i, 0i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_5(global3.d.x, global3.b, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 24657i, arg_0.d, arg_0.c.x), global2[_wgslsmith_index_u32(arg_0.e & global3.d.x, 26u)]), -vec4<i32>(global0.x, -2147483647i, arg_0.c.x, global3.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1142f + 856f), global3.c.a)), arg_0.a)), true);
    global3 = Struct_4(-(~global3.a), var_0.b, Struct_2(var_0.c.b, -_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global3.a.x, global0.x), vec3<i32>(-26512i, global0.x, -10197i)) <= ((global3.c.c.x >> (var_0.a % 32u)) | -1i), -global2[_wgslsmith_index_u32(~(~arg_0.e), 26u)], 2147483647i, 0u), u_input.c, max(~select(-global2[_wgslsmith_index_u32(45155u, 26u)], firstTrailingBit(vec4<i32>(-3591i, u_input.b, global3.c.c.x, 89134i)), any(var_0.b.zz)), select(global2[_wgslsmith_index_u32(var_0.a, 26u)], _wgslsmith_div_vec4_i32(vec4<i32>(-42838i, 0i, u_input.b, -30185i), global2[_wgslsmith_index_u32(arg_0.e, 26u)]), select(var_0.b, global3.b, vec4<bool>(global3.c.b, true, global3.c.b, var_0.d)))));
    let var_1 = var_0;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~select(vec2<u32>(var_0.a, arg_0.e), vec2<u32>(u_input.a, 7995u), vec2<bool>(true, var_1.d))), ~(~(u_input.c ^ u_input.c)), _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(2461u, global3.d.x)), vec2<u32>(u_input.c.x, 0u))), u_input.c), 17u)];
    var var_3 = Struct_3(var_2.c, arg_0.c.zzw, var_2.c.a);
    return -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~u_input.b, 29832i, _wgslsmith_dot_vec2_i32(global3.c.c.yz, ~arg_0.c.xz)), ~arg_0.d);
}

fn func_2(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = global3.d.x >> (min(~_wgslsmith_mod_u32(u_input.c.x, global3.d.x) | ~13522u, ~abs(global3.d.x)) % 32u);
    global3 = Struct_4(vec2<i32>(2147483647i, global3.e.x), global3.b, global3.c, global3.d, vec4<i32>(_wgslsmith_sub_i32(1i, -1i), 826i, _wgslsmith_mod_i32(~func_3(global3.c), u_input.b << (_wgslsmith_mult_u32(1u, 0u) % 32u)), global0.x << (global3.c.e % 32u)));
    var var_1 = ~vec2<u32>(global3.d.x ^ 0u, reverseBits(~70015u) | ~global3.d.x);
    var var_2 = global3.c.e & 1u;
    let var_3 = true & !(!(_wgslsmith_f_op_f32(ceil(arg_0.x)) < global3.c.a));
    return ~(~abs(_wgslsmith_clamp_vec2_i32(global3.e.yx << (global3.d % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global0.x), global3.a), vec2<i32>(global0.x, global3.c.c.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = global3.c.a;
    let var_1 = _wgslsmith_add_u32(global3.c.e, ~(~(~(~84258u))));
    let var_2 = _wgslsmith_add_vec2_i32(func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global3.c.a), _wgslsmith_f_op_f32(-global3.c.a))))), (~global3.c.c.zy | (vec2<i32>(global3.a.x, global3.a.x) << ((vec2<u32>(72582u, 0u) & vec2<u32>(u_input.c.x, arg_0.x)) % vec2<u32>(32u)))) | (vec2<i32>(-1i) * -(global3.a >> (u_input.c % vec2<u32>(32u)))));
    global0 = vec2<i32>(-var_2.x, reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, global3.a.x), abs(vec3<i32>(global0.x, arg_1, arg_1)), _wgslsmith_div_vec3_i32(global3.e.yxz, global3.e.wxw)), -global3.e.yyw)));
    let var_3 = _wgslsmith_f_op_f32(-global3.c.a);
    return Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global3.c.a)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-939f - _wgslsmith_f_op_f32(sign(global3.c.a))), _wgslsmith_f_op_f32(step(global3.c.a, _wgslsmith_f_op_f32(abs(1000f)))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(select(abs(vec4<u32>(0u, 1u, 1u, global3.d.x)), vec4<u32>(1u, global3.d.x, 17346u, 67757u), !vec4<bool>(arg_0, arg_0, global3.c.b, arg_0)), (u_input.b ^ 30183i) & (i32(-1i) * -1i)).b), func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(global3.d.x), ~global3.d.x, 1u, ~u_input.c.x), vec4<u32>(58842u, ~global3.d.x, u_input.c.x, firstTrailingBit(u_input.a)), ~(~vec4<u32>(global3.c.e, 69920u, 27445u, global3.d.x))), -46284i).b);
    let var_1 = Struct_5(30185u, select(select(!select(vec4<bool>(true, true, global3.b.x, arg_0), vec4<bool>(false, arg_0, false, global3.b.x), vec4<bool>(false, global3.c.b, arg_0, true)), global3.b, true & !global3.b.x), !select(!vec4<bool>(false, true, true, arg_0), vec4<bool>(false, global3.b.x, global3.c.b, global3.b.x), global3.b), arg_0), Struct_1(-1i, -1290f), !((select(2364u, 4294967295u, arg_0) == u_input.c.x) & any(!global3.b.zy)));
    global1 = array<Struct_4, 17>();
    global3 = Struct_4(global3.c.c.zw, !vec4<bool>(var_1.b.x, true, !(!var_1.b.x), false), Struct_2(_wgslsmith_f_op_f32(-2390f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1395f) * _wgslsmith_f_op_f32(sign(369f)))), all(vec3<bool>(global3.b.x & true, global3.c.b, false)), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, -2147483647i, 8761i), global2[_wgslsmith_index_u32(1u, 26u)])), i32(-1i) * -(~1i), global3.d.x), ~min(vec2<u32>(~var_1.a, var_1.a), vec2<u32>(global3.c.e, var_1.a)), global2[_wgslsmith_index_u32(2716u, 26u)]);
    var var_2 = Struct_5(~(~reverseBits(4294967295u)), var_1.b, func_1(firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a, global3.d.x, 4294967295u, var_1.a), abs(vec4<u32>(20267u, 43355u, global3.c.e, global3.d.x)), ~vec4<u32>(var_1.a, 28010u, u_input.c.x, global3.d.x))), 2147483647i), arg_0);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))) - 577f) - 1f), arg_1.a <= 0i, reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(-7723i, global0.x, global0.x, 55948i) ^ vec4<i32>(0i, 4038i, u_input.b, 22588i), _wgslsmith_mult_vec4_i32(vec4<i32>(global3.e.x, -68248i, global0.x, 1i), vec4<i32>(var_2.c.a, 914i, -64147i, 2147483647i)))), u_input.b, ~4294967295u);
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = -global3.c.c.xyy;
    var var_1 = Struct_3(Struct_2(-823f, select(false, false, (2147483647i & u_input.b) > ~(-541i)), _wgslsmith_mult_vec4_i32(global3.e, arg_0.c), ~var_0.x, global3.d.x), _wgslsmith_div_vec3_i32(var_0, ~(-vec3<i32>(arg_0.d, -18366i, u_input.b))), -972f);
    global3 = global1[_wgslsmith_index_u32(max(0u, global3.c.e) | 1u, 17u)];
    let var_2 = global3.b.yyy;
    var var_3 = u_input.a;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(1556f + var_1.c))))), _wgslsmith_div_f32(func_4(!var_2.x, Struct_1(var_0.x, _wgslsmith_f_op_f32(3340f * -1286f))).a, var_1.a.a), _wgslsmith_f_op_f32(arg_0.a * -1129f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.c;
    var var_1 = u_input.a;
    let var_2 = vec2<bool>(all(global3.b.xy), 1u >= abs(max(73646u << (global3.c.e % 32u), ~u_input.c.x)));
    global0 = global3.e.xy ^ var_0.c.zw;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1955f * -1819f) + _wgslsmith_f_op_f32(-global3.c.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.a + var_0.a) + _wgslsmith_f_op_f32(1000f + global3.c.a)), _wgslsmith_f_op_f32(trunc(-597f)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(func_5(func_4(var_0.b, func_1(countOneBits(vec4<u32>(7703u, global3.c.e, global3.d.x, 1u) & vec4<u32>(17327u, u_input.c.x, var_0.e, var_0.e)), 1i))));
    global3 = Struct_4(vec2<i32>(global0.x, u_input.b), select(global3.b, select(!select(global3.b, vec4<bool>(true, var_2.x, true, false), var_0.b), select(global3.b, global3.b, false), select(global3.b, vec4<bool>(var_2.x, false, false, false), !global3.b)), select(vec4<bool>(global3.b.x && global3.c.b, var_0.b | global3.b.x, true, any(global3.b)), global3.b, countOneBits(0u) == global3.d.x)), global3.c, vec2<u32>(43614u, ~(var_0.e ^ 1u) ^ abs(1u)), vec4<i32>(global0.x, 0i, global3.e.x, reverseBits(var_0.c.x | func_2(vec2<f32>(var_0.a, global3.c.a)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-120f, var_0.a), _wgslsmith_f_op_f32(ceil(global3.c.a)))), -266f))), vec4<u32>(~max(0u, firstTrailingBit(u_input.a)), var_0.e, select(~max(53486u, 6060u), 1u, func_4(2584f > var_0.a, func_1(vec4<u32>(26808u, 1u, 43273u, 46968u), var_0.c.x)).b), 4294967295u));
}

