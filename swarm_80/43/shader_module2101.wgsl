struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global1: vec2<u32> = vec2<u32>(25549u, 50507u);

var<private> global2: vec4<u32> = vec4<u32>(25376u, 20141u, 0u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(round(-527f));
    let var_2 = _wgslsmith_f_op_f32(435f - 397f);
    var var_3 = ~0u;
    let var_4 = vec3<u32>(global2.x, global2.x, global1.x);
    return Struct_1(1u <= _wgslsmith_clamp_u32(~global1.x, _wgslsmith_mult_u32(2796u, select(global2.x, 23074u, true)), global2.x));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(Struct_1(false));
    var var_1 = Struct_2(-224f, u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))), vec2<f32>(-1000f, -421f), vec2<bool>(arg_1.a, arg_1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, 349f), vec2<f32>(var_1.a, var_1.a), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(176f, 230f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 1000f) + vec2<f32>(-269f, 2268f))))))));
    let var_3 = vec3<bool>(true, !(3120i != -u_input.a.x), true);
    var var_4 = var_3;
    return 0u;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<bool> {
    global2 = vec4<u32>(global2.x, firstLeadingBit(~_wgslsmith_clamp_u32(0u, ~global2.x, global1.x)), func_3(~_wgslsmith_mult_u32(31660u ^ global1.x, 24587u), func_2()), ~_wgslsmith_mult_u32(~global1.x, ~(~global2.x)));
    let var_0 = vec4<bool>(arg_1.a.a, all(vec4<bool>(func_2().a, true, arg_1.a.a, true)), !(!arg_1.a.a), arg_1.a.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-215f, arg_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, 171f, -1033f, 251f), vec4<f32>(1000f, arg_2.x, -480f, arg_2.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1082f, -1056f, arg_2.x, arg_2.x), vec4<f32>(arg_2.x, -1000f, -1535f, arg_2.x)))))));
    let var_2 = -312f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) * -549f)));
    var var_3 = true;
    return var_0.wy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true);
    let var_1 = Struct_1(!select(var_0.a && false, all(func_1(vec3<i32>(-20143i, u_input.a.x, u_input.a.x), Struct_3(global0[_wgslsmith_index_u32(global1.x, 18u)]), vec3<f32>(-1917f, -347f, 1081f))), true & (true && var_0.a)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x));
    var_0 = func_2();
    global2 = countOneBits(~(~vec4<u32>(0u, 55453u, global1.x, 0u))) ^ vec4<u32>(global1.x, _wgslsmith_mult_u32(45322u, 17457u), ~0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(29939u, global1.x), firstTrailingBit(reverseBits(1u))));
    let var_3 = vec4<bool>(!var_0.a, true, !all(vec2<bool>(!var_1.a, true)), true);
    var var_4 = 0i;
    let var_5 = countOneBits(_wgslsmith_add_vec3_i32(~firstTrailingBit(vec3<i32>(0i, -29462i, -2147483647i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b, var_2.b, u_input.a.x), vec3<i32>(2147483647i, -25719i, -2147483647i)))) ^ (firstLeadingBit(~(-vec3<i32>(var_2.b, -1i, var_2.b))) << (vec3<u32>(0u, ~6028u >> (_wgslsmith_dot_vec3_u32(global2.wwx, vec3<u32>(20944u, global1.x, global1.x)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 17074u, global1.x), vec3<u32>(global1.x, global1.x, 1u), vec3<u32>(4294967295u, global2.x, global1.x)))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 1140f, -757f, var_2.a) + vec4<f32>(459f, -1000f, var_2.a, -118f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 832f, 585f, var_2.a) * vec4<f32>(-445f, 551f, 1478f, var_2.a))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -611f, var_2.a, var_2.a) * vec4<f32>(208f, 221f, var_2.a, 113f))))), var_5.x, _wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a, -476f, var_2.a)))))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(-1941f * 296f), -1604f <= var_2.a)), var_2.a))));
}

