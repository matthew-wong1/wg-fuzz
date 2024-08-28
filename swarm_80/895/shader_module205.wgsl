struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(1u, 1u), vec2<u32>(32989u, 0u), vec2<u32>(6731u, 63116u), vec2<u32>(62417u, 82297u), vec2<u32>(12230u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(84752u, 25988u), vec2<u32>(1u, 0u), vec2<u32>(10019u, 26798u), vec2<u32>(9451u, 65894u), vec2<u32>(9158u, 12269u), vec2<u32>(1u, 47013u), vec2<u32>(0u, 0u), vec2<u32>(0u, 41830u), vec2<u32>(0u, 1u), vec2<u32>(19091u, 4294967295u), vec2<u32>(4294967295u, 12386u), vec2<u32>(1u, 4294967295u), vec2<u32>(38120u, 53124u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 46403u), vec2<u32>(23547u, 2121u), vec2<u32>(4294967295u, 1u), vec2<u32>(42844u, 11763u), vec2<u32>(4294967295u, 1u), vec2<u32>(52717u, 56591u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(53638u, 5083u), vec2<u32>(43899u, 1u), vec2<u32>(29452u, 55018u));

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global3: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    let var_0 = !(!global2.zxw);
    global0 = firstTrailingBit(u_input.c) | firstTrailingBit(59120u);
    global0 = 10352u << (~4294967295u % 32u);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1066f, -103f, 205f), vec3<f32>(422f, 444f, 607f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1592f, 1263f, -3237f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-963f, -1650f, -1171f))))))), vec2<bool>(true, any(select(global2.wy, var_0.yx, false && global2.x))), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(0u, 74407u)), vec2<u32>(_wgslsmith_mod_u32(4294967295u ^ arg_0, u_input.c), 21057u)));
    var var_2 = Struct_5(Struct_4(any(vec3<bool>(true, true, true)), select(!vec2<bool>(global2.x, false), select(select(vec2<bool>(arg_1.x, global2.x), vec2<bool>(global2.x, var_1.b.x), vec2<bool>(false, false)), !vec2<bool>(false, arg_1.x), -46640i < u_input.a.x), any(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true), Struct_1(abs(vec2<u32>(10644u, u_input.c)))), Struct_4(arg_1.x, !(!vec2<bool>(var_0.x, var_1.b.x)), select(select(select(vec3<bool>(global2.x, var_1.b.x, var_1.b.x), var_0, arg_1), var_0, !var_0), select(vec3<bool>(false, var_0.x, true), vec3<bool>(arg_1.x, false, false), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_1.b.x, false, false), global2.xwx)), select(!vec3<bool>(false, global2.x, true), !vec3<bool>(false, arg_1.x, true), any(global2.zzw))), Struct_1(min(vec2<u32>(34901u, var_1.c.x), var_1.c) << (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))), Struct_1(_wgslsmith_mult_vec2_u32(select(~var_1.c, ~var_1.c, var_0.zz), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, u_input.c), global1[_wgslsmith_index_u32(arg_0, 32u)] >> (var_1.c % vec2<u32>(32u))))), Struct_4(var_0.x, vec2<bool>(any(var_0.yz), all(vec2<bool>(true, false))), !select(select(vec3<bool>(arg_1.x, true, true), arg_1, arg_1), !vec3<bool>(arg_1.x, var_0.x, false), var_1.b.x), Struct_1(~var_1.c)));
    return 1f;
}

