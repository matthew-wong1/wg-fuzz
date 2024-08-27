struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(0i, -3028i), vec2<i32>(51744i, i32(-2147483648)), vec2<i32>(-28652i, 2147483647i), vec2<i32>(46083i, 2147483647i), vec2<i32>(18314i, 0i), vec2<i32>(19693i, 2147483647i), vec2<i32>(0i, -79240i), vec2<i32>(i32(-2147483648), 31767i), vec2<i32>(44899i, -57483i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(39447i, -1i), vec2<i32>(-23024i, -50540i), vec2<i32>(-9491i, -16633i), vec2<i32>(2147483647i, -44522i), vec2<i32>(-57606i, -1i), vec2<i32>(-44221i, 0i), vec2<i32>(2147483647i, 46345i), vec2<i32>(i32(-2147483648), -41143i), vec2<i32>(i32(-2147483648), 26670i), vec2<i32>(2147483647i, 10595i), vec2<i32>(38263i, -25296i), vec2<i32>(-18697i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 9812i), vec2<i32>(2147483647i, -1i), vec2<i32>(-25678i, i32(-2147483648)), vec2<i32>(4439i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), 41290i), vec2<i32>(2147483647i, -17648i), vec2<i32>(-1i, 0i), vec2<i32>(-19130i, 37526i), vec2<i32>(-19612i, 1i));

var<private> global1: array<Struct_2, 1>;

var<private> global2: vec2<f32> = vec2<f32>(333f, -1000f);

var<private> global3: Struct_3;

