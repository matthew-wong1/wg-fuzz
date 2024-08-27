struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, ~_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(u_input.a.zxx, vec3<i32>(0i, 5226i, -6285i)))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 20120i), u_input.a.ww << (vec2<u32>(u_input.c.x, u_input.d.x) % vec2<u32>(32u))), abs(vec2<i32>(u_input.a.x, -1i))), u_input.a.zz));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1282f, -1000f) * vec3<f32>(1127f, 670f, -233f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-914f, -265f, -2016f), vec3<f32>(-176f, -887f, -566f), true)), vec3<f32>(1032f, -282f, 168f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(130f, 1868f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2239f * -440f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(2102f, 286f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(538f, -1000f, -170f), vec3<f32>(-2055f, 1175f, -1896f), vec3<bool>(false, true, false))), vec3<f32>(-1062f, 458f, 548f), all(vec4<bool>(false, false, false, false)))))));
    var var_2 = countOneBits(u_input.a.wxz);
    var var_3 = select(select(vec2<bool>(var_1.x > _wgslsmith_f_op_f32(var_1.x * var_1.x), ~var_0 > _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.xw)), vec2<bool>(all(vec2<bool>(true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), (u_input.d.x <= u_input.d.x) && true)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(true, true), true), !vec2<bool>(all(vec3<bool>(false, false, false)) & true, false));
    var var_4 = vec3<i32>(~(-u_input.b << (u_input.d.x % 32u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0 ^ _wgslsmith_add_i32(var_0, var_0), -_wgslsmith_dot_vec4_i32(vec4<i32>(30645i, var_2.x, var_0, 0i), u_input.a)), -2147483647i), ~1i);
    return !var_3.x;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(358f, 1497f, -366f), vec3<f32>(-291f, 1000f, -1682f), vec3<bool>(true, true, true))))) + vec3<f32>(_wgslsmith_f_op_f32(226f - _wgslsmith_f_op_f32(abs(-1600f))), _wgslsmith_f_op_f32(-482f + _wgslsmith_f_op_f32(320f + -345f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1216f, -1000f, -2144f)))), func_3()));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -598f) * vec3<f32>(var_0.x, -1134f, var_0.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1469f, _wgslsmith_f_op_f32(933f + var_0.x), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))))), u_input.d, _wgslsmith_mult_i32(min(~u_input.b, u_input.a.x), u_input.b), !((var_0.x < 111f) && true) == all(vec2<bool>(true, true)));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f * 1167f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1830f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_0.x))), _wgslsmith_f_op_f32(-var_1.a.x)), firstTrailingBit(u_input.d) & (firstLeadingBit(vec4<u32>(u_input.c.x, 4294967295u, 1u, var_1.b.x) << (vec4<u32>(35404u, u_input.d.x, 1u, u_input.d.x) % vec4<u32>(32u))) ^ abs(u_input.d)), firstTrailingBit(u_input.a.x), select(true, var_1.d, true));
    var_1 = Struct_1(var_1.a, _wgslsmith_add_vec4_u32(u_input.d & var_1.b, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 6602u >> (var_2.b.x % 32u), 26143u, 67316u), firstLeadingBit(vec4<u32>(1u, var_1.b.x, 1u, 1u)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~u_input.a.yz, vec2<i32>(38366i, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), u_input.a.zx)) & min(var_1.c & _wgslsmith_add_i32(u_input.b, u_input.a.x), -85302i), var_1.c != _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-1i, -33189i)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2520f))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-548f, -1584f)), -960f)))), _wgslsmith_f_op_f32(357f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(335f, _wgslsmith_f_op_f32(f32(-1f) * -1236f)))))));
    var var_1 = Struct_1(vec3<f32>(var_0.x, 1666f, _wgslsmith_f_op_f32(-var_0.x)), ~(~(~(~vec4<u32>(4294967295u, 96592u, u_input.c.x, u_input.d.x)))), u_input.b, all(vec3<bool>(true, true, any(vec2<bool>(false, false)))));
    var var_2 = any(vec2<bool>(true, var_0.x <= _wgslsmith_f_op_f32(-var_0.x))) | false;
    var_2 = 1589f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))))) + _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var_2 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) * _wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.a.x, var_0.x))))), ~(~vec4<u32>(48382u, u_input.c.x, 33883u, var_1.b.x) & var_1.b), abs(_wgslsmith_sub_i32(reverseBits(~1i), u_input.b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, !vec3<bool>(func_3(), u_input.d.x == 52704u, true))), ~(~u_input.d), ~u_input.b, !all(!select(vec4<bool>(var_0.d, false, var_0.d, var_0.d), vec4<bool>(false, var_0.d, var_0.d, true), var_0.d)));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

