struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(232u, 37102u, 4294967295u, 46459u), -140f, vec3<u32>(0u, 43712u, 0u));

var<private> global1: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), true), vec2<bool>(true, true), true);
    var var_1 = select(arg_2, -firstTrailingBit(-vec4<i32>(arg_1.x, u_input.a, -51557i, arg_1.x)), var_0.x) & arg_2;
    var var_2 = ~43127i;
    let var_3 = vec3<f32>(910f, 1666f, 419f);
    let var_4 = vec4<bool>(var_0.x, false, all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, true), var_0.x), select(true, var_0.x, var_0.x))) && var_0.x, all(vec4<bool>(var_0.x, true, var_0.x != (var_0.x || var_0.x), true | var_0.x)));
    return global1.a;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1047f, _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -745f)), -1000f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + -1000f), _wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))))));
    var var_3 = true;
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.b, arg_1.b) * vec3<f32>(var_2.x, var_2.x, 1082f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.b, global1.b) * vec3<f32>(global0.b, global1.b, 634f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global0.b, global0.b)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -3428f, var_0.b), vec3<f32>(var_2.x, 665f, -823f)))))));
    return max(-vec4<i32>(u_input.a, 2147483647i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(10103i, u_input.a, u_input.b.x)), -u_input.b), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.a, u_input.a)), -u_input.b)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(abs(reverseBits(vec4<i32>(-42877i, u_input.a, u_input.a, 0i))), -vec4<i32>(u_input.a, -3666i, -2147483647i, -2147483647i)), -_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -2147483647i, u_input.a), vec4<i32>(0i, -15499i, -39391i, 16900i)), vec4<i32>(-9835i, u_input.a, u_input.b.x, 47029i) & vec4<i32>(33038i, -34246i, 2147483647i, 14643i))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = -(func_4((arg_1.c.x == var_0.a.x) & !arg_2.x, Struct_1(func_3(-930f, vec4<i32>(u_input.a, u_input.b.x, 0i, -1i), vec4<i32>(6701i, arg_0, u_input.b.x, 1i)), _wgslsmith_f_op_f32(f32(-1f) * -559f), vec3<u32>(arg_1.a.x, 26274u, 1u))) << (global1.a % vec4<u32>(32u)));
    var var_2 = 3202u;
    global1 = var_0;
    let var_3 = Struct_1(vec4<u32>(~func_3(var_0.b, vec4<i32>(var_1.x, var_1.x, 1i, 17663i), var_1).x, ~(~(~arg_1.a.x)), 1u, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_1.b)), true)) - arg_1.b), global0.a.yyy ^ _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 15920u, global0.a.x), global0.a.xyz), var_0.a.xyw));
    return Struct_1(vec4<u32>(_wgslsmith_mult_u32(global1.a.x, ~0u), min(min(7155u, 11387u), _wgslsmith_sub_u32(1u, var_3.a.x)), ~_wgslsmith_sub_u32(global1.a.x, 1u), select(~var_0.c.x, 48063u, arg_2.x)) ^ abs(~(~vec4<u32>(1u, 0u, 56726u, 4294967295u))), -279f, vec3<u32>(1u, ~1u, ~select(~60127u, var_3.a.x, true | arg_2.x)));
}

