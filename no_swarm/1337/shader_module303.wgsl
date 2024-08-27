struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), true), Struct_2(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true)), true), Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), false), Struct_2(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true)), true), Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), false), Struct_2(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), false), Struct_2(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), false), Struct_2(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), true), Struct_2(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), false), Struct_2(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), false), Struct_2(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(917f))))))));
    global1 = arg_1.x;
    global2 = array<Struct_2, 11>();
    global2 = array<Struct_2, 11>();
    global1 = arg_1.x;
    return all(!arg_2.d.a.zx);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = arg_1.x;
    var var_1 = countOneBits(arg_0.x) ^ 2147483647i;
    global0 = Struct_3(global0.d.a.x, true, !global0.c, Struct_1(!select(!global0.c.wyw, vec3<bool>(false, true, false), !global0.d.a)));
    var var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(max(_wgslsmith_mod_u32(u_input.b, 4294967295u), u_input.b), ~countOneBits(u_input.b), u_input.b, ~1u), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(38737u, u_input.b, 26405u, 4294967295u)), vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b, 57356u), u_input.b, u_input.b)));
    global1 = -1830f;
    return Struct_2(Struct_1(vec3<bool>(any(global0.c), global0.d.a.x, false)), Struct_1(vec3<bool>(_wgslsmith_f_op_f32(max(var_0, var_0)) != _wgslsmith_f_op_f32(arg_1.x * arg_1.x), func_3(arg_1.x, vec4<f32>(var_0, 559f, var_0, arg_1.x), Struct_3(global0.c.x, global0.b, global0.c, global0.d)), false)), all(global0.d.a));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = u_input.b;
    var var_1 = vec4<i32>(0i, u_input.d, u_input.d, u_input.c.x);
    var var_2 = func_2(u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(114f - 528f), 1068f, _wgslsmith_div_f32(313f, 130f), _wgslsmith_f_op_f32(f32(-1f) * -416f)), vec4<f32>(_wgslsmith_f_op_f32(floor(-420f)), _wgslsmith_f_op_f32(664f - -468f), -2125f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-472f, -550f, 562f, 1000f))))))))).b;
    global0 = Struct_3(true, all(global0.c), global0.c, func_2(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(var_1.yy, select(vec2<i32>(u_input.d, u_input.e), vec2<i32>(var_1.x, -2147483647i), arg_0.b.a.x)), -u_input.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(283f, 1806f, 576f, -325f)))))).a);
    let var_3 = Struct_3(false, any(select(global0.c, select(global0.c, select(vec4<bool>(false, global0.c.x, arg_0.c, false), global0.c, false), true), func_2(select(vec2<i32>(-2147483647i, u_input.c.x), var_1.zz, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-499f, -792f, -1157f, 124f))).c)), vec4<bool>(select(true, true, global0.d.a.x), !(!any(vec2<bool>(true, false))), true, any(vec2<bool>(true, func_3(-1331f, vec4<f32>(1780f, 407f, -1585f, 1609f), Struct_3(true, false, global0.c, arg_0.a))))), func_2(abs(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -9089i), vec2<i32>(u_input.d, -1i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-942f, 761f, -484f, 1214f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-585f, 522f, 3505f, -1000f) * vec4<f32>(149f, 229f, 744f, -1000f)), vec4<f32>(-148f, -628f, 1000f, -1160f)))).b);
    return Struct_3(global0.b & any(arg_0.a.a), true != any(global0.c), select(!vec4<bool>(arg_0.c, global0.a, true, u_input.b > 84270u), !(!select(vec4<bool>(false, false, true, true), global0.c, var_3.a)), global0.c), Struct_1(!select(func_2(u_input.a, vec4<f32>(-1000f, 570f, -582f, 1012f)).a.a, !var_2.a, true)));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    let var_0 = func_4(func_2(abs(u_input.a) << (~(~vec2<u32>(u_input.b, 15270u)) % vec2<u32>(32u)), vec4<f32>(-642f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f + -1899f)), 531f, 1f)));
    var var_1 = global0.a;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f));
    global0 = Struct_3(global0.c.x && (0i >= u_input.c.x), all(!vec3<bool>(false, global0.a, true)), select(func_4(Struct_2(Struct_1(vec3<bool>(false, false, var_0.a)), Struct_1(var_0.d.a), !global0.d.a.x)).c, var_0.c, !all(global0.c.zw) | all(global0.c.wz)), Struct_1(select(vec3<bool>(any(global0.c.zxx), any(vec2<bool>(true, global0.a)), func_3(387f, vec4<f32>(259f, -198f, 1000f, 752f), Struct_3(false, false, vec4<bool>(true, global0.d.a.x, true, global0.d.a.x), global0.d))), !vec3<bool>(global0.d.a.x, global0.b, var_0.a), false)));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f * -845f)), 848f)), _wgslsmith_f_op_f32(max(841f, -282f)), true));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-827f - 1074f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-993f - _wgslsmith_div_f32(875f, -503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1195f - -474f)))), -540f, 1f, _wgslsmith_f_op_f32(-245f + _wgslsmith_f_op_f32(666f * 241f)));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-42991i, arg_0, -5239i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-3237i, -1i, 5437i), vec3<i32>(-1i, 2147483647i, 2979i), vec3<i32>(-62578i, 106648i, -5733i))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(33254i, 2147483647i, 19344i), vec3<i32>(39978i, 5967i, -1i)), firstLeadingBit(vec3<i32>(1i, 24871i, arg_0)), select(vec3<i32>(-12812i, 0i, 6232i), vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), false))), ~_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, arg_0, u_input.e) << (vec3<u32>(66531u, 39710u, 1u) % vec3<u32>(32u)), vec3<i32>(arg_0, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), ~(-20611i))));
    var_0 = _wgslsmith_add_vec3_i32(-((~vec3<i32>(-1i, var_0.x, 2147483647i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 8860u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)) % vec3<u32>(32u))) << (firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(76474u, u_input.b, 0u), vec3<u32>(9798u, u_input.b, 4294967295u))) % vec3<u32>(32u))), firstTrailingBit(-((vec3<i32>(var_0.x, -41960i, arg_0) >> (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, 8679u, u_input.b)) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(~(~u_input.b))).x * _wgslsmith_f_op_f32(-arg_1.x)));
    let var_2 = global0.d;
    return ~(u_input.b >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(reverseBits(min(vec3<u32>(1u, 4294967295u, 7618u), vec3<u32>(8268u, 1u, 1u))), ~(~vec3<u32>(0u, 0u, 0u) ^ vec3<u32>(40926u, u_input.b, 1u))), vec4<u32>(u_input.b, abs(~48155u), func_5(-39944i, _wgslsmith_f_op_vec4_f32(func_1(87990u)), func_4(global2[_wgslsmith_index_u32(u_input.b, 11u)])), u_input.b) << (abs(max(vec4<u32>(1u, 0u, u_input.b, 51937u), vec4<u32>(u_input.b, 44251u, 4294967295u, u_input.b)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-381f)), _wgslsmith_f_op_f32(-468f + -888f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1445f - -759f) - _wgslsmith_f_op_f32(271f * -1036f)), -1427f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1388f))), -891f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 376f)))), vec2<f32>(-843f, _wgslsmith_f_op_f32(f32(-1f) * -775f)), global0.d.a.x)))));
}

