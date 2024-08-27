struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(30256i, 31029i, 6395i, 25064i);

var<private> global1: array<Struct_3, 7>;

var<private> global2: vec4<u32>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global4: bool = true;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_2(firstTrailingBit(global0.x), vec4<i32>(arg_0, global0.x, -1i, arg_0), Struct_1(vec2<u32>(0u, u_input.a.x), vec3<bool>(global3.x, global3.x, any(select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(true, false, false, true))))), global3.zwz, Struct_1(vec2<u32>(31531u, u_input.a.x), global3.zxw));
    global0 = ~_wgslsmith_add_vec4_i32(var_0.b, vec4<i32>(global0.x, firstTrailingBit(i32(-1i) * -2147483647i), abs(_wgslsmith_mod_i32(50875i, arg_0)), _wgslsmith_div_i32(global0.x, -1i) ^ global0.x));
    global1 = array<Struct_3, 7>();
    global0 = abs(~vec4<i32>(arg_0, 1021i, ~(17071i ^ arg_0), 0i));
    var var_1 = Struct_1(~max(~global2.xz, (vec2<u32>(0u, 4294967295u) & vec2<u32>(var_0.e.a.x, global2.x)) >> (global2.xx % vec2<u32>(32u))), global3.xzy);
    return -(0i >> (~4294967295u % 32u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    global3 = vec4<bool>(false, arg_1.d.x, arg_1.e.b.x, false);
    var var_0 = -vec2<i32>(_wgslsmith_mod_i32(~0i, arg_0.x ^ 18499i), 1i);
    var var_1 = u_input.a;
    var_1 = ~vec4<u32>(global2.x, _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a), arg_1.c.a.x, ~4294967295u);
    let var_2 = Struct_2(global0.x, ~arg_1.b, Struct_1(vec2<u32>(~(~4294967295u), 50382u), !select(select(arg_1.e.b, arg_1.c.b, true), select(global3.yyx, vec3<bool>(arg_1.d.x, arg_1.d.x, false), arg_1.c.b), false)), global3.wxw, arg_1.e);
    return arg_1.e.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> i32 {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-247f, 877f)))), arg_1.b));
    var var_2 = ~countOneBits(reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(-18488i, global0.x, -6949i, -45979i), select(vec4<i32>(global0.x, global0.x, -1i, -1i), vec4<i32>(global0.x, 2147483647i, global0.x, 0i), vec4<bool>(false, false, global3.x, global3.x)))));
    let var_3 = Struct_2(-13273i, ~reverseBits(~vec4<i32>(-19778i, 1i, -2147483647i, -2147483647i)), Struct_1(~(~global2.wy) | (global2.zy & ~u_input.a.xz), global3.wwx), select(vec3<bool>(any(select(vec4<bool>(global3.x, false, true, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, false, global3.x, false))), true, global3.x), select(vec3<bool>(true, true, true), global3.zzx, !vec3<bool>(global3.x, false, true)), !(!select(vec3<bool>(false, global3.x, global3.x), global3.wyx, global3.yxz))), Struct_1(~(~vec2<u32>(u_input.a.x, 35380u)), vec3<bool>(!global3.x || !global3.x, select(global3.x, !global3.x, true), _wgslsmith_f_op_f32(abs(arg_1.b)) < 308f)));
    var var_4 = u_input.a.x ^ 0u;
    return -(_wgslsmith_mult_i32(1i, select(-11919i, _wgslsmith_add_i32(-26136i, global0.x), global3.x != false)) | global0.x);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_add_vec2_i32(arg_0, vec2<i32>(arg_0.x, _wgslsmith_add_i32(~func_2(arg_0.x), i32(-1i) * -2147483647i)));
    global0 = vec4<i32>(2147483647i, func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~global2.x, ~u_input.a.x, func_3(vec3<i32>(0i, var_0.x, arg_0.x), Struct_2(arg_0.x, vec4<i32>(arg_0.x, -13649i, var_0.x, var_0.x), Struct_1(u_input.a.zz, vec3<bool>(false, global3.x, global3.x)), global3.zwx, Struct_1(vec2<u32>(u_input.a.x, global2.x), global3.wwz)), Struct_3(vec3<i32>(global0.x, -63920i, 38704i), 1093f))), vec4<u32>(~1961u, 0u, u_input.a.x, global2.x)), Struct_3(~global0.yxx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(374f))))), 0i, 0i);
    var var_1 = Struct_2(-1i, vec4<i32>(16385i, 0i, arg_0.x, arg_0.x), Struct_1(vec2<u32>(0u, u_input.a.x), global3.wyw), select(select(select(global3.yyw, select(vec3<bool>(false, true, global3.x), vec3<bool>(false, true, global3.x), false), !global3.wzy), global3.xyx, !select(vec3<bool>(false, true, global3.x), vec3<bool>(global3.x, global3.x, global3.x), global3.x)), vec3<bool>(all(select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true), global3.yy)), global3.x, !global3.x), select(!(!global3.xyz), select(global3.xwz, global3.zzw, vec3<bool>(global3.x, global3.x, global3.x)), !(!global3.zzz))), Struct_1(abs(reverseBits(vec2<u32>(4294967295u, global2.x))) & _wgslsmith_clamp_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a.wz, countOneBits(u_input.a.wy)), !select(global3.wwy, vec3<bool>(true, true, true), false)));
    var var_2 = -var_1.b.yw >> (vec2<u32>(abs(_wgslsmith_dot_vec3_u32(reverseBits(u_input.a.wwy), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, 1u, var_1.c.a.x), vec3<u32>(global2.x, 0u, var_1.c.a.x)))), ~_wgslsmith_clamp_u32(global2.x, var_1.c.a.x, ~var_1.e.a.x)) % vec2<u32>(32u));
    var var_3 = ~reverseBits(~global2.x);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.zzw;
    let var_1 = true;
    let var_2 = Struct_2(global0.x, vec4<i32>((global0.x >> (16472u % 32u)) ^ _wgslsmith_div_i32(0i, func_1(vec2<i32>(-15719i, var_0.x))), global0.x, -global0.x >> (u_input.a.x % 32u), -3166i), Struct_1(vec2<u32>(~7596u, u_input.a.x), vec3<bool>(false, !any(vec4<bool>(false, false, global3.x, var_1)), countOneBits(global0.x) <= (var_0.x | global0.x))), global3.wzw, Struct_1(countOneBits(~vec2<u32>(u_input.a.x, u_input.a.x)), select(!vec3<bool>(var_1, false, true), select(vec3<bool>(global3.x, var_1, false), global3.zxx, global3.zzz), var_1)));
    global4 = _wgslsmith_sub_i32(var_0.x, -2147483647i) != -6187i;
    let var_3 = true;
    let var_4 = vec2<f32>(-671f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-127f)), _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(step(-636f, 1015f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, _wgslsmith_mult_i32(~(~global0.x), 38183i), reverseBits(vec3<i32>(var_0.x, 1i | var_0.x, var_0.x)) ^ vec3<i32>(_wgslsmith_add_i32(var_2.b.x, var_2.b.x) & -1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_2.b.x), global0.wy), -(~global0.x)), 1u, vec4<f32>(-618f, _wgslsmith_f_op_f32(floor(var_4.x)), _wgslsmith_f_op_f32(max(var_4.x, var_4.x)), -496f));
}

