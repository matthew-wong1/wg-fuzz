struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !(!arg_0.a.xz);
    var var_1 = Struct_2(arg_0.a, u_input.e.zz, 1i ^ _wgslsmith_div_i32(41237i, -2147483647i >> (u_input.d % 32u)), arg_0.d);
    var_1 = arg_0;
    var_1 = Struct_2(select(!(!select(var_1.a, arg_0.a, arg_0.a)), !vec4<bool>(var_1.a.x, any(arg_0.a), all(arg_0.a.zz), false), !select(vec4<bool>(true, arg_0.d.a.x, var_0.x, true), !arg_0.a, select(vec4<bool>(true, true, false, var_1.d.a.x), vec4<bool>(arg_0.a.x, var_0.x, var_1.a.x, arg_0.a.x), vec4<bool>(arg_0.d.a.x, var_1.a.x, arg_0.d.a.x, var_1.d.a.x)))), vec2<i32>(arg_0.b.x, 0i), abs(var_1.c), Struct_1(var_1.a.xy, arg_0.d.b));
    var_1 = Struct_2(var_1.a, -_wgslsmith_sub_vec2_i32(~vec2<i32>(-29793i, u_input.e.x), ~var_1.b) | vec2<i32>(abs(2147483647i), 45061i), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.c, 15674i, var_1.c, u_input.b) & vec4<i32>(-35941i, var_1.c, 0i, -21545i)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.b.x, 12696i, var_1.b.x, u_input.c), -vec4<i32>(-1i, var_1.b.x, -8424i, u_input.c))), var_1.d);
    return (_wgslsmith_mod_u32(4294967295u, ~34277u) & ~countOneBits(abs(u_input.a.x))) ^ 32794u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> bool {
    let var_0 = Struct_2(vec4<bool>(arg_1 <= (u_input.c ^ arg_1), true, !arg_0.a.x, false), vec2<i32>(abs(0i), 1i) >> (u_input.a.yz % vec2<u32>(32u)), arg_1, arg_0);
    var var_1 = ~(-2147483647i);
    var_1 = reverseBits(0i);
    var var_2 = 1i;
    var var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, ~4294967295u, func_3(var_0)), max(abs(~(u_input.a.zww | vec3<u32>(u_input.a.x, 9860u, u_input.a.x))), max(u_input.a.xyy, ~select(vec3<u32>(49388u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_0.a.x))));
    return false;
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = select(select(vec3<bool>((-3139i & u_input.e.x) < min(u_input.e.x, u_input.e.x), true, 1i > -u_input.e.x), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), !any(vec4<bool>(false, true, false, false))), false), select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(true, any(vec2<bool>(false, false)), func_2(Struct_1(vec2<bool>(false, false), arg_0), u_input.b, vec4<bool>(true, false, true, false), false))), select(vec3<bool>(true, true, select(false, true, true)), vec3<bool>(false, false, all(vec4<bool>(false, false, false, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, true)))), vec3<bool>(func_2(Struct_1(vec2<bool>(true, true), 690f), -1i, select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), true), _wgslsmith_div_f32(976f, 624f) > arg_0, -4741i == countOneBits(u_input.c))), select(vec3<bool>(!select(true, true, true), _wgslsmith_f_op_f32(exp2(arg_0)) >= arg_0, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), all(vec4<bool>(true, true, true, true)))));
    var var_1 = select(!vec4<bool>(var_0.x, var_0.x, any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x))), var_0.x), select(vec4<bool>(var_0.x, !any(vec2<bool>(var_0.x, false)), !select(var_0.x, false, var_0.x), _wgslsmith_f_op_f32(round(arg_0)) > arg_0), !vec4<bool>(true, true, true, var_0.x), true), var_0.x);
    var var_2 = Struct_2(select(vec4<bool>(~4294967295u >= firstLeadingBit(u_input.a.x), var_1.x, var_1.x, any(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_1.x))), vec4<bool>(firstLeadingBit(u_input.d) > u_input.d, _wgslsmith_f_op_f32(max(2600f, 341f)) == arg_0, var_1.x, all(select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(false, true, false, var_0.x), var_0.x))), select(!vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.d <= 4294967295u, var_1.x, var_1.x))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-30458i, select(u_input.c, 12722i, var_0.x)), select(_wgslsmith_add_vec2_i32(u_input.e.yy, vec2<i32>(-1i, u_input.b)), _wgslsmith_mult_vec2_i32(u_input.e.xz, u_input.e.yx), !vec2<bool>(true, var_1.x))), u_input.b, Struct_1(var_1.zz, -2143f));
    let var_3 = Struct_2(vec4<bool>(true, var_2.a.x, all(!(!var_1.yzx)), var_1.x), abs(-(-vec2<i32>(u_input.b, 1i) | reverseBits(vec2<i32>(var_2.b.x, var_2.b.x)))), select(-24964i, _wgslsmith_mod_i32(var_2.c, i32(-1i) * -24677i), true), Struct_1(var_0.yz, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 2055f) * _wgslsmith_f_op_f32(arg_0 - arg_0)))));
    let var_4 = _wgslsmith_f_op_f32(var_3.d.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - 538f), arg_0, var_3.a.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2113f + _wgslsmith_f_op_f32(var_3.d.b - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f)))));
    return vec4<u32>(firstLeadingBit(~(~(~11910u))), u_input.a.x, abs(u_input.a.x), select(4294967295u, ~countOneBits(~u_input.d), !(-46871i != (u_input.e.x ^ var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yzz;
    var var_1 = _wgslsmith_mult_vec4_i32(-select(-vec4<i32>(1i, 2147483647i, 2147483647i, u_input.c), -vec4<i32>(u_input.e.x, -12265i, 0i, u_input.c), vec4<bool>(true, true, false, false)) >> (~u_input.a % vec4<u32>(32u)), ~vec4<i32>(countOneBits(u_input.c), ~0i, u_input.b, firstTrailingBit(u_input.e.x)) & (-vec4<i32>(u_input.b, 57744i, -1i, -1i) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, 4478i, 1853i) | vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c), abs(vec4<i32>(-23303i, 21914i, 0i, u_input.e.x)))));
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.d, _wgslsmith_dot_vec4_u32(~(~u_input.a), countOneBits(func_1(-1000f))), var_0.x), countOneBits(u_input.a.xwz));
    var_1 = vec4<i32>(-u_input.e.x, -41358i, u_input.b, _wgslsmith_div_i32(-2147483647i, -31278i));
    let var_2 = func_2(Struct_1(vec2<bool>(true, true & any(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1303f + 1023f)))), var_1.x & -var_1.x, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(false, true))), vec4<bool>(true, all(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, true, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(193f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(941f)))) >= -251f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-(-vec4<i32>(-2147483647i, u_input.c, 0i, u_input.e.x) >> ((vec4<u32>(5195u, 4294967295u, 4294967295u, 57472u) << (vec4<u32>(63862u, 32106u, u_input.d, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(64640i, 2147483647i, 0i, var_1.x), vec4<i32>(var_1.x, u_input.b, -1i, var_1.x))), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(386i, 1i, u_input.c, var_1.x)), vec4<i32>(u_input.b, 0i, u_input.b, 41906i), vec4<i32>(-7689i, u_input.b, 50355i, 1i) | vec4<i32>(-38833i, u_input.e.x, var_1.x, -36080i)))), vec3<u32>(u_input.d << (u_input.a.x % 32u), 1u, u_input.d), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), -994f, var_2)))), select(~_wgslsmith_mod_vec2_i32(u_input.e.yy, reverseBits(var_1.yx)), _wgslsmith_mod_vec2_i32(-vec2<i32>(-6658i, var_1.x), ~u_input.e.yy) | u_input.e.zy, false), var_0.yy);
}

