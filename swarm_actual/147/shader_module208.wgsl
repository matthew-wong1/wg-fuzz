struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 12>;

var<private> global2: array<i32, 18> = array<i32, 18>(47693i, i32(-2147483648), -20587i, i32(-2147483648), -1i, i32(-2147483648), 28363i, 0i, i32(-2147483648), 4958i, 0i, 28566i, 21424i, 17563i, -4186i, -3074i, 30826i, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = min(55255u, 1u);
    let var_1 = Struct_1(u_input.a.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.b + -1143f), _wgslsmith_f_op_f32(step(422f, global0.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(683f, 641f))))));
    let var_2 = vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 1i, global2[_wgslsmith_index_u32(106031u, 18u)]))), -1i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xyx, reverseBits(vec3<u32>(4294967295u, 64687u, 0u)) >> (select(u_input.b.wyy, vec3<u32>(var_0, var_0, u_input.b.x), false) % vec3<u32>(32u))), 18u)]));
    let var_3 = Struct_4(Struct_2((~1u & ~u_input.b.x) << (_wgslsmith_div_u32(0u, ~global0.a) % 32u), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, 801f))))));
    var var_4 = vec3<bool>((var_0 >= abs(44294u)) == false, true, !(!any(vec2<bool>(false, true))));
    return _wgslsmith_mult_u32(~1326u, var_3.a.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5) -> bool {
    var var_0 = max(global2[_wgslsmith_index_u32(~func_3(), 18u)], global2[_wgslsmith_index_u32(firstLeadingBit(func_3()) & _wgslsmith_add_u32(0u, global0.a), 18u)] << (u_input.b.x % 32u));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - arg_1.b.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -241f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + 687f)))))));
    let var_2 = ~(~u_input.a);
    let var_3 = vec2<bool>(!arg_1.a.x, false);
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_2.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 45833i), ~arg_1.e.a.a), _wgslsmith_add_i32(-22597i, 41487i)), ~max(vec4<i32>(-2147483647i, countOneBits(global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), -2147483647i, u_input.a.x), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(~43312u, 18u)], var_2.x, u_input.a.x)));
    return all(arg_1.c.zy);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> vec2<i32> {
    let var_0 = u_input.b;
    global1 = array<Struct_5, 12>();
    var var_1 = vec2<bool>(all(select(vec4<bool>(any(vec3<bool>(true, false, arg_0.x)), u_input.a.x == global2[_wgslsmith_index_u32(u_input.b.x, 18u)], all(vec2<bool>(false, arg_0.x)), arg_0.x), select(select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(true, arg_0.x, true, false)), select(vec4<bool>(false, false, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false), false), func_2(arg_0, global1[_wgslsmith_index_u32(0u, 12u)])), !(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))), !any(!vec2<bool>(arg_0.x, arg_0.x)));
    let var_2 = arg_1;
    var var_3 = vec3<f32>(var_2.b.x, -2500f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1065f, 285f)) * _wgslsmith_f_op_f32(ceil(538f)))), global0.b)));
    return vec2<i32>(~u_input.a.x, -10049i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 12>();
    let var_0 = u_input.a.x;
    var var_1 = vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(-var_0) & -2147483647i, ~(-(~u_input.a.x))), ~select(~(u_input.a.x | var_0), 1i, _wgslsmith_div_u32(u_input.b.x, u_input.b.x) > abs(0u)));
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(reverseBits(func_1(vec2<bool>(false, false), Struct_1(u_input.a.zx, vec2<f32>(global0.b, global0.b)), 1699f)) & _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(global0.a, 18u)]) | u_input.a.yy), u_input.a.yy), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, global0.b), vec2<f32>(global0.b, global0.b), false)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-444f, global0.b) * vec2<f32>(355f, -171f)), vec2<f32>(-1395f, 521f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f * global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - 267f))))));
    let var_3 = 0u & _wgslsmith_add_u32(31036u, _wgslsmith_mod_u32(4294967295u, 51552u) & ~u_input.b.x);
    let var_4 = Struct_2(firstLeadingBit(abs(countOneBits(func_3()))), _wgslsmith_f_op_f32(-1f));
    var_2 = Struct_1(u_input.a.zz, vec2<f32>(var_4.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b)))));
    var var_5 = u_input.b.x;
    var var_6 = !vec3<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))), -1198f > _wgslsmith_f_op_f32(select(-2130f, _wgslsmith_f_op_f32(max(var_2.b.x, 1284f)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, var_4.b, var_4.b, var_2.b.x))) - vec4<f32>(var_2.b.x, -856f, global0.b, global0.b))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1528f, -3102f, var_4.b, -1599f))))))));
}

