struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<bool>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(6987u, 4294967295u), 2147483647i);

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool) -> vec3<bool> {
    var var_0 = countOneBits(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~23093i, global2.b), ~global2.b, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(global2.b, -2629i), 29428i)), -36177i, max(45061i, countOneBits(_wgslsmith_add_i32(global2.b, global2.b))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global2.b), vec2<i32>(-35340i, -20912i)), ~(-vec2<i32>(global2.b, global2.b)))));
    let var_1 = Struct_1(vec2<u32>(4294967295u, 0u), -(global2.b << (reverseBits(select(4294967295u, u_input.b.x, arg_2)) % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -1022f), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-654f, arg_0)), _wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -409f, 297f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1332f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, 328f, 110f, arg_0)), var_1.b < var_0.x)) - vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0, 1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 1578f, -1311f, arg_0), vec4<f32>(1000f, arg_0, 486f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, -1000f, 2260f, 170f)))))));
    var var_3 = ~vec4<i32>(21440i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.b, -1i), 0i, 1i), -23932i >> (~global2.a.x % 32u), _wgslsmith_mod_i32(var_1.b, 38410i)) ^ vec4<i32>(var_1.b, var_0.x, firstTrailingBit(2147483647i), global2.b);
    var var_4 = -35483i;
    return select(vec3<bool>(false, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, true, global3.x, global1.x)), !vec4<bool>(true, false, global3.x, false), global1.x)), true), !vec3<bool>(select(any(vec4<bool>(true, false, global3.x, true)), true, false), all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), global3.zz)), (arg_0 >= 141f) || any(vec3<bool>(false, global3.x, true))), !all(select(vec4<bool>(global3.x, false, global1.x, arg_2), !vec4<bool>(global3.x, global3.x, arg_1, true), true)));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global3 = !(!select(!func_3(arg_0.c.x, false, true), select(vec3<bool>(global1.x, global3.x, true), select(vec3<bool>(global3.x, global1.x, true), vec3<bool>(global1.x, global1.x, true), global3.x), vec3<bool>(true, global1.x, false)), select(vec3<bool>(global3.x, true, global1.x), vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global3.x, true))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c.x)) + _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-arg_0.c.x))))));
    global1 = vec2<bool>(false, !global1.x);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -385f), arg_0.c.x));
    return Struct_2(arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-853f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -283f))) + arg_0.c.x), global2.a.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global1 = global3.xz;
    global0 = _wgslsmith_div_f32(-1347f, _wgslsmith_f_op_f32(floor(-857f)));
    var var_0 = arg_1.a;
    global0 = _wgslsmith_f_op_f32(min(func_2(Struct_3(~(arg_1.a.a.x >> (arg_1.a.a.x % 32u)), arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, 112f, arg_1.b) + vec3<f32>(arg_1.b, arg_1.b, -1327f)) - _wgslsmith_div_vec3_f32(vec3<f32>(567f, 241f, -2088f), vec3<f32>(arg_1.b, 3087f, arg_1.b))), ~1u, func_2(Struct_3(var_0.a.x, Struct_1(vec2<u32>(arg_1.c, 15434u), 12158i), vec3<f32>(arg_1.b, -634f, arg_1.b), 1u, Struct_1(u_input.a, global2.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(7364u, var_0.a.x, 4294967295u), vec3<u32>(var_0.a.x, 44709u, 15340u))).a), ~4294967295u).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1676f + arg_1.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(777f + arg_1.b)))));
    let var_1 = Struct_3(47056u, func_2(Struct_3(reverseBits(1u), func_2(Struct_3(u_input.b.x, Struct_1(u_input.a, -1194i), vec3<f32>(arg_1.b, arg_1.b, -436f), 26750u, Struct_1(vec2<u32>(1u, 4294967295u), global2.b)), firstLeadingBit(141345u)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(355f, arg_1.b, arg_1.b))), 37518u, arg_1.a), u_input.b.x).a, vec3<f32>(arg_1.b, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_div_u32(var_0.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(28150u, u_input.a.x, var_0.a.x, var_0.a.x)), vec4<u32>(4294967295u, 1u, 18027u, global2.a.x) & vec4<u32>(39075u, u_input.a.x, 25055u, var_0.a.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 55138u, 1u, 33555u), vec4<u32>(global2.a.x, var_0.a.x, 46792u, var_0.a.x))))), Struct_1(select(min(_wgslsmith_div_vec2_u32(arg_1.a.a, var_0.a), ~vec2<u32>(u_input.b.x, 0u)), var_0.a | vec2<u32>(var_0.a.x, 14214u), vec2<bool>(global3.x, !arg_0)), -_wgslsmith_mod_i32(0i, 1i)));
    return arg_1.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: u32) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))));
    global2 = func_4(arg_0.x, func_2(arg_1, firstLeadingBit(~4037u) << (~4294967295u % 32u)));
    global3 = vec3<bool>(!any(!select(arg_0, arg_0, vec3<bool>(false, arg_0.x, true))), func_3(531f, select(any(global3.xx), all(vec2<bool>(arg_0.x, global3.x)), !arg_0.x), true).x || true, all(!select(vec2<bool>(false, global1.x), !global3.zy, global3.zz)));
    global2 = func_4(true, Struct_2(arg_1.e, arg_1.c.x, max(1u, countOneBits(~arg_3))));
    var var_0 = arg_1;
    return select(select(!select(!vec4<bool>(arg_0.x, true, false, global1.x), vec4<bool>(arg_0.x, arg_0.x, global3.x, false), vec4<bool>(true, global1.x, false, global1.x)), select(!select(vec4<bool>(true, true, global3.x, arg_0.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(arg_0.x, arg_0.x, global1.x, global1.x)), !select(vec4<bool>(global1.x, true, true, arg_0.x), vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(global1.x, global3.x, true, true)), vec4<bool>(global1.x, global3.x, all(vec3<bool>(arg_0.x, false, true)), true)), all(vec4<bool>(true, false, global1.x, all(vec2<bool>(false, global3.x))))), vec4<bool>(any(global3.xy), false, var_0.b.a.x < _wgslsmith_div_u32(~u_input.b.x, min(3293u, 17628u)), all(!(!arg_0))), !select(vec4<bool>(select(false, global1.x, arg_0.x), global3.x, arg_0.x, !global3.x), vec4<bool>(all(vec2<bool>(global3.x, false)), global3.x, any(global3.xy), arg_0.x), !vec4<bool>(arg_0.x, true, false, true)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> StorageBuffer {
    return StorageBuffer(-arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2037f + -141f))))), ~((vec2<i32>(-1i) * -vec2<i32>(1i, arg_1.a.b)) >> (vec2<u32>(arg_1.c, abs(arg_1.c)) % vec2<u32>(32u))), -arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(select(select(!select(vec2<bool>(false, global1.x), vec2<bool>(true, false), false), !vec2<bool>(global1.x, global3.x), false), vec2<bool>(all(func_1(vec3<bool>(global3.x, global1.x, global3.x), Struct_3(3525u, Struct_1(vec2<u32>(4294967295u, 20890u), global2.b), vec3<f32>(1000f, 710f, 1032f), global2.a.x, Struct_1(global2.a, global2.b)), vec2<f32>(136f, 610f), 25590u)), global1.x), all(!func_1(vec3<bool>(global1.x, true, global3.x), Struct_3(9142u, Struct_1(vec2<u32>(28777u, u_input.b.x), -13089i), vec3<f32>(351f, -499f, 1385f), 9254u, Struct_1(vec2<u32>(global2.a.x, 4294967295u), global2.b)), vec2<f32>(953f, -807f), 0u).wyx)), Struct_2(Struct_1(_wgslsmith_div_vec2_u32(~u_input.b.zz, firstTrailingBit(vec2<u32>(52034u, 7811u))), -56974i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1769f * -765f))) + _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_mult_u32(38312u, global2.a.x), global2.a.x, 1u), vec4<u32>(~global2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, global2.a.x, 4294967295u, u_input.a.x), vec4<u32>(global2.a.x, 1u, 1763u, 0u)), ~global2.a.x, global2.a.x))), vec2<bool>(false, true), _wgslsmith_f_op_f32(-1667f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(223f, 170f)))))));
}

