struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(1i, 73i), vec2<i32>(-18267i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(1i, 49690i), vec2<i32>(15780i, -1i), vec2<i32>(22707i, 1i), vec2<i32>(0i, -15557i), vec2<i32>(-32899i, 0i), vec2<i32>(1i, 3800i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-12791i, 23842i), vec2<i32>(6959i, -8938i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 48628i), vec2<i32>(14177i, 30617i), vec2<i32>(i32(-2147483648), 61448i), vec2<i32>(-73755i, 13318i), vec2<i32>(1i, -44438i), vec2<i32>(0i, 4825i), vec2<i32>(2147483647i, 0i), vec2<i32>(-31940i, -1i), vec2<i32>(-22656i, -11769i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(32363i, -76604i), vec2<i32>(-8715i, 9480i));

var<private> global1: vec3<u32>;

var<private> global2: vec3<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-724f, 336f, false)), 2110f, _wgslsmith_div_f32(2146f, 1000f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, -519f, 807f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, -333f, 260f) - vec3<f32>(120f, -1037f, 599f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2022f, -1343f, 366f))))));
    global0 = array<vec2<i32>, 25>();
    global2 = _wgslsmith_sub_vec3_u32(select(~(~vec3<u32>(121652u, 14583u, global1.x)), abs(firstTrailingBit(vec3<u32>(50366u, 1u, global1.x))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)) << (vec3<u32>(abs(global2.x), ~64552u, 1u) % vec3<u32>(32u)), select(abs(reverseBits(vec3<u32>(global2.x, 4294967295u, global1.x)) | vec3<u32>(global2.x, 1u, 4294967295u)), select(vec3<u32>(global2.x, global2.x << (10302u % 32u), global2.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 19683u), vec3<u32>(global1.x, 0u, 10261u)), _wgslsmith_add_u32(global2.x, 0u), ~1u), false), vec3<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)))));
    global1 = vec3<u32>(countOneBits(_wgslsmith_div_u32(~global1.x, global1.x)), 47937u, firstTrailingBit(0u));
    var var_1 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), false, !(!all(vec4<bool>(false, false, true, true))));
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(reverseBits((vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(0i, u_input.a.x, -1i, u_input.a.x)) & -vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.x, 4294967295u, 1u) & vec4<u32>(global1.x, global2.x, global2.x, 53500u), vec4<u32>(global2.x, 22138u, 1u, 4294967295u))), vec3<bool>(func_3(), all(vec3<bool>(false, true, true)), true), vec3<bool>(true, !func_3(), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_1 = var_0.a;
    let var_2 = Struct_3(Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(~var_0.a.a.x, u_input.a.x, 15911i, 0i), ~(-var_0.a.a)), vec4<u32>(_wgslsmith_sub_u32(var_1.b.x, 64416u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.x, 1u), 93526u, global1.x), _wgslsmith_sub_u32(0u, global1.x) | ~0u, global2.x)), !var_0.c, vec3<bool>(var_0.c.x & false, select(var_0.b.x, false, !var_0.c.x | (var_0.c.x && var_0.b.x)), 0i >= var_1.a.x));
    let var_3 = select(vec4<bool>(false, any(vec3<bool>(var_2.c.x | var_0.b.x, true, func_3())), func_3(), !(!var_2.c.x)), select(!select(vec4<bool>(var_0.c.x, var_2.b.x, false, false), select(vec4<bool>(var_0.c.x, var_2.b.x, false, var_2.b.x), vec4<bool>(false, var_2.b.x, var_0.b.x, false), var_0.c.x), all(var_2.b)), select(vec4<bool>(var_1.a.x >= var_0.a.a.x, !var_0.c.x, true, var_0.c.x), !(!vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.a.x, 23241i), vec2<i32>(var_1.a.x, var_2.a.a.x)) != -var_2.a.a.x), var_0.b.x), any(vec2<bool>(var_2.c.x, func_3())));
    var var_4 = !vec2<bool>(any(var_0.b), !(!any(vec4<bool>(false, var_0.c.x, false, false))));
    return var_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_3 {
    global1 = _wgslsmith_clamp_vec3_u32(arg_2.a.b.wyw, _wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_0.x, 4294967295u), arg_2.a.b.wyx) & vec3<u32>(global2.x, ~arg_1, 0u), arg_2.a.b.zwz, ~vec3<u32>(3565u, 1u, ~global1.x)), max(min(vec3<u32>(25350u, 0u, arg_3.x), vec3<u32>(arg_0.x, arg_2.a.b.x, 31657u)), firstTrailingBit(countOneBits(vec3<u32>(arg_3.x, 79149u, 29189u)))) ^ arg_2.a.b.xyw);
    global1 = func_2().b.ywy;
    global2 = vec3<u32>(52692u | reverseBits(func_2().b.x), 1u, 1u);
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(442f, 1867f), _wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(521f, 1073f))))))));
    let var_1 = !vec3<bool>(any(vec3<bool>(true, arg_2.b.x, -1i >= u_input.a.x)), global1.x < ~32173u, arg_2.c.x);
    return Struct_3(arg_2.a, select(arg_2.c, vec3<bool>(arg_2.b.x, var_1.x | var_1.x, arg_2.a.a.x > 1i), var_1.x), select(arg_2.b, arg_2.b, select(vec3<bool>(true, true || arg_2.c.x, arg_2.a.a.x != 1i), !(!vec3<bool>(false, arg_2.b.x, var_1.x)), !vec3<bool>(var_1.x, true, var_1.x))));
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_4(func_4(global2.yy, 4294967295u, Struct_3(func_2(), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), true)), _wgslsmith_mult_vec2_u32(abs(global1.xy ^ global2.yz), ~vec2<u32>(1216u, 8531u) >> (vec2<u32>(global2.x, 4294967295u) % vec2<u32>(32u)))), global1.zy, 1863f);
    var_0 = Struct_4(Struct_3(Struct_2(func_2().a, vec4<u32>(~global2.x, 56396u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(32526u, global2.x)))), select(func_4(firstTrailingBit(global1.zz), ~var_0.b.x, var_0.a, ~global1.zy).b, !vec3<bool>(false, false, var_0.a.b.x), !var_0.a.c.x | all(vec2<bool>(false, var_0.a.b.x))), !vec3<bool>(true, var_0.a.a.a.x == 2147483647i, var_0.a.c.x || false)), func_2().b.yw, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-587f)))));
    let var_1 = Struct_4(var_0.a, var_0.b, _wgslsmith_f_op_f32(sign(var_0.c)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-705f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-874f - 912f), 349f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - -1271f))))) <= 173f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-155f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-454f, _wgslsmith_f_op_f32(-var_0.c), true))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1616f), 245f, _wgslsmith_div_f32(-1263f, 1000f), var_1.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), -181f, var_1.c, _wgslsmith_f_op_f32(floor(454f))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-514f, -841f, 1212f, var_0.c)))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(arg_0, !vec3<bool>(u_input.a.x >= arg_1, 29399u < global1.x, true), vec3<bool>(func_3() | true, select(true, true, true), func_3())), _wgslsmith_add_vec2_u32(abs(select(arg_0.b.yw, global2.yx, vec2<bool>(true, true))) & vec2<u32>(~0u, global2.x), countOneBits(~global2.zz)), _wgslsmith_f_op_f32(573f - _wgslsmith_f_op_vec4_f32(func_1()).x));
    global2 = vec3<u32>(var_0.a.a.b.x, ~0u, _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(reverseBits(1u), arg_0.b.x))) ^ _wgslsmith_div_vec3_u32(max(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_0.b.x, global1.x, 4294967295u)), arg_0.b.yxw), arg_0.b.ywz), vec3<u32>(var_0.a.a.b.x, abs(_wgslsmith_dot_vec3_u32(arg_0.b.yzz, var_0.a.a.b.yyx)), arg_0.b.x));
    var var_1 = countOneBits(arg_0.a.x) | u_input.a.x;
    var var_2 = -reverseBits(abs(func_2().a.zz));
    let var_3 = vec4<bool>(any(!func_4(~arg_0.b.xz, global2.x, func_4(var_0.b, 122204u, var_0.a, vec2<u32>(var_0.b.x, var_0.a.a.b.x)), vec2<u32>(0u, global1.x)).c.zx), any(select(select(func_4(vec2<u32>(global2.x, global2.x), 1u, Struct_3(Struct_2(vec4<i32>(1i, u_input.a.x, 1i, u_input.a.x), var_0.a.a.b), var_0.a.c, var_0.a.c), vec2<u32>(4294967295u, 76165u)).c, !var_0.a.b, !vec3<bool>(true, var_0.a.b.x, true)), vec3<bool>(var_0.a.b.x, true, true), false)), false, false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, -983i, u_input.a.x), _wgslsmith_div_i32(0i, u_input.a.x), 0i, -23910i)), ~abs(vec4<u32>(27972u, 0u, 42363u, global1.x))), abs(~(-37408i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(717f, -1000f, -1335f, -1148f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, 317f, -1571f, -318f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))));
    var var_1 = -select(firstTrailingBit(func_2().a) << (~vec4<u32>(var_0.b.x, 0u, global2.x, 20003u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(-1i), func_2().a.x, ~var_0.a.x, u_input.a.x), var_0.a), !all(vec2<bool>(true, true)));
    let var_2 = Struct_4(Struct_3(func_2(), select(vec3<bool>(u_input.a.x != var_0.a.x, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec2<bool>(true, false))), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), func_4(global2.zy, 23858u, Struct_3(Struct_2(vec4<i32>(20836i, -17244i, u_input.a.x, -791i), vec4<u32>(global1.x, global2.x, 0u, 4294967295u)), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), global1.xx).c)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), _wgslsmith_mult_vec2_u32(var_0.b.yx, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, func_4(vec2<u32>(4294967295u, 28994u), global2.x, Struct_3(Struct_2(vec4<i32>(-9236i, var_1.x, 1i, var_1.x), var_0.b), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), var_0.b.yx).a.b.x), var_0.b.ww)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(411f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(437f, 1709f, false)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-148f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(764f + 917f) + _wgslsmith_f_op_f32(f32(-1f) * -1241f)))));
    global1 = vec3<u32>(4294967295u, countOneBits(func_2().b.x << ((63968u & global2.x) % 32u)), ~_wgslsmith_div_u32(49890u, 66828u)) & func_2().b.xzz;
    var var_3 = -var_1.x <= 1i;
    let var_4 = var_2;
    var var_5 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.c + _wgslsmith_f_op_f32(-var_4.c)), var_2.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-689f, -717f)))), -1189i, -53726i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2961f, var_2.c)) + vec2<f32>(var_4.c, var_2.c))))));
}

