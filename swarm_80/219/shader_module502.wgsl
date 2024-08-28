struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(44448u, global0.c, arg_0.x, u_input.a), _wgslsmith_div_vec4_u32(arg_2.a.a, vec4<u32>(arg_2.e.x, u_input.b, 94009u, 85961u))) << (firstLeadingBit(~vec4<u32>(arg_0.x, 0u, arg_2.e.x, arg_0.x)) % vec4<u32>(32u)), arg_2.d.b), Struct_2(_wgslsmith_sub_vec2_u32(firstLeadingBit(global0.a & vec2<u32>(arg_0.x, 72529u)), ~min(arg_2.e.xy, arg_2.d.a.xz)), true | global1.x, 43315u, vec2<u32>(0u, arg_0.x), global0.e), !select(!(!vec4<bool>(true, global0.b, arg_2.c.x, global1.x)), vec4<bool>(true, !global0.b, true, false), arg_2.c.x), arg_2.d, arg_2.e);
    var var_1 = arg_2.b;
    global0 = var_0.b;
    var_1 = Struct_2(var_1.a, global1.x, ~0u, var_0.d.a.wx, vec3<i32>(max(-var_0.a.b.x, reverseBits(var_1.e.x)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.e.x, -16583i), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 32724i, 27815i), var_1.e, var_1.e)), -2966i, -var_1.e.x));
    let var_2 = -27206i;
    return u_input.c.zz;
}

fn func_2() -> Struct_2 {
    var var_0 = ~(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.e.x, global0.e.x, global0.e.x, global0.e.x) & vec4<i32>(global0.e.x, global0.e.x, global0.e.x, global0.e.x), -vec4<i32>(global0.e.x, global0.e.x, global0.e.x, global0.e.x)), ~(-vec4<i32>(0i, global0.e.x, global0.e.x, -2147483647i))));
    return Struct_2(~select(abs(vec2<u32>(u_input.a, global0.c) ^ global0.d), func_3(u_input.c.zxw, _wgslsmith_f_op_f32(-1000f * -371f), Struct_3(Struct_1(u_input.c, global0.e.xx), Struct_2(vec2<u32>(4294967295u, 72759u), global1.x, u_input.c.x, vec2<u32>(4294967295u, 1u), var_0.yyz), vec4<bool>(global0.b, false, true, global1.x), Struct_1(u_input.c, vec2<i32>(global0.e.x, global0.e.x)), u_input.c.xwx)), !global0.b), true, _wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(global0.a.x, global0.d.x)), global0.d.x), abs(~(~vec2<u32>(global0.a.x, global0.c))) >> (global0.a % vec2<u32>(32u)), global0.e);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    global0 = func_2();
    global1 = select(vec4<bool>(!(!(global0.e.x != global0.e.x)), -360f == _wgslsmith_f_op_f32(-arg_0.x), (all(vec4<bool>(false, global0.b, global1.x, global1.x)) && global1.x) && global0.b, true), !vec4<bool>(all(vec3<bool>(true, true, true)), true, func_2().a.x != ~62743u, all(vec2<bool>(true, global1.x))), false & !(global1.x && any(global1.zy)));
    let var_0 = Struct_3(Struct_1(select(firstTrailingBit(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c)), ~vec4<u32>(u_input.c.x, 1111u, 47341u, 0u), true), ~vec2<i32>(~(-2147483647i), _wgslsmith_mod_i32(-26092i, -1i))), func_2(), select(select(select(vec4<bool>(global0.b, global1.x, global0.b, global0.b), !vec4<bool>(global1.x, true, global1.x, global0.b), all(vec2<bool>(true, true))), select(!vec4<bool>(false, global0.b, global1.x, false), vec4<bool>(global1.x, false, true, global1.x), select(vec4<bool>(global1.x, false, true, false), vec4<bool>(true, false, global0.b, false), vec4<bool>(global0.b, false, global1.x, global1.x))), !(!vec4<bool>(global0.b, global0.b, true, global1.x))), !vec4<bool>(false, any(vec4<bool>(true, global0.b, true, false)), global0.b, true), !any(!vec4<bool>(global1.x, global0.b, global1.x, true))), Struct_1(_wgslsmith_clamp_vec4_u32(u_input.c, abs(~u_input.c), select(~vec4<u32>(global0.a.x, 3112u, 27334u, global0.d.x), ~u_input.c, true)), global0.e.zy), ~reverseBits(u_input.c.zww));
    let var_1 = -var_0.b.e & select(~vec3<i32>(var_0.b.e.x, i32(-1i) * -1i, global0.e.x >> (1u % 32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(global0.e.x), abs(global0.e.x), var_0.a.b.x), -vec3<i32>(10557i, 0i, global0.e.x)), global1.x);
    let var_2 = var_0;
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global0.d, vec2<u32>(35654u, global0.a.x)) >> (vec2<u32>(abs(35608u), global0.a.x) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x | 0u, 1u, ~4294967295u), global0.a.x)), !any(!global1.zw), func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f - -1975f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-220f - 794f) + 120f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) + 717f), 872f)), u_input.c.zz, ~vec3<i32>(_wgslsmith_mult_i32(27418i, global0.e.x), 0i, func_2().e.x) >> (reverseBits(vec3<u32>(~global0.d.x, 4294967295u, 76011u >> (1u % 32u))) % vec3<u32>(32u)));
    var var_0 = (!all(!global1.wz) == false) != (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0.d.x, 10957u)) & select(u_input.c.yy, vec2<u32>(global0.c, global0.d.x), global1.zw), func_2().d) == _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c.wxz, vec3<u32>(global0.d.x, global0.d.x, 27206u)), 33892u), countOneBits(u_input.c.x)));
    let var_1 = _wgslsmith_f_op_f32(246f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-512f, 1243f)) + _wgslsmith_f_op_f32(step(223f, 148f))));
    let var_2 = Struct_3(Struct_1(~_wgslsmith_mod_vec4_u32(abs(u_input.c), u_input.c), abs(min(max(vec2<i32>(global0.e.x, 2147483647i), global0.e.xz), -vec2<i32>(-1i, global0.e.x)))), func_2(), !vec4<bool>(!(global0.b & true), all(!vec3<bool>(global0.b, true, false)), !global0.b, true), Struct_1(~vec4<u32>(countOneBits(30700u), u_input.c.x, _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_add_u32(global0.c, global0.d.x)), reverseBits(global0.e.zz)), vec3<u32>(~global0.a.x, 1u, 4294967295u));
    let var_3 = 360f;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-354f))) * _wgslsmith_f_op_f32(-1558f - _wgslsmith_f_op_f32(trunc(-1000f)))), vec3<i32>(~func_2().e.x, 30725i, _wgslsmith_mult_i32(var_2.a.b.x, -31190i) << (~(~global0.c) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-685f, 628f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -399f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_1) - vec2<f32>(1031f, 1110f))))));
}

