struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 6502u, 27117u, 4294967295u);

var<private> global2: Struct_4 = Struct_4(Struct_3(0i, Struct_1(vec3<i32>(-15409i, -33757i, -25751i)), 1000f, -89090i), vec4<f32>(-505f, -413f, 1000f, -491f), 1000f, true, true);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = global2.e;
    var var_1 = vec3<i32>(firstTrailingBit(global2.a.a), -10i, 1i);
    global0 = array<Struct_1, 30>();
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, -506f, global2.b.x)), global2.b.zyw), vec3<f32>(global2.c, global2.a.c, _wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(global2.b.x - -1147f)))))));
    var var_3 = ~vec2<u32>(_wgslsmith_mult_u32(1u, max(global1.x << (4294967295u % 32u), global1.x)), min(global1.x, _wgslsmith_sub_u32(u_input.c, select(87062u, 0u, false))));
    return true;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<bool>) -> bool {
    global2 = Struct_4(global2.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-235f, global2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * _wgslsmith_f_op_f32(-global2.a.c)), _wgslsmith_f_op_f32(select(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1107f), arg_2.x)), global2.a.c), global2.b), global2.a.c, false, arg_2.x);
    var var_0 = Struct_4(Struct_3(~2147483647i, Struct_1(select(global2.a.b.a, _wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.b.a.x, 0i, global2.a.a), vec3<i32>(38101i, global2.a.a, global2.a.a)), arg_2.wzx)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global2.b.x)))), global2.b.x)), ~(-1i)), vec4<f32>(-903f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1618f)), -140f)), _wgslsmith_f_op_f32(-170f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(global2.c + 965f))), arg_2.x, all(!arg_2.wzw));
    var var_1 = var_0.a.d > (i32(-1i) * -2147483647i);
    var var_2 = Struct_1(select(_wgslsmith_div_vec3_i32(-global2.a.b.a, global2.a.b.a), vec3<i32>(-var_0.a.b.a.x, _wgslsmith_mult_i32(18662i, var_0.a.d), _wgslsmith_dot_vec4_i32(vec4<i32>(5720i, 0i, global2.a.d, -2147483647i), vec4<i32>(-41381i, 1i, 2147483647i, 1034i))), func_3(~u_input.d)) >> (u_input.e.zxw % vec3<u32>(32u)));
    global2 = Struct_4(var_0.a, global2.b, var_0.a.c, any(vec4<bool>(!var_0.d, !all(arg_2.wz), 2003i <= (var_2.a.x | global2.a.b.a.x), false)), !global2.e);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * -720f) * 482f))), _wgslsmith_f_op_f32(-var_0.a.c))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c + global2.a.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1176f);
    global0 = array<Struct_1, 30>();
    var var_1 = ~(~global2.a.b.a.xy);
    let var_2 = Struct_4(global2.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(407f + 650f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), global2.a.c), -276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b.x, global2.a.c)))))), _wgslsmith_f_op_f32(abs(699f)), !(!global2.d), !any(!vec4<bool>(global2.d, global2.d, false, true)));
    let var_3 = func_4(1u | ~(global1.x & 92817u), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.e.x, u_input.e.x >> (0u % 32u), max(global1.x, 41343u)), u_input.e.zwz), select(!vec4<bool>(global2.d, var_2.e, var_2.d, global2.a.b.a.x >= 23531i), vec4<bool>(false, any(!vec2<bool>(global2.d, true)), func_3(vec2<u32>(global1.x, 0u)), false), select(!select(vec4<bool>(true, var_2.d, var_2.e, false), vec4<bool>(false, true, false, true), false), vec4<bool>(global2.e == global2.d, u_input.d.x < 4294967295u, global2.d, !var_2.d), true)));
    return global1.x;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    global2 = Struct_4(Struct_3(arg_0, global0[_wgslsmith_index_u32(16758u, 30u)], 1000f, -21019i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b - global2.b) * _wgslsmith_f_op_vec4_f32(-global2.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a.c, global2.c, global2.d)) + -172f))), all(!(!(!vec4<bool>(global2.d, global2.d, global2.e, global2.e)))), 1185f >= _wgslsmith_f_op_f32(round(global2.c)));
    global1 = countOneBits(vec4<u32>(arg_1 << (~func_2() % 32u), 4294967295u, 1u, global1.x));
    var var_0 = Struct_2(vec2<f32>(global2.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1852f)), firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global2.a.a, arg_0)), _wgslsmith_mult_vec2_i32(global2.a.b.a.xz, vec2<i32>(global2.a.d, global2.a.d)), global2.a.b.a.xx), global2.a.b.a.xy)), 2147483647i, global2.b.yww);
    global2 = Struct_4(global2.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-2194f - _wgslsmith_f_op_f32(var_0.a.x - global2.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.d.x), _wgslsmith_f_op_f32(-499f * _wgslsmith_f_op_f32(-300f + var_0.d.x)), -854f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b + _wgslsmith_f_op_vec4_f32(-global2.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global2.b)))), vec4<bool>(global2.e, true, !global2.d, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(813f, -201f)))), all(select(vec2<bool>(false, -530f != var_0.a.x), !vec2<bool>(global2.e, global2.d), select(select(vec2<bool>(true, global2.e), vec2<bool>(false, global2.e), global2.e), vec2<bool>(true, true), vec2<bool>(global2.e, false)))), true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1576f)), var_0.d.x, 1199f);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, var_1.x)))) * var_1.yy), firstTrailingBit(reverseBits(1i)), -29573i, var_0.d);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = global2.b;
    var var_1 = ~4294967295u;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.wzy, vec3<u32>(_wgslsmith_div_u32(global1.x, _wgslsmith_dot_vec3_u32(u_input.e.yxx, u_input.e.yzw) >> (global1.x % 32u)), global1.x, ~(~(~u_input.d.x)))), 30u)];
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global2.b))) - global2.b)));
    let var_3 = Struct_4(Struct_3(i32(-1i) * -14993i, global2.a.b, 776f, _wgslsmith_clamp_i32(_wgslsmith_div_i32(26072i, -41552i) >> (u_input.a % 32u), _wgslsmith_div_i32(0i, 2147483647i), ~(-17707i) << (1u % 32u))), vec4<f32>(-815f, arg_0.d.x, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(arg_0.a.x, -181f), !(!global2.d))), -227f), 1000f, !global2.d, func_3(~global1.yy));
    return Struct_1(_wgslsmith_clamp_vec3_i32(-global2.a.b.a, vec3<i32>(arg_0.c, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_2.a.x), vec2<i32>(-2147483647i, 0i)), -var_3.a.b.a.xx), -2147483647i), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(57602i, ~firstLeadingBit(countOneBits(4294967295u))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global1 = vec4<u32>(~abs(0u) << (_wgslsmith_sub_u32(func_2(), ~u_input.e.x) % 32u), _wgslsmith_dot_vec2_u32(u_input.e.yx, vec2<u32>(~4294967295u, countOneBits(u_input.a))), 7384u, u_input.b) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, firstTrailingBit(29760u), abs(0u), firstTrailingBit(global1.x)), _wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.e), u_input.e)) % vec4<u32>(32u));
    let var_1 = Struct_4(global2.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.c) + 125f), 356f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a.c))), _wgslsmith_f_op_f32(select(func_1(-var_0.a.x, firstTrailingBit(global1.x)).d.x, _wgslsmith_div_f32(global2.c, global2.a.c), all(select(vec4<bool>(global2.e, true, global2.e, true), vec4<bool>(global2.d, false, global2.e, global2.d), global2.e)))), global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.c * global2.b.x)) + _wgslsmith_f_op_f32(floor(global2.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-135f, _wgslsmith_f_op_f32(step(global2.c, -776f)))))), global2.e, global2.d);
    var var_2 = any(!vec2<bool>(!all(vec4<bool>(global2.e, true, true, global2.d)), var_1.a.c <= _wgslsmith_f_op_f32(-783f * 990f)));
    var var_3 = any(!vec4<bool>(any(vec2<bool>(global2.d, false)), true, false, false));
    var var_4 = var_0.a;
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(abs(firstTrailingBit(var_4.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, 431f) - vec2<f32>(-456f, var_1.b.x)) * vec2<f32>(var_5.b.x, global2.a.c)))), vec2<f32>(111f, _wgslsmith_f_op_f32(var_1.b.x + 539f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-342f, -699f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.b.x)))), -1381f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global2.b.x, var_5.b.x, global2.d)), var_1.c)) - var_5.a.c)));
}

