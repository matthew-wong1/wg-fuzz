struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(11732i, -16367i);

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<bool>, 22>;

var<private> global3: Struct_2;

var<private> global4: array<u32, 2> = array<u32, 2>(0u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>) -> i32 {
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = global3.c;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(-global3.c.a), global3.c.b);
    global0 = vec2<i32>(global3.b.x, ~(_wgslsmith_mod_i32(1i, 1i) & ~func_3(vec4<u32>(15894u, global3.c.c, global4[_wgslsmith_index_u32(var_0.c, 2u)], global3.c.c), vec3<bool>(true, true, global3.e.x))));
    global1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(39477u, 7610u, 4294967295u, global4[_wgslsmith_index_u32(1u, 2u)]) ^ _wgslsmith_add_vec4_u32(vec4<u32>(20704u, 51150u, global4[_wgslsmith_index_u32(global1.x, 2u)], 6134u), vec4<u32>(global1.x, var_0.c, global4[_wgslsmith_index_u32(17177u, 2u)], global1.x)), vec4<u32>(~0u, var_0.c, 4294967295u | var_0.c, 21973u)), ~global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(0u, global4[_wgslsmith_index_u32(58404u, 2u)], global3.c.c)), 2u)]);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(868f, -202f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.a, 371f), vec2<f32>(-816f, var_0.a), global3.e.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy), vec2<f32>(523f, 1000f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, -1246f)) - _wgslsmith_f_op_vec2_f32(var_1.xx + global3.d.yz)), var_1.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.zy))))), global3.e.xx));
    return global3.c;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = func_2();
    global1 = vec2<u32>(~(1u & global3.c.c) >> (min(abs(0u), func_2().c) % 32u), countOneBits(~min(~20868u, firstLeadingBit(global3.c.c))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -690f);
    var var_2 = vec3<bool>(global3.e.x, true, global3.e.x);
    global0 = reverseBits(min(u_input.a.wx, vec2<i32>(_wgslsmith_mod_i32(global3.b.x, _wgslsmith_mod_i32(987i, u_input.a.x)), -13076i)));
    return Struct_2(var_0.a, global3.b, func_2(), global3.d, global2[_wgslsmith_index_u32(global3.c.c ^ min(~arg_2.c, ~(arg_2.c | 1u)), 22u)]);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> u32 {
    global2 = array<vec3<bool>, 22>();
    var var_0 = arg_1.a.c;
    var_0 = arg_1.a.c;
    let var_1 = arg_1.a.e;
    var var_2 = arg_1.b.x;
    return global1.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(global3.e.x, global3.e.x);
    var var_1 = 2147483647i;
    var var_2 = func_1(global3.d.x, _wgslsmith_f_op_f32(arg_1.a + arg_2.x), func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(645f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b + 643f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-199f, 921f))), arg_0).c);
    var_2 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -749f), func_2().a, global3.c);
    let var_3 = reverseBits(arg_1.b.x);
    return func_1(_wgslsmith_f_op_f32(round(-1341f)), func_2().b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2315f), arg_1.a, arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.d.x, 1095f), _wgslsmith_f_op_f32(round(global3.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-987f * global3.c.b) * _wgslsmith_f_op_f32(global3.d.x - -441f)))), -280f, func_4(~0i ^ ~global3.b.x, Struct_3(func_1(-894f, global3.a, Struct_1(678f, global3.c.b, 0u)), vec4<bool>(false, global3.e.x, global3.e.x, global3.e.x), vec4<bool>(global3.e.x, global3.e.x, global3.e.x, false), func_1(global3.d.x, -118f, global3.c).e.x))), func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1771f * 282f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, -1000f) + _wgslsmith_div_f32(-1000f, global3.c.a)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.d.x, global3.c.b)) - func_2().a), _wgslsmith_f_op_f32(-global3.c.a), func_2().c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d.zw)), _wgslsmith_mult_vec2_i32(vec2<i32>(global3.b.x, ~global0.x >> ((global3.c.c | global3.c.c) % 32u)), -countOneBits(vec2<i32>(u_input.a.x, -2147483647i)) ^ ((vec2<i32>(0i, u_input.a.x) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) & u_input.a.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global3.d.xyz))), vec3<f32>(2562f, var_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.a)), func_1(var_0.c.b, -655f, Struct_1(898f, -1075f, global1.x)).c.a)))), func_2().c, ~(~func_3(~vec4<u32>(global3.c.c, global4[_wgslsmith_index_u32(1u, 2u)], global3.c.c, global1.x), vec3<bool>(false, global3.e.x, true))));
}

