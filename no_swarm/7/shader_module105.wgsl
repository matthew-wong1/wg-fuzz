struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = ~(vec4<i32>(arg_0.x, _wgslsmith_add_i32(-2147483647i, countOneBits(-9117i)), _wgslsmith_div_i32(select(8723i, arg_3.b, true), _wgslsmith_sub_i32(0i, arg_1.b)), max(abs(-2147483647i), countOneBits(2147483647i))) & vec4<i32>(arg_2.a, -1i, arg_3.a.c.a, _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0.yyy), vec3<i32>(arg_1.b, -33278i, arg_0.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1621f, 476f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    var_0 = vec4<i32>(((_wgslsmith_mult_i32(arg_1.a.x, u_input.e) >> (~80104u % 32u)) & min(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_1.a.x, u_input.c, -1667i), arg_0), select(var_0.x, arg_0.x, true))) << (51692u % 32u), var_0.x, abs(u_input.d) << (_wgslsmith_mod_u32(~arg_3.d, firstTrailingBit(~0u)) % 32u), -1i);
    let var_2 = 1i;
    var var_3 = !select(select(vec2<bool>(true, true), select(vec2<bool>(arg_3.c, true), select(vec2<bool>(arg_2.c, true), vec2<bool>(arg_2.c, arg_1.c.c), vec2<bool>(true, arg_3.c)), vec2<bool>(true, true)), true), !(!(!vec2<bool>(true, arg_2.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(1000f * var_1.x))) <= -428f);
    return all(!select(select(!vec3<bool>(false, false, arg_1.c.c), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_2.c), !vec3<bool>(arg_3.c, true, true)), select(!vec3<bool>(true, false, arg_1.c.b), vec3<bool>(true, true, arg_2.b), false), var_1.x == _wgslsmith_f_op_f32(var_1.x - var_1.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = vec2<bool>(arg_3, !select(func_3(~vec4<i32>(-52217i, arg_1.x, 24246i, arg_2), Struct_2(vec2<i32>(-1i, 41566i), -42564i, Struct_1(u_input.e, true, false)), Struct_1(-605i, false, true), Struct_3(Struct_2(arg_1, arg_1.x, Struct_1(2147483647i, true, true)), arg_2, false, arg_0.x)), !(arg_0.x < u_input.b.x), true));
    let var_1 = Struct_1(abs(reverseBits(~min(arg_2, -1i))), true, _wgslsmith_dot_vec4_i32(-min(vec4<i32>(u_input.d, u_input.d, 0i, arg_2), vec4<i32>(arg_1.x, 1i, arg_1.x, u_input.d)), -abs(vec4<i32>(u_input.d, -17046i, 6956i, 2147483647i))) < 2147483647i);
    var_0 = vec2<bool>(any(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, var_1.c, arg_3), false))), arg_3);
    var var_2 = _wgslsmith_dot_vec3_i32(select(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.c, 45540i), vec3<i32>(arg_1.x, arg_1.x, 10746i))) >> (arg_0.yxw % vec3<u32>(32u)), -select(abs(vec3<i32>(var_1.a, arg_1.x, arg_1.x)), countOneBits(vec3<i32>(var_1.a, var_1.a, u_input.c)), true), !(!arg_3 && true)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.e, var_1.a, 1i), firstLeadingBit(vec4<i32>(-2147483647i, arg_1.x, arg_1.x, -1i))), select(-47209i, -2147483647i, var_0.x) | ~1i, -26638i), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.a, u_input.d, -2147483647i), vec4<i32>(u_input.e, -2147483647i, -15716i, 0i)), u_input.d) & (vec3<i32>(arg_1.x, -2147483647i, 1i) << (abs(arg_0.zwx) % vec3<u32>(32u)))));
    var_0 = !select(!vec2<bool>(var_0.x, false), !select(!vec2<bool>(var_1.b, true), !vec2<bool>(var_1.c, false), arg_3), select(!select(vec2<bool>(false, true), vec2<bool>(true, var_0.x), vec2<bool>(true, arg_3)), select(!vec2<bool>(var_1.c, false), vec2<bool>(arg_3, arg_3), vec2<bool>(false, false)), true));
    return 91630u;
}

fn func_1() -> i32 {
    var var_0 = vec4<u32>(~(~_wgslsmith_div_u32(0u, ~14471u)), func_2(u_input.a, -min(firstTrailingBit(vec2<i32>(u_input.e, 96i)), vec2<i32>(-19979i, -2147483647i) << (u_input.a.zx % vec2<u32>(32u))), u_input.d, ~(u_input.b.x >> (u_input.b.x % 32u)) < max(_wgslsmith_sub_u32(37199u, u_input.b.x), ~1u)), 53662u, 73971u);
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(countOneBits(-(~2147483647i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-32502i, 1i)), min(vec2<i32>(u_input.c, u_input.e), vec2<i32>(0i, u_input.e) & vec2<i32>(u_input.d, u_input.c)))), -2147483647i);
    var var_2 = -max(_wgslsmith_div_vec4_i32(~vec4<i32>(var_1.x, u_input.d, u_input.e, -1i), abs(reverseBits(vec4<i32>(var_1.x, 19169i, u_input.d, var_1.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(33307i & var_1.x, max(u_input.d, var_1.x), var_1.x >> (u_input.a.x % 32u), -14126i), vec4<i32>(_wgslsmith_mult_i32(var_1.x, u_input.c), 28468i, var_1.x, var_1.x)));
    var var_3 = u_input.b;
    let var_4 = true;
    return -37772i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(vec2<i32>(~abs(1i), -func_1()), -(firstTrailingBit(u_input.d) & 52557i), Struct_1(27356i, all(vec3<bool>(true, true, true)), true)), u_input.c ^ ((select(30029i, u_input.d, true) >> (35173u % 32u)) | -_wgslsmith_div_i32(u_input.c, 50703i)), func_3(_wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.d, 22573i, u_input.d, -47591i) >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), select(vec4<i32>(-34748i, u_input.c, -1i, u_input.c), vec4<i32>(1i, u_input.c, u_input.c, 34619i), false) >> (u_input.a % vec4<u32>(32u))), Struct_2(-vec2<i32>(u_input.d, -56908i), u_input.c, Struct_1(41052i, true, true)), Struct_1(-u_input.c, true, !any(vec3<bool>(true, false, false))), Struct_3(Struct_2(~vec2<i32>(5391i, u_input.d), 1i, Struct_1(2147483647i, true, false)), 0i, !(-6090i < u_input.c), ~30215u | u_input.a.x)), 1u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f * 981f)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1199f) - 1000f)))), 819f));
    let var_3 = 1544f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -919f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_3, !var_0.a.c.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_3)))) * 1366f)));
}

