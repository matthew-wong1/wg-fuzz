struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1000f, Struct_1(-321f, vec2<u32>(0u, 0u), vec3<u32>(35604u, 4294967295u, 1u)));

var<private> global1: Struct_2 = Struct_2(1247f, Struct_1(854f, vec2<u32>(55113u, 8303u), vec3<u32>(21772u, 0u, 4294967295u)));

var<private> global2: i32;

var<private> global3: array<i32, 11> = array<i32, 11>(48211i, 33024i, 1i, -40886i, 7676i, -1i, 0i, -10658i, 30093i, 1i, 0i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = global1.b.c.xz;
    let var_1 = vec2<u32>(arg_2.b.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.b.c.x, 0u, ~_wgslsmith_clamp_u32(13534u, 58885u, 17642u), firstTrailingBit(countOneBits(10089u))), vec4<u32>(_wgslsmith_mult_u32(countOneBits(arg_1.c.x), ~var_0.x), abs(4294967295u), ~firstTrailingBit(22245u), ~(~4294967295u))));
    var var_2 = Struct_2(-466f, Struct_1(-1621f, ~(vec2<u32>(arg_2.b.c.x, arg_2.b.b.x) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(103187u, global1.b.b.x), arg_2.b.c.zx, vec2<u32>(0u, 15960u))), vec3<u32>(~arg_2.b.c.x, ~71003u, ~global0.b.c.x) << (vec3<u32>(global0.b.c.x, global1.b.c.x, 18461u) % vec3<u32>(32u))));
    global1 = arg_2;
    global0 = Struct_2(_wgslsmith_f_op_f32(-var_2.a), global1.b);
    return ~var_1;
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(-_wgslsmith_clamp_vec2_i32(select(vec2<i32>(global3[_wgslsmith_index_u32(20070u, 11u)], -27155i), select(vec2<i32>(global3[_wgslsmith_index_u32(35500u, 11u)], global3[_wgslsmith_index_u32(20933u, 11u)]), vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, true)), vec2<bool>(true, false)), abs(vec2<i32>(global3[_wgslsmith_index_u32(8201u, 11u)], 4192i)) << (func_3(-341f, global0.b, Struct_2(1965f, Struct_1(global0.a, global0.b.c.xy, global0.b.c))) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -9087i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(29517u, 11u)], u_input.b))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a, global0.b.a)) + _wgslsmith_f_op_f32(-global0.b.a))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f - -1283f))), global1.b.c.zy & _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1172u, global1.b.b.x), global1.b.b), global0.b.b), global1.b.c));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-636f))), global0.b);
    global1 = Struct_2(-1336f, var_1.b);
    global2 = _wgslsmith_clamp_i32(var_0.x, u_input.b, -7278i);
    return var_1.b;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1.b;
    global3 = array<i32, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, global1.a))), var_0.a) * vec3<f32>(var_0.a, _wgslsmith_f_op_f32(trunc(global1.b.a)), 220f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.a + arg_0.a), _wgslsmith_f_op_f32(min(1786f, -2133f)))) - -1249f), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.b.a, 1052f), _wgslsmith_f_op_f32(-var_0.a)))));
    var var_2 = vec4<bool>(any(select(vec3<bool>(true, false, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), false)), all(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)) | true, true, any(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false))));
    let var_3 = var_1.zz;
    return func_2();
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    global2 = i32(-1i) * -44686i;
    let var_0 = 4293i >= abs(reverseBits(u_input.b) & firstLeadingBit(u_input.b));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_vec2_u32(global1.b.c.yz, firstLeadingBit(vec2<u32>(4294967295u, global0.b.c.x))) >> (~reverseBits(arg_0.b) % vec2<u32>(32u)), reverseBits(global1.b.c));
    return global1.b.c;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_1(395f, ~global0.b.c.zz, _wgslsmith_mod_vec3_u32(func_5(func_4(func_2())), max(~(~global0.b.c), vec3<u32>(_wgslsmith_sub_u32(1u, global1.b.b.x), firstLeadingBit(global0.b.b.x), global0.b.c.x))));
    var var_1 = max(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, 50925i, -arg_0), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b, 7997i, global3[_wgslsmith_index_u32(32709u, 11u)]), vec3<i32>(0i, u_input.b, global3[_wgslsmith_index_u32(global1.b.c.x, 11u)]), false), firstLeadingBit(vec3<i32>(9386i, global3[_wgslsmith_index_u32(38334u, 11u)], 2147483647i))), _wgslsmith_add_vec3_i32(vec3<i32>(-19484i, -42740i, u_input.b), vec3<i32>(arg_0, 83293i, global3[_wgslsmith_index_u32(62845u, 11u)])) ^ reverseBits(vec3<i32>(arg_0, global3[_wgslsmith_index_u32(4294967295u, 11u)], u_input.b))), vec3<i32>(reverseBits(-1i << (0u % 32u)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b.b.x | global0.b.c.x, _wgslsmith_mult_u32(global0.b.b.x, 50610u)), 11u)], -1i), firstTrailingBit(vec3<i32>(global3[_wgslsmith_index_u32(25176u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)] >> (4294967295u % 32u), arg_0 << (1u % 32u)))), -vec3<i32>(global3[_wgslsmith_index_u32(abs(0u), 11u)], i32(-1i) * -9219i, 0i));
    global3 = array<i32, 11>();
    var var_2 = global0.b;
    global2 = _wgslsmith_mod_i32(2220i, max(1i, _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(var_1.x, var_1.x, global3[_wgslsmith_index_u32(58477u, 11u)], -23086i)), (vec4<i32>(1i, var_1.x, u_input.b, 2147483647i) | vec4<i32>(0i, 28016i, var_1.x, 24459i)) & vec4<i32>(u_input.b, arg_0, arg_0, 1i))));
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(197f)))), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_mod_i32(abs(1i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(i32(-1i) * -53435i, 0i, -1i), _wgslsmith_div_i32(~u_input.b, abs(1i)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))));
    let var_0 = ~vec2<i32>(firstTrailingBit(-min(-8563i, global3[_wgslsmith_index_u32(global1.b.c.x, 11u)])), min(u_input.b, 1i));
    let var_1 = select(vec2<bool>(true || (12108u <= _wgslsmith_mult_u32(u_input.a, 4294967295u)), true), !select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), false), !vec2<bool>(true, global1.b.a != _wgslsmith_f_op_f32(1229f * global1.a)));
    global3 = array<i32, 11>();
    global0 = func_1(-(abs(global3[_wgslsmith_index_u32(~89953u, 11u)]) << (~(~4294967295u) % 32u)), global1.b.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2().a)))), vec2<u32>(u_input.a, ~global0.b.c.x), ~global1.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(firstLeadingBit(-2147483647i), u_input.b), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, func_1(var_0.x, global0.b.a).b.b.x), 23306u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 54531u, 1u, var_2.b.x), vec4<u32>(0u, 33225u, global0.b.b.x, u_input.a)) % 32u)), vec4<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(~(-13304i), u_input.b)), -_wgslsmith_dot_vec2_i32(-vec2<i32>(43152i, 7476i), vec2<i32>(25049i, -35712i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.x, 52992i, 1i), max(vec3<i32>(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 11u)], u_input.b), vec3<i32>(u_input.b, var_0.x, 1i) | vec3<i32>(-10052i, -7818i, 2147483647i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), min(vec4<i32>(8522i, 1i, var_0.x, 2147483647i), vec4<i32>(42150i, global3[_wgslsmith_index_u32(4294967295u, 11u)], 1i, var_0.x)))), abs(var_2.c.zz), var_0.x);
}

