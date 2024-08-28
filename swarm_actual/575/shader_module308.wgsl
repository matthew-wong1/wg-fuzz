struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32 = -1230f;

var<private> global2: Struct_1;

var<private> global3: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    let var_0 = arg_1.x;
    let var_1 = arg_0;
    global3 = global0.x;
    var var_2 = u_input.b.x;
    var var_3 = Struct_1(global2.a, u_input.b.zyx);
    return global2.a.x | var_3.a.x;
}

fn func_2() -> f32 {
    global2 = Struct_1(select(vec2<bool>(true, func_3(Struct_1(vec2<bool>(false, true), vec3<i32>(-16975i, 6793i, 1i)), min(vec4<u32>(44610u, 89334u, u_input.a, u_input.a), vec4<u32>(1u, 0u, u_input.a, u_input.a)))), vec2<bool>(false, false), vec2<bool>(u_input.b.x > max(global2.b.x, 1i), global0.x)), vec3<i32>(global2.b.x, -9006i << (u_input.a % 32u), -7253i));
    let var_0 = select(vec3<bool>(true, global0.x, !global0.x), vec3<bool>(!global2.a.x | (global2.a.x & func_3(Struct_1(global2.a, u_input.b.zzw), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), !all(select(global0.yz, global0.yw, false)), true), true);
    global1 = -1220f;
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1179f), _wgslsmith_f_op_f32(ceil(-238f)))), -447f)), 131f, false));
    var var_1 = -1537f;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-239f))));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1059f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f) - _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f * _wgslsmith_f_op_f32(f32(-1f) * -1132f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 2021f)))))) * _wgslsmith_f_op_f32(func_2()));
    let var_0 = Struct_1(!arg_0.yy, _wgslsmith_mod_vec3_i32(global2.b, firstTrailingBit(vec3<i32>(max(global2.b.x, 112624i), u_input.b.x, reverseBits(-1i)))));
    var var_1 = var_0;
    var_1 = Struct_1(vec2<bool>((true | (1u == u_input.a)) != global2.a.x, countOneBits(~u_input.b.x) > min(17053i, _wgslsmith_clamp_i32(-4123i, var_1.b.x, var_1.b.x))), _wgslsmith_add_vec3_i32(vec3<i32>(-28382i, var_1.b.x, -40146i), var_0.b << ((abs(vec3<u32>(0u, u_input.a, 22793u)) ^ (vec3<u32>(36506u, 4294967295u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 1164u))) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), -1i);
    return any(!(!vec4<bool>(global2.a.x, u_input.a >= u_input.a, true, false)));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = any(!vec2<bool>(select(false, arg_3.a.x, true), true)) & true;
    let var_1 = arg_3;
    global2 = Struct_1(vec2<bool>(false, !arg_1), vec3<i32>(~countOneBits(var_1.b.x), min(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 1i, 1i), u_input.b.yzw)), 1i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))) + 947f) + _wgslsmith_f_op_f32(func_2())));
    global1 = -650f;
    return firstTrailingBit(~(-vec2<i32>(_wgslsmith_div_i32(u_input.b.x, 1i), global2.b.x ^ global2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2.a.x;
    var var_0 = _wgslsmith_mod_vec2_i32(func_4(~vec4<u32>(~u_input.a, _wgslsmith_mult_u32(37253u, u_input.a), max(u_input.a, 0u), 3928u), all(vec2<bool>(false, global0.x & false)), !(!func_1(vec3<bool>(false, false, false))), Struct_1(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), _wgslsmith_mod_vec3_i32(-u_input.b.xyy, select(vec3<i32>(global2.b.x, 2147483647i, -1i), vec3<i32>(u_input.b.x, global2.b.x, 20575i), global0.wwx)))), ~(-vec2<i32>(-2147483647i, -14827i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1834f, 1930f, 261f) - vec3<f32>(-397f, 414f, -1679f)) + vec3<f32>(-753f, -1408f, -931f))))));
    let var_2 = Struct_1(global2.a, u_input.b.xzw);
    let var_3 = var_0.x;
    let var_4 = -_wgslsmith_add_vec4_i32(u_input.b, ~u_input.b);
    global2 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-2013f, _wgslsmith_f_op_f32(-var_1.x)), -1000f, firstLeadingBit(abs(select(firstLeadingBit(vec4<u32>(u_input.a, 12511u, 0u, 0u)), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 60249u), any(vec4<bool>(global0.x, global0.x, global0.x, var_2.a.x))))));
}

