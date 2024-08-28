struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(arg_2.yy, _wgslsmith_sub_vec2_i32(-arg_2.xx, (vec2<i32>(arg_2.x, -1i) & min(arg_2.xy, arg_2.zy)) & _wgslsmith_mod_vec2_i32(~arg_2.yx, abs(vec2<i32>(-12591i, arg_2.x)))));
    var_0 = arg_2.yx;
    var var_1 = u_input.b;
    var var_2 = arg_0.b.x;
    var var_3 = Struct_4(arg_1, Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(-13700i, -1i, arg_2.x, var_0.x), abs(vec4<i32>(var_0.x, var_0.x, 65258i, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x), _wgslsmith_f_op_f32(ceil(arg_0.b.x))), arg_2)));
    return var_3.b.a;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1171f));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-757f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, arg_0.b.x, true)), _wgslsmith_f_op_f32(ceil(204f))))), -1000f));
    var var_1 = 0i;
    var var_2 = vec2<f32>(174f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(664f + arg_0.b.x))))));
    let var_3 = !select(select(vec4<bool>(var_2.x > arg_0.b.x, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(true, true)), false, false, false), true);
    return func_2(arg_0, !var_3.x, vec3<i32>(~(~(-13964i) << (u_input.b % 32u)), -2147483647i, i32(-1i) * -33134i));
}

fn func_3() -> f32 {
    var var_0 = vec2<i32>(~1i, 53228i);
    var_0 = vec2<i32>((var_0.x | -2147483647i) & 0i, var_0.x);
    var var_1 = Struct_1(i32(-1i) * -abs(0i >> (u_input.b % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, -1761f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(301f, -365f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(588f, -411f))), vec2<f32>(1f, 1f))), ~(-vec3<i32>(-51736i, var_0.x, -27821i)));
    var var_2 = abs(~(vec4<i32>(-1i) * -max(vec4<i32>(-1i, -29747i, var_0.x, var_0.x), vec4<i32>(14717i, var_1.a, var_0.x, 2147483647i))));
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.x, 151f), _wgslsmith_f_op_f32(ceil(var_1.b.x))) - var_1.b.x), -956f), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) + var_1.b.x))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(11518i, 2147483647i, 9073i, 2147483647i), max(_wgslsmith_mult_vec4_i32(vec4<i32>(-11236i, 1985i, 0i, 84014i), vec4<i32>(16338i, 26137i, -2147483647i, 1i)), firstLeadingBit(vec4<i32>(2147483647i, 0i, 33605i, 63754i)))), 35411i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1590f + -1247f), 2150f)))), vec3<i32>(countOneBits(-(i32(-1i) * -2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-10411i, 75240i), vec2<i32>(1i, 1i)), _wgslsmith_mod_i32(10691i, ~12120i), -2147483647i), 1i));
    var_0 = func_1(Struct_3(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 53494u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.a.x, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(32970u, u_input.b, u_input.c.x), vec3<u32>(u_input.d, u_input.a.x, u_input.d))), countOneBits(u_input.a.x) >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(u_input.c.zx, ~vec2<u32>(u_input.d, u_input.c.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-503f, 594f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f))))))));
    var_0 = Struct_1(~(~21262i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(var_0.b, _wgslsmith_f_op_vec2_f32(-var_0.b))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b, var_0.b) - _wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(1171f, -476f), vec2<bool>(true, true)))), vec2<f32>(-714f, _wgslsmith_f_op_f32(-var_0.b.x)))), vec3<i32>(_wgslsmith_add_i32(var_0.a, func_2(Struct_3(vec4<u32>(95519u, u_input.b, u_input.b, 20514u), vec2<f32>(577f, var_0.b.x)), false, var_0.c).a) & ((var_0.a >> (u_input.c.x % 32u)) | func_2(Struct_3(vec4<u32>(u_input.a.x, u_input.c.x, u_input.d, 63335u), vec2<f32>(var_0.b.x, -214f)), false, vec3<i32>(2147483647i, var_0.c.x, var_0.a)).a), var_0.a, -var_0.c.x));
    let var_1 = -(vec3<i32>(min(-var_0.c.x, -var_0.c.x), var_0.c.x, var_0.a) << (~vec3<u32>(u_input.d, 4294967295u, 0u << (u_input.b % 32u)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_sub_i32(var_1.x, firstTrailingBit(~0i >> (u_input.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(275f, -496f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 207f)), vec2<f32>(func_2(Struct_3(vec4<u32>(u_input.d, u_input.c.x, 4294967295u, 1u), var_0.b), true, _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, var_2, var_1.x), vec3<i32>(5838i, 10114i, var_1.x))).b.x, 184f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.b.x)))), _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(func_3())))) + _wgslsmith_f_op_vec2_f32(-var_0.b)));
}

