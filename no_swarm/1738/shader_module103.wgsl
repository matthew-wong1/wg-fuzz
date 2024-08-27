struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(16873u, -241f, vec2<u32>(4294967295u, 1u), Struct_4(vec3<bool>(true, false, true), Struct_3(Struct_1(vec3<f32>(-727f, 360f, 128f), vec3<u32>(50621u, 1u, 16715u), vec3<u32>(12752u, 23294u, 0u)), 16727i, 1457i, Struct_2(26327u, 19932u, vec3<bool>(false, true, false)), 26112i), vec3<f32>(841f, 571f, 1688f), vec2<bool>(false, false), -1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    var var_0 = -561f;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d.b.a.a * global0.d.c) - _wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(587f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.x, global0.d.b.a.a.x)), global0.d.b.a.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.b.a.a - vec3<f32>(global0.b, global0.b, arg_1.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.b.a.a.x, 915f, 681f), _wgslsmith_div_vec3_f32(vec3<f32>(global0.d.b.a.a.x, arg_1.x, arg_1.x), vec3<f32>(-203f, 540f, global0.d.b.a.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(max(650f, global0.b)), _wgslsmith_f_op_f32(round(350f)), _wgslsmith_f_op_f32(-arg_1.x)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.d.c.x, -1746f), 1184f)) * _wgslsmith_f_op_f32(-global0.b)));
    let var_3 = arg_2;
    let var_4 = true;
    return u_input.c.x;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_clamp_vec4_u32(~abs(reverseBits(vec4<u32>(arg_1, global0.d.b.d.a, 4294967295u, arg_1))), ~min(~vec4<u32>(arg_1, 1u, arg_1, 1u) << (vec4<u32>(u_input.a.x, u_input.a.x, 45821u, 8069u) % vec4<u32>(32u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(5600u, global0.a, arg_1, 0u), vec4<u32>(13562u, u_input.b, 44631u, global0.c.x)))), vec4<u32>(33524u, u_input.a.x, 13319u, 61022u));
    let var_1 = Struct_4(global0.d.a, global0.d.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.d.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, 1709f, arg_2))))), _wgslsmith_f_op_vec3_f32(global0.d.b.a.a + vec3<f32>(_wgslsmith_f_op_f32(arg_3 + arg_2), global0.d.c.x, _wgslsmith_f_op_f32(arg_3 * arg_3))), vec3<bool>(all(global0.d.d), !(arg_3 < -819f), select(true, all(global0.d.b.d.c), global0.d.a.x)))), vec2<bool>(all(vec3<bool>(false, false, false)) & all(select(vec3<bool>(global0.d.b.d.c.x, true, true), vec3<bool>(global0.d.d.x, true, false), vec3<bool>(global0.d.d.x, global0.d.d.x, global0.d.d.x))), any(!(!vec3<bool>(global0.d.a.x, false, global0.d.d.x)))), global0.d.e);
    var var_2 = !select(select(global0.d.a, select(!var_1.b.d.c, var_1.a, global0.d.a), var_1.b.d.c), select(select(vec3<bool>(var_1.b.d.c.x, true, false), global0.d.a, 7613u >= u_input.a.x), var_1.b.d.c, vec3<bool>(true, false, var_1.b.d.c.x)), !global0.d.a.x);
    var_2 = global0.d.b.d.c;
    let var_3 = var_1.b.d.c;
    return 2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = vec4<i32>(func_2(!(!global0.d.a), global0.d.b.a.a, false, select(!select(vec4<bool>(arg_1, arg_0.c.x, true, false), vec4<bool>(global0.d.a.x, arg_0.c.x, true, arg_1), vec4<bool>(true, global0.d.d.x, true, arg_1)), !(!vec4<bool>(global0.d.b.d.c.x, arg_0.c.x, true, false)), !vec4<bool>(false, arg_0.c.x, arg_0.c.x, true))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-984f + _wgslsmith_f_op_f32(f32(-1f) * -916f)) * _wgslsmith_f_op_f32(1000f - -1548f)), global0.a, -1015f, global0.d.c.x), _wgslsmith_mult_i32(abs(reverseBits(global0.d.e) ^ (global0.d.e | 0i)), func_3(_wgslsmith_f_op_f32(floor(arg_2.a.x)), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, arg_0.a)), global0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2417f)), 318f)))), u_input.c.x);
    let var_1 = u_input.a.x;
    var var_2 = global0.d.d.x;
    let var_3 = !(!select(select(vec4<bool>(true, true, false, global0.d.a.x), vec4<bool>(arg_0.c.x, false, arg_1, false), true), !(!vec4<bool>(false, false, false, arg_1)), !select(vec4<bool>(false, arg_0.c.x, false, global0.d.b.d.c.x), vec4<bool>(arg_0.c.x, global0.d.d.x, false, false), vec4<bool>(arg_1, arg_0.c.x, true, arg_0.c.x))));
    var var_4 = reverseBits(~(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 99571u, arg_0.b), global0.d.b.a.b) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, arg_0.b, arg_2.c.x), ~vec3<u32>(arg_2.b.x, 4294967295u, 0u)) % vec3<u32>(32u))));
    return !(!var_3.wx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(any(!vec4<bool>(true, global0.d.a.x, global0.d.a.x, global0.d.d.x)), true), !global0.d.b.d.c.zx, select(vec2<bool>(true, true), !select(func_1(global0.d.b.d, false, Struct_1(global0.d.c, global0.d.b.a.b, global0.d.b.a.c)), vec2<bool>(false, global0.d.b.d.c.x), global0.d.a.zy), vec2<bool>(func_1(Struct_2(u_input.a.x, 0u, global0.d.b.d.c), any(vec4<bool>(global0.d.a.x, true, global0.d.b.d.c.x, global0.d.a.x)), global0.d.b.a).x, !global0.d.d.x)));
    var var_1 = global0.d.b.a;
    var var_2 = u_input.c.x | -22498i;
    let var_3 = 1u;
    var var_4 = ~abs(vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(1i, u_input.c.x), -38498i, -1i << (var_3 % 32u))) << (~(~vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.a.x, 0u), _wgslsmith_clamp_u32(var_1.c.x, 4294967295u, u_input.a.x), ~0u)) % vec4<u32>(32u));
    let var_5 = vec3<i32>(-global0.d.e, -func_3(542f, abs(var_1.c.x), _wgslsmith_f_op_f32(abs(var_1.a.x)), 246f) >> (global0.d.b.a.b.x % 32u), (i32(-1i) * -32730i) ^ (_wgslsmith_dot_vec3_i32(~var_4.zxz, ~var_4.yxw) ^ 22202i));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(~var_1.c.x), 16523u), vec2<u32>(1u, 90091u));
}

