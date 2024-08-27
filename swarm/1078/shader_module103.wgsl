struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> i32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_mult_vec2_u32(min(abs(vec2<u32>(~arg_0, 4294967295u)), firstTrailingBit(~(~var_0.b.a.yw))), arg_1.b.a.xx);
    var_1 = var_0.b.a.zw;
    global0 = !select(!vec4<bool>(all(global0.yy), global0.x, any(global0.zxz), false), select(vec4<bool>(false, true, global0.x && global0.x, any(vec4<bool>(false, global0.x, global0.x, global0.x))), select(!vec4<bool>(true, false, true, global0.x), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x), !global0.x), global0.x || any(vec2<bool>(false, global0.x))), select(vec4<bool>(global0.x, global0.x, global0.x, select(global0.x, false, global0.x)), !select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, true, global0.x, global0.x)), !select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, global0.x, true, false), vec4<bool>(global0.x, false, global0.x, global0.x))));
    let var_2 = Struct_2(~_wgslsmith_sub_u32(_wgslsmith_add_u32(reverseBits(0u), min(var_1.x, arg_0)), firstTrailingBit(var_0.b.a.x)), firstLeadingBit(abs(29093u)), Struct_1(~arg_1.b.a & ~_wgslsmith_mult_vec4_u32(vec4<u32>(55476u, u_input.b, 4294967295u, var_0.b.a.x), arg_1.b.a), vec2<f32>(1f, 1f)));
    return u_input.d;
}

fn func_2() -> u32 {
    var var_0 = vec3<i32>(func_3(~u_input.b, Struct_3(560f, Struct_1(~vec4<u32>(u_input.b, u_input.b, 41294u, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, 576f) - vec2<f32>(1144f, -499f)))), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(u_input.b, u_input.b), 1u)), 8899i, 0i);
    let var_1 = Struct_1(~(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 45488u, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 49982u, u_input.b, 1u)), firstTrailingBit(vec4<u32>(27908u, 4294967295u, 0u, u_input.b))) & ~vec4<u32>(4294967295u, 1u, u_input.b, 1u)), vec2<f32>(951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f) - -1107f))));
    let var_2 = _wgslsmith_f_op_f32(sign(var_1.b.x));
    let var_3 = vec2<bool>(true, select(false, global0.x, true && all(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, true, false, false)))));
    var var_4 = -1642f;
    return ~(50631u ^ (var_1.a.x & var_1.a.x)) & ~firstTrailingBit(~2341u);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = 1u;
    let var_2 = vec4<u32>(var_1, ~(~0u), min(~_wgslsmith_mod_u32(4294967295u, ~arg_0.b), ~reverseBits(~u_input.b)), func_2());
    var var_3 = Struct_1(arg_0.c.a, _wgslsmith_f_op_vec2_f32(select(arg_0.c.b, vec2<f32>(_wgslsmith_div_f32(-547f, arg_0.c.b.x), arg_2.b.x), arg_1)));
    var var_4 = -2147483647i;
    return global0.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, !any(func_1(Struct_2(u_input.b, u_input.b, Struct_1(vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b), vec2<f32>(546f, -1448f))), global0.x, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<f32>(1134f, 239f)))), true, false);
    let var_0 = Struct_2(~u_input.b >> (u_input.b % 32u), ~_wgslsmith_sub_u32(firstLeadingBit(u_input.b), countOneBits(_wgslsmith_add_u32(u_input.b, 0u))), Struct_1(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, 27545u, 1199u, u_input.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1525f, _wgslsmith_f_op_f32(select(-1041f, -302f, true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1445f, 1963f), vec2<f32>(647f, -1068f), global0.yz))))));
    global0 = vec4<bool>(any(global0.xy), u_input.b < u_input.b, true, any(!global0.xzw));
    global0 = select(!select(!vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, u_input.b < u_input.b, false, true), vec4<bool>(all(global0.wy), all(vec3<bool>(false, global0.x, false)), !global0.x, !global0.x)), !vec4<bool>(_wgslsmith_f_op_f32(1602f - -632f) >= var_0.c.b.x, global0.x & true, select(any(vec4<bool>(global0.x, false, global0.x, global0.x)), any(vec2<bool>(false, true)), !global0.x), true), vec4<bool>(!global0.x, true, false, global0.x));
    var var_1 = ((_wgslsmith_add_u32(var_0.b, _wgslsmith_div_u32(u_input.b, 2947u)) >> (~53874u % 32u)) | (abs(firstLeadingBit(40280u)) & _wgslsmith_mult_u32(var_0.a, var_0.a | u_input.b))) ^ ~(select(u_input.b | var_0.a, ~12893u, global0.x) >> (_wgslsmith_dot_vec2_u32(var_0.c.a.wx, ~vec2<u32>(u_input.b, 31458u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i & _wgslsmith_mult_i32(u_input.a, 0i), ~(~_wgslsmith_sub_i32(-u_input.d, u_input.d)), _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, u_input.c), _wgslsmith_add_vec3_i32(u_input.c, u_input.c), vec3<i32>(u_input.c.x, -11664i, 2147483647i)), min(reverseBits(vec3<i32>(u_input.c.x, u_input.d, u_input.c.x) | vec3<i32>(u_input.a, u_input.c.x, u_input.c.x)), u_input.c)), -488f, ~(~u_input.b));
}

