struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 32> = array<bool, 32>(false, true, false, false, true, false, false, false, true, false, false, true, false, true, true, true, false, false, false, true, true, false, true, true, false, true, false, true, false, false, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> vec4<bool> {
    global1 = array<bool, 32>();
    global1 = array<bool, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0.wwy + arg_0.xzy);
    global0 = _wgslsmith_f_op_f32(arg_1.d.b.x - -1167f);
    global1 = array<bool, 32>();
    return select(select(!vec4<bool>(!arg_3.x, true, global1[_wgslsmith_index_u32(1u, 32u)], 55425i > u_input.e.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], true, true, all(select(vec4<bool>(false, false, arg_1.c, true), arg_1.a, arg_3))), !select(true, !arg_3.x, all(arg_3.zwz))), vec4<bool>(false, true, ~1u >= u_input.b.x, select(arg_1.b, global1[_wgslsmith_index_u32(~arg_1.d.d.x, 32u)], any(select(vec4<bool>(false, true, arg_3.x, false), arg_1.a, false)))), !(!arg_1.a));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(579f, -823f, 651f, 275f)))), Struct_2(!vec4<bool>(true, global1[_wgslsmith_index_u32(27912u, 32u)], global1[_wgslsmith_index_u32(32139u, 32u)], true), global1[_wgslsmith_index_u32(110146u, 32u)], true, Struct_1(967f, vec2<f32>(637f, 1545f), vec2<f32>(-292f, 894f), u_input.d)), _wgslsmith_div_f32(2464f, _wgslsmith_f_op_f32(-1408f + -485f)), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(9481u, 32u)], true, global1[_wgslsmith_index_u32(11507u, 32u)]))), select(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-873f, 1225f, 1629f, 2920f)), Struct_2(vec4<bool>(true, global1[_wgslsmith_index_u32(16062u, 32u)], global1[_wgslsmith_index_u32(23593u, 32u)], false), global1[_wgslsmith_index_u32(41985u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], Struct_1(-341f, vec2<f32>(274f, -314f), vec2<f32>(487f, 1000f), vec3<u32>(u_input.d.x, 56272u, u_input.c))), _wgslsmith_f_op_f32(round(1000f)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], false, false, global1[_wgslsmith_index_u32(u_input.d.x, 32u)])), vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(40697u, 32u)])), false, !global1[_wgslsmith_index_u32(u_input.c, 32u)]), true), true && global1[_wgslsmith_index_u32(u_input.c, 32u)]), true, ~u_input.a == 1i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-934f)) * _wgslsmith_f_op_f32(abs(-2511f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1881f, 113f) * vec2<f32>(1296f, -1762f)), vec2<f32>(-438f, -3198f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(493f, 698f) - vec2<f32>(-780f, -565f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(431f, -1360f))))), vec3<u32>(~0u, ~_wgslsmith_clamp_u32(4294967295u, u_input.d.x, 66362u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 90435u, 4294967295u, 4294967295u), ~vec4<u32>(u_input.d.x, 1u, 0u, 4294967295u)))));
    var var_1 = u_input.e.zx;
    var_1 = u_input.e.yy >> ((_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.d.d.x, u_input.b.x), u_input.b.xz) & (_wgslsmith_sub_vec2_u32(var_0.d.d.zy, firstTrailingBit(u_input.b.yz)) & _wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.c, 46476u), vec2<u32>(u_input.d.x, var_0.d.d.x), global1[_wgslsmith_index_u32(30594u, 32u)]), countOneBits(var_0.d.d.zy)))) % vec2<u32>(32u));
    var var_2 = u_input.e.zz;
    var var_3 = true;
    return u_input.c;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(62410u, firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 28997u))), u_input.d.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u ^ ~u_input.b.x, func_2()), u_input.b.x));
    global1 = array<bool, 32>();
    global0 = _wgslsmith_div_f32(333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1f))))));
    let var_2 = firstLeadingBit(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u) << (u_input.d.xy % vec2<u32>(32u)), ~u_input.b.xy)), 37292u, reverseBits(1u)));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-211f, 256f) + vec2<f32>(-442f, 1089f))), vec2<f32>(-1471f, 1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1949f), _wgslsmith_f_op_f32(143f + -1105f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-286f, -534f)))))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-592f, -458f))) + vec2<f32>(_wgslsmith_f_op_f32(-1578f + 754f), _wgslsmith_f_op_f32(-961f * -1000f))))), ~_wgslsmith_mod_vec3_u32(u_input.d, u_input.d));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2)), 564f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1617f)))));
    let var_0 = arg_3;
    var var_1 = Struct_1(var_0.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1343f, arg_2)), var_0.c, ~(~u_input.d));
    var var_2 = Struct_2(vec4<bool>(true, !(-21957i >= u_input.e.x), any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(4294967295u, 32u)]), func_3(vec4<f32>(1242f, arg_3.b.x, var_0.a, arg_0.b.x), Struct_2(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(arg_3.d.x, 32u)]), false, global1[_wgslsmith_index_u32(var_1.d.x, 32u)], arg_0), arg_2, vec4<bool>(global1[_wgslsmith_index_u32(arg_3.d.x, 32u)], global1[_wgslsmith_index_u32(62112u, 32u)], global1[_wgslsmith_index_u32(arg_0.d.x, 32u)], false)).ww, true)), global1[_wgslsmith_index_u32(~(~(~u_input.d.x)), 32u)]), select(global1[_wgslsmith_index_u32(~var_1.d.x, 32u)], false, min(1u, ~u_input.c) < (arg_0.d.x << (_wgslsmith_clamp_u32(var_1.d.x, 61320u, var_0.d.x) % 32u))), global1[_wgslsmith_index_u32(25018u, 32u)], func_1());
    var_1 = func_1();
    return -1168f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_1(), 49937i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().c.x - -830f)))), Struct_1(-962f, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-455f * 162f), -498f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(137f, -118f) - vec2<f32>(1220f, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2544f, -461f) - vec2<f32>(-1534f, -1982f)))), u_input.d)));
    let var_1 = min(vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(abs(u_input.e)), _wgslsmith_clamp_vec3_i32(-u_input.e, select(u_input.e, vec3<i32>(u_input.e.x, -2147483647i, u_input.e.x), global1[_wgslsmith_index_u32(u_input.c, 32u)]), firstLeadingBit(vec3<i32>(u_input.e.x, -2147483647i, 2147483647i)))), -u_input.e.x & u_input.a, i32(-1i) * -u_input.e.x, -6297i), ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -37546i, 49057i, -31496i), vec4<i32>(u_input.a, u_input.e.x, u_input.a, 2147483647i), vec4<i32>(u_input.e.x, u_input.a, u_input.e.x, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.e.x, 481i, u_input.e.x), vec4<i32>(u_input.e.x, -21042i, 0i, 725i))) & abs(~(-vec4<i32>(22594i, u_input.e.x, u_input.a, u_input.a))));
    global1 = array<bool, 32>();
    var var_2 = vec3<f32>(var_0, _wgslsmith_f_op_f32(step(var_0, -1497f)), var_0);
    var var_3 = var_2.x;
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(1000f * -1084f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~37589u & _wgslsmith_mod_u32(u_input.c, u_input.b.x), u_input.b.x), 32u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

