struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: f32;

var<private> global2: vec4<bool>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_3(Struct_2(vec2<bool>(global2.x, u_input.c.x == u_input.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 21u)], vec2<u32>(58390u, _wgslsmith_mult_u32(u_input.c.x, ~16906u)), Struct_1(min(2147483647i, -17765i >> (u_input.c.x % 32u)), -41513i), global0[_wgslsmith_index_u32(34113u, 21u)]));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, _wgslsmith_f_op_f32(select(705f, -509f, global2.x)), 204f)))));
    var var_2 = var_0;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)) * 1564f));
    var var_3 = var_2.a;
    return countOneBits(select(reverseBits(abs(var_2.a.c)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(2601u, 0u), select(var_2.a.c, var_3.c, true), var_0.a.c), vec2<bool>(all(var_3.a), var_3.a.x)) << (~abs(~vec2<u32>(u_input.c.x, var_3.c.x)) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1047f + -1944f) - 656f))))));
    var var_1 = vec3<u32>(~arg_0.a.c.x << (select(_wgslsmith_mult_u32(arg_0.a.c.x, ~arg_1), ~68484u, arg_2) % 32u), ~_wgslsmith_dot_vec2_u32(~arg_0.a.c << (u_input.c.yw % vec2<u32>(32u)), func_3(50100i)), abs(arg_0.a.c.x));
    let var_2 = Struct_3(Struct_2(global2.wx, global0[_wgslsmith_index_u32(~(~89955u) | ~(~arg_0.a.c.x), 21u)], var_1.zx, Struct_1(-26106i, _wgslsmith_sub_i32(u_input.b.x, 1i)), Struct_1(u_input.b.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, 2147483647i)), select(vec2<i32>(0i, u_input.b.x), u_input.b.yz, true)))));
    var var_3 = vec4<i32>(-2147483647i, 1457i, _wgslsmith_add_i32(1i, ~(~var_2.a.b.a)), _wgslsmith_sub_i32(2147483647i, countOneBits(-17581i)));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-294f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(340f * -921f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(579f)), _wgslsmith_f_op_f32(trunc(-407f))))))));
    return vec4<i32>(arg_0.a.e.a, _wgslsmith_div_i32(-26998i, select(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(18967i, var_3.x)), u_input.b.x), var_3.x, select(true, arg_2, !arg_2))), _wgslsmith_mult_i32(max(~arg_0.a.b.b, _wgslsmith_dot_vec3_i32(u_input.b, var_3.zwy)), _wgslsmith_mod_i32(arg_0.a.d.a, (var_3.x << (u_input.c.x % 32u)) & arg_0.a.e.a)), _wgslsmith_sub_i32(min(_wgslsmith_clamp_i32(-2147483647i, -1i, arg_0.a.e.a) << (abs(17869u) % 32u), ~_wgslsmith_sub_i32(var_2.a.b.b, -47393i)), -(~1i)));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_2 {
    global0 = array<Struct_1, 21>();
    let var_0 = -countOneBits(vec4<i32>(_wgslsmith_div_i32(arg_1, 1i), abs(arg_1), arg_1, firstTrailingBit(u_input.b.x)));
    var var_1 = _wgslsmith_clamp_vec4_i32(select(abs(vec4<i32>(var_0.x, 2147483647i, -2147483647i, -2147483647i) ^ reverseBits(var_0)), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(36686i, -20738i, var_0.x), vec3<i32>(88017i, 1i, 0i)), arg_1, max(~(-18864i), u_input.a), (u_input.a ^ u_input.a) << (u_input.c.x % 32u)), false), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, ~_wgslsmith_sub_i32(var_0.x, u_input.a), var_0.x, var_0.x), -func_2(Struct_3(Struct_2(global2.xw, global0[_wgslsmith_index_u32(13414u, 21u)], vec2<u32>(1u, 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])), 21180u, arg_0) ^ _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, arg_1, -71506i), vec4<i32>(u_input.b.x, arg_1, u_input.a, arg_1))), var_0);
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    return Struct_2(global2.wx, Struct_1(arg_1, arg_1), vec2<u32>(~(~_wgslsmith_clamp_u32(85104u, u_input.c.x, 1486u)), firstTrailingBit(_wgslsmith_sub_u32(reverseBits(16205u), _wgslsmith_div_u32(6554u, u_input.c.x)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c.x << (u_input.c.x % 32u), ~4079u), 4294967295u), _wgslsmith_add_u32(~1u, ~_wgslsmith_add_u32(u_input.c.x, 1u))), 21u)], global0[_wgslsmith_index_u32(reverseBits(1u), 21u)]);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global0 = array<Struct_1, 21>();
    let var_0 = arg_0.a;
    global0 = array<Struct_1, 21>();
    global2 = select(select(!vec4<bool>(global2.x, global2.x || var_0.a.x, var_0.a.x, global2.x), vec4<bool>(arg_0.a.a.x, false, !global2.x && global2.x, true || var_0.a.x), true), vec4<bool>(-2147483647i > ~abs(arg_0.a.e.a), var_0.a.x & arg_0.a.a.x, true, all(vec4<bool>(false, any(vec4<bool>(arg_0.a.a.x, global2.x, global2.x, global2.x)), var_0.a.x, select(true, true, false)))), select(vec4<bool>(true, !(!var_0.a.x), true, true), !select(!vec4<bool>(var_0.a.x, false, global2.x, false), vec4<bool>(global2.x, arg_0.a.a.x, var_0.a.x, false), u_input.c.x > 4294967295u), func_1(true, var_0.b.b).a.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)))) + 232f);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(func_1(global2.x, u_input.b.x)));
    global1 = 2773f;
    var var_1 = vec2<u32>(min(1u, ~reverseBits(var_0.c.x)), ~9u);
    global1 = -224f;
    var_0 = Struct_2(vec2<bool>(true, true), var_0.e, ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(83605u, 0u)))), Struct_1(~func_4(Struct_3(Struct_2(var_0.a, Struct_1(0i, var_0.d.a), vec2<u32>(u_input.c.x, 46876u), Struct_1(-44750i, 2147483647i), Struct_1(u_input.a, var_0.b.b)))).b.a, ~(i32(-1i) * -80253i)), func_1(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(global2.x, true, global2.x, false), var_0.a.x)), -21475i).d);
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, var_0.e.b, u_input.a, var_0.b.b), -vec4<i32>(u_input.a, var_0.d.a, -20489i, 1i))), _wgslsmith_sub_i32(-1i, u_input.a), max(~vec3<i32>(-u_input.b.x, _wgslsmith_div_i32(var_0.d.a, -31518i), -2147483647i), u_input.b));
}

