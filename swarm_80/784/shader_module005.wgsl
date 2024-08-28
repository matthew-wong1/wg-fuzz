struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(true, false, 13591u, vec2<u32>(23334u, 0u), vec4<bool>(true, false, false, false));

var<private> global2: array<f32, 17>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = !(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.xzy, vec3<u32>(0u, 53308u, 1u)), ~(~vec3<u32>(22201u, u_input.b.x, 4294967295u))) <= (~(~31652u) >> (~_wgslsmith_dot_vec3_u32(u_input.b.xzw, vec3<u32>(90626u, global1.c, 0u)) % 32u)));
    var var_1 = false;
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(reverseBits(u_input.c.x)), _wgslsmith_add_u32(u_input.d, _wgslsmith_mod_u32(59108u, 4135u))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(39920u, global1.d.x, 47096u), _wgslsmith_dot_vec3_u32(vec3<u32>(19457u, u_input.b.x, 31580u), vec3<u32>(4939u, 1u, 4294967295u))), 56403u));
    let var_3 = Struct_2(_wgslsmith_mult_vec4_i32(min(-u_input.a, -(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 0i))), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-40656i, ~u_input.a.x, 2147483647i, 2147483647i | u_input.a.x))), -329f, Struct_1(all(vec4<bool>(var_0, false, global1.e.x, false)) && (global1.a | all(global1.e)), false, firstLeadingBit(global1.c << (83758u % 32u)) ^ _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(4294967295u, 53655u)), u_input.c, vec4<bool>(var_0, (global2[_wgslsmith_index_u32(1230u, 17u)] > arg_0.x) | global1.a, any(select(vec3<bool>(true, true, true), global1.e.xwz, false)), global1.e.x)), vec3<u32>(max(68559u, ~reverseBits(global1.d.x)), global1.c, ~4294967295u), Struct_1(!global1.e.x, var_0, ~4294967295u, u_input.b.wx, select(global1.e, global1.e, select(!vec4<bool>(true, false, global1.b, global1.b), global1.e, true))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), arg_0.x, arg_0.x)));
    return var_3.c.d;
}

