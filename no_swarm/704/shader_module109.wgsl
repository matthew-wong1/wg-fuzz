struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(770f, 1080f), 3109u);

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 3>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global0.a.x, arg_1)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1000f, 860f))))))));
    let var_1 = 27827i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, var_0.x, 310f, arg_3) + vec4<f32>(-1699f, -1067f, arg_1, global0.a.x)) + vec4<f32>(global2.a.x, 1265f, arg_1, global2.a.x)) + vec4<f32>(arg_1, global1.a.x, 241f, 1000f)))));
    return Struct_1(global0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(~0u, 0u), u_input.a.yx >> (u_input.a.zy % vec2<u32>(32u))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0.yy;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a), 64320u);
    let var_2 = var_1;
    var var_3 = Struct_1(vec2<f32>(142f, 1084f), reverseBits(1u));
    var var_4 = var_0;
    return _wgslsmith_f_op_f32(global2.a.x * 1f);
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = func_2(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -40042i, _wgslsmith_mult_i32(~12950i, 1i << (global2.b % 32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(41639i, _wgslsmith_sub_i32(17856i, -7137i), i32(-1i) * -39587i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(1i, 2147483647i, -18140i), vec3<i32>(-18066i, -43674i, 2147483647i) << (vec3<u32>(0u, global0.b, 4294967295u) % vec3<u32>(32u))))), 663f, 0u, _wgslsmith_div_f32(-280f, _wgslsmith_f_op_f32(trunc(global2.a.x))));
    var var_0 = arg_0;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.b, arg_0.b, 4294967295u), vec4<u32>(4294967295u, 4466u, 4294967295u, 58727u)), vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, global2.a.x), arg_0)), arg_0.a.x), _wgslsmith_f_op_vec2_f32(floor(global0.a)))), 4294967295u);
    var var_1 = arg_0;
    var var_2 = ~0i;
    return firstTrailingBit(_wgslsmith_mult_i32(-firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, -2147483647i))), min(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(-2147483647i, 0i), vec2<i32>(0i, -32290i))), firstLeadingBit(-30771i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(~(~_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.zy))), global0.b, reverseBits(i32(-1i) * -2147483647i) >= _wgslsmith_add_i32(abs(~(-3802i)), -func_1(Struct_1(vec2<f32>(global0.a.x, global0.a.x), global1.b))));
    let var_1 = vec4<bool>(all(!vec4<bool>(true, 1u > global1.b, false, false)), false, false, true || (global2.a.x > _wgslsmith_f_op_f32(global2.a.x + global0.a.x)));
    var var_2 = func_2(-min(-vec3<i32>(1i, 1i, 1i), select(firstLeadingBit(vec3<i32>(1i, 0i, 20208i)), ~vec3<i32>(2147483647i, -8324i, 16295i), !var_1.x)), 693f, ~(global0.b ^ func_2(select(vec3<i32>(-1i, 50765i, -14282i), vec3<i32>(-23508i, 27742i, -47708i), vec3<bool>(var_1.x, false, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2104f), global0.b, global0.a.x).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f - -879f)))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1339f, global2.a.x) + vec2<f32>(global2.a.x, -1305f)))) * global2.a)), 1u);
    var var_3 = false;
    var_3 = select(select(var_1.x, var_1.x, var_1.x), var_1.x, !(!var_1.x));
    let var_4 = -reverseBits(vec3<i32>(countOneBits(_wgslsmith_sub_i32(0i, -1i)), ~0i >> (_wgslsmith_mult_u32(global0.b, 0u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-53215i, -3780i), vec2<i32>(7483i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.b << (u_input.a.x % 32u), ~select(_wgslsmith_clamp_u32(global0.b, global2.b, global0.b), ~4978u, all(var_1.zxw)), abs(~4294967295u | global2.b), ~var_2.b | var_2.b), _wgslsmith_div_vec3_u32(u_input.a, min(vec3<u32>(global1.b, ~global0.b, select(global1.b, 4294967295u, false)), select(~u_input.a, u_input.a, var_1.wyy))));
}

