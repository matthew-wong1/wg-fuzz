struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(0i), Struct_1(23865i), Struct_1(2147483647i), Struct_1(0i), Struct_1(-24724i), Struct_1(0i), Struct_1(-40935i), Struct_1(36690i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(0i), Struct_1(2147483647i), Struct_1(0i), Struct_1(0i), Struct_1(2147483647i), Struct_1(-20932i), Struct_1(1i), Struct_1(40903i), Struct_1(27186i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(1i), Struct_1(56130i), Struct_1(2147483647i), Struct_1(0i), Struct_1(-49i), Struct_1(29260i), Struct_1(-46780i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<bool> {
    var var_0 = 721f;
    global0 = array<Struct_1, 8>();
    var var_1 = Struct_3(vec4<bool>(true, -(~(-35567i)) >= min(u_input.a.x, u_input.a.x), !all(vec2<bool>(true, true)), !any(vec2<bool>(true, true))));
    var var_2 = Struct_1(-17596i);
    var var_3 = -abs(max(~u_input.a & _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(var_2.a, u_input.d.x, -30525i, u_input.a.x)), select(firstTrailingBit(vec4<i32>(var_2.a, 30504i, -2147483647i, 14411i)), -vec4<i32>(5007i, -59701i, u_input.d.x, u_input.d.x), var_1.a)));
    return vec4<bool>(true, !var_1.a.x, all(vec3<bool>(var_1.a.x, true, false)), var_1.a.x);
}

fn func_2() -> u32 {
    var var_0 = vec4<f32>(-933f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f - 304f) + -111f))))), -2525f, _wgslsmith_f_op_f32(-1f));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1245f, var_0.x, _wgslsmith_f_op_f32(abs(730f)), 354f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-617f, -1128f, var_0.x, var_0.x) - vec4<f32>(-1164f, -569f, 1192f, -2363f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(776f, -1913f, -137f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1388f, var_0.x, -1000f)))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, -8320i), -u_input.c.x))));
    var var_2 = Struct_3(func_3());
    let var_3 = select(_wgslsmith_sub_vec4_i32(abs(u_input.a), u_input.a), max(select(u_input.a, u_input.a, vec4<bool>(var_2.a.x, var_2.a.x, true, true)), u_input.a) ^ abs(u_input.a), !(!(!var_2.a)));
    return ~select(1u, select(~1u, 27122u, (var_0.x <= 274f) & all(var_2.a.wxz)), any(select(var_2.a, vec4<bool>(false, false, var_2.a.x, true), var_2.a.x)) && var_2.a.x);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(func_3());
    global2 = array<Struct_1, 28>();
    var var_1 = arg_1.wyw;
    var var_2 = arg_2;
    let var_3 = ~(~(~(~(~arg_2))));
    return Struct_1(firstTrailingBit(min(firstLeadingBit(1i), arg_3.x)));
}

fn func_1(arg_0: Struct_3) -> vec3<u32> {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(20519u, abs(_wgslsmith_div_u32(0u, 9941u))) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~1u, _wgslsmith_add_u32(1u, 0u)), countOneBits(~vec3<u32>(0u, 34429u, 16383u))), 1192u, 0u), 8u)];
    var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-512f, 831f)), -1068f, true)))), vec4<u32>(~57349u, min(28752u, ~(~44273u)), 7476u, ~_wgslsmith_mod_u32(func_2(), ~50041u)), 50690u, -(_wgslsmith_sub_vec2_i32(u_input.c.yx << (vec2<u32>(5703u, 58758u) % vec2<u32>(32u)), vec2<i32>(var_0.a, u_input.a.x) & u_input.c.xz) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.d.x) & vec2<i32>(var_0.a, 1i), u_input.a.zy)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(731f, -1372f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1033f * -288f), _wgslsmith_f_op_f32(-1449f + -563f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1544f), _wgslsmith_f_op_f32(sign(-151f))))));
    return ~(~(~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(62477u, 8519u, 3649u)), countOneBits(vec3<u32>(1u, 4294967295u, 1u)), vec3<u32>(34929u, 0u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~min(~_wgslsmith_dot_vec4_u32(vec4<u32>(41930u, 0u, 4294967295u, 0u), vec4<u32>(34514u, 0u, 1u, 633u)), 0u), 12762u);
    let var_1 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true), true);
    let var_2 = countOneBits(1u);
    global0 = array<Struct_1, 8>();
    var var_3 = (vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(268u, 60945u), vec2<u32>(4294967295u, var_0.x)), countOneBits(~4294967295u), var_2) ^ _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x) & vec3<u32>(var_0.x, var_2, 53997u), vec3<u32>(1u, var_2, 53391u) & vec3<u32>(var_2, 1u, var_2)), vec3<u32>(1u, _wgslsmith_mod_u32(var_2, 0u), var_2))) ^ _wgslsmith_sub_vec3_u32(~(~vec3<u32>(1u, 75349u, 11518u)), func_1(Struct_3(select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, false, false, true)))));
    var var_4 = Struct_1(u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2, var_0.x, 0u), vec3<u32>(163637u, var_2, 1u)), ~vec3<u32>(var_3.x, var_3.x, var_2), abs(vec3<u32>(41694u, var_3.x, var_2))) ^ (~vec3<u32>(0u, var_3.x, 76844u) ^ ~vec3<u32>(var_0.x, 4294967295u, var_3.x)), countOneBits(abs(vec3<u32>(var_2, var_3.x, var_3.x) << (vec3<u32>(3193u, var_3.x, 1467u) % vec3<u32>(32u)))), !func_3().wzw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -793f, 552f, 1000f))) - vec4<f32>(_wgslsmith_f_op_f32(1000f * -433f), _wgslsmith_f_op_f32(-535f * 196f), _wgslsmith_f_op_f32(384f - -1000f), _wgslsmith_f_op_f32(-202f + -717f)))));
}

