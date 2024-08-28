struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_mult_i32(global0.c, -arg_2.a.x);
    var var_2 = arg_2;
    let var_3 = _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, -24817i), vec2<i32>(global0.a.x, arg_2.c)) | select(global0.a, abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c, -14671i), vec2<i32>(-1i, arg_2.a.x), vec2<i32>(arg_0.a.x, 0i))), !(var_2.b.x || arg_0.d)), vec2<i32>(23560i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global0.a.x, global0.c, 2147483647i)) >> (u_input.a % vec3<u32>(32u)), ~_wgslsmith_add_vec3_i32(vec3<i32>(11527i, arg_0.a.x, -6952i), vec3<i32>(-10520i, -43118i, arg_2.c)))));
    var var_4 = Struct_3(var_2.b.x);
    return vec4<bool>(any(select(arg_2.b, global0.b, var_2.d)), any(global0.b), (((arg_1 >> (u_input.a.x % 32u)) & max(22372u, arg_1)) >> (select(firstTrailingBit(35535u), ~4294967295u, true) % 32u)) == u_input.a.x, any(!arg_2.b));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1302f, -246f), _wgslsmith_f_op_f32(f32(-1f) * -102f), global0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f - 479f))), _wgslsmith_f_op_f32(-849f * 1187f)), 2147483647i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.a.x) >> ((vec2<u32>(49973u, 0u) << (vec2<u32>(44900u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), global0.a), -2147483647i));
    let var_1 = vec4<bool>(!(!global0.d), true & all(select(func_3(Struct_1(global0.a, global0.b, var_0.b, global0.b.x), u_input.a.x, Struct_1(vec2<i32>(global0.a.x, global0.a.x), global0.b, 0i, global0.b.x)), vec4<bool>(false, true, global0.d, false), true)), global0.d, !global0.d);
    let var_2 = vec4<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(236f * var_0.a.x), _wgslsmith_f_op_f32(round(124f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-211f))), 1182f);
    global0 = Struct_1(max(-vec2<i32>(1i, 0i), global0.a), vec3<bool>(all(vec3<bool>(false, func_3(Struct_1(global0.a, var_1.wxy, var_0.c, var_1.x), u_input.a.x, Struct_1(global0.a, vec3<bool>(false, false, true), 1i, true)).x, any(vec2<bool>(var_1.x, var_1.x)))), var_2.x > var_2.x, global0.d), -13727i, select(all(func_3(Struct_1(vec2<i32>(global0.a.x, global0.c), var_1.wyw, global0.a.x, false), ~u_input.a.x, Struct_1(global0.a, vec3<bool>(var_1.x, false, true), -1i, false)).zyy), _wgslsmith_f_op_f32(-var_0.a.x) >= 1835f, true));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(var_2.wxw)), 0i, _wgslsmith_sub_i32(31219i, _wgslsmith_add_i32(-19483i, -86079i) << ((8915u | u_input.a.x) % 32u)) ^ max(var_0.c, global0.c));
    return Struct_1(vec2<i32>(-var_3.b, -var_0.b), !select(!(!global0.b), vec3<bool>(false, all(vec3<bool>(true, false, global0.d)), true), all(select(global0.b.xx, var_1.yy, var_1.zy))), i32(-1i) * -1i, var_1.x);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = Struct_2(func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(573f - _wgslsmith_div_f32(344f, -327f)), -2029f)), 461f), Struct_1(~(vec2<i32>(arg_0, -31325i) & ~global0.a), !global0.b, ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-26666i, global0.a.x), global0.a.x), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + 162f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(max(var_0.b, var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f * var_0.b))))));
    var var_2 = ~vec2<i32>(countOneBits(var_0.c.a.x), -1i);
    global0 = Struct_1(func_2().a, !(!select(!global0.b, !var_0.a.b, select(var_0.a.d, true, global0.b.x))), arg_0, func_2().b.x);
    let var_3 = Struct_3(func_3(Struct_1(var_0.c.a, func_3(var_0.c, 1u, var_0.c).yzz, arg_0, !var_0.c.d), u_input.a.x, var_0.a).x);
    return StorageBuffer(var_1.x, vec2<u32>(1u, 16612u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(48674i);
}

