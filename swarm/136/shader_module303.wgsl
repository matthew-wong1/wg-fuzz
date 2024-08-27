struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 85095u), vec2<bool>(true, true)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 34576u), vec2<bool>(true, true)), Struct_1(vec4<u32>(0u, 8696u, 19507u, 32622u), vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<u32>(30523u, 1u, 59988u, 54956u), vec2<bool>(false, true)), Struct_1(vec4<u32>(73897u, 1u, 4294967295u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec4<u32>(29842u, 0u, 4380u, 20308u), vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<u32>(0u, 19276u, 36873u, 0u), vec2<bool>(false, false)), Struct_1(vec4<u32>(0u, 0u, 48477u, 1u), vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 0u, 39136u, 0u), vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<u32>(0u, 17485u, 1u, 27457u), vec2<bool>(false, false)), Struct_1(vec4<u32>(18873u, 4294967295u, 1u, 0u), vec2<bool>(false, false)), Struct_1(vec4<u32>(0u, 18499u, 21162u, 1u), vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<u32>(4294967295u, 46644u, 1u, 15881u), vec2<bool>(false, true)), Struct_1(vec4<u32>(1u, 75379u, 43230u, 16629u), vec2<bool>(false, true)), Struct_1(vec4<u32>(24330u, 0u, 4294967295u, 90621u), vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<u32>(18022u, 20712u, 106457u, 6609u), vec2<bool>(false, false)), Struct_1(vec4<u32>(12690u, 4294967295u, 1u, 0u), vec2<bool>(false, false)), Struct_1(vec4<u32>(5320u, 4294967295u, 0u, 83809u), vec2<bool>(false, false)), false), Struct_2(Struct_1(vec4<u32>(39259u, 4294967295u, 1u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<u32>(4425u, 4294967295u, 72090u, 0u), vec2<bool>(true, true)), Struct_1(vec4<u32>(0u, 4294967295u, 31228u, 47336u), vec2<bool>(true, true)), false), Struct_2(Struct_1(vec4<u32>(65149u, 57198u, 0u, 0u), vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 0u, 1u, 1814u), vec2<bool>(true, false)), Struct_1(vec4<u32>(4294967295u, 1u, 107357u, 23229u), vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<u32>(10105u, 1u, 0u, 22684u), vec2<bool>(true, true)), Struct_1(vec4<u32>(16428u, 37455u, 34267u, 10358u), vec2<bool>(false, false)), Struct_1(vec4<u32>(30909u, 24599u, 4294967295u, 1u), vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<u32>(12149u, 14610u, 4294967295u, 1u), vec2<bool>(false, true)), Struct_1(vec4<u32>(29832u, 0u, 4294967295u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 77437u), vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<u32>(81300u, 1u, 4294967295u, 0u), vec2<bool>(true, false)), Struct_1(vec4<u32>(4294967295u, 1u, 48115u, 6205u), vec2<bool>(false, false)), Struct_1(vec4<u32>(1u, 70614u, 0u, 4294967295u), vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<u32>(79583u, 33833u, 27872u, 1u), vec2<bool>(true, false)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<u32>(49956u, 1u, 54459u, 4294967295u), vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<u32>(4294967295u, 483u, 10905u, 13107u), vec2<bool>(false, false)), Struct_1(vec4<u32>(21863u, 4294967295u, 1u, 0u), vec2<bool>(true, true)), true), Struct_2(Struct_1(vec4<u32>(2954u, 69851u, 14329u, 55510u), vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 54308u, 4294967295u, 0u), vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 4294967295u, 25316u, 0u), vec2<bool>(false, true)), true));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec4<bool>;

