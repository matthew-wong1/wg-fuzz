struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    let var_0 = global0.a.a;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.yx)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b.x, -301f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 166f)))))))));
    let var_1 = Struct_1(~arg_0.a.a, all(vec4<bool>(~global0.b.x < _wgslsmith_add_i32(u_input.a, 2147483647i), global0.a.a.b, global0.a.a.b, true)));
    var var_2 = !(!(~(~33319u) != global0.a.a.a.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - arg_0.b.x)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(step(383f, -1463f)))));
    return var_0.b && !var_1.b;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b.x, 446f, global1.x, 852f));
    let var_1 = global0.a.a.a.x;
    let var_2 = Struct_3(Struct_2(Struct_1(u_input.c.xx, func_3(global0.a, global0.a.b) || true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(565f, 167f, var_0.x, global1.x)))))), firstLeadingBit(vec3<i32>(u_input.a, global0.b.x, u_input.a)));
    var var_3 = false;
    var_3 = !(!global0.a.a.b);
    return !(!(!global0.a.a.b));
}

fn func_1() -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(countOneBits(0u), _wgslsmith_mult_u32(u_input.b, 23407u)), vec2<u32>(u_input.d, global0.a.a.a.x)), !global0.a.a.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -1134f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))))));
    var_1 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(569f, global1.x)), -666f)));
    var var_2 = Struct_3(Struct_2(Struct_1(var_0.a, func_2()), vec4<f32>(-1958f, global0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global0.a.b.x), global1.x)), vec3<i32>(-943i, -11998i, 3768i));
    var var_3 = _wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i) * -global0.b, _wgslsmith_mult_vec3_i32(var_2.b, var_2.b)), (-(~var_2.b) >> (abs(~vec3<u32>(global0.a.a.a.x, 16169u, u_input.e)) % vec3<u32>(32u))) & min(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(var_2.b.x, var_2.b.x, -1i)), global0.b), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.b.x, global0.b.x, 50469i), vec4<i32>(u_input.a, -2147483647i, var_2.b.x, u_input.a)), _wgslsmith_div_i32(global0.b.x, 11460i), u_input.a)));
    return any(select(vec3<bool>(!global0.a.a.b, !var_2.a.a.b, max(global0.a.a.a.x, u_input.c.x) == firstTrailingBit(global0.a.a.a.x)), !vec3<bool>(var_2.a.a.b, true, !var_2.a.a.b), any(vec4<bool>(var_0.b && true, true, false, !global0.a.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    var_0 = global1.x;
    var var_1 = ~_wgslsmith_div_vec2_i32(global0.b.zx ^ _wgslsmith_sub_vec2_i32(global0.b.zz >> (vec2<u32>(u_input.b, 26494u) % vec2<u32>(32u)), -vec2<i32>(-2147483647i, u_input.a)), select(global0.b.xy, ~_wgslsmith_sub_vec2_i32(vec2<i32>(14071i, u_input.a), global0.b.xz), !global0.a.a.b || func_1()));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b.x, -467f) - vec2<f32>(global1.x, -1225f)))) + global0.a.b.xw);
    let var_2 = ~_wgslsmith_div_u32(global0.a.a.a.x, u_input.e) < 45923u;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, ~vec2<u32>(global0.a.a.a.x << (global0.a.a.a.x % 32u), 1u) | ~(~(u_input.c.zz | global0.a.a.a)), _wgslsmith_sub_u32(select(_wgslsmith_mult_u32(38940u, global0.a.a.a.x), ~max(26780u, u_input.e), !(!global0.a.a.b)), ~4294967295u));
}

