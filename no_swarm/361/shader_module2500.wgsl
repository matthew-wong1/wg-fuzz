struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = all(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, false, true)))));
    let var_1 = -1000f <= _wgslsmith_div_f32(1054f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1171f))));
    let var_2 = Struct_2(1u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, -1526f, _wgslsmith_f_op_f32(-arg_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 299f), arg_0.x, arg_0.x)), arg_0.zyw)), vec2<bool>(var_0, select(var_1, true, any(!vec3<bool>(false, true, arg_1)))), Struct_1(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(1i, 5943i, 8979i)), -vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 26320i, 8716i)), select(vec4<bool>(var_1 && false, var_1, true, select(var_1, false, var_1)), !(!vec4<bool>(var_0, true, true, true)), any(!vec3<bool>(true, var_1, var_0)))));
    let var_3 = vec4<bool>(all(vec2<bool>(~2147483647i > _wgslsmith_mod_i32(2147483647i, arg_2), var_1)), !any(!vec2<bool>(var_0, false)), var_0, var_1);
    var var_4 = var_2.d;
    return 277f;
}

fn func_2() -> i32 {
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    let var_0 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-275f, -941f, -372f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-667f, 2177f, -140f) - vec3<f32>(-896f, -644f, 1170f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1298f, -324f, 1367f) + vec3<f32>(200f, 1000f, 298f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-106f, 721f, 102f, 572f), false, -1i)), _wgslsmith_div_f32(-1833f, 314f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-120f - 198f), 719f)), -537f), !any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)))), vec2<bool>(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), -1379f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(749f - 171f)))), Struct_1(36844i, select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), any(vec4<bool>(false, false, true, false))), vec4<bool>(true, any(vec4<bool>(true, true, false, true)), false, true), vec4<bool>(true, true, true, true))));
    var var_1 = vec3<u32>(firstTrailingBit(4294967295u) | ~4294967295u, var_0.a ^ ~u_input.a, 14359u);
    var_1 = u_input.b;
    return 4855i;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.d.a, 1i, -6083i), firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], arg_0.x, 14820i))) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(40601i, 0i, global0[_wgslsmith_index_u32(4294967295u, 31u)], 2133i) << (vec4<u32>(arg_2.a, 10418u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(global0[_wgslsmith_index_u32(0u, 31u)], 22003i, arg_0.x, arg_0.x) >> (vec4<u32>(u_input.a, 0u, u_input.b.x, u_input.a) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(~(~arg_2.a), 31u)], 0i), 1u, Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), vec3<i32>(arg_0.x, 41714i, i32(-1i) * -52236i)), select(arg_2.d.b, select(select(arg_2.d.b, vec4<bool>(arg_2.d.b.x, arg_2.c.x, arg_2.d.b.x, arg_2.c.x), arg_2.c.x), !vec4<bool>(arg_2.d.b.x, arg_2.d.b.x, arg_2.c.x, false), 1i >= arg_2.d.a), all(vec4<bool>(arg_2.c.x, true, arg_2.d.b.x, true)))));
    var_0 = Struct_4(~(~var_0.a), 1u, arg_2.d);
    global0 = array<i32, 31>();
    var var_1 = arg_2.b.x;
    var var_2 = ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_2.a, 31u)], arg_0.x, global0[_wgslsmith_index_u32(arg_2.a, 31u)]) | vec4<i32>(-20513i, 1i, -2147483647i, arg_2.d.a), select(vec4<i32>(-1i, global0[_wgslsmith_index_u32(arg_2.a, 31u)], arg_0.x, arg_2.d.a), vec4<i32>(-2147483647i, 0i, arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), arg_2.d.b.x))) | (vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(13629u, 31u)], 2147483647i, global0[_wgslsmith_index_u32(31959u, 31u)]), vec3<i32>(0i, 28032i, global0[_wgslsmith_index_u32(0u, 31u)])), 27798i, arg_2.d.a, arg_2.d.a) << (firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 76492u, 12182u, arg_2.a), vec4<u32>(63035u, u_input.b.x, u_input.a, arg_2.a))) % vec4<u32>(32u)));
    return Struct_2(u_input.b.x ^ ~var_0.b, _wgslsmith_f_op_vec3_f32(select(arg_2.b, _wgslsmith_div_vec3_f32(arg_2.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(arg_2.b))))), !var_0.c.b.ywz)), arg_2.c, arg_2.d);
}

