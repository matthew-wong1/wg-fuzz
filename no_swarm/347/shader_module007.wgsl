struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec4<f32>(1622f, 687f, 1000f, 1064f)), Struct_3(vec4<f32>(399f, -153f, -938f, -627f)), Struct_3(vec4<f32>(-1813f, -1000f, -859f, 441f)), Struct_3(vec4<f32>(2074f, -592f, -1236f, 2518f)), Struct_3(vec4<f32>(-529f, -434f, 1384f, 1000f)), Struct_3(vec4<f32>(1456f, 1388f, -1208f, 325f)), Struct_3(vec4<f32>(-167f, -519f, -847f, 625f)), Struct_3(vec4<f32>(-1000f, 530f, 471f, 910f)), Struct_3(vec4<f32>(-1357f, -699f, -816f, -456f)), Struct_3(vec4<f32>(1536f, 503f, -227f, 921f)), Struct_3(vec4<f32>(-1017f, -1022f, -1718f, 568f)), Struct_3(vec4<f32>(-394f, -485f, 732f, -1860f)), Struct_3(vec4<f32>(-1082f, 562f, -1765f, 119f)), Struct_3(vec4<f32>(-419f, -942f, -991f, 514f)), Struct_3(vec4<f32>(443f, -2151f, -1626f, 107f)), Struct_3(vec4<f32>(-402f, -695f, 919f, 279f)), Struct_3(vec4<f32>(-1038f, -293f, 362f, 741f)), Struct_3(vec4<f32>(1277f, 153f, -168f, -2905f)), Struct_3(vec4<f32>(-1562f, -1780f, 1005f, 1625f)), Struct_3(vec4<f32>(373f, -289f, 546f, 115f)), Struct_3(vec4<f32>(-185f, 1264f, 1000f, 1086f)), Struct_3(vec4<f32>(285f, 1586f, 606f, 484f)), Struct_3(vec4<f32>(-1209f, 579f, 1000f, 458f)), Struct_3(vec4<f32>(510f, -650f, -1000f, -1138f)), Struct_3(vec4<f32>(-465f, 1487f, 2358f, 1000f)), Struct_3(vec4<f32>(522f, 294f, -144f, 486f)), Struct_3(vec4<f32>(1325f, -1244f, -371f, -776f)), Struct_3(vec4<f32>(-662f, -1835f, 228f, 146f)));

var<private> global1: Struct_2;

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-828f, 718f, -426f, 1000f));

