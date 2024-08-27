struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_4 = Struct_4(true, Struct_1(-1i, vec4<bool>(true, false, false, true)), -42704i, Struct_3(Struct_1(1572i, vec4<bool>(false, false, false, true))), true);

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1697f, 243f, 929f), vec3<f32>(-1354f, 664f, -2554f), vec3<f32>(-757f, -274f, 656f), vec3<f32>(1369f, -555f, -1000f));

var<private> global3: array<f32, 18> = array<f32, 18>(1154f, -681f, 450f, -2100f, -1491f, -580f, -481f, 1195f, 959f, -814f, -824f, 1027f, 2056f, 382f, -273f, -615f, 1000f, 512f);

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-181f - _wgslsmith_f_op_f32(-arg_0.x)), global3[_wgslsmith_index_u32(1u, 18u)]) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(90461u, 18u)] - arg_0.x) + _wgslsmith_f_op_f32(arg_0.x * -1169f))))));
    global3 = array<f32, 18>();
    let var_1 = Struct_1(global1.c, global1.d.a.b);
    let var_2 = 18963i;
    global1 = Struct_4(true, Struct_1(var_2, var_1.b), u_input.a, Struct_3(Struct_1(i32(-1i) * -1i, var_1.b)), true);
    return ~(~1i);
}

fn func_2() -> u32 {
    var var_0 = global1.d.a;
    global0 = reverseBits(-5509i);
    let var_1 = _wgslsmith_mod_i32(func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(910f, global3[_wgslsmith_index_u32(1u, 18u)], -395f, -1460f), vec4<f32>(552f, 611f, global3[_wgslsmith_index_u32(13274u, 18u)], -127f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(1u, 18u)], -1395f, 1465f, global3[_wgslsmith_index_u32(1u, 18u)]), vec4<f32>(global3[_wgslsmith_index_u32(34602u, 18u)], global3[_wgslsmith_index_u32(101129u, 18u)], 512f, global3[_wgslsmith_index_u32(0u, 18u)]))))))), -2147483647i);
    let var_2 = global1.d.a.b.yzx;
    global0 = _wgslsmith_add_i32(u_input.a, -_wgslsmith_div_i32(reverseBits(global1.b.a) ^ 1i, 136336i));
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(~122209u, ~countOneBits(1u)), vec2<u32>(1u, 1u));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<f32>) -> StorageBuffer {
    var var_0 = global1.b.a;
    global2 = array<vec3<f32>, 4>();
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.c, max(global1.d.a.a, 3113i)), max(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.d.a.a, u_input.a), vec2<i32>(u_input.a, global1.c)), vec2<i32>(u_input.a, -1i))) << (abs(arg_0.zx) % vec2<u32>(32u)), abs(vec2<i32>(~global1.d.a.a >> (_wgslsmith_sub_u32(arg_0.x, 26877u) % 32u), ~1i)));
    var var_2 = select(global4.wyw, !global4.yxz, true);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(-190f * global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.x, ~arg_0.x), 18u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(623f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(trunc(-1352f))))), 190f);
    return StorageBuffer(arg_3.x, vec3<i32>(-3486i, var_1.x, 0i), var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> StorageBuffer {
    global3 = array<f32, 18>();
    global3 = array<f32, 18>();
    let var_0 = countOneBits(vec3<u32>(_wgslsmith_mod_u32(~11069u, ~0u) << (_wgslsmith_div_u32(~3392u, 4294967295u) % 32u), 1u, ~15675u));
    return func_4(vec4<u32>(0u, 0u, func_2(), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -348f))) + arg_2.x)), ~var_0, arg_2.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(-7423i, global1.d.a.b), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~(~9302u), 18u)] + -825f), global2[_wgslsmith_index_u32(63617u, 4u)]);
}

