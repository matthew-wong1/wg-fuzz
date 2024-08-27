struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_1(true), 18344i), Struct_4(Struct_1(false), 0i), Struct_4(Struct_1(false), 7262i), Struct_4(Struct_1(false), 2784i), Struct_4(Struct_1(false), -7651i), Struct_4(Struct_1(false), 55025i), Struct_4(Struct_1(false), 2147483647i), Struct_4(Struct_1(true), 1i), Struct_4(Struct_1(true), -1i), Struct_4(Struct_1(false), 21694i), Struct_4(Struct_1(true), -5911i), Struct_4(Struct_1(true), i32(-2147483648)), Struct_4(Struct_1(true), -11978i), Struct_4(Struct_1(false), -26157i), Struct_4(Struct_1(true), 2147483647i), Struct_4(Struct_1(true), -16220i), Struct_4(Struct_1(true), 26846i), Struct_4(Struct_1(false), -48595i), Struct_4(Struct_1(true), 1i), Struct_4(Struct_1(true), -5146i), Struct_4(Struct_1(true), i32(-2147483648)), Struct_4(Struct_1(true), i32(-2147483648)), Struct_4(Struct_1(false), 37449i), Struct_4(Struct_1(true), 1i), Struct_4(Struct_1(true), 0i), Struct_4(Struct_1(true), 33145i), Struct_4(Struct_1(false), -12728i), Struct_4(Struct_1(true), -1i), Struct_4(Struct_1(false), -1i), Struct_4(Struct_1(false), 49976i), Struct_4(Struct_1(false), 1i));

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(197f, -158f, 307f, -758f), vec4<f32>(1000f, -1000f, 1370f, 256f), vec4<f32>(-1433f, 1000f, -1343f, 550f), vec4<f32>(-197f, 1457f, -598f, -611f), vec4<f32>(-428f, 1000f, 803f, 807f), vec4<f32>(-884f, 125f, 275f, 592f), vec4<f32>(887f, -441f, -1000f, -893f), vec4<f32>(690f, 916f, -103f, -930f));

var<private> global2: vec3<u32> = vec3<u32>(1u, 4294967295u, 6064u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec2<bool> {
    global1 = array<vec4<f32>, 8>();
    global1 = array<vec4<f32>, 8>();
    let var_0 = u_input.a;
    global2 = vec3<u32>(0u, ~(~abs(max(29324u, 40557u))), global2.x);
    global0 = array<Struct_4, 31>();
    return !vec2<bool>(any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)));
}

