struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(78613u, 1u), -1000f, vec4<f32>(756f, -225f, -417f, -1630f), vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 38340u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -7007i, arg_0, arg_0) | abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(41306i, -1i, 2147483647i), ~vec3<i32>(arg_0, arg_0, -19630i))), min(-(min(vec3<i32>(12001i, arg_0, 1i), vec3<i32>(-2147483647i, arg_0, -1i)) << (u_input.a.yyx % vec3<u32>(32u))), ~(vec3<i32>(arg_0, 47909i, arg_0) >> (u_input.a.yyw % vec3<u32>(32u)))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c.yxx + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 322f, arg_1) * arg_2.c.xww) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -204f, arg_2.b)))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, _wgslsmith_f_op_f32(global0.x + -249f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - global1.c.x)))));
    var var_1 = min(~0u, ~arg_2.e.x);
    var_1 = 1u;
    let var_2 = Struct_1(max(~(~arg_2.a), vec2<u32>(arg_2.a.x, abs(0u))), -1436f, arg_2.c, global1.d, vec2<u32>(4294967295u << (_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(arg_2.e.x, 2177u, 4294967295u, arg_2.a.x)) % 32u), ~33126u));
    return vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-arg_1))), 493f, !arg_2.d.x)), -280f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -266f), var_2.c.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> vec3<f32> {
    var var_0 = arg_1 != _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1, arg_1, arg_1), max(2147483647i, ~arg_1));
    var var_1 = Struct_1(global1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(~arg_1, _wgslsmith_div_f32(global0.x, global0.x), Struct_1(u_input.b.xz, global0.x, global1.c, vec4<bool>(global1.d.x, arg_0.x, false, arg_0.x), vec2<u32>(1u, 45195u)))), global1.c, true)))), select(arg_0, !arg_0, arg_0), global1.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -812f), -196f))))));
    let var_3 = Struct_1(global1.a >> (vec2<u32>(4294967295u, global1.a.x | _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(5989u, global1.a.x, global1.a.x, global1.e.x))) % vec2<u32>(32u)), var_1.b, global1.c, !(!vec4<bool>(true, all(global1.d.xy), false, any(arg_0.yxw))), ~global1.a);
    var_0 = any(select(arg_0.wwx, !(!(!var_1.d.zyz)), select(!select(vec3<bool>(global1.d.x, false, true), vec3<bool>(true, true, arg_0.x), arg_0.x), vec3<bool>(!var_3.d.x, 2147483647i <= arg_1, global1.d.x), true && (arg_1 >= 18064i))));
    return global1.c.yxz;
}

fn func_1() -> Struct_1 {
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b - global0.x)))))));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(-1485f)))) * _wgslsmith_f_op_vec3_f32(func_2(!(!vec4<bool>(global1.d.x, global1.d.x, true, false)), abs(0i) >> ((u_input.c << (u_input.c % 32u)) % 32u)))), global1.c.xxx));
    global1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 10016u), vec2<u32>(49654u, ~1u ^ ~u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1785f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_div_f32(global0.x, -1078f), global1.d.x)))), global1.c, global1.d, reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, global1.e.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(u_input.c, u_input.c))) & (global1.e & vec2<u32>(1u, 1u))));
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(~u_input.a, u_input.a, all(select(global1.d.yzy, vec3<bool>(global1.d.x, true, global1.d.x), vec3<bool>(global1.d.x, global1.d.x, false)))), _wgslsmith_clamp_vec4_u32(~u_input.a, ~(u_input.a >> (u_input.a % vec4<u32>(32u))), max(u_input.a, vec4<u32>(40035u, 12875u, 15407u, u_input.c)) ^ min(vec4<u32>(global1.e.x, u_input.c, 4294967295u, 1u), vec4<u32>(4294967295u, global1.a.x, 8410u, u_input.a.x))), u_input.a), u_input.a);
    let var_1 = u_input.a;
    return Struct_1(vec2<u32>(42933u, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b - -728f)))) - _wgslsmith_f_op_f32(-global1.b)), vec4<f32>(_wgslsmith_f_op_f32(select(-702f, global1.c.x, global1.d.x)), _wgslsmith_div_f32(global1.b, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(exp2(global1.b)))), global0.x, _wgslsmith_f_op_f32(-global1.c.x)), global1.d, ~countOneBits(var_1.xw));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(u_input.b.x, 0u))), u_input.b.yx);
    global0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(1429f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c.x, -376f))))), global1.b);
    var var_1 = global1.a.x;
    var var_2 = vec4<u32>(2792u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4531u, u_input.a.x, var_0), u_input.b), ~u_input.b), 0u), ~func_1().e.x, ~(~_wgslsmith_add_u32(u_input.b.x, ~var_0)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.c.ywy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x), func_1().c.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(168f, 1643f, 1000f))) + global1.c.yyy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f * 251f))), firstTrailingBit(42032u) >= 4294967295u)), vec3<u32>(~(1u << (_wgslsmith_dot_vec2_u32(var_2.xx, vec2<u32>(var_0, var_0)) % 32u)), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, global1.e.x, global1.a.x, u_input.a.x), ~u_input.a) | ~firstTrailingBit(var_2.x)));
}

