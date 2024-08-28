struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: Struct_4;

var<private> global2: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> u32 {
    var var_0 = arg_0.a.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) * _wgslsmith_f_op_f32(f32(-1f) * -165f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1695f, -344f)))))));
    var var_2 = _wgslsmith_sub_u32(u_input.c.x, ~(u_input.c.x ^ _wgslsmith_mod_u32(~u_input.a.x, global1.c)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -535f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), var_1.x)), 887f)));
    let var_3 = -560f;
    return var_0.b.x;
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> u32 {
    global2 = select(vec4<i32>(global2.x >> (34952u % 32u), ~12265i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-u_input.d, arg_0), global2.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.b, firstLeadingBit(vec3<i32>(535i, u_input.b.x, global2.x))), min(countOneBits(vec3<i32>(global2.x, arg_1.x, u_input.b.x)), select(vec3<i32>(1i, 8943i, arg_0), global2.yzz, true)))), countOneBits(-arg_1), global1.a.a.c);
    var var_0 = -534f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3)));
    var var_2 = ~global1.c;
    let var_3 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -268f, _wgslsmith_f_op_f32(step(976f, arg_3)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, arg_3, arg_3), vec3<f32>(-751f, arg_3, 1680f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2317f, -940f, arg_3))))), select(any(global1.a.a.c), any(select(select(global1.a.a.c.zxw, global1.b.a.xxx, true), !vec3<bool>(global1.a.a.c.x, global0[_wgslsmith_index_u32(global1.c, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), global1.a.a.c.x)), !(global1.a.a.a <= 118933u) && true), -1000f, global1.a.a);
    return _wgslsmith_div_u32(~(~(~global1.c) & ~(~global1.c)), 4294967295u);
}

fn func_4(arg_0: u32) -> vec2<bool> {
    let var_0 = global1.a;
    global1 = Struct_4(global1.a, Struct_1(var_0.a.c), 1u);
    var var_1 = !vec4<bool>(any(!global1.b.a.xx), true, false, var_0.a.c.x);
    global1 = Struct_4(Struct_3(global1.a.a), global1.b, ~_wgslsmith_add_u32(~269u, ~(arg_0 & var_0.a.a)));
    let var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(979f * 471f) * _wgslsmith_div_f32(384f, -631f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(259f + -920f) * _wgslsmith_f_op_f32(round(654f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-703f, 866f, false))))), all(global1.a.a.c.zw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(902f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f))), Struct_2(func_2(Struct_4(global1.a, Struct_1(global1.a.a.c), ~arg_0), max(vec3<i32>(u_input.b.x, 2147483647i, -12946i), vec3<i32>(-2889i, global2.x, -2147483647i) & u_input.b)), ~(vec3<u32>(global1.a.a.a, 0u, 0u) & var_0.a.b), vec4<bool>(global0[_wgslsmith_index_u32(1u, 4u)], all(vec3<bool>(true, global1.a.a.c.x, true)), false, ~34127i >= select(0i, u_input.d, false))));
    return select(vec2<bool>(true, true), select(vec2<bool>(true, true), !global1.a.a.c.zy, !vec2<bool>(var_0.a.c.x, var_2.a.x <= 1050f)), !vec2<bool>(var_1.x != var_2.d.c.x, var_2.a.x >= _wgslsmith_f_op_f32(-var_2.a.x)));
}

fn func_1(arg_0: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_4(global1.a, global1.b, ~_wgslsmith_add_u32(31215u << (global1.a.a.b.x % 32u), func_2(Struct_4(Struct_3(Struct_2(global1.c, vec3<u32>(4294967295u, u_input.a.x, global1.c), vec4<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true, global0[_wgslsmith_index_u32(global1.c, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)]))), global1.b, 25519u), global2.yyw)) << (global1.c % 32u));
    let var_1 = global1.b;
    var var_2 = false;
    var_2 = !var_1.a.x;
    var var_3 = select(global1.a.a.c.xx, func_4(~(1u & func_3(global2.x, vec4<i32>(u_input.b.x, arg_0.x, 2147483647i, 0i), var_0.a.a.c.x, 1000f))), var_0.a.a.c.wz);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-902f))), 1612f, _wgslsmith_div_f32(-890f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-993f, -1227f), _wgslsmith_div_f32(-1681f, 659f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-147f, -1011f))) - -976f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -575f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-232f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_1(-_wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, global2.x, -7603i, -1i), vec4<i32>(-1i, global2.x, -2147483647i, -39435i))), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.d, 22126i, _wgslsmith_mod_i32(-20582i, -9385i)))));
    global0 = array<bool, 4>();
    global1 = Struct_4(Struct_3(global1.a.a), global1.b, global1.a.a.a);
    global2 = -select(max(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, u_input.d, -41983i, u_input.b.x) & vec4<i32>(u_input.b.x, 20252i, global2.x, 16544i), vec4<i32>(1437i, 1i, -2147483647i, u_input.d) | vec4<i32>(u_input.b.x, 2147483647i, 1i, u_input.b.x)), reverseBits(-vec4<i32>(global2.x, -1i, global2.x, u_input.b.x))), firstLeadingBit(vec4<i32>(u_input.b.x, u_input.d, global2.x, 15305i)), all(!func_4(9771u)));
    var var_3 = global1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1106f))) - _wgslsmith_div_f32(-1304f, _wgslsmith_f_op_f32(-137f + 518f)))), global2.x, global1.a.a.a);
}

