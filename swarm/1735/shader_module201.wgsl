struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = ~_wgslsmith_sub_u32(45046u, max(firstTrailingBit(1u), ~0u));
    let var_1 = Struct_2(~31138u, vec4<bool>(true, !(23073u >= firstTrailingBit(45893u)), true, true));
    var var_2 = var_1.a;
    var var_3 = any(var_1.b.wyy);
    var var_4 = true;
    return ~(-1i);
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<bool>(true, all(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true))));
    var_0 = !select(!select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false)), false), !select(!vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), !var_0.x), false);
    global0 = Struct_3(-303f, -func_3(), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, -342f, 184f, 371f), _wgslsmith_f_op_vec4_f32(global0.d.a * global0.e))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-426f, 388f, global0.e.x, global0.a))))), vec4<i32>(~1i, u_input.c, 14858i, 7925i)), global0.d, global0.c.a);
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.a.x, -738f)), ~max(global0.d.b.x ^ global0.d.b.x, u_input.b.x) & -22045i, Struct_1(vec4<f32>(-752f, global0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global0.d.a.x), _wgslsmith_div_f32(-197f, 711f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-807f - global0.e.x)))), vec4<i32>(_wgslsmith_div_i32(-34793i, global0.b), _wgslsmith_sub_i32(u_input.a, u_input.c), _wgslsmith_mod_i32(-61665i, -2147483647i), abs(u_input.a)) | vec4<i32>(-2147483647i, u_input.c ^ 0i, min(global0.c.b.x, global0.d.b.x), _wgslsmith_mod_i32(2147483647i, 55786i))), global0.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c.a.x * -872f))) * _wgslsmith_f_op_f32(ceil(global0.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.d.a.x * _wgslsmith_f_op_f32(max(global0.a, global0.e.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0.a))))))));
    var var_1 = global0.c;
    return Struct_2(~_wgslsmith_mod_u32(firstTrailingBit(115391u), 1u) ^ firstLeadingBit(countOneBits(~4294967295u)), vec4<bool>(select(all(vec4<bool>(false, false, var_0.x, var_0.x)), var_0.x, (var_0.x & false) | false), var_0.x, any(vec4<bool>(true, false, -526f == var_1.a.x, var_0.x)), all(select(!vec4<bool>(false, false, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, true), true), true))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    let var_0 = global0.d;
    let var_1 = arg_1.a;
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -1050f) * var_0.a.x)), _wgslsmith_add_i32(max(select(10496i, -46501i, true), _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(2147483647i, u_input.a))) << (func_2().a % 32u), global0.c.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(global0.c.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(350f, arg_0, var_0.a.x, 798f), var_0.a))), _wgslsmith_mod_vec4_i32(global0.c.b, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -3459i, var_0.b.x, global0.d.b.x), abs(var_0.b)))), global0.d, _wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(var_0.a.x, 1094f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, 287f)) - _wgslsmith_f_op_f32(-202f - arg_0)))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-220f, 939f, arg_1.b.x))))), min(reverseBits(-6537i), u_input.a) | -2147483647i, global0.c, Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(global0.a - arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0.d.a.x, 734f)))), 1155f), abs(firstLeadingBit(_wgslsmith_add_vec4_i32(var_0.b, var_0.b)))), vec4<f32>(_wgslsmith_f_op_f32(min(-806f, _wgslsmith_f_op_f32(step(var_0.a.x, -925f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), -1987f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) - 144f), global0.c.a.x));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = func_2();
    global0 = arg_0;
    var var_1 = -772f;
    var var_2 = arg_0;
    var_1 = _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x))), var_0, var_0).e.x);
    return arg_0;
}

