struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec2<i32>;

var<private> global2: vec4<u32> = vec4<u32>(65858u, 1u, 1u, 1u);

var<private> global3: Struct_4;

var<private> global4: array<vec4<u32>, 14>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = select(arg_3.d.c.yz, arg_2.a.d.c.yz, select(select(select(!global3.b.c.xy, select(arg_2.b.c.zz, global3.b.c.xz, false), true && arg_2.b.c.x), !select(vec2<bool>(global3.b.c.x, arg_1.x), arg_1.yz, global0.x), global0.x), !select(select(arg_2.a.d.c.zz, vec2<bool>(false, arg_3.d.c.x), true), arg_3.d.c.zx, true), false));
    return arg_3.c;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = global3.a.a;
    global1 = func_3(_wgslsmith_div_i32(-6797i, ~_wgslsmith_sub_i32(1444i, 1i) ^ (firstTrailingBit(17434i) ^ 1i)), !global3.a.b.d.c, Struct_4(global3.a, global3.a.b.d, abs(-27842i)), global3.a.b);
    let var_1 = 0u;
    let var_2 = Struct_4(Struct_3(~vec3<i32>(global1.x, u_input.b ^ 0i, ~global3.a.a.x), Struct_2(982f, global3.a.b.b, var_0.xz, global3.a.d), global0.x, global3.a.b.d), global3.a.d, 2147483647i);
    global0 = select(vec2<bool>(false, !(-global3.a.b.c.x == global1.x)), var_2.b.c.zy, select(false, !all(select(vec4<bool>(false, global3.a.c, true, global3.b.c.x), vec4<bool>(var_2.a.b.d.a, global3.b.a, true, true), vec4<bool>(global3.b.a, global3.b.c.x, global0.x, false))), global3.a.b.d.c.x));
    return global3.a.b.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    var var_0 = !(!(!any(arg_1.b.c.yx))) == true;
    let var_1 = func_2(u_input.a.x);
    var var_2 = _wgslsmith_mult_vec2_i32(arg_1.a.a.zz, _wgslsmith_sub_vec2_i32(global3.a.b.c, ~min(vec2<i32>(8800i, -16930i), arg_1.a.b.c))) | (vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(arg_1.a.b.c.x, arg_1.c), global3.a.a.x));
    global1 = -vec2<i32>(16794i, 2147483647i);
    var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(global1.x, 24914i))), global3.a.a.yz), _wgslsmith_div_vec2_i32(~(global3.a.a.zy | vec2<i32>(u_input.b, u_input.b)), arg_1.a.a.xx) ^ max(vec2<i32>(var_2.x, ~arg_1.c), func_3(global1.x, select(global3.b.c, vec3<bool>(true, arg_0.c.x, false), var_1.c.x), Struct_4(arg_1.a, Struct_1(arg_0.a, vec3<f32>(-521f, global3.b.b.x, arg_1.b.b.x), arg_1.b.c), 27383i), Struct_2(global3.b.b.x, vec2<f32>(arg_0.b.x, 765f), vec2<i32>(2147483647i, global1.x), arg_1.a.b.d))));
    return all(vec2<bool>(all(vec2<bool>(any(vec4<bool>(arg_0.c.x, false, true, true)), any(arg_1.b.c))), false));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    global4 = array<vec4<u32>, 14>();
    let var_0 = ~4294967295u;
    global4 = array<vec4<u32>, 14>();
    let var_1 = u_input.c;
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1i, abs(_wgslsmith_div_i32(1i, arg_2))), firstLeadingBit(vec2<i32>(max(_wgslsmith_mod_i32(-48695i, 34752i), -37541i), _wgslsmith_mult_i32(-1011i, _wgslsmith_add_i32(-61528i, 18974i)))));
    return Struct_1(select(global3.b.a, any(select(global3.a.b.d.c, vec3<bool>(arg_1.x, false, global3.b.a), global3.b.a)) && func_4(func_2(1u), Struct_4(global3.a, global3.a.b.d, u_input.b)), true || any(func_2(4294967295u).c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1335f, global3.a.b.d.b.x, global3.b.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(948f, global3.a.d.b.x, global3.b.b.x))))), func_2(arg_0).c);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = select(vec4<bool>(true, !arg_0, global0.x, arg_1.a), select(vec4<bool>(global3.a.c, any(vec3<bool>(global3.a.d.c.x, arg_0, arg_0)) != !global3.a.b.d.c.x, true, !arg_0 != false), vec4<bool>(!(!global3.a.d.c.x), false, _wgslsmith_add_u32(global2.x, 0u) != abs(38770u), true), !vec4<bool>(any(vec2<bool>(false, arg_1.c.x)), all(vec4<bool>(true, false, arg_1.c.x, true)), arg_0, true)), select(select(vec4<bool>(global3.a.b.c.x != 2147483647i, !global0.x, !global3.b.c.x, !arg_0), vec4<bool>(func_1(global2.x, vec4<bool>(false, true, true, global0.x), 11033i).a, true, true, false), any(!vec3<bool>(arg_1.c.x, global0.x, true))), vec4<bool>(true == arg_1.a, !arg_1.a, arg_1.a, true), arg_1.c.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(u_input.a.x).b.yx * _wgslsmith_f_op_vec2_f32(vec2<f32>(941f, 2039f) - _wgslsmith_f_op_vec2_f32(arg_1.b.yy - arg_1.b.xy))) * global3.b.b.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.b.x, 1171f)), -525f)), vec2<bool>(all(!vec4<bool>(true, var_0.x, global3.b.c.x, global0.x)), global0.x)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-254f)) - var_1.x)));
    global1 = vec2<i32>(select(~global3.c, 67052i, arg_0 == all(select(vec4<bool>(arg_0, global0.x, false, true), vec4<bool>(arg_1.a, global0.x, global3.a.d.c.x, var_0.x), true))), 0i);
    let var_3 = ~_wgslsmith_sub_u32(global2.x, global2.x);
    return vec2<f32>(_wgslsmith_f_op_f32(310f + -1869f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, var_2), -262f)))));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = select(select(!select(select(vec4<bool>(global3.b.c.x, global3.a.b.d.c.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(false, false, true, global0.x)), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, global0.x, global3.a.d.a)), vec4<bool>(!(false & global3.a.b.d.a), func_1(firstTrailingBit(u_input.c), !vec4<bool>(true, global3.b.c.x, global3.a.d.a, global3.a.b.d.a), _wgslsmith_add_i32(global1.x, -48368i)).c.x, select(true, global3.b.c.x, false), !global0.x), select(select(vec4<bool>(false, global3.b.c.x, global0.x, global3.b.c.x), select(vec4<bool>(false, global3.b.c.x, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x), false), func_4(Struct_1(false, vec3<f32>(-572f, -101f, -332f), vec3<bool>(global3.b.c.x, global3.b.a, true)), Struct_4(global3.a, global3.b, global3.c))), !(!vec4<bool>(false, true, global3.b.c.x, global0.x)), select(vec4<bool>(true, global3.a.c, false, true), select(vec4<bool>(global3.b.a, global3.a.b.d.c.x, false, true), vec4<bool>(global0.x, false, global0.x, global0.x), global3.a.c), !vec4<bool>(global0.x, global3.b.a, global3.a.b.d.c.x, false)))), vec4<bool>(true, true, _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(1u, 1u)) == u_input.c, global3.a.d.a), !(!select(vec4<bool>(global3.b.a, true, true, false), vec4<bool>(false, global0.x, false, global3.a.c), true)));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(global2.x << (35807u % 32u), global2.x), ~(~42405u), _wgslsmith_add_u32(~_wgslsmith_mult_u32(max(33406u, 1u), global2.x), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(global2.zyz, global2.wyz), reverseBits(_wgslsmith_mod_u32(1u, global2.x)))));
    var var_2 = Struct_4(Struct_3(max(max(abs(vec3<i32>(u_input.b, 11158i, global1.x)), vec3<i32>(26777i, u_input.b, global3.a.a.x)), global3.a.a), global3.a.b, func_2(_wgslsmith_mult_u32(4294967295u, ~u_input.a.x)).a, func_1(abs(var_1.x) & 4158u, !select(vec4<bool>(true, false, global3.a.c, true), vec4<bool>(global3.a.b.d.c.x, true, global3.a.c, false), true), min(~(-1i), -1i << (var_1.x % 32u)))), func_1(12184u, vec4<bool>(var_0.x && all(vec3<bool>(true, var_0.x, global0.x)), var_0.x, !global0.x, select(global3.a.d.c.x, func_1(4294967295u, var_0, u_input.b).c.x, true)), _wgslsmith_div_i32(firstTrailingBit(firstTrailingBit(2147483647i)), global3.c)), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(u_input.b, -64245i), firstLeadingBit(global3.a.b.c.x) << (~1u % 32u), ~min(global1.x, global1.x)) & global3.a.b.c.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(1u).b.xx - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1021f, -280f), var_2.a.d.b.yz, global3.a.d.a)), global3.b.b.yx, func_2(28332u).c.x)))) * vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1923f)) - _wgslsmith_f_op_f32(-var_2.a.d.b.x))));
    global3 = Struct_4(global3.a, var_2.a.b.d, firstTrailingBit(u_input.b));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1i;
    var var_1 = u_input.c;
    global3 = Struct_4(func_6(_wgslsmith_f_op_vec2_f32(func_5(global3.b.c.x, func_1(~global2.x, !vec4<bool>(global0.x, true, global0.x, true), global3.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.b.b.x, global3.b.b.x, -897f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1643f, 1747f, 2253f))))), func_1(28570u, !select(select(vec4<bool>(global0.x, global3.a.d.c.x, false, true), vec4<bool>(global3.b.a, true, global3.a.d.c.x, global3.a.b.d.a), false), vec4<bool>(true, global3.b.c.x, false, false), true | global3.b.a), u_input.b), -16390i);
    let var_2 = Struct_4(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3.a.b.d.b.zx, vec2<f32>(908f, -365f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -296f))) * global3.a.b.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(358f, global3.a.b.a, global3.a.b.b.x))))), global3.b, _wgslsmith_div_i32(abs(i32(-1i) * -61583i), 19947i));
    var var_3 = global3.b.c;
    let var_4 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(~reverseBits(35950u), firstTrailingBit(1u)), global2.yy));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.x, ~u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -2262f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(119f, var_2.b.b.x, -562f, global3.a.b.d.b.x), vec4<f32>(var_2.b.b.x, global3.a.b.d.b.x, 1334f, global3.b.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(floor(397f)), -179f, 439f, _wgslsmith_f_op_f32(-global3.b.b.x)))), ~(-abs(firstTrailingBit(global3.a.a))));
}

