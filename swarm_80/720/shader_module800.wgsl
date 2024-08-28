struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    var var_0 = Struct_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1208f)), _wgslsmith_f_op_f32(abs(1738f))) * _wgslsmith_f_op_vec2_f32(select(arg_1.b, _wgslsmith_f_op_vec2_f32(round(arg_1.b)), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.b)))));
    var_0 = Struct_3(85952u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b))));
    let var_1 = Struct_2(countOneBits(4294967295u), arg_1.b.x, vec2<u32>(37645u, 1u));
    let var_2 = _wgslsmith_mod_vec4_i32(-min(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -56089i, -30766i), arg_0 ^ vec4<i32>(-20097i, -25415i, 46788i, 2147483647i)), arg_0), vec4<i32>(abs(max(~(-2147483647i), _wgslsmith_dot_vec2_i32(arg_0.zw, arg_0.yw))), _wgslsmith_add_i32(0i << (1u % 32u), -u_input.c), 34301i, u_input.c));
    var_0 = Struct_3(~_wgslsmith_mult_u32(~max(u_input.b.x, 1u), u_input.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-1208f - var_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(var_0.b.x * -548f)), -726f)));
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_2.b.x;
    var var_1 = firstTrailingBit(min(vec3<i32>(_wgslsmith_mod_i32(1i, -u_input.c), min(arg_3.a >> (1u % 32u), -22865i), max(-2147483647i, arg_3.a)), vec3<i32>(arg_3.a, -2147483647i, firstTrailingBit(firstTrailingBit(-1i)))));
    var_0 = -113f;
    var_0 = arg_2.b.x;
    return _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x) | arg_0.c, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), u_input.a.zz) & _wgslsmith_clamp_vec2_u32(u_input.b.yw, arg_0.c, arg_0.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_2.a), _wgslsmith_mult_u32(1u, 4017u), ~arg_0.a), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.yyz, u_input.b.xwz), abs(vec3<u32>(arg_2.a, 30048u, 18562u)), u_input.b.yww)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.zxw, u_input.a.yyz & vec3<u32>(arg_2.a, u_input.b.x, arg_0.a)), ~select(arg_2.a, 98418u, arg_1.x)), arg_2.a));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_3(~(~_wgslsmith_clamp_u32(4294967295u, max(u_input.b.x, 29513u), ~4959u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    let var_1 = Struct_3(48591u, var_0.b);
    let var_2 = u_input.a.x;
    let var_3 = func_4(Struct_2(8923u, -557f, _wgslsmith_clamp_vec2_u32(max(vec2<u32>(80900u, 0u), vec2<u32>(23426u, 16500u)), u_input.b.wy ^ u_input.a.xz, u_input.b.xx)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, func_3(vec4<i32>(14380i, -49309i, -34368i, 2147483647i), var_1))), Struct_3(12584u, vec2<f32>(var_1.b.x, -2460f)), Struct_1(u_input.c)) >> ((vec4<u32>(63332u, 0u, 15816u, _wgslsmith_dot_vec3_u32(~u_input.b.zwy, _wgslsmith_mult_vec3_u32(u_input.a.wxx, u_input.b.ywy))) << (abs(min(u_input.a, vec4<u32>(var_1.a, var_1.a, var_0.a, 54784u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_4 = Struct_2(1u, var_0.b.x, u_input.a.yw);
    return -698f;
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(func_2(vec2<i32>(-1i) * -(~(vec2<i32>(u_input.c, 2147483647i) ^ vec2<i32>(-1i, 2346i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -131f) + 811f) + _wgslsmith_f_op_f32(-1f));
    let var_1 = Struct_1(~countOneBits(_wgslsmith_sub_i32(i32(-1i) * -35564i, _wgslsmith_mult_i32(u_input.c, u_input.c))));
    var var_2 = Struct_3(_wgslsmith_div_u32(firstLeadingBit(18950u) >> (_wgslsmith_div_u32(47666u, firstTrailingBit(u_input.a.x)) % 32u), ~20229u), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(630f, 644f), vec2<f32>(-1716f, 588f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-468f, -381f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(func_1()))))));
    let var_3 = firstTrailingBit(~select(vec2<i32>(u_input.c, var_1.a), vec2<i32>(-2147483647i, 1i), select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), var_0)) & (-vec2<i32>(var_1.a, -57218i) | firstTrailingBit(vec2<i32>(var_1.a, -2147483647i) & vec2<i32>(u_input.c, var_1.a))));
    var_2 = Struct_3(30099u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1033f * var_2.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(countOneBits(~79214u), ~39632u, ~_wgslsmith_mult_u32(u_input.a.x, countOneBits(4294967295u))));
}

