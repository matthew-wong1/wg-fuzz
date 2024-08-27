struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(2509f, -1520f, 1167f, 146f), vec4<i32>(-18208i, 8288i, 0i, 26775i), 578f);

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = select(global1.xz, !(!select(!global1.yw, global1.yz, u_input.b <= 9774u)), !select(true, true, any(select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(true, false, true, false)))));
    var var_1 = Struct_3(95i);
    var var_2 = Struct_3(var_1.a);
    var var_3 = select(~vec4<i32>(-1246i, var_1.a, _wgslsmith_sub_i32(-88255i & var_2.a, ~(-1i)), _wgslsmith_mult_i32(countOneBits(var_2.a), -2147483647i)), global0.b, var_0.x);
    global1 = vec4<bool>(true, (any(select(global1.yxz, vec3<bool>(var_0.x, true, true), global1.yzx)) && global1.x) & true, !(1000f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c * -704f)))), true);
    return !(!(!(!(!vec4<bool>(global1.x, true, false, global1.x)))));
}

fn func_2() -> Struct_1 {
    global1 = select(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1805f, global0.a.x, 452f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global0.c)))), vec4<bool>(u_input.b <= 4294967295u, all(vec4<bool>(true, any(vec3<bool>(true, true, true)), false, global1.x)), true, global1.x), vec4<bool>(false, all(!(!vec4<bool>(global1.x, global1.x, false, true))), true, !any(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(false, global1.x, global1.x, false)))));
    let var_0 = _wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_sub_i32(global0.b.x, 0i));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(ceil(660f)), 539f))), max(global0.b, firstTrailingBit(global0.b)), _wgslsmith_div_f32(-239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c))))), Struct_1(global0.a, _wgslsmith_sub_vec4_i32(global0.b, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(var_0, 864i, var_0, -20016i)), abs(global0.b))), global0.a.x), Struct_1(global0.a, firstLeadingBit(global0.b), global0.c));
    let var_2 = !global1.x;
    let var_3 = u_input.a.x;
    return var_1.b;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = func_2();
    let var_0 = _wgslsmith_div_u32(u_input.b, 4294967295u);
    var var_1 = func_2();
    let var_2 = arg_0;
    global0 = func_2();
    return Struct_1(global0.a, countOneBits(func_2().b), -626f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    var var_0 = firstTrailingBit(i32(-1i) * -1i);
    var_0 = countOneBits(_wgslsmith_div_i32(~firstTrailingBit(-2147483647i), global0.b.x));
    global1 = func_3(vec3<f32>(320f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), func_2().c)), arg_1.b.a.x));
    let var_1 = arg_1;
    let var_2 = Struct_3(reverseBits(1i));
    return global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)), _wgslsmith_f_op_vec2_f32(global0.a.zz + global0.a.wz), !vec2<bool>(false, global1.x))), Struct_2(func_1(Struct_3(-1i)), Struct_1(vec4<f32>(global0.a.x, -1165f, 1881f, 629f), vec4<i32>(u_input.a.x, -2147483647i, global0.b.x, -17652i), -1808f), Struct_1(global0.a, global0.b, global0.a.x)), ~u_input.b, vec4<bool>(!global1.x, true, all(vec4<bool>(global1.x, true, global1.x, global1.x)), -1004f == global0.c)), 1i));
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_div_u32(~u_input.b, u_input.b);
    let var_3 = global1.x;
    var_0 = 2147483647i;
    var var_4 = _wgslsmith_sub_vec3_i32(countOneBits(u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x ^ global0.b.x, func_4(vec2<f32>(global0.a.x, -424f), Struct_2(Struct_1(vec4<f32>(628f, global0.a.x, global0.a.x, 1867f), vec4<i32>(global0.b.x, -12592i, global0.b.x, 2147483647i), -1236f), Struct_1(global0.a, global0.b, -362f), Struct_1(global0.a, vec4<i32>(-32629i, u_input.a.x, global0.b.x, global0.b.x), -1000f)), 30442u, vec4<bool>(true, false, global1.x, true)), _wgslsmith_mod_i32(-2147483647i, 1i)), max(vec3<i32>(1i, 1i, 1i), global0.b.xyw))) << (vec3<u32>(~abs(109094u), ~(u_input.b & u_input.b), u_input.b) % vec3<u32>(32u));
    let var_5 = _wgslsmith_f_op_f32(-global0.a.x);
    var_1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global0.a.ww, vec2<f32>(global0.a.x, global0.a.x), global1.ww))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x)))), ~(~_wgslsmith_clamp_u32(1u, 1u, select(u_input.b, 1u, false))));
}