var<private> global4: array<vec3<f32>, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec2<i32> {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(18840u, 32u)] & -(~firstLeadingBit(u_input.d.xx)), vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))) != _wgslsmith_f_op_f32(-global2.x), global3.b.x), select(~(~vec2<u32>(global3.c.x, 26340u) & reverseBits(vec2<u32>(1281u, 0u))), _wgslsmith_sub_vec2_u32(~abs(u_input.b), ~vec2<u32>(3629u, global3.c.x)), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global2.x) * vec2<f32>(arg_0, -1639f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1054f, 224f)))), global3.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.x, arg_0))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_1.x) * vec2<f32>(-547f, global2.x)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -365f);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -1000f))), 638f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2074f, global2.x), vec2<f32>(-262f, arg_0))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-134f, global2.x)))))), select(select(global3.b, vec2<bool>(var_0.b.x, false), var_1.x > -226f), !vec2<bool>(var_0.b.x, false), var_0.b.x))));
    return -reverseBits(var_0.a);
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global2.x))))));
    global1 = array<Struct_2, 1>();
    global4 = array<vec3<f32>, 32>();
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(-612f, 894f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, 947f)))))))));
    var var_0 = Struct_3(func_3(global2.x), select(select(vec2<bool>(!global3.b.x, true), vec2<bool>(false, all(vec2<bool>(global3.b.x, global3.b.x))), !global3.b), vec2<bool>(any(vec4<bool>(true, true, true, global3.b.x)), global3.b.x), global3.b.x), ~firstLeadingBit(vec2<u32>(28262u, max(arg_0.x, 0u))));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(444f, global2.x))), 249f), _wgslsmith_f_op_f32(2230f + -1000f), global2.x, -1000f)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global3.b.x;
    let var_1 = Struct_4(arg_2, Struct_1(u_input.c.xxy, u_input.a.x, u_input.a.yxy, _wgslsmith_f_op_vec4_f32(func_2(~vec2<u32>(arg_0, global3.c.x) >> (vec2<u32>(u_input.c.x, 60722u) % vec2<u32>(32u)))).x), Struct_3(vec2<i32>(~(-arg_2.c.c.x), global3.a.x), select(!(!global3.b), !(!vec2<bool>(true, global3.b.x)), !global3.b.x), _wgslsmith_mult_vec2_u32(u_input.c.yw, u_input.b)), global3.b.x, Struct_1(u_input.c.wzx, ((-1i >> (global3.c.x % 32u)) >> (_wgslsmith_mod_u32(u_input.b.x, 12420u) % 32u)) << (1u % 32u), firstLeadingBit(u_input.d), arg_1.x));
    var var_2 = _wgslsmith_sub_u32(1u, firstTrailingBit(~0u << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 35818u, global3.c.x), vec3<u32>(0u, global3.c.x, 4294967295u)), 24640u) % 32u)));
    var var_3 = var_1;
    var_2 = 1u;
    return var_1.a.d;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: i32) -> u32 {
    var var_0 = -899f;
    var var_1 = func_4(32646u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 885f, global2.x, -678f) - vec4<f32>(global2.x, -1562f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(func_2(global3.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -1501f) * vec4<f32>(global2.x, global2.x, -550f, global2.x)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1435f, 449f, -825f, -684f)))), global3.b.x)), Struct_2(vec4<i32>(1i, 0i, reverseBits(i32(-1i) * -21184i), -2147483647i), select(u_input.a & abs(vec4<i32>(-10295i, arg_1.x, u_input.d.x, -2147483647i)), u_input.a, true), Struct_1(~vec3<u32>(u_input.b.x, arg_0.x, 0u), global3.a.x, select(vec3<i32>(0i, 0i, -2147483647i), arg_1.wwz, vec3<bool>(false, global3.b.x, global3.b.x)) ^ firstTrailingBit(vec3<i32>(arg_2, global3.a.x, arg_2)), 888f), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.c.x, 1u, 5957u), u_input.c.wyz), _wgslsmith_mod_i32(-1i & u_input.d.x, u_input.a.x), -arg_1.zyz & reverseBits(vec3<i32>(-1i, 2147483647i, arg_2)), _wgslsmith_f_op_f32(trunc(global2.x)))));
    var var_2 = u_input.a.x;
    let var_3 = Struct_2(~(~u_input.a ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.d.x, var_1.b, 0i), vec4<i32>(-52913i, u_input.d.x, u_input.a.x, arg_1.x))) << (vec4<u32>(global3.c.x | _wgslsmith_clamp_u32(0u, arg_0.x, arg_0.x), 4294967295u, u_input.b.x, arg_0.x) % vec4<u32>(32u)), ~arg_1, Struct_1(vec3<u32>(select(1u, 1u, global3.b.x), arg_0.x | ~6131u, 4298u ^ arg_0.x), ~(-_wgslsmith_clamp_i32(0i, 1i, -1i)), reverseBits(_wgslsmith_div_vec3_i32(~u_input.a.yxy, firstLeadingBit(vec3<i32>(6439i, arg_2, var_1.c.x)))), -182f), Struct_1(~((u_input.c.ywz >> (arg_0 % vec3<u32>(32u))) ^ (u_input.c.ywx | vec3<u32>(1u, 11736u, 1u))), func_4(arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(131f, 791f, var_1.d, -1000f))), global1[_wgslsmith_index_u32(global3.c.x, 1u)]).b, firstLeadingBit(~var_1.c), var_1.d));
    global4 = array<vec3<f32>, 32>();
    return arg_0.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = ~arg_1.a.x;
    var var_1 = func_4(~firstTrailingBit(global3.c.x) | reverseBits(abs(_wgslsmith_mult_u32(1u, global3.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-793f, 105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d * arg_1.d) - -219f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(min(arg_1.d, -257f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -561f, arg_1.d) - vec4<f32>(-727f, global2.x, arg_1.d, -168f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(843f, arg_1.d, 738f, global2.x))) + vec4<f32>(global2.x, 164f, 570f, 197f)))), global1[_wgslsmith_index_u32(4294967295u, 1u)]).c;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(var_2.a.x, 32u)]) - vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(-global2.x), var_2.d))));
    let var_4 = 40303i;
    return global1[_wgslsmith_index_u32(9283u, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.c << (_wgslsmith_mult_vec4_u32(vec4<u32>(~global3.c.x, ~4294967295u, global3.c.x, ~u_input.b.x), vec4<u32>(~4294967295u, global3.c.x, u_input.c.x, func_1(u_input.c.wyy, u_input.a, u_input.a.x))) % vec4<u32>(32u)), func_4(~44775u, vec4<f32>(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(trunc(global2.x))), -679f, -194f, -1287f), global1[_wgslsmith_index_u32(30486u, 1u)]), u_input.b);
    let var_1 = ~(1i | u_input.d.x);
    global3 = Struct_3(vec2<i32>(40690i, var_1), !select(global3.b, global3.b, vec2<bool>(all(vec3<bool>(global3.b.x, true, global3.b.x)), var_0.c.d >= 1000f)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.a.x, 4294967295u), ~vec2<u32>(var_0.c.a.x, 19809u), vec2<u32>(var_0.d.a.x, 62533u))));
    var var_2 = select(select(global3.b, global3.b, !select(vec2<bool>(true, true), vec2<bool>(global3.b.x, false), select(global3.b, vec2<bool>(global3.b.x, global3.b.x), false))), global3.b, global3.b.x);
    var var_3 = func_4(~4294967295u, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.d, _wgslsmith_f_op_f32(abs(833f)), -286f, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), 1099f, _wgslsmith_f_op_f32(ceil(-982f)), global2.x))), func_5(~u_input.c, Struct_1(vec3<u32>(~global3.c.x, ~global3.c.x, 19680u), _wgslsmith_div_i32(var_0.c.c.x, global3.a.x) << ((1u & u_input.b.x) % 32u), -(~var_0.b.wwx), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~(~(vec2<u32>(14923u, var_0.c.a.x) >> (global3.c % vec2<u32>(32u))))));
    let var_4 = vec3<bool>(!all(select(!vec2<bool>(true, var_2.x), !global3.b, true)), _wgslsmith_f_op_f32(-global2.x) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-330f * _wgslsmith_f_op_f32(var_0.d.d + var_0.d.d)))), global2.x < _wgslsmith_f_op_f32(max(var_0.d.d, var_3.d)));
    let var_5 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.a.x, u_input.b.x), 32u)]));
}

