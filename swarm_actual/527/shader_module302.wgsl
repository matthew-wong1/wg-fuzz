struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-230f, 224f), vec2<f32>(867f, -871f), vec2<f32>(-721f, 380f), vec2<f32>(-869f, -117f), vec2<f32>(-181f, 991f), vec2<f32>(-1202f, 555f), vec2<f32>(-1096f, -755f), vec2<f32>(203f, 712f), vec2<f32>(-377f, -448f), vec2<f32>(-134f, 808f), vec2<f32>(1946f, 1639f), vec2<f32>(-1000f, 373f), vec2<f32>(-946f, 391f), vec2<f32>(144f, -1998f), vec2<f32>(1893f, 423f), vec2<f32>(1061f, 1005f), vec2<f32>(-1476f, 379f), vec2<f32>(-2173f, -1564f), vec2<f32>(695f, 1000f), vec2<f32>(-333f, -1549f), vec2<f32>(382f, 1773f), vec2<f32>(584f, 1029f), vec2<f32>(-2288f, 1263f), vec2<f32>(-179f, 819f), vec2<f32>(-314f, -685f));

var<private> global1: Struct_3;

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = global1.d;
    global2 = u_input.c | vec4<i32>(global2.x, u_input.c.x, i32(-1i) * -(global1.d.d.c.x ^ -1i), global2.x);
    var var_1 = global1.d.d;
    var var_2 = var_0.d;
    var var_3 = Struct_2(vec3<bool>(any(!global1.d.a.yx), !var_2.b, var_0.a.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f - -929f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.d.d)), var_1.d), _wgslsmith_f_op_f32(-1066f * _wgslsmith_f_op_f32(var_2.e.x + 1231f)), -2437f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(128f)))))), var_0.d);
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    global2 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -select(u_input.c, u_input.c, vec4<bool>(global1.d.a.x, false, global1.d.d.a, false)));
    let var_0 = !vec2<bool>(global1.d.d.a, (global1.c.x > _wgslsmith_f_op_f32(1063f + global1.d.b.x)) || global1.d.d.a);
    var var_1 = select(~(~vec3<u32>(1u, func_3(vec4<u32>(66952u, 54923u, u_input.d, global1.b)), ~global1.a)), ~min(vec3<u32>(~37601u, 16770u << (global1.a % 32u), 34779u), min(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(5651u, 41038u, global1.a), vec3<u32>(1u, 42554u, global1.a), false))), vec3<bool>(true, var_0.x, !(abs(5739u) >= func_3(vec4<u32>(global1.a, 75210u, global1.a, global1.a)))));
    let var_2 = global1.e;
    global1 = Struct_3(global1.a, ((u_input.d >> (~u_input.a % 32u)) & countOneBits(_wgslsmith_div_u32(global1.a, global1.b))) ^ var_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d.b * global1.c) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.d, var_2.e.x, global1.d.c, -2133f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, global1.d.b.x, -397f, 2655f) - vec4<f32>(-1000f, 689f, global1.c.x, -2001f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, var_2.d, -1000f, var_2.e.x)), vec4<f32>(-552f, global1.d.c, -352f, -886f), select(vec4<bool>(var_0.x, var_0.x, false, var_2.a), vec4<bool>(true, false, false, true), vec4<bool>(false, global1.d.d.a, global1.e.a, var_0.x)))))), global1.d, Struct_1(false, !var_0.x, vec3<i32>(1i >> (func_3(vec4<u32>(var_1.x, var_1.x, 89593u, 4294967295u)) % 32u), min(-39080i, _wgslsmith_dot_vec3_i32(vec3<i32>(24150i, global2.x, 1i), global1.d.d.c)), _wgslsmith_mod_i32(abs(14147i), ~var_2.c.x)), _wgslsmith_f_op_f32(-1991f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * global1.e.d)))), vec2<f32>(581f, -1000f)));
    return global1.d;
}

fn func_1() -> f32 {
    let var_0 = func_2();
    var var_1 = ~_wgslsmith_mult_u32(~0u, ~_wgslsmith_add_u32(~global1.b, 1u));
    let var_2 = ~(~vec2<u32>(17837u, countOneBits(~9119u)));
    global2 = vec4<i32>(~_wgslsmith_dot_vec3_i32(~global1.e.c, _wgslsmith_sub_vec3_i32(global2.xxy, vec3<i32>(28126i, global1.d.d.c.x, u_input.b))), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(global1.e.c), _wgslsmith_clamp_vec3_i32(global1.d.d.c, u_input.c.zzy, u_input.c.wwx)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, var_0.d.c.x, 5892i), vec3<i32>(u_input.b, -13801i, -32909i))))), _wgslsmith_mult_i32(1i, 2147483647i), global2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.x), var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-312f + global1.d.c) * -514f)), true)));
    global0 = array<vec2<f32>, 25>();
    var var_1 = global1.d;
    let var_2 = vec3<i32>((global1.d.d.c.x & -69311i) >> (u_input.d % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(max(-30i, firstLeadingBit(-1i)), global2.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-51045i, var_1.d.c.x), vec2<i32>(global2.x, 1i))), select(~u_input.b, global2.x, true));
    var var_3 = Struct_1(all(!select(!vec4<bool>(global1.e.b, false, true, false), !vec4<bool>(global1.e.a, global1.e.a, true, global1.e.b), !vec4<bool>(var_1.a.x, var_1.a.x, true, true))), false, vec3<i32>(var_2.x, var_1.d.c.x, ~2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(157f, 1286f))))))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) + _wgslsmith_f_op_f32(-229f * var_3.d)))));
    let var_5 = func_2();
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.d, _wgslsmith_add_u32(63390u, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 17303u), ~abs(vec2<u32>(global1.b, u_input.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b * var_5.b)));
}

