struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_5) -> f32 {
    var var_0 = Struct_2(-839f);
    let var_1 = Struct_3(~u_input.a.x);
    var_0 = Struct_2(arg_1.c.b.x);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(498f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(-var_0.a)) + -829f), _wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - 567f), _wgslsmith_f_op_f32(f32(-1f) * -539f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_1.c.b + var_2.c.b)))) + _wgslsmith_f_op_vec4_f32(-var_2.c.b)));
    return -596f;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    var var_0 = countOneBits(vec3<u32>(0u, 44778u, min(u_input.a.x, _wgslsmith_add_u32(56953u << (u_input.a.x % 32u), 0u))));
    let var_1 = Struct_5(942f, abs(~vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(522f, vec4<f32>(_wgslsmith_div_f32(-197f, -122f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -631f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, Struct_5(189f, vec4<i32>(-2147483647i, 2147483647i, -1i, 1309i), Struct_1(-563f, vec4<f32>(903f, -565f, -1029f, 932f), vec4<i32>(1i, 2147483647i, 35315i, -1i), vec2<bool>(arg_0, false), 0i)))) + _wgslsmith_f_op_f32(abs(1328f)))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(1i, 1i, 1i, 1i)), select(select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), vec2<bool>(arg_0, true), select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), true)), vec2<bool>(arg_0, var_0.x > 4294967295u), all(select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, false, false), arg_0))), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, -23964i), firstTrailingBit(-9999i))));
    var var_2 = 1u;
    var var_3 = true;
    let var_4 = select(select(vec3<bool>(var_1.c.d.x, true, !all(vec4<bool>(var_1.c.d.x, var_1.c.d.x, var_1.c.d.x, var_1.c.d.x))), select(select(select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, arg_0)), vec3<bool>(var_1.c.d.x, var_1.c.d.x, arg_0), any(var_1.c.d)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, var_1.c.d.x, false), vec3<bool>(var_1.c.d.x, arg_0, var_1.c.d.x), true), select(vec3<bool>(var_1.c.d.x, arg_0, arg_0), vec3<bool>(true, true, true), false)), !var_1.c.d.x), !arg_0), select(!(!vec3<bool>(false, var_1.c.d.x, true)), !select(vec3<bool>(true, false, false), select(vec3<bool>(var_1.c.d.x, var_1.c.d.x, var_1.c.d.x), vec3<bool>(false, var_1.c.d.x, false), var_1.c.d.x), !var_1.c.d.x), vec3<bool>(true, true, true)), any(vec3<bool>(true, any(vec3<bool>(true, true, true)), true)));
    return 124511u;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = func_2(all(arg_0.zzz), vec2<u32>(15806u, abs(1u) ^ ~u_input.a.x));
    let var_1 = arg_1;
    let var_2 = arg_1.b.c.zxy | (vec3<i32>(countOneBits(0i), -9145i, var_1.c.x) | var_1.b.c.wyy);
    let var_3 = _wgslsmith_dot_vec2_i32(~var_2.yz, abs(vec2<i32>(var_1.c.x, var_1.b.c.x)));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-726f))));
    return Struct_3(u_input.a.x);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(623f * arg_0)), Struct_1(2233f, vec4<f32>(_wgslsmith_div_f32(583f, -915f), -1048f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1011f * -1879f))), abs(firstTrailingBit(vec4<i32>(-1i, -26611i, arg_1, arg_1) & vec4<i32>(arg_1, -1i, arg_1, 0i))), vec2<bool>(true, true && all(vec4<bool>(false, false, true, true))), firstLeadingBit(21368i)), -(~(~vec2<i32>(arg_1, arg_1))));
    var var_1 = _wgslsmith_add_i32(firstTrailingBit(var_0.c.x >> (func_1(select(vec4<bool>(var_0.b.d.x, false, true, true), vec4<bool>(false, true, var_0.b.d.x, var_0.b.d.x), vec4<bool>(false, false, false, var_0.b.d.x)), var_0, _wgslsmith_f_op_f32(select(arg_0, var_0.a, var_0.b.d.x)), arg_2.a).a % 32u)), 0i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_3(var_0.b.d.x, Struct_5(-378f, -vec4<i32>(-1i, -3122i, 17711i, -2147483647i), var_0.b))));
    var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1, _wgslsmith_sub_i32(var_0.b.e, arg_1)), -1i) << (~58933u % 32u), _wgslsmith_mult_i32(-7165i, var_0.c.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(var_0.b.b.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.b.b.yw, var_0.b.b.xz)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1258f)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(-2767f, -2147483647i, func_1(vec4<bool>(true, false, true, true), Struct_4(-866f, Struct_1(1876f, vec4<f32>(1257f, 1464f, -1000f, 510f), vec4<i32>(26150i, -1243i, 2147483647i, 2147483647i), vec2<bool>(false, true), 5959i), vec2<i32>(-2147483647i, -9417i)), 185f, u_input.a.x), _wgslsmith_add_u32(55384u, 51504u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(355f, 357f, 1472f, 1297f) + vec4<f32>(1000f, 380f, -964f, 415f)) * _wgslsmith_div_vec4_f32(vec4<f32>(664f, -1203f, -939f, -442f), vec4<f32>(1602f, -790f, 602f, 409f)))), vec4<i32>(1i, 1i, 1i, 1i), vec2<bool>(true, !any(vec4<bool>(true, true, true, false))), 0i), vec2<i32>(-1i) * -firstLeadingBit(-vec2<i32>(44649i, 18071i)));
    var var_1 = var_0.b.d.x;
    var_1 = false;
    var var_2 = vec3<i32>(2980i, min(var_0.b.e, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0.b.c.wzz, var_0.b.c.yxw), var_0.b.e >> (0u % 32u))), ((3010i | var_0.b.e) >> ((u_input.a.x | u_input.a.x) % 32u)) ^ firstLeadingBit(51954i)) & _wgslsmith_div_vec3_i32(-countOneBits(var_0.b.c.wwy), var_0.b.c.xwy);
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b.b.xxx, var_0.b.b.yxy, !var_0.b.d.x)))), select(1u, _wgslsmith_div_u32(~(~4294967295u), 67895u), var_0.b.d.x));
}

