struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, false, true, false, true, false, false, true, true, true, false, true);

var<private> global1: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    global1 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(global1.x, 26501i), vec2<i32>(global1.x, arg_1)) | (vec2<i32>(-2147483647i, arg_0) ^ vec2<i32>(arg_1, global1.x)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-5639i, -15092i), vec2<i32>(arg_1, 24742i))), max(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, 2147483647i), vec2<i32>(2147483647i, arg_0)), firstLeadingBit(vec2<i32>(1i, -27058i))));
    var var_0 = -1i ^ _wgslsmith_add_i32(14680i ^ (global1.x & global1.x), arg_1);
    let var_1 = Struct_2(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(~vec4<i32>(29951i, 12801i, 2147483647i, -14666i), vec4<i32>(arg_1, 77060i, global1.x, -21409i)), ~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 7142i, 0i, -12593i), vec4<i32>(-57361i, arg_1, 1i, 44134i), vec4<i32>(-2147483647i, arg_0, arg_1, 1i)), select(vec4<i32>(-1610i, 0i, 23170i, 1i), vec4<i32>(arg_1, 2506i, arg_0, global1.x), false), !global0[_wgslsmith_index_u32(1u, 12u)])), vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 12u)], true));
    let var_2 = Struct_2(min(firstTrailingBit(min(var_1.a, var_1.a)) >> (~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)) % vec4<u32>(32u)), var_1.a), !select(select(select(vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(var_1.b.x, var_1.b.x), global0[_wgslsmith_index_u32(42065u, 12u)]), vec2<bool>(false, false), true), var_1.b, vec2<bool>(var_1.b.x, true)));
    var var_3 = var_1;
    return 232f;
}

fn func_2() -> Struct_2 {
    let var_0 = !vec3<bool>(any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false, global0[_wgslsmith_index_u32(4294967295u, 12u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], true, global0[_wgslsmith_index_u32(7285u, 12u)], global0[_wgslsmith_index_u32(18467u, 12u)]))), !(_wgslsmith_div_f32(-1994f, 156f) == _wgslsmith_f_op_f32(func_3(global1.x, global1.x))), !select(false, true, false));
    var var_1 = 830f;
    var var_2 = Struct_3(Struct_2(~(abs(vec4<i32>(global1.x, 30110i, global1.x, global1.x)) & vec4<i32>(0i, global1.x, global1.x, global1.x)), var_0.zx), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], ~11443u >> (_wgslsmith_sub_u32(1u, abs(u_input.a.x)) % 32u)));
    let var_3 = u_input.a;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-351f - 342f))) * -970f), -1532f);
    return Struct_2(countOneBits(min(_wgslsmith_clamp_vec4_i32(var_2.a.a, vec4<i32>(0i, 4020i, var_2.a.a.x, -37923i), vec4<i32>(global1.x, 1i, 24374i, global1.x)), ~countOneBits(vec4<i32>(22785i, global1.x, var_2.a.a.x, var_2.a.a.x)))), var_0.zy);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    let var_0 = -31221i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_3(Struct_2(vec4<i32>(0i, arg_1.a.x, global1.x, 1520i), vec2<bool>(all(func_2().b), all(select(vec3<bool>(arg_1.b.x, true, false), vec3<bool>(arg_1.b.x, arg_2.b.x, arg_2.b.x), vec3<bool>(true, arg_1.b.x, arg_2.b.x))))), Struct_1(u_input.a.x, true, u_input.a.x));
    var var_3 = vec4<u32>(0u, ~(~3633u), 0u, min(_wgslsmith_sub_u32(_wgslsmith_add_u32(firstLeadingBit(15793u), ~u_input.a.x), ~(u_input.a.x << (1u % 32u))), max(0u, 16470u)));
    var var_4 = var_2.a;
    return Struct_3(Struct_2(vec4<i32>(select(~var_0, _wgslsmith_sub_i32(arg_0, 31531i), func_2().b.x), -29257i, firstLeadingBit(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(var_2.a.a.zx, arg_1.a.yw)), arg_1.b), var_2.b);
}

