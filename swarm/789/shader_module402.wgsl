struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 90913u, 26524u, 51904u), vec4<u32>(4294967295u, 10689u, 4294967295u, 68031u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(15807u, 2712u, 4294967295u, 47157u), vec4<u32>(4294967295u, 0u, 5457u, 49759u));

var<private> global2: vec3<u32>;

var<private> global3: array<u32, 30>;

var<private> global4: Struct_1 = Struct_1(false, -245f, vec2<i32>(1i, 0i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), -firstTrailingBit(_wgslsmith_mod_vec2_i32(arg_0.a.b.c | vec2<i32>(arg_3.a.x, 0i), -arg_3.a.yy)));
    var var_1 = global4.a;
    var var_2 = false;
    global4 = arg_0.d.b;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-416f, _wgslsmith_f_op_f32(sign(-1578f)))) * _wgslsmith_f_op_vec2_f32(-arg_1.e.zz)), _wgslsmith_f_op_vec2_f32(select(arg_1.e.yz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, arg_3.b.b)))), global4.a)));
    return -2147483647i | arg_1.b.a.b.c.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: i32) -> bool {
    var var_0 = false == (all(vec2<bool>(global4.a, global4.a)) || true);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-361f + -1066f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(f32(-1f) * -987f))), any(vec3<bool>(false, any(vec4<bool>(global4.a, global4.a, true, global0.x)), true)))), Struct_3(Struct_2(arg_2, Struct_1(!global4.a, 1135f, select(vec2<i32>(arg_1.x, 21645i), vec2<i32>(1i, u_input.e), false))), -1i, global0.zx, Struct_2(vec3<i32>(-14913i, func_3(Struct_3(Struct_2(arg_1, Struct_1(global4.a, global4.b, vec2<i32>(2147483647i, arg_0.x))), -1i, vec2<bool>(global4.a, global4.a), Struct_2(arg_0.yww, Struct_1(true, global4.b, vec2<i32>(-2147483647i, -10944i))), Struct_2(vec3<i32>(arg_3, 4748i, arg_2.x), Struct_1(global4.a, 2206f, arg_1.xx))), Struct_5(1001f, Struct_3(Struct_2(vec3<i32>(arg_3, arg_3, -1i), Struct_1(false, -1024f, arg_1.yx)), u_input.c, global0.yy, Struct_2(arg_2, Struct_1(global4.a, global4.b, arg_0.yz)), Struct_2(vec3<i32>(arg_1.x, global4.c.x, u_input.e), Struct_1(global0.x, global4.b, global4.c))), false, vec2<bool>(global4.a, false), vec3<f32>(685f, -2054f, -149f)), -230f, Struct_2(vec3<i32>(arg_3, arg_2.x, u_input.e), Struct_1(global4.a, global4.b, global4.c))), _wgslsmith_sub_i32(global4.c.x, 0i)), Struct_1(global0.x, _wgslsmith_f_op_f32(min(global4.b, global4.b)), arg_2.xz)), Struct_2(arg_1, Struct_1(global4.a, -852f, arg_2.xz >> (global2.zz % vec2<u32>(32u))))), all(vec3<bool>(all(vec2<bool>(global0.x, false)), global4.a, global4.a)), !(!global0.zz), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.b, global4.b, global4.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.b, global4.b, -635f), vec3<f32>(-417f, 1206f, global4.b), vec3<bool>(false, false, false)))), global4.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(642f, global4.b, global4.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-365f, 2599f, -175f) * vec3<f32>(2219f, 392f, -796f))) - vec3<f32>(_wgslsmith_f_op_f32(select(-1055f, global4.b, global0.x)), _wgslsmith_f_op_f32(step(global4.b, global4.b)), global4.b)))));
    var var_2 = Struct_2(vec3<i32>(var_1.b.d.b.c.x, _wgslsmith_mult_i32(arg_1.x, global4.c.x), -(~global4.c.x)) ^ _wgslsmith_div_vec3_i32(~vec3<i32>(0i, var_1.b.a.b.c.x, 71861i), vec3<i32>(u_input.e, ~var_1.b.e.b.c.x, global4.c.x)), Struct_1(false, _wgslsmith_f_op_f32(floor(-1006f)), vec2<i32>(func_3(Struct_3(var_1.b.a, -2147483647i, vec2<bool>(true, false), var_1.b.e, Struct_2(var_1.b.e.a, var_1.b.a.b)), Struct_5(1221f, Struct_3(Struct_2(arg_2, var_1.b.d.b), 587i, global0.xx, Struct_2(arg_2, var_1.b.d.b), var_1.b.d), false, global0.zx, var_1.e), _wgslsmith_f_op_f32(round(185f)), Struct_2(vec3<i32>(var_1.b.e.a.x, -1i, arg_1.x), var_1.b.d.b)), _wgslsmith_dot_vec2_i32(arg_2.yx, vec2<i32>(-25302i, 1i) & vec2<i32>(arg_3, -1i)))));
    let var_3 = Struct_2(select(vec3<i32>(4702i, -firstTrailingBit(arg_3), _wgslsmith_clamp_i32(22705i, _wgslsmith_mod_i32(arg_0.x, 2147483647i), ~(-32740i))), vec3<i32>(arg_2.x >> (u_input.a % 32u), -2147483647i, global4.c.x) << (reverseBits(firstTrailingBit(vec3<u32>(82177u, global3[_wgslsmith_index_u32(50048u, 30u)], global2.x))) % vec3<u32>(32u)), select(!vec3<bool>(false, global4.a, false), select(select(vec3<bool>(true, var_1.c, var_1.d.x), vec3<bool>(true, var_1.c, false), vec3<bool>(global0.x, true, true)), select(vec3<bool>(var_2.b.a, true, global4.a), vec3<bool>(global0.x, true, false), global4.a), vec3<bool>(false, true, var_1.c)), vec3<bool>(select(false, var_2.b.a, true), all(vec2<bool>(var_1.d.x, false)), !var_2.b.a))), Struct_1(true, global4.b, select(vec2<i32>(-arg_3, ~arg_0.x), -(~global4.c), !(global4.a || false))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.b + -1000f)))), _wgslsmith_f_op_f32(ceil(var_1.a))));
    return true;
}