fn func_1() -> Struct_4 {
    var var_0 = !vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), !(23314u <= u_input.b.x));
    let var_1 = func_4(max(min(_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec2<i32>(53426i, 2147483647i)) | _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 1i), vec2<i32>(-19837i, global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -17965i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 31u)], -1i)))), vec2<i32>(-98681i, _wgslsmith_clamp_i32(func_2(), ~global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1039f, -379f), _wgslsmith_f_op_f32(-553f + -1041f))), 905f)) - _wgslsmith_f_op_f32(1074f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-793f, -1014f))))), Struct_2(104263u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-491f, 956f, -254f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(427f, -731f, -238f) + vec3<f32>(-1031f, -1000f, 1041f))), vec3<f32>(-1005f, _wgslsmith_div_f32(-1156f, -816f), 460f)), select(vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(8632u, 31u)] >= 1i), vec2<bool>(true, any(vec3<bool>(true, true, var_0.x))), true), Struct_1(38498i, vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, !var_0.x, select(var_0.x, var_0.x, true)))));
    let var_2 = vec4<bool>(any(!func_4(reverseBits(vec2<i32>(var_1.d.a, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -162f), Struct_2(var_1.a, var_1.b, var_1.d.b.wz, var_1.d)).d.b), var_0.x, !any(vec4<bool>(var_0.x, true, var_0.x || true, var_1.c.x)), !(select(true, true, var_1.c.x) || true));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(var_1.a, 31u)], func_4(vec2<i32>(-557i, -1i), var_1.b.x, var_1), vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.a, u_input.a, u_input.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 41759u)) >> (min(1u, var_1.a) % 32u)), 4294967295u, 4294967295u));
    global0 = array<i32, 31>();
    return Struct_4(select(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_1.d.a, global0[_wgslsmith_index_u32(var_1.a, 31u)], var_1.d.a)), select(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], -1i), vec3<i32>(var_1.d.a, global0[_wgslsmith_index_u32(15075u, 31u)], 21341i), vec3<bool>(var_3.b.d.b.x, false, true))), -vec3<i32>(var_1.d.a, global0[_wgslsmith_index_u32(u_input.a, 31u)], 0i) ^ (vec3<i32>(global0[_wgslsmith_index_u32(var_3.c.x, 31u)], -2147483647i, 0i) | vec3<i32>(0i, 13796i, -6172i)), vec3<bool>(any(var_3.b.d.b.yxx), true, var_0.x)) & vec3<i32>(~(global0[_wgslsmith_index_u32(var_1.a, 31u)] ^ var_1.d.a), -(i32(-1i) * -1i), var_3.b.d.a >> ((u_input.a & 22400u) % 32u)), ~51255u, Struct_1(~1i, !func_4(vec2<i32>(var_1.d.a, global0[_wgslsmith_index_u32(1164u, 31u)]), _wgslsmith_f_op_f32(func_3(vec4<f32>(-118f, var_3.b.b.x, 1196f, -427f), var_3.b.d.b.x, global0[_wgslsmith_index_u32(var_1.a, 31u)])), Struct_2(u_input.a, var_3.b.b, var_3.b.c, Struct_1(var_3.b.d.a, vec4<bool>(false, var_0.x, var_3.b.d.b.x, false)))).d.b));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: bool) -> vec2<i32> {
    var var_0 = arg_0.c;
    let var_1 = Struct_3(i32(-1i) * -(_wgslsmith_sub_i32(var_0.a, 0i) >> (u_input.a % 32u)), Struct_2(_wgslsmith_add_u32(abs(select(u_input.b.x, 38747u, var_0.b.x)), arg_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -707f), -629f, _wgslsmith_f_op_f32(-1042f - 690f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1005f, -212f, 1948f))), vec3<f32>(-572f, -447f, -838f))), func_4(arg_0.a.zz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1044f, -288f) + _wgslsmith_f_op_f32(1240f - 106f)), Struct_2(23397u, vec3<f32>(300f, -430f, 2216f), vec2<bool>(false, arg_0.c.b.x), Struct_1(0i, vec4<bool>(false, true, true, var_0.b.x)))).c, arg_0.c), ~max(_wgslsmith_add_vec3_u32(u_input.b, u_input.b) ^ abs(u_input.b), u_input.b));
    let var_2 = u_input.b.x;
    let var_3 = 36722i;
    let var_4 = arg_0;
    return min(arg_0.a.zy, vec2<i32>(-arg_0.c.a, func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 31u)], 23757i)), select(select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(64435u, 31u)]) & vec2<i32>(14744i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(41347u, 31u)], -2147483647i), vec2<bool>(true, true)), func_5(func_1(), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true), true), vec2<bool>(func_1().c.b.x, func_4(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 31u)]), -1000f, Struct_2(u_input.b.x, vec3<f32>(-186f, -422f, -307f), vec2<bool>(false, true), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 31u)], vec4<bool>(false, true, true, false)))).d.b.x))), countOneBits(select(global0[_wgslsmith_index_u32(~0u, 31u)], ~(-4065i), all(vec4<bool>(true, false, true, false)))) << (_wgslsmith_add_u32(~4294967295u, u_input.b.x) % 32u));
    var var_1 = -_wgslsmith_div_i32(reverseBits(func_5(Struct_4(vec3<i32>(15213i, global0[_wgslsmith_index_u32(1u, 31u)], -2147483647i), u_input.b.x, Struct_1(2147483647i, vec4<bool>(false, false, false, false))), vec4<bool>(false, true, true, false), true).x), ~global0[_wgslsmith_index_u32(u_input.a | 1u, 31u)]);
    var var_2 = min(u_input.b.xx << (u_input.b.yz % vec2<u32>(32u)), u_input.b.zx);
    var var_3 = vec4<bool>(!(!any(func_1().c.b.zww)), all(vec2<bool>(true, true)), true, true);
    var var_4 = Struct_3(min(~_wgslsmith_mult_i32(abs(global0[_wgslsmith_index_u32(36439u, 31u)]), func_5(Struct_4(vec3<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(60262u, 31u)]), 67781u, Struct_1(0i, vec4<bool>(true, false, var_3.x, false))), vec4<bool>(var_3.x, false, false, var_3.x), false).x), ~func_1().c.a), Struct_2(u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-675f, -822f, 969f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-240f, -527f, -1746f) * vec3<f32>(-583f, -3107f, 214f))))), !(!var_3.xy), func_1().c), firstLeadingBit(u_input.b));
    var var_5 = var_4.c.x;
    var_5 = 1u;
    var var_6 = Struct_3(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, reverseBits(0u)), 31u)], var_4.b, ~min(~(~vec3<u32>(var_4.c.x, var_4.c.x, 0u)), var_4.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.a, _wgslsmith_f_op_f32(-140f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -207f))), var_6.b.b.x))), global0[_wgslsmith_index_u32(var_4.c.x, 31u)]);
}