var<private> global3: f32 = -513f;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = any(vec3<bool>(!(!global1.a.e.x), !(!all(vec2<bool>(true, false))), global1.a.e.x));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(528f)), _wgslsmith_sub_i32(abs(~u_input.c), -5764i), _wgslsmith_sub_u32(~u_input.a.x, ~global1.a.c), global1.a.d, !vec2<bool>(var_0, !global1.a.e.x)));
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    global4 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(max(u_input.e << (u_input.a.zw % vec2<u32>(32u)), abs(u_input.e)), abs(var_1.a.d.zy) << (~u_input.a.zz % vec2<u32>(32u))), ~global1.a.b);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2430f + global2.a.x), 297f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * global1.a.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(802f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-global2.a.x)));
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.e.x, var_1.a.b)) >> (vec2<u32>(89677u, u_input.d) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(countOneBits(var_1.a.d.xy), var_1.a.d.zx)), -_wgslsmith_clamp_vec2_i32(firstLeadingBit(global1.a.d.zx), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, -23420i), u_input.e), min(u_input.e, vec2<i32>(2147483647i, u_input.c)))), ~global1.a.d.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> bool {
    var var_0 = ~(~global1.a.c);
    global0 = array<Struct_3, 28>();
    global0 = array<Struct_3, 28>();
    var_0 = _wgslsmith_mod_u32(u_input.d, 0u);
    global1 = Struct_2(Struct_1(_wgslsmith_div_f32(836f, global2.a.x), arg_1.b, select(arg_1.c, global1.a.c, true), ~vec3<i32>(select(-1i, -15229i, arg_0.x), -1i, arg_2.x | 2147483647i), global1.a.e));
    return global1.a.e.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> vec4<bool> {
    let var_0 = 48277i;
    var var_1 = select(arg_0.e, vec2<bool>(select(arg_0.e.x, arg_0.c <= u_input.a.x, false || global1.a.e.x) | !all(global1.a.e), global1.a.e.x), global1.a.e);
    let var_2 = vec2<bool>(arg_0.b < (i32(-1i) * -reverseBits(global1.a.b)), arg_0.e.x);
    let var_3 = !(!all(var_2));
    global1 = Struct_2(arg_0);
    return select(select(vec4<bool>(false, _wgslsmith_f_op_f32(select(global1.a.a, -666f, false)) >= 1f, false == any(vec3<bool>(true, var_3, true)), true), select(vec4<bool>(var_3 || true, !var_2.x, !var_3, all(vec4<bool>(var_2.x, true, var_2.x, true))), !(!vec4<bool>(arg_1, global1.a.e.x, arg_2, true)), arg_1), var_3), vec4<bool>(var_1.x, !((56174u >> (arg_0.c % 32u)) >= (67248u >> (1u % 32u))), firstTrailingBit(~var_0) >= 2147483647i, arg_2), func_4(global1.a.e, Struct_1(global1.a.a, func_3(global2.a), 98597u, -countOneBits(global1.a.d), select(select(vec2<bool>(var_1.x, var_1.x), global1.a.e, true), vec2<bool>(var_1.x, arg_0.e.x), all(vec3<bool>(false, var_1.x, false)))), global1.a.d.yx, any(select(vec2<bool>(arg_1, false), vec2<bool>(false, true), !arg_0.e))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = arg_2.x;
    var_0 = !arg_0 | all(!func_2(Struct_1(arg_1.a.x, u_input.c, u_input.d, global1.a.d, vec2<bool>(arg_0, false)), !global1.a.e.x, var_1 >= 42965u));
    let var_2 = Struct_5(Struct_4(any(select(func_2(global1.a, true, true).yx, global1.a.e, !arg_0)), arg_3), vec4<i32>(-2147483647i, global1.a.d.x, abs(_wgslsmith_clamp_i32(~global1.a.d.x, global1.a.d.x, 49452i)), abs(u_input.c)), Struct_2(global1.a));
    return vec3<bool>(any(vec2<bool>(true, true)), all(func_2(global1.a, true, true)), !(!var_2.a.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(global1.a);
    var var_1 = ~(~vec4<u32>(var_0.a.c, 1u ^ global1.a.c, _wgslsmith_mod_u32(~1u, 64326u), var_0.a.c));
    var var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(u_input.a.xxy, ~vec3<u32>(6105u, 4294967295u, u_input.a.x), vec3<u32>(global1.a.c, var_0.a.c, 1u)), ~vec3<u32>(1u, 4294967295u, 71425u), any(vec4<bool>(true, true, arg_0.x, arg_0.x)) && any(vec4<bool>(false, arg_0.x, var_0.a.e.x, arg_0.x))), abs(~var_1.wwx >> (var_1.zyy % vec3<u32>(32u)))), max(var_1.wzy, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wyw, vec3<u32>(u_input.a.x, var_0.a.c, 4294967295u)) << (1u % 32u), u_input.a.x, var_0.a.c)));
    let var_3 = arg_0.x;
    var var_4 = _wgslsmith_mult_vec3_i32(arg_1, arg_1);
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(4294967295u, ~27979u ^ _wgslsmith_mult_u32(1u, ~(~global1.a.c)));
    let var_1 = global1.a.a;
    var var_2 = 7293i;
    let var_3 = func_5(select(!(!func_1(global1.a.e.x, global0[_wgslsmith_index_u32(global1.a.c, 28u)], var_0, Struct_3(global2.a))), func_1(global1.a.e.x, Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -933f, global1.a.a, global2.a.x), vec4<f32>(global1.a.a, -1311f, global2.a.x, -1048f)))), ~(var_0 >> (var_0 % vec2<u32>(32u))), Struct_3(vec4<f32>(global2.a.x, -413f, global2.a.x, global2.a.x))), global1.a.e.x), vec3<i32>(i32(-1i) * -global1.a.b, u_input.c ^ ~u_input.c, _wgslsmith_dot_vec2_i32(u_input.e, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.d.x, global1.a.b), vec2<i32>(-2147483647i, -24377i)), firstLeadingBit(u_input.e)))));
    var_2 = 9184i;
    var var_4 = vec2<bool>(all(select(func_2(Struct_1(global2.a.x, global1.a.b, global1.a.c, vec3<i32>(27325i, global1.a.d.x, 2147483647i), var_3.a.e), global1.a.e.x || var_3.a.e.x, !global1.a.e.x), select(select(vec4<bool>(true, false, false, false), vec4<bool>(global1.a.e.x, var_3.a.e.x, global1.a.e.x, global1.a.e.x), global1.a.e.x), select(vec4<bool>(global1.a.e.x, global1.a.e.x, false, false), vec4<bool>(global1.a.e.x, var_3.a.e.x, var_3.a.e.x, var_3.a.e.x), false), vec4<bool>(true, false, var_3.a.e.x, global1.a.e.x)), false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~func_5(!vec3<bool>(false, var_3.a.e.x, var_3.a.e.x), -var_3.a.d).a.b, u_input.e.x, ~(-(~u_input.e.x)), (1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(23818u, global1.a.c, var_3.a.c, 18430u), vec4<u32>(global1.a.c, var_0.x, global1.a.c, 2131u)) % 32u)) ^ _wgslsmith_mult_i32(31858i, max(global1.a.b, u_input.c))), abs(u_input.a));
}

