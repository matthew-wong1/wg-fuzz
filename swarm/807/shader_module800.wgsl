struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 23> = array<i32, 23>(0i, i32(-2147483648), 2147483647i, 0i, 2147483647i, 0i, 1i, 1366i, 0i, 52597i, i32(-2147483648), 57502i, 17061i, 0i, -9720i, 2147483647i, -23158i, 0i, -29818i, -11075i, i32(-2147483648), 9788i, 27999i);

var<private> global2: i32;

var<private> global3: array<Struct_1, 9>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = min(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -19573i, -13531i) << (~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 15949u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-20221i, 23461i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), -vec4<i32>(-2147483647i, -3580i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), vec4<i32>(-19707i, -48707i, abs(global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 11265i, -42276i), vec4<i32>(global1[_wgslsmith_index_u32(55777u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -1i, global1[_wgslsmith_index_u32(6715u, 23u)]))))), global1[_wgslsmith_index_u32(abs(max(99819u, 4294967295u)), 23u)]);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1418f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f))));
    var var_1 = vec2<i32>(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x << (u_input.a.x % 32u), 0u), 23u)], 1i);
    var var_2 = max(min(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], firstLeadingBit(_wgslsmith_clamp_i32(1i, 1i, var_1.x))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(4294967295u, u_input.a.x), u_input.a.x), 23u)]);
    var var_3 = _wgslsmith_f_op_f32(select(-1101f, 1445f, any(select(select(!vec2<bool>(global4.x, false), vec2<bool>(global4.x, true), !vec2<bool>(global4.x, arg_0)), select(select(vec2<bool>(false, global4.x), vec2<bool>(false, true), false), vec2<bool>(true, global4.x), arg_0), select(select(vec2<bool>(false, global4.x), vec2<bool>(arg_0, true), vec2<bool>(false, false)), !vec2<bool>(arg_0, false), true)))));
    return -673f;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_4(Struct_3(all(vec2<bool>(true, select(arg_0.a.x, arg_0.d, true)))), vec2<u32>(u_input.a.x, ~u_input.a.x) & vec2<u32>(~firstTrailingBit(77174u), ~(~4294967295u)));
    global3 = array<Struct_1, 9>();
    var var_1 = -arg_0.b.x;
    global1 = array<i32, 23>();
    let var_2 = 12686i;
    return select(vec2<bool>(true, true), select(!vec2<bool>(arg_0.c == arg_0.c, true), !select(arg_0.a.wx, vec2<bool>(arg_0.a.x, global4.x), true), select(true, any(arg_0.a.zw), false)), arg_0.a.zx);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    global2 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    let var_0 = all(!func_4(Struct_1(select(vec4<bool>(arg_1.a, true, arg_2, arg_1.a), vec4<bool>(false, false, false, arg_1.a), vec4<bool>(false, arg_1.a, global4.x, true)), -vec2<i32>(11533i, -2147483647i), _wgslsmith_f_op_f32(func_3(global4.x)), true)));
    global2 = abs(global1[_wgslsmith_index_u32(0u, 23u)]);
    let var_1 = arg_1;
    global3 = array<Struct_1, 9>();
    return ~reverseBits(u_input.a.x);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = vec3<i32>(1986i, 56012i >> (_wgslsmith_mult_u32(~func_2(u_input.a, Struct_3(global4.x), false, vec2<i32>(1i, global1[_wgslsmith_index_u32(44906u, 23u)])), u_input.a.x) % 32u), -1i);
    let var_1 = 130f;
    var var_2 = vec4<bool>(all(!(!arg_1.xz)), all(func_4(Struct_1(select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(false, global4.x, false, true), true), select(var_0.zy, vec2<i32>(global1[_wgslsmith_index_u32(1u, 23u)], 2147483647i), vec2<bool>(global4.x, true)), _wgslsmith_f_op_f32(-1232f + 710f), global4.x))), all(!arg_1) & !func_4(global3[_wgslsmith_index_u32(u_input.a.x, 9u)]).x, global4.x);
    var var_3 = _wgslsmith_div_i32(i32(-1i) * -(~global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), arg_0) | global1[_wgslsmith_index_u32(~4294967295u, 23u)];
    var var_4 = Struct_5(_wgslsmith_div_u32(abs(1u), 38125u), Struct_3(global4.x), Struct_1(select(!select(vec4<bool>(false, global4.x, arg_1.x, false), vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, true, false, var_2.x)), !select(vec4<bool>(true, true, global4.x, false), vec4<bool>(global4.x, arg_1.x, var_2.x, global4.x), vec4<bool>(arg_1.x, arg_1.x, global4.x, global4.x)), select(!vec4<bool>(false, arg_1.x, global4.x, global4.x), select(vec4<bool>(true, false, true, global4.x), vec4<bool>(arg_1.x, false, false, false), false), !vec4<bool>(true, true, arg_1.x, false))), vec2<i32>(max(firstLeadingBit(-668i), ~var_0.x), var_0.x >> ((u_input.a.x ^ 64106u) % 32u)), -867f, all(select(select(vec4<bool>(true, true, global4.x, false), vec4<bool>(arg_1.x, false, global4.x, global4.x), vec4<bool>(global4.x, true, global4.x, true)), select(vec4<bool>(arg_1.x, global4.x, arg_1.x, false), vec4<bool>(true, true, false, arg_1.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x)), true))), Struct_4(Struct_3(true), u_input.a.yx));
    return var_4.d.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(837f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1120f * -436f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1168f + -697f), _wgslsmith_f_op_f32(810f - 617f)))), _wgslsmith_f_op_f32(func_3(true)));
    let var_0 = Struct_2(~u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xy)) == _wgslsmith_div_u32(u_input.a.x, countOneBits(firstTrailingBit(4294967295u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -318f, -2302f, -636f), vec4<f32>(-321f, -205f, -112f, 218f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1184f, 707f, -204f, 562f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1218f, 733f, 189f, -402f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-222f, -514f, 2249f, -638f))))))), !(!select(!vec3<bool>(global4.x, global4.x, false), select(vec3<bool>(global4.x, true, false), vec3<bool>(false, global4.x, true), vec3<bool>(arg_0.a, global4.x, true)), vec3<bool>(true, true, true))), Struct_1(select(!select(vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(arg_0.a, global4.x, false, true), vec4<bool>(true, global4.x, false, false)), vec4<bool>(arg_0.a, true, false, arg_0.a), false), ~(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 43056i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(312f))), -701f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(126f, -148f)), _wgslsmith_f_op_f32(f32(-1f) * -1649f)) >= _wgslsmith_f_op_f32(-333f * -850f)));
    var var_1 = ~firstLeadingBit(func_2(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(var_0.a, u_input.a.x), abs(var_0.a)), func_1(global1[_wgslsmith_index_u32(1u, 23u)], !vec3<bool>(true, var_0.d.x, var_0.e.a.x)), arg_0.a, ~var_0.e.b));
    global2 = arg_1.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = global3[_wgslsmith_index_u32(0u, 9u)];
    global1 = array<i32, 23>();
    var var_2 = func_5(func_1(2147483647i, vec3<bool>((31464u & u_input.a.x) < 1u, global4.x, true)), -vec3<i32>(1i & global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 0i, i32(-1i) * -1i) & abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.x, var_1.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<i32>(2147483647i, 0i, -1i)))));
    var var_3 = var_1.c;
    var var_4 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(reverseBits(global1[_wgslsmith_index_u32(2701u, 23u)]), global1[_wgslsmith_index_u32(1u, 23u)] | 2147483647i, ~global1[_wgslsmith_index_u32(var_2.a, 23u)], 16082i)), min(vec4<i32>(~33449i, 32220i, 0i, var_1.b.x ^ 0i), vec4<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 23u)], var_1.b.x), _wgslsmith_sub_i32(var_1.b.x, var_2.e.b.x), var_2.e.b.x, ~25829i))), abs(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yz, vec2<u32>(var_2.a, var_2.a)), ~u_input.a.yx)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1146f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(Struct_3(false), vec3<i32>(39664i, var_1.b.x, global1[_wgslsmith_index_u32(6937u, 23u)])).e.c)), _wgslsmith_f_op_f32(-var_1.c)));
}

