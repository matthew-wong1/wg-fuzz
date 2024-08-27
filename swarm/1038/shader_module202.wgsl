struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(35108u, 1u, 10628u, 64922u, 1u, 16393u, 7191u, 1u, 31228u, 1u, 1335u, 1u, 27412u);

var<private> global1: array<Struct_4, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(~vec3<i32>(countOneBits(_wgslsmith_sub_i32(u_input.e, u_input.e)), u_input.e, 29977i), Struct_2(vec3<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-394f))))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.e) & _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-2147483647i, -1i)), -firstTrailingBit(vec2<i32>(u_input.e, u_input.e))), -46138i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(54015i, u_input.e)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 16908i), vec2<i32>(-1i, u_input.e))) == firstTrailingBit(1i), i32(-1i) * -(u_input.e ^ 1i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(307f, -1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -189f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-454f, _wgslsmith_div_f32(-1000f, -1831f), -1i > u_input.e))), 1f, -1606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f)))));
    var var_1 = u_input.d;
    let var_2 = firstLeadingBit(vec4<u32>(23604u, 4294967295u, 54199u, ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(38603u, 4294967295u, u_input.d), 13u)])) << (vec4<u32>(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(15424u, u_input.a.x, u_input.c, 44146u), vec4<u32>(0u, u_input.d, u_input.b.x, global0[_wgslsmith_index_u32(u_input.d, 13u)])), _wgslsmith_add_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 13u)], min(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(26315u, 13u)])), var_0.c.c), ~26057u, 1u & (min(u_input.c, 0u) >> (countOneBits(47584u) % 32u)), 1u) % vec4<u32>(32u));
    var var_3 = 2147483647i;
    let var_4 = Struct_5(_wgslsmith_mod_vec3_i32(-reverseBits(vec3<i32>(1i, var_0.c.d, u_input.e)), abs(var_0.a)), var_0.b, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.e.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.e.x) + _wgslsmith_f_op_f32(-1392f * var_0.c.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(242f, 493f))), var_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f + 937f) + _wgslsmith_div_f32(var_0.b.c, -1000f))))));
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(74805u, 1u, var_2.x)), vec3<u32>(min(34561u, 0u), ~u_input.a.x, u_input.a.x ^ u_input.d))), 13u)];
}

