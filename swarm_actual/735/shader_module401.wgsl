struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 14>;

var<private> global2: i32 = 1i;

var<private> global3: array<Struct_2, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> u32 {
    return u_input.c.x;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    let var_0 = select(~_wgslsmith_div_vec3_u32(~vec3<u32>(48438u, 4294967295u, 4294967295u), ~(vec3<u32>(4294967295u, global0.x, 0u) | vec3<u32>(17336u, 13043u, 16874u))), vec3<u32>(68259u, firstTrailingBit(global0.x) << (((1u & global0.x) | 51314u) % 32u), _wgslsmith_div_u32(abs(~1483u), _wgslsmith_div_u32(max(4294967295u, 5693u), global1[_wgslsmith_index_u32(~u_input.c.x, 14u)]))), arg_0.b);
    let var_1 = true;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f * _wgslsmith_f_op_f32(f32(-1f) * -1027f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1868f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -444f)))), 1771f, !var_1)));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(665f + -1785f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -919f, var_2.x, 939f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))))), !(4294967295u > ~var_0.x)));
    return true;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: bool) -> i32 {
    global2 = 1i;
    let var_0 = _wgslsmith_add_i32((i32(-1i) * -17904i) >> (global0.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(54077i, ~(~42725i), u_input.a), min(-vec3<i32>(1i, u_input.a, u_input.b.x), ~(~vec3<i32>(u_input.a, -26069i, u_input.b.x)))));
    global1 = array<u32, 14>();
    let var_1 = _wgslsmith_add_vec2_u32(abs(~vec2<u32>(0u, 44886u) | (u_input.c << (~vec2<u32>(26544u, global1[_wgslsmith_index_u32(1u, 14u)]) % vec2<u32>(32u)))), select(global0.xz, global0.xy, vec2<bool>(arg_1, any(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)))));
    global0 = vec3<u32>(u_input.c.x, firstLeadingBit(~1u), 4246u);
    return 1i;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    let var_0 = Struct_1(arg_0.a, vec2<i32>(-u_input.a, -1i));
    global2 = func_4((vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, arg_1, arg_1), vec4<u32>(arg_1, global1[_wgslsmith_index_u32(73783u, 14u)], global0.x, global0.x))) >> ((vec2<u32>(36040u, 4294967295u) >> (~global0.xy % vec2<u32>(32u))) % vec2<u32>(32u))) >> ((vec2<u32>(func_2(vec3<bool>(false, false, true), vec2<u32>(1u, 62010u), vec3<i32>(u_input.a, u_input.a, -1i)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 27504u, u_input.c.x), vec3<u32>(global0.x, global1[_wgslsmith_index_u32(25593u, 14u)], global1[_wgslsmith_index_u32(u_input.c.x, 14u)]))) & u_input.c) % vec2<u32>(32u)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(false, false, false)), true, any(vec2<bool>(false, true)), false), vec4<bool>(true, func_3(Struct_2(vec3<bool>(true, false, false), vec3<bool>(false, true, true), 647i), -29884i), true, arg_0.a < 1000f))), true);
    var var_1 = Struct_3(Struct_2(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(var_0.b.x > -17881i, any(vec4<bool>(true, true, true, false)), false)), vec3<bool>(true, true, true), 2147483647i), Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b), Struct_1(-874f, u_input.b), Struct_2(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), vec3<bool>(all(vec3<bool>(true, true, true)) && true, ~arg_2.b.x > 2147483647i, false), ~(~(arg_0.b.x >> (60563u % 32u)))), abs(u_input.b.x));
    global0 = vec3<u32>(~firstLeadingBit(arg_1 | global1[_wgslsmith_index_u32(4294967295u, 14u)]), ~(arg_1 ^ 1u), 35195u) | vec3<u32>(global0.x, u_input.c.x, countOneBits(~(~global1[_wgslsmith_index_u32(11767u, 14u)])));
    var var_2 = global3[_wgslsmith_index_u32(abs(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(arg_1, u_input.c.x, 14294u)), vec3<u32>(abs(global0.x), arg_1, _wgslsmith_mod_u32(1u, global0.x))), 14u)], _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(42870u, 17665u, 18630u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 14u)], arg_1, u_input.c.x), vec3<u32>(arg_1, 10191u, arg_1)) % vec3<u32>(32u)), ~(vec3<u32>(global0.x, 14762u, 4294967295u) | vec3<u32>(0u, u_input.c.x, 32941u))), var_1.d.a.x)), 9u)];
    return select(~(-min(countOneBits(vec3<i32>(1i, -4805i, var_2.c)), vec3<i32>(2147483647i, -2147483647i, arg_2.b.x))), -vec3<i32>(37813i, ~_wgslsmith_mult_i32(-1i, var_2.c), var_2.c), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.c.x) << (~(~u_input.c.x) % 32u);
    var var_1 = -(~func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1033f), vec2<i32>(-21294i, u_input.b.x)), _wgslsmith_mult_u32(~67531u, global0.x << (u_input.c.x % 32u)), Struct_1(_wgslsmith_f_op_f32(abs(-1018f)), u_input.b), countOneBits(u_input.a & -15750i)));
    let var_2 = Struct_2(vec3<bool>(true, false, false), vec3<bool>(all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true))), true, (var_1.x <= 60012i) & (global1[_wgslsmith_index_u32(15420u, 14u)] >= u_input.c.x)), abs(_wgslsmith_mult_i32(-45285i, -(~var_1.x))));
    var var_3 = Struct_3(Struct_2(select(vec3<bool>(true, 26048u != u_input.c.x, var_2.b.x), !(!vec3<bool>(var_2.a.x, var_2.b.x, false)), vec3<bool>(var_2.b.x || true, true, func_3(Struct_2(var_2.b, var_2.a, -2147483647i), var_1.x))), !vec3<bool>(true, !var_2.a.x, any(var_2.a.zy)), -2147483647i), Struct_1(_wgslsmith_f_op_f32(ceil(673f)), vec2<i32>(-3091i, abs(var_2.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1859f) + _wgslsmith_div_f32(-706f, -601f))), vec2<i32>(var_1.x, var_2.c)), var_2, countOneBits(-18239i));
    global1 = array<u32, 14>();
    var var_4 = select(select(select(select(!vec4<bool>(var_3.d.b.x, true, var_3.a.a.x, var_2.b.x), !vec4<bool>(var_2.b.x, true, var_3.a.b.x, false), vec4<bool>(true, false, false, var_3.a.a.x)), vec4<bool>(!var_3.d.a.x, all(var_2.a.zy), true | var_3.d.a.x, var_3.a.b.x), vec4<bool>(true | var_2.b.x, all(vec3<bool>(var_3.d.b.x, true, true)), var_3.d.a.x, var_3.d.a.x)), !vec4<bool>(var_2.a.x & var_3.d.a.x, false, false, !var_3.a.a.x), select(select(!vec4<bool>(var_3.d.a.x, var_3.a.b.x, var_3.a.b.x, var_3.d.b.x), vec4<bool>(false, false, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, true, true, var_2.b.x)), select(!vec4<bool>(true, var_3.a.b.x, true, true), select(vec4<bool>(var_2.a.x, var_2.a.x, var_2.b.x, false), vec4<bool>(var_3.d.a.x, var_2.a.x, var_3.a.b.x, false), vec4<bool>(true, var_2.a.x, false, true)), vec4<bool>(var_3.d.b.x, var_2.b.x, true, var_3.d.b.x)), any(select(vec4<bool>(true, false, var_2.b.x, false), vec4<bool>(true, var_2.a.x, false, var_2.b.x), vec4<bool>(false, var_3.d.a.x, true, var_2.a.x))))), vec4<bool>(true, true, !any(vec2<bool>(var_3.a.b.x, false)), var_2.a.x), func_3(Struct_2(select(select(var_2.a, var_2.a, vec3<bool>(var_2.b.x, true, var_2.a.x)), !var_2.b, true), vec3<bool>(any(var_3.d.a), var_3.d.b.x, var_2.a.x), 0i), firstLeadingBit(var_2.c)));
    var var_5 = var_2.a.zx;
    var var_6 = var_3.b.a;
    var var_7 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<i32>(1i, ~var_3.b.b.x, firstTrailingBit(22281i), _wgslsmith_mod_i32(2147483647i, u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(u_input.a), -2147483647i, -1i, var_1.x), ~(vec4<i32>(0i, var_1.x, var_1.x, 1i) | vec4<i32>(var_2.c, u_input.b.x, 0i, 1i))), all(select(!var_3.a.b.yy, var_4.wy, var_2.b.xy))), vec3<f32>(1869f, _wgslsmith_f_op_f32(trunc(-506f)), var_3.b.a), var_3.b.b.x);
}

