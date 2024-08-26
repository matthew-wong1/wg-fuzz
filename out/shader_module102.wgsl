struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = !vec4<bool>((_wgslsmith_div_i32(u_input.a.x, u_input.d.x) | u_input.a.x) > ~(-1i), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(false, false, true, true))), true, true);
    var var_1 = vec2<i32>(-(~(u_input.b & arg_0)), 40087i);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1009f, 308f, -1000f, -212f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1277f, 795f, 214f, 504f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1105f, 1431f, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2330f, -1120f), 114f)), _wgslsmith_f_op_f32(abs(-2196f)), _wgslsmith_div_f32(-1023f, -1144f))));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.wyy + var_2.zyz)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1176f, var_2.x, var_2.x))) - var_2.ywy), var_2.zzz, !(u_input.c.x <= u_input.c.x))), true))));
}

fn func_2(arg_0: Struct_5) -> Struct_5 {
    let var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec4<bool>(true, true, false, false))), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 922f, 594f) * vec3<f32>(-715f, -668f, -286f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, -110f, -1191f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, 1209f, -934f))))));
    var var_2 = vec2<u32>(~43633u, 43551u);
    let var_3 = Struct_3(_wgslsmith_sub_u32(4294967295u, ~10455u >> (var_2.x % 32u)), select(u_input.c.zyz, u_input.c.ywy, select(var_0, !var_0, select(!vec3<bool>(var_0.x, var_0.x, true), select(var_0, vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), true))));
    let var_4 = var_0.x;
    return Struct_5(-29239i);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> f32 {
    var var_0 = func_2(Struct_5(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, 38975i, -18356i), vec4<i32>(43565i, -31297i, -1400i, u_input.b), u_input.d) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, arg_3.a, 1u, 4294967295u), vec4<u32>(u_input.c.x, arg_3.a, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 62101i, -35737i, 2147483647i), vec4<i32>(-1i, 2147483647i, -5487i, u_input.a.x)))));
    let var_1 = Struct_2(!select(!(!vec3<bool>(true, false, arg_1)), !vec3<bool>(arg_1, true, false), false), ~_wgslsmith_mult_vec4_i32(countOneBits(u_input.d), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, var_0.a, 1355i, var_0.a), u_input.d), u_input.d << (vec4<u32>(36170u, 4294967295u, 14835u, 1u) % vec4<u32>(32u)))), abs(firstTrailingBit(~vec2<u32>(arg_3.b.x, 0u))));
    var var_2 = var_1.a.x | ((u_input.c.x >> (~select(1u, 1u, false) % 32u)) != firstTrailingBit(9931u));
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_0.wzx - _wgslsmith_f_op_vec3_f32(round(arg_0.zxw)));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(1240f)), arg_2, arg_2);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(420f, 253f, 388f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), true, _wgslsmith_f_op_f32(-1464f - _wgslsmith_f_op_f32(-577f * -1000f)), Struct_3(u_input.c.x, vec3<u32>(u_input.c.x, 31273u, u_input.c.x)))))));
    let var_1 = -123f;
    var var_2 = Struct_4(vec2<u32>(_wgslsmith_dot_vec2_u32(select(u_input.c.zy >> (u_input.c.ww % vec2<u32>(32u)), select(u_input.c.ww, vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(true, true)), vec2<bool>(false, false)), countOneBits(vec2<u32>(u_input.c.x, 3493u))), 1u), u_input.c.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-396f, var_1)) - _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(func_1(var_0, true, 316f, Struct_3(76514u, u_input.c.xwz))))) != _wgslsmith_f_op_f32(-var_0.x);
    var_3 = var_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f - _wgslsmith_f_op_f32(-var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(-1i));
}