fn func_1() -> i32 {
    global1 = ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-16325i, ~global1.x), -max(vec2<i32>(10672i, global1.x), vec2<i32>(11731i, -1i)), vec2<i32>(~(-6582i), -37361i)));
    let var_0 = ~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (~u_input.a % vec3<u32>(32u)), u_input.a));
    global1 = -vec2<i32>(-21949i, _wgslsmith_add_i32(global1.x, global1.x)) & vec2<i32>(reverseBits(1i), ~1i);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-58789i | _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 8306i, global1.x, global1.x), vec4<i32>(global1.x, -2147483647i, -2147483647i, -35921i), vec4<i32>(-2147483647i, global1.x, -25935i, 34272i)), vec4<i32>(0i, global1.x, 17306i, 11636i)), -32771i), ~vec2<i32>(global1.x, 2259i));
    let var_2 = func_4(1i, func_2(), func_2());
    return func_2().a.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~arg_0.yx | arg_0.zz, arg_0.zx), _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_0.x, 1i, arg_0.x, arg_0.x))), func_4(-15019i, func_4(abs(global1.x), Struct_2(arg_0, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(global1.x, global1.x, -2147483647i, 11085i), arg_0), vec2<bool>(false, false))).a, Struct_2(vec4<i32>(2147483647i, ~(-11229i), 0i, func_1()), !select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false), vec2<bool>(false, false), true))).a, Struct_2(-_wgslsmith_mult_vec4_i32(~vec4<i32>(global1.x, -14001i, 39602i, -12030i), arg_0), !vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.a.x, 12u)]))).b;
    var var_1 = u_input.a;
    let var_2 = Struct_1(27013u, true, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx << (vec2<u32>(25219u, u_input.a.x) % vec2<u32>(32u)), ~vec2<u32>(40542u, u_input.a.x)) | 21915u, 1u));
    let var_3 = -1352f;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-1403f * var_3)), 799f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(246f, arg_1.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1704f, -384f) - arg_1.xw)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-148f, _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1671f, var_3))))));
    return func_4(~(-firstTrailingBit(global1.x)) << (var_2.a % 32u), func_4(_wgslsmith_mod_i32(~arg_0.x, _wgslsmith_sub_i32(0i, arg_0.x)) & ~arg_0.x, func_2(), Struct_2(vec4<i32>(_wgslsmith_mod_i32(33943i, arg_0.x), arg_0.x, arg_0.x, -3968i & arg_0.x), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)]))).a, func_4(global1.x, func_4(-1i, Struct_2(~vec4<i32>(global1.x, arg_0.x, global1.x, global1.x), vec2<bool>(false, true)), Struct_2(max(vec4<i32>(-2147483647i, global1.x, global1.x, arg_0.x), vec4<i32>(arg_0.x, 2147483647i, arg_0.x, -2147483647i)), vec2<bool>(var_0.b, var_2.b))).a, Struct_2(countOneBits(_wgslsmith_sub_vec4_i32(arg_0, arg_0)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_0.b, false), vec2<bool>(false, var_2.b)), var_0.c >= 4294967295u))).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(-vec2<i32>(_wgslsmith_add_i32(-global1.x, ~(-1i)), _wgslsmith_add_i32(-global1.x, global1.x)));
    let var_0 = func_5(vec4<i32>(19458i, ~(-min(1i, global1.x)), func_1() & reverseBits(global1.x), ~min(_wgslsmith_mod_i32(-1i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-48566i, global1.x, global1.x), vec3<i32>(41315i, global1.x, 8185i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(913f, 106f, 699f, -122f) - vec4<f32>(-1000f, -1149f, -1704f, 701f)) + vec4<f32>(147f, -2555f, -367f, -868f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1896f, 369f, 1531f, 599f)))));
    global1 = select(_wgslsmith_mod_vec2_i32(var_0.a.a.yx, var_0.a.a.zw), func_5(var_0.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-173f, 2345f, 3402f, 323f)))))).a.a.yw, !(!(!func_5(vec4<i32>(0i, global1.x, global1.x, global1.x), vec4<f32>(476f, 1000f, -1000f, -179f)).a.b)));
    global1 = vec2<i32>(abs(var_0.a.a.x), 28857i);
    let var_1 = any(!vec3<bool>(!all(vec3<bool>(true, var_0.a.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)])), true, ~global1.x != _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 23533i), vec3<i32>(global1.x, -15368i, -29818i))));
    global1 = firstLeadingBit(~var_0.a.a.xx << (vec2<u32>(~(~0u), u_input.a.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~u_input.a.zy ^ countOneBits(vec2<u32>(var_0.b.c, u_input.a.x)), abs(min(max(vec2<u32>(1u, u_input.a.x), vec2<u32>(4294967295u, 4294967295u)), u_input.a.xy >> (u_input.a.xx % vec2<u32>(32u))))), vec2<f32>(1007f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(465f + -2394f), _wgslsmith_f_op_f32(select(-570f, _wgslsmith_f_op_f32(436f + 1579f), true)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, 1532f), _wgslsmith_f_op_f32(round(464f)))))), vec2<i32>(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(global1.x, var_0.a.a.x)), var_0.a.a.ww), _wgslsmith_div_i32(var_0.a.a.x, _wgslsmith_add_i32(global1.x << (var_0.b.c % 32u), global1.x))), 35101u);
}

