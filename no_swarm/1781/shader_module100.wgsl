struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = arg_1.a;
    return arg_1;
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1448f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 886f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), !arg_0.a.a)), vec3<f32>(1000f, -271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1036f) - _wgslsmith_f_op_f32(f32(-1f) * -300f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) * _wgslsmith_f_op_f32(f32(-1f) * -906f)), _wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(select(-214f, _wgslsmith_div_f32(-756f, -2164f), !arg_0.a.a.x)))))));
    var var_1 = true;
    let var_2 = !select(select(select(select(vec4<bool>(true, arg_0.a.a.x, false, false), vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, true), vec4<bool>(true, arg_0.a.a.x, true, arg_0.a.a.x)), vec4<bool>(true, arg_0.a.a.x, arg_0.a.a.x, true), vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, arg_0.a.a.x)), select(select(vec4<bool>(false, false, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(true, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.a.x), !vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), func_2(vec4<u32>(u_input.b, arg_0.c, 89322u, arg_0.c), arg_0, Struct_1(arg_0.a.a)).a.a.x), arg_0.a.a.x), vec4<bool>(any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(round(1179f)) == _wgslsmith_f_op_f32(var_0.x - var_0.x), false, arg_0.a.a.x), arg_0.a.a.x);
    let var_3 = ~vec2<u32>(_wgslsmith_add_u32(u_input.a ^ arg_0.b.x, _wgslsmith_mult_u32(u_input.a, arg_0.c)) | ((arg_0.c >> (0u % 32u)) | arg_0.b.x), reverseBits(abs(~u_input.a)));
    let var_4 = false;
    return max(_wgslsmith_dot_vec2_i32(vec2<i32>(-24335i << (max(55349u, arg_0.b.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-773i, -67347i), countOneBits(3918i))), vec2<i32>(i32(-1i) * -2147483647i, max(1i, _wgslsmith_div_i32(1i, -40215i)))), -1i);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_i32(select(~vec4<i32>(-25096i, 14348i, -7850i, -20684i) << (~vec4<u32>(u_input.a, 0u, 0u, 6337u) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, true, true, true)) & -firstLeadingBit(abs(vec4<i32>(0i, -9532i, -20830i, -1i))), vec4<i32>(func_3(func_2(vec4<u32>(4294967295u, u_input.a, 11978u, 4294967295u), Struct_2(Struct_1(vec3<bool>(true, true, true)), vec2<u32>(u_input.a, 66332u), u_input.a), Struct_1(vec3<bool>(true, true, true)))) & 1i, ~_wgslsmith_mod_i32(firstTrailingBit(-53019i), ~(-13478i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, 1i), firstTrailingBit(i32(-1i) * -2147483647i)), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(43175i, 2147483647i, -1i, 2238i)), vec4<i32>(2147483647i, -2760i, -47895i, _wgslsmith_div_i32(-21393i, -1i)))));
    let var_1 = Struct_2(func_2(~(select(vec4<u32>(162396u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, 35328u, 1u, u_input.b), vec4<bool>(true, true, false, true)) & abs(vec4<u32>(30945u, u_input.b, u_input.b, 5541u))), func_2(~vec4<u32>(u_input.a, 0u, u_input.b, u_input.a) << (vec4<u32>(u_input.b, u_input.b, 0u, 69632u) % vec4<u32>(32u)), Struct_2(Struct_1(vec3<bool>(false, false, false)), countOneBits(vec2<u32>(u_input.a, u_input.a)), 0u), Struct_1(vec3<bool>(true, false, true))), Struct_1(vec3<bool>(all(vec4<bool>(true, false, false, false)), func_2(vec4<u32>(u_input.b, u_input.b, u_input.b, 30105u), Struct_2(Struct_1(vec3<bool>(false, false, true)), vec2<u32>(5829u, u_input.b), u_input.b), Struct_1(vec3<bool>(true, true, true))).a.a.x, true))).a, vec2<u32>(0u, select(u_input.b, u_input.b, false)), 3483u >> (firstTrailingBit(~0u) % 32u));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-625f * -1241f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1015f, -407f) * _wgslsmith_f_op_f32(ceil(446f)))))) + _wgslsmith_f_op_f32(min(-1399f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-447f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1325f * 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1271f))))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - 409f);
    return Struct_2(func_2(vec4<u32>(1u, 1u, ~var_1.c, _wgslsmith_mult_u32(var_1.c, firstLeadingBit(var_2.c))), var_1, Struct_1(var_2.a.a)).a, var_2.b, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~u_input.b), var_1.b.x), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2208f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2243f)), -1000f, !(!var_0.a.a.x)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f + 703f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-477f, _wgslsmith_f_op_f32(-1781f * _wgslsmith_f_op_f32(select(460f, 172f, var_0.a.a.x))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1236f)))));
    let var_2 = vec3<bool>((!(!var_0.a.a.x) & any(var_0.a.a)) & var_0.a.a.x, var_0.a.a.x, all(!vec4<bool>(true, var_0.a.a.x & var_0.a.a.x, var_0.a.a.x, true)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1533f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-851f * -188f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1646f)))))) + _wgslsmith_f_op_f32(step(644f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1093f, 459f))))))));
    var var_3 = vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mult_u32(u_input.b, 1u << (u_input.a % 32u))), abs(u_input.b)), abs(var_0.b.x), ~(~(~countOneBits(var_0.b.x))), ~9153u);
    var_0 = func_2(reverseBits(select(vec4<u32>(~11525u, 1u, 26045u, 0u), select(max(vec4<u32>(u_input.b, var_3.x, 4294967295u, var_3.x), vec4<u32>(60923u, 58742u, 72364u, var_3.x)), ~vec4<u32>(var_3.x, 4294967295u, u_input.b, u_input.b), !vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, true)), true)), func_1(), Struct_1(func_2(~max(vec4<u32>(4294967295u, var_0.c, 22213u, var_0.b.x), vec4<u32>(55567u, 16777u, var_3.x, 1u)), func_1(), var_0.a).a.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(var_3.x, abs(func_2(vec4<u32>(u_input.a, var_3.x, 1u, var_3.x), Struct_2(Struct_1(vec3<bool>(var_0.a.a.x, true, var_0.a.a.x)), var_3.zx, var_3.x), Struct_1(vec3<bool>(true, true, var_0.a.a.x))).b.x)), ~countOneBits(_wgslsmith_dot_vec3_u32(var_3.yxz, vec3<u32>(var_0.c, u_input.a, var_3.x))), var_0.b.x, ~(~u_input.a) & ~1u), vec2<f32>(-773f, _wgslsmith_f_op_f32(f32(-1f) * -273f)), max(-(~_wgslsmith_mod_i32(3885i, 24068i)), abs(-1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1456f, 798f, -641f, 1491f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1570f, 2189f, -1816f, 556f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, -729f, 548f, 1000f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, -371f, -1000f, -609f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, -1099f, -1815f, -872f)), vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, false))))));
}

