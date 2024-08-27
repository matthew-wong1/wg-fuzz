struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<f32>(-987f, 487f), vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec2<u32>(109981u, 6362u)), vec3<u32>(53002u, 0u, 4294967295u), -158f);

var<private> global1: i32 = 39700i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), arg_0.b.a.x);
    let var_1 = _wgslsmith_div_i32(firstLeadingBit(u_input.c), firstTrailingBit(-arg_0.b.c.x >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, 4294967295u, 151846u, arg_1), vec4<u32>(arg_1, arg_2.d.x, arg_1, arg_0.b.d.x)), _wgslsmith_add_u32(u_input.a.x, 28185u), all(global0.a)) % 32u)));
    global0 = arg_0;
    global0 = arg_0;
    global0 = Struct_2(vec3<bool>(any(select(select(arg_0.a, vec3<bool>(true, arg_0.a.x, global0.b.b.x), global0.b.b.x), !vec3<bool>(arg_0.b.b.x, true, global0.a.x), arg_0.a)), true, true), arg_0.b, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.x, ~(~arg_2.d.x), arg_2.d.x ^ 72151u), vec3<u32>(0u, ~arg_0.b.d.x, u_input.a.x) | _wgslsmith_div_vec3_u32(min(vec3<u32>(arg_0.b.d.x, 37799u, arg_2.d.x), vec3<u32>(4294967295u, 0u, u_input.d.x)), vec3<u32>(arg_0.c.x, 108246u, arg_2.d.x))), -2109f);
    return arg_2.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_2 {
    return Struct_2(global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(!global0.a, global0.b, countOneBits(global0.c), -1461f), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~59607u), global0.b)), global0.b.b, global0.b.c, vec2<u32>(global0.c.x, arg_2.x)), ~(~u_input.d.zxx), -2036f);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b.a.x, arg_1), vec2<f32>(global0.d, arg_1))), global0.b.a))), !global0.a.zx, -global0.b.c, ~vec2<u32>(_wgslsmith_mod_u32(arg_2.x, _wgslsmith_dot_vec2_u32(u_input.a.xz, global0.b.d)), u_input.a.x));
    global1 = _wgslsmith_mult_i32(var_0.c.x, abs(~abs(global0.b.c.x)));
    var var_1 = func_2(vec4<i32>(u_input.c, 52557i, var_0.c.x, i32(-1i) * -var_0.c.x), arg_1, ~vec2<u32>(0u, arg_2.x ^ global0.b.d.x));
    global0 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_1.a, global0.b, global0.c, global0.b.a.x), ~var_0.d.x, func_2(vec4<i32>(global0.b.c.x, var_1.b.c.x, -55725i, global0.b.c.x), -152f, vec2<u32>(4294967295u, 40787u)).b)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.d, -1181f)))))), var_1.a.xz, _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.c.x, -32713i, -2147483647i) & reverseBits(var_0.c), vec3<i32>(0i, var_0.c.x, -5579i) >> (reverseBits(global0.c) % vec3<u32>(32u))), vec2<u32>(17127u >> (_wgslsmith_add_u32(0u, var_0.d.x) % 32u), select(~0u, 53008u, global0.d < var_0.a.x))), var_1.c, func_2(select(_wgslsmith_add_vec4_i32(-vec4<i32>(-7306i, 0i, 0i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-49955i, u_input.c, var_0.c.x, global0.b.c.x), vec4<i32>(global0.b.c.x, u_input.c, 1i, global0.b.c.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, var_1.b.c.x, 9786i, 0i), ~vec4<i32>(-56731i, global0.b.c.x, global0.b.c.x, var_1.b.c.x)), false), 470f, vec2<u32>(global0.c.x, var_1.b.d.x)).d);
    let var_2 = -2147483647i | abs(_wgslsmith_mult_i32(~(-81119i << (var_0.d.x % 32u)), firstTrailingBit(-var_0.c.x)));
    return var_1.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<bool>(!global0.a.x, true, global0.a.x, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(623f, 192f, 364f, arg_1.a.x), vec4<f32>(arg_1.a.x, 1593f, 1045f, arg_1.a.x), var_0.x)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1021f, arg_1.a.x, global0.d, arg_1.a.x), vec4<f32>(global0.d, global0.d, global0.d, global0.d)) + vec4<f32>(-2017f, -539f, arg_1.a.x, arg_1.a.x))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.d)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-257f, global0.b.a.x)), global0.b.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1609f, global0.b.a.x, arg_1.a.x, global0.d)))))));
    global0 = func_2(vec4<i32>(u_input.c, _wgslsmith_mult_i32((global0.b.c.x << (global0.c.x % 32u)) ^ ~(-1i), -(~(-5151i))), 2147483647i, -1i), -706f, vec2<u32>(global0.c.x, 6731u));
    global0 = Struct_2(var_0.wyx, Struct_1(vec2<f32>(var_1.x, arg_1.a.x), !select(select(global0.b.b, global0.b.b, vec2<bool>(true, false)), !var_0.zw, all(var_0.xxy)), ~arg_1.c << (_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, arg_1.d.x, global0.c.x), ~vec3<u32>(4294967295u, 28216u, global0.c.x)) % vec3<u32>(32u)), ~arg_1.d), firstTrailingBit(u_input.d.zyz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(floor(-1444f)))));
    global1 = 17090i;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(-1i);
    let var_0 = global0.b.c.zz;
    let var_1 = func_4(u_input.b, func_1(global0.a.yz, -1000f, min(vec3<u32>(1u, u_input.b.x, global0.b.d.x), vec3<u32>(global0.b.d.x, 4294967295u, u_input.d.x) >> (vec3<u32>(62123u, u_input.d.x, 0u) % vec3<u32>(32u))) & u_input.d.ywx));
    var var_2 = u_input.c;
    let var_3 = Struct_2(!vec3<bool>(true, true, any(global0.b.b)), global0.b, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) + global0.d)));
    let var_4 = vec4<bool>(true, global0.b.a.x == 443f, all(func_2(vec4<i32>(2147483647i, u_input.c, 2147483647i << (global0.c.x % 32u), var_0.x), var_3.d, var_3.b.d).a), global0.b.b.x);
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1 << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 23676u, 25908u), u_input.a), vec3<u32>(var_1, 7967u, var_3.c.x)), 0u) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, global0.b.a.x, -749f, -350f)), -u_input.c, u_input.d);
}

