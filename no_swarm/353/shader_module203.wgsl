struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 18>;

var<private> global2: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    global1 = array<vec3<i32>, 18>();
    global1 = array<vec3<i32>, 18>();
    var var_0 = Struct_3(Struct_2(!global0.a, vec4<bool>(all(!vec3<bool>(false, global2.b, global0.a.x)), !(arg_0.x <= 896f), global0.b.x, true), ~vec2<u32>(~global0.c.x, global0.c.x)), all(select(global2.a.b.xxz, !global2.a.b.yzy, any(vec4<bool>(true, true, global2.b, true)))), Struct_2(!(!select(vec2<bool>(global2.a.b.x, true), global2.c.b.yy, vec2<bool>(global0.b.x, false))), vec4<bool>(!global2.b && (arg_0.x != arg_0.x), true, false, global2.b), ~vec2<u32>(global0.c.x, global0.c.x)), vec4<i32>(u_input.c.x, global2.d.x, 1i, _wgslsmith_div_i32(global2.d.x, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(21134u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)])))));
    let var_1 = var_0.a;
    var var_2 = Struct_4(firstTrailingBit(1i), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.c.x, 1u), global2.c.c) ^ _wgslsmith_div_vec2_u32(global0.c, vec2<u32>(1u, var_1.c.x)), ~_wgslsmith_div_vec2_u32(u_input.b.zx, global0.c), global0.c | ~u_input.e.yz), var_1.b.x, Struct_3(var_0.c, true, var_0.c, -firstTrailingBit(vec4<i32>(-1i, u_input.d.x, -3399i, -2147483647i))), Struct_3(global2.a, global0.a.x, global2.c, -(~global2.d)));
    return select(!(!all(!vec3<bool>(true, var_2.e.b, true))), !(-var_2.d.d.x < -1i), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-745f + 459f)))) >= 220f);
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: i32) -> bool {
    return global0.a.x;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec2<i32> {
    var var_0 = func_4(Struct_4(1i, global0.c, func_3(vec4<f32>(-401f, -1000f, _wgslsmith_f_op_f32(1418f + arg_0), _wgslsmith_f_op_f32(sign(911f)))), Struct_3(Struct_2(select(vec2<bool>(true, arg_1), global0.a, global0.b.x), global2.c.b, global2.a.c), true || (global2.c.a.x && global0.a.x), Struct_2(vec2<bool>(global2.a.b.x, arg_1), vec4<bool>(true, true, true, arg_1), global0.c << (vec2<u32>(116156u, 31263u) % vec2<u32>(32u))), u_input.d), Struct_3(Struct_2(select(global0.a, global0.a, global2.a.b.zz), !vec4<bool>(global2.c.a.x, arg_1, false, arg_1), select(u_input.b.xz, u_input.b.xx, arg_1)), !(global0.c.x == global2.c.c.x), Struct_2(vec2<bool>(arg_1, global0.a.x), select(vec4<bool>(global0.b.x, true, true, arg_1), vec4<bool>(true, global2.c.a.x, true, false), true), abs(global2.a.c)), global2.d ^ global2.d)), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1293f), u_input.a);
    var var_1 = global2.a;
    var_0 = false;
    var var_2 = Struct_4(-(~_wgslsmith_div_i32(22217i, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(global0.c.x, 1u), var_1.c), false, Struct_3(Struct_2(!select(vec2<bool>(true, true), global0.b.xy, vec2<bool>(global0.a.x, true)), select(!global2.a.b, select(global2.c.b, vec4<bool>(global0.a.x, false, global2.b, arg_1), vec4<bool>(global0.a.x, true, true, false)), vec4<bool>(false, false, global0.a.x, global2.a.b.x)), vec2<u32>(u_input.b.x, 0u) & _wgslsmith_mult_vec2_u32(global0.c, vec2<u32>(global0.c.x, global0.c.x))), false, global2.c, _wgslsmith_add_vec4_i32(u_input.d, firstLeadingBit(global2.d))), Struct_3(global2.a, _wgslsmith_dot_vec3_u32(u_input.e, u_input.e) != 9470u, Struct_2(!(!global0.a), !global0.b, (vec2<u32>(var_1.c.x, 0u) ^ vec2<u32>(40445u, 49170u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(38301u, global2.c.c.x), global0.c)), select(u_input.d ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global2.d.x, u_input.d.x, u_input.d.x, u_input.a), global2.d), abs(vec4<i32>(-30706i, -2147483647i, global2.d.x, 0i)), all(vec2<bool>(false, global2.b)))));
    let var_3 = Struct_2(select(var_2.e.a.a, var_1.a, var_2.e.c.a), vec4<bool>(true, (true && (arg_0 == arg_0)) | !var_1.a.x, !global0.a.x, !(false && (true & arg_1))), abs(vec2<u32>(23130u & u_input.b.x, ~u_input.e.x) >> (abs(abs(vec2<u32>(global2.a.c.x, var_1.c.x))) % vec2<u32>(32u))));
    return abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.c, ~u_input.d.xw), vec2<i32>(global2.d.x, -global2.d.x)), vec2<i32>(u_input.d.x << (~0u % 32u), ~35283i)));
}

