struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(27345u, 30965u, 70856u), vec3<u32>(4294967295u, 0u, 71057u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 66602u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(16653u, 4294967295u, 1u), vec3<u32>(4294967295u, 16215u, 1u), vec3<u32>(41443u, 4095u, 1u), vec3<u32>(45259u, 1u, 0u), vec3<u32>(31153u, 1u, 19526u), vec3<u32>(1u, 0u, 0u), vec3<u32>(55170u, 16070u, 11245u), vec3<u32>(29823u, 25700u, 4294967295u));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 2908u);

var<private> global2: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_2 {
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(166f, global2.a.a.x, global2.a.a.x)))), arg_1.b), reverseBits(_wgslsmith_div_vec2_i32(u_input.a, ~arg_1.b.zw)));
    var var_0 = arg_2.yxz;
    var var_1 = Struct_2(Struct_1(arg_1.a, vec4<i32>(global2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.b, -35414i), vec4<i32>(0i, -4959i, 0i, 2147483647i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.b.x, global2.b.x), arg_1.b.yyx), countOneBits(firstLeadingBit(-2070i)))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(global2.a.b.x, arg_1.b.x), arg_1.b.wz), vec2<i32>(-61183i, 54828i)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(777f, global2.a.a.x, -210f)) + vec3<f32>(-2548f, _wgslsmith_f_op_f32(var_1.a.a.x + global2.a.a.x), -861f)), _wgslsmith_add_vec4_i32(arg_1.b, vec4<i32>(1i, firstLeadingBit(var_1.a.b.x), min(arg_1.b.x, 13104i), firstTrailingBit(0i)))), vec2<i32>(var_1.b.x, 1i));
    let var_3 = vec4<bool>(true, true, false, var_0.x);
    return Struct_2(Struct_1(var_2.a.a, vec4<i32>(-global2.a.b.x, var_2.a.b.x, -1i, 0i & u_input.a.x)), reverseBits(-arg_1.b.xw & countOneBits(vec2<i32>(global2.b.x, arg_1.b.x))) << (~u_input.c.zx % vec2<u32>(32u)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_mod_vec3_u32(select(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], vec3<u32>(_wgslsmith_add_u32(abs(global1.x), ~u_input.c.x), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 55072u, u_input.c.x, u_input.c.x), vec4<u32>(global1.x, u_input.c.x, 71686u, 11424u))), !select(false, false, true)), vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(36248u, global1.x, 36456u, u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(44806u, 39357u, 8631u, global1.x), vec4<u32>(u_input.c.x, 61677u, global1.x, global1.x))), global1.x, _wgslsmith_mult_u32(~global1.x, select(4294967295u, ~4294967295u, true))));
    let var_1 = firstTrailingBit(_wgslsmith_clamp_i32(~(2147483647i & _wgslsmith_div_i32(1i, global2.b.x)), -(_wgslsmith_clamp_i32(22319i, u_input.b, 21119i) >> ((global1.x | 1u) % 32u)), -reverseBits(~24055i)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.a.a))), select(-global2.a.b, select(global2.a.b & ~global2.a.b, -_wgslsmith_add_vec4_i32(global2.a.b, global2.a.b), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), !any(vec4<bool>(true, true, true, true))));
    let var_3 = func_2(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(var_2.b.x <= global2.a.b.x, true, true, var_2.a.x <= 1001f)), true), func_2(vec4<bool>(true, true, true, true), var_2, vec4<bool>(true, true, true, true), ~select(~var_0.xz, var_0.yz, select(vec2<bool>(true, true), vec2<bool>(true, false), false))).a, select(vec4<bool>(true, select(true, true, u_input.a.x == 0i), false, all(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), all(vec3<bool>(false, false, true))), vec4<bool>(any(vec3<bool>(false, true, true)), true, select(false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false)), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), vec4<bool>(true, true, true, true))), vec2<u32>(75406u, 71450u));
    var var_4 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_2(vec4<bool>(false, false, true, false), var_2, vec4<bool>(false, false, false, false), vec2<u32>(var_0.x, 0u)).a.a.x)) * _wgslsmith_div_f32(var_2.a.x, _wgslsmith_div_f32(-137f, var_2.a.x))), -242f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), Struct_1(vec3<f32>(var_3.a.a.x, global2.a.a.x, global2.a.a.x), var_2.b), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), var_0.xz ^ vec2<u32>(15171u, u_input.c.x)).a.a.x) - 873f) <= -285f;
}

