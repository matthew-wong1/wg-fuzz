struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 20>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_3(0u, true, 51497u, Struct_1(vec4<i32>(i32(-2147483648), -11948i, -48286i, 1i), vec3<bool>(false, true, false), true)), -1i, Struct_1(vec4<i32>(-1i, -45238i, 0i, 1i), vec3<bool>(true, true, true), true), 397f), Struct_4(Struct_3(56653u, true, 0u, Struct_1(vec4<i32>(1i, 16858i, 73942i, 50140i), vec3<bool>(true, false, true), true)), 1i, Struct_1(vec4<i32>(33854i, -59169i, 2147483647i, i32(-2147483648)), vec3<bool>(true, true, false), false), 605f), Struct_4(Struct_3(1u, true, 31356u, Struct_1(vec4<i32>(28046i, 1i, 29819i, 0i), vec3<bool>(true, false, true), true)), -1i, Struct_1(vec4<i32>(-39729i, -1i, -23454i, 47974i), vec3<bool>(true, true, false), false), -895f), Struct_4(Struct_3(0u, false, 26869u, Struct_1(vec4<i32>(9193i, 1i, 11329i, 2147483647i), vec3<bool>(true, true, true), false)), 19105i, Struct_1(vec4<i32>(-19269i, 1i, 0i, -11578i), vec3<bool>(true, false, false), false), 351f), Struct_4(Struct_3(4294967295u, false, 18379u, Struct_1(vec4<i32>(44048i, 2147483647i, 19883i, -31471i), vec3<bool>(true, true, false), false)), -3567i, Struct_1(vec4<i32>(25660i, -1i, -1i, -2962i), vec3<bool>(false, true, true), true), 2177f), Struct_4(Struct_3(0u, true, 79757u, Struct_1(vec4<i32>(0i, -1i, 41733i, -32776i), vec3<bool>(false, false, false), true)), -1i, Struct_1(vec4<i32>(3972i, -42386i, 2147483647i, 0i), vec3<bool>(false, true, false), false), -516f), Struct_4(Struct_3(1u, false, 0u, Struct_1(vec4<i32>(2147483647i, 21491i, -41138i, 1i), vec3<bool>(true, false, false), false)), -28130i, Struct_1(vec4<i32>(1i, -1i, 0i, -7291i), vec3<bool>(false, false, true), true), -569f), Struct_4(Struct_3(1u, false, 0u, Struct_1(vec4<i32>(1i, -41655i, -1i, -50961i), vec3<bool>(false, true, true), false)), 1i, Struct_1(vec4<i32>(-1i, 24373i, -5670i, -14062i), vec3<bool>(false, false, false), false), -586f), Struct_4(Struct_3(25250u, false, 53514u, Struct_1(vec4<i32>(i32(-2147483648), 48633i, 1i, 56835i), vec3<bool>(false, true, true), true)), 29962i, Struct_1(vec4<i32>(-46726i, 0i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, true), true), -1060f));

var<private> global4: array<vec4<f32>, 4>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = !select(arg_1.b, !select(select(arg_1.b, arg_0, arg_0.x), vec3<bool>(arg_1.b.x, arg_0.x, false), vec3<bool>(false, true, false)), vec3<bool>(global2.x, false, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], 52059u, 0u, global1[_wgslsmith_index_u32(24115u, 20u)]), vec4<u32>(1u, 0u, 1u, global1[_wgslsmith_index_u32(u_input.a, 20u)])) == 29586u));
    let var_2 = all(select(arg_1.b, !var_1, select(select(select(var_0.b, arg_1.b, var_0.b), !var_0.b, var_1.x), select(var_1, vec3<bool>(true, var_1.x, false), vec3<bool>(true, global2.x, false)), !vec3<bool>(arg_0.x, false, false))));
    global2 = var_1.xz;
    global2 = vec2<bool>(arg_0.x & false, true);
    return ~(vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, arg_3), 2147483647i, ~(-2147483647i)) | -var_0.a.wyy);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-283f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-690f - -514f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(291f)) + _wgslsmith_f_op_f32(f32(-1f) * -1503f)), _wgslsmith_f_op_f32(182f * _wgslsmith_f_op_f32(-2423f + 1439f))))));
    global0 = global2.x;
    global0 = false | !global2.x;
    var var_1 = _wgslsmith_mod_vec2_i32(~(~(-(vec2<i32>(arg_0.x, -63841i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))))), _wgslsmith_sub_vec2_i32(vec2<i32>(41299i, arg_1.x >> (global1[_wgslsmith_index_u32(~u_input.a, 20u)] % 32u)), vec2<i32>(firstLeadingBit(15406i), select(_wgslsmith_add_i32(-1i, arg_2.x), arg_0.x, select(global2.x, true, true)))));
    var var_2 = Struct_4(Struct_3(~global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(64675u, 20u)], 41653u), 20u)], false, 21917u, Struct_1(arg_2, select(vec3<bool>(true, true, true), !vec3<bool>(global2.x, true, true), global2.x), all(!vec3<bool>(false, global2.x, false)))), -1i, Struct_1(~vec4<i32>(arg_1.x >> (0u % 32u), arg_0.x >> (1u % 32u), _wgslsmith_clamp_i32(arg_0.x, 1i, var_1.x), arg_0.x), vec3<bool>(global2.x, false, false), global2.x || (~43995u < firstTrailingBit(u_input.a))), -861f);
    return _wgslsmith_div_i32(1i, -9841i) ^ ((1i >> (global1[_wgslsmith_index_u32(35167u, 20u)] % 32u)) & _wgslsmith_div_i32(arg_0.x, arg_2.x));
}

