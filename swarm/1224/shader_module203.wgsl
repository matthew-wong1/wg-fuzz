struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> i32 {
    let var_0 = vec2<u32>(3488u, u_input.d);
    var var_1 = Struct_5(37646i);
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a.b.x, -_wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.a.b.x, arg_1.a.b.x), 66371i)), -(abs(~u_input.c.xy) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(8766u, u_input.d), arg_1.a.c.yz) % vec2<u32>(32u))));
    let var_3 = abs(vec2<u32>(_wgslsmith_clamp_u32(53754u, 1u, var_0.x), arg_1.a.a));
    var_1 = Struct_5(_wgslsmith_sub_i32(u_input.a.x, u_input.c.x));
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = vec3<i32>(-(~2147483647i | firstTrailingBit(_wgslsmith_sub_i32(u_input.c.x, arg_0))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(-arg_1))) * arg_1), Struct_4(Struct_1(~u_input.d, -arg_2.zzw, vec3<u32>(0u, u_input.d, u_input.d) | vec3<u32>(u_input.d, u_input.d, u_input.d), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))))), _wgslsmith_sub_i32(~u_input.b, func_3(-664f, Struct_4(Struct_1(0u, vec3<i32>(15987i, u_input.c.x, arg_0), vec3<u32>(86030u, 78499u, u_input.d), vec2<bool>(false, false))))));
    let var_1 = u_input.c.xx;
    var var_2 = Struct_3(Struct_2(arg_3.x), Struct_2(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1077f)), _wgslsmith_f_op_f32(f32(-1f) * -461f), false)))), -min(2147483647i, countOneBits(i32(-1i) * -2147483647i)), arg_1, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(~49864u, _wgslsmith_mod_u32(u_input.d, u_input.d), 29675u, 0u), vec4<u32>(u_input.d, _wgslsmith_add_u32(3627u, u_input.d), u_input.d, u_input.d | 4294967295u))));
    let var_3 = 1u;
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~abs(~var_1.x), arg_2.x, 2147483647i), vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(arg_2.yyy, abs(min(vec3<i32>(var_2.c, var_0.x, var_0.x), vec3<i32>(var_1.x, 19832i, -7838i)))), var_1.x), select(u_input.c, vec3<i32>(-2147483647i, 1i ^ _wgslsmith_div_i32(-6010i, u_input.c.x), (-1i | arg_0) | (var_2.c ^ 0i)), vec3<bool>(true, true, true)));
    return Struct_2(-1019f);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-933f + -351f)) + _wgslsmith_f_op_f32(-367f * _wgslsmith_f_op_f32(select(-1216f, 1536f, false))))), func_2(~(~0i), _wgslsmith_f_op_f32(-1627f - -1016f), -((vec4<i32>(1i, u_input.b, 2147483647i, u_input.a.x) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, 1u) % vec4<u32>(32u))) << (~vec4<u32>(u_input.d, u_input.d, 54255u, 75328u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1903f, -265f, _wgslsmith_f_op_f32(901f - -1689f), -2190f))), -(-(u_input.a.x ^ 31831i) & reverseBits(_wgslsmith_mult_i32(-1i, 1i))), -440f, vec4<u32>(max(41749u, min(u_input.d, u_input.d)), firstLeadingBit(~(~u_input.d)), max(27446u, 8029u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 30961u), vec2<u32>(1u, 14979u)) << (~u_input.d % 32u))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, -1080f, var_0.b.a, var_0.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, var_0.a.a, var_0.b.a, 1000f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, var_0.a.a, -1085f, 370f) + vec4<f32>(892f, var_0.b.a, var_0.a.a, 1042f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, -1859f, var_0.d, -585f) + vec4<f32>(var_0.a.a, -1179f, var_0.b.a, 147f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, var_0.d, 1686f, var_0.b.a)), vec4<f32>(2156f, var_0.b.a, 988f, _wgslsmith_f_op_f32(f32(-1f) * -615f)))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-261f)), 933f, !var_1)));
    var var_4 = ~u_input.c.x;
    return Struct_1(~(~(~u_input.d)), -u_input.c, vec3<u32>((~u_input.d | abs(40804u)) & u_input.d, 1u, 3914u), vec2<bool>(false != (1i < _wgslsmith_clamp_i32(u_input.c.x, -39259i, var_0.c)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_4(var_0);
    var var_2 = ~_wgslsmith_dot_vec4_u32(abs(firstTrailingBit(~vec4<u32>(var_0.c.x, u_input.d, 17061u, var_1.a.a))), ~vec4<u32>(1u, ~var_0.a, 1u, 60596u << (var_0.c.x % 32u)));
    var var_3 = -12945i;
    var var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b.x, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, var_0.b.x, var_1.a.b.x, var_1.a.b.x)), vec4<i32>(-2147483647i, u_input.a.x, u_input.b, u_input.b))), abs(-abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.b.x, u_input.a.x), vec2<i32>(-2147483647i, 1i)))), u_input.a);
    var var_5 = !select(select(vec3<bool>(true || var_0.d.x, var_1.a.d.x, var_0.d.x), vec3<bool>(var_1.a.d.x, any(vec2<bool>(var_0.d.x, var_1.a.d.x)), true), var_0.d.x), !vec3<bool>(select(true, false, var_1.a.d.x), var_0.d.x, true), !(!vec3<bool>(false, true, var_1.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1570f, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-144f * 1538f), _wgslsmith_f_op_f32(f32(-1f) * -262f))), -948f)), 1976f), 779f, _wgslsmith_mod_vec2_i32(func_1().b.zy, vec2<i32>(0i, -var_1.a.b.x)));
}

