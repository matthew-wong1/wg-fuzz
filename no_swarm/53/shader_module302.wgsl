struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.a.x)), global1.c.a.x, 537f, _wgslsmith_f_op_f32(round(-252f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, 201f)), 1572f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_0.a.ww, var_0.a.zy, vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(global1.e.a.yx * vec2<f32>(_wgslsmith_f_op_f32(-global1.e.a.x), global1.e.a.x)))));
    var var_2 = firstTrailingBit(45459i);
    let var_3 = Struct_2(vec2<bool>(!all(select(vec3<bool>(true, false, false), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), true)), true), _wgslsmith_mult_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.b, u_input.a, global1.b.x, arg_0)), global1.b), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(494f * -1000f))), 305f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1494f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-1905f - -592f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e.a.x), _wgslsmith_f_op_f32(f32(-1f) * -634f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.a.x + 1132f)))), var_0);
    global0 = array<Struct_1, 29>();
    return _wgslsmith_clamp_i32(arg_0, ~global1.b.x, ~1i);
}

fn func_2() -> Struct_2 {
    global1 = Struct_2(select(select(global1.a, !select(vec2<bool>(false, true), global1.a, global1.a), select(false, false, true)), global1.a, any(global1.a)), vec4<i32>(-1i) * -vec4<i32>(func_3(u_input.a), global1.b.x, _wgslsmith_div_i32(-63469i, global1.b.x), ~(-13822i)), global1.e, _wgslsmith_f_op_f32(f32(-1f) * -420f), global1.e);
    var var_0 = Struct_2(vec2<bool>(false, min(2695u, ~0u) != u_input.c), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(28660i << (1u % 32u), global1.b.x, i32(-1i) * -57391i, global1.b.x), select(-vec4<i32>(0i, global1.b.x, -18474i, 52189i), global1.b, select(vec4<bool>(global1.a.x, global1.a.x, false, false), vec4<bool>(global1.a.x, false, true, false), true)), -vec4<i32>(global1.b.x, global1.b.x, -28814i, global1.b.x))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(global1.c.a))), -836f, global0[_wgslsmith_index_u32(u_input.c, 29u)]);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c << (u_input.c % 32u), 53273u, ~u_input.c, ~4294967295u), (vec4<u32>(u_input.c, u_input.c, 7146u, 50329u) ^ vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u)) >> (~vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) % vec4<u32>(32u))) & ~(~u_input.c)), 12u)];
    var_0 = Struct_2(!(!var_0.a), -(global1.b ^ global1.b), Struct_1(vec4<f32>(1239f, _wgslsmith_f_op_f32(f32(-1f) * -470f), -1870f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(406f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(383f * _wgslsmith_div_f32(var_1.a.x, global1.c.a.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1419f)), -334f)), global2[_wgslsmith_index_u32(~(14505u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(16964u, u_input.c, 0u, u_input.c), vec4<u32>(0u, 9496u, u_input.c, 53921u) & vec4<u32>(0u, u_input.c, u_input.c, 4294967295u))), 12u)]);
    var var_2 = vec4<bool>(global1.a.x, !(!(true || var_0.a.x)), !var_0.a.x, !any(vec3<bool>(true, true, true)) != var_0.a.x);
    return Struct_2(vec2<bool>(var_0.a.x, true), vec4<i32>(reverseBits(~select(var_0.b.x, 38260i, false)), max(u_input.b, global1.b.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, var_0.b.x), vec2<i32>(1i, -2147483647i)) ^ -43136i, u_input.d.x ^ ~_wgslsmith_mod_i32(-2147483647i, u_input.b)), var_0.e, _wgslsmith_f_op_f32(f32(-1f) * -321f), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.c.a)))));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-global1.d);
    global1 = func_2();
    global1 = func_2();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-992f, var_0, -132f, global1.e.a.x) - global1.c.a), _wgslsmith_div_vec4_f32(global1.e.a, vec4<f32>(var_0, -1156f, global1.e.a.x, -966f)))))));
    global0 = array<Struct_1, 29>();
    return _wgslsmith_add_vec4_i32(~abs(global1.b), global1.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-327f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d))), 366f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.d)) + -754f)));
    global1 = arg_0;
    var var_1 = func_2().e;
    var_1 = global1.c;
    global1 = Struct_2(select(select(vec2<bool>(true, !global1.a.x), select(vec2<bool>(arg_0.a.x, arg_0.a.x), select(vec2<bool>(false, arg_0.a.x), global1.a, arg_0.a), global1.a), vec2<bool>(true && arg_0.a.x, any(global1.a))), !select(global1.a, global1.a, vec2<bool>(global1.a.x, true)), u_input.c == 4294967295u), func_2().b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_2)) + _wgslsmith_f_op_vec4_f32(min(arg_0.c.a, var_0))))), arg_2.x, func_2().c);
    return func_2().e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(vec2<bool>(true, true), func_1(any(select(global1.a, vec2<bool>(global1.a.x, false), global1.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-625f, -1469f, -522f, global1.d) - global1.e.a)), _wgslsmith_f_op_f32(max(global1.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.a.x), -123f))), func_2().c), Struct_1(global1.e.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.a.x, -1545f, -534f, global1.c.a.x)))))));
    var var_1 = global1.a;
    global2 = array<Struct_1, 12>();
    let var_2 = abs(select(firstTrailingBit(~vec2<u32>(u_input.c, u_input.c)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(4294967295u, u_input.c)), select(vec2<u32>(39459u, 22335u), vec2<u32>(18248u, 0u), global1.a)), -8327i >= firstTrailingBit(global1.b.x)) >> (vec2<u32>(abs(_wgslsmith_sub_u32(u_input.c, u_input.c)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_add_u32(~10821u, _wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(var_2.x, ~4294967295u)));
    let var_4 = func_2().c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~vec4<u32>(var_2.x, u_input.c, 59610u, u_input.c), firstTrailingBit(vec4<u32>(var_2.x, u_input.c, 4294967295u, 61564u))) & ~vec4<u32>(abs(15339u), ~23111u, var_2.x, ~23407u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_0.a.x - 806f)), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(var_4.a.x - var_4.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-623f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.a.xwx * vec3<f32>(global1.d, -384f, global1.e.a.x)))))), global1.e.a.x, vec3<f32>(func_2().d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.e.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1023f * global1.c.a.x) + 510f)), global1.d), 601f);
}

