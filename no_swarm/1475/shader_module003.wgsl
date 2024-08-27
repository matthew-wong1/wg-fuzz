struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(1000f, -961f));

var<private> global3: u32 = 1u;

var<private> global4: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = -8630i;
    let var_1 = arg_0.a.x;
    var var_2 = ~u_input.a.yz;
    let var_3 = vec3<bool>(!global4.x != global4.x, global4.x, false);
    let var_4 = vec2<i32>(global1.b, -2147483647i);
    return global1.c.x;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = Struct_1(max(firstLeadingBit(_wgslsmith_mult_u32(global1.a, u_input.a.x)) << (21155u % 32u), _wgslsmith_mod_u32(reverseBits(0u), global1.a & 0u) | ~(~13955u)), (select(i32(-1i) * -11638i, arg_0.x, global4.x) >> (~(~global1.a) % 32u)) | 1i, global1.d.zwx, -vec4<i32>(34093i >> (1u % 32u), _wgslsmith_mult_i32(37348i, global1.b), select(-68950i, u_input.b, any(vec2<bool>(false, global4.x))), func_3(Struct_2(global2.a))));
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(~(-1i), 1i), _wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(-1i, var_0.c.x, -27115i) & arg_0.x)) ^ _wgslsmith_clamp_i32(var_0.b & countOneBits(var_0.b | u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(27474i, 27254i), var_0.c.yz), ~global1.c.xy), _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, global1.d.x), ~vec2<i32>(global1.c.x, -25471i), countOneBits(vec2<i32>(u_input.b, -37972i)))), -arg_0.x);
    var var_3 = global4.xx;
    global4 = vec3<bool>(true, var_3.x | global4.x, select(global4.x, false, global4.x) && (var_3.x && false));
    return 39801u;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1((~(~28952u) & ~(~u_input.a.x)) ^ 0u, u_input.b, ~global1.d.yxy, select(global1.d, global1.d, vec4<bool>(true, !all(vec2<bool>(global4.x, arg_0.x)), u_input.a.x >= func_2(vec3<i32>(-1i, -2147483647i, u_input.b)), true)));
    var var_1 = Struct_1(1u, _wgslsmith_mod_i32(global1.c.x, -global1.d.x), reverseBits(vec3<i32>(func_3(Struct_2(global2.a)), 1i, var_0.d.x)), abs(_wgslsmith_mult_vec4_i32(global1.d, vec4<i32>(-1i, global1.d.x, global1.c.x, u_input.b | 1i))));
    let var_2 = 1u;
    let var_3 = Struct_1(_wgslsmith_sub_u32(60298u, u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2920i, 1i, -1224i), 1i), var_1.c, vec4<i32>(~_wgslsmith_mod_i32(var_1.b, global1.d.x), _wgslsmith_div_i32(reverseBits(reverseBits(var_1.d.x)), _wgslsmith_sub_i32(0i >> (u_input.a.x % 32u), var_1.d.x)), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.a.x, 954f))))), var_0.c.x));
    var var_4 = ~u_input.a.yw;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<f32>(global2.a.x, _wgslsmith_div_f32(1119f, _wgslsmith_f_op_f32(-global2.a.x)));
    var var_1 = !(!vec2<bool>(global4.x, false));
    var var_2 = arg_0;
    let var_3 = vec2<u32>(0u, 1u);
    var var_4 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-726f)))));
    return ~arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(func_1(vec4<bool>(global4.x && false, any(vec2<bool>(global4.x, false)), global2.a.x >= global2.a.x, false)), func_1(select(vec4<bool>(false, global4.x, true, global4.x), !vec4<bool>(global4.x, false, global4.x, true), all(vec4<bool>(global4.x, false, true, global4.x))))), global1.c.x, -global1.c, vec4<i32>(35590i, -2147483647i, u_input.b, global1.b));
    var var_1 = !vec3<bool>(all(vec2<bool>(true, true)), all(select(select(vec4<bool>(false, false, global4.x, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(global4.x, false, global4.x, global4.x), vec4<bool>(false, false, global4.x, false), vec4<bool>(global4.x, true, true, true)), vec4<bool>(global4.x, true, global4.x, global4.x))), all(select(!vec4<bool>(false, true, global4.x, false), select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(global4.x, false, true, false), true), false)));
    var var_2 = ~(~vec2<u32>(max(var_0.a | 31918u, u_input.a.x), ~func_2(var_0.c)));
    global3 = 1u;
    var_2 = ~(~select(u_input.a.xz, abs(~vec2<u32>(u_input.a.x, var_0.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_0.a, firstLeadingBit(abs(var_2.x))));
}

