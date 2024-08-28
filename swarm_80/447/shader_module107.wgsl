struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: bool) -> u32 {
    var var_0 = 1u;
    var_0 = ~min(_wgslsmith_add_u32(arg_2.a.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(10130u, 11658u, arg_2.a.a), vec3<u32>(arg_1.x, 24231u, arg_2.a.a))), arg_2.a.a);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec3_i32(max(vec3<i32>(~u_input.a | u_input.b, max(-12060i, 57587i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i) >> (vec4<u32>(arg_2.a.a, 4294967295u, arg_2.a.a, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.a, -11569i, u_input.a, 26940i))), -select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -46446i, u_input.b), vec3<i32>(2147483647i, u_input.b, u_input.b)), max(vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<i32>(-2147483647i, u_input.a, -2147483647i)), !vec3<bool>(arg_3, false, arg_3))), vec3<i32>(-(~u_input.a), 1i, 57424i));
    var var_3 = countOneBits(arg_1.x);
    return arg_2.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(sign(arg_2.x)));
    var var_1 = _wgslsmith_add_u32(countOneBits(69356u), arg_1.x);
    var var_2 = Struct_5(Struct_2(1u));
    return _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(47314u, var_2.a.a, 61432u), arg_1.x);
}

fn func_2() -> f32 {
    var var_0 = ~countOneBits(~1u) < (func_4(Struct_1(vec4<bool>(true, true, false, true)), vec3<u32>(23716u, countOneBits(4294967295u), func_3(-2295f, vec2<u32>(0u, 4051u), Struct_5(Struct_2(1u)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(307f, -1359f, 1000f)))), vec3<i32>(1i, 0i, 1i)) | _wgslsmith_clamp_u32(max(~43928u, _wgslsmith_dot_vec4_u32(vec4<u32>(53875u, 104384u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 4628u, 22588u))), 17948u, max(22527u, _wgslsmith_div_u32(14275u, 4294967295u))));
    let var_1 = max(vec2<u32>(1u, 1u), ~vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(8033u, 4294967295u, 61583u)), _wgslsmith_sub_u32(~0u, ~4294967295u)));
    var var_2 = Struct_3(Struct_1(!vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), u_input.b);
    var_2 = Struct_3(var_2.a, 1i);
    var var_3 = Struct_2(23291u);
    return 1822f;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(794f * 443f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    let var_1 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12851u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x)), arg_0.x), 30103u, 20179u ^ arg_0.x), ~(~(~1u)));
    let var_2 = 34339u;
    let var_3 = true;
    var_0 = -1609f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(731f, -922f), _wgslsmith_f_op_f32(select(1000f, 1000f, var_3)), _wgslsmith_f_op_f32(281f + 768f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-551f)), _wgslsmith_f_op_f32(step(-1283f, 2637f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1105f + _wgslsmith_f_op_f32(round(761f))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-285f, 840f), 1281f))), -1546f));
}

fn func_5(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_2(min(max(89989u, 18916u), ~(~4294967295u)));
    var var_1 = Struct_1(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), all(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_4(Struct_2(50259u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(max(vec2<u32>(var_0.a, 23130u), vec2<u32>(var_0.a, var_0.a))), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.a, 4294967295u), vec2<u32>(var_0.a, 37858u))), reverseBits(vec2<u32>(_wgslsmith_div_u32(0u, var_0.a), abs(5762u)))));
    let var_3 = -1110f;
    var_2 = Struct_4(Struct_2(var_2.a.a), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(81337u, var_0.a, 7749u, 37235u)), vec4<u32>(var_2.b, 4294967295u, 54337u, 1u)) >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(14371u, 18783u), select(var_0.a, var_2.a.a, var_1.a.x)) % 32u)));
    return Struct_3(Struct_1(var_1.a), -countOneBits(min(~(-39097i), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(492f - -197f))) * _wgslsmith_f_op_f32(sign(-1241f))), _wgslsmith_f_op_f32(floor(-1000f)));
    var var_1 = 27189u;
    var_1 = ~7920u;
    let var_2 = ~(i32(-1i) * -(~u_input.a));
    let var_3 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(1u, 1u), _wgslsmith_clamp_i32(var_2, -2147483647i, var_2)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-399f, var_0, var_0), vec3<f32>(318f, 1000f, -1557f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))))));
    var_1 = 6962u;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-962f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -1130f, 1182f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, -1649f, 775f))), !select(vec3<bool>(var_3.a.a.x, var_3.a.a.x, true), vec3<bool>(true, var_3.a.a.x, false), var_3.a.a.wyy)))), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2414f), _wgslsmith_div_f32(948f, 1f)))), var_0);
}

