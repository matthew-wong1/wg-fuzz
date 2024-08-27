struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 24> = array<u32, 24>(0u, 21983u, 4294967295u, 4294967295u, 3580u, 4294967295u, 4294967295u, 70475u, 4294967295u, 28207u, 1u, 4294967295u, 4294967295u, 0u, 76049u, 1u, 74412u, 34588u, 4294967295u, 79397u, 68429u, 4294967295u, 18369u, 32368u);

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 3>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> bool {
    var var_0 = u_input.c.x;
    return !(true && !global0.a.d);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: i32) -> bool {
    global0 = global3[_wgslsmith_index_u32(countOneBits(~(~firstTrailingBit(u_input.c.x) >> (arg_1 % 32u))), 3u)];
    let var_0 = vec3<bool>((global2.a.c.x < -1716f) != true, 3776u < global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c.x, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)] >> (41053u % 32u)), 24u)], all(global2.d));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global2.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c.x, _wgslsmith_f_op_f32(global0.a.c.x + 984f), -1000f)), !global2.d)));
    var var_2 = Struct_2(arg_0, select(-(~u_input.a.zx) >> (u_input.c % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(global0.a.a.x), select(-1i, arg_0.b, arg_0.d)), 1i), select(var_0.yz, global2.d.zx, vec2<bool>(arg_0.e, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2.yyy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.x, -192f, var_1.x) + global2.c)))), vec3<bool>(arg_0.d, any(vec3<bool>(false, global2.d.x, true)) || false, func_2()));
    let var_3 = Struct_1(countOneBits(global4.a ^ global2.a.a), _wgslsmith_sub_i32(-78967i, 65539i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1673f, _wgslsmith_f_op_f32(round(-213f))))), !(_wgslsmith_add_i32(arg_3, abs(u_input.d.x)) < _wgslsmith_mod_i32(arg_3, -62666i)), false);
    return var_2.a.e;
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(7825i, arg_0.a.a.x >> (48496u % 32u)), _wgslsmith_mod_i32(-u_input.d.x & 1i, ~firstLeadingBit(u_input.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(global4.c.x * 1003f))), !func_2(), global0.a.d), global4.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-781f, _wgslsmith_f_op_f32(select(-774f, arg_0.a.c.x, true)), _wgslsmith_f_op_f32(-global4.c.x)), global2.c)), !select(select(global2.d, vec3<bool>(true, true, global0.a.d), true), vec3<bool>(true, any(vec3<bool>(global4.e, true, global4.d)), global2.d.x || true), !select(true, true, false)));
    var var_1 = Struct_2(Struct_1(select(vec2<i32>(-1i) * -vec2<i32>(-86163i, -1301i), ~_wgslsmith_div_vec2_i32(global4.a, arg_0.a.a), true), _wgslsmith_mod_i32(4513i, -2147483647i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.a.c))), global4.d, any(vec2<bool>(func_3(Struct_1(vec2<i32>(2147483647i, global4.a.x), 10272i, vec2<f32>(629f, -1000f), global0.a.d, var_0.a.d), u_input.c.x, vec4<f32>(global2.a.c.x, global0.a.c.x, global2.c.x, arg_0.a.c.x), global4.a.x), select(var_0.d.x, false, global0.a.d)))), vec2<i32>(u_input.a.x, global4.a.x), global2.c, vec3<bool>((_wgslsmith_div_f32(arg_0.a.c.x, arg_0.a.c.x) <= _wgslsmith_f_op_f32(f32(-1f) * -285f)) && ((u_input.c.x >= global1[_wgslsmith_index_u32(23009u, 24u)]) | all(vec2<bool>(arg_0.a.d, global0.a.d))), true && any(vec2<bool>(global0.a.d, global2.a.e)), var_0.a.e));
    let var_2 = 1000f;
    global3 = array<Struct_3, 3>();
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.a.a.x, -51704i << (~global1[_wgslsmith_index_u32(67657u, 24u)] % 32u)), global4.b ^ -65910i) >> (firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, 1u | global1[_wgslsmith_index_u32(max(25120u, 15700u), 24u)])) % 32u);
    return _wgslsmith_add_i32(1i, global4.a.x << (firstTrailingBit(0u) % 32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = vec3<i32>(-_wgslsmith_mod_i32(~global0.a.a.x, reverseBits(-58237i)), -119966i, -2147483647i);
    let var_1 = global3[_wgslsmith_index_u32(u_input.c.x, 3u)];
    let var_2 = -vec3<i32>(~(-global4.a.x) ^ global0.a.a.x, u_input.b.x, -func_1(global3[_wgslsmith_index_u32(~69649u, 3u)]));
    var var_3 = global0.a.d;
    global0 = global3[_wgslsmith_index_u32(14272u, 3u)];
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(reverseBits(abs(u_input.c)), (~u_input.c | min(~vec2<u32>(u_input.c.x, 79011u), min(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9064u, 24u)], 24u)]), vec2<u32>(0u, u_input.c.x)))) >> (u_input.c % vec2<u32>(32u)));
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.c.xz, vec2<f32>(-463f, global2.a.c.x))) + global0.a.c)), func_1(Struct_3(Struct_1(vec2<i32>(u_input.d.x, global2.b.x), -1i, global4.c, global2.a.d, false))), Struct_2(Struct_1(max(vec2<i32>(-2147483647i, global2.a.a.x), global0.a.a), u_input.b.x, _wgslsmith_f_op_vec2_f32(-global4.c), false, true), u_input.b.yz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c.x, global4.c.x, -958f)) * _wgslsmith_f_op_vec3_f32(select(global2.c, global2.c, false))), !select(global2.d, vec3<bool>(global2.d.x, false, false), global0.a.d)), select(!global2.d, global2.d, !(!global2.d))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(2147483647i, global4.b), global0.a.b), countOneBits(_wgslsmith_div_vec2_i32(global2.a.a, global4.a))), -vec2<i32>(~18519i, ~u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(global2.c, global2.c)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2.c), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.c.x, global0.a.c.x, -1810f), vec3<f32>(global0.a.c.x, global2.a.c.x, global4.c.x)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1590f, -388f, 1450f) - global2.c))))), vec3<bool>(false, !all(global2.d), global0.a.e));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(-global4.c.x);
    var var_4 = !(!(!func_4(_wgslsmith_f_op_vec2_f32(exp2(global2.a.c)), firstTrailingBit(3263i), Struct_2(Struct_1(global0.a.a, -15510i, global4.c, global4.d, true), vec2<i32>(var_2.b.x, 22708i), vec3<f32>(global0.a.c.x, -528f, var_1.a.c.x), var_1.d), !var_1.d).d));
    var var_5 = _wgslsmith_f_op_f32(677f - global0.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), global0.a.c.x, var_2.a.e)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.x))) + 1246f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c.x)), u_input.c.x, vec4<f32>(-1891f, global4.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-770f, global2.a.c.x))))), global2.c.x));
}

