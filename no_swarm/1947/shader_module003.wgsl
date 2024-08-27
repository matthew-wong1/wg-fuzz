struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(15493i, vec3<u32>(15487u, 0u, 57939u), vec2<u32>(7678u, 1u));

var<private> global1: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global2: Struct_3;

var<private> global3: f32;

var<private> global4: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = 2521f;
    let var_1 = _wgslsmith_add_vec3_i32(min(firstLeadingBit(vec3<i32>(global4.c.a, 1i, 2147483647i)) << (min(global0.b, global0.b) % vec3<u32>(32u)), vec3<i32>(~u_input.d, -12084i, 2147483647i)), -(countOneBits(vec3<i32>(0i, 1672i, global2.e.x)) | -vec3<i32>(31738i, -20008i, 19052i))) ^ abs(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -42519i, -2147483647i) >> (vec3<u32>(global4.c.b.x, 9069u, global0.b.x) % vec3<u32>(32u)), abs(vec3<i32>(-1i, u_input.c, global0.a)))));
    var var_2 = true;
    global3 = -1687f;
    var var_3 = Struct_2(~(global4.c.b.yy & firstTrailingBit(~global4.c.b.zx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.b.x))) < -545f, global4.c.c.x, vec3<bool>(true, true, false));
    return firstTrailingBit(global2.a.b.xx);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_2;
    global2 = Struct_3(arg_2, 43511i, u_input.b, reverseBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), vec2<i32>(-2147483647i, u_input.c)), arg_1.xz)) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_2.b.x), ~vec2<u32>(1u, 0u), global2.c.yx), ~vec2<u32>(0u, 4294967295u) >> (~arg_2.b.zy % vec2<u32>(32u)), func_3()) % vec2<u32>(32u)), min(global2.d, vec2<i32>(_wgslsmith_sub_i32(arg_1.x, ~2147483647i), global2.b)));
    var var_0 = max(vec2<i32>(~2147483647i, -44283i), countOneBits(abs(~select(vec2<i32>(18699i, -53518i), vec2<i32>(2147483647i, arg_2.a), vec2<bool>(global4.a, global4.a)))));
    let var_1 = Struct_3(arg_2, ~0i, vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2.c, ~vec2<u32>(arg_2.c.x, 4294967295u)), _wgslsmith_clamp_u32(31536u, ~(~4294967295u), global2.c.x), ~(~(global2.c.x << (15147u % 32u)))), vec2<i32>(~(~(~0i)), 10636i), -global2.d & _wgslsmith_clamp_vec2_i32(abs(global2.e >> (vec2<u32>(1u, global0.c.x) % vec2<u32>(32u))), global2.d, vec2<i32>(_wgslsmith_sub_i32(global0.a, 1i), ~2147483647i)));
    global0 = var_1.a;
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_3 {
    global4 = Struct_4(!(!arg_2) & arg_2, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x * arg_3))), _wgslsmith_f_op_f32(-global4.b.x)), func_2(false, vec4<i32>(global4.c.a, -35090i, -53368i << (arg_1 % 32u), 2147483647i), func_2(true, vec4<i32>(40401i, arg_0.a, global0.a, global0.a) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-33650i, global2.e.x, global0.a, arg_0.a), vec4<i32>(global2.a.a, 56i, -2147483647i, global4.c.a), vec4<i32>(global2.e.x, -10693i, global0.a, 37012i)), Struct_1(abs(-1i), ~vec3<u32>(u_input.b.x, global2.a.b.x, global2.a.b.x), vec2<u32>(24297u, arg_1)))));
    let var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(global4.a, false), vec2<bool>(arg_2, true), false), !global4.a), !vec2<bool>(arg_2, true)), select(vec2<bool>(all(!global1[_wgslsmith_index_u32(arg_0.b.x, 32u)]), false), !vec2<bool>(false, global4.a), arg_2), select(select(select(select(vec2<bool>(true, global4.a), vec2<bool>(false, true), global4.a), select(vec2<bool>(global4.a, arg_2), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(!vec2<bool>(false, global4.a), vec2<bool>(false, false), global4.a), !select(vec2<bool>(global4.a, arg_2), vec2<bool>(arg_2, global4.a), arg_2)), vec2<bool>(!(arg_2 || arg_2), global4.a), select(select(!vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), !vec2<bool>(false, global4.a)), vec2<bool>(all(global1[_wgslsmith_index_u32(32163u, 32u)]), !arg_2), !(!vec2<bool>(arg_2, arg_2)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 1f, _wgslsmith_f_op_f32(min(-405f, 1238f)), _wgslsmith_div_f32(-1697f, arg_3)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, -617f) + vec4<f32>(arg_3, global4.b.x, 1264f, arg_3)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1180f, global4.b.x, 450f, global4.b.x)))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(-global4.b.x)), 417f)));
    let var_2 = ~(~min(global2.c.yz, ~(~vec2<u32>(5450u, 37535u))));
    let var_3 = func_2(var_0.x, ~vec4<i32>(global0.a, u_input.d << (select(1u, global2.c.x, true) % 32u), abs(4207i), i32(-1i) * -global2.d.x), Struct_1(i32(-1i) * -1i, ~u_input.a.xyw, vec2<u32>(~_wgslsmith_mod_u32(4294967295u, 4294967295u), arg_0.b.x)));
    return Struct_3(func_2(all(select(vec3<bool>(arg_2, var_0.x, true), vec3<bool>(arg_2, false, true), true)), vec4<i32>(-var_3.a, -global2.e.x, _wgslsmith_mod_i32(-2147483647i, global4.c.a) << ((global2.a.b.x | 4294967295u) % 32u), ~(~global0.a)), global4.c), ~func_2(all(!var_0), -firstTrailingBit(vec4<i32>(var_3.a, -18510i, -8469i, global4.c.a)), func_2(false, ~vec4<i32>(-2371i, global2.e.x, 41746i, 2147483647i), func_2(false, vec4<i32>(987i, global4.c.a, -2147483647i, 20218i), arg_0))).a, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, ~u_input.b.x), firstTrailingBit(~0u)), _wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, global2.a.c.x, 1u), vec3<u32>(1u, global2.a.c.x, 4294967295u))), select(~16993u, global2.c.x & global0.c.x, var_0.x)), firstTrailingBit(37928u)), firstLeadingBit(-global2.d), global2.e);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_4 {
    global2 = func_4(func_2(!(_wgslsmith_mult_i32(37780i, global2.a.a) < ~(-294i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global4.c.a, arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, global0.a), vec4<i32>(-3177i, 26032i, global4.c.a, 27282i))), vec4<i32>(~global2.b, -1i >> (global0.c.x % 32u), countOneBits(arg_1.x), -9423i & arg_0.c.a)), global2.a), func_3().x, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b.x, -1407f), _wgslsmith_f_op_f32(-arg_0.b.x))))));
    var var_0 = func_4(Struct_1(-arg_0.c.a, ~(select(vec3<u32>(global2.a.b.x, 4294967295u, global0.c.x), global2.a.b, global1[_wgslsmith_index_u32(arg_0.c.b.x, 32u)]) ^ global0.b), vec2<u32>(62802u, global0.c.x)), min(~_wgslsmith_mult_u32(func_2(global4.a, vec4<i32>(-2147483647i, global2.e.x, u_input.c, -25271i), global2.a).c.x, ~u_input.b.x), ~(u_input.b.x | 21451u) >> (2813u % 32u)), !all(select(vec2<bool>(arg_0.a, global4.a), !vec2<bool>(global4.a, false), arg_0.a)), -479f);
    var var_1 = global1[_wgslsmith_index_u32(func_3().x >> ((global0.b.x & ~firstLeadingBit(countOneBits(u_input.b.x))) % 32u), 32u)];
    var var_2 = all(var_1.yy);
    var var_3 = vec3<bool>(true, any(var_1.zy) && !var_1.x, true);
    return Struct_4(true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) + arg_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.x, 1000f)) * arg_0.b), true)), vec2<f32>(_wgslsmith_f_op_f32(abs(-703f)), global4.b.x), false)), Struct_1(_wgslsmith_clamp_i32(global4.c.a, -2147483647i, 76144i), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(0u, 49856u, var_0.a.b.x)), global4.c.b & global2.c), ~global4.c.b), vec2<u32>(global2.a.b.x, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = global4.a;
    global4 = func_1(Struct_4(all(vec3<bool>(false, global4.a, true)) && (!global4.a && global4.a), _wgslsmith_f_op_vec2_f32(max(global4.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.x, -1000f)))))), global2.a), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-global0.a, global4.c.a, global4.c.a >> (4294967295u % 32u))), ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(1559i, 0i, -40527i), vec3<i32>(1i, 2147483647i, -33331i), vec3<i32>(32664i, 2147483647i, global0.a)))));
    global2 = func_4(global2.a, _wgslsmith_mod_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(global2.c.zz, vec2<u32>(global2.a.c.x, global2.a.c.x)), firstLeadingBit(41664u)), ~global4.c.b.x), true, -281f);
    let var_2 = 1i;
    var var_3 = ~(-(~vec3<i32>(func_1(Struct_4(global4.a, vec2<f32>(global4.b.x, global4.b.x), global2.a), vec3<i32>(var_2, u_input.c, global2.b)).c.a, 10918i, var_2)));
    global1 = array<vec3<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-26672i >> (global0.b.x % 32u), 16869u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global4.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1397f + global4.b.x)), _wgslsmith_f_op_f32(ceil(global4.b.x)), _wgslsmith_f_op_f32(-global4.b.x)), vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-global4.b.x)), 1531f, global4.b.x, _wgslsmith_f_op_f32(-global4.b.x))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, reverseBits(68602i)), var_3.zz)));
}

