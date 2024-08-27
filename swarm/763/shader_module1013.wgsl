struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    global0 = array<u32, 2>();
    var var_0 = -2147483647i;
    let var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, _wgslsmith_sub_i32(countOneBits(-67113i), countOneBits(43153i)), 2147483647i, -2147483647i), ~vec4<i32>(arg_0.b.x, arg_0.b.x, 1i, arg_0.b.x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -560f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1)), -959f);
    var_0 = -1i;
    return 865f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(-995f, _wgslsmith_f_op_f32(f32(-1f) * -250f))), _wgslsmith_f_op_f32(-1145f - _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), vec2<i32>(2147483647i, -6945i), vec2<u32>(u_input.a, 4294967295u)), -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -527f), -1000f))));
    var var_1 = all(vec4<bool>(false, true, all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(55116u, 2u)] <= _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 32747u, global0[_wgslsmith_index_u32(21612u, 2u)], 1u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], u_input.a, 4294967295u)), firstLeadingBit(4294967295u))));
    global0 = array<u32, 2>();
    let var_2 = Struct_1(abs(abs(firstLeadingBit(vec3<i32>(-42055i, -8497i, 0i)))), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -12870i, 5857i, 1i), vec4<i32>(-16129i, -13777i, 14511i, 1i)) | ~select(2147483647i, 2147483647i, false), ~1i), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), vec2<u32>(38764u, 0u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(43969u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 1u)) % vec2<u32>(32u))) & ~countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(66604u, u_input.a), vec2<u32>(22913u, 0u))));
    var var_3 = Struct_1(var_2.a, vec2<i32>(-1i) * -(~var_2.b), select(var_2.c, vec2<u32>(u_input.a, countOneBits(27787u)), true));
    return var_2;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(-1i, ~(~(-21681i) >> (u_input.a % 32u)), _wgslsmith_clamp_i32(-17483i, _wgslsmith_mult_i32(i32(-1i) * -68961i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(0i, 10949i))), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(27223i, -2147483647i, 15083i), vec3<i32>(-31598i, -47538i, 20525i))))), vec2<i32>(2147483647i, _wgslsmith_sub_i32(-2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -1i)))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 46528u), max(vec2<u32>(35256u, 26726u), vec2<u32>(u_input.a, 1u))), ~(~vec2<u32>(u_input.a, 4294967295u))));
    global0 = array<u32, 2>();
    var var_1 = func_2();
    var_0 = Struct_1(var_0.a, ~(~abs(var_1.b) & _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-65158i, -1i), var_1.a.zz), abs(vec2<i32>(var_0.a.x, var_1.b.x)))), abs(~(var_1.c & var_0.c)) >> (_wgslsmith_mod_vec2_u32(var_1.c, vec2<u32>(~30292u, global0[_wgslsmith_index_u32(u_input.a, 2u)])) % vec2<u32>(32u)));
    global0 = array<u32, 2>();
    return Struct_1(countOneBits(max(var_0.a, var_1.a >> (~vec3<u32>(86501u, 4294967295u, global0[_wgslsmith_index_u32(0u, 2u)]) % vec3<u32>(32u)))), vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2147483647i, var_1.a.x, 2147483647i, var_0.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, -1i, 9591i, 2147483647i), vec4<i32>(-32935i, var_0.a.x, 9354i, -8867i)))), -(~9608i)), _wgslsmith_mult_vec2_u32(var_0.c, ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 37507u)))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<bool>(true, select(all(vec4<bool>(true, true, true, true)), true, false), all(vec2<bool>(!any(vec3<bool>(false, false, false)), any(vec2<bool>(false, true)))), true);
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    return _wgslsmith_add_i32(arg_0.b.x, 5013i) << (_wgslsmith_mult_u32(44088u, 34618u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, -1087f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(414f, 1000f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-624f, -1000f), vec2<f32>(1095f, 665f))))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -639f), 1792f)))));
    global0 = array<u32, 2>();
    let var_1 = Struct_1(vec3<i32>(-_wgslsmith_add_i32(1i, reverseBits(-1i)), firstLeadingBit(2651i >> (u_input.a % 32u)) | -25815i, _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-39267i, _wgslsmith_mod_i32(25780i, -8398i)))), vec2<i32>(func_4(func_1()), i32(-1i) * -(i32(-1i) * -53259i)), ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 62650u)), 340u)));
    let var_2 = ~min(~select(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14101u, 2u)], 2u)], 2u)], 4294967295u, 1u), vec3<u32>(u_input.a, var_1.c.x, 136745u), true), vec3<u32>(~firstTrailingBit(74252u), func_1().c.x, ~1u));
    let var_3 = Struct_1(max(firstLeadingBit(vec3<i32>(var_1.b.x, 2147483647i, abs(1i))), var_1.a), var_1.a.yy, ~vec2<u32>(u_input.a, abs(~6943u)));
    let var_4 = func_2();
    var var_5 = reverseBits(var_4.c.x);
    let var_6 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(var_3.a, var_1.a), _wgslsmith_add_vec3_i32(min(var_4.a, var_4.a | vec3<i32>(29584i, -2147483647i, var_3.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(4899i, var_4.a.x, var_4.b.x), _wgslsmith_mult_vec3_i32(var_1.a, var_3.a))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.a.x, 0i, 30546i), var_4.a)), _wgslsmith_div_vec2_i32(~(-firstLeadingBit(vec2<i32>(-40489i, var_3.b.x))), vec2<i32>(_wgslsmith_mod_i32(~(-13168i), var_4.b.x | 48750i), 0i)), ~(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), vec2<u32>(var_1.c.x, 4294967295u)) >> (var_3.c % vec2<u32>(32u))));
    global0 = array<u32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(421f + var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.x) - vec2<f32>(var_0.x, -1178f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1116f, 1211f))))), _wgslsmith_mult_u32(~var_2.x, 1u), vec4<u32>(func_1().c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, var_4.c.x), _wgslsmith_sub_vec2_u32(var_2.yx, vec2<u32>(var_1.c.x, 26670u))), min(var_6.c.x, 743u)), u_input.a, ~1u), -5932i);
}

