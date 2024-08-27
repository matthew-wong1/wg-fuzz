struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(11777i, vec4<bool>(true, false, true, false), vec3<i32>(35625i, -1i, 1i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(firstLeadingBit(abs(1i)), !vec4<bool>(!all(vec4<bool>(false, false, arg_0.b.x, arg_2.x)), any(!vec3<bool>(global0.b.x, true, false)), global0.b.x, global0.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-912i, -1i, -18259i), countOneBits(select(arg_3 ^ vec3<i32>(arg_3.x, arg_0.a, arg_0.c.x), vec3<i32>(u_input.a, 14813i, arg_0.c.x), !arg_0.b.xxw))));
    let var_1 = vec3<bool>(true, false, arg_2.x);
    var var_2 = ~(~vec4<u32>(u_input.b, 4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 5337u, u_input.b, 11359u))), ~min(u_input.b, 0u)));
    var var_3 = Struct_2(global0.c.x);
    let var_4 = ~(~vec2<u32>(var_2.x, ~67063u));
    return var_0.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = arg_1.x;
    global0 = Struct_1(1i, vec4<bool>(func_3(Struct_1(28652i, global0.b, global0.c), select(global0.b.xx, vec2<bool>(global0.b.x, true), false), select(select(global0.b.xx, global0.b.xx, vec2<bool>(global0.b.x, global0.b.x)), global0.b.xw, false | global0.b.x), _wgslsmith_mult_vec3_i32(global0.c ^ global0.c, global0.c)), (-484f > _wgslsmith_f_op_f32(var_0 * arg_1.x)) & global0.b.x, true, var_0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1121f + 1182f) - arg_1.x)), global0.c);
    let var_1 = false;
    let var_2 = _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(11965u, u_input.b) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(34952u, u_input.b), vec2<u32>(4294967295u, 32798u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1021u), vec2<u32>(4294967295u, 0u))), max(vec2<u32>(~(~4294967295u), ~u_input.b | 20550u), vec2<u32>(29624u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29043u, 1208u, 20762u), vec4<u32>(u_input.b, 21109u, 0u, u_input.b)))));
    global0 = Struct_1(24007i, global0.b, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-31160i, -1i >> (1u % 32u), _wgslsmith_add_i32(arg_0.a, global0.c.x), ~u_input.a), countOneBits(-vec4<i32>(global0.a, 45340i, -23477i, -33517i))), i32(-1i) * -1i, _wgslsmith_add_i32(-_wgslsmith_mod_i32(0i, 24668i), arg_0.a)));
    return vec4<bool>(true, !var_1, var_1, select(global0.b.x, any(select(select(global0.b.yyw, global0.b.zyw, global0.b.yxw), vec3<bool>(global0.b.x, var_1, global0.b.x), false)), global0.b.x));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(firstLeadingBit(_wgslsmith_sub_i32(1i ^ u_input.a, select(44926i, ~2147483647i, any(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false))))));
    let var_1 = !select(!(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false)), select(select(global0.b, global0.b, vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x)), !func_2(var_0, vec2<f32>(-984f, -604f)), !vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x)), any(func_2(Struct_2(u_input.a), vec2<f32>(-240f, 1600f)).yx));
    var var_2 = true;
    let var_3 = true;
    var var_4 = -980f;
    return -282f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 1f));
    var var_1 = Struct_1(-10350i, vec4<bool>(-select(global0.a, global0.c.x, false) > ~(global0.c.x & u_input.a), true, !(global0.b.x | true) && any(!global0.b), true), firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(-21647i, -1i), -2147483647i, firstTrailingBit(-u_input.a))));
    var var_2 = var_0.x;
    global0 = Struct_1(1i, var_1.b, vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(var_1.c.xx, vec2<i32>(u_input.a, -var_1.a)), ~(var_1.a & min(2147483647i, u_input.a))));
    let var_3 = -541f;
    global0 = Struct_1(_wgslsmith_mod_i32(countOneBits(-var_1.c.x), -_wgslsmith_mod_i32(-40079i, _wgslsmith_mod_i32(-3062i, var_1.c.x))), !global0.b, max(~var_1.c, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2061i, 22559i, -2147483647i)), -firstTrailingBit(vec3<i32>(var_1.a, -1i, -2147483647i)))));
    let var_4 = Struct_2(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, 859u), 22001u, ~38857u, 3403u) >> ((~vec4<u32>(1u, u_input.b, u_input.b, 0u) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))) % vec4<u32>(32u)), ~(~vec4<u32>(58430u, 19101u, u_input.b, u_input.b))), vec3<i32>(-1i | _wgslsmith_clamp_i32(29624i, abs(var_4.a), _wgslsmith_div_i32(-2147483647i, u_input.a)), -global0.a, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(5272i, var_1.a, 1i, -50515i), select(vec4<i32>(11202i, 2535i, u_input.a, 21855i), vec4<i32>(global0.a, -12354i, u_input.a, 40561i), vec4<bool>(true, var_1.b.x, var_1.b.x, global0.b.x))))), ~_wgslsmith_mult_i32(~(-23001i), u_input.a));
}

