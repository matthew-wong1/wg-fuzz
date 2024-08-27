struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: array<Struct_4, 10>;

var<private> global2: i32;

var<private> global3: array<Struct_4, 32>;

var<private> global4: vec3<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -735f), Struct_2(~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(global4.x, global4.x, global4.x)), ~vec3<u32>(global4.x, 57289u, 0u)), vec4<i32>(~u_input.a, max(69346i, 1i), 1i, abs(-8002i)) << (~_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(global4.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]) % vec4<u32>(32u)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(11054u, 32u)], ~vec4<u32>(global4.x, 4294967295u, 4294967295u, global4.x)), 32u)], u_input.a, -28420i), vec4<bool>(50778u <= _wgslsmith_clamp_u32(global4.x, 30089u, global4.x), true, true, true)), vec4<u32>(max(_wgslsmith_add_u32(28519u, global4.x), global4.x) & 0u, ~global4.x, _wgslsmith_dot_vec2_u32(~abs(global4.yz), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global4.x, 32074u), vec3<u32>(11424u, 4294967295u, global4.x)), firstTrailingBit(31797u))), firstTrailingBit(_wgslsmith_mult_u32(global4.x, 32152u))), _wgslsmith_f_op_f32(f32(-1f) * -982f), Struct_1(abs(countOneBits(vec4<u32>(0u, 1u, global4.x, global4.x) << (global0[_wgslsmith_index_u32(28556u, 32u)] % vec4<u32>(32u)))), -u_input.a, _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-23595i, 1i, -16163i), vec3<i32>(u_input.a, -11703i, 2147483647i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    global0 = array<vec4<u32>, 32>();
    var var_1 = max(abs(-u_input.a), -29812i);
    global4 = var_0.c.xwz;
    var var_2 = var_0.b.d;
    return -_wgslsmith_dot_vec2_i32(-var_0.b.b.zx, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), var_0.b.b.xx), reverseBits(-37946i))) & u_input.a;
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = !arg_0;
    let var_1 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-620f, -1981f, arg_0 != true)) + -1000f), Struct_2(~(~vec3<u32>(global4.x, global4.x, 14555u)), select(vec4<i32>(u_input.a, 2147483647i, u_input.a, -25764i), vec4<i32>(1193i, 5795i, 0i, u_input.a) << (vec4<u32>(4294967295u, 57983u, 4294967295u, global4.x) % vec4<u32>(32u)), true), Struct_1(global0[_wgslsmith_index_u32(global4.x | global4.x, 32u)], 2147483647i, firstLeadingBit(u_input.a)), vec4<bool>(0i == u_input.a, arg_0, u_input.a <= u_input.a, true)), global0[_wgslsmith_index_u32(global4.x, 32u)], 1115f, Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(global4.x, 32u)], vec4<u32>(global4.x, 26096u, 0u, 79259u)), global0[_wgslsmith_index_u32(min(global4.x, 0u), 32u)]), -43903i, i32(-1i) * -1i)));
    global2 = ~u_input.a;
    global2 = ~firstTrailingBit(~_wgslsmith_mod_i32(_wgslsmith_div_i32(1334i, -2147483647i), func_3()));
    let var_2 = global4.x;
    return Struct_1(abs(vec4<u32>(abs(~var_1.a.e.a.x), abs(firstLeadingBit(53802u)), ~(var_1.a.b.a.x | var_1.a.b.c.a.x), 41426u)), ~u_input.a, _wgslsmith_clamp_i32(1i, u_input.a, ~_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, -2147483647i), 22682i << (global4.x % 32u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_2(vec3<u32>(reverseBits(reverseBits(~global4.x)), select(~_wgslsmith_mult_u32(global4.x, arg_0.x), 8162u, select(true, any(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, false, true, true)))), 36487u), -reverseBits(reverseBits(min(vec4<i32>(u_input.a, u_input.a, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, u_input.a, arg_1.x, 2147483647i)))), func_2(false, true), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1194f, -948f, -832f, 318f))))))));
    var var_2 = true;
    global4 = _wgslsmith_div_vec3_u32(~vec3<u32>(~_wgslsmith_sub_u32(global4.x, 1u), 1u, var_0.a.x), abs(var_0.a));
    let var_3 = 4294967295u;
    return all(!var_0.d.zyw);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_2(reverseBits(vec3<u32>(15720u, 31103u, arg_3)), vec4<i32>(-_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a)), func_2(arg_1.x, !any(arg_0)).c, ~(-24078i), ~(u_input.a ^ firstTrailingBit(u_input.a))), Struct_1(vec4<u32>(~firstLeadingBit(global4.x), global4.x, arg_2, 0u), reverseBits(u_input.a) << (firstTrailingBit(abs(global4.x)) % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -49763i, -24676i, u_input.a), vec4<i32>(-1i, 91625i, u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a, 0i, u_input.a), vec4<i32>(0i, -11498i, u_input.a, -11136i))), u_input.a)), !select(!(!arg_0), !vec4<bool>(arg_0.x, true, true, true), true));
    var var_1 = _wgslsmith_mult_vec2_u32(var_0.a.yz, select(_wgslsmith_mult_vec2_u32(~global4.xx >> (~var_0.a.yz % vec2<u32>(32u)), ~vec2<u32>(arg_2, 1u)), ~(vec2<u32>(1u, 1u) & _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global4.x), global4.zy)), var_0.d.xw));
    var var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(1472f, -509f)))), var_0, ~vec4<u32>(~global4.x, 0u, firstLeadingBit(4294967295u), global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-621f))) - _wgslsmith_f_op_f32(f32(-1f) * -937f)), Struct_1(~(~global0[_wgslsmith_index_u32(global4.x, 32u)]), _wgslsmith_add_i32(~u_input.a, var_0.c.c), min(min(2147483647i, 1i), func_3()))));
    let var_3 = !select(vec3<bool>(false, var_0.d.x, arg_0.x), !(!select(var_0.d.yzw, vec3<bool>(var_0.d.x, true, false), vec3<bool>(false, var_0.d.x, arg_0.x))), select(!var_0.d.wzy, var_2.a.b.d.xxw, !arg_0.zyz));
    global0 = array<vec4<u32>, 32>();
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -22902i;
    var var_0 = func_4(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false)))), vec4<bool>(true, true, !(global4.x < 0u), select(true, false, true)), false), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(global4.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(-6813i, u_input.a))), min(~_wgslsmith_sub_u32(1u, global4.x << (1u % 32u)), ~min(4294967295u, abs(global4.x))), global4.x);
    var var_1 = Struct_2(var_0.b.c.a.xxw, var_0.b.b, func_4(select(vec4<bool>(var_0.b.d.x, var_0.b.d.x, all(vec3<bool>(var_0.b.d.x, var_0.b.d.x, var_0.b.d.x)), var_0.b.d.x & var_0.b.d.x), !var_0.b.d, !var_0.b.d.x), var_0.b.d.xy, 0u, 1u).e, select(var_0.b.d, var_0.b.d, var_0.b.d));
    var var_2 = Struct_5(func_4(vec4<bool>(~u_input.a >= _wgslsmith_mult_i32(u_input.a, var_1.b.x), var_0.b.d.x, func_1(vec4<u32>(0u, 1u, global4.x, 27856u) << (vec4<u32>(45154u, var_1.a.x, global4.x, 18049u) % vec4<u32>(32u)), select(vec2<i32>(var_0.b.b.x, 0i), var_1.b.xy, var_1.d.x)), var_1.b.x > firstLeadingBit(5516i)), var_0.b.d.wy, 0u, func_2(true, _wgslsmith_div_f32(var_0.d, 1694f) != -954f).a.x));
    var var_3 = !any(vec2<bool>(any(var_1.d.wyy), all(vec2<bool>(var_0.b.d.x, true))));
    global4 = _wgslsmith_sub_vec3_u32(var_2.a.c.zyy, var_0.e.a.yyw);
    var var_4 = global3[_wgslsmith_index_u32(firstLeadingBit(49390u) << (~global4.x % 32u), 32u)];
    var var_5 = Struct_2(var_1.a, var_1.b, func_4(select(select(select(var_4.b.d, vec4<bool>(var_2.a.b.d.x, var_4.b.d.x, var_2.a.b.d.x, var_4.b.d.x), vec4<bool>(var_4.b.d.x, var_1.d.x, var_1.d.x, var_4.b.d.x)), !vec4<bool>(var_4.b.d.x, false, false, true), false != var_1.d.x), var_4.b.d, var_2.a.b.d.x), select(var_2.a.b.d.yw, var_2.a.b.d.zw, var_0.b.d.x), var_0.c.x, var_0.b.a.x).b.c, vec4<bool>(var_1.d.x, true, func_4(select(var_2.a.b.d, vec4<bool>(var_0.b.d.x, var_2.a.b.d.x, false, var_0.b.d.x), var_1.d.x), !(!var_4.b.d.zw), 4294967295u, global4.x).b.d.x, var_1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.d, -1001f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + 131f)))), firstLeadingBit(~var_5.a.x));
}

