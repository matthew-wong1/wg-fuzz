struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 0u, 27093u, 0u, 4294967295u, 0u, 2137u, 6802u, 1u, 1u, 4294967295u, 37924u, 0u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = vec4<u32>(u_input.d, ~_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(1u >> (u_input.d % 32u), _wgslsmith_add_u32(51497u, 36406u))), 4294967295u, min(global0[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_mult_u32(u_input.d, 40623u)));
    var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 8808u, 4294967295u, u_input.d), ~vec4<u32>(var_0.x, 2447u, var_0.x, 54231u)), ~vec4<u32>(var_0.x, 35148u, global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(u_input.d, 13u)]) >> (firstLeadingBit(vec4<u32>(10815u, global0[_wgslsmith_index_u32(var_0.x, 13u)], 0u, 10856u)) % vec4<u32>(32u)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 9808u), vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 13u)], u_input.d, u_input.d)))), ~vec4<u32>(24696u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(45532u, 0u), vec2<u32>(37057u, 0u)), 1u) & firstTrailingBit(min(~vec4<u32>(4294967295u, 1581u, var_0.x, 88234u), vec4<u32>(u_input.d, var_0.x, 60107u, 19748u))));
    let var_1 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, firstLeadingBit(_wgslsmith_div_u32(u_input.d, 1u)))), ~var_0.yy);
    var var_2 = vec3<bool>(false, any(vec3<bool>(all(vec2<bool>(true, false)), _wgslsmith_clamp_u32(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 13u)], 13u)], 5914u) >= (var_1.x | 38930u), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), !(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)) < -173f));
    var var_3 = ~(~(_wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, 0u), var_1), ~var_0.zz) >> (vec2<u32>(_wgslsmith_sub_u32(4294967295u, 1u), ~global0[_wgslsmith_index_u32(5654u, 13u)]) % vec2<u32>(32u))));
    return !var_2.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> i32 {
    var var_0 = vec3<u32>(global0[_wgslsmith_index_u32(~u_input.d, 13u)], ~(~(~48733u)), 1u);
    global0 = array<u32, 13>();
    var var_1 = Struct_1(-1000f, vec3<i32>(_wgslsmith_add_i32(u_input.b.x | _wgslsmith_sub_i32(arg_0.x, arg_0.x), -5156i), ~22112i, firstLeadingBit(-4095i & u_input.c.x)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-1643f + _wgslsmith_f_op_f32(trunc(-182f)))), vec3<i32>(53906i, var_1.b.x, u_input.c.x)), _wgslsmith_add_vec4_u32(~min(vec4<u32>(64879u, 4294967295u, u_input.d, global0[_wgslsmith_index_u32(1u, 13u)]), vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, arg_1), vec4<u32>(var_0.x, 77362u, global0[_wgslsmith_index_u32(6610u, 13u)], 1u))) >> (~(~(vec4<u32>(36311u, 4294967295u, u_input.d, var_0.x) << (vec4<u32>(arg_1, 45108u, 34679u, 34658u) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec2<bool>(!any(vec3<bool>(true, true, true)), func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 1024f, -2268f, var_1.a) + vec4<f32>(280f, 2322f, 1346f, var_1.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2201f, -1000f, var_1.a, 120f))))))), Struct_1(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(var_1.a + _wgslsmith_div_f32(arg_2, -441f))), var_1.b), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_0.yx, ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 0u), var_0.zz)), firstTrailingBit(~max(vec2<u32>(arg_1, 4294967295u), vec2<u32>(4294967295u, 1u)))));
    var_1 = var_2.d;
    return ~(i32(-1i) * -12437i);
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(-127f, vec3<i32>(1i, func_2(-min(vec2<i32>(u_input.c.x, -605i), vec2<i32>(u_input.c.x, u_input.a)), ~(~26721u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f + 595f))), ~2147483647i));
    let var_1 = _wgslsmith_f_op_f32(ceil(-166f));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))), -select(vec3<i32>(1i, 1i, var_0.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, -14798i, 39804i) ^ var_0.b, -vec3<i32>(var_0.b.x, u_input.b.x, u_input.c.x)), true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1), countOneBits(abs(~countOneBits(vec3<i32>(0i, -1i, 2147483647i)))));
    var var_3 = Struct_2(Struct_1(var_2.a, ~_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x))), ~min(~(vec4<u32>(14758u, 1u, 4294967295u, 1u) << (vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 0u, 4294967295u, 13917u) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 0u, global0[_wgslsmith_index_u32(u_input.d, 13u)]) % vec4<u32>(32u)), vec4<u32>(u_input.d, 37447u, u_input.d, 1u))), select(select(vec2<bool>(true, var_0.a == -703f), vec2<bool>(true, true), ~u_input.d <= firstTrailingBit(86095u)), select(vec2<bool>(false, false), vec2<bool>(true, select(true, true, true)), vec2<bool>(1u > u_input.d, any(vec4<bool>(true, true, true, true)))), var_2.b.x >= u_input.b.x), Struct_1(var_2.a, _wgslsmith_sub_vec3_i32(var_2.b, firstTrailingBit(u_input.c))), min(vec2<u32>(22870u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8477u, 13u)], 13u)], 13u)] ^ abs(1u), 13u)]), vec2<u32>(67851u, u_input.d) >> (firstLeadingBit(~vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], u_input.d)) % vec2<u32>(32u))));
    return vec4<u32>(firstTrailingBit(14560u), _wgslsmith_mult_u32(18039u, u_input.d | ~u_input.d), countOneBits(1u >> (~(global0[_wgslsmith_index_u32(1u, 13u)] >> (4294967295u % 32u)) % 32u)), 2449u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 13>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(556f)) * _wgslsmith_f_op_f32(113f - 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1276f * 1493f))))), ~select(reverseBits(u_input.c), u_input.c, select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), func_1(), select(vec2<bool>(-2859i > (u_input.b.x & -2272i), func_3(vec4<f32>(1306f, -1330f, 1209f, -1825f))), select(vec2<bool>(func_3(vec4<f32>(-1193f, -146f, 1239f, 1338f)), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec3<bool>(true, true, false)))), vec2<bool>(true, true)), Struct_1(769f, u_input.c), ~(~(_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 13u)], u_input.d), vec2<u32>(49452u, global0[_wgslsmith_index_u32(37284u, 13u)])) >> (abs(vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u)))));
    let var_1 = true;
    var var_2 = _wgslsmith_mod_i32(var_0.a.b.x, var_0.d.b.x);
    global0 = array<u32, 13>();
    var var_3 = _wgslsmith_mod_u32(var_0.e.x, max(~(var_0.b.x >> (_wgslsmith_mod_u32(2855u, 30548u) % 32u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(2601u, u_input.d), ~vec2<u32>(var_0.e.x, global0[_wgslsmith_index_u32(16477u, 13u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1086f) - var_0.a.a), 925f, var_0.d.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.a, var_0.d.a, 167f), vec3<f32>(-337f, 498f, -795f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-855f, -535f, 775f))))))));
}

