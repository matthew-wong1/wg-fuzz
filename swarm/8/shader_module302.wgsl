struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<i32, 11> = array<i32, 11>(-62291i, 14604i, 23447i, 0i, 2147483647i, 0i, -1i, 2147483647i, 1i, 31980i, 0i);

var<private> global2: array<bool, 27> = array<bool, 27>(false, true, true, false, true, true, true, true, true, true, true, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, true);

var<private> global3: vec4<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xy * _wgslsmith_f_op_vec2_f32(-global3.zw)));
    return -_wgslsmith_clamp_i32(_wgslsmith_add_i32(-_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]), max(_wgslsmith_sub_i32(0i, global1[_wgslsmith_index_u32(0u, 11u)]), ~0i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], 21892i, global1[_wgslsmith_index_u32(u_input.a, 11u)], 2147483647i), -vec4<i32>(28501i, -2147483647i, 0i, global1[_wgslsmith_index_u32(u_input.a, 11u)])), select(_wgslsmith_sub_i32(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 11u)]), global1[_wgslsmith_index_u32(~u_input.a, 11u)], false), global1[_wgslsmith_index_u32(min(abs(22660u), abs(34447u)), 11u)]), _wgslsmith_mult_i32(-(~global1[_wgslsmith_index_u32(u_input.a, 11u)]), ~(-40367i)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_3 {
    var var_0 = vec3<i32>(-_wgslsmith_dot_vec2_i32(-vec2<i32>(55546i, -2147483647i), firstTrailingBit(min(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], arg_1), vec2<i32>(arg_1, arg_1)))), -2147483647i, func_3());
    global0 = array<Struct_2, 20>();
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(~(~u_input.a), 27u)], vec4<i32>(2147483647i, ~(-2147483647i), 35115i, 19065i), _wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a))), ~(~vec2<u32>(25430u, u_input.a))));
    global0 = array<Struct_2, 20>();
    let var_2 = select(select(!(!select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.c.x, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(var_1.a, global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)]), var_1.a)), !(!vec3<bool>(var_1.a, global2[_wgslsmith_index_u32(u_input.a, 27u)], true)), var_1.a), select(select(vec3<bool>(true, all(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 27u)], true, false)), var_1.a), vec3<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], true)), any(vec3<bool>(global2[_wgslsmith_index_u32(var_1.c.x, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], false)), var_1.a), true), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 27u)], false), vec3<bool>(true, true, true), true), true), select(vec3<bool>(true, true, true), select(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], false, false), vec3<bool>(true, false, true), var_1.a & var_1.a), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.c.x, 6623u), vec3<u32>(var_1.c.x, u_input.a, 1u)), 27u)], -626f <= arg_0, false), select(vec3<bool>(true, true, var_1.a), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(108382u, 27u)]), vec3<bool>(var_1.a, global2[_wgslsmith_index_u32(4294967295u, 27u)], var_1.a), vec3<bool>(global2[_wgslsmith_index_u32(var_1.c.x, 27u)], var_1.a, false)), vec3<bool>(var_1.a, false, global2[_wgslsmith_index_u32(u_input.a, 27u)]))), true != var_1.a));
    return Struct_3(global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, 0u, 21085u, 1u) << (vec4<u32>(4294967295u, u_input.a, var_1.c.x, 1u) % vec4<u32>(32u))), abs(min(vec4<u32>(u_input.a, 39268u, 1u, 4294967295u), vec4<u32>(8562u, u_input.a, 1u, var_1.c.x)))), var_1.c.x, true), 27u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    global0 = array<Struct_2, 20>();
    var var_0 = abs((arg_2 >> ((vec3<u32>(u_input.a, 0u, 83103u) | select(vec3<u32>(u_input.a, 44752u, 27428u), vec3<u32>(1u, u_input.a, 0u), vec3<bool>(arg_1.a, true, false))) % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, -2970i), vec3<i32>(arg_2.x, -421i, 19306i)), arg_2), -2147483647i, arg_2.x));
    var var_1 = global3.x;
    var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -arg_2, vec3<i32>(_wgslsmith_mod_i32(var_0.x, global1[_wgslsmith_index_u32(u_input.a, 11u)]), max(1i, arg_2.x >> (0u % 32u)) ^ (reverseBits(0i) | var_0.x), global1[_wgslsmith_index_u32(reverseBits(~(~u_input.a)), 11u)]));
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, _wgslsmith_clamp_u32(u_input.a, 4294967295u, min(0u & u_input.a, ~u_input.a))), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a));
    return global2[_wgslsmith_index_u32(u_input.a, 27u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mod_u32(min(u_input.a, 1u), 0u)), 27u)], _wgslsmith_add_vec4_i32(~arg_1, ~vec4<i32>(global1[_wgslsmith_index_u32(8359u, 11u)], _wgslsmith_mult_i32(arg_1.x, 2147483647i), -33955i, ~36974i)), vec2<u32>(_wgslsmith_div_u32(u_input.a, 12567u) >> (u_input.a % 32u), 0u & u_input.a));
    let var_1 = select(!arg_0.a.yxw, select(arg_0.a.yzz, arg_0.a.zyz, select(arg_0.a.wzx, vec3<bool>(var_0.a, true, all(arg_0.a)), !(true & arg_0.a.x))), any(vec4<bool>(func_4(func_2(2116f, var_0.b.x), Struct_3(var_0.a), arg_0.b), false, arg_0.c.x < _wgslsmith_f_op_f32(sign(-1273f)), var_0.a)));
    global1 = array<i32, 11>();
    var var_2 = var_0;
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(select(arg_1.x, _wgslsmith_div_i32(var_2.b.x, -14034i), arg_0.a.x)), 1i), -arg_0.b.yy);
    return -12716i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 11u)] | global1[_wgslsmith_index_u32(u_input.a, 11u)], ~(~(-21817i)), -_wgslsmith_add_i32(2014i, 1i)) >> (vec3<u32>(~(~u_input.a), u_input.a, ~u_input.a) % vec3<u32>(32u)));
    let var_1 = ~4294967295u;
    let var_2 = Struct_1(true, (-(vec4<i32>(-74642i, 8999i, global1[_wgslsmith_index_u32(4294967295u, 11u)], -2147483647i) >> (vec4<u32>(0u, 14907u, 0u, u_input.a) % vec4<u32>(32u))) << ((_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 66182u, u_input.a), vec4<u32>(54594u, 33229u, var_1, 37886u)) << (vec4<u32>(27536u, var_1, u_input.a, var_1) % vec4<u32>(32u))) % vec4<u32>(32u))) | ~vec4<i32>(2147483647i, func_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], vec4<i32>(-2147483647i, 0i, global1[_wgslsmith_index_u32(0u, 11u)], -2147483647i)), abs(8768i), countOneBits(31228i)), _wgslsmith_clamp_vec2_u32(~(~abs(vec2<u32>(u_input.a, 4294967295u))), vec2<u32>(1u, 1u), ~(~vec2<u32>(u_input.a, 40609u)) & vec2<u32>(1u, u_input.a)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(786f + -1367f), var_2.a)))));
    let var_4 = Struct_2(select(select(!(!vec4<bool>(true, var_2.a, true, false)), vec4<bool>(true, var_2.a, all(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(29895u, 27u)])), true), false), select(vec4<bool>(all(vec4<bool>(true, false, var_2.a, true)), true, var_2.a || var_2.a, true), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 27u)], var_2.a, var_2.a)), !any(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 27u)], true))), vec4<bool>(any(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(3082u, 27u)]), vec2<bool>(true, false), false)), !(var_0.x < 35588i), any(!vec3<bool>(var_2.a, true, false)), true)), ~_wgslsmith_sub_vec3_i32(select(vec3<i32>(global1[_wgslsmith_index_u32(var_2.c.x, 11u)], 0i, var_0.x), vec3<i32>(1i, var_2.b.x, var_2.b.x), true) | var_2.b.wzx, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 14150i, var_0.x, var_2.b.x), vec4<i32>(var_2.b.x, 1i, global1[_wgslsmith_index_u32(u_input.a, 11u)], -35265i)), -global1[_wgslsmith_index_u32(u_input.a, 11u)], -1i)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3.wxw))), reverseBits(var_2.b.yxz));
    let var_5 = abs(_wgslsmith_mod_vec2_i32(var_2.b.xz, ~firstLeadingBit(vec2<i32>(var_2.b.x, global1[_wgslsmith_index_u32(var_1, 11u)]))) | vec2<i32>(countOneBits(43276i), var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_4.d.x) >> (vec3<u32>(var_2.c.x, 1u, u_input.a) % vec3<u32>(32u)), var_2.b.xzz)), var_5.x), ~var_2.b | var_2.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(320f + -375f), var_4.c.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1071f, global3.x)), _wgslsmith_f_op_vec2_f32(-global3.xy))), global3.wx), select(vec2<bool>(all(var_4.a.yx), any(var_4.a.yyw)), vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], var_4.a.x)), true), select(select(vec2<bool>(false, var_4.a.x), vec2<bool>(global2[_wgslsmith_index_u32(var_1, 27u)], false), var_4.a.zy), var_4.a.xx, select(var_4.a.yw, vec2<bool>(false, var_4.a.x), var_4.a.zy))))), vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) + global3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1574f + var_4.c.x) - _wgslsmith_f_op_f32(var_4.c.x + -1353f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), -1000f, func_4(Struct_3(true), Struct_3(var_2.a), var_4.d))), true))));
}