fn func_1() -> vec2<u32> {
    global0 = vec3<bool>(!((-global4.c.x ^ ~u_input.b) < global4.c.x), true, any(vec3<bool>(-369f <= _wgslsmith_div_f32(global4.b, global4.b), func_2(vec4<i32>(u_input.b, -2147483647i, 1i, -18776i), ~vec3<i32>(32171i, global4.c.x, global4.c.x), -vec3<i32>(global4.c.x, global4.c.x, global4.c.x), u_input.c), global4.a)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global4.b, 1062f)), _wgslsmith_f_op_f32(global4.b + global4.b))), _wgslsmith_f_op_f32(528f - _wgslsmith_f_op_f32(ceil(global4.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.b)), global4.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b, _wgslsmith_f_op_f32(global4.b + 507f), _wgslsmith_f_op_f32(-372f * -308f)))));
    let var_1 = Struct_3(Struct_2(~_wgslsmith_add_vec3_i32(vec3<i32>(49198i, 0i, -42141i), vec3<i32>(global4.c.x, u_input.e, 1i)) << (~vec3<u32>(12545u, global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(global2.x, 30u)]) % vec3<u32>(32u)), Struct_1(global0.x, var_0.x, global4.c)), global4.c.x, vec2<bool>(true, false), Struct_2(_wgslsmith_div_vec3_i32(-select(vec3<i32>(u_input.b, -59972i, 0i), vec3<i32>(-25546i, 2147483647i, -9240i), vec3<bool>(global4.a, false, global0.x)), vec3<i32>(global4.c.x | 0i, max(u_input.b, global4.c.x), ~u_input.c)), Struct_1(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(296f, 1000f)), -562f, global4.a & global0.x)), vec2<i32>(_wgslsmith_mod_i32(global4.c.x, 10432i), -876i))), Struct_2(vec3<i32>(abs(1i), 35925i, u_input.c), Struct_1(false, global4.b, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(1i, u_input.d), global4.c))));
    global4 = Struct_1((false & (select(var_1.d.b.a, false, global4.a) & true)) | func_2(abs(firstLeadingBit(vec4<i32>(var_1.d.a.x, -6181i, 1i, u_input.e))), select(var_1.e.a, _wgslsmith_mult_vec3_i32(var_1.d.a, var_1.e.a), vec3<bool>(global4.a, global0.x, false)), max(var_1.d.a, var_1.d.a) | ~vec3<i32>(-60410i, var_1.b, var_1.b), 15564i >> (_wgslsmith_sub_u32(6603u, global2.x) % 32u)), 797f, ~var_1.a.a.zz);
    var var_2 = _wgslsmith_f_op_f32(sign(var_1.a.b.b));
    return ~global2.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(global2.xy, min(func_1(), global2.zz));
    global4 = Struct_1(!(!((true | global4.a) != all(vec3<bool>(global4.a, global4.a, true)))), global4.b, -reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global4.c.x, u_input.b), vec2<i32>(34254i, -1i))));
    var var_1 = Struct_4(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.a, 30u)], 0u) ^ global2.x, Struct_1(!(var_0.x > ~var_0.x), -1316f, vec2<i32>(u_input.e >> (var_0.x % 32u), u_input.b)), Struct_3(Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(-47490i, global4.c.x, global4.c.x)), vec3<i32>(1i, global4.c.x, 6620i)), Struct_1(var_0.x >= 78592u, _wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_div_vec2_i32(global4.c, vec2<i32>(global4.c.x, -2344i)))), ~51922i, global0.zz, Struct_2(firstTrailingBit(firstTrailingBit(vec3<i32>(u_input.c, u_input.c, global4.c.x))), Struct_1(all(vec3<bool>(global4.a, true, global0.x)), _wgslsmith_div_f32(global4.b, -909f), ~vec2<i32>(u_input.c, 37058i))), Struct_2(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 2465i, 1i), vec3<i32>(u_input.c, u_input.e, -34944i))), Struct_1(true, _wgslsmith_div_f32(global4.b, -459f), global4.c))), Struct_2(vec3<i32>(-(~u_input.e), 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.c.x, u_input.d, 11663i, u_input.c), vec4<i32>(u_input.d, -24051i, -32151i, u_input.b)), _wgslsmith_mult_i32(-12033i, 34327i))), Struct_1(select(global0.x && global4.a, all(vec4<bool>(false, true, global4.a, global0.x)), all(vec2<bool>(global4.a, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1929f, -220f)), _wgslsmith_f_op_f32(global4.b * global4.b)), countOneBits(_wgslsmith_div_vec2_i32(global4.c, global4.c)))), Struct_2(min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.c, global4.c.x), vec3<i32>(u_input.d, 0i, -15732i)) | ~vec3<i32>(36425i, global4.c.x, -1i), vec3<i32>(u_input.c << (18979u % 32u), 1i, ~u_input.b)), Struct_1(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-353f)) * -1154f), countOneBits(global4.c << (var_0 % vec2<u32>(32u))))));
    global4 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.b.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f))) * 1052f), _wgslsmith_div_vec2_i32(var_1.b.c, vec2<i32>(-var_1.c.a.b.c.x & countOneBits(var_1.e.b.c.x), reverseBits(~var_1.d.a.x))));
    var var_2 = ~_wgslsmith_mult_u32(~var_1.a << (global3[_wgslsmith_index_u32(~24498u, 30u)] % 32u), abs(_wgslsmith_mult_u32(global2.x, 1u))) == _wgslsmith_dot_vec4_u32(vec4<u32>(~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(0u, 30u)], 142776u, 4294967295u), 30u)], _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 18787u), reverseBits(var_0.x)), 31909u, global2.x), ~_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_1.a, global2.x, u_input.a, 12785u), global1[_wgslsmith_index_u32(1u, 5u)]), ~global1[_wgslsmith_index_u32(0u, 5u)]));
    global2 = ~vec3<u32>(global2.x, ~49940u, global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.a.x << (36174u % 32u), firstLeadingBit(var_1.d.b.c) & -global4.c);
}