fn func_2() -> Struct_2 {
    global2 = array<f32, 17>();
    let var_0 = global1.e;
    var var_1 = u_input.c.x;
    global1 = Struct_1(global1.e.x, any(var_0.wzz), u_input.c.x, _wgslsmith_mult_vec2_u32(u_input.b.zz, global1.d), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 17u)] != -917f, var_0.x, global1.e.x)));
    let var_2 = Struct_1(var_0.x, var_0.x, firstLeadingBit(4294967295u), _wgslsmith_add_vec2_u32(global1.d, countOneBits(~u_input.c)), select(global1.e, global1.e, !global1.e));
    return Struct_2(u_input.a, -680f, Struct_1(false, true, var_2.d.x, func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(7998u, 17u)], 802f, -324f))), vec3<f32>(-134f, -460f, global2[_wgslsmith_index_u32(4294967295u, 17u)])))), global1.e), ~abs(~u_input.b.xwx) << (_wgslsmith_div_vec3_u32(u_input.b.zwz, vec3<u32>(global1.c, 44003u, ~global1.c)) % vec3<u32>(32u)), Struct_1(true, any(var_0.zxz), global1.d.x, reverseBits(abs(func_3(vec3<f32>(global2[_wgslsmith_index_u32(1779u, 17u)], 1209f, global2[_wgslsmith_index_u32(37200u, 17u)])))), var_2.e));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = func_2().c.e.x && (true & all(!(!global1.e.zx)));
    let var_2 = func_2().e.a;
    var var_3 = Struct_1(var_0.a.x < _wgslsmith_mod_i32(-countOneBits(var_0.a.x), u_input.a.x), !arg_2, select(_wgslsmith_div_u32(firstLeadingBit(~global1.c), u_input.d), ~firstLeadingBit(var_0.c.d.x & var_0.e.d.x), any(func_2().c.e.zw)), func_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -286f, _wgslsmith_f_op_f32(f32(-1f) * -405f))), func_2().e.e);
    let var_4 = var_0.c;
    return select(!var_4.e, func_2().c.e, vec4<bool>(var_3.a, true, select(true, false, var_3.a && var_3.b), any(global1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(global1.d, reverseBits(~global1.d))), ~vec2<u32>(83959u, u_input.d) & ~vec2<u32>(_wgslsmith_mod_u32(global1.c, 4294967295u), _wgslsmith_clamp_u32(u_input.d, u_input.c.x, 1u))), 17u)];
    let var_1 = all(select(global1.e, vec4<bool>((u_input.a.x & 1i) < min(u_input.a.x, u_input.a.x), false, global1.b, any(vec2<bool>(true, true))), !(!func_1(784f, vec3<f32>(-298f, global2[_wgslsmith_index_u32(58934u, 17u)], global2[_wgslsmith_index_u32(1u, 17u)]), true))));
    global2 = array<f32, 17>();
    var var_2 = Struct_2(vec4<i32>(~2147483647i, -max(~(-30871i), firstTrailingBit(u_input.a.x)), _wgslsmith_mult_i32(u_input.a.x, -1i), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x)) ^ -12718i), -1305f, func_2().e, abs(vec3<u32>(_wgslsmith_mod_u32(global1.d.x & global1.d.x, ~global1.c), abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, u_input.b.x, global1.d.x), vec3<u32>(global1.c, u_input.d, global1.d.x)) & u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.c.x << (global1.c % 32u), 17u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, 4294967295u), 17u)])) < _wgslsmith_f_op_f32(-718f - 876f), !(~u_input.a.x < reverseBits(u_input.a.x)), ~(1u ^ global1.c) >> (func_2().d.x % 32u), vec2<u32>(1u, select(4294967295u, u_input.c.x, var_1)) ^ select(vec2<u32>(global1.c, 4294967295u) & u_input.b.yx, ~u_input.c, !global1.e.yy), select(vec4<bool>(var_1, true & global1.b, true, true == var_1), vec4<bool>(false, any(vec3<bool>(false, true, global1.b)), global1.e.x, var_1), vec4<bool>(true, !global1.a, all(vec3<bool>(var_1, false, false)), any(global1.e)))));
    global1 = Struct_1(global1.a, any(!vec2<bool>(false, !var_1)), global1.c, ~countOneBits(vec2<u32>(~4294967295u, 4294967295u)), select(select(vec4<bool>(any(var_2.e.e), true, var_1 & true, all(var_2.c.e)), !global1.e, vec4<bool>(!var_2.e.e.x, true, true, any(var_2.c.e.yx))), select(select(!vec4<bool>(var_1, true, true, false), func_2().e.e, all(vec3<bool>(global1.b, var_2.e.b, var_1))), !(!var_2.c.e), select(all(vec2<bool>(var_1, var_2.e.e.x)), true, true)), select(select(var_2.c.e, !var_2.c.e, true), !(!global1.e), var_2.e.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_2.a.x, ~(-34113i), _wgslsmith_div_i32(~u_input.a.x, max(var_2.a.x, 29452i))), _wgslsmith_sub_vec3_i32(u_input.a.zxz, func_2().a.yxx)), -824f, select(-select(vec2<i32>(-2147483647i, var_2.a.x), u_input.a.xx, all(vec2<bool>(global1.e.x, var_2.e.a))), ~vec2<i32>(_wgslsmith_dot_vec4_i32(var_2.a, var_2.a), 1i), func_1(global2[_wgslsmith_index_u32(1u, 17u)], vec3<f32>(433f, _wgslsmith_f_op_f32(trunc(632f)), -508f), !var_1).wz), _wgslsmith_mod_vec3_i32(min(vec3<i32>(69126i, 0i, i32(-1i) * -8111i), u_input.a.ywx), firstTrailingBit(select(_wgslsmith_sub_vec3_i32(var_2.a.zwy, var_2.a.wyx), ~var_2.a.xzx, var_1))), var_2.a.x);
}