fn func_2() -> bool {
    var var_0 = -func_4(func_3(vec3<bool>(true, true, any(vec4<bool>(global2.x, true, global2.x, false))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 12156i, -1i, -13030i), vec4<i32>(-1i, -36979i, 2730i, -2147483647i)), vec3<bool>(true, global2.x, true), !global2.x), 1i, max(0i, max(0i, 2147483647i))), vec2<i32>(-20116i, func_3(vec3<bool>(false, true, global2.x), Struct_1(vec4<i32>(16941i, 8405i, -31961i, -1i), vec3<bool>(false, global2.x, global2.x), global2.x), 0i, -1i).x & (i32(-1i) * -51015i)), -firstTrailingBit(~vec4<i32>(-18001i, -9838i, -1i, 1i)));
    var_0 = -1i;
    let var_1 = Struct_1(-vec4<i32>(max(_wgslsmith_sub_i32(0i, -2147483647i), select(-25753i, -15822i, global2.x)), -18396i, _wgslsmith_mult_i32(-1i, -23276i), _wgslsmith_dot_vec2_i32(vec2<i32>(-4487i, 75061i), vec2<i32>(12995i, 2147483647i)) ^ _wgslsmith_mult_i32(0i, -2114i)), !vec3<bool>(true || all(vec3<bool>(false, global2.x, false)), -2147483647i < func_3(vec3<bool>(true, true, global2.x), Struct_1(vec4<i32>(-14567i, 2147483647i, -29943i, -4123i), vec3<bool>(true, global2.x, global2.x), global2.x), -1i, -23647i).x, true), all(select(!vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, true, !global2.x, all(vec4<bool>(global2.x, false, true, false))), true)));
    global0 = global2.x;
    var_0 = 1i;
    return global2.x;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    global2 = select(vec2<bool>(true, false), arg_2.b.zx, select(vec2<bool>(!arg_2.b.x, !arg_2.b.x), arg_0.d.b.zz, arg_0.d.c));
    let var_0 = 209f;
    var var_1 = Struct_1(reverseBits(arg_0.d.a), vec3<bool>(false, !(!arg_2.b.x) | !(u_input.a >= arg_0.c), func_2()), true);
    global3 = array<Struct_4, 9>();
    let var_2 = arg_2.a.yxy;
    return var_0;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = !arg_3.a.d.b;
    global3 = array<Struct_4, 9>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_3.d + _wgslsmith_f_op_f32(func_1(arg_3.a, arg_3.a.d.a.x, Struct_1(vec4<i32>(arg_3.a.d.a.x, arg_3.a.d.a.x, arg_3.a.d.a.x, arg_3.b), arg_3.a.d.b, true), arg_0.zwx)))))), _wgslsmith_f_op_f32(round(arg_1.x))));
    let var_2 = arg_3;
    let var_3 = ~countOneBits(~(i32(-1i) * -2147483647i) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), _wgslsmith_add_vec2_u32(arg_0.wz, vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]))) % 32u));
    return StorageBuffer(min(var_2.a.a, arg_3.a.a), vec2<f32>(_wgslsmith_div_f32(-861f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -780f))), _wgslsmith_f_op_f32(1711f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -746f, arg_3.a.b))))), -268f, arg_0.xwz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1000f, -2284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, 60377u, u_input.a, 1u) ^ vec4<u32>(1u, u_input.a, 105554u, 14480u)), ~vec4<u32>(_wgslsmith_clamp_u32(95876u, global1[_wgslsmith_index_u32(40710u, 20u)], 60148u), 4294967295u, 1u, ~1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + var_0.zz))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(ceil(var_0.zx))) - vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(0u, false, 0u, Struct_1(vec4<i32>(-18390i, -20009i, -2147483647i, -2147483647i), vec3<bool>(global2.x, true, false), global2.x)), -28458i, Struct_1(vec4<i32>(-35156i, 33634i, 2147483647i, 0i), vec3<bool>(global2.x, false, false), false), vec3<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(1u, 20u)]))), var_0.x))), false, global3[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 4294967295u)) % 32u), 1u), 20u)], 20u)], 21076u), 9u)]);
}

