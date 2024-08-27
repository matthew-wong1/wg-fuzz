struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec3<bool>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32 = 0i;

var<private> global2: array<Struct_1, 29>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.c), arg_0.b);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.xyw)) - arg_1.yyw)));
    let var_1 = arg_0;
    var var_2 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yy, _wgslsmith_div_vec2_i32(vec2<i32>(arg_2, arg_0.a), vec2<i32>(arg_2, -1i))), var_1.a, -2147483647i, arg_0.a)) >> (_wgslsmith_add_vec4_u32(max(vec4<u32>(4294967295u, _wgslsmith_mult_u32(arg_3.x, 2304u), _wgslsmith_mult_u32(arg_3.x, 4821u), ~u_input.e), u_input.b), u_input.b) % vec4<u32>(32u));
    global2 = array<Struct_1, 29>();
    return vec4<bool>(any(!var_1.b.wzz), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1125f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(trunc(-128f)))), false, true);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: Struct_4) -> bool {
    global2 = array<Struct_1, 29>();
    global1 = i32(-1i) * -25127i;
    var var_0 = vec2<u32>(arg_2.e.a, ~(~21278u));
    var var_1 = Struct_2(global0.x, select(!(!arg_2.d.b), arg_3.a.b, select(arg_3.a.b, select(!arg_2.d.b, func_3(Struct_3(-13052i, arg_3.a.b, 1719f), vec4<f32>(arg_2.b.x, -1593f, global0.x, arg_3.a.c), arg_3.a.a, u_input.b), true), arg_2.a.b)));
    var_0 = abs(min(u_input.b.xw, vec2<u32>(~4294967295u, 0u)));
    return select(true, func_3(arg_3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, global0.x, global0.x, -1199f)))), arg_2.a.a, firstLeadingBit(~u_input.b)).x, all(arg_2.a.b.xw));
}

fn func_1() -> vec3<i32> {
    global2 = array<Struct_1, 29>();
    var var_0 = vec2<bool>(-1i <= (_wgslsmith_clamp_i32(1i, 16753i, -30206i) >> ((_wgslsmith_mod_u32(15922u, u_input.e) >> (69219u % 32u)) % 32u)), true);
    let var_1 = Struct_4(Struct_3(0i, !vec4<bool>(true, func_2(u_input.e, -43439i, Struct_5(Struct_3(-1i, vec4<bool>(var_0.x, true, var_0.x, var_0.x), global0.x), vec2<f32>(624f, global0.x), vec3<bool>(false, false, var_0.x), Struct_3(u_input.a.x, vec4<bool>(true, var_0.x, var_0.x, var_0.x), -1000f), Struct_1(u_input.b.x, -2147483647i, vec4<i32>(u_input.a.x, -1i, 1i, -1i), -35213i)), Struct_4(Struct_3(u_input.d, vec4<bool>(var_0.x, var_0.x, true, var_0.x), global0.x))), all(vec3<bool>(var_0.x, false, true)), true), _wgslsmith_f_op_f32(floor(global0.x))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.c, global0.x)))), global0.x, -500f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f + global0.x)))));
    return _wgslsmith_div_vec3_i32(firstLeadingBit(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, var_1.a.a, 7473i), _wgslsmith_div_vec3_i32(u_input.a.yzz, vec3<i32>(-16439i, var_1.a.a, u_input.c.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 0i, -12745i), u_input.a.wzx, u_input.a.xww)))), u_input.a.yyx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(u_input.e, 66467u)), _wgslsmith_add_vec2_u32(u_input.b.xx, u_input.b.yz)), select(~vec2<u32>(60560u, u_input.e), u_input.b.yy, any(vec4<bool>(false, false, false, true)))), ~u_input.b.x);
    var var_1 = global0.xz;
    let var_2 = ~func_1();
    var var_3 = vec3<i32>(~u_input.a.x, -firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(0i, u_input.c.x));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -448f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.x, -1513f, true)), global0.x)))) * var_1.x));
    var var_5 = global0.x;
    let var_6 = var_0;
    var var_7 = ~var_2;
    var_7 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xy, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -1066f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(-var_1.x)))));
}

