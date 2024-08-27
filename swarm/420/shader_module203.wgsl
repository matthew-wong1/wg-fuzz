struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: bool;

var<private> global2: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits(u_input.a), ~0u), arg_1.c.c.x), ~arg_0, 14896u | (reverseBits(u_input.a) << (_wgslsmith_clamp_u32(arg_1.c.b.x, _wgslsmith_add_u32(arg_0, 9465u), 1u) % 32u)));
    global1 = any(arg_1.c.a);
    global0 = array<bool, 29>();
    let var_1 = Struct_4(~(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-1435i, -2147483647i)), vec2<i32>(arg_1.b, -7344i) | vec2<i32>(20313i, 86392i), vec2<i32>(2147483647i, arg_1.c.d) >> (var_0.xy % vec2<u32>(32u)))), -1147f, -(~(~vec4<i32>(arg_1.c.d, 49198i, arg_1.b, arg_1.b))), Struct_1(select(!select(arg_1.c.a, vec4<bool>(global0[_wgslsmith_index_u32(55758u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], arg_1.c.a.x, arg_1.c.a.x), true), vec4<bool>(false, all(vec4<bool>(false, arg_1.c.a.x, arg_1.c.a.x, arg_1.c.a.x)), global0[_wgslsmith_index_u32(1u, 29u)], arg_1.c.a.x), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_1.c.b.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), ~max(vec3<u32>(15475u, 27367u, var_0.x), arg_1.c.b) & ~arg_1.c.b, ~arg_1.c.b.xz, 53078i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(116f, arg_1.c.e.x, arg_1.c.e.x), vec3<f32>(475f, arg_1.c.e.x, arg_1.c.e.x)))))))));
    var var_2 = ~(-1i);
    return !(!var_1.d.a.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(-25881i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-23684i, -2147483647i, 0i), vec3<i32>(2147483647i, -2928i, 11406i)), -2147483647i), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 47495i), vec2<i32>(9796i, -25944i)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -3283i), vec2<i32>(-1i, 6942i)))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-65364i, -2147483647i), vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-15683i, 4000i), vec2<i32>(3920i, 8971i))), vec2<i32>(1i, 1i))), Struct_1(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a, 29u)] | true, true && global0[_wgslsmith_index_u32(~u_input.a, 29u)], func_3(~u_input.a, Struct_2(2147483647i, -30346i, Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<u32>(u_input.a, 0u), -1i, vec3<f32>(556f, 471f, 1187f)))), global0[_wgslsmith_index_u32(~1u, 29u)]), vec3<u32>(39451u >> ((u_input.a >> (u_input.a % 32u)) % 32u), u_input.a, 0u), max(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(7971u, 117338u, u_input.a, 1u)), 0u >> (u_input.a % 32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(19244u, 73354u), ~vec2<u32>(u_input.a, 4294967295u), reverseBits(vec2<u32>(47401u, 4294967295u)))), ~_wgslsmith_add_i32(1i >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -39229i), vec2<i32>(1i, 22358i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-730f, 1315f, 2335f), vec3<f32>(-529f, 1146f, -925f))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(929f * -212f), _wgslsmith_f_op_f32(1158f * -262f)))));
    global0 = array<bool, 29>();
    let var_1 = var_0.c.e.x;
    let var_2 = Struct_4(min(-_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.b, var_0.a), vec2<i32>(-78480i, var_0.c.d) << (var_0.c.b.yy % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mod_i32(var_0.a, 17396i), -20504i)), _wgslsmith_f_op_f32(trunc(var_0.c.e.x)), ~vec4<i32>(6914i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.b, var_0.c.d, var_0.b), vec4<i32>(-28923i, 0i, 2147483647i, 5403i), vec4<i32>(-54000i, 21500i, 0i, 0i)), vec4<i32>(-1i, var_0.b, -53849i, -54201i) | vec4<i32>(var_0.a, -2147483647i, var_0.a, var_0.a)), _wgslsmith_sub_i32(var_0.b, var_0.b), -41250i), Struct_1(var_0.c.a, vec3<u32>(_wgslsmith_div_u32(u_input.a >> (var_0.c.c.x % 32u), min(var_0.c.b.x, u_input.a)), _wgslsmith_add_u32(firstLeadingBit(u_input.a), 19032u), countOneBits(u_input.a)), var_0.c.b.zx << (select(var_0.c.b.zz, var_0.c.c >> (var_0.c.b.zy % vec2<u32>(32u)), var_0.c.a.zx) % vec2<u32>(32u)), firstLeadingBit(var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1683f, var_0.c.e.x, _wgslsmith_f_op_f32(var_0.c.e.x - 1076f)))));
    let var_3 = var_0.c;
    return Struct_3(Struct_2(_wgslsmith_add_i32(-2147483647i, var_2.a.x), reverseBits(24107i), Struct_1(var_2.d.a, ~firstLeadingBit(var_0.c.b), vec2<u32>(var_3.c.x, 1u), var_0.c.d, var_3.e)), Struct_1(vec4<bool>(false, !(global0[_wgslsmith_index_u32(var_2.d.b.x, 29u)] & false), -1i <= _wgslsmith_dot_vec4_i32(var_2.c, vec4<i32>(var_2.a.x, 0i, var_2.c.x, -1i)), all(vec2<bool>(true, true))), _wgslsmith_sub_vec3_u32(~var_0.c.b, ~var_2.d.b ^ ~vec3<u32>(128103u, u_input.a, 83097u)), var_3.c, abs(max(_wgslsmith_mult_i32(var_2.d.d, 1i), var_0.a)), vec3<f32>(-1066f, -2181f, _wgslsmith_f_op_f32(-var_0.c.e.x))), var_0.c.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = ~arg_1.c.b.x >> (~firstTrailingBit(_wgslsmith_clamp_u32(arg_2.c.x, ~8502u, abs(5083u))) % 32u);
    global1 = all(vec2<bool>(true, true)) || global0[_wgslsmith_index_u32(var_0, 29u)];
    global2 = ~0i;
    let var_1 = Struct_4(select(~_wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, arg_1.c.d), vec2<i32>(-2147483647i, 10295i)), firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -37271i), vec2<i32>(arg_1.c.d, 10033i)))), all(select(func_2().a.c.a, arg_2.a, select(arg_1.c.a, vec4<bool>(arg_0.b.a.x, arg_1.c.a.x, global0[_wgslsmith_index_u32(arg_0.c, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), arg_1.c.a.x)))), arg_0.a.c.e.x, vec4<i32>(_wgslsmith_mult_i32(~arg_2.d, 15647i), -1i, -47821i, ~(-2147483647i)) << (vec4<u32>(43807u & (arg_1.c.c.x ^ 56337u), reverseBits(_wgslsmith_dot_vec2_u32(arg_0.b.c, arg_1.c.c)), arg_0.c, 25130u) % vec4<u32>(32u)), arg_2);
    var var_2 = vec4<bool>(global0[_wgslsmith_index_u32(var_1.d.b.x, 29u)], false, func_3(~(~func_2().a.c.c.x), arg_0.a), arg_0.a.c.a.x);
    return _wgslsmith_f_op_f32(arg_1.c.e.x * arg_0.b.e.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> f32 {
    global0 = array<bool, 29>();
    let var_0 = arg_0.b;
    var var_1 = Struct_4(countOneBits(vec2<i32>(-62769i, ~1i)), _wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(func_4(func_2(), arg_0.a, func_2().a.c, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.x, arg_0.a.a), vec3<i32>(arg_0.b.d, var_0.d, 0i)))))), vec4<i32>(-10074i, 0i, reverseBits(-var_0.d), ~1i << ((arg_0.b.b.x ^ 28306u) % 32u)) >> (vec4<u32>(1u, ~35508u & ~u_input.a, _wgslsmith_div_u32(~u_input.a, arg_0.b.b.x), ~1u) % vec4<u32>(32u)), arg_0.a.c);
    let var_2 = arg_0.a.c.e.x;
    let var_3 = -82385i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.e.x))) + arg_0.a.c.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(firstTrailingBit(~(~vec2<i32>(-1i, 1i)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(0i, 2147483647i, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], false, false, false), vec3<u32>(4294967295u, 43282u, 29328u), vec2<u32>(u_input.a, 4294967295u), -22394i, vec3<f32>(792f, -277f, 755f))), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], false, false, global0[_wgslsmith_index_u32(898u, 29u)]), vec3<u32>(u_input.a, u_input.a, 53489u), vec2<u32>(316u, 1u), -2918i, vec3<f32>(-340f, 1773f, -1563f)), 56324u), vec2<i32>(6768i, 2147483647i))), -1508f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(-1000f - 198f))))), ~(vec4<i32>(-1i) * -select(vec4<i32>(0i, 14835i, -19970i, 28449i), vec4<i32>(-1i, -1i, -2147483647i, 1i), true)), Struct_1(!vec4<bool>(false, true || global0[_wgslsmith_index_u32(u_input.a, 29u)], true, global0[_wgslsmith_index_u32(0u, 29u)]), vec3<u32>(0u, _wgslsmith_clamp_u32(35995u, 1u, 4294967295u), 54831u >> ((u_input.a ^ u_input.a) % 32u)), _wgslsmith_mult_vec2_u32(abs(~vec2<u32>(u_input.a, 56348u)), vec2<u32>(1u, ~0u)), 2147483647i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-657f, -837f, -1575f)))))));
    let var_1 = var_0.d.b >> (func_2().a.c.b % vec3<u32>(32u));
    global2 = ~var_0.c.x >> (var_1.x % 32u);
    let var_2 = var_0.d.b;
    let var_3 = ~(u_input.a | var_2.x);
    let var_4 = var_0;
    let var_5 = countOneBits(var_0.c.xyy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(var_5.x, -2147483647i, var_4.d), var_4.d, var_3), Struct_2(var_4.c.x, 31855i, Struct_1(vec4<bool>(var_4.d.a.x, false, var_4.d.a.x, global0[_wgslsmith_index_u32(0u, 29u)]), vec3<u32>(1589u, 0u, 0u), var_4.d.c, -17253i, var_4.d.e)), var_4.d, var_0.d.d)), var_4.d.e.x, -1301f)) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1357f), var_0.b, _wgslsmith_f_op_f32(-1000f - var_4.d.e.x)), _wgslsmith_f_op_vec3_f32(var_0.d.e * vec3<f32>(var_0.b, var_4.b, -273f)))), var_4.c >> (((~vec4<u32>(var_1.x, var_0.d.b.x, u_input.a, var_3) << (vec4<u32>(1u, 83402u, var_1.x, 0u) % vec4<u32>(32u))) << (vec4<u32>(48080u, 13391u, ~u_input.a, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

