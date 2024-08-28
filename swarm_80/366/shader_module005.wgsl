struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(1u << (countOneBits(firstTrailingBit(~89419u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-494f)) - _wgslsmith_f_op_f32(f32(-1f) * -269f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_f_op_f32(1861f - -1000f)))))));
    return select(vec4<bool>(all(vec2<bool>(true, true)) || !all(vec3<bool>(true, false, true)), true, false, true), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), vec4<bool>(all(vec3<bool>(var_0.b >= -1207f, -712f > var_0.b, true)), false, false, -u_input.b < reverseBits(_wgslsmith_mult_i32(1i, u_input.a.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(u_input.b, u_input.a.x, -5867i, u_input.b), vec4<i32>(1i, -2147483647i, -3178i, 4729i))), reverseBits(countOneBits(vec4<i32>(1i, 29435i, u_input.a.x, -28586i)))), ~(~(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2147483647i) >> (vec4<u32>(4294967295u, 1u, arg_0.x, arg_0.x) % vec4<u32>(32u)))) ^ _wgslsmith_mult_vec4_i32(select(vec4<i32>(29093i, u_input.a.x, u_input.a.x, 12280i), vec4<i32>(17063i, 1i, u_input.a.x, 0i), vec4<bool>(false, true, false, false)) | _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b, 0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b, u_input.b, 26814i)), ~max(vec4<i32>(u_input.a.x, u_input.b, u_input.b, -1i), vec4<i32>(13597i, u_input.b, u_input.a.x, u_input.a.x))));
    var var_1 = select(countOneBits(~arg_0), ~_wgslsmith_sub_vec2_u32(vec2<u32>(66904u, arg_0.x), min(vec2<u32>(66138u, 4294967295u), vec2<u32>(36096u, arg_0.x))), false) | ~vec2<u32>(17256u, _wgslsmith_dot_vec2_u32(select(arg_0, arg_0, true), countOneBits(arg_0)));
    let var_2 = _wgslsmith_f_op_f32(-arg_1);
    var var_3 = 327f;
    let var_4 = Struct_2(Struct_1(select(select(vec4<bool>(true, true, true, true), func_3(), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, arg_0.x <= 4891u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 + 687f), _wgslsmith_f_op_f32(var_2 * arg_1)))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))))), abs(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, 52i), min(19379i, u_input.a.x))) << (vec2<u32>(~1u, 38731u) % vec2<u32>(32u)));
    return vec2<u32>(14923u, arg_0.x) | (vec2<u32>(min(4294967295u, ~var_1.x), 1u) >> (~min(vec2<u32>(var_1.x, var_1.x), ~arg_0) % vec2<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a, reverseBits(u_input.a)), _wgslsmith_dot_vec2_i32(~u_input.a.zz >> (arg_1 % vec2<u32>(32u)), (u_input.a.xy ^ _wgslsmith_sub_vec2_i32(u_input.a.xz, u_input.a.zy)) << (func_2(vec2<u32>(arg_1.x, 0u), _wgslsmith_div_f32(1454f, arg_0)) % vec2<u32>(32u))));
    var_0 = abs(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i) >> (arg_1 % vec2<u32>(32u)), abs(u_input.a.yy)) >> (~arg_1.x % 32u)));
    var var_1 = u_input.b;
    let var_2 = Struct_1(vec4<bool>(-2147483647i > _wgslsmith_div_i32(1i, u_input.b), false, func_3().x, !any(vec3<bool>(true, true, true))));
    let var_3 = 34000i;
    return any(select(func_3().xz, vec2<bool>(_wgslsmith_f_op_f32(arg_0 - arg_0) < _wgslsmith_f_op_f32(-arg_0), max(var_3, 1i) == ~29115i), all(var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))) | true);
    var_0 = select(vec4<bool>(select(false, func_1(-331f, _wgslsmith_div_vec2_u32(vec2<u32>(36651u, 51427u), vec2<u32>(4294967295u, 1u))), true), var_0.x, true, any(func_3())), vec4<bool>(var_0.x | true, var_0.x, false, all(func_3().xw) || var_0.x), any(select(var_0.zz, select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x), var_0.x), var_0.x)));
    let var_1 = select(!(!(!vec4<bool>(false, var_0.x, var_0.x, false))), vec4<bool>(all(var_0.zw), (_wgslsmith_clamp_u32(0u, 0u, 0u) ^ 1u) <= ~_wgslsmith_clamp_u32(4942u, 2341u, 1u), true, !var_0.x), select(!func_3(), vec4<bool>(true, !(-1i >= u_input.b), false, !var_0.x | true), select(select(vec4<bool>(false, false, false, var_0.x), func_3(), func_3()), !(!vec4<bool>(false, false, var_0.x, true)), vec4<bool>(true, true, select(false, true, var_0.x), func_3().x))));
    var var_2 = Struct_3(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(13361u, 0u, 1u), vec3<u32>(1u, 53721u, 82957u)))), select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(46908u, 88559u, 1u, 1u), vec4<u32>(37892u, 1u, 4294967295u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 2819u, 1u, 53055u), vec4<u32>(615u, 1u, 57193u, 3014u))), ~vec2<u32>(1u, 1u), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803f + _wgslsmith_f_op_f32(ceil(-2318f)))))));
    var_2 = Struct_3(max(1u, select(15550u, 37842u, ~0i > u_input.a.x)), _wgslsmith_f_op_f32(-var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

