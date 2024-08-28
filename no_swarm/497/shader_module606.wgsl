struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: vec2<u32>;

var<private> global3: Struct_4 = Struct_4(Struct_1(15598i, vec2<f32>(-799f, -1307f), vec2<u32>(0u, 85200u), vec2<i32>(1i, 28089i), 36740u), vec3<i32>(-1i, -1i, -19036i), vec4<u32>(45548u, 16229u, 29277u, 65491u), vec2<bool>(false, true), Struct_1(13481i, vec2<f32>(298f, -732f), vec2<u32>(21610u, 0u), vec2<i32>(i32(-2147483648), 1i), 0u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(49458i, 46740i, global3.b.x, global0.d.a) ^ u_input.a), 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.b)), vec2<u32>(1u, global3.a.e), min(vec2<i32>(u_input.a.x, firstLeadingBit(-37407i)), reverseBits(vec2<i32>(-38028i, -2147483647i))), 0u), _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(global0.b.a, 19663i, 14071i), global3.b)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -14601i), global3.e.d), global0.d.a, _wgslsmith_mult_i32(-1i, 53682i)), vec3<i32>(max(225i, 34678i), _wgslsmith_mult_i32(21465i, u_input.a.x), u_input.a.x))), firstTrailingBit(global3.c), select(vec2<bool>(global3.d.x, global3.a.c.x <= _wgslsmith_div_u32(46930u, global2.x)), global3.d, !vec2<bool>(true, global3.d.x)), Struct_1(i32(-1i) * -1i, global0.d.b.xy, min(global3.a.c, global3.a.c), vec2<i32>(-2147483647i, 2147483647i), 20335u));
    let var_1 = Struct_2(0i, _wgslsmith_div_vec3_f32(global0.d.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1421f, -519f, 1000f), vec3<f32>(global0.b.b.x, -1134f, 1580f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b.b * global0.d.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e.b.x, global3.e.b.x, var_0.a.b.x))))));
    let var_2 = ~(_wgslsmith_dot_vec2_u32(global3.c.xy, select(vec2<u32>(var_0.a.c.x, 5393u), global3.c.zx, global3.d)) ^ (reverseBits(var_0.c.x) | 20655u)) < _wgslsmith_add_u32(~global0.c | 28639u, ~(~(~global2.x)));
    let var_3 = var_1;
    global2 = abs(var_0.a.c);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.x, var_3.b.x))))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(var_3.b.x))), !any(!select(vec4<bool>(true, true, var_0.d.x, false), vec4<bool>(global3.d.x, var_2, var_0.d.x, true), vec4<bool>(var_2, var_2, global3.d.x, true)))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.a;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), global0.b, 35834u, global0.d);
    let var_2 = select(!(!(!(!vec4<bool>(global3.d.x, false, false, arg_0)))), vec4<bool>(global3.d.x, !(1u < global2.x), true, false), !(!(!vec4<bool>(arg_0, arg_0, false, arg_0))));
    var var_3 = Struct_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.b)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.b.x, arg_1.b.x, -216f))), select(select(var_2.wzz, vec3<bool>(true, global3.d.x, false), var_2.xxx), var_2.xzw, select(var_2.xyz, vec3<bool>(true, true, global3.d.x), vec3<bool>(true, false, global3.d.x))))))));
    global3 = Struct_4(arg_1, vec3<i32>(min(~(-583i) & select(-32100i, 0i, var_2.x), u_input.a.x), ~(-select(26598i, var_3.a, arg_0)), countOneBits(-53279i)), select(vec4<u32>(~var_1.c, ~global2.x, 12432u, 2730u << (firstTrailingBit(global2.x) % 32u)), ~_wgslsmith_mult_vec4_u32(~global3.c, _wgslsmith_mod_vec4_u32(global3.c, global3.c)), true), vec2<bool>(true != var_2.x, arg_0), arg_1);
    return Struct_1(~(-global3.a.a), global0.b.b.zz, _wgslsmith_mult_vec2_u32(~global3.c.wz, vec2<u32>(1u, ~1u) & arg_1.c), u_input.a.yx, global2.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_4(global3.e, reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(arg_3.b & global3.b, firstLeadingBit(vec3<i32>(arg_3.b.x, 0i, arg_3.e.a))), vec3<i32>(arg_2.a, u_input.a.x, global0.d.a) >> (~vec3<u32>(15710u, arg_3.e.e, 7587u) % vec3<u32>(32u)))), ~(~(~abs(vec4<u32>(arg_0.x, 75529u, 4294967295u, global2.x)))), arg_3.d, Struct_1(global3.e.d.x, vec2<f32>(_wgslsmith_f_op_f32(step(-1053f, _wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(arg_3.e.b.x - _wgslsmith_f_op_f32(max(global0.a, -1019f)))), ~vec2<u32>(func_2(true, global3.e).c.x, arg_3.a.e | global0.c), reverseBits(~global3.b.yx), abs(global2.x)));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global3.a.e, firstTrailingBit(global0.c)), min(firstTrailingBit(39509u << (var_0.e.c.x % 32u)), 41118u), ~1u) > firstTrailingBit(global0.c);
    let var_2 = Struct_1(~0i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.b.b.yy))))), vec2<u32>(24643u >> ((_wgslsmith_dot_vec4_u32(global3.c, var_0.c) ^ var_0.a.c.x) % 32u), reverseBits(0u)), -global3.a.d, 1u);
    global1 = var_0.d.x;
    var_1 = !all(vec4<bool>(any(select(vec4<bool>(true, var_0.d.x, true, true), vec4<bool>(arg_3.d.x, true, arg_3.d.x, false), var_0.d.x)), global3.d.x, all(select(vec4<bool>(global3.d.x, arg_3.d.x, global3.d.x, arg_3.d.x), vec4<bool>(global3.d.x, true, true, arg_3.d.x), var_0.d.x)), var_0.d.x));
    return func_2(false, func_2(true, func_2(global3.d.x, func_2(all(vec3<bool>(global3.d.x, arg_3.d.x, false)), func_2(true, Struct_1(arg_1.a, arg_2.b.xz, var_0.a.c, global3.a.d, global0.c))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    global1 = true;
    var var_0 = arg_0.x;
    global2 = global3.a.c;
    var var_1 = global3.a.b.x;
    let var_2 = global3.d.x & true;
    return Struct_4(arg_3, -min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 18486i), global3.b.yx), max(4592i, 11233i), -arg_2.b.a), ~vec3<i32>(-5763i, 2147483647i, global0.d.a)), ~global3.c, vec2<bool>(false | all(select(vec4<bool>(true, false, false, true), vec4<bool>(var_2, false, global3.d.x, var_2), vec4<bool>(global3.d.x, false, false, var_2))), false), func_4(vec2<u32>(6973u, 88756u), Struct_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(857f, 487f, arg_3.b.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.b.x, global3.e.b.x, global3.e.b.x) * vec3<f32>(global0.a, arg_2.d.b.x, -691f)))), global0.b, Struct_4(Struct_1(~u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(global3.a.b.x, -587f), global0.b.b.xy), ~arg_3.c, vec2<i32>(-11429i, u_input.a.x) ^ u_input.a.zz, ~64724u), u_input.a.wzy, global3.c, global3.d, func_2(var_2, global3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(firstLeadingBit(global3.e.d), _wgslsmith_add_u32(~1u, 0u), Struct_3(_wgslsmith_div_f32(global3.e.b.x, -1000f), global0.b, global3.c.x, global0.b), global3.e);
    var var_0 = global0.d;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, _wgslsmith_div_f32(242f, -1000f), -1800f, global0.b.b.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, var_0.b.x, 276f, global0.d.b.x)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 235f, var_0.b.x, 498f), vec4<f32>(global3.e.b.x, var_0.b.x, -336f, -269f)), vec4<f32>(1313f, -473f, global3.e.b.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -350f, 1000f, global3.e.b.x) - vec4<f32>(var_0.b.x, 1000f, var_0.b.x, global3.e.b.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.e.b.x, 185f, global3.e.b.x, global3.e.b.x), vec4<f32>(-202f, var_0.b.x, global0.b.b.x, 156f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.d.b.x), _wgslsmith_f_op_f32(round(var_0.b.x)), global0.b.b.x, var_0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2305f, -1651f))), _wgslsmith_f_op_f32(trunc(func_1(u_input.a.yx, 1u, Struct_3(564f, global0.d, 84146u, global0.d), global3.e).e.b.x)), _wgslsmith_div_f32(global0.a, 1428f), _wgslsmith_f_op_f32(-var_0.b.x))));
    var var_2 = Struct_3(var_1.x, global0.d, 1u, Struct_2(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-174f, global0.d.b.x)))));
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1423u, 11941u), select(4294967295u, ~_wgslsmith_clamp_u32(global2.x, global2.x, var_2.c), 0i < var_2.b.a), global2.x, _wgslsmith_add_u32(var_2.c, global2.x)), ~(~vec4<u32>(global2.x, global2.x, 2551u, 1u)) >> (~firstTrailingBit(select(global3.c, global3.c, vec4<bool>(global3.d.x, true, true, global3.d.x))) % vec4<u32>(32u)));
    global3 = func_1(u_input.a.yy, 0u, Struct_3(var_2.a, Struct_2(~(global3.a.d.x ^ -2470i), _wgslsmith_div_vec3_f32(var_1.zyz, vec3<f32>(var_0.b.x, var_2.a, var_2.b.b.x))), var_3.x, Struct_2(var_2.d.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -278f), -1060f, var_2.d.b.x))), func_4(~(~vec2<u32>(var_2.c, 0u) << (~vec2<u32>(global2.x, global3.e.c.x) % vec2<u32>(32u))), Struct_2(func_2(func_1(u_input.a.wx, var_3.x, Struct_3(-321f, Struct_2(global0.d.a, vec3<f32>(var_0.b.x, -766f, var_0.b.x)), 94333u, Struct_2(2147483647i, vec3<f32>(global0.d.b.x, -481f, global0.b.b.x))), global3.a).d.x, Struct_1(global0.b.a, vec2<f32>(var_1.x, var_2.d.b.x), var_3.yw, vec2<i32>(var_2.d.a, -2147483647i), 14294u)).a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.d.b.x, -546f, 1098f)))), var_2.b, func_1(func_1(_wgslsmith_clamp_vec2_i32(u_input.a.yz, vec2<i32>(82535i, var_0.a), global3.b.zx), var_3.x, Struct_3(var_1.x, Struct_2(var_2.d.a, var_2.d.b), 1u, global0.d), Struct_1(-2147483647i, vec2<f32>(var_1.x, 804f), var_3.wz, u_input.a.zz, var_2.c)).e.d, 72445u, Struct_3(_wgslsmith_f_op_f32(var_2.d.b.x * 618f), Struct_2(-32035i, vec3<f32>(var_0.b.x, global0.d.b.x, global3.a.b.x)), abs(global0.c), var_2.d), global3.e)));
    var var_4 = !(all(vec3<bool>(true, true, true)) && global3.d.x);
    var var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(~(-global0.b.a), func_4(func_2(global3.d.x, global3.a).c, Struct_2(var_2.b.a, var_1.yzw), Struct_2(36623i, vec3<f32>(-1329f, -783f, global3.e.b.x)), func_1(global3.a.d, 4294967295u, Struct_3(global0.b.b.x, Struct_2(2147483647i, global0.b.b), 4294967295u, Struct_2(u_input.a.x, vec3<f32>(var_2.d.b.x, -1000f, -282f))), Struct_1(global3.a.a, var_2.d.b.xx, vec2<u32>(4294967295u, 57837u), u_input.a.zx, var_3.x))).d.x, _wgslsmith_div_i32(i32(-1i) * -1i, 0i ^ u_input.a.x)));
}

