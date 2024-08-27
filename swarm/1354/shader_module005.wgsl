struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    let var_1 = arg_0.b;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(2147483647i, arg_0.b.a, 0i) ^ vec3<i32>(arg_0.b.a, u_input.d, -2147483647i)) >> (firstTrailingBit(global0.b.wyy) % vec3<u32>(32u)), select(min(-vec3<i32>(var_1.a, arg_0.b.a, -7717i), -vec3<i32>(18575i, var_1.a, -15719i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2782i, var_1.a, global0.a) ^ vec3<i32>(1i, u_input.a.x, -17227i), -vec3<i32>(arg_0.b.a, 1i, global0.a)), vec3<bool>(0i <= u_input.d, true, var_1.c.x))), -global0.a, -(~23743i), -1i);
    var var_3 = !vec2<bool>(!(true | global0.d), !var_1.c.x);
    var var_4 = 32117u > var_1.e.x;
    return arg_0.b.a;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(i32(-1i) * -20208i, global0.e, select(!select(global0.c, vec2<bool>(false, arg_2.c.x), true), vec2<bool>(true, true), global0.d), false, arg_2.e | reverseBits(~reverseBits(arg_2.e)));
    var var_1 = Struct_1(_wgslsmith_div_i32(1i, arg_2.a), _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, var_0.e.x, 0u, arg_0), reverseBits(arg_2.b), vec4<u32>(u_input.b, 48804u, var_0.b.x, arg_2.b.x))), ~countOneBits(~vec4<u32>(global0.b.x, u_input.b, 18717u, var_0.e.x))), global0.c, true, min(vec4<u32>(45205u, ~arg_0, ~var_0.e.x, var_0.b.x), vec4<u32>(arg_2.e.x, countOneBits(25409u), ~u_input.b, 0u)) ^ select(arg_2.b, ~_wgslsmith_add_vec4_u32(arg_2.b, vec4<u32>(31219u, u_input.b, u_input.b, 1u)), vec4<bool>(!var_0.d, any(vec2<bool>(var_0.c.x, arg_2.d)), arg_2.d, all(vec4<bool>(global0.d, true, true, global0.c.x)))));
    var_0 = arg_2;
    var_1 = arg_2;
    let var_2 = abs(var_0.a);
    return select(select(select(!vec3<bool>(var_0.d, false, var_0.c.x), vec3<bool>(all(arg_2.c), 23035u < arg_0, true), vec3<bool>(true, 0i >= var_0.a, var_0.d & global0.c.x)), vec3<bool>(false, var_1.d, any(!vec4<bool>(var_0.d, true, var_1.d, true))), vec3<bool>(global0.d, !var_0.c.x || (u_input.c == -1i), true)), !select(select(vec3<bool>(global0.d, false, true), select(vec3<bool>(arg_2.d, false, global0.c.x), vec3<bool>(global0.d, true, false), false), select(vec3<bool>(global0.d, true, true), vec3<bool>(var_1.c.x, global0.d, false), vec3<bool>(var_0.d, true, var_1.c.x))), select(!vec3<bool>(false, global0.d, true), vec3<bool>(true, false, false), true), !(global0.c.x & global0.c.x)), !all(!select(vec3<bool>(var_0.c.x, false, var_1.d), vec3<bool>(global0.c.x, var_1.d, var_0.c.x), true)));
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = 49294i;
    var var_1 = select(!vec3<bool>(global0.d, global0.d, !all(vec2<bool>(global0.c.x, false))), !vec3<bool>((global0.c.x || global0.c.x) || global0.d, !(!global0.c.x), true), all(!global0.c));
    var_1 = !select(select(vec3<bool>(true, true, true), !(!vec3<bool>(global0.d, global0.c.x, global0.c.x)), vec3<bool>(true, !global0.d, global0.c.x)), func_4(min(~44329u, global0.e.x), reverseBits(func_3(Struct_2(global0.b.x, Struct_1(2147483647i, vec4<u32>(global0.b.x, global0.e.x, u_input.b, global0.b.x), vec2<bool>(global0.c.x, global0.c.x), true, global0.b), vec3<f32>(-563f, -803f, 1000f), vec3<bool>(var_1.x, global0.d, false), true))), Struct_1(-37103i, _wgslsmith_div_vec4_u32(global0.b, global0.b), select(vec2<bool>(false, global0.d), var_1.yy, false), false, vec4<u32>(global0.b.x, 4294967295u, 38276u, 1u) & vec4<u32>(4294967295u, 38075u, global0.b.x, u_input.b))), !vec3<bool>(global0.c.x, true, var_1.x));
    var_1 = vec3<bool>(global0.c.x, all(vec4<bool>(any(select(vec4<bool>(var_1.x, global0.d, false, true), vec4<bool>(true, var_1.x, true, global0.c.x), vec4<bool>(global0.c.x, true, false, var_1.x))), !(!global0.c.x), select(!global0.c.x, true, false), true)), global0.c.x);
    global0 = Struct_1(1i, global0.e, vec2<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(global0.d, false, global0.d, true), select(vec4<bool>(false, false, false, false), vec4<bool>(global0.c.x, true, true, true), false))), true), false == any(var_1.xx), abs(_wgslsmith_div_vec4_u32(vec4<u32>(39923u, u_input.b, ~u_input.b, ~u_input.b), vec4<u32>(u_input.b, global0.b.x, 1u, ~38465u))));
    return global0.b.ww;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = abs(-select(_wgslsmith_mult_vec2_i32(vec2<i32>(-50206i, global0.a), u_input.a), vec2<i32>(28514i, 2147483647i), !vec2<bool>(global0.d, global0.d)) << (~(~func_2(vec3<i32>(arg_0, arg_0, 0i))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1030f, _wgslsmith_f_op_f32(-1850f - 1000f)))))));
    let var_2 = 9068u << ((~(~global0.e.x) << (global0.e.x % 32u)) % 32u);
    var var_3 = _wgslsmith_div_i32(min(arg_0, 54606i), firstLeadingBit(global0.a));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-515f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f * 355f)), _wgslsmith_add_u32(u_input.b, var_2) <= ~29444u)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-105f + -2311f), _wgslsmith_f_op_f32(ceil(903f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1264f), _wgslsmith_f_op_f32(-325f + -639f)))))));
    return global0.c;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1.c.x;
    var var_1 = arg_1.e.yw;
    var var_2 = 1017f;
    let var_3 = Struct_1(_wgslsmith_div_i32(u_input.c, ~countOneBits(-10898i) | ~(arg_3.a | arg_3.a)), arg_3.b, func_1(abs(-1i)), arg_3.a > arg_1.a, select(_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(4294967295u, arg_3.e.x, arg_3.b.x, u_input.b)), arg_1.b), arg_2.b << (global0.e % vec4<u32>(32u)), vec4<bool>(false, select(true, !arg_3.c.x, arg_2.c.x && true), func_1(_wgslsmith_mult_i32(4558i, -2054i)).x, global0.d)));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1932f + 1432f))), 1575f))));
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(-var_3.a, reverseBits(u_input.c)), firstTrailingBit(-53659i | arg_2.a)), arg_1.e, func_4(func_2(max(select(vec3<i32>(global0.a, 36376i, 2147483647i), vec3<i32>(arg_3.a, arg_2.a, -1i), vec3<bool>(arg_1.d, false, true)), -vec3<i32>(23021i, 1i, 65111i))).x, arg_3.a, arg_3).xx, any(vec2<bool>(false, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b.x, countOneBits(var_1.x), 44920u, var_3.e.x), var_3.e) & ~_wgslsmith_sub_vec4_u32(arg_2.e, firstTrailingBit(vec4<u32>(1u, 1u, var_1.x, var_3.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(-1i), Struct_1(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(-36134i, -2147483647i, 24736i, u_input.d), vec4<i32>(19215i, -1668i, global0.a, global0.a))), ~reverseBits(reverseBits(vec4<u32>(u_input.b, 34661u, 345u, global0.e.x))), !select(global0.c, func_1(u_input.c), func_1(2147483647i)), false, _wgslsmith_div_vec4_u32(~global0.b, ~global0.b) << (~(vec4<u32>(u_input.b, 1u, 43010u, u_input.b) << (vec4<u32>(u_input.b, global0.b.x, u_input.b, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, global0.a, u_input.c)), firstTrailingBit(vec3<i32>(-4589i, u_input.c, 45578i))), global0.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(global0.b, vec4<u32>(global0.b.x, global0.e.x, 26270u, 1u)), global0.e | vec4<u32>(u_input.b, global0.b.x, 53032u, 43138u), vec4<u32>(u_input.b, global0.b.x, select(global0.b.x, u_input.b, false), ~52743u)), !global0.c, false, ~(~(~vec4<u32>(u_input.b, 4294967295u, 21503u, u_input.b)))), Struct_1(1i, vec4<u32>(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, global0.a), vec3<i32>(-30878i, global0.a, -6666i))).x, reverseBits(~u_input.b), 0u, 57668u), func_4(select(_wgslsmith_div_u32(u_input.b, 4294967295u), 1u, func_1(u_input.d).x), -(i32(-1i) * -12654i), Struct_1(select(12160i, -1i, false), global0.b, select(vec2<bool>(global0.d, true), vec2<bool>(global0.d, global0.c.x), vec2<bool>(true, false)), true, vec4<u32>(u_input.b, 0u, u_input.b, global0.b.x) & global0.b)).zz, all(select(vec3<bool>(global0.c.x, global0.c.x, global0.d), vec3<bool>(global0.d, global0.c.x, false), vec3<bool>(global0.c.x, false, global0.c.x))), select(global0.b, global0.e, !(!vec4<bool>(true, global0.d, true, true)))));
    global0 = Struct_1(firstTrailingBit(_wgslsmith_sub_i32(global0.a, u_input.a.x)), vec4<u32>(global0.b.x, 95363u, _wgslsmith_sub_u32(global0.b.x, _wgslsmith_mult_u32(global0.b.x, 4294967295u)), 1u), vec2<bool>(func_5(vec2<bool>(true, func_4(68006u, 22623i, Struct_1(global0.a, global0.e, vec2<bool>(true, true), global0.d, global0.b)).x), Struct_1(-2147483647i, ~vec4<u32>(4294967295u, global0.b.x, 11315u, 1u), select(global0.c, global0.c, global0.c), !global0.d, ~global0.b), Struct_1(~global0.a, func_5(vec2<bool>(false, false), Struct_1(u_input.d, global0.b, vec2<bool>(global0.c.x, true), false, vec4<u32>(41432u, 0u, u_input.b, 1u)), Struct_1(1i, vec4<u32>(4294967295u, 4294967295u, u_input.b, 86715u), vec2<bool>(false, true), global0.c.x, vec4<u32>(93551u, u_input.b, 10291u, u_input.b)), Struct_1(u_input.a.x, vec4<u32>(global0.e.x, 0u, 0u, 30524u), global0.c, global0.d, vec4<u32>(u_input.b, u_input.b, global0.e.x, 71579u))).b, global0.c, !global0.c.x, global0.e), func_5(!global0.c, Struct_1(-25478i, vec4<u32>(26825u, global0.b.x, 80558u, u_input.b), vec2<bool>(true, true), true, global0.b), Struct_1(-9949i, vec4<u32>(38867u, 23632u, 485u, 1u), global0.c, global0.c.x, vec4<u32>(60984u, u_input.b, 0u, 66671u)), Struct_1(17660i, vec4<u32>(global0.b.x, global0.e.x, global0.e.x, u_input.b), vec2<bool>(global0.d, false), global0.d, global0.b))).c.x, all(select(!vec3<bool>(false, global0.c.x, global0.d), vec3<bool>(global0.c.x, global0.d, false), any(vec2<bool>(false, global0.d))))), true, global0.b);
    var var_0 = ~(~(vec3<u32>(~0u, 1u ^ u_input.b, global0.e.x | global0.e.x) ^ global0.b.yyz));
    let var_1 = func_4(_wgslsmith_add_u32(~global0.e.x << (1u % 32u), ~11025u), global0.a, func_5(vec2<bool>(global0.a >= -u_input.c, all(func_5(vec2<bool>(global0.c.x, global0.d), Struct_1(1i, global0.b, vec2<bool>(false, true), global0.c.x, vec4<u32>(u_input.b, var_0.x, 69789u, var_0.x)), Struct_1(-32562i, vec4<u32>(35218u, global0.b.x, 1u, global0.b.x), vec2<bool>(global0.d, false), false, vec4<u32>(47548u, global0.b.x, 4294967295u, var_0.x)), Struct_1(global0.a, global0.e, global0.c, true, vec4<u32>(4294967295u, 29761u, global0.e.x, 1u))).c)), func_5(!(!global0.c), Struct_1(u_input.c, global0.e, global0.c, true, _wgslsmith_div_vec4_u32(global0.b, vec4<u32>(var_0.x, 0u, 1u, global0.e.x))), func_5(vec2<bool>(true, true), func_5(global0.c, Struct_1(2201i, global0.e, global0.c, global0.d, global0.b), Struct_1(u_input.c, vec4<u32>(2658u, 6998u, u_input.b, 1u), global0.c, global0.c.x, vec4<u32>(var_0.x, global0.e.x, var_0.x, 0u)), Struct_1(-66647i, vec4<u32>(var_0.x, u_input.b, u_input.b, 1u), vec2<bool>(false, true), false, vec4<u32>(22351u, 10292u, u_input.b, 1u))), Struct_1(-1301i, global0.b, vec2<bool>(global0.c.x, global0.c.x), global0.c.x, vec4<u32>(4294967295u, 29698u, global0.e.x, global0.e.x)), func_5(global0.c, Struct_1(15943i, vec4<u32>(87691u, 0u, 9495u, 3035u), global0.c, global0.d, global0.e), Struct_1(u_input.c, vec4<u32>(var_0.x, 75967u, u_input.b, 39185u), vec2<bool>(global0.c.x, false), global0.d, vec4<u32>(global0.e.x, 39771u, var_0.x, u_input.b)), Struct_1(u_input.c, global0.e, global0.c, global0.d, vec4<u32>(26437u, 64475u, 4294967295u, var_0.x)))), Struct_1(_wgslsmith_add_i32(global0.a, 1i), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 41420u, 5354u, var_0.x), global0.b), !global0.c, global0.d, global0.b)), Struct_1(-17943i, ~select(global0.b, vec4<u32>(var_0.x, global0.e.x, 1u, 1u), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.d)), func_4(~0u, 1i, func_5(global0.c, Struct_1(global0.a, vec4<u32>(83463u, var_0.x, u_input.b, 30912u), vec2<bool>(global0.c.x, false), global0.d, vec4<u32>(var_0.x, 33562u, 1u, u_input.b)), Struct_1(0i, global0.b, global0.c, true, vec4<u32>(53805u, 1u, 67232u, u_input.b)), Struct_1(global0.a, global0.e, vec2<bool>(false, global0.c.x), global0.d, vec4<u32>(58076u, 4294967295u, 4294967295u, global0.e.x)))).xz, global0.c.x, ~(vec4<u32>(1u, u_input.b, 4294967295u, var_0.x) >> (vec4<u32>(3353u, var_0.x, 0u, 4294967295u) % vec4<u32>(32u)))), func_5(!(!global0.c), func_5(global0.c, func_5(vec2<bool>(global0.d, global0.c.x), Struct_1(global0.a, global0.b, vec2<bool>(global0.c.x, false), true, vec4<u32>(1u, 98545u, global0.b.x, 10088u)), Struct_1(1i, global0.b, global0.c, global0.c.x, global0.b), Struct_1(u_input.c, vec4<u32>(1u, 33141u, 47178u, 4294967295u), global0.c, true, global0.e)), func_5(vec2<bool>(global0.d, global0.c.x), Struct_1(1i, global0.b, global0.c, global0.d, global0.e), Struct_1(u_input.d, vec4<u32>(4294967295u, global0.e.x, var_0.x, u_input.b), vec2<bool>(true, false), global0.d, vec4<u32>(u_input.b, var_0.x, global0.e.x, 4294967295u)), Struct_1(1i, vec4<u32>(global0.e.x, u_input.b, 91068u, var_0.x), global0.c, false, global0.b)), func_5(global0.c, Struct_1(0i, vec4<u32>(11564u, 4294967295u, u_input.b, 0u), vec2<bool>(global0.d, false), global0.d, global0.b), Struct_1(-22853i, vec4<u32>(global0.e.x, global0.b.x, var_0.x, global0.b.x), vec2<bool>(false, global0.d), global0.d, vec4<u32>(var_0.x, u_input.b, 1u, 22189u)), Struct_1(2147483647i, global0.e, global0.c, false, global0.e))), func_5(global0.c, func_5(global0.c, Struct_1(u_input.a.x, vec4<u32>(24431u, var_0.x, 0u, var_0.x), global0.c, global0.d, vec4<u32>(var_0.x, 8276u, var_0.x, u_input.b)), Struct_1(2147483647i, global0.e, global0.c, false, vec4<u32>(56903u, 76490u, var_0.x, 15994u)), Struct_1(-1i, global0.e, global0.c, false, vec4<u32>(global0.b.x, u_input.b, 45049u, 8148u))), func_5(vec2<bool>(false, false), Struct_1(u_input.a.x, global0.b, vec2<bool>(global0.d, global0.c.x), true, global0.b), Struct_1(2147483647i, global0.e, vec2<bool>(global0.d, global0.d), global0.d, global0.e), Struct_1(10792i, vec4<u32>(var_0.x, 1u, 45180u, var_0.x), vec2<bool>(true, global0.d), global0.c.x, vec4<u32>(61251u, global0.e.x, 28278u, u_input.b))), func_5(global0.c, Struct_1(1i, vec4<u32>(global0.e.x, u_input.b, var_0.x, global0.b.x), global0.c, true, vec4<u32>(45501u, 34045u, 43283u, var_0.x)), Struct_1(-2147483647i, vec4<u32>(50983u, 0u, u_input.b, 0u), vec2<bool>(true, true), global0.c.x, global0.e), Struct_1(-1i, vec4<u32>(4294967295u, 0u, global0.b.x, global0.b.x), global0.c, global0.c.x, vec4<u32>(u_input.b, 30470u, 1u, u_input.b)))), func_5(!vec2<bool>(true, global0.c.x), func_5(vec2<bool>(global0.d, true), Struct_1(u_input.a.x, global0.b, vec2<bool>(global0.c.x, true), global0.d, vec4<u32>(u_input.b, u_input.b, 74061u, 1u)), Struct_1(u_input.c, global0.e, global0.c, false, vec4<u32>(u_input.b, global0.b.x, 42682u, var_0.x)), Struct_1(u_input.d, global0.b, global0.c, false, vec4<u32>(u_input.b, u_input.b, 40308u, u_input.b))), func_5(global0.c, Struct_1(0i, vec4<u32>(global0.b.x, 4294967295u, 1u, var_0.x), global0.c, false, vec4<u32>(var_0.x, 24237u, 3682u, 87331u)), Struct_1(u_input.d, vec4<u32>(u_input.b, var_0.x, var_0.x, global0.e.x), vec2<bool>(false, global0.d), global0.d, vec4<u32>(53934u, 12049u, global0.b.x, 62962u)), Struct_1(1i, global0.b, vec2<bool>(global0.c.x, false), true, vec4<u32>(106519u, 14198u, global0.e.x, 31698u))), Struct_1(2147483647i, vec4<u32>(4323u, 1u, var_0.x, 51514u), global0.c, true, vec4<u32>(56685u, var_0.x, 28156u, 4294967295u))))));
    global0 = Struct_1(-1997i, vec4<u32>(((var_0.x ^ 66074u) | 1u) >> ((~global0.e.x >> (12098u % 32u)) % 32u), global0.e.x, u_input.b, 4294967295u), global0.c, true, ~_wgslsmith_mult_vec4_u32(reverseBits(global0.b), vec4<u32>(0u, global0.e.x, 4294967295u, global0.e.x)) | vec4<u32>(u_input.b & global0.b.x, 0u, ~var_0.x << (~15901u % 32u), global0.b.x));
    let var_2 = Struct_2(max(global0.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 2166u), global0.e.yy)), func_5(vec2<bool>(func_1(_wgslsmith_div_i32(2147483647i, -1i)).x, true), Struct_1(14447i, ~global0.b, vec2<bool>(true, false), true, ~global0.e), func_5(select(func_4(86723u, global0.a, Struct_1(-1i, vec4<u32>(4294967295u, var_0.x, 4294967295u, var_0.x), vec2<bool>(false, false), global0.c.x, vec4<u32>(4294967295u, global0.b.x, u_input.b, var_0.x))).zz, !vec2<bool>(var_1.x, false), global0.c), func_5(vec2<bool>(global0.d, false), Struct_1(-23667i, global0.b, vec2<bool>(false, var_1.x), false, vec4<u32>(global0.e.x, 31126u, 52753u, 70190u)), Struct_1(u_input.d, vec4<u32>(global0.e.x, u_input.b, 12487u, global0.e.x), vec2<bool>(global0.c.x, global0.c.x), global0.c.x, global0.e), Struct_1(u_input.c, vec4<u32>(global0.b.x, 1u, 28104u, var_0.x), vec2<bool>(true, false), true, vec4<u32>(4294967295u, 67905u, global0.b.x, 1u))), func_5(global0.c, func_5(global0.c, Struct_1(-2147483647i, global0.b, var_1.xz, var_1.x, global0.e), Struct_1(-49540i, vec4<u32>(4294967295u, 25110u, global0.b.x, var_0.x), var_1.zz, var_1.x, global0.b), Struct_1(global0.a, vec4<u32>(global0.b.x, global0.b.x, 1u, 0u), var_1.xy, false, vec4<u32>(4294967295u, u_input.b, 96612u, 0u))), func_5(vec2<bool>(global0.d, var_1.x), Struct_1(2147483647i, vec4<u32>(1u, global0.b.x, var_0.x, 32493u), var_1.zx, false, vec4<u32>(4294967295u, u_input.b, global0.e.x, 0u)), Struct_1(u_input.c, global0.b, global0.c, var_1.x, vec4<u32>(1u, 4294967295u, var_0.x, u_input.b)), Struct_1(global0.a, vec4<u32>(0u, 36299u, 21395u, 36816u), vec2<bool>(var_1.x, false), false, vec4<u32>(u_input.b, 0u, 36613u, 9905u))), func_5(vec2<bool>(global0.c.x, false), Struct_1(2147483647i, vec4<u32>(var_0.x, u_input.b, 43926u, 73739u), vec2<bool>(var_1.x, var_1.x), var_1.x, global0.b), Struct_1(u_input.c, vec4<u32>(var_0.x, 1u, 39136u, var_0.x), vec2<bool>(false, true), true, global0.b), Struct_1(global0.a, vec4<u32>(1u, global0.e.x, 4294967295u, global0.b.x), vec2<bool>(var_1.x, false), true, vec4<u32>(u_input.b, 41293u, var_0.x, u_input.b)))), func_5(!vec2<bool>(var_1.x, true), func_5(global0.c, Struct_1(1i, vec4<u32>(105306u, u_input.b, 61686u, 25722u), vec2<bool>(false, var_1.x), true, vec4<u32>(2178u, 4294967295u, 4294967295u, global0.b.x)), Struct_1(27311i, vec4<u32>(var_0.x, 112853u, 54417u, 1u), global0.c, true, vec4<u32>(4294967295u, 0u, global0.b.x, var_0.x)), Struct_1(672i, vec4<u32>(0u, 1u, 40839u, var_0.x), var_1.zz, global0.c.x, vec4<u32>(var_0.x, u_input.b, global0.e.x, 13778u))), func_5(vec2<bool>(false, true), Struct_1(8605i, global0.e, vec2<bool>(var_1.x, true), false, vec4<u32>(4294967295u, 29732u, 1u, 7973u)), Struct_1(0i, global0.b, var_1.zz, var_1.x, global0.e), Struct_1(u_input.c, global0.e, var_1.xz, var_1.x, global0.e)), Struct_1(-1i, vec4<u32>(var_0.x, global0.b.x, 8150u, var_0.x), vec2<bool>(true, true), global0.c.x, vec4<u32>(1u, var_0.x, 24422u, 10608u)))), func_5(var_1.xy, func_5(vec2<bool>(true, true), func_5(vec2<bool>(true, global0.d), Struct_1(-5147i, vec4<u32>(var_0.x, var_0.x, u_input.b, 1u), global0.c, global0.c.x, global0.e), Struct_1(-33507i, global0.b, vec2<bool>(false, false), false, global0.b), Struct_1(u_input.a.x, vec4<u32>(78392u, 58457u, var_0.x, var_0.x), var_1.zz, false, vec4<u32>(var_0.x, var_0.x, u_input.b, u_input.b))), func_5(vec2<bool>(true, global0.d), Struct_1(global0.a, vec4<u32>(1555u, 1u, 25705u, 1u), global0.c, var_1.x, global0.e), Struct_1(-18571i, global0.e, vec2<bool>(var_1.x, true), var_1.x, global0.e), Struct_1(global0.a, vec4<u32>(u_input.b, 83724u, 0u, 28249u), var_1.zx, true, vec4<u32>(u_input.b, 63273u, 4294967295u, 4454u))), func_5(global0.c, Struct_1(-23008i, global0.e, var_1.zx, true, vec4<u32>(36244u, 31219u, var_0.x, 0u)), Struct_1(u_input.d, vec4<u32>(global0.e.x, global0.e.x, var_0.x, 1u), vec2<bool>(var_1.x, false), var_1.x, global0.e), Struct_1(u_input.d, global0.b, vec2<bool>(var_1.x, true), var_1.x, global0.b))), func_5(!vec2<bool>(global0.c.x, var_1.x), func_5(var_1.yx, Struct_1(42711i, global0.e, vec2<bool>(global0.d, false), false, global0.e), Struct_1(u_input.c, global0.e, var_1.xx, false, global0.e), Struct_1(global0.a, vec4<u32>(4294967295u, 17378u, 4294967295u, 0u), var_1.yx, false, vec4<u32>(4294967295u, 47989u, global0.e.x, global0.b.x))), func_5(vec2<bool>(var_1.x, global0.d), Struct_1(u_input.c, vec4<u32>(var_0.x, 58879u, global0.e.x, 2085u), vec2<bool>(var_1.x, global0.c.x), global0.d, vec4<u32>(1u, 28859u, global0.e.x, 1u)), Struct_1(u_input.d, global0.b, vec2<bool>(false, var_1.x), false, vec4<u32>(var_0.x, var_0.x, 29699u, 0u)), Struct_1(global0.a, vec4<u32>(4294967295u, global0.b.x, 2672u, 46881u), var_1.zz, global0.d, vec4<u32>(var_0.x, 0u, u_input.b, var_0.x))), func_5(vec2<bool>(global0.c.x, false), Struct_1(global0.a, global0.b, global0.c, global0.c.x, global0.e), Struct_1(0i, global0.e, vec2<bool>(global0.c.x, true), global0.c.x, global0.b), Struct_1(-1i, vec4<u32>(u_input.b, global0.b.x, var_0.x, 42407u), global0.c, var_1.x, global0.e))), func_5(vec2<bool>(false, var_1.x), Struct_1(global0.a, global0.b, vec2<bool>(true, false), true, vec4<u32>(4294967295u, 4294967295u, 23940u, u_input.b)), Struct_1(40985i, global0.e, global0.c, true, vec4<u32>(37948u, var_0.x, u_input.b, 0u)), Struct_1(1i, global0.b, global0.c, true, vec4<u32>(var_0.x, 34761u, 4294967295u, u_input.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(229f, -650f, 1143f))) + vec3<f32>(238f, -3199f, 467f)), !(!select(select(var_1, vec3<bool>(true, var_1.x, global0.c.x), global0.c.x), var_1, true)), false);
    var var_3 = _wgslsmith_f_op_f32(select(-1465f, var_2.c.x, (~func_5(vec2<bool>(var_2.b.c.x, var_1.x), Struct_1(11366i, vec4<u32>(u_input.b, 0u, 19507u, u_input.b), vec2<bool>(global0.d, true), global0.d, var_2.b.b), Struct_1(global0.a, global0.b, var_1.xz, true, vec4<u32>(24457u, global0.e.x, u_input.b, global0.e.x)), Struct_1(-12494i, vec4<u32>(var_2.a, 3407u, 40151u, var_2.a), global0.c, false, var_2.b.e)).a > ~(var_2.b.a ^ u_input.d)) | true));
    var_0 = _wgslsmith_add_vec3_u32(firstTrailingBit(max(abs(global0.e.xyy), abs(abs(global0.e.yzz)))), var_2.b.e.yzy);
    global0 = Struct_1(global0.a, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.b.b, vec4<u32>(26993u, 29120u, 0u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(738u, u_input.b, 3713u, 96941u), vec4<u32>(u_input.b, 9753u, 5225u, 9171u))), vec4<u32>(~38640u, u_input.b, 11082u, global0.b.x)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(12714u, 4294967295u, 0u, 0u), global0.e) | min(global0.b, vec4<u32>(6357u, 1u, global0.b.x, global0.b.x)))), func_1(global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -762f)))) >= var_2.c.x, var_2.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x);
}

