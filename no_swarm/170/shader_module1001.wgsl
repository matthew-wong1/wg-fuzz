struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<i32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    let var_1 = arg_0.wxz;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.b, arg_2.b))))), 1369f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f) + _wgslsmith_f_op_f32(f32(-1f) * -1427f))) + _wgslsmith_div_f32(843f, -788f)), -1887f, _wgslsmith_f_op_f32(-arg_2.b));
    let var_3 = Struct_1(~(~u_input.d));
    var var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(_wgslsmith_add_u32(var_0.a, 0u), 6415u)), ~_wgslsmith_clamp_u32(~var_0.a, countOneBits(var_3.a << (var_0.a % 32u)), abs(1u)), firstTrailingBit(u_input.c.x | ~(arg_2.a << (u_input.d % 32u))), var_3.a);
    return ~4294967295u >> (_wgslsmith_clamp_u32(63644u, 101277u, 6051u) % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = 40152i;
    let var_1 = Struct_1(_wgslsmith_add_u32(~19576u, ~(~u_input.c.x)));
    var var_2 = Struct_2(~1542u, 1f);
    var var_3 = Struct_1(_wgslsmith_mult_u32(func_3(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xzx, vec3<i32>(-2147483647i, 47695i, 27998i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -28928i, -91415i, 0i), u_input.a), 19785i, var_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, var_2.b)), vec2<f32>(1f, 1f)), Struct_2(1u, _wgslsmith_f_op_f32(f32(-1f) * -299f))), u_input.c.x));
    var_2 = Struct_2(~var_2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, 874f) - _wgslsmith_f_op_f32(trunc(var_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_2.b))) - var_2.b), true)));
    return Struct_2(select(~abs(~1u), ~abs(max(var_1.a, 3874u)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = reverseBits(~(-max(12389i, -2147483647i))) <= -_wgslsmith_mod_i32(-u_input.a.x, reverseBits(u_input.b));
    var var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(37455u, arg_2, arg_3.a, arg_3.a) ^ vec4<u32>(4294967295u, arg_0.a, u_input.c.x, arg_2), vec4<u32>(31861u, arg_3.a, 4294967295u, 53015u) & vec4<u32>(14048u, arg_0.a, 0u, 82116u), vec4<bool>(arg_1, var_0, var_0, true)), max(vec4<u32>(u_input.c.x, arg_2, arg_2, 8392u), vec4<u32>(u_input.d, arg_0.a, arg_3.a, 5710u)) >> (~vec4<u32>(4294967295u, 42451u, u_input.d, arg_3.a) % vec4<u32>(32u))), ~(vec4<u32>(_wgslsmith_sub_u32(arg_3.a, 0u), 89369u, 4294967295u, abs(arg_3.a)) << (select(firstLeadingBit(vec4<u32>(arg_2, 4294967295u, arg_2, 1u)), vec4<u32>(13232u, 5098u, arg_3.a, 0u) & vec4<u32>(u_input.d, arg_2, 36108u, arg_3.a), arg_1) % vec4<u32>(32u))));
    var var_2 = Struct_1(arg_0.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-511f - arg_3.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1080f), arg_3.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(412f, arg_3.b)) * _wgslsmith_f_op_f32(-arg_3.b))), 0i != _wgslsmith_mult_i32(-9506i & u_input.b, u_input.b >> (1u % 32u)))));
    var var_4 = arg_3.a;
    return u_input.c.xy;
}

fn func_1() -> bool {
    let var_0 = ~func_4(Struct_1(~min(u_input.c.x, 10148u)), true, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(43563u, 60808u, 223u), u_input.c), vec3<u32>(4294967295u, u_input.d, u_input.c.x) | u_input.c), func_2());
    let var_1 = (i32(-1i) * -(~max(u_input.b, u_input.b))) ^ -16439i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) * _wgslsmith_f_op_f32(-843f - -961f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-313f, 581f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1795f, 461f) + _wgslsmith_f_op_f32(trunc(-383f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1215f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) * vec3<f32>(var_2.x, var_2.x, 2761f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 166f, -1215f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(883f, var_2.x, 954f) + vec3<f32>(454f, 1965f, var_2.x)))) + vec3<f32>(526f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_2.x)))), _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(round(var_2.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), 1f, func_2().b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1043f, 610f, -1350f) - vec3<f32>(var_2.x, var_2.x, var_2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 188f, var_2.x) + vec3<f32>(var_2.x, 1524f, var_2.x)))))));
    let var_3 = u_input.c.x;
    return all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), u_input.c.x >= u_input.c.x), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-var_2.x) > _wgslsmith_f_op_f32(-var_2.x))) || !((_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, var_1, -31169i), u_input.a) > ~(-1i)) | (-188f >= _wgslsmith_f_op_f32(var_2.x * var_2.x)));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: bool) -> i32 {
    let var_0 = Struct_1(min(17789u, 1u));
    let var_1 = all(vec3<bool>(arg_3, arg_3, !(~4294967295u <= func_4(Struct_1(1u), arg_1, 0u, Struct_2(var_0.a, arg_0)).x)));
    var var_2 = u_input.b;
    let var_3 = Struct_2(4294967295u, -1077f);
    let var_4 = var_3;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(380f)), _wgslsmith_f_op_f32(118f - 423f)))), any(vec3<bool>(true, true, func_1())), u_input.d, all(vec2<bool>(true, true)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(775f)), 1000f);
    var var_2 = vec3<f32>(539f, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(117f)))))), 277f);
    var_1 = var_2.yy;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), -545f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f))), all(vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1348f))))), _wgslsmith_dot_vec3_i32(u_input.a.yyw, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(21930i, var_0, 0i), u_input.a.xzz ^ vec3<i32>(u_input.a.x, -1i, 23897i), ~u_input.a.yxy)), var_1.x, vec4<i32>(_wgslsmith_clamp_i32(-10577i, ~12980i, -u_input.b), 8968i, _wgslsmith_sub_i32(var_0, var_0) ^ min(-1i, -10517i), 1i | (u_input.b >> (4294967295u % 32u))) & vec4<i32>(firstTrailingBit(u_input.b), _wgslsmith_mod_i32(-21327i, u_input.b) & var_0, abs(1i), -var_0));
}

