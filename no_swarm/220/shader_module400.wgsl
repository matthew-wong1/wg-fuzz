struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-27760i, 0i, -1i);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1568u);

var<private> global2: f32;

var<private> global3: vec4<f32> = vec4<f32>(-426f, 673f, 665f, 494f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = vec3<u32>(~34336u, arg_1.x, arg_2.a.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(811f, arg_2.e.x, arg_0.a.x, -340f))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1047f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-460f, 1000f)), _wgslsmith_f_op_f32(arg_2.e.x * -765f)), arg_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.x - arg_2.e.x), _wgslsmith_f_op_f32(-global3.x)))), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1936f), _wgslsmith_f_op_f32(floor(-312f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.x * arg_2.e.x), arg_2.e.x)), global3.x))));
    let var_2 = select(select(vec4<bool>(!any(vec4<bool>(arg_2.b.e, arg_2.d.e, arg_2.b.c.x, false)), true, arg_2.d.c.x, all(vec3<bool>(true, true, arg_2.b.c.x))), vec4<bool>(all(vec4<bool>(false, arg_2.a.e, arg_2.d.e, false)), !arg_2.d.e, true, false), !select(!vec4<bool>(arg_2.a.c.x, arg_2.b.c.x, arg_2.a.c.x, arg_2.b.e), vec4<bool>(true, arg_2.a.e, arg_2.b.e, arg_2.d.e), vec4<bool>(false, arg_2.a.c.x, arg_2.d.c.x, arg_2.d.e))), select(!select(!vec4<bool>(true, arg_2.b.e, arg_2.d.c.x, false), select(vec4<bool>(true, arg_2.a.e, arg_2.d.e, arg_2.d.e), vec4<bool>(false, true, arg_2.d.e, true), arg_2.b.e), vec4<bool>(false, arg_2.d.c.x, arg_2.a.c.x, false)), vec4<bool>(!any(vec3<bool>(arg_2.d.e, false, arg_2.a.c.x)), true, true, arg_2.a.c.x && arg_2.d.e), all(vec3<bool>(false, any(vec4<bool>(true, false, arg_2.b.e, true)), arg_2.b.d.x == arg_2.b.d.x))), select(select(vec4<bool>(all(arg_2.a.c), true, true, true || arg_2.a.e), vec4<bool>(true, true || arg_2.a.c.x, arg_2.b.e, global0.x > 2147483647i), true), !vec4<bool>(select(arg_2.b.e, arg_2.a.c.x, arg_2.a.c.x), !arg_2.d.e, false, 4693u <= u_input.a.x), any(arg_2.d.c)));
    let var_3 = -20536i;
    var var_4 = var_1.x;
    return !(!select(vec2<bool>(565u <= var_0.x, !var_2.x), !select(vec2<bool>(false, arg_2.d.c.x), arg_2.b.c, vec2<bool>(true, true)), (u_input.a.x >= 0u) && all(vec3<bool>(true, var_2.x, arg_2.d.e))));
}

