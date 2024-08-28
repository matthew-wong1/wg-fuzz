struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec3<bool>, 19>();
    global0 = array<vec3<bool>, 19>();
    global0 = array<vec3<bool>, 19>();
    return vec4<bool>(true, true, false, !(!(arg_2.b.x | !arg_0.a.b.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_2(arg_2.a, arg_2.b);
    let var_1 = false;
    var var_2 = select(arg_1, !arg_0, max(countOneBits(-31459i << (arg_2.a.e.x % 32u)), 32462i) < reverseBits(-(arg_2.a.c ^ 0i)));
    var var_3 = countOneBits(select(vec3<u32>(_wgslsmith_add_u32(109188u, 57406u), 1u, ~48518u), firstLeadingBit(vec3<u32>(57589u, arg_2.a.d, u_input.a)), var_0.a.b.x) ^ arg_2.b);
    var_2 = !arg_0;
    return arg_2.a.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = ~firstTrailingBit(countOneBits(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 81115u, 69336u, 4294967295u)), reverseBits(vec4<u32>(arg_3.x, 0u, 1u, arg_1.x)))));
    var var_1 = ~var_0.x;
    let var_2 = _wgslsmith_mult_vec3_i32(u_input.e, vec3<i32>(u_input.c, u_input.c, 0i));
    let var_3 = _wgslsmith_f_op_f32(func_4(select(!vec4<bool>(arg_0.x <= var_2.x, true, true, true), select(select(select(vec4<bool>(false, true, false, arg_2.x), vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, false, false, arg_2.x)), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, false, true, arg_2.x), arg_2.x), select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), select(vec4<bool>(arg_2.x, arg_2.x, false, false), !vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, true)), !(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x))), true), select(func_3(Struct_2(Struct_1(vec4<f32>(-336f, -136f, -319f, 1674f), arg_2, 24309i, arg_3.x, vec2<u32>(1u, u_input.a)), firstTrailingBit(vec3<u32>(0u, u_input.a, 37740u))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1567f, 1388f, 241f, 1370f) * vec4<f32>(260f, 868f, 701f, -466f)), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x), 0i, 4294967295u, vec2<u32>(var_0.x, 4294967295u) & vec2<u32>(arg_1.x, 31595u)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1000f, 1027f, -233f))), !vec3<bool>(true, arg_2.x, arg_2.x), 9316i << (arg_1.x % 32u), ~u_input.a, arg_1.zx)), !(!select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x))), true), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1418f, 1839f, 1725f, -315f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(746f, -278f, -1179f, 1147f), vec4<f32>(108f, -374f, -1789f, 1289f)))), select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), func_3(Struct_2(Struct_1(vec4<f32>(155f, 146f, -214f, 881f), arg_2, u_input.c, 1u, vec2<u32>(u_input.a, var_0.x)), vec3<u32>(u_input.a, 129518u, arg_1.x)), Struct_1(vec4<f32>(1016f, -1663f, -125f, -1057f), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), -2147483647i, arg_3.x, vec2<u32>(14507u, 0u)), Struct_1(vec4<f32>(-747f, -1521f, -563f, -172f), vec3<bool>(arg_2.x, false, arg_2.x), u_input.d, var_0.x, arg_3)).yxx, select(vec3<bool>(true, arg_2.x, false), vec3<bool>(arg_2.x, arg_2.x, false), arg_2.x)), abs(~(-1i)), arg_3.x & max(arg_3.x, arg_1.x), _wgslsmith_add_vec2_u32(max(var_0.zz, vec2<u32>(1u, u_input.a)), arg_1.yx)), ~arg_1)));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, 905f, 337f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, 1379f, 1278f, -1387f)))), global0[_wgslsmith_index_u32(~(1u | ~arg_1.x), 19u)], firstLeadingBit(reverseBits(~u_input.b.x)), u_input.a, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(50925u, 44806u), arg_3))), vec3<u32>(~17892u, _wgslsmith_clamp_u32(var_0.x, _wgslsmith_mod_u32(~0u, arg_3.x), ~u_input.a), ~(1u << (arg_1.x % 32u))));
    return vec3<bool>(any(vec3<bool>(true, all(select(var_4.a.b, vec3<bool>(var_4.a.b.x, arg_2.x, false), vec3<bool>(var_4.a.b.x, false, var_4.a.b.x))), true)), func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(var_4.a.a, var_4.a.a, var_4.a.b.x)), var_4.a.b, var_4.a.c, 1u, var_4.b.yy), arg_1), Struct_1(_wgslsmith_div_vec4_f32(var_4.a.a, vec4<f32>(var_4.a.a.x, 1347f, var_4.a.a.x, var_3)), vec3<bool>(var_4.a.b.x, true | arg_2.x, all(vec4<bool>(var_4.a.b.x, arg_2.x, true, false))), -51295i, ~(~80355u), ~(~var_0.yz)), var_4.a).x, any(var_4.a.b.xy));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_sub_i32(-11087i, 51571i ^ arg_3.a.c);
    var_0 = arg_1.c;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(597f, arg_2, arg_3.a.a.x, arg_3.a.a.x) - vec4<f32>(arg_3.a.a.x, arg_1.a.x, 804f, -131f))) * _wgslsmith_f_op_vec4_f32(min(arg_1.a, _wgslsmith_div_vec4_f32(vec4<f32>(1768f, -1166f, -1268f, arg_1.a.x), vec4<f32>(882f, 1338f, arg_3.a.a.x, arg_3.a.a.x))))))), !func_2(-u_input.b.wx, ~_wgslsmith_add_vec3_u32(arg_3.b, arg_3.b), arg_3.a.b, firstLeadingBit(~vec2<u32>(1u, arg_1.d))), u_input.d, ~min(u_input.a, _wgslsmith_div_u32(45723u, _wgslsmith_add_u32(79710u, arg_0.x))), ~select(arg_3.a.e, firstLeadingBit(firstLeadingBit(arg_1.e)), !vec2<bool>(false, arg_3.a.b.x)));
    global0 = array<vec3<bool>, 19>();
    let var_2 = func_3(arg_3, arg_1, var_1);
    return firstTrailingBit(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = vec2<f32>(-443f, _wgslsmith_f_op_f32(1277f * _wgslsmith_f_op_f32(max(688f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = vec2<i32>(abs(0i), 22866i) & select(vec2<i32>(select(-u_input.d, 26790i, true), select(-2147483647i, u_input.d, true) ^ u_input.e.x), u_input.e.zy, !(var_1.x >= var_1.x));
    let var_3 = ~max(-(~u_input.c), 29737i) & (_wgslsmith_dot_vec3_i32(u_input.e, ~(-u_input.e)) ^ ~_wgslsmith_sub_i32(func_1(vec2<u32>(1u, u_input.a), Struct_1(vec4<f32>(var_1.x, 2098f, 191f, 861f), global0[_wgslsmith_index_u32(u_input.a, 19u)], var_2.x, 37889u, vec2<u32>(u_input.a, u_input.a)), -346f, Struct_2(Struct_1(vec4<f32>(-924f, var_1.x, 1089f, var_1.x), vec3<bool>(true, false, false), var_2.x, var_0, vec2<u32>(4294967295u, var_0)), vec3<u32>(1u, u_input.a, 0u))), u_input.d));
    let var_4 = vec2<u32>(4294967295u, ~u_input.a | ~32373u);
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(218f, 754f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, -340f)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(915f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, -2514f))))), !(~select(44668u, var_4.x, true) < _wgslsmith_mod_u32(~var_0, 2856u))));
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-270f, -1145f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, var_1.x, -539f, -131f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, -1171f, var_1.x, -1000f))))))), global0[_wgslsmith_index_u32(abs(0u), 19u)], -firstTrailingBit(var_3) & _wgslsmith_clamp_i32(var_3, 42157i, ~0i), _wgslsmith_mod_u32(countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, 1u), vec2<u32>(u_input.a, var_0)))), ~u_input.a), ~(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_4, vec2<u32>(var_0, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_4.x, 40835u), vec2<u32>(4294967295u, u_input.a))) << ((vec2<u32>(var_0, var_4.x) & vec2<u32>(91227u, var_4.x)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_4.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(52172u, u_input.a), vec2<u32>(20044u, var_4.x)) % 32u), u_input.a << (~1u % 32u), ~var_5.d, ~1u), var_5.c, _wgslsmith_mult_i32(firstLeadingBit(reverseBits(var_3)), 1i << (var_4.x % 32u)));
}

