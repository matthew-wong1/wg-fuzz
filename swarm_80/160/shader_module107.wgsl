struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 625f;

var<private> global1: array<vec3<i32>, 28>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> f32 {
    let var_0 = min(1u, u_input.a);
    let var_1 = Struct_1(firstLeadingBit(~(~(vec3<u32>(var_0, var_0, 4294967295u) << (vec3<u32>(0u, 9876u, var_0) % vec3<u32>(32u))))), 1096f, ~u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(352f, -159f, 565f), vec3<f32>(-1058f, -1380f, -174f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-431f, 861f, 365f))))), firstTrailingBit(min(50153i, 10796i)) & (-31375i << (var_0 % 32u)));
    global0 = var_1.b;
    var var_2 = var_1.e;
    return var_1.b;
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, arg_0.c.c, _wgslsmith_div_u32(4294967295u << (u_input.a % 32u), _wgslsmith_sub_u32(0u, u_input.a))) | vec3<u32>(~u_input.a, abs(1u), 1u), arg_0.e.a);
    global1 = array<vec3<i32>, 28>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.d.x * 808f) - _wgslsmith_f_op_f32(arg_0.e.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f * -1094f) + arg_0.e.d.x))));
    global0 = 937f;
    let var_1 = Struct_2(_wgslsmith_mult_vec3_i32(abs(-arg_0.a), ~arg_0.a), arg_0.c.e, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_div_u32(45785u, u_input.a), 1u), reverseBits(vec3<u32>(var_0.x, arg_0.c.c, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.e.d.x, -1237f) + arg_0.c.b)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, u_input.a) >> ((1u >> (var_0.x % 32u)) % 32u), _wgslsmith_mult_u32(min(u_input.a, arg_0.e.c), ~0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.e.d, vec3<f32>(-133f, arg_0.e.b, -1000f)))) - vec3<f32>(arg_0.e.b, arg_0.c.d.x, _wgslsmith_f_op_f32(f32(-1f) * -910f))), arg_0.e.e), arg_0.d, Struct_1(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.e.b)) + arg_0.c.d.x))), var_0.x, vec3<f32>(arg_0.e.d.x, arg_0.c.b, _wgslsmith_f_op_f32(f32(-1f) * -1238f)), arg_0.e.e));
    return ~countOneBits(u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global1 = array<vec3<i32>, 28>();
    var var_0 = reverseBits(-(~global1[_wgslsmith_index_u32(81616u, 28u)] | vec3<i32>(9872i, arg_0.e, arg_0.e)) << (~((vec3<u32>(1u, arg_1.a.x, 1u) >> (arg_0.a % vec3<u32>(32u))) ^ ~vec3<u32>(51505u, arg_0.a.x, arg_0.a.x)) % vec3<u32>(32u)));
    var_0 = vec3<i32>(-2147483647i, 5646i, _wgslsmith_div_i32(max(~var_0.x, _wgslsmith_add_i32(-49065i, var_0.x)), (arg_0.e ^ 1i) >> (firstTrailingBit(26121u) % 32u)));
    let var_1 = -vec4<i32>(0i, _wgslsmith_div_i32(0i, arg_0.e), -firstLeadingBit(214i), var_0.x);
    global1 = array<vec3<i32>, 28>();
    return Struct_3(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1905u, 1u, 4294967295u, arg_0.c), firstLeadingBit(vec4<u32>(arg_0.a.x, arg_1.a.x, arg_1.a.x, arg_0.a.x)), vec4<u32>(arg_1.b.x, u_input.a, arg_0.a.x, 40582u))), arg_1.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> i32 {
    let var_0 = -1630f;
    global1 = array<vec3<i32>, 28>();
    let var_1 = func_4(Struct_1(vec3<u32>(4294967295u, 137334u, arg_1), _wgslsmith_f_op_f32(func_2()), ~func_3(Struct_2(vec3<i32>(arg_0.x, -1i, arg_0.x), arg_0.x, Struct_1(vec3<u32>(u_input.a, 11769u, u_input.a), var_0, u_input.a, vec3<f32>(var_0, -795f, var_0), arg_0.x), true, Struct_1(vec3<u32>(u_input.a, 23071u, u_input.a), var_0, 1u, vec3<f32>(var_0, var_0, -640f), arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1178f, 431f, var_0)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-441f, -1913f, var_0), vec3<f32>(var_0, -508f, -399f))))), arg_0.x), Struct_3(~vec4<u32>(arg_1 ^ 4294967295u, _wgslsmith_sub_u32(4294967295u, u_input.a), ~0u, arg_1), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, select(u_input.a, 4294967295u, false)), max(vec3<u32>(arg_1, 40986u, 18467u), vec3<u32>(114366u, 32832u, arg_1) << (vec3<u32>(u_input.a, 1u, 15028u) % vec3<u32>(32u))))));
    let var_2 = Struct_2(~max(vec3<i32>(-2147483647i, arg_0.x << (u_input.a % 32u), -1i), abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.a, var_1.a), 28u)])), firstTrailingBit(2147483647i), Struct_1(~(~(vec3<u32>(u_input.a, arg_1, 1u) << (var_1.b % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1721f, -501f)))), ~0u, vec3<f32>(var_0, _wgslsmith_div_f32(-506f, var_0), _wgslsmith_f_op_f32(f32(-1f) * -1147f)), reverseBits(-39656i) | arg_0.x), all(vec3<bool>(false, !(var_1.a.x <= var_1.a.x), any(vec2<bool>(false, true)))), Struct_1(~reverseBits(vec3<u32>(u_input.a, 38782u, 42456u)), -994f, ~var_1.a.x, vec3<f32>(-2139f, var_0, var_0), select(arg_0.x, arg_0.x, true || all(vec2<bool>(false, true)))));
    let var_3 = var_2.c;
    return var_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1300f;
    let var_0 = true;
    let var_1 = vec2<bool>(true, all(!select(vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0), var_0 | var_0)));
    var var_2 = var_0;
    let var_3 = vec4<bool>(!var_0, false, _wgslsmith_mod_i32(12611i, abs(-32414i)) >= func_1(firstLeadingBit(vec2<i32>(-8385i, -2147483647i)), ~u_input.a), var_0);
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(81474u, 17965u), var_0) << (max(func_4(Struct_1(vec3<u32>(u_input.a, 4294967295u, 43058u), -1000f, u_input.a, vec3<f32>(-1362f, 1158f, 251f), 0i), Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a))).a.zw, select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u), false)) % vec2<u32>(32u)), vec2<u32>(4294967295u, _wgslsmith_add_u32(firstLeadingBit(u_input.a), 90196u))), vec3<i32>(_wgslsmith_mult_i32(1i, -func_1(vec2<i32>(-1i, -2147483647i), 26083u)), (i32(-1i) * -12856i) << (reverseBits(~u_input.a) % 32u), 1i), -40912i, reverseBits(vec3<i32>(_wgslsmith_mod_i32(1i, -47130i), min(0i, 2147483647i), -16838i)) << (_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a, 4294967295u, u_input.a) | vec3<u32>(u_input.a, 1u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u))), vec3<u32>(_wgslsmith_mod_u32(1u, u_input.a), 1u, _wgslsmith_add_u32(u_input.a, 4294967295u))) % vec3<u32>(32u)), 583f);
}

