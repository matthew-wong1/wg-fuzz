struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: Struct_1;

var<private> global2: Struct_3;

var<private> global3: u32 = 103089u;

var<private> global4: array<i32, 3> = array<i32, 3>(-1i, -73i, -5758i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-631f, 328f) * vec2<f32>(627f, 264f)))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-943f, 1310f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(370f, 1259f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(341f, 649f) - vec2<f32>(1000f, 760f))))))));
    let var_1 = vec2<u32>(global1.c, global1.c);
    let var_2 = ~(~u_input.a & ~1u);
    var var_3 = Struct_2(global2.a.a, -global2.a.b, global1.c);
    let var_4 = abs(-32437i);
    return global2.a;
}

fn func_3() -> vec4<bool> {
    global2 = Struct_3(global2.a);
    var var_0 = Struct_3(global2.a);
    global2 = Struct_3(func_1(u_input.a));
    global1 = global2.a.a;
    var var_1 = ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global2.a.c), vec2<u32>(u_input.a, 26418u) | vec2<u32>(global2.a.c, var_0.a.a.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(36947u, var_0.a.a.c), vec2<u32>(4294967295u, 42885u), vec2<u32>(u_input.a, global2.a.c)))));
    return !vec4<bool>(global2.a.a.d, any(!select(vec3<bool>(true, var_0.a.a.d, true), vec3<bool>(true, false, global2.a.a.d), var_0.a.a.d)), false, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1966f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) * -258f), 628f), !arg_1))));
    var var_1 = -min(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_2.a, -arg_2.a), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.a.a.a.x, -2147483647i, global1.a.x, arg_3.a.b), vec4<i32>(2147483647i, 22213i, -1i, 7244i))), -(_wgslsmith_add_i32(-1i, arg_2.b) | arg_3.a.a.x));
    let var_2 = global2.a.c;
    global3 = arg_3.a.c;
    var var_3 = func_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(8510u, 88105u), ~u_input.a)).a;
    return all(arg_0);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global0 = array<vec3<u32>, 14>();
    var var_0 = !func_1(arg_1.c | (~global1.c ^ ~4294967295u)).a.d;
    global4 = array<i32, 3>();
    global0 = array<vec3<u32>, 14>();
    let var_1 = !vec4<bool>(any(vec2<bool>(arg_0.a.d, true)) & !func_1(0u).a.d, !func_4(func_3(), arg_1.d, arg_1, func_1(arg_1.c)), true, arg_0.a.d);
    return 515f;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = global2.a;
    global0 = array<vec3<u32>, 14>();
    global3 = u_input.a;
    let var_1 = -188f;
    global0 = array<vec3<u32>, 14>();
    return Struct_3(func_1(_wgslsmith_mod_u32(~min(24646u, u_input.a), firstLeadingBit(4707u & global2.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(func_1(global2.a.c | global2.a.c), global2.a.a)) - -1855f), vec4<i32>(-25725i, firstLeadingBit(global2.a.a.b), select(_wgslsmith_add_i32(~global4[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_mod_i32(0i, global2.a.b.x)), _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(~0u, 3u)], select(0i, 28719i, true)), global1.d), abs(_wgslsmith_div_i32(global1.a.x, _wgslsmith_dot_vec3_i32(global2.a.b, global2.a.b)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1340f))), -1128f, -433f, _wgslsmith_f_op_f32(f32(-1f) * -646f)));
    var var_2 = _wgslsmith_mult_i32(25983i, var_0.a.b.x) ^ -34538i;
    global0 = array<vec3<u32>, 14>();
    global2 = Struct_3(Struct_2(Struct_1(global1.a, _wgslsmith_dot_vec4_i32(var_0.a.a.a | global1.a, vec4<i32>(50704i, 37631i, global1.b, 20327i)), ~66521u, 24689i >= global4[_wgslsmith_index_u32(u_input.a, 3u)]), _wgslsmith_mult_vec3_i32(select(global2.a.a.a.yxy, abs(vec3<i32>(-1i, var_0.a.a.b, -56080i)), global1.d), global2.a.b), _wgslsmith_add_u32(u_input.a, ~4786u) << (u_input.a % 32u)));
    var var_3 = var_1.x;
    let var_4 = abs(-_wgslsmith_div_i32(_wgslsmith_sub_i32(-56517i, 1i) ^ ~global4[_wgslsmith_index_u32(u_input.a, 3u)], global4[_wgslsmith_index_u32(~65624u, 3u)] >> (min(0u, 29460u) % 32u)));
    var var_5 = global1.a.zzx;
    var_5 = reverseBits(global2.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(var_1.wz)), vec4<u32>(0u, global2.a.c, u_input.a, u_input.a), vec4<f32>(_wgslsmith_f_op_f32(max(-2098f, 414f)), -1266f, 1512f, _wgslsmith_f_op_f32(-var_1.x)), -abs(vec4<i32>(-61539i, i32(-1i) * -25323i, 2147483647i, func_1(4294967295u).b.x)));
}