fn func_2(arg_0: f32) -> i32 {
    global2 = vec4<bool>(global2.x, any(select(!select(global2.ywz, vec3<bool>(global2.x, true, global2.x), global2.yyx), select(!global2.xwy, global2.zyw, global2.wxy), firstTrailingBit(29225i) == (u_input.b & u_input.d.x))), _wgslsmith_f_op_f32(func_3(u_input.c, !(!global2.zzw))) <= arg_0, global2.x);
    global0 = _wgslsmith_div_u32(~(~(~u_input.c)), 4486u);
    var var_0 = any(select(vec4<bool>(!(arg_0 <= arg_0), true, all(select(vec3<bool>(false, global2.x, global2.x), global2.xzz, global2.yxx)), true), vec4<bool>(true || global2.x, global2.x, true, true), vec4<bool>(global2.x, global2.x, any(select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, true, true, false), vec4<bool>(false, global2.x, global2.x, global2.x))), global2.x)));
    global1 = array<vec2<u32>, 32>();
    var_0 = !(!any(select(!vec4<bool>(false, global2.x, true, global2.x), !vec4<bool>(global2.x, true, true, true), global2.x || global2.x)));
    return 1i >> (firstLeadingBit(~u_input.c | _wgslsmith_add_u32(u_input.c, abs(u_input.c))) % 32u);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> vec4<bool> {
    global2 = !(!select(!(!vec4<bool>(global2.x, false, global2.x, global2.x)), !(!vec4<bool>(global2.x, true, global2.x, global2.x)), all(vec4<bool>(global2.x, global2.x, false, true))));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-285f))));
    global2 = vec4<bool>(true, any(select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(!vec4<bool>(global2.x, true, true, false), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, false, global2.x, global2.x), global2.x), false), false)), !all(!vec4<bool>(false, false, global2.x, true)), global2.x);
    global1 = array<vec2<u32>, 32>();
    global0 = u_input.c;
    return select(!(!vec4<bool>(any(vec3<bool>(true, global2.x, false)), any(vec3<bool>(global2.x, global2.x, global2.x)), global2.x, true)), select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), vec4<bool>(true, true, !global2.x == select(global2.x, global2.x, global2.x), true), true), select(vec4<bool>(true, global2.x, select(global2.x | true, -2147483647i <= u_input.d.x, false), any(!vec2<bool>(false, global2.x))), !(!(!vec4<bool>(true, global2.x, global2.x, false))), any(!(!vec4<bool>(global2.x, global2.x, global2.x, false)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> Struct_5 {
    var var_0 = arg_0;
    global1 = array<vec2<u32>, 32>();
    global2 = select(vec4<bool>(true, true, arg_3, false), !select(func_4(func_2(1445f), 1i, arg_1.yz), !vec4<bool>(arg_2, arg_3, false, arg_3), false), select(vec4<bool>(any(select(vec3<bool>(global2.x, true, true), vec3<bool>(true, false, arg_3), arg_3)), all(global2.ywy) | global2.x, false, false), vec4<bool>(true, !(true & arg_2), 1i >= _wgslsmith_div_i32(arg_1.x, u_input.a.x), !all(global2.xxx)), all(!(!vec4<bool>(arg_3, arg_2, arg_3, false)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1329f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(701f)) - _wgslsmith_f_op_f32(ceil(1329f))), _wgslsmith_f_op_f32(f32(-1f) * -192f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-852f, -608f, -1000f))))), !vec2<bool>(all(vec3<bool>(arg_3, false, false)), true), vec2<u32>((~1u & ~arg_0.a.x) | _wgslsmith_dot_vec2_u32(~var_0.a, select(arg_0.a, vec2<u32>(4294967295u, arg_0.a.x), arg_3)), 72410u));
    let var_2 = arg_0;
    return Struct_5(Struct_4(!(!(var_1.b.x || global2.x)), select(func_4(~arg_1.x, select(u_input.b, 1i, false), vec2<i32>(arg_1.x, -2147483647i)).yw, func_4(-35684i, -13883i, ~arg_1.xz).xy, select(arg_3, true, func_4(u_input.d.x, -2147483647i, arg_1.zy).x)), !(!global2.zwx), var_2), Struct_4(firstLeadingBit(-arg_1.x) >= arg_1.x, !var_1.b, select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_3, true, true), vec3<bool>(true, false, false)), var_2), Struct_1(max(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), var_1.c), ~vec2<u32>(var_1.c.x, var_1.c.x)), _wgslsmith_div_vec2_u32(~global1[_wgslsmith_index_u32(var_1.c.x, 32u)], firstLeadingBit(vec2<u32>(0u, 1u))))), Struct_4(false, vec2<bool>(!global2.x | true, any(func_4(-2147483647i, u_input.a.x, vec2<i32>(37941i, arg_1.x)))), global2.xyy, Struct_1(select(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.a.x), vec2<u32>(var_2.a.x, 86510u)), vec2<u32>(1u, 1u), vec2<bool>(true, true)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool, arg_3: Struct_5) -> bool {
    global0 = _wgslsmith_mult_u32(arg_1.d.a.x, arg_1.d.a.x >> (arg_1.d.a.x % 32u)) | 1u;
    global0 = u_input.c;
    return arg_3.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(346f, -1132f, 1669f, -1000f), vec4<f32>(991f, 814f, 230f, 868f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, 365f, -392f) - vec4<f32>(1733f, -423f, 1810f, 734f)))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1017f)), -1108f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -424f))), 209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-373f + 1233f) - 959f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -433f, 952f, -401f) * vec4<f32>(-646f, 917f, -233f, -652f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-907f, -1447f, -1248f, -1781f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1578f, -371f, -2221f, 872f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, -1290f, 422f, 438f))))))));
    global2 = !vec4<bool>(false, !func_5(Struct_1(global1[_wgslsmith_index_u32(u_input.c, 32u)]), Struct_4(true, global2.zw, vec3<bool>(global2.x, false, true), Struct_1(global1[_wgslsmith_index_u32(u_input.c, 32u)])), true, func_1(Struct_1(vec2<u32>(u_input.c, u_input.c)), vec4<i32>(-1i, u_input.d.x, -2147483647i, -12448i), global2.x, true)), !global2.x, global2.x || !(!global2.x));
    let var_1 = func_1(func_1(Struct_1(func_1(func_1(Struct_1(global1[_wgslsmith_index_u32(0u, 32u)]), vec4<i32>(-5611i, 1i, 36491i, 5292i), false, true).a.d, vec4<i32>(u_input.b, u_input.a.x, u_input.d.x, u_input.a.x), any(vec4<bool>(false, false, global2.x, global2.x)), all(vec4<bool>(global2.x, true, global2.x, global2.x))).b.d.a), ~vec4<i32>(abs(u_input.d.x), reverseBits(0i), reverseBits(u_input.b), u_input.a.x), true, (-2147483647i & u_input.d.x) != -39671i).c, ~(~(vec4<i32>(-25503i, -1i, u_input.d.x, -1i) & _wgslsmith_sub_vec4_i32(vec4<i32>(-12473i, -1i, 0i, -2147483647i), vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.b)))), all(!vec4<bool>(true, !global2.x, !global2.x, -30697i >= u_input.d.x)), true).b;
    var var_2 = vec3<bool>(true, -6391i > _wgslsmith_clamp_i32(u_input.a.x, firstLeadingBit(countOneBits(u_input.d.x)), func_2(_wgslsmith_f_op_f32(-var_0.x))), global2.x);
    global2 = vec4<bool>(func_1(func_1(Struct_1(vec2<u32>(148u, 37568u)), max(vec4<i32>(u_input.d.x, -71990i, -48873i, -2147483647i), vec4<i32>(u_input.d.x, 20152i, -2147483647i, u_input.a.x)), any(func_1(var_1.d, vec4<i32>(u_input.b, u_input.d.x, 20011i, 2147483647i), true, var_1.c.x).a.c.xz), var_2.x).a.d, vec4<i32>(_wgslsmith_div_i32(u_input.d.x, abs(22307i)), -(i32(-1i) * -3807i), -14793i, u_input.a.x), true, !(!global2.x) | true).b.a, var_1.c.x, var_1.b.x, var_2.x);
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.c, var_1.d.a.x ^ var_1.d.a.x), reverseBits(_wgslsmith_mult_u32(firstTrailingBit(u_input.c) ^ (1u << (var_1.d.a.x % 32u)), 73215u)));
    let var_4 = _wgslsmith_div_u32(u_input.c, select(4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, var_1.d.a.x), vec3<u32>(var_1.d.a.x, 4294967295u, 16021u) >> (vec3<u32>(u_input.c, var_3, u_input.c) % vec3<u32>(32u))), 50363u & firstLeadingBit(_wgslsmith_clamp_u32(var_1.d.a.x, u_input.c, var_1.d.a.x)), false));
    let var_5 = func_1(func_1(var_1.d, max(vec4<i32>(0i, ~19537i, _wgslsmith_dot_vec4_i32(vec4<i32>(40428i, u_input.d.x, 16035i, u_input.d.x), vec4<i32>(-2147483647i, u_input.d.x, u_input.b, u_input.d.x)), ~u_input.d.x), abs(vec4<i32>(1i, u_input.d.x, u_input.a.x, 2147483647i) << (vec4<u32>(u_input.c, var_4, u_input.c, 1u) % vec4<u32>(32u)))), false, false).c, min(abs(-(vec4<i32>(-44036i, 0i, 23703i, u_input.d.x) & vec4<i32>(u_input.d.x, -2147483647i, u_input.a.x, u_input.a.x))), reverseBits(select(-vec4<i32>(-2147483647i, u_input.d.x, u_input.a.x, u_input.a.x), vec4<i32>(-61119i, u_input.b, -1i, -2147483647i) | vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b), true))), false, true).d;
    var var_6 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), countOneBits(u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, u_input.a.x)), u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(u_input.b, u_input.b, u_input.d.x) ^ u_input.d), select(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.b, 1322i, u_input.a.x), vec3<bool>(global2.x, false, var_5.c.x)) | u_input.d)), abs(max(select(var_1.d.a.x, 1u, var_1.a), 1u)), -5436i);
}