fn func_2() -> vec3<i32> {
    var var_0 = -vec2<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-23258i, -1i, global0.x, 1i), vec4<i32>(-44556i, global0.x, global0.x, 43414i)), vec4<i32>(1i, -20446i, global0.x, 2147483647i)), global0.x);
    global1 = vec2<u32>(1u, 57772u);
    let var_1 = Struct_3(Struct_1(~u_input.a.yzw, 70724u, !func_3(Struct_5(global3.zxz), ~vec2<u32>(48276u, u_input.a.x), Struct_2(Struct_1(u_input.a.wyy, 0u, vec2<bool>(false, true), vec3<i32>(0i, -64001i, var_0.x), true), Struct_1(u_input.a.yyz, 84990u, vec2<bool>(false, true), vec3<i32>(-66i, global0.x, -26463i), true), u_input.a.xzw, Struct_1(vec3<u32>(global1.x, u_input.a.x, 22348u), global1.x, vec2<bool>(false, false), vec3<i32>(global0.x, var_0.x, var_0.x), true), global3.yy), u_input.a), abs(~countOneBits(vec3<i32>(global0.x, var_0.x, var_0.x))), true), Struct_2(Struct_1(u_input.a.yyz, ~global1.x, func_3(Struct_5(global3.wwz), u_input.a.xy, Struct_2(Struct_1(u_input.a.xzx, u_input.a.x, vec2<bool>(true, false), vec3<i32>(0i, global0.x, -2147483647i), false), Struct_1(u_input.a.xzz, global1.x, vec2<bool>(false, true), vec3<i32>(0i, -1i, 0i), true), vec3<u32>(4294967295u, 0u, global1.x), Struct_1(vec3<u32>(1u, 4294967295u, 0u), u_input.a.x, vec2<bool>(true, true), vec3<i32>(-1i, var_0.x, var_0.x), false), vec2<f32>(global3.x, global3.x)), u_input.a), vec3<i32>(global0.x, 0i, abs(-2395i)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), Struct_1(~min(u_input.a.ywy, u_input.a.xxy), ~global1.x, vec2<bool>(true, select(true, false, true)), vec3<i32>(global0.x & var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10035i, global0.x, 0i, global0.x), vec4<i32>(global0.x, var_0.x, global0.x, 0i)), -32575i), true), u_input.a.zwz, Struct_1(vec3<u32>(abs(12481u), ~u_input.a.x, _wgslsmith_sub_u32(global1.x, 32421u)), 39775u, vec2<bool>(true, true), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(13546i, global0.x, 12562i), vec3<i32>(2147483647i, 1i, global0.x)), global0.x, global0.x), true), vec2<f32>(-1244f, _wgslsmith_f_op_f32(f32(-1f) * -279f))));
    return reverseBits(var_1.b.d.d);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_i32(-abs(func_2()), arg_1.d);
    var var_2 = Struct_4(Struct_3(Struct_1(vec3<u32>(_wgslsmith_mod_u32(arg_1.a.x, arg_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, 1u, 21468u), u_input.a), ~u_input.a.x), 0u, select(vec2<bool>(var_0, true), !vec2<bool>(false, arg_0), !vec2<bool>(false, arg_1.c.x)), arg_1.d, any(!vec3<bool>(var_0, false, true))), Struct_2(arg_1, Struct_1(arg_1.a, 0u, arg_1.c, arg_1.d >> (u_input.a.yzx % vec3<u32>(32u)), arg_0), _wgslsmith_sub_vec3_u32(u_input.a.wwz, vec3<u32>(u_input.a.x, 40575u, 1u)), arg_1, vec2<f32>(841f, _wgslsmith_f_op_f32(ceil(arg_2.x))))), arg_1.b, Struct_3(arg_1, Struct_2(Struct_1(vec3<u32>(70007u, u_input.a.x, 4781u), abs(41996u), func_3(Struct_5(global3.yzw), arg_1.a.xz, Struct_2(arg_1, arg_1, arg_1.a, arg_1, arg_2.xx), vec4<u32>(0u, arg_1.b, arg_1.b, 1u)), ~vec3<i32>(var_1, global0.x, var_1), var_0), arg_1, firstTrailingBit(select(vec3<u32>(global1.x, global1.x, global1.x), u_input.a.yzx, var_0)), Struct_1(arg_1.a, u_input.a.x, select(arg_1.c, vec2<bool>(true, true), true), ~arg_1.d, true), global3.ww)), Struct_2(arg_1, Struct_1(max(~u_input.a.wxz, _wgslsmith_mult_vec3_u32(arg_1.a, vec3<u32>(1u, global1.x, arg_1.b))), ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_1.a.x, global1.x, 4294967295u, u_input.a.x)), !vec2<bool>(false, var_0), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_1, -2147483647i), arg_1.d), vec3<i32>(-2147483647i, -1i, global0.x)), all(select(arg_1.c, arg_1.c, arg_1.e))), arg_1.a, Struct_1(~(vec3<u32>(4294967295u, 29051u, global1.x) | vec3<u32>(u_input.a.x, 27588u, 0u)), ~reverseBits(1u), vec2<bool>(true, true), vec3<i32>(arg_1.d.x, global0.x, -11582i) ^ -vec3<i32>(1i, arg_1.d.x, 3181i), select(arg_1.c.x, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-2035f * arg_2.x), global3.x)));
    let var_3 = var_2.a.b.a;
    global2 = _wgslsmith_f_op_f32(117f + -1000f);
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.x + 1043f), _wgslsmith_f_op_f32(-164f - 615f), _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(func_1(true, Struct_1(u_input.a.xwx, global1.x, vec2<bool>(false, true), vec3<i32>(15581i, 31422i, global0.x), false), vec3<f32>(global3.x, -1814f, global3.x)))))))));
    let var_1 = Struct_4(Struct_3(Struct_1(min(u_input.a.yyw, ~u_input.a.www), u_input.a.x, !func_3(Struct_5(vec3<f32>(global3.x, 175f, global3.x)), u_input.a.xw, Struct_2(Struct_1(vec3<u32>(1u, 12495u, u_input.a.x), global1.x, vec2<bool>(false, false), vec3<i32>(global0.x, 2147483647i, 1i), true), Struct_1(vec3<u32>(global1.x, 4294967295u, 50005u), u_input.a.x, vec2<bool>(true, true), vec3<i32>(1132i, global0.x, 0i), false), vec3<u32>(4294967295u, u_input.a.x, 42353u), Struct_1(u_input.a.wyx, 1u, vec2<bool>(true, true), vec3<i32>(-13031i, global0.x, global0.x), false), var_0.ww), u_input.a), -vec3<i32>(41547i, 1i, global0.x), false), Struct_2(Struct_1(u_input.a.wzw, ~11892u, vec2<bool>(true, true), -vec3<i32>(global0.x, 18773i, global0.x), true), Struct_1(vec3<u32>(global1.x, 0u, global1.x), reverseBits(4294967295u), vec2<bool>(true, true), vec3<i32>(-12717i, 2147483647i, -36779i), all(vec4<bool>(false, false, false, false))), u_input.a.zyz, Struct_1(~vec3<u32>(4294967295u, 55633u, 41341u), countOneBits(0u), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec3<i32>(global0.x, 1i, global0.x) | vec3<i32>(1i, 2147483647i, 2147483647i), true), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), min(~63273u, 30723u), Struct_3(Struct_1(reverseBits(_wgslsmith_mult_vec3_u32(u_input.a.wyy, u_input.a.zyx)), 23032u, vec2<bool>(true, true), vec3<i32>(global0.x, global0.x, 47706i) >> (abs(u_input.a.xzw) % vec3<u32>(32u)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), Struct_2(Struct_1(vec3<u32>(global1.x, 56734u, 1u), _wgslsmith_div_u32(u_input.a.x, global1.x), select(vec2<bool>(true, false), vec2<bool>(true, false), true), -vec3<i32>(-16888i, global0.x, 39506i), true), Struct_1(~vec3<u32>(119797u, global1.x, 8095u), ~u_input.a.x, vec2<bool>(false, false), vec3<i32>(global0.x, -7033i, 29725i), true), u_input.a.wwx, Struct_1(vec3<u32>(0u, u_input.a.x, 4294967295u), 1u, func_3(Struct_5(vec3<f32>(global3.x, global3.x, -1000f)), vec2<u32>(1885u, u_input.a.x), Struct_2(Struct_1(vec3<u32>(global1.x, global1.x, global1.x), 1u, vec2<bool>(false, false), vec3<i32>(global0.x, global0.x, -11541i), true), Struct_1(u_input.a.yww, u_input.a.x, vec2<bool>(false, true), vec3<i32>(2147483647i, global0.x, global0.x), false), u_input.a.zww, Struct_1(u_input.a.yyx, u_input.a.x, vec2<bool>(true, true), vec3<i32>(global0.x, global0.x, global0.x), true), var_0.wx), vec4<u32>(u_input.a.x, 21799u, 96468u, 15722u)), select(vec3<i32>(-1i, -1i, global0.x), vec3<i32>(global0.x, global0.x, 2147483647i), vec3<bool>(false, true, false)), any(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec2_f32(-global3.zz))), Struct_2(Struct_1(u_input.a.wxw, abs(reverseBits(u_input.a.x)), func_3(Struct_5(vec3<f32>(1745f, var_0.x, global3.x)), u_input.a.yz, Struct_2(Struct_1(vec3<u32>(u_input.a.x, global1.x, global1.x), 13947u, vec2<bool>(false, true), vec3<i32>(global0.x, global0.x, 2147483647i), false), Struct_1(u_input.a.yzy, global1.x, vec2<bool>(false, false), vec3<i32>(global0.x, -2147483647i, global0.x), true), vec3<u32>(global1.x, u_input.a.x, 48850u), Struct_1(vec3<u32>(u_input.a.x, global1.x, 0u), global1.x, vec2<bool>(true, false), vec3<i32>(-59624i, global0.x, -41543i), false), global3.wx), u_input.a), _wgslsmith_clamp_vec3_i32(-vec3<i32>(global0.x, -27145i, global0.x), vec3<i32>(26974i, -1i, global0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, 2147483647i, 1i), vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), Struct_1(u_input.a.yzy, select(global1.x ^ 4294967295u, 1u, false), vec2<bool>(true, true), max(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(41616i, 24629i, global0.x)) << (_wgslsmith_div_vec3_u32(vec3<u32>(43131u, 27651u, 1u), u_input.a.wyz) % vec3<u32>(32u)), true), ~firstTrailingBit(vec3<u32>(12813u, global1.x, 98890u)), Struct_1(u_input.a.wxz, u_input.a.x, vec2<bool>(true, true), vec3<i32>(global0.x, _wgslsmith_div_i32(-43069i, -11613i), _wgslsmith_mod_i32(-8442i, 11873i)), any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.x), -986f))));
    global1 = firstTrailingBit(vec2<u32>(~(_wgslsmith_clamp_u32(1u, var_1.b, 28166u) & _wgslsmith_dot_vec2_u32(vec2<u32>(6477u, 5730u), u_input.a.zx)), countOneBits(global1.x)));
    var var_2 = var_1.c.b.d.c.x;
    let var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(-reverseBits(-vec4<i32>(var_3, 638i, 2147483647i, -2147483647i)), select(-vec4<i32>(-65654i, 7874i, global0.x, 43260i), reverseBits(-vec4<i32>(global0.x, -18891i, -8099i, global0.x)), !(!vec4<bool>(true, false, var_1.d.b.c.x, false)))), global3.x, ~var_1.c.a.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 267f, var_1.c.b.e.x, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global3.x, global3.x, -261f)))))));
}

