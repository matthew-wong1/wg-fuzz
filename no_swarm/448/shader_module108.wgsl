struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global1: vec2<i32>;

var<private> global2: vec2<u32> = vec2<u32>(86607u, 4818u);

var<private> global3: vec2<bool>;

var<private> global4: Struct_3 = Struct_3(48123i, Struct_2(vec2<f32>(579f, 668f), 45870u, 47453u, vec4<u32>(4294967295u, 16438u, 0u, 39527u), 1u), vec3<i32>(-1i, -28934i, -58165i), 96090u, vec4<bool>(false, true, true, true));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<u32> {
    global3 = vec2<bool>(true, true);
    return vec3<u32>(global0.x, ~0u, _wgslsmith_clamp_u32(~0u, u_input.d.x | global0.x, 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = 0u;
    var var_1 = global4.b;
    global2 = ~select(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.d.zz), abs(vec2<u32>(0u, 4704u))), abs(vec2<u32>(abs(36242u), u_input.d.x)), any(vec2<bool>(global3.x, !global3.x)));
    var var_2 = !select(vec4<bool>(_wgslsmith_f_op_f32(sign(var_1.a.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.x, any(vec3<bool>(true, global3.x, false)), any(!vec4<bool>(global3.x, true, global4.e.x, true))), global4.e, vec4<bool>(true, true, true, true));
    var var_3 = select(true, !var_2.x, true);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.x, 582f, -795f))) + vec3<f32>(644f, 1582f, -1181f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1126f, var_1.a.x, var_1.a.x), vec3<f32>(var_1.a.x, 227f, var_1.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 570f, -2146f)))), false)) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1029f, -572f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_div_f32(var_1.a.x, global4.b.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -1561f))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.b.a.x))), global4.b.a.x, _wgslsmith_f_op_f32(-1227f * _wgslsmith_f_op_f32(abs(1252f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = -528f;
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(~(-global1.x), min(-arg_1, global1.x | -2961i)), u_input.c), global1.x);
    global2 = u_input.a.xy;
    return global4.b;
}

fn func_1() -> vec2<bool> {
    global4 = Struct_3(~(-abs(1i)), func_4(_wgslsmith_f_op_vec3_f32(func_3(func_2(global4.e) & (global4.b.d.xzw & vec3<u32>(u_input.a.x, 65566u, 68226u)), Struct_1(global4.a))), abs(u_input.b)), global4.c, 37580u, !global4.e);
    global0 = ~(_wgslsmith_sub_vec2_u32(~vec2<u32>(55808u, global0.x), func_4(vec3<f32>(-2005f, global4.b.a.x, global4.b.a.x), -19210i).d.yw) >> ((~u_input.d.xy & reverseBits(u_input.d.xz)) % vec2<u32>(32u))) << (global4.b.d.wy % vec2<u32>(32u));
    global3 = !select(select(global4.e.wx, vec2<bool>(false && global3.x, global4.e.x), global4.e.x), select(!select(global4.e.xx, global4.e.wx, global4.e.x), global4.e.wz, !(!global4.e.xx)), global0.x <= reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.d.x)));
    var var_0 = func_4(vec3<f32>(1246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.b.a.x, 141f))), 643f), max(_wgslsmith_dot_vec3_i32(global4.c, global4.c) ^ ~global4.a, ~(u_input.b ^ -1i)));
    let var_1 = vec4<i32>(-29787i, ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, -1i, 0i)), vec3<i32>(_wgslsmith_mult_i32(global4.c.x, u_input.c), 21878i, -u_input.c)), _wgslsmith_add_i32(~(~(i32(-1i) * -2147483647i)), min(max(~0i, global1.x), _wgslsmith_mod_i32(u_input.b, 1i))), ~max(global1.x, u_input.c));
    return !global4.e.wy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(_wgslsmith_dot_vec2_i32(global4.c.yz, -vec2<i32>(64102i, 6681i)), global1.x);
    let var_1 = vec4<i32>(-2147483647i, _wgslsmith_add_i32(u_input.c >> (global4.b.d.x % 32u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.x, global4.c.x), -23137i)) ^ var_0.x, var_0.x, firstLeadingBit(-global1.x));
    var var_2 = Struct_4(2147483647i, Struct_1(1i));
    var var_3 = true;
    global3 = func_1();
    let var_4 = global4.e.ywx;
    let var_5 = _wgslsmith_f_op_f32(global4.b.a.x * global4.b.a.x);
    var var_6 = true;
    var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(func_4(vec3<f32>(-170f, global4.b.a.x, global4.b.a.x), -2147483647i).d.x) | 1u);
}

