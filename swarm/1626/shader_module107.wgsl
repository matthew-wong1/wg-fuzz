struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec2<i32>(2147483647i, 17995i), i32(-2147483648));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_3(true, vec4<bool>(all(vec4<bool>(true, true, true, true)), firstLeadingBit(select(0i, 37541i, true)) != ~(~32955i), true, true), Struct_2(true), Struct_2(any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)) && false), Struct_2((true & any(vec3<bool>(false, true, true))) | all(vec4<bool>(false, false, false, true))));
    var var_1 = var_0.b.x;
    var_1 = !(-21256i == abs(~(-u_input.c.x)));
    let var_2 = Struct_4(var_0);
    let var_3 = vec3<bool>(var_0.c.a, true, true);
    return global0.b << (reverseBits(_wgslsmith_mod_vec2_u32(u_input.b.wx, vec2<u32>(u_input.b.x, u_input.b.x)) ^ vec2<u32>(select(u_input.a, u_input.a, true), global0.a >> (62634u % 32u))) % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    global0 = Struct_1(global0.a, (vec2<i32>(global0.c, 0i) | ~vec2<i32>(7921i, global0.b.x)) << (u_input.b.wz % vec2<u32>(32u)), 4728i);
    global0 = Struct_1(22792u, -countOneBits(-u_input.c ^ firstLeadingBit(global0.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -func_3(), global0.b));
    global0 = Struct_1(4294967295u, global0.b, global0.c);
    let var_0 = Struct_1(27277u, global0.b, global0.c);
    var var_1 = arg_0;
    return vec4<i32>(6072i, -_wgslsmith_dot_vec2_i32(var_0.b, _wgslsmith_mult_vec2_i32(~u_input.c, vec2<i32>(-9435i, 1i))), -2147483647i, firstTrailingBit(~(-_wgslsmith_mult_i32(5123i, u_input.c.x))));
}

fn func_4(arg_0: vec4<i32>) -> Struct_4 {
    global0 = Struct_1(~global0.a, -global0.b, global0.c);
    var var_0 = _wgslsmith_sub_i32(-22963i, firstTrailingBit(1i));
    var var_1 = Struct_3(all(vec3<bool>(!any(vec4<bool>(false, false, true, true)), true, true)), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), !vec4<bool>(true, all(vec2<bool>(false, false)), true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(false, true, any(vec2<bool>(false, true)), u_input.a <= 68864u))), Struct_2(true || (select(true, false, true) | (-2147483647i >= global0.b.x))), Struct_2(!(-u_input.c.x >= global0.c)), Struct_2(true));
    return Struct_4(Struct_3(any(!select(vec3<bool>(false, var_1.a, false), vec3<bool>(false, false, var_1.c.a), var_1.a)), var_1.b, var_1.e, Struct_2(true), var_1.d));
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    var var_0 = Struct_1(countOneBits(4294967295u), global0.b, u_input.c.x);
    var var_1 = ~(-vec4<i32>(-1i, 2147483647i, ~global0.c, -1i)) ^ max(vec4<i32>(-1000i, -2147483647i, 2147483647i, min(i32(-1i) * -1i, 18797i)), max(vec4<i32>(var_0.c, -38717i, -15974i, var_0.b.x) ^ abs(vec4<i32>(1i, var_0.c, global0.c, 0i)), select(vec4<i32>(-38474i, u_input.c.x, 25227i, global0.b.x), firstLeadingBit(vec4<i32>(1i, global0.c, -3454i, 59935i)), select(arg_0.a.d.a, false, arg_0.a.c.a))));
    let var_2 = !vec3<bool>(false, arg_0.a.a, !(all(arg_0.a.b.wx) && true));
    let var_3 = var_0.b.x;
    let var_4 = func_2(!all(!vec4<bool>(arg_0.a.a, arg_0.a.c.a, false, false)), func_4(~vec4<i32>(0i, u_input.c.x, 2147483647i, 0i) >> (vec4<u32>(u_input.b.x, ~u_input.a, ~var_0.a, ~var_0.a) % vec4<u32>(32u))).a.d);
    return Struct_2(!select(arg_0.a.d.a, arg_0.a.d.a, _wgslsmith_mult_i32(var_4.x, 2147483647i) <= -var_0.b.x));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    var var_0 = true;
    let var_1 = all(!vec4<bool>(!(!arg_0.x), true, all(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), arg_0.x));
    let var_2 = Struct_3(select(any(!vec3<bool>(true, var_1, var_1)), false, !all(select(arg_0.xx, vec2<bool>(true, false), arg_0.x))), !select(!vec4<bool>(arg_0.x, arg_0.x, false, true), !vec4<bool>(var_1, var_1, false, true), !select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_0.x, arg_0.x, false, true))), Struct_2(true), func_5(func_4(abs(func_2(var_1, Struct_2(arg_0.x))))), func_4(abs(vec4<i32>(_wgslsmith_div_i32(global0.c, -36416i), abs(global0.c), global0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -49406i), vec3<i32>(global0.b.x, global0.b.x, u_input.c.x))))).a.c);
    var var_3 = Struct_1(4294967295u >> (firstLeadingBit(max(_wgslsmith_clamp_u32(15906u, global0.a, 0u), _wgslsmith_mod_u32(1u, u_input.a))) % 32u), vec2<i32>(~(-u_input.c.x ^ global0.b.x), _wgslsmith_div_i32(~u_input.c.x, -(~u_input.c.x))), _wgslsmith_mult_i32(firstTrailingBit(-5143i), u_input.c.x));
    let var_4 = arg_0;
    return Struct_4(func_4(vec4<i32>(~20363i, u_input.c.x | 24139i, _wgslsmith_dot_vec4_i32(-vec4<i32>(26181i, u_input.c.x, -2147483647i, u_input.c.x), func_2(var_4.x, Struct_2(var_4.x))), u_input.c.x >> (_wgslsmith_sub_u32(u_input.b.x, 1u) % 32u))).a);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = -_wgslsmith_clamp_vec4_i32((vec4<i32>(global0.b.x, global0.b.x, 51199i, global0.b.x) >> (u_input.b % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, 24998i), vec4<i32>(1i, -11351i, 7363i, global0.b.x), vec4<i32>(0i, u_input.c.x, -1i, u_input.c.x)), reverseBits(vec4<i32>(global0.b.x, 0i, u_input.c.x, 59971i)) & (vec4<i32>(u_input.c.x, -25716i, global0.c, u_input.c.x) << (u_input.b % vec4<u32>(32u))), ~(~vec4<i32>(u_input.c.x, u_input.c.x, global0.b.x, 1i))) << (u_input.b % vec4<u32>(32u));
    let var_1 = func_1(select(func_1(select(select(arg_1.b.zzz, vec3<bool>(true, true, arg_1.b.x), arg_0.a.d.a), func_4(var_0).a.b.wwx, arg_0.a.b.wyy)).a.b.wwy, !func_1(func_4(var_0).a.b.yxx).a.b.yzy, !func_1(arg_1.b.yzx).a.b.yyz)).a.c;
    var var_2 = arg_1.e.a;
    global0 = Struct_1(abs((u_input.b.x ^ 4294967295u) << (max(u_input.b.x, 0u) % 32u)) >> (u_input.b.x % 32u), -var_0.wx | ~min(abs(u_input.c), var_0.xx), u_input.c.x);
    var var_3 = arg_3.x;
    return _wgslsmith_sub_vec4_u32(~(~max(~vec4<u32>(global0.a, global0.a, 0u, global0.a), _wgslsmith_div_vec4_u32(vec4<u32>(2282u, global0.a, 0u, 30943u), u_input.b))), vec4<u32>(_wgslsmith_mult_u32(41638u, _wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), global0.a ^ 4294967295u)), 426u, _wgslsmith_mod_u32(u_input.b.x, 1u), _wgslsmith_sub_u32(~countOneBits(global0.a), ~4294967295u)));
}