fn func_2() -> vec4<bool> {
    let var_0 = -859f;
    var var_1 = select(!any(vec2<bool>(true, true)), true, any(vec4<bool>(~0u >= u_input.b.x, true, true, firstTrailingBit(u_input.b.x) < u_input.b.x)));
    let var_2 = var_0;
    var_1 = !(_wgslsmith_f_op_f32(-662f + 907f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(595f, var_0)) + var_2)));
    let var_3 = vec2<u32>(~func_3(), abs(~select(0u, 1u, var_0 < -534f)));
    return vec4<bool>(all(vec3<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(true, false, true)), any(vec3<bool>(true, false, true)) & true)), false, min(_wgslsmith_add_u32(54415u, select(20829u, 1u, true)), _wgslsmith_add_u32(u_input.b.x, global0[_wgslsmith_index_u32(7759u, 13u)])) > (~reverseBits(81165u) >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), vec3<u32>(1u, 10484u, global0[_wgslsmith_index_u32(1u, 13u)])) % 32u)), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2.e;
    global0 = array<u32, 13>();
    let var_1 = abs(_wgslsmith_dot_vec4_i32(~select(~vec4<i32>(arg_2.d, u_input.e, arg_2.b, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.d, -67334i, 1i, -19174i), vec4<i32>(41532i, arg_2.d, 22391i, arg_2.b)), !arg_0), ~vec4<i32>(_wgslsmith_div_i32(-1i, 17191i), arg_2.d, u_input.e << (u_input.a.x % 32u), _wgslsmith_mod_i32(u_input.e, 39265i))));
    var var_2 = Struct_1(countOneBits(1i), -arg_2.a, !arg_2.c, u_input.e, arg_2.e);
    global0 = array<u32, 13>();
    return Struct_2(select(arg_0.zzw, select(vec3<bool>(true, 855f != arg_2.e.x, true), select(vec3<bool>(true, arg_0.x, true), !arg_0.ywx, vec3<bool>(arg_2.c, var_2.c, false)), vec3<bool>(true, true, arg_2.c)), arg_0.yxw), arg_0, var_2.e.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(~(i32(-1i) * -arg_0.d), arg_0.d), arg_0.d, arg_0.b, u_input.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.c - arg_0.c.c), _wgslsmith_f_op_f32(-859f - -264f)), _wgslsmith_f_op_f32(-arg_0.a.x))));
    let var_1 = Struct_5(select(vec3<i32>(abs(var_0.a), countOneBits(10603i | var_0.b), -2147483647i), vec3<i32>(_wgslsmith_mod_i32(var_0.d, u_input.e), var_0.a ^ u_input.e, 1i) >> (max(~vec3<u32>(0u, 1u, 54939u), ~vec3<u32>(75481u, 49924u, 58763u)) % vec3<u32>(32u)), !(true & arg_0.c.a.x)), Struct_2(vec3<bool>(false, !all(vec3<bool>(true, false, arg_0.b)), false), select(select(select(arg_0.c.b, vec4<bool>(arg_0.c.b.x, true, false, var_0.c), arg_0.b), vec4<bool>(var_0.c, false, true, arg_0.c.a.x), vec4<bool>(arg_0.b, false, false, false)), arg_0.c.b, !var_0.c & true), _wgslsmith_f_op_f32(-arg_0.c.c)), Struct_1(_wgslsmith_dot_vec3_i32(select(min(vec3<i32>(67406i, u_input.e, 1i), vec3<i32>(0i, -25359i, var_0.b)), vec3<i32>(u_input.e, 0i, arg_0.d), vec3<bool>(arg_0.b, arg_0.c.a.x, arg_0.b)), vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.e, var_0.b, -23367i), var_0.a | u_input.e)), var_0.a, any(func_4(!vec4<bool>(true, true, var_0.c, arg_0.b), !var_0.c, Struct_1(1i, u_input.e, true, var_0.a, var_0.e)).b.wxy), ~var_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1043f)), _wgslsmith_f_op_f32(arg_0.c.c + var_0.e.x)))), -512f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-854f - var_0.e.x)), 475f, var_0.e.x, _wgslsmith_f_op_f32(trunc(arg_0.c.c))));
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.a.xz);
    var var_4 = Struct_5(abs(min(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, var_1.a.x), -46149i, select(0i, -2147483647i, arg_0.b)), vec3<i32>(9377i, 18202i, -29802i | arg_0.d))), func_4(!vec4<bool>(true & var_2.a.x, true, !var_2.a.x, all(var_1.b.b)), func_4(!(!vec4<bool>(false, true, true, var_0.c)), countOneBits(global0[_wgslsmith_index_u32(0u, 13u)]) <= max(u_input.b.x, 4294967295u), var_1.c).a.x, var_1.c), var_1.c, 238f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2763f, -894f, 108f, -591f))), vec4<f32>(arg_0.c.c, -680f, var_1.b.c, -459f))))));
    return 61182u;
}

fn func_1() -> u32 {
    global0 = array<u32, 13>();
    var var_0 = global1[_wgslsmith_index_u32(56548u, 14u)];
    global0 = array<u32, 13>();
    let var_1 = vec2<i32>(~1i, -1i);
    global0 = array<u32, 13>();
    return func_5(Struct_3(vec3<f32>(-917f, _wgslsmith_f_op_f32(step(-247f, 169f)), -543f), true, func_4(func_2(), true, Struct_1(0i, u_input.e, false, 2147483647i, vec2<f32>(2006f, -1181f))), -min(u_input.e, -1i)), abs(max(~u_input.a.yz, ~var_0.a.xy))) & _wgslsmith_dot_vec4_u32(max(countOneBits(vec4<u32>(0u, u_input.b.x, 54638u, u_input.c)), vec4<u32>(var_0.a.x, 8954u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 13u)], 52660u)), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27025u, 13u)], 13u)], 4294967295u, ~7104u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(abs(-u_input.e) | u_input.e));
    let var_1 = func_1();
    global1 = array<Struct_4, 14>();
    var var_2 = min(~vec3<u32>(0u, ~1u, u_input.a.x), u_input.a);
    global0 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy, _wgslsmith_f_op_f32(-1407f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f) - -141f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(813f)), 649f))), u_input.a.x, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, 15021u, 4294967295u), 1u), ~(vec3<u32>(var_2.x, 1u, 0u) << (u_input.a % vec3<u32>(32u)))) >> (u_input.a % vec3<u32>(32u)));
}

