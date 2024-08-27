struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var var_1 = abs(min(~(46891u | (89523u | arg_0)), countOneBits(select(u_input.b.x, u_input.b.x, true) >> ((30249u << (1u % 32u)) % 32u))));
    var var_2 = _wgslsmith_mult_vec2_u32(u_input.b.zz, _wgslsmith_sub_vec2_u32(u_input.b.xz, u_input.b.zx));
    var_2 = ~(~vec2<u32>(reverseBits(countOneBits(1u)), reverseBits(0u) << (countOneBits(1754u) % 32u)));
    var_1 = ~(~max(4294967295u, _wgslsmith_sub_u32(u_input.b.x, 11209u)));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, var_0, var_0) * vec3<f32>(arg_1, -428f, 1202f))))))));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -862f)))), _wgslsmith_f_op_vec3_f32(func_3(~(~u_input.b.x), 1000f)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.b.x))))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(85607u, -206f)).x))), 1428f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.a.x)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(-590f)), 2577f), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))))));
    var var_2 = 0u;
    let var_3 = select(countOneBits(vec4<u32>(max(72344u >> (u_input.b.x % 32u), ~u_input.b.x), _wgslsmith_div_u32(reverseBits(1u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), 0u, u_input.b.x)), ~vec4<u32>(~1u, _wgslsmith_add_u32(u_input.b.x & u_input.b.x, 4294967295u), ~13132u, u_input.b.x), all(vec2<bool>(_wgslsmith_div_i32(u_input.a, u_input.a) != select(u_input.a, 24021i, false), true)));
    var_2 = ~43329u;
    return vec2<i32>(u_input.a, firstTrailingBit(_wgslsmith_mult_i32(-8171i, u_input.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = 673f <= _wgslsmith_f_op_f32(361f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.b.x))))));
    let var_1 = _wgslsmith_dot_vec2_u32(reverseBits(~(~(~vec2<u32>(36695u, 4294967295u)))), ~vec2<u32>(select(~0u, u_input.b.x >> (1u % 32u), true), 25853u));
    var var_2 = countOneBits(firstLeadingBit(countOneBits(firstLeadingBit(vec3<i32>(2659i, u_input.a, arg_2))) >> (~(u_input.b << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_3 = Struct_1(arg_1.a, arg_1.a);
    var_2 = reverseBits(vec3<i32>(~(-2147483647i), -1i, 0i) << (~u_input.b % vec3<u32>(32u)));
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = abs(-1i) > _wgslsmith_clamp_i32(~u_input.a, ~u_input.a, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), -2147483647i), u_input.a));
    let var_1 = vec2<bool>(-(~(~14425i)) != u_input.a, any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))) || (u_input.a > _wgslsmith_add_i32(abs(-26649i), -41823i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-898f, 519f, -310f), vec3<f32>(-353f, 249f, -649f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(468f, -653f, 2587f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(996f, 334f, -701f), vec3<f32>(-1412f, 119f, -1467f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1195f, -1000f, -1358f))))))));
    let var_3 = func_4(select(vec2<i32>(0i, _wgslsmith_add_i32(u_input.a, firstTrailingBit(-67763i))), ((vec2<i32>(-2147483647i, u_input.a) << (u_input.b.yz % vec2<u32>(32u))) | vec2<i32>(u_input.a, u_input.a)) ^ firstLeadingBit(func_2()), false && all(vec3<bool>(var_1.x, false, var_1.x))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1149f, -212f, var_2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1066f, 879f, 984f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) * vec3<f32>(var_2.x, 1464f, var_2.x)))), -6517i);
    var_0 = true;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_1 = func_1();
    var var_2 = select(_wgslsmith_mod_vec2_i32(abs(-vec2<i32>(-1i, -77714i)), vec2<i32>(u_input.a, min(u_input.a, -2147483647i))), ~(-(~vec2<i32>(u_input.a, u_input.a) << (reverseBits(u_input.b.zz) % vec2<u32>(32u)))), vec2<bool>(9464i >= -u_input.a, any(vec2<bool>(var_1.b.x <= -999f, all(vec3<bool>(true, false, true))))));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.x + -694f), -579f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -877f) + 2785f)), 456f), _wgslsmith_f_op_vec3_f32(var_1.b + var_1.a));
    let var_4 = Struct_1(var_1.b, var_3.b);
    let var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-reverseBits(_wgslsmith_mult_i32(u_input.a, 2147483647i)), var_2.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, 15272i, var_2.x, var_2.x), vec4<i32>(u_input.a, -5119i, -60090i, u_input.a), all(vec2<bool>(false, true))), firstLeadingBit(-vec4<i32>(0i, u_input.a, var_2.x, 0i))), max(-2794i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-21267i, -2147483647i), vec2<i32>(u_input.a, -1865i)), func_2()))));
}