fn func_3() -> bool {
    var var_0 = select(!select(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), false), vec2<bool>(true, true), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, true, true), true)));
    var var_1 = global2.x;
    let var_2 = _wgslsmith_mult_i32(27749i << (firstTrailingBit(global2.x) % 32u), u_input.a.x);
    global2 = vec3<u32>(1u, _wgslsmith_dot_vec2_u32(~(global2.yx >> (global2.zx % vec2<u32>(32u))), countOneBits(vec2<u32>(global2.x, 0u) << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)))) & ~countOneBits(global2.x), max(~10098u, ~1u));
    let var_3 = !vec2<bool>(var_0.x, var_0.x);
    return var_3.x;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_5 {
    var var_0 = select(arg_1.a.x, !all(arg_1.a), ~reverseBits(~21694u) > firstTrailingBit(~(~global2.x)));
    let var_1 = select(!arg_2.x, true, all(vec4<bool>(true, _wgslsmith_div_u32(4294967295u, global2.x) > global2.x, true, true)));
    var_0 = !var_1;
    let var_2 = 0u;
    var_0 = arg_1.a.x;
    return Struct_5(Struct_3(vec4<bool>(false, all(select(vec3<bool>(arg_2.x, var_1, arg_2.x), arg_2.wzy, arg_2.wxz)), arg_2.x, false | !arg_2.x), Struct_2(arg_1.b.a), ~min(vec3<i32>(-3878i, 17684i, -1i), vec3<i32>(11810i, -6848i, arg_1.c.x)), -1147f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(712f, arg_1.d))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, 762f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-489f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d + -298f), _wgslsmith_f_op_f32(-944f * arg_1.d))), global2.x, arg_1);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    global0 = array<Struct_4, 31>();
    var var_0 = func_4(any(select(vec4<bool>(true, true, true, true), vec4<bool>(11643i <= u_input.a.x, true, all(vec4<bool>(true, true, false, false)), true), any(func_2()))), Struct_3(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), any(vec2<bool>(true, true))), Struct_2(Struct_1(true)), -vec3<i32>(arg_1, _wgslsmith_mult_i32(-1i, 1i), arg_1 | -2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(819f, 1164f)) * 307f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)))), vec4<bool>(any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), true, func_3(), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)) && !func_2().x));
    let var_1 = var_0.e;
    let var_2 = global0[_wgslsmith_index_u32(var_0.d, 31u)];
    var var_3 = global0[_wgslsmith_index_u32(1u, 31u)];
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.x, u_input.a.x);
    var var_1 = !(!vec3<bool>(all(!vec2<bool>(var_0.a.a, var_0.a.a)), all(vec4<bool>(var_0.a.a, true, var_0.a.a, true)), var_0.a.a));
    global1 = array<vec4<f32>, 8>();
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    let var_2 = Struct_5(Struct_3(!func_4(all(vec3<bool>(false, true, var_0.a.a)), Struct_3(vec4<bool>(true, var_0.a.a, var_0.a.a, var_1.x), Struct_2(var_0.a), u_input.a.wxx, 1081f), vec4<bool>(false, false, var_0.a.a, false)).e.a, Struct_2(var_0.a), _wgslsmith_clamp_vec3_i32(abs(u_input.a.wzy), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), u_input.a.wxw), _wgslsmith_clamp_vec3_i32(abs(u_input.a.ywy), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), u_input.a.yzw), u_input.a.yzx)), func_4(true, Struct_3(!vec4<bool>(true, var_1.x, false, var_1.x), Struct_2(Struct_1(false)), u_input.a.xxx >> (vec3<u32>(1u, global2.x, global2.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(104f))), vec4<bool>(true, var_1.x, !var_0.a.a, var_0.a.a)).c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1284f, 224f)) - vec2<f32>(-1405f, _wgslsmith_f_op_f32(1425f * 157f)))), -1385f, ~53232u, Struct_3(vec4<bool>(1i != _wgslsmith_add_i32(u_input.a.x, 1i), any(select(vec4<bool>(var_0.a.a, true, false, var_1.x), vec4<bool>(true, true, var_0.a.a, var_1.x), true)), func_3(), true), Struct_2(Struct_1(true)), ~vec3<i32>(-1i, u_input.a.x | 7442i, u_input.a.x), _wgslsmith_f_op_f32(func_4(true, func_4(var_0.a.a, Struct_3(vec4<bool>(false, true, true, true), Struct_2(Struct_1(var_0.a.a)), u_input.a.wwx, 1000f), vec4<bool>(var_0.a.a, true, var_0.a.a, var_0.a.a)).a, !vec4<bool>(false, var_0.a.a, var_0.a.a, true)).c - -473f)));
    let var_3 = vec4<u32>(~24761u, global2.x, 1u, 90406u) | select(countOneBits(select(vec4<u32>(var_2.d, 33322u, var_2.d, global2.x), vec4<u32>(4294967295u, global2.x, 1u, global2.x), vec4<bool>(var_2.e.b.a.a, var_2.a.b.a.a, var_0.a.a, false))) >> (firstLeadingBit(~vec4<u32>(var_2.d, global2.x, global2.x, global2.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 0u, global2.x, var_2.d), vec4<u32>(var_2.d, 4294967295u, 33783u, 4294967295u)), vec4<u32>(func_4(true, var_2.e, var_2.a.a).d, ~33946u, abs(92671u), ~4294967295u)), any(select(var_2.e.a.yz, var_1.yy, true)) | !any(vec4<bool>(false, false, var_1.x, true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c, -440f), vec2<f32>(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.d) - _wgslsmith_f_op_f32(min(var_2.e.d, var_2.a.d)))), true));
    var var_5 = func_4(!(!any(vec2<bool>(var_0.a.a, true))), func_4(true, Struct_3(select(vec4<bool>(var_0.a.a, var_2.e.b.a.a, var_0.a.a, false), func_4(false, Struct_3(var_2.a.a, Struct_2(Struct_1(true)), vec3<i32>(var_2.e.c.x, -1i, var_2.a.c.x), 1122f), var_2.e.a).a.a, vec4<bool>(var_0.a.a, false, true, true)), var_2.e.b, _wgslsmith_sub_vec3_i32(u_input.a.zyw << (vec3<u32>(0u, 120169u, 98171u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, var_2.a.c.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x - -1687f) * _wgslsmith_f_op_f32(-var_4.x))), vec4<bool>(var_0.a.a, !(var_1.x || var_0.a.a), 538u > ~var_3.x, any(!vec2<bool>(var_1.x, var_1.x)))).a, var_2.e.a).a.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_3.x, 8u)]), _wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(var_3.x, 8u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.c + 1666f), _wgslsmith_f_op_f32(step(var_4.x, var_2.e.d)), -289f, 584f)))), ~vec3<u32>(60145u, global2.x, var_3.x) << (var_3.xxy % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, 1000f, -1093f, -1244f)) * vec4<f32>(1343f, -848f, -1366f, 459f)) * vec4<f32>(-526f, _wgslsmith_f_op_f32(trunc(1102f)), _wgslsmith_div_f32(1000f, 323f), _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, -273f, var_2.e.d, 686f) * global1[_wgslsmith_index_u32(global2.x, 8u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(11356u, var_2.d), 8u)], func_3()))))));
}

