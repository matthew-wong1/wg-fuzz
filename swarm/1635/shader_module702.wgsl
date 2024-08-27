struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, false, 1073f, vec2<bool>(true, false));

var<private> global1: vec2<i32> = vec2<i32>(67773i, 8273i);

var<private> global2: array<vec2<f32>, 16>;

var<private> global3: array<vec3<u32>, 31>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = (vec4<i32>(~_wgslsmith_sub_i32(-2147483647i, u_input.c), global1.x, 7888i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, u_input.c, global1.x), vec3<i32>(global1.x, -1i, u_input.c) << (vec3<u32>(38096u, u_input.b, 6947u) % vec3<u32>(32u)))) | ~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 2926i, -20464i, u_input.c), vec4<i32>(17848i, global1.x, u_input.c, -1i), vec4<i32>(global1.x, 97815i, 0i, -6679i)), abs(vec4<i32>(global1.x, u_input.c, global1.x, 15306i)))) << (u_input.a % vec4<u32>(32u));
    var var_1 = !(global0.c > _wgslsmith_f_op_f32(-global0.c));
    let var_2 = 1i | ~(-(0i & _wgslsmith_add_i32(var_0.x, -24347i)));
    var var_3 = vec4<f32>(global0.c, 559f, global0.c, _wgslsmith_div_f32(3382f, 1659f));
    let var_4 = !global0.b || !(_wgslsmith_add_u32(~23611u, 1040u) <= (_wgslsmith_add_u32(u_input.b, u_input.b) << ((82638u << (u_input.a.x % 32u)) % 32u)));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_1(true | func_3());
    let var_1 = firstTrailingBit(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, min(vec2<u32>(22471u, 0u), vec2<u32>(arg_1.x, u_input.b))), abs(58164u) >> (u_input.b % 32u)));
    let var_2 = !(!global0.d);
    var_0 = Struct_1(any(!select(select(global0.d, global0.d, global0.b), select(vec2<bool>(global0.d.x, var_0.a), global0.d, vec2<bool>(false, var_2.x)), select(var_2.x, arg_2, global0.a))));
    var var_3 = ~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(17861u) >> ((abs(50167u) << (_wgslsmith_clamp_u32(72521u, 4294967295u, 1u) % 32u)) % 32u), ~1u), 31u)];
    return Struct_3(false, any(!vec4<bool>(var_2.x, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global1 = ~vec2<i32>(global1.x, -48173i);
    global0 = Struct_3(all(select(vec4<bool>(-834f < arg_2, func_3(), true, select(arg_0.a, true, arg_0.b)), select(vec4<bool>(false, false, arg_0.b, arg_0.a), select(vec4<bool>(global0.a, false, false, true), vec4<bool>(global0.b, true, arg_0.a, arg_0.b), arg_0.b), 1212f <= arg_0.c), select(select(vec4<bool>(false, false, false, arg_0.a), vec4<bool>(false, global0.d.x, true, true), vec4<bool>(arg_0.b, arg_0.d.x, true, arg_0.a)), !vec4<bool>(arg_0.d.x, false, false, true), vec4<bool>(true, arg_0.a, global0.a, global0.a)))), true & func_3(), -1000f, !(!select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, arg_0.b), false)));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    let var_0 = arg_1.d;
    let var_1 = _wgslsmith_f_op_f32(-global0.c);
    var var_2 = func_2(func_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1785f))), arg_1.c, global0.b).c, _wgslsmith_mult_vec2_u32(~firstTrailingBit(u_input.a.yx), vec2<u32>(select(arg_1.c.x, arg_1.b.a.x, false), ~arg_1.c.x)), true).c, _wgslsmith_mult_vec2_u32(~(~(~arg_1.b.a.zy)), firstLeadingBit(~_wgslsmith_clamp_vec2_u32(arg_1.b.a.xy, vec2<u32>(arg_1.b.a.x, arg_1.c.x), vec2<u32>(3512u, 30343u)))), arg_2.d.x);
    let var_3 = Struct_5(4294967295u, arg_1.b, ~countOneBits(~(vec2<u32>(arg_1.a, 1u) & vec2<u32>(u_input.b, arg_1.c.x))), arg_1.e, Struct_1(false));
    let var_4 = Struct_3(var_2.d.x & func_3(), global0.d.x && all(select(!vec4<bool>(true, var_2.d.x, false, var_3.e.a), !vec4<bool>(false, var_2.b, var_3.d.a, false), vec4<bool>(false, var_2.d.x, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-660f, var_3.b.b, false))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(global0.c - -152f), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-var_3.b.b)))), select(select(vec2<bool>(true, true), func_2(785f, ~u_input.a.yx, all(vec3<bool>(arg_3.a, global0.a, false))).d, arg_3.a), arg_2.d, func_2(var_1, min(var_3.b.a.zz, arg_1.b.a.yx), var_3.e.a).d));
    return Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(610f, var_4.c))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_4 {
    var var_0 = Struct_3(!(!any(global0.d)), !global0.d.x, -1269f, !(!select(vec2<bool>(global0.a, global0.a), select(vec2<bool>(global0.b, true), vec2<bool>(true, global0.a), global0.a), select(global0.d, global0.d, global0.d))));
    global2 = array<vec2<f32>, 16>();
    global2 = array<vec2<f32>, 16>();
    var var_1 = true;
    var var_2 = !(1000f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(trunc(-285f)))) + _wgslsmith_f_op_f32(f32(-1f) * -569f)));
    return func_5(global0.c, Struct_5(~min(arg_1, 1u) | firstLeadingBit(_wgslsmith_clamp_u32(arg_1, 4294967295u, 0u)), func_4(func_2(global0.c, countOneBits(vec2<u32>(arg_0.x, 4294967295u)), arg_0.x == 67953u), Struct_2(vec3<u32>(0u, 1u, u_input.a.x) << (u_input.a.xww % vec3<u32>(32u)), _wgslsmith_f_op_f32(-1000f + var_0.c)), var_0.c), ~firstTrailingBit(_wgslsmith_mod_vec2_u32(arg_0.xw, vec2<u32>(arg_0.x, arg_1))), Struct_1(true), Struct_1(true || !var_0.a)), Struct_3(all(vec4<bool>(true, global0.d.x, global0.d.x, global0.d.x)), global0.d.x, _wgslsmith_f_op_f32(min(2540f, _wgslsmith_f_op_f32(max(261f, func_4(Struct_3(false, var_0.d.x, -775f, vec2<bool>(false, true)), Struct_2(u_input.a.xyw, 643f), 707f).b)))), vec2<bool>(false, var_0.c > _wgslsmith_f_op_f32(-global0.c))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1189f)), _wgslsmith_f_op_f32(-350f + 1501f), false && var_0.b)) >= 545f));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    let var_0 = firstLeadingBit(select(func_4(Struct_3(true, true, 2053f, select(global0.d, vec2<bool>(false, global0.b), false)), func_4(func_2(-637f, arg_0.yx, global0.d.x), func_4(Struct_3(false, true, global0.c, vec2<bool>(global0.a, global0.a)), Struct_2(vec3<u32>(u_input.b, u_input.a.x, u_input.b), -1176f), 855f), _wgslsmith_f_op_f32(arg_1.a + 982f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)) * func_4(Struct_3(global0.a, global0.a, arg_2.a, vec2<bool>(global0.d.x, false)), Struct_2(arg_0, arg_2.a), 856f).b)).a.xz, vec2<u32>(0u, max(min(59548u, 0u), 0u)), global0.d));
    global1 = vec2<i32>(countOneBits(-14266i), max(~reverseBits(77610i), arg_3));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(536f, 970f, arg_2.a) + vec3<f32>(global0.c, arg_2.a, global0.c)))))));
    let var_2 = global0.a;
    var var_3 = countOneBits(-(vec3<i32>(28160i, global1.x, u_input.c) << (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, arg_0.x, 0u), arg_0), vec3<u32>(var_0.x, 1u, var_0.x)) % vec3<u32>(32u))));
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(34063i, 1860i), vec2<i32>(-2147483647i, -66873i), vec2<i32>(2147483647i, global1.x)), abs(vec2<i32>(3845i, u_input.c))), ~(~global1.x))) >> (u_input.a.yy % vec2<u32>(32u));
    let var_0 = func_6(select(global3[_wgslsmith_index_u32(28222u, 31u)], vec3<u32>(_wgslsmith_div_u32(~u_input.b, _wgslsmith_mod_u32(u_input.b, 4294967295u)), ~105723u, ~(~u_input.b)), !any(!global0.d)), Struct_4(927f), func_1(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(3768u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x)) >> (~vec4<u32>(24301u, u_input.a.x, 16244u, 34348u) % vec4<u32>(32u)), min(u_input.a, vec4<u32>(19840u, 1u, u_input.a.x, u_input.b) ^ vec4<u32>(4294967295u, 49804u, u_input.a.x, 4294967295u))), countOneBits(_wgslsmith_dot_vec4_u32(u_input.a ^ u_input.a, ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)))), _wgslsmith_div_i32(global1.x, u_input.c));
    global3 = array<vec3<u32>, 31>();
    var var_1 = select(u_input.a.yw, u_input.a.yy, global0.d);
    let var_2 = vec3<f32>(global0.c, _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c + global0.c), 245f)) * _wgslsmith_f_op_f32(-global0.c))), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(56502i, -firstLeadingBit(select(-23157i, -1i, global0.b))));
}

