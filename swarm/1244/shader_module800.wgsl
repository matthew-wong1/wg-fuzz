struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.a.wxx));
    var var_1 = global0.c.x;
    return 4294967295u;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: f32) -> i32 {
    let var_0 = ~abs(reverseBits(~(~arg_2.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, global0.a.a.x, arg_1.b.x, 282f), vec4<f32>(-455f, global0.a.a.x, 1000f, arg_1.a.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.x, global0.a.a.x, arg_3, global0.b.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -660f), -916f, _wgslsmith_f_op_f32(arg_3 + 775f), global0.b.x) * global0.a.a)), global0.a.b);
    var var_2 = Struct_1(global0.a.a, 0i);
    let var_3 = select(vec4<u32>(0u, _wgslsmith_mult_u32(~(7469u << (arg_2.x % 32u)), abs(1u | arg_2.x)), arg_2.x, ~0u), abs(arg_1.d), global0.c);
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-465f)))))));
    return -2147483647i;
}

fn func_1() -> Struct_3 {
    var var_0 = ~4294967295u ^ (~func_2(Struct_3(global0.b.zz, global0.a.b, vec3<i32>(global0.a.b, global0.a.b, u_input.c), vec4<u32>(1u, 61678u, global0.d.x, 95999u)), global0.a.b) >> (global0.d.x % 32u));
    var var_1 = ~(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, global0.a.b << (global0.d.x % 32u), select(u_input.a, 1i, false)), -vec3<i32>(-112967i, u_input.a, -7537i) << ((u_input.d.zxz >> (u_input.d.zwx % vec3<u32>(32u))) % vec3<u32>(32u))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -1936f)))))), 17951i, vec3<i32>(44907i & ~(-var_1.x), func_3(Struct_4(false, vec3<i32>(-1i, global0.a.b, -21442i), ~var_1.xy), Struct_5(global0.a, global0.b, global0.c, firstTrailingBit(vec4<u32>(u_input.d.x, 0u, global0.d.x, global0.d.x))), u_input.d, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(1008f - global0.b.x))), -firstLeadingBit(var_1.x) << (11863u % 32u)), u_input.d);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(all(global0.c), abs(arg_3.c ^ _wgslsmith_mod_vec3_i32(~arg_3.c, vec3<i32>(-39238i, 57938i, 23729i))), vec2<i32>(~countOneBits(_wgslsmith_mult_i32(-10081i, 1i)), -2147483647i));
    var var_1 = func_1();
    global0 = Struct_5(global0.a, _wgslsmith_f_op_vec3_f32(floor(arg_0.wxz)), vec4<bool>(true, global0.c.x, var_0.a, all(vec2<bool>(global0.c.x, var_0.a)) & all(vec2<bool>(true, true))), vec4<u32>(~u_input.d.x, firstTrailingBit(14302u), 11495u, min(~u_input.b, 0u)));
    var var_2 = i32(-1i) * -1i;
    var_2 = abs(~firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_3.c, var_1.c) | (-1i >> (0u % 32u))));
    return var_0;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> Struct_5 {
    global0 = Struct_5(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1243f, -983f)) + _wgslsmith_f_op_f32(f32(-1f) * -1280f)), -850f) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-900f + global0.a.a.x), _wgslsmith_f_op_f32(global0.a.a.x * global0.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1277f), _wgslsmith_f_op_f32(-321f + global0.a.a.x))), !vec4<bool>(arg_1 & true, true, (global0.c.x && true) || !arg_2.x, true), u_input.d);
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.a.a.zz);
    var var_1 = Struct_5(Struct_1(vec4<f32>(var_0.x, var_0.x, -1366f, -2246f), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), global0.b.x, -447f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -2030f, var_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, -1262f, 949f)))))), vec4<bool>(true, true, all(select(vec3<bool>(false, true, arg_0.a), global0.c.yyz, vec3<bool>(false, false, true))), 1004f > _wgslsmith_f_op_f32(round(-783f))), ~global0.d);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.b.x, -1043f, -694f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(ceil(global0.b.x)), -122f, 1173f)), -(_wgslsmith_mod_i32(var_1.a.b, u_input.a) ^ 1i)), _wgslsmith_mult_u32(global0.d.x, var_1.d.x));
    global0 = Struct_5(var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.x, var_1.a.a.x, -1023f))))), !global0.c, ~_wgslsmith_mult_vec4_u32(~global0.d, _wgslsmith_mult_vec4_u32(var_1.d, var_1.d)) & select(u_input.d, _wgslsmith_clamp_vec4_u32(u_input.d, ~vec4<u32>(var_2.b, 46338u, global0.d.x, 14498u), u_input.d & u_input.d), select(select(var_1.c, vec4<bool>(false, arg_1, false, true), vec4<bool>(false, var_1.c.x, false, true)), select(var_1.c, vec4<bool>(true, var_1.c.x, false, var_1.c.x), vec4<bool>(arg_2.x, true, false, false)), select(vec4<bool>(true, true, global0.c.x, false), global0.c, true))));
    return Struct_5(var_2.a, _wgslsmith_f_op_vec3_f32(floor(global0.a.a.wyx)), !(!select(!vec4<bool>(false, arg_2.x, arg_0.a, false), select(global0.c, vec4<bool>(true, arg_1, global0.c.x, global0.c.x), var_1.c), arg_2.x)), ~global0.d);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_5(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.a.a - arg_0.a.a))), vec4<f32>(-1747f, arg_0.b.x, _wgslsmith_f_op_f32(global0.a.a.x * arg_1.b.x), _wgslsmith_f_op_f32(-arg_0.b.x))), firstTrailingBit(_wgslsmith_clamp_i32(arg_2, 0i, 0i)) << ((1u << (select(81939u, arg_0.d.x, false) % 32u)) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.a.a.x)), -779f, -956f), !vec4<bool>(any(arg_1.c.xz) || arg_1.c.x, all(global0.c), !arg_0.c.x, !arg_1.c.x), vec4<u32>(~(~arg_1.d.x | (32566u | arg_0.d.x)), abs(func_1().d.x), global0.d.x, _wgslsmith_add_u32(arg_1.d.x, _wgslsmith_div_u32(~u_input.d.x, _wgslsmith_dot_vec3_u32(arg_0.d.wyy, vec3<u32>(global0.d.x, 1u, 44253u))))));
    global0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.x - global0.b.x) - _wgslsmith_f_op_f32(select(var_0.a.a.x, 1986f, arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1614f, -1000f, global0.c.x)))))));
    var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 1440f, 1375f, arg_0.a.a.x))), _wgslsmith_f_op_vec4_f32(step(arg_0.a.a, vec4<f32>(799f, var_0.a.a.x, -279f, arg_1.b.x))))), _wgslsmith_add_i32(arg_1.a.b | 37516i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.b, -13073i, u_input.c, -13595i), vec4<i32>(-32145i, global0.a.b, 44240i, -41281i))) << (~46644u % 32u), arg_0.b.x == arg_1.a.a.x, func_1()), func_5(Struct_4(!arg_1.c.x, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, -33309i, arg_1.a.b), vec3<i32>(arg_1.a.b, arg_1.a.b, var_0.a.b)) >> (vec3<u32>(arg_0.d.x, var_0.d.x, arg_0.d.x) % vec3<u32>(32u)), vec2<i32>(u_input.c, var_0.a.b) & _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a.b, u_input.c), vec2<i32>(global0.a.b, arg_1.a.b), vec2<i32>(arg_1.a.b, -56647i))), all(!arg_1.c.wx), func_5(func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.x, arg_1.b.x, var_0.b.x, var_0.b.x), arg_0.a.a)), 1i, !arg_0.c.x, func_1()), true, vec2<bool>(true, true)).c.zx).c.x, vec2<bool>(!((arg_0.d.x | 4294967295u) <= _wgslsmith_div_u32(arg_1.d.x, arg_0.d.x)), all(vec3<bool>(true, all(arg_1.c.xzx), true))));
    var var_2 = true;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_6(func_5(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, -1516f, 1298f, global0.a.a.x) + global0.a.a), ~u_input.a, any(global0.c.xy), func_1()), func_4(global0.a.a, u_input.c, global0.c.x, func_1()).a, vec2<bool>(!global0.c.x, global0.c.x)), func_5(func_4(_wgslsmith_f_op_vec4_f32(global0.a.a * vec4<f32>(308f, -1076f, 1000f, global0.b.x)), -2806i, global0.c.x, func_1()), false, select(vec2<bool>(false, global0.c.x), func_5(Struct_4(false, vec3<i32>(global0.a.b, global0.a.b, -1i), vec2<i32>(u_input.c, global0.a.b)), false, vec2<bool>(false, global0.c.x)).c.zx, all(vec4<bool>(global0.c.x, true, true, global0.c.x)))), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(-24473i, u_input.a, u_input.c)), vec3<i32>(u_input.c, _wgslsmith_mod_i32(global0.a.b, global0.a.b), func_3(Struct_4(global0.c.x, vec3<i32>(global0.a.b, global0.a.b, global0.a.b), vec2<i32>(8265i, u_input.a)), Struct_5(global0.a, global0.a.a.yzw, vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x), vec4<u32>(64604u, 4294967295u, global0.d.x, 4294967295u)), global0.d, 1314f))));
    global0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-global0.a.a), u_input.a, any(vec3<bool>(any(vec4<bool>(var_0.x, global0.c.x, true, var_0.x)), 2147483647i != global0.a.b, all(vec3<bool>(false, var_0.x, var_0.x)))), func_1()), var_0.x, func_5(Struct_4(!any(var_0.wz), -vec3<i32>(u_input.c, 60430i, 25593i) >> (func_1().d.zzy % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(-vec2<i32>(59060i, -28636i), -vec2<i32>(u_input.a, global0.a.b))), select(!all(global0.c), true, false), !vec2<bool>(var_0.x, !var_0.x)).c.ww);
    var var_1 = global0.a.b;
    let var_2 = Struct_1(global0.a.a, _wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(_wgslsmith_add_i32(15288i, 1i), global0.a.b ^ -6853i)), _wgslsmith_clamp_i32(u_input.c, u_input.c, global0.a.b)));
    var var_3 = abs(vec4<i32>(abs(global0.a.b << (abs(global0.d.x) % 32u)), _wgslsmith_mult_i32(-func_1().b, -27574i), _wgslsmith_sub_i32(min(max(var_2.b, u_input.c), firstLeadingBit(-25923i)), global0.a.b), _wgslsmith_sub_i32(global0.a.b, 2147483647i)));
    global0 = func_5(Struct_4(any(func_5(func_4(var_2.a, -38360i, global0.c.x, Struct_3(vec2<f32>(822f, var_2.a.x), -1i, vec3<i32>(-1i, global0.a.b, -53919i), u_input.d)), 0u > u_input.d.x, vec2<bool>(var_0.x, global0.c.x)).c.yw), var_3.wzz, vec2<i32>(2579i, func_1().b)), !(!var_0.x), !(!select(var_0.wy, vec2<bool>(var_0.x, var_0.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_5(Struct_4(global0.c.x, -vec3<i32>(2147483647i, global0.a.b, 16432i), var_3.zz & var_3.xx), global0.c.x, global0.c.zw).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.x))), ~var_3.zz);
}