fn func_1() -> vec2<bool> {
    let var_0 = global2.b;
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(global2.a.b.x, 0i), ~vec2<i32>(-2147483647i, -global2.b.x)), _wgslsmith_div_vec2_i32(~global2.a.b.xx << (_wgslsmith_sub_vec2_u32(reverseBits(u_input.c.yx), vec2<u32>(60070u, 4294967295u) << (u_input.c.xz % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a << (u_input.c.yz % vec2<u32>(32u))), countOneBits(vec2<i32>(-_wgslsmith_mod_i32(50802i, global2.a.b.x), -u_input.b & ~(-21534i))));
    global2 = func_2(vec4<bool>(true, any(vec3<bool>(true, true, false)), true, true), Struct_1(vec3<f32>(global2.a.a.x, -506f, _wgslsmith_f_op_f32(f32(-1f) * -248f)), vec4<i32>(-(u_input.a.x >> (1u % 32u)), _wgslsmith_mod_i32(-31530i, -35955i), abs(~16129i), var_1.x)), vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)) < -2306f, !any(vec4<bool>(true, false, true, false)) | true, true), ~u_input.c.xz);
    var var_2 = global2.a;
    global2 = Struct_2(func_2(vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !func_3(), true, false), Struct_1(global2.a.a, _wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.b.x, global2.a.b.x, var_0.x, global2.a.b.x), min(var_2.b, global2.a.b))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), vec2<u32>(59215u, u_input.c.x)).a, vec2<i32>(-710i, firstLeadingBit(~2147483647i)) | countOneBits(_wgslsmith_clamp_vec2_i32(u_input.a, firstLeadingBit(vec2<i32>(var_0.x, -1i)), vec2<i32>(var_1.x, -2147483647i) ^ vec2<i32>(-1i, var_2.b.x))));
    return vec2<bool>(any(vec3<bool>(true, true, true)), func_3());
}

fn func_4(arg_0: bool) -> Struct_1 {
    global0 = array<vec3<u32>, 14>();
    global0 = array<vec3<u32>, 14>();
    let var_0 = func_2(vec4<bool>(!arg_0, arg_0, !arg_0, func_1().x), func_2(vec4<bool>(!(arg_0 & arg_0), arg_0, arg_0, any(vec4<bool>(arg_0, true, arg_0, arg_0))), func_2(!select(vec4<bool>(false, false, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, false, false)), Struct_1(global2.a.a, abs(global2.a.b)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, true, false, arg_0)), !vec4<bool>(arg_0, arg_0, true, false)), ~(~u_input.c.yz)).a, !vec4<bool>(false, func_1().x, arg_0, true), (countOneBits(vec2<u32>(u_input.c.x, global1.x)) | u_input.c.xx) >> (select(vec2<u32>(u_input.c.x, global1.x), firstLeadingBit(u_input.c.zz), true) % vec2<u32>(32u))).a, select(!vec4<bool>(true, true, func_3(), arg_0), !vec4<bool>(false | arg_0, !arg_0, global1.x > u_input.c.x, all(vec4<bool>(arg_0, false, arg_0, arg_0))), select(vec4<bool>(true, func_1().x, false, true), vec4<bool>(-2147483647i == u_input.b, true, func_1().x, true), global1.x != firstLeadingBit(4294967295u))), u_input.c.yx).a;
    global0 = array<vec3<u32>, 14>();
    let var_1 = false;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1847f - global2.a.a.x) + var_0.a.x), global2.a.a.x), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(Struct_1(global2.a.a, global2.a.b), _wgslsmith_div_vec2_i32(~select(-global2.b, u_input.a, -125f < global2.a.a.x), vec2<i32>(reverseBits(-20534i >> (global1.x % 32u)), ~1i)));
    global0 = array<vec3<u32>, 14>();
    var var_0 = Struct_2(func_4(any(func_1())), _wgslsmith_mod_vec2_i32(-select(vec2<i32>(1i, global2.a.b.x), vec2<i32>(global2.a.b.x, 22000i), true), func_2(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), func_3()), func_4(-10918i != global2.a.b.x), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), _wgslsmith_add_vec2_u32(vec2<u32>(41061u, 1u), u_input.c.xy)).a.b.yx));
    let var_1 = ~(~u_input.c.x);
    global2 = func_2(!select(vec4<bool>(func_3(), all(vec4<bool>(false, true, false, true)), true, any(vec2<bool>(true, false))), vec4<bool>(false, true, any(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, false)), var_0.a, select(vec4<bool>(true, !func_1().x, firstTrailingBit(0u) != 121551u, !(0u != u_input.c.x)), !vec4<bool>(global1.x < 0u, true, func_1().x, true), func_3()), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(global1.x, ~1u, var_1, min(u_input.c.x, 36272u))), reverseBits(firstTrailingBit(0u))));
    var var_2 = func_2(!select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a.a.x, var_0.a.a.x, true)), global2.a.a.x, -299f), var_0.a.b), vec4<bool>(select(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true)), true), any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true))), any(select(func_1(), func_1(), true)), true), firstLeadingBit(~firstTrailingBit(vec2<u32>(0u, global1.x))));
    var var_3 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(1978f);
}