fn func_1() -> vec4<bool> {
    global0 = func_5(func_4(-835f, Struct_2(4294967295u, vec4<bool>(all(vec2<bool>(false, true)), false, select(false, false, true), any(vec3<bool>(false, true, false)))), func_2()), global0.d.b.x, u_input.b.x << (abs(~1u) % 32u), global0.c);
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-29133i, u_input.a, global0.b, -15026i) ^ -global0.c.b, countOneBits(vec4<i32>(0i, global0.c.b.x, -18294i, u_input.c))), 1i, firstLeadingBit(func_3())) >> (0u % 32u);
    global0 = func_5(func_4(-1175f, func_2(), func_2()), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 31099i, global0.d.b.x, u_input.b.x), vec4<i32>(var_0, 0i, 0i, global0.b)), 0i) << ((~(~4294967295u) | select(~20488u, firstTrailingBit(43697u), true)) % 32u), -global0.b, func_5(Struct_3(global0.e.x, 18384i, func_4(global0.e.x, Struct_2(38133u, vec4<bool>(true, false, false, false)), func_2()).d, global0.d, func_5(Struct_3(global0.a, global0.d.b.x, Struct_1(vec4<f32>(-1291f, global0.a, global0.e.x, -2318f), global0.c.b), global0.d, vec4<f32>(global0.a, -876f, global0.e.x, -849f)), -2147483647i & global0.c.b.x, 1i, func_5(Struct_3(-168f, u_input.a, Struct_1(global0.d.a, vec4<i32>(var_0, 1i, -212i, 1i)), Struct_1(vec4<f32>(-159f, -806f, global0.d.a.x, global0.d.a.x), vec4<i32>(-1i, -2147483647i, -2147483647i, global0.c.b.x)), vec4<f32>(global0.a, global0.a, 1126f, global0.c.a.x)), -1i, global0.d.b.x, global0.c).c).e), ~select(u_input.a, u_input.a, false) & _wgslsmith_add_i32(0i, ~u_input.b.x), -var_0, global0.d).d);
    let var_1 = true;
    global0 = func_5(func_4(_wgslsmith_f_op_f32(global0.a + func_4(1252f, Struct_2(4294967295u, vec4<bool>(var_1, true, var_1, var_1)), func_2()).c.a.x), Struct_2(1u, !(!vec4<bool>(true, var_1, false, true))), Struct_2(72323u, !func_2().b)), -2147483647i, var_0, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global0.a - 1000f), global0.e.x, -1023f, _wgslsmith_f_op_f32(global0.a + -1000f)))), _wgslsmith_mult_vec4_i32(global0.d.b, ~func_5(Struct_3(global0.d.a.x, u_input.c, Struct_1(global0.e, vec4<i32>(30220i, u_input.c, global0.d.b.x, -11036i)), global0.c, global0.d.a), u_input.a, u_input.b.x, Struct_1(global0.d.a, global0.d.b)).d.b)));
    return !vec4<bool>((any(vec4<bool>(true, var_1, true, false)) | false) | var_1, !(!(-2255i < var_0)), !any(vec3<bool>(true, true, true)), false);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    let var_0 = ~vec4<u32>(countOneBits(func_2().a | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, 4535u, 1u, 56069u), vec4<u32>(0u, 82542u, arg_0, 77164u))), _wgslsmith_div_u32(arg_0, arg_1.a), arg_2.a, ~_wgslsmith_add_u32(arg_1.a, 0u));
    global0 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(1364f - global0.d.a.x))))), arg_1, func_2());
    global0 = func_5(Struct_3(_wgslsmith_f_op_f32(step(442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)))), _wgslsmith_dot_vec3_i32(-u_input.b, vec3<i32>(firstTrailingBit(u_input.a), func_4(1386f, arg_2, arg_2).b, -u_input.c)), global0.d, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.x, global0.c.a.x, global0.e.x, -449f))), firstLeadingBit(vec4<i32>(global0.c.b.x, global0.b, 2147483647i, 4026i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.e)))))), -(~(0i ^ _wgslsmith_add_i32(u_input.a, -37415i))), 1i, Struct_1(func_4(_wgslsmith_f_op_f32(global0.a * -195f), func_2(), func_2()).e, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 25360i, global0.b, -6169i), ~vec4<i32>(global0.d.b.x, global0.d.b.x, -20904i, u_input.a)) | max(global0.d.b, _wgslsmith_mod_vec4_i32(global0.d.b, vec4<i32>(u_input.a, u_input.c, global0.c.b.x, -8133i)))));
    let var_1 = var_0;
    var var_2 = var_0.zzx;
    return i32(-1i) * -2147483647i;
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = vec4<u32>(60978u << (1u % 32u), ~(~103545u), (112777u >> (countOneBits(~10360u) % 32u)) << ((~firstTrailingBit(37797u) & reverseBits(0u)) % 32u), reverseBits(_wgslsmith_div_u32(firstLeadingBit(63378u), ~1u)));
    global0 = func_4(-1002f, func_2(), func_2());
    var var_1 = _wgslsmith_f_op_f32(min(global0.d.a.x, _wgslsmith_f_op_f32(-arg_1.c.a.x)));
    var_1 = 1036f;
    var var_2 = (global0.c.b.x ^ _wgslsmith_add_i32(func_6(~1u, func_2(), Struct_2(var_0.x, vec4<bool>(true, true, true, true)), vec2<bool>(true, true)), -6902i)) << (var_0.x % 32u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-_wgslsmith_clamp_i32(-1i, ~global0.c.b.x, _wgslsmith_dot_vec3_i32(global0.c.b.zzw, global0.d.b.xzy)), i32(-1i) * -1i, -60228i);
    let var_1 = 488f;
    let var_2 = func_7(vec4<i32>(35395i, (21380i >> (firstTrailingBit(0u) % 32u)) & _wgslsmith_sub_i32(abs(u_input.a), -u_input.b.x), u_input.b.x, func_6(~min(4294967295u, 1u), Struct_2(~4294967295u, vec4<bool>(true, true, true, true)), Struct_2(~1u, func_1()), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), func_4(_wgslsmith_f_op_f32(func_5(func_5(Struct_3(-1157f, -11536i, global0.d, global0.d, vec4<f32>(-572f, 569f, 437f, global0.e.x)), 1i, 1i, Struct_1(global0.d.a, global0.d.b)), ~(-29310i), global0.b, Struct_1(global0.c.a, vec4<i32>(11308i, u_input.c, -2147483647i, var_0.x))).a - var_1), func_2(), func_2()));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1702f, 185f)) - _wgslsmith_f_op_f32(global0.a - 251f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-252f))))))));
    var var_4 = -(select(select(firstLeadingBit(vec3<i32>(26783i, u_input.b.x, -1i)), var_0, !var_2.b.xzz), global0.c.b.xzx >> (vec3<u32>(50908u, var_2.a, var_2.a) % vec3<u32>(32u)), var_2.b.x & func_7(global0.c.b, Struct_3(1367f, 64995i, Struct_1(vec4<f32>(-1819f, 625f, var_1, -1000f), vec4<i32>(2147483647i, global0.c.b.x, global0.c.b.x, var_0.x)), Struct_1(vec4<f32>(926f, 106f, -680f, global0.a), vec4<i32>(-15672i, var_0.x, u_input.a, u_input.c)), vec4<f32>(var_3.x, -558f, global0.a, -1208f))).b.x) | var_0);
    let var_5 = -9038i;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a, var_0.x, global0.d.b, var_3.x, ~(~vec3<u32>(~0u, ~var_2.a, _wgslsmith_div_u32(0u, var_2.a))));
}