fn func_1() -> Struct_1 {
    global1 = func_2(u_input.a, Struct_1(vec4<u32>(1u >> (global1.c.x % 32u), global0.a.x, global0.c.x, ~9400u) >> (global0.a % vec4<u32>(32u)), global0.b, min(global1.c, vec3<u32>(global1.c.x, 4294967295u, _wgslsmith_mult_u32(15374u, 1u)))), !vec4<bool>(true, true, true, !any(vec2<bool>(false, true))));
    var var_0 = 0i;
    let var_1 = countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~0u), 25084u, ~global0.c.x, func_3(_wgslsmith_f_op_f32(global1.b * 1951f), ~vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x), countOneBits(vec4<i32>(u_input.b.x, 20869i, -20843i, u_input.b.x))).x), reverseBits(vec4<u32>(0u, _wgslsmith_sub_u32(564u, global0.c.x), 4294967295u, _wgslsmith_dot_vec2_u32(global0.a.zy, vec2<u32>(1u, 4294967295u))))));
    var var_2 = Struct_1(firstLeadingBit(vec4<u32>(abs(0u), ~(~94770u), _wgslsmith_mult_u32(4294967295u << (global1.c.x % 32u), ~4294967295u), 0u)), _wgslsmith_f_op_f32(-779f - global0.b), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(79277u, var_1.x), _wgslsmith_sub_vec2_u32(var_1.zy, var_1.wy)), (global0.c.x << (4294967295u % 32u)) ^ ~global1.a.x, 4294967295u), vec3<u32>(var_1.x, ~var_1.x, var_1.x), false));
    global1 = Struct_1(~(var_2.a << (~(~global1.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-global1.b), ~var_2.c);
    return Struct_1(~firstTrailingBit(vec4<u32>(global0.c.x, global1.a.x, 4294967295u, global0.a.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(86727u, 37973u, 18153u, global1.c.x), var_2.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(global1.b * 500f), min(var_2.a.wwx, global0.c));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -7236i;
    global0 = func_1();
    global0 = func_2(1i, arg_0, select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), !all(vec2<bool>(true, false))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(abs(4294967295u), arg_0.c.x, _wgslsmith_sub_u32(global1.c.x, 4294967295u) >> ((global1.a.x | global1.a.x) % 32u), _wgslsmith_mod_u32(global0.a.x, _wgslsmith_dot_vec2_u32(arg_0.a.zw, vec2<u32>(global0.c.x, arg_0.a.x)))), global1.a ^ vec4<u32>(global0.a.x, 0u, _wgslsmith_mod_u32(4294967295u, arg_0.a.x), 98314u >> (1u % 32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1214f)), 1585f)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(342f, 1230f))))), -abs(-vec4<i32>(13057i, u_input.b.x, -1i, var_0)), _wgslsmith_clamp_vec4_i32(vec4<i32>(select(var_0, 20611i, true), -var_0, u_input.b.x, min(u_input.a, 3640i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 0i, 0i, -9062i), firstLeadingBit(vec4<i32>(30250i, -1i, -10525i, u_input.a))), select(-vec4<i32>(-5826i, 26244i, 2147483647i, 0i), vec4<i32>(0i, -27502i, 5230i, u_input.a), true))).wxx);
    var var_2 = func_2(u_input.b.x, arg_0, !vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    var var_1 = vec4<bool>(true, true, true, !(true == all(vec2<bool>(true, true))));
    var var_2 = !(!var_1.wzy);
    global0 = func_2(~u_input.a, func_5(func_5(func_2(~(-2147483647i), func_5(Struct_1(global0.a, var_0.b, global0.c)), !vec4<bool>(true, var_2.x, var_1.x, true)))), vec4<bool>(any(!select(vec2<bool>(var_2.x, true), var_2.xy, vec2<bool>(var_1.x, false))), any(!vec4<bool>(var_1.x, false, var_2.x, true)), all(!select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(false, true, true, var_2.x), vec4<bool>(false, false, var_2.x, true))), true));
    let var_3 = var_1.x;
    let var_4 = Struct_1(global0.a, global0.b, vec3<u32>(2056u, _wgslsmith_sub_u32(var_0.c.x, 4294967295u) ^ firstLeadingBit(var_0.a.x), ~_wgslsmith_sub_u32(33432u, func_3(1777f, vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(796i, -8469i, -1i, 25809i)).x)));
    var var_5 = countOneBits(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.a, -18715i, u_input.b.x))), firstTrailingBit(vec4<i32>(u_input.a, u_input.b.x, -1i, 1i) << (vec4<u32>(var_4.c.x, 1u, 1u, global0.c.x) % vec4<u32>(32u)))));
    var var_6 = any(vec3<bool>(true, any(vec4<bool>(true, var_1.x, var_5.x != 2147483647i, any(var_1.xx))), any(!vec2<bool>(true, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(global1.b, 302f), var_0.b), global1.a.x, _wgslsmith_clamp_i32(-43762i, var_5.x, _wgslsmith_add_i32(var_5.x >> (~global0.c.x % 32u), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * global1.b)), (var_5.yw | _wgslsmith_mod_vec2_i32(var_5.yz, vec2<i32>(-3939i, u_input.b.x) | var_5.xw)) >> (var_0.a.zy % vec2<u32>(32u)));
}

