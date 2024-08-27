struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_5) -> u32 {
    var var_0 = vec2<bool>(!(arg_1.x & false) || select(all(select(arg_2.a.a, arg_1.zw, false)), arg_1.x, _wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(517f + arg_2.c.c)), true);
    var_0 = !arg_2.b.b.yx;
    var var_1 = arg_2.a;
    var_1 = arg_2.b;
    var_0 = select(select(select(arg_1.yw, !var_1.a, !var_0.x), !vec2<bool>(select(true, false, var_1.b.x), false), select(vec2<bool>(var_0.x, true), select(vec2<bool>(arg_1.x, false), select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_2.a.a.x, arg_1.x), var_1.b.yz), vec2<bool>(true, false)), vec2<bool>(false, false))), !vec2<bool>(true, var_1.b.x & true), var_1.a);
    return 56895u;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_4(select(-(~vec2<i32>(u_input.d, u_input.d) << (vec2<u32>(61709u, 50647u) % vec2<u32>(32u))), abs(countOneBits(vec2<i32>(u_input.d, 0i))) >> (vec2<u32>(u_input.c, u_input.e) % vec2<u32>(32u)), vec2<bool>(true, true)), true);
    var var_1 = global0.x;
    let var_2 = -(~vec4<i32>(_wgslsmith_mult_i32(28317i, arg_0), 97861i, _wgslsmith_clamp_i32(-1i, 1i, u_input.d), max(var_0.a.x, u_input.a))) << (_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.c, u_input.b.x, u_input.c, 4294967295u)), vec4<u32>(u_input.e | ~4294967295u, u_input.b.x, _wgslsmith_mod_u32(1u, func_3(var_0.a, vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), Struct_5(Struct_3(vec2<bool>(var_0.b, true), vec4<bool>(var_0.b, true, true, var_0.b), u_input.b.yyx, 1u), Struct_3(vec2<bool>(true, false), vec4<bool>(false, var_0.b, var_0.b, false), u_input.b.yyw, 0u), Struct_1(-2820i, vec4<u32>(u_input.e, u_input.b.x, 27575u, 0u), global0.x)))), _wgslsmith_sub_u32(~u_input.c, 4294967295u)), max(~(vec4<u32>(u_input.c, u_input.e, 0u, u_input.e) >> (vec4<u32>(u_input.b.x, 72881u, 0u, 19817u) % vec4<u32>(32u))), vec4<u32>(~4294967295u, u_input.c, countOneBits(u_input.c), ~u_input.b.x))) % vec4<u32>(32u));
    return _wgslsmith_sub_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 10136u), vec2<u32>(4294967295u, 1u)), 37247u >> (1u % 32u)), u_input.e) << (25314u % 32u);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32) -> Struct_4 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_1, global0.x)), global0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(302f, -822f) * vec2<f32>(-1507f, arg_1)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(1116f, -1887f)))), vec2<f32>(-1019f, global0.x), vec2<bool>(true, true))));
    var var_0 = vec2<i32>(15247i, -31122i);
    return Struct_4(~vec2<i32>(var_0.x, _wgslsmith_sub_i32(~(-2147483647i), arg_2)), any(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.e, ~3629u), 1u), select(func_2(27996i), ~8248u, !(!arg_0.b)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e, u_input.b.x, u_input.b.x), abs(u_input.c)), _wgslsmith_add_u32(1u, u_input.e))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(35799i, 19253i, 1i), vec3<i32>(12578i, u_input.a, 2147483647i)), vec3<i32>(7571i, 1i, arg_0.a.x) >> (u_input.b.wwx % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -3579i, u_input.a, -1i), vec4<i32>(0i, 11493i, -18840i, -2147483647i)), _wgslsmith_clamp_i32(-2147483647i, arg_0.a.x, -2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 1i), vec3<i32>(-2147483647i, 1i, arg_0.a.x)), i32(-1i) * -28925i, ~0i))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -485f))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, arg_1))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -548f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(229f))))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-386f)) * _wgslsmith_div_f32(global0.x, -1551f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1205f, arg_1)))), global0.x));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, 6053u), _wgslsmith_div_u32(~0u, ~(~u_input.e)));
    var var_3 = vec2<i32>(arg_0.a.x, _wgslsmith_clamp_i32(countOneBits(arg_0.a.x), 2147483647i, (0i & arg_0.a.x) | _wgslsmith_mod_i32(~arg_0.a.x, var_0.a.x & u_input.a)));
    return Struct_1(_wgslsmith_mod_i32(~func_4(var_2, arg_1, u_input.d).a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, var_3.x), vec3<i32>(arg_0.a.x, 1i, var_3.x), vec3<i32>(-1i, -2147483647i, arg_0.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 18577i, -1i), vec3<i32>(u_input.d, 32907i, -1i)))) | -2147483647i, _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(var_2 >> (81988u % 32u)), u_input.e, u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2), ~u_input.b.zz)), ~u_input.b), -754f);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = -firstLeadingBit(select(vec4<i32>(_wgslsmith_mult_i32(-32385i, arg_0.a), max(38247i, 62706i), 2147483647i, u_input.a), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-32488i, u_input.d, arg_0.a, arg_0.a), vec4<i32>(arg_0.a, -1i, arg_0.a, 0i)), select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !vec4<bool>(true, arg_1.x, false, arg_1.x), !arg_1.x)));
    let var_1 = Struct_2(arg_0, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-226f + -327f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, global0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 940f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.x)))))));
    let var_2 = Struct_5(Struct_3(select(arg_1.yx, vec2<bool>(all(vec2<bool>(arg_1.x, true)), var_1.a.b.x < 4294967295u), any(vec3<bool>(false, false, true))), select(vec4<bool>(!arg_1.x, any(arg_1), true, arg_1.x), vec4<bool>(arg_1.x, func_4(4294967295u, arg_0.c, arg_0.a).b, all(vec3<bool>(arg_1.x, true, arg_1.x)), arg_1.x), any(vec3<bool>(true, arg_1.x, arg_1.x))), _wgslsmith_add_vec3_u32(~vec3<u32>(28001u, arg_0.b.x, var_1.a.b.x), firstTrailingBit(u_input.b.zzy)) >> (abs(var_1.a.b.zyx) % vec3<u32>(32u)), countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.b.wwz, var_1.a.b.ywz), 4294967295u))), Struct_3(select(arg_1.zx, vec2<bool>(true, !arg_1.x), vec2<bool>(func_4(0u, arg_0.c, u_input.d).b, var_1.a.c == var_1.a.c)), select(vec4<bool>(all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), arg_1.x, true, false), vec4<bool>(true, any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), true, !arg_1.x), arg_1.x), vec3<u32>(4294967295u, u_input.e, abs(var_1.a.b.x)), ~(~44910u)), Struct_1(i32(-1i) * -abs(arg_0.a), var_1.a.b, 577f));
    let var_3 = all(!var_2.a.b);
    var var_4 = var_2.a;
    return Struct_3(vec2<bool>(var_2.b.a.x, true), !vec4<bool>(true, all(!vec3<bool>(var_2.a.b.x, false, false)), false, _wgslsmith_f_op_f32(step(-994f, var_1.a.c)) >= _wgslsmith_f_op_f32(-global0.x)), var_1.a.b.zxy, ~select(func_1(func_4(1074u, var_2.c.c, var_0.x), global0.x).b.x, ~var_2.a.c.x, !var_2.a.b.x));
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-140f, _wgslsmith_f_op_f32(global0.x + -1983f))))));
    var var_0 = Struct_4(select(-arg_2.a, vec2<i32>(-2147483647i, abs(reverseBits(arg_2.a.x))), !func_5(func_1(Struct_4(vec2<i32>(-34483i, arg_2.a.x), false), 1000f), vec3<bool>(true, arg_0, false), 18214u).a), ~_wgslsmith_mod_u32(1u, ~1u) == arg_1.c.x);
    let var_1 = arg_1.b.xz;
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xz, arg_1.c.zz) | 1u, _wgslsmith_dot_vec4_u32((u_input.b & vec4<u32>(u_input.c, 4294967295u, arg_1.d, u_input.b.x)) ^ vec4<u32>(77758u, arg_1.d, arg_1.c.x, 38433u), ~vec4<u32>(u_input.c, 0u, 33233u, u_input.e) ^ firstLeadingBit(vec4<u32>(u_input.c, 1u, 4294967295u, arg_1.c.x))), (arg_1.d >> (~arg_1.d % 32u)) | ~1u, u_input.c), u_input.b);
    var_0 = arg_2;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - vec2<f32>(1270f, 1095f)), vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), -1256f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(965f, 106f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x)))))))));
    let var_0 = vec2<i32>(u_input.d, 0i);
    let var_1 = Struct_5(func_6(all(vec2<bool>(true, false)), func_5(func_1(Struct_4(vec2<i32>(2147483647i, u_input.a), true), global0.x), vec3<bool>(true, any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), u_input.e), Struct_4(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(6360i, -1i), var_0), ~(-1i)), !all(vec2<bool>(true, false)))), func_6(all(vec3<bool>(true, func_6(true, Struct_3(vec2<bool>(false, false), vec4<bool>(true, false, true, true), u_input.b.ywx, 6113u), Struct_4(var_0, false)).b.x, 377f > global0.x)), Struct_3(vec2<bool>(true, false), func_5(Struct_1(-9503i, vec4<u32>(15180u, 4267u, 0u, u_input.e), 2197f), vec3<bool>(true, true, true), min(1u, 19696u)).b, u_input.b.xyw, u_input.e), func_4(~func_1(Struct_4(var_0, true), global0.x).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(-global0.x)), func_1(Struct_4(var_0, false), _wgslsmith_f_op_f32(global0.x - global0.x)).a)), Struct_1(firstLeadingBit(var_0.x), u_input.b, global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-718f, global0.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1689f, var_1.c.c))), !vec2<bool>(var_1.a.a.x, var_1.b.a.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1299f) - vec2<f32>(-700f, global0.x)))))), -firstTrailingBit(var_0.x) >= select(47071i, var_0.x, var_1.b.b.x)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.c))));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-619f - _wgslsmith_f_op_f32(step(global0.x, var_1.c.c))), var_1.c.c));
    var var_4 = true;
    var var_5 = func_1(Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_1.c.a), vec2<i32>(func_1(Struct_4(var_0, true), var_1.c.c).a, -10886i)), all(select(vec3<bool>(var_1.a.a.x, var_1.a.a.x, var_1.b.b.x), var_1.a.b.xwy, var_1.b.b.xyy)) && true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -265f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, var_0.x), func_1(Struct_4(var_0, true), -952f).a)), max(1u, ~u_input.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(func_1(Struct_4(var_0, var_1.b.b.x), _wgslsmith_f_op_f32(-var_5.c)).c)))));
}