fn func_7(arg_0: i32, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(831f))))), 880f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1677f))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0, 1i, -1i), vec4<i32>(u_input.c.x, u_input.c.x, -14969i, -2147483647i)) == (arg_0 << (0u % 32u)))), _wgslsmith_f_op_f32(min(-548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f - 123f))))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1151f)) * -459f))), -204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) - _wgslsmith_f_op_f32(-110f + -350f))), 545f));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var_2 = 349f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) * var_0), vec4<f32>(_wgslsmith_div_f32(-1000f, var_0.x), 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-164f * -957f))), 1000f)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(global0.c, u_input.c.x), u_input.c), u_input.c), vec2<i32>(global0.b.x, countOneBits(-26595i) ^ global0.c)) ^ abs(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -9192i, ~2147483647i), vec2<i32>(2147483647i, -global0.c)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f - 408f) + _wgslsmith_f_op_f32(func_7(select(_wgslsmith_clamp_i32(-243i, var_0.x, 2147483647i), global0.c, u_input.b.x == 0u) << (_wgslsmith_div_u32(~u_input.b.x, 18325u) % 32u), func_6(func_1(vec3<bool>(true, true, true)), func_4(~vec4<i32>(-17985i, u_input.c.x, -57352i, -32075i)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(527f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, 467f, 2357f)) + vec3<f32>(-734f, -2134f, 569f))), any(vec3<bool>(true, true, true)))));
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a | global0.a, 1u), global0.a, ~global0.a)));
    let var_3 = Struct_1(func_6(Struct_4(Struct_3(false, vec4<bool>(true, true, false, false), Struct_2(false), Struct_2(false), Struct_2(true))), Struct_3(true, vec4<bool>(false, true, false, true), func_4(vec4<i32>(15198i, u_input.c.x, u_input.c.x, global0.c)).a.d, func_1(vec3<bool>(true, false, false)).a.d, func_1(vec3<bool>(false, false, true)).a.c), -870f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-697f, 171f, -159f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 457f, 337f)))).x >> (11870u % 32u), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, -abs(var_0.x)), global0.b), var_0.x);
    let var_4 = func_1(vec3<bool>(select(false, true, false), false, ~1i >= ((var_0.x >> (var_2.x % 32u)) | _wgslsmith_add_i32(1i, var_3.c)))).a.b.wxy;
    let var_5 = true;
    var_0 = var_3.b;
    let var_6 = ~(vec4<i32>(-1i) * -(~(-vec4<i32>(var_3.c, -949i, var_3.c, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec2_i32(-vec2<i32>(-22811i, -32174i), global0.b)), _wgslsmith_dot_vec2_i32(global0.b, -select(vec2<i32>(var_3.b.x, -8380i), vec2<i32>(-17001i, -58960i), false)), var_6.x | (_wgslsmith_dot_vec2_i32(-global0.b, vec2<i32>(-12312i, 2147483647i)) >> (u_input.a % 32u)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, var_3.c) & var_0.x, _wgslsmith_mult_i32(-var_6.x << (select(global0.a, 1u, false) % 32u), var_6.x & func_3().x)), abs(~(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 1u, global0.a), vec3<u32>(var_2.x, var_2.x, 19278u)) >> (~vec3<u32>(77095u, global0.a, global0.a) % vec3<u32>(32u)))));
}