var<private> global3: array<vec4<f32>, 12>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = 2147483647i;
    global1 = vec2<bool>(false, !(arg_0.x <= firstLeadingBit(arg_0.x)));
    var var_1 = Struct_2(Struct_1(max(~firstTrailingBit(u_input.c), ~(~u_input.c)), !global2.wx), Struct_1(vec4<u32>(~u_input.c.x ^ ~43903u, 0u, _wgslsmith_dot_vec2_u32(max(u_input.c.xx, u_input.c.xx), _wgslsmith_sub_vec2_u32(u_input.c.xy, vec2<u32>(1u, u_input.c.x))), u_input.c.x), global2.zx), Struct_1(~(~u_input.c) >> (vec4<u32>(u_input.a, u_input.b, u_input.b, reverseBits(u_input.a)) % vec4<u32>(32u)), global2.yx), ((firstLeadingBit(37601i) >= select(arg_0.x, arg_0.x, true)) & (~(-15601i) <= select(-1i, -71566i, false))) && false);
    var_1 = global0[_wgslsmith_index_u32(var_1.a.a.x, 14u)];
    let var_2 = vec4<i32>(arg_0.x, 22391i, -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.x, -13601i, arg_0.x), vec3<i32>(28967i, -2147483647i, 0i)), vec3<i32>(_wgslsmith_mult_i32(1i, 1i), arg_0.x & -2147483647i, -2147483647i)), ~_wgslsmith_div_i32(-62047i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(0i, arg_0.x, arg_0.x, -22277i)), i32(-1i) * -2147483647i)));
    return abs(_wgslsmith_dot_vec2_u32(var_1.c.a.zx, vec2<u32>(var_1.c.a.x, u_input.b)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    var var_0 = vec2<u32>(0u, ~func_3(vec2<i32>(1i, select(-3317i, 0i, true))));
    let var_1 = Struct_1(vec4<u32>(71050u, 25919u, firstTrailingBit(u_input.b), 11104u), !global2.wx);
    global2 = select(select(select(select(select(vec4<bool>(global1.x, false, true, true), vec4<bool>(false, false, var_1.b.x, false), vec4<bool>(arg_2, global1.x, false, global1.x)), select(vec4<bool>(true, global2.x, false, global1.x), vec4<bool>(true, true, false, global1.x), var_1.b.x), true), select(select(vec4<bool>(true, arg_2, var_1.b.x, true), vec4<bool>(arg_2, true, false, global2.x), vec4<bool>(global1.x, true, global1.x, false)), vec4<bool>(false, global2.x, global1.x, global1.x), global2.x), !select(vec4<bool>(false, global1.x, false, arg_2), vec4<bool>(true, true, var_1.b.x, false), vec4<bool>(var_1.b.x, false, true, true))), !select(vec4<bool>(false, arg_2, global2.x, false), vec4<bool>(var_1.b.x, arg_2, global2.x, arg_2), !vec4<bool>(global2.x, true, arg_2, false)), true), vec4<bool>(select(any(select(vec2<bool>(arg_2, false), global2.yy, global2.wx)), !(false & global2.x), any(!global2.wz)), true, true, true), !select(select(!vec4<bool>(global1.x, true, global2.x, false), vec4<bool>(global2.x, false, false, global2.x), select(vec4<bool>(false, var_1.b.x, var_1.b.x, false), vec4<bool>(var_1.b.x, arg_2, arg_2, true), true)), !vec4<bool>(false, global2.x, arg_2, false), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(341f, -2681f), vec2<f32>(-2206f, 650f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -761f)))))));
    var var_3 = !global2.zwy;
    return _wgslsmith_dot_vec2_i32(~min(vec2<i32>(countOneBits(0i), -22581i), min(vec2<i32>(1i, 1i), select(vec2<i32>(1i, -37137i), vec2<i32>(-2147483647i, 15533i), var_3.xx))), vec2<i32>(~_wgslsmith_mult_i32(reverseBits(26911i), -1i), ~(~firstLeadingBit(2147483647i))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> bool {
    global0 = array<Struct_2, 14>();
    global3 = array<vec4<f32>, 12>();
    let var_0 = _wgslsmith_mod_vec3_i32(~vec3<i32>(-60301i, func_2(arg_1.x >> (78268u % 32u), u_input.c.wy, false), arg_0.x), arg_0);
    var var_1 = global2.xx;
    global2 = vec4<bool>(var_1.x, select(false, select(_wgslsmith_div_i32(var_0.x, -2486i), 7532i, true) > (-var_0.x ^ ~var_0.x), global1.x), all(select(global2.wx, !vec2<bool>(var_1.x, false), false | !var_1.x)), false);
    return var_1.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(~(vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 15252u), ~2966u, u_input.b, 2965u >> (u_input.a % 32u)) ^ vec4<u32>(~1u, 83042u, ~u_input.a, countOneBits(u_input.c.x))), select(!(!vec2<bool>(global2.x, global1.x)), !vec2<bool>(arg_2, arg_2 && global1.x), !arg_2));
    global1 = global2.wx;
    let var_2 = 33341i;
    let var_3 = ~_wgslsmith_sub_vec2_u32(max(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), var_1.a.zw), 62900u), u_input.c.ww), vec2<u32>(36066u, ~_wgslsmith_dot_vec2_u32(var_1.a.zx, vec2<u32>(42767u, var_1.a.x))));
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global3 = array<vec4<f32>, 12>();
    let var_0 = func_4(~(-5939i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1285f, -560f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * -689f)))), arg_1.b.x);
    global1 = var_0.b;
    return StorageBuffer(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.c.zx) >> (abs(vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)), abs(u_input.c.wz) << (vec2<u32>(14966u, arg_1.a.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.c.xz, _wgslsmith_sub_vec2_u32(var_0.a.yy, vec2<u32>(u_input.b, var_0.a.x)))), _wgslsmith_div_vec2_u32(~vec2<u32>(29444u, u_input.a), ~vec2<u32>(var_0.a.x, var_0.a.x))), -167f, select(firstLeadingBit(-vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_vec4_i32(-(~vec4<i32>(-5394i, 8170i, -1i, -42156i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, 1i, -15322i) << (vec4<u32>(var_0.a.x, arg_1.a.x, 69991u, u_input.b) % vec4<u32>(32u)), -vec4<i32>(9902i, 2147483647i, 1i, 1i))), true), _wgslsmith_sub_vec2_u32(vec2<u32>(39920u, 4294967295u) ^ ~arg_1.a.yy, ~min(u_input.c.zw, vec2<u32>(15574u, arg_1.a.x))) >> (((firstLeadingBit(vec2<u32>(u_input.b, u_input.a)) ^ ~vec2<u32>(u_input.a, u_input.a)) & ((arg_1.a.yx >> (var_0.a.zy % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a.x, var_0.a.x), u_input.c.zx))) % vec2<u32>(32u)), reverseBits(min(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), arg_1.a.yz), arg_1.a.wx) & arg_1.a.wx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = ~(~u_input.c.xw);
    global3 = array<vec4<f32>, 12>();
    global0 = array<Struct_2, 14>();
    let var_2 = vec3<u32>(4294967295u, ~22559u, 12467u);
    let var_3 = select(_wgslsmith_mod_u32(var_1.x, var_1.x), countOneBits(abs(~28697u)) << (var_1.x % 32u), all(!global2.yww));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1292f + _wgslsmith_f_op_f32(2324f - 1f))), func_4(-13380i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 751f))), func_1(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(0i, -41009i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -1i, 43715i), vec3<i32>(52683i, 1i, 17133i))), var_2.zz)));
}

