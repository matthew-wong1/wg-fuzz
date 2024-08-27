struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(874f, -1810f);

var<private> global1: array<u32, 8> = array<u32, 8>(5404u, 1u, 66098u, 1u, 41866u, 1u, 8979u, 4294967295u);

var<private> global2: f32;

var<private> global3: array<f32, 29>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> vec3<bool> {
    return vec3<bool>(arg_0, arg_0, true);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_add_i32(-1i, 0i);
    return vec3<bool>(func_1(true & all(vec4<bool>(true, true, false, false)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(2398f, -366f), any(vec2<bool>(true, false)))), -1198f)).x, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))) & (false != any(vec2<bool>(false, false))), !(any(vec3<bool>(true, true, true)) && true));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    global3 = array<f32, 29>();
    global1 = array<u32, 8>();
    let var_0 = false;
    return Struct_1(select(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.a.x, 29u)])), global3[_wgslsmith_index_u32(u_input.c & global1[_wgslsmith_index_u32(u_input.c, 8u)], 29u)])), vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.c, 8u)], u_input.c) & u_input.a, u_input.b.x), vec3<bool>(var_0, var_0, false), select(select(vec3<bool>(true, true, var_0), select(vec3<bool>(true, true, true), vec3<bool>(var_0, false, true), vec3<bool>(var_0, false, false)), vec3<bool>(var_0, true, false)), vec3<bool>(false, !var_0, any(vec2<bool>(false, var_0))), func_3(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 76827u), u_input.a), -u_input.e.x).x)));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global3 = array<f32, 29>();
    var var_0 = select(func_1(arg_1.a.x != _wgslsmith_mult_i32(reverseBits(8040i), _wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(arg_1.a.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -443f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(869f, global3[_wgslsmith_index_u32(4294967295u, 29u)]))), func_2(u_input.a).a.xy))))), select(vec3<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x), vec3<bool>(!(!arg_1.b.a.x), arg_1.b.a.x, false), any(!func_2(vec3<u32>(arg_1.c, u_input.c, u_input.a.x)).a)), vec3<bool>(arg_1.b.a.x, true, select(true, func_2(vec3<u32>(1u, 4294967295u, u_input.c)).a.x, global1[_wgslsmith_index_u32(u_input.c, 8u)] > global1[_wgslsmith_index_u32(36733u, 8u)]) && false));
    global1 = array<u32, 8>();
    var var_1 = select(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.c, 8u)], 8u)], u_input.c, 4294967295u, u_input.a.x) << (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(1u, arg_1.c, arg_1.c, 4294967295u)), vec4<u32>(15542u, 0u, 0u, 4294967295u)) % vec4<u32>(32u))), countOneBits(countOneBits(max(vec4<u32>(arg_1.c, 39349u, u_input.c, 18457u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39281u, 8u)], 8u)], 28u, 0u, global1[_wgslsmith_index_u32(69177u, 8u)]))))), func_1(any(!select(arg_1.b.a, arg_1.b.a, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1459f, -1895f))).x);
    let var_2 = Struct_4(Struct_3(arg_1, func_2(~_wgslsmith_mod_vec3_u32(vec3<u32>(33428u, 55492u, 34273u), vec3<u32>(66741u, u_input.a.x, u_input.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(264f, global0.x, global3[_wgslsmith_index_u32(41589u, 29u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.c, 29u)]) + vec3<f32>(global3[_wgslsmith_index_u32(5727u, 29u)], global3[_wgslsmith_index_u32(var_1.x, 29u)], global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1164f, global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1172f, global3[_wgslsmith_index_u32(var_1.x, 29u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 8u)], 29u)]) + vec3<f32>(global0.x, global3[_wgslsmith_index_u32(1u, 29u)], global0.x))), func_3(-2049f, _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, arg_1.c, global1[_wgslsmith_index_u32(33033u, 8u)]), var_1.zxz), reverseBits(arg_1.a.x)).x)), true, Struct_2(firstTrailingBit(vec2<i32>(6317i, 31033i) >> (u_input.a.xz % vec2<u32>(32u))), Struct_1(!arg_1.b.a), 19561u)), Struct_2(_wgslsmith_sub_vec2_i32(abs(arg_1.a), u_input.d.zx), func_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, global1[_wgslsmith_index_u32(39286u, 8u)], u_input.a.x), vec3<u32>(0u, var_1.x, u_input.a.x))), ~1u), Struct_3(arg_1, arg_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, u_input.c), 29u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.c, 29u)], -316f))), any(select(vec4<bool>(arg_1.b.a.x, false, arg_1.b.a.x, true), select(vec4<bool>(var_0.x, false, false, arg_1.b.a.x), vec4<bool>(arg_1.b.a.x, var_0.x, false, var_0.x), false), arg_1.b.a.x)), Struct_2(-u_input.e.yw, arg_1.b, max(_wgslsmith_clamp_u32(u_input.a.x, global1[_wgslsmith_index_u32(2779u, 8u)], var_1.x), ~0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1400f) + vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], 1746f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(49300u, 29u)], global0.x), vec2<f32>(250f, global3[_wgslsmith_index_u32(30736u, 29u)]))), false)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-761f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1100f, 381f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-126f, -324f), vec2<f32>(107f, 940f), var_0.x)))))));
    return Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, u_input.e.x), var_2.b.a.x & var_2.b.a.x)), vec2<i32>(select(arg_1.a.x, ~4362i, func_1(arg_1.b.a.x, vec2<f32>(374f, var_2.d.x)).x), ~(~2147483647i))), arg_1.b, ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(vec3<bool>(true, true, true), func_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-723f, global0.x))), -u_input.d.x >= -u_input.e.x), vec3<bool>(true, true, true), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), any(vec4<bool>(true, true, true, false)))));
    var var_1 = Struct_3(Struct_2(u_input.e.zz, var_0, global1[_wgslsmith_index_u32(~(~0u), 8u)]), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1096f, global0.x, global0.x), vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], -256f, -552f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global3[_wgslsmith_index_u32(0u, 29u)], -507f), vec3<f32>(global3[_wgslsmith_index_u32(1u, 29u)], global0.x, -631f), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)))))), any(!vec4<bool>(global3[_wgslsmith_index_u32(36794u, 29u)] <= global0.x, var_0.a.x, false, all(vec2<bool>(var_0.a.x, false)))), func_4(u_input.d.x, Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, u_input.b.x), u_input.b.zx) ^ u_input.b.xx, func_2(u_input.a), u_input.a.x)));
    var var_2 = reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.e.a.x, 2147483647i, u_input.b.x), _wgslsmith_div_vec3_i32(u_input.d.yyw, vec3<i32>(-26678i, 13747i, u_input.d.x))) << (u_input.a % vec3<u32>(32u)), ~vec3<i32>(var_1.e.a.x | u_input.b.x, -2147483647i, ~var_1.e.a.x)));
    let var_3 = !(!func_1(!var_1.e.b.a.x, var_1.c.zz).yy);
    var var_4 = all(var_0.a);
    var var_5 = _wgslsmith_mod_vec4_u32(~(~select(~vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(var_1.e.c, 8u)], var_1.e.c, 32969u), ~vec4<u32>(u_input.a.x, var_1.e.c, u_input.a.x, u_input.a.x), select(vec4<bool>(false, var_0.a.x, true, var_1.e.b.a.x), vec4<bool>(var_0.a.x, true, true, true), var_1.b.a.x))), vec4<u32>(global1[_wgslsmith_index_u32(var_1.a.c, 8u)], ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, u_input.a.x, 68971u)), countOneBits(~14987u), ~min(var_1.a.c, 33947u)) >> (~vec4<u32>(abs(0u), u_input.c, global1[_wgslsmith_index_u32(u_input.a.x, 8u)] ^ u_input.a.x, abs(4294967295u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b.xwx | vec3<i32>(-u_input.b.x, ~u_input.b.x, var_1.e.a.x)));
}

