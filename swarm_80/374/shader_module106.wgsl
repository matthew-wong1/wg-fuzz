struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(2147483647i, -68745i), -21355i, Struct_1(87974u, 210f, -9396i, vec4<i32>(-44487i, -20516i, i32(-2147483648), 1i), true));

var<private> global2: array<Struct_4, 4>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    global1 = arg_3;
    global1 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(~(-2147483647i), global1.a.x ^ global1.b) & 0i, global1.c.c), abs(abs(global1.b)), Struct_1(13698u, arg_3.c.b, arg_1, -arg_3.c.d, arg_3.c.e & global1.c.e));
    global0 = max(u_input.a, ~u_input.a);
    let var_0 = -332f;
    var var_1 = arg_3.c.e;
    return ~(~arg_3.c.a);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_3 {
    global0 = u_input.a;
    var var_0 = _wgslsmith_mod_u32(5679u, 12574u);
    let var_1 = select(vec2<i32>(~global1.b, global1.c.d.x), _wgslsmith_mult_vec2_i32(select(countOneBits(global1.a), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.c.d.xx, vec2<i32>(-45142i, global1.b), vec2<i32>(-2147483647i, 2147483647i)), max(arg_1.a.yx, vec2<i32>(global1.a.x, 0i))), false), select(vec2<i32>(arg_1.d.x, 4682i), global1.a, select(vec2<bool>(arg_1.b.c.e, global1.c.e), select(vec2<bool>(false, true), vec2<bool>(false, arg_1.b.c.e), true), true))), select(!select(select(vec2<bool>(global1.c.e, global1.c.e), vec2<bool>(arg_1.b.b.c.e, false), true), !vec2<bool>(global1.c.e, global1.c.e), vec2<bool>(true, global1.c.e)), select(!vec2<bool>(arg_1.b.c.e, true), select(!vec2<bool>(global1.c.e, arg_1.b.c.e), vec2<bool>(arg_1.b.c.e, true), select(vec2<bool>(false, false), vec2<bool>(true, global1.c.e), global1.c.e)), !global1.c.e), !select(vec2<bool>(true, arg_1.b.c.e), vec2<bool>(arg_1.b.b.c.e, arg_1.b.c.e), !vec2<bool>(false, global1.c.e))));
    global2 = array<Struct_4, 4>();
    global2 = array<Struct_4, 4>();
    return Struct_3(_wgslsmith_add_vec3_u32(~(~vec3<u32>(global0.x, 1u, global0.x)) >> (_wgslsmith_add_vec3_u32(select(vec3<u32>(39738u, global1.c.a, global0.x), vec3<u32>(0u, global0.x, arg_1.c.x), vec3<bool>(false, arg_1.b.c.e, global1.c.e)), arg_0) % vec3<u32>(32u)), ~u_input.a.yzy), arg_1.b.b, Struct_1(global0.x, arg_2.x, -arg_1.a.x, global1.c.d, global1.c.e), arg_1.d.x, arg_1.b.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = true;
    global1 = arg_1.b;
    var var_1 = global2[_wgslsmith_index_u32(select(u_input.a.x, 44681u | _wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, global1.c.a, arg_1.c.a, 12088u), select(arg_0.e, vec4<u32>(0u, arg_3.x, 1807u, arg_0.a.x), true), !arg_1.b.c.e), ~(~vec4<u32>(arg_1.c.a, arg_3.x, 79947u, 30195u))), arg_0.b.c.e), 4u)];
    let var_2 = ~(~(~(~_wgslsmith_div_u32(global1.c.a, arg_3.x))));
    var var_3 = Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-921f)), 829f))), _wgslsmith_mult_i32(-14654i, arg_1.b.a.x), ~arg_0.c.d, global1.c.e);
    return var_1.b.b;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>) -> u32 {
    let var_0 = global1.c;
    let var_1 = -(~max(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.b, var_0.c, -47065i, 2173i), vec4<i32>(arg_1.a.x, 54184i, arg_1.a.x, var_0.c)), global1.c.d));
    var var_2 = func_4(func_3(vec3<u32>(_wgslsmith_mod_u32(~arg_1.c.x, func_2(global1.c.b, var_0.c, vec4<f32>(1469f, var_0.b, -1089f, 693f), Struct_2(var_1.yy, 2147483647i, global1.c))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(14055u, u_input.b, u_input.b), vec3<u32>(4294967295u, 37985u, u_input.b)), ~u_input.a.wzz), 86980u), arg_1, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global1.c.b - -1000f), arg_1.b.b.c.b, arg_0, -794f)))), func_3(vec3<u32>(5315u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.a, global0.x), u_input.a.yx), ~1222u) ^ vec3<u32>(var_0.a, ~1u, func_2(777f, global1.c.d.x, vec4<f32>(-2759f, var_0.b, -1981f, arg_1.b.c.b), arg_1.b.b)), global2[_wgslsmith_index_u32(~(var_0.a & 1u), 4u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, global1.c.b, arg_1.b.c.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(312f, 305f, var_0.b, arg_0) + vec4<f32>(var_0.b, -1079f, global1.c.b, arg_1.b.b.c.b))))), global1.a.x, select(vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(global0.x), ~global0.x, 1u), u_input.b, 1u), ~vec3<u32>(~58850u, 0u, 67902u), vec3<bool>(arg_1.b.c.e | any(arg_2), false && var_0.e, arg_1.b.c.e)));
    var var_3 = Struct_2(max(_wgslsmith_div_vec2_i32(var_2.c.d.xw, min(var_0.d.xz, var_1.zz)), reverseBits(vec2<i32>(1i, global1.a.x) >> (global0.yw % vec2<u32>(32u)))), var_2.a.x, global1.c);
    var var_4 = _wgslsmith_add_vec2_i32(select(vec2<i32>(-40266i, var_2.a.x), ~select(vec2<i32>(var_1.x, var_2.b), var_2.a, arg_1.b.c.e) | -_wgslsmith_sub_vec2_i32(vec2<i32>(-12802i, var_2.c.d.x), vec2<i32>(var_1.x, 5317i)), select(select(!arg_2, select(arg_2, arg_2, arg_2), true), select(select(arg_2, vec2<bool>(global1.c.e, global1.c.e), vec2<bool>(false, false)), vec2<bool>(var_0.e, arg_1.b.b.c.e), select(arg_2, arg_2, arg_2)), !(!vec2<bool>(false, global1.c.e)))), select(_wgslsmith_div_vec2_i32(~arg_1.a.zw, var_2.c.d.xx), -(vec2<i32>(-2147483647i, arg_1.b.c.d.x) & vec2<i32>(var_2.c.d.x, 7646i)), select(arg_2, vec2<bool>(true, true), arg_2)));
    return reverseBits(_wgslsmith_dot_vec4_u32(arg_1.b.e, min(vec4<u32>(var_0.a, min(0u, global0.x), var_3.c.a, ~4294967295u), ~(~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-global1.c.b), global2[_wgslsmith_index_u32(countOneBits(38371u), 4u)], select(!vec2<bool>(true, global1.c.e), select(vec2<bool>(global1.c.e, global1.c.e), vec2<bool>(false, false), vec2<bool>(global1.c.e, false)), vec2<bool>(global1.c.e || global1.c.e, global1.c.e))) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(~global1.c.a, 59223u, ~0u, global0.x), u_input.a);
    let var_1 = vec2<i32>(~global1.c.c, -global1.b);
    var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~31182u, 4989u << (global1.c.a % 32u), 78643u), ~(~u_input.a.www)), ~_wgslsmith_sub_u32(66349u, ~global0.x) & _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 1u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global1.c.a, global1.c.a), u_input.a.zw)));
    var_0 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c.b, global1.c.b, global1.c.b), vec3<f32>(-498f, 1000f, global1.c.b), global1.c.e)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.c.b, global1.c.b, global1.c.b)))))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1.c.b, 1094f)))), 214f, 146f)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x, ~_wgslsmith_mult_i32(1788i, var_1.x), ~func_4(Struct_3(vec3<u32>(global0.x, u_input.b, 0u) | u_input.a.zxz, Struct_2(vec2<i32>(16063i, var_1.x), -50093i, global1.c), func_4(Struct_3(global0.zxx, Struct_2(var_1, 50191i, Struct_1(4294967295u, var_2.x, 0i, global1.c.d, global1.c.e)), global1.c, 8966i, vec4<u32>(0u, 68690u, u_input.b, 664u)), Struct_3(global0.wyz, Struct_2(vec2<i32>(1208i, var_1.x), 2147483647i, global1.c), Struct_1(0u, -491f, global1.a.x, vec4<i32>(global1.a.x, var_1.x, 0i, global1.c.d.x), false), global1.b, vec4<u32>(0u, global1.c.a, 27483u, 4294967295u)), global1.c.d.x, u_input.a.wyz).c, ~var_1.x, ~vec4<u32>(1u, 1u, 31091u, global0.x)), Struct_3(u_input.a.xzy ^ vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), func_4(Struct_3(global0.yzy, Struct_2(vec2<i32>(var_1.x, var_1.x), 0i, Struct_1(u_input.b, 1797f, -4115i, vec4<i32>(global1.c.c, 0i, -1i, 19175i), false)), Struct_1(u_input.b, -1959f, var_1.x, global1.c.d, global1.c.e), var_1.x, u_input.a), Struct_3(vec3<u32>(u_input.a.x, u_input.b, 4294967295u), Struct_2(vec2<i32>(1i, global1.c.d.x), 1i, global1.c), Struct_1(global0.x, 422f, var_1.x, global1.c.d, global1.c.e), var_1.x, u_input.a), var_1.x, u_input.a.xyz), func_3(vec3<u32>(41790u, global0.x, 4294967295u), Struct_4(global1.c.d, Struct_3(vec3<u32>(global0.x, 1178u, global1.c.a), Struct_2(vec2<i32>(62499i, global1.b), var_1.x, global1.c), Struct_1(global1.c.a, var_2.x, -10847i, global1.c.d, global1.c.e), -37471i, vec4<u32>(global0.x, u_input.b, 0u, 4294967295u)), vec4<u32>(global1.c.a, global1.c.a, 0u, 39963u), vec3<i32>(0i, var_1.x, var_1.x)), vec4<f32>(global1.c.b, 931f, var_2.x, -400f)).c, countOneBits(-2147483647i), ~vec4<u32>(11193u, 55205u, global0.x, global0.x)), _wgslsmith_mult_i32(var_1.x, -2147483647i), ~u_input.a.zww).a, global1.c.d.xx, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1796f, global1.c.b))))))));
}