fn func_5(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-755f - -235f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(min(144f, 1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f + -717f) - -690f)), any(global0.b), true, !any(global0.b));
    let var_1 = select(vec3<bool>(~_wgslsmith_clamp_u32(22163u, u_input.e.x, 18224u) <= u_input.b.x, 2147483647i != u_input.d.x, var_0.x | any(vec3<bool>(false, global0.b.x, false))), var_0.yyw, vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(213f * 529f)) != _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1218f, 1019f), 588f)), var_0.x, false));
    var var_2 = vec3<u32>(80085u, 71006u, ~u_input.e.x);
    return Struct_3(global2.a, true, Struct_2(select(vec2<bool>(select(var_0.x, var_0.x, var_1.x), !global0.b.x), !(!vec2<bool>(global2.c.a.x, global2.c.b.x)), var_0.x), !var_0, firstLeadingBit(reverseBits(abs(global0.c)))), select(~global2.d, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(global2.d.x, u_input.c.x), _wgslsmith_mod_i32(0i, u_input.d.x), -27296i, arg_0.x), global2.d), var_1.x));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1209f, 615f, 2546f) + vec3<f32>(157f, -1936f, -490f)) + vec3<f32>(-363f, 784f, 375f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-442f, 147f, -2387f), vec3<f32>(-292f, 1000f, 569f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, 1343f, 236f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-410f, -1321f, 1510f)))))));
    let var_1 = global2.d.zx;
    var var_2 = u_input.a;
    return func_5(min(_wgslsmith_mod_vec2_i32(-global2.d.xw, -func_2(-592f, false)), _wgslsmith_div_vec2_i32(-(~vec2<i32>(u_input.d.x, -63178i)), vec2<i32>(1i, 41824i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~select(vec2<u32>(global0.c.x, global0.c.x) << (vec2<u32>(1u, u_input.e.x) % vec2<u32>(32u)), vec2<u32>(35937u, u_input.b.x), global2.c.a) >> (global2.a.c % vec2<u32>(32u)));
    var var_1 = func_5(vec2<i32>(var_0.d.x << (24184u % 32u), -10699i)).b;
    var var_2 = global1[_wgslsmith_index_u32(~(~(~(60324u ^ global0.c.x))) & _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mult_u32(0u, ~select(1u, var_0.a.c.x, false))), 18u)];
    var var_3 = global2.c.c.x;
    global1 = array<vec3<i32>, 18>();
    var_1 = func_4(Struct_4(countOneBits(abs(17053i)), vec2<u32>(var_0.c.c.x, ~(~global2.a.c.x)), any(select(vec3<bool>(global0.a.x, false, global0.b.x), var_0.c.b.zxw, vec3<bool>(false, global0.a.x, false))), func_1(~(~var_0.a.c)), var_0), _wgslsmith_f_op_f32(-643f - _wgslsmith_f_op_f32(select(-1310f, _wgslsmith_f_op_f32(select(1f, 610f, !global2.a.a.x)), _wgslsmith_f_op_f32(-135f + -508f) < _wgslsmith_f_op_f32(select(-426f, -1000f, true))))), _wgslsmith_f_op_f32(floor(1011f)), _wgslsmith_add_i32(-global2.d.x, -2147483647i));
    var var_4 = 244f;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 16291i), vec2<i32>(1339i, i32(-1i) * -2147483647i), _wgslsmith_mult_vec2_i32(global2.d.yx, vec2<i32>(var_0.d.x, -1i)) >> (~vec2<u32>(u_input.e.x, global0.c.x) % vec2<u32>(32u)))).d);
}

