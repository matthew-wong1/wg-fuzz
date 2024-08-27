struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), 1200f, true);

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 28>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> bool {
    global0 = Struct_1(select(global0.a, vec4<bool>(any(vec2<bool>(false, global0.c)), global1.c, global1.c, !(!global0.c)), select(all(!global0.a), any(vec2<bool>(global1.a.x, global0.a.x)), false)), global0.b, ~(~reverseBits(9531u)) < (((arg_1 | arg_1) >> (arg_1 % 32u)) & ~arg_1));
    var var_0 = (1u ^ max(4294967295u, ~_wgslsmith_mod_u32(45746u, arg_1))) < (_wgslsmith_add_u32(min(firstTrailingBit(arg_1), arg_1), ~_wgslsmith_div_u32(arg_1, arg_1)) << (max(_wgslsmith_mult_u32(13799u, 3697u), _wgslsmith_add_u32(0u, 0u)) % 32u));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.b))));
    var var_2 = arg_0.yx;
    let var_3 = global2[_wgslsmith_index_u32(30595u, 28u)];
    return any(global1.a);
}

fn func_3() -> f32 {
    var var_0 = !global1.c;
    let var_1 = global0.a.x;
    var_0 = all(!vec4<bool>(global0.c, func_1(u_input.e.wwz, _wgslsmith_clamp_u32(33707u, 1u, 0u)), select(global1.a.x, global0.c, func_1(vec3<i32>(6023i, u_input.a.x, -26609i), 36824u)), global0.c));
    var var_2 = any(vec3<bool>(true, !any(vec2<bool>(global1.c, true)), !global1.a.x));
    var_2 = any(select(select(select(global1.a, select(global1.a, global0.a, global1.a), all(vec2<bool>(false, global1.c))), select(vec4<bool>(false, global1.a.x, true, true), !global1.a, global1.b > global1.b), all(select(global0.a.yy, global1.a.yy, global0.a.xx))), vec4<bool>(global0.c, any(!vec2<bool>(true, global1.c)), false, any(global1.a.ww)), vec4<bool>(30881u > _wgslsmith_clamp_u32(1u, 45048u, 67579u), all(select(global1.a.xww, vec3<bool>(global1.c, true, true), vec3<bool>(true, false, global0.c))), select(false, global1.a.x, u_input.e.x >= -1i), !func_1(u_input.e.wwy, 4294967295u))));
    return global1.b;
}

fn func_2(arg_0: f32) -> u32 {
    global1 = Struct_1(vec4<bool>(true, all(!(!global1.a.xxw)), global1.a.x, true), 154f, u_input.c.x > 1i);
    let var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(522f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(sign(global0.b)))))), global0.b), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(420f, _wgslsmith_f_op_f32(-662f - -322f), false)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.b)), global1.b)))))));
    var var_2 = Struct_1(select(global1.a, global0.a, global1.c), _wgslsmith_f_op_f32(func_3()), !func_1(vec3<i32>(2147483647i, u_input.c.x, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29289u, 16921u, 1u), vec4<u32>(47442u, 5707u, 107099u, 18649u))) != false);
    let var_3 = ~(-_wgslsmith_mod_vec4_i32(u_input.e & _wgslsmith_div_vec4_i32(vec4<i32>(6104i, 51157i, -44521i, u_input.a.x), u_input.d), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-7402i, 59345i, u_input.e.x), vec3<i32>(u_input.a.x, 2147483647i, -21124i)), -u_input.c.x, ~(-2802i), u_input.b)));
    return 81333u;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global1 = arg_2;
    global1 = arg_2;
    var var_0 = global2[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_f32(-arg_2.b)), 28u)];
    var var_1 = Struct_1(!select(global1.a, vec4<bool>(true, true, true, true), all(global1.a)), _wgslsmith_f_op_f32(1472f * _wgslsmith_f_op_f32(-global0.b)), true);
    let var_2 = ~(~vec2<u32>(~(0u & arg_0), abs(var_0.x)));
    return Struct_2(~min(reverseBits(vec3<u32>(22817u, var_2.x, arg_0)), ~_wgslsmith_add_vec3_u32(vec3<u32>(4795u, 0u, var_2.x), vec3<u32>(0u, var_2.x, var_0.x))), 879f, Struct_1(select(arg_2.a, !arg_2.a, false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_2.b)))))), !any(arg_2.a.xwz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -30767i;
    let var_1 = ~(~_wgslsmith_mod_i32(1i, -2147483647i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-393f, global0.b, global0.b) - vec3<f32>(global0.b, global0.b, global1.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b, 1784f, global0.b), vec3<f32>(global1.b, 1399f, -136f), false)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1615f, -900f, 1027f), vec3<f32>(-1649f, -463f, global0.b))))))));
    global1 = Struct_1(!(!global1.a), _wgslsmith_f_op_f32(floor(-1052f)), true);
    var_0 = var_1;
    let var_3 = vec4<bool>(func_1(vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, -46104i), var_1, -37958i), ~(~4294967295u)) & any(global0.a.yyw), u_input.d.x < -27465i, any(vec4<bool>(false, !all(vec3<bool>(false, true, global1.a.x)), global0.c, select(all(global1.a.zz), global0.c, global1.a.x))), -(_wgslsmith_dot_vec3_i32(vec3<i32>(-34776i, var_1, -4019i), u_input.e.zwx) >> (max(12920u, 0u) % 32u)) <= _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(var_1, var_1)), -u_input.d.zx), ~max(u_input.d.x, -9907i), firstTrailingBit(abs(u_input.c.x))));
    global2 = array<vec2<u32>, 28>();
    var var_4 = func_4(func_2(global1.b), select(true, all(!vec3<bool>(global1.a.x, true, global0.a.x)), true), Struct_1(select(select(vec4<bool>(true, false, global0.c, false), vec4<bool>(true, true, false, true), vec4<bool>(true, global0.c, false, var_3.x)), select(select(var_3, global0.a, var_3.x), !vec4<bool>(false, global0.a.x, global1.a.x, true), !global1.a), any(vec2<bool>(var_3.x, var_3.x))), 1016f, true), !(!all(select(vec4<bool>(global1.c, global0.c, var_3.x, var_3.x), vec4<bool>(global0.a.x, false, var_3.x, var_3.x), vec4<bool>(var_3.x, global1.a.x, var_3.x, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_mult_i32(u_input.e.x, u_input.d.x) >> (var_4.a.x % 32u)), (firstTrailingBit(-1i) | 0i) & -(1i << (_wgslsmith_sub_u32(var_4.a.x, 60838u) % 32u)), vec4<i32>(var_1, ~(-(i32(-1i) * -1i)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-33918i, -2147483647i, 2147483647i, var_1)), -u_input.e | _wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(2147483647i, u_input.b, 1i, u_input.b))), firstTrailingBit(countOneBits(-1i))));
}

