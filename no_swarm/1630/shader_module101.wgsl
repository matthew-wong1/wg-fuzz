struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 50345u, 0u), vec3<u32>(18608u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 77438u, 21517u), vec3<u32>(4294967295u, 94361u, 26324u), vec3<u32>(24263u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(170u, 18395u, 50893u), vec3<u32>(55949u, 73367u, 23069u), vec3<u32>(1u, 3142u, 9627u), vec3<u32>(1u, 0u, 42479u), vec3<u32>(35435u, 41223u, 36348u), vec3<u32>(4294967295u, 4294967295u, 27750u), vec3<u32>(49827u, 4294967295u, 1u), vec3<u32>(19226u, 1u, 4294967295u), vec3<u32>(1u, 4958u, 0u), vec3<u32>(17188u, 1u, 42729u), vec3<u32>(1u, 41439u, 0u), vec3<u32>(0u, 4294967295u, 61385u), vec3<u32>(41302u, 33397u, 1u), vec3<u32>(1465u, 43523u, 0u), vec3<u32>(15156u, 0u, 0u), vec3<u32>(43057u, 4294967295u, 34359u), vec3<u32>(4294967295u, 0u, 40048u), vec3<u32>(4294967295u, 4294967295u, 14108u));

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(true, true, false), 142f, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> Struct_2 {
    let var_0 = ~4294967295u;
    var var_1 = Struct_1(global2.a.x, global2.a.x, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b))) + -1000f));
    global0 = array<vec3<u32>, 24>();
    global2 = Struct_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(1000f * 961f), false);
    let var_2 = !global2.a.x;
    return Struct_2(select(global2.a, global2.a, !(!global2.a)), _wgslsmith_f_op_f32(step(1749f, 1622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * var_1.d)) < _wgslsmith_f_op_f32(1031f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = global2.b;
    let var_1 = vec4<bool>(global2.a.x, global2.c, true, 0i < _wgslsmith_sub_i32(_wgslsmith_sub_i32(-u_input.a, -7064i), abs(2147483647i)));
    global0 = array<vec3<u32>, 24>();
    global1 = _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - _wgslsmith_div_f32(global2.b, global2.b))))));
    global1 = global2.b;
    return func_2();
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> f32 {
    global1 = global2.b;
    return _wgslsmith_f_op_f32(min(1151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-242f - -1294f)) * _wgslsmith_f_op_f32(308f + _wgslsmith_f_op_f32(sign(global2.b)))))));
    let var_0 = global2.b;
    var var_1 = Struct_4(global2.a, func_1(abs(-(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-34613i, u_input.a)))), global2.c, Struct_3(func_1(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)), max(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-16934i, u_input.a)))), _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(~48615u, countOneBits(6675u))), ~countOneBits(max(vec2<u32>(29989u, 1u), vec2<u32>(41415u, 37416u))), Struct_1(_wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(1146f, 993f))) < global2.b, global2.a.x, _wgslsmith_mod_u32(~1063u, 33119u), global2.b)), max(1u, ~(~1u)));
    var var_2 = global2.c;
    var var_3 = -1445f;
    var var_4 = Struct_2(func_2().a, _wgslsmith_f_op_f32(select(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b)))), all(vec3<bool>(true != var_1.d.a.a.x, true, global2.c)))), func_2().a.x);
    global2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(~(-abs(vec3<i32>(u_input.a, -2974i, 0i))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, 0i) ^ vec3<i32>(u_input.a, 8124i, -1i), -vec3<i32>(2683i, 60494i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 43111i, u_input.a), vec3<i32>(0i, -2147483647i, u_input.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(min(_wgslsmith_mult_i32(53443i, 1i), _wgslsmith_mult_i32(-46141i, u_input.a)), u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a | 35834i)), select(vec3<i32>(-21958i, u_input.a & -2147483647i, ~(-11250i)), countOneBits(max(vec3<i32>(-57747i, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a))), true)));
}

