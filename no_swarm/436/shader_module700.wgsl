struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.a;
    let var_1 = vec2<u32>(u_input.b, _wgslsmith_div_u32(1u, 4294967295u));
    var_0 = u_input.a;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(arg_2.a.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.a.xy)) * arg_2.a.xz), arg_2.c)), any(vec4<bool>(true, _wgslsmith_sub_u32(var_1.x, 1u) == ~16203u, !(var_1.x > u_input.b), true)), _wgslsmith_add_u32(~min(u_input.b, 11987u) << (20200u % 32u), var_1.x), arg_2);
    var var_3 = var_2;
    return ~select(var_1.x, select(var_1.x & 18443u, min(0u, u_input.b), !arg_2.c), !(arg_2.c | true)) >> (69598u % 32u);
}

fn func_2() -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = ~vec4<i32>(reverseBits(-select(-17167i, u_input.a.x, true)), u_input.a.x, var_0, ~u_input.a.x);
    let var_2 = u_input.b == ~func_3(-1707f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-257f, -536f)))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-620f, 381f, -1920f))), -400f, false, _wgslsmith_f_op_f32(f32(-1f) * -473f), -1468f));
    let var_3 = abs(abs(1u << (1u % 32u))) > (_wgslsmith_add_u32(~u_input.b ^ u_input.b, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), u_input.b, u_input.b << (6933u % 32u))) | u_input.b);
    let var_4 = Struct_3(vec2<bool>(true, true), Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(round(1104f)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1153f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1207f) + _wgslsmith_f_op_f32(1000f - 180f))), var_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -273f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f - 1054f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(157f, -870f, 1299f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(217f)), -421f)), -328f)), any(vec2<bool>(true, false)) & var_2, _wgslsmith_f_op_f32(1777f - _wgslsmith_f_op_f32(f32(-1f) * -152f)), -1573f), _wgslsmith_add_vec3_u32(select(max(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 23948u, u_input.b), vec3<u32>(59089u, 4294967295u, 0u)), vec3<u32>(u_input.b, u_input.b, 1u)), select(min(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 14885u, u_input.b)), vec3<u32>(u_input.b, u_input.b, 0u), false && var_3), !select(vec3<bool>(true, var_3, true), vec3<bool>(false, var_3, false), var_3)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, u_input.b)), u_input.b, select(1u, u_input.b, true)), firstTrailingBit(vec3<u32>(1u, 1u, u_input.b)) >> (firstLeadingBit(vec3<u32>(u_input.b, 83064u, u_input.b)) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.b, 4294967295u, 36323u)))));
    return _wgslsmith_mult_i32(firstLeadingBit(~_wgslsmith_dot_vec4_i32(var_1, var_1)), -1i);
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -261f), 132f, true)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(175f - -682f) - _wgslsmith_div_f32(748f, 741f))), -1334f);
    var_0 = true;
    var var_1 = 30795u;
    var var_2 = arg_0;
    var_0 = false;
    return any(!(!(!arg_2)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = vec2<u32>(14656u, _wgslsmith_mod_u32(arg_0.x, u_input.b));
    var_0 = func_4(u_input.a.x, vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.xzy), ~(~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x))), u_input.a.x, _wgslsmith_add_i32(~u_input.a.x | (i32(-1i) * -21690i), abs(func_2()))), vec4<bool>(false, true, false, 1u > _wgslsmith_mult_u32(~4294967295u, ~arg_0.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(287f, 1f, _wgslsmith_f_op_f32(-582f + -346f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, -2264f, 1886f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(973f, -116f, -1142f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1610f * 162f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), !(all(vec2<bool>(false, true)) && any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1413f, -2655f)))), 1f);
    var_1 = vec2<u32>(1u, u_input.b);
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(249f, var_2.b, 1018f) * vec3<f32>(994f, var_2.a.x, var_2.a.x))), var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * var_2.e) * var_2.d), any(vec2<bool>(!var_2.c, false)) || var_2.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(340f)))), _wgslsmith_f_op_f32(sign(var_2.a.x)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(19757u <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 121231u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)), abs(u_input.b)), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b))));
    var var_1 = arg_1.c;
    var_1 = arg_1.c;
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.yx)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(round(-1258f)))), arg_1.b)), arg_1.b == func_1(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b, 4294967295u)), select(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 44017u), arg_1.c))).b, 0u, arg_1);
    var var_3 = ~_wgslsmith_mult_u32(u_input.b, var_2.c);
    return func_1(~vec2<u32>(var_2.c, ~(~var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-238f, 877f, 1890f, 425f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1045f, -773f, -523f, -1594f), vec4<f32>(-517f, 337f, 1353f, -216f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, 379f, -250f, 1000f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1323f, _wgslsmith_div_f32(373f, 937f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -154f)), _wgslsmith_f_op_f32(step(227f, _wgslsmith_f_op_f32(-815f + -191f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-699f, -496f) * _wgslsmith_f_op_f32(abs(182f))))));
    var var_1 = func_5(vec2<i32>(abs(u_input.a.x), firstLeadingBit(-1i)), func_1(abs(~(~vec2<u32>(u_input.b, 1u)))));
    var_1 = func_5(max(~(u_input.a.yz | select(u_input.a.xz, u_input.a.zy, vec2<bool>(true, false))), u_input.a.zx), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1000f, var_1.e)), var_0.zxw))), var_0.x, var_1.c || true, 1222f, _wgslsmith_f_op_f32(round(var_0.x))));
    var_1 = func_1(vec2<u32>(u_input.b ^ (4294967295u >> (~u_input.b % 32u)), abs(31393u ^ u_input.b)));
    var var_2 = !(1u > u_input.b);
    var_2 = !(var_1.c | var_1.c);
    var var_3 = 68945u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d - -619f) - _wgslsmith_f_op_f32(step(-686f, _wgslsmith_f_op_f32(250f - 985f)))), 254f), _wgslsmith_mod_vec2_u32(abs(abs(vec2<u32>(u_input.b, 1u))), vec2<u32>(~(~u_input.b), u_input.b | _wgslsmith_sub_u32(25376u, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_1.a, var_0.xyw), var_0.ywx))), _wgslsmith_sub_u32(~reverseBits(u_input.b), ~(~u_input.b)) ^ 0u, var_0.zzx);
}

