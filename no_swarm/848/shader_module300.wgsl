struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = !select(select(vec4<bool>(all(vec4<bool>(false, arg_0.b, true, true)), false, any(vec2<bool>(arg_0.b, false)), any(vec4<bool>(false, true, false, true))), !(!vec4<bool>(true, arg_0.b, false, arg_0.b)), vec4<bool>(arg_0.b, !arg_0.b, false, any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b)))), select(select(!vec4<bool>(true, true, arg_0.b, true), vec4<bool>(arg_0.b, false, true, arg_0.b), select(vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, false, arg_0.b, true), true)), select(select(vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(true, arg_0.b, false, true), false), select(vec4<bool>(true, true, arg_0.b, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, true, false)), select(vec4<bool>(false, false, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), arg_0.b)), true), any(!(!vec3<bool>(arg_0.b, false, arg_0.b))));
    return vec2<u32>(8521u, ~1u);
}

fn func_2() -> u32 {
    var var_0 = 36148u;
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(163f, -959f, 357f, -1326f), vec4<f32>(1600f, 3012f, -1000f, -1000f), vec4<bool>(true, true, false, false))), all(vec2<bool>(false, false)), reverseBits(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), _wgslsmith_f_op_f32(-1592f - -977f), _wgslsmith_div_i32(u_input.a, u_input.a))), vec2<u32>(4294967295u, abs(25060u))), abs(vec2<u32>(func_3(Struct_1(vec4<f32>(1105f, 1000f, 1111f, -1000f), true, vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b), -485f, 1i)).x, u_input.b)), vec2<u32>(20574u, 4294967295u));
    var var_2 = vec3<u32>(562u, ~reverseBits(_wgslsmith_mult_u32(u_input.b, 0u)), ~u_input.b);
    var_2 = vec3<u32>(var_2.x, u_input.b, var_1.x);
    var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.x, ~var_1.x), var_2.x);
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, var_1.x, var_1.x, u_input.b) ^ abs(vec4<u32>(0u, var_2.x, 0u, 0u))) << ((abs(min(vec4<u32>(44787u, 24346u, 72440u, 4294967295u), vec4<u32>(0u, 4294967295u, 30143u, 56522u))) ^ vec4<u32>(~51454u, u_input.b, var_2.x, reverseBits(37305u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(var_1.x, 1u, u_input.b, 62905u))), vec4<u32>(~var_2.x, 1u, reverseBits(1u), 14807u) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_1.x, var_2.x), select(vec4<u32>(var_1.x, 33859u, 47004u, 56557u), vec4<u32>(u_input.b, u_input.b, var_2.x, 1950u), vec4<bool>(false, false, false, false))), firstTrailingBit(vec4<u32>(4294967295u, min(36852u, 15124u), ~var_2.x, min(1u, u_input.b)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-478f + 965f)), _wgslsmith_f_op_f32(-180f * _wgslsmith_div_f32(arg_2.x, -1581f)), arg_1.d, 883f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d, 616f, arg_0.d, arg_0.a.x), vec4<f32>(-1435f, arg_1.d, arg_2.x, -300f)))) - arg_1.a))), !(select(42096i, -arg_0.e, all(vec3<bool>(arg_0.b, arg_1.b, true))) < _wgslsmith_mod_i32(select(-11308i, arg_0.e, true), min(24217i, arg_3))), _wgslsmith_sub_vec4_u32(arg_1.c, vec4<u32>(arg_0.c.x, arg_1.c.x ^ select(1u, 1u, arg_0.b), firstLeadingBit(min(arg_1.c.x, arg_0.c.x)), 44368u)), -1376f, 18016i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), true, vec4<u32>(~func_2(), u_input.b, ~var_0.c.x, arg_1.c.x) << (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.x, 4294967295u, 0u, arg_1.c.x), var_0.c, vec4<u32>(0u, 30981u, 0u, 4294967295u))) % vec4<u32>(32u)), -398f, arg_0.e);
    return arg_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-828f, -591f, 729f, -263f) - vec4<f32>(-1658f, -1201f, 473f, 1116f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1368f, -397f, -1000f)))), true, max(vec4<u32>(u_input.b, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b), firstLeadingBit(4294967295u) >> (0u % 32u), u_input.b), ~countOneBits(~vec4<u32>(u_input.b, 61044u, u_input.b, u_input.b))), _wgslsmith_f_op_f32(step(485f, -1346f)), ~_wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(-u_input.a, min(31976i, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x)));
    var_0 = func_4(Struct_1(var_0.a, arg_2, vec4<u32>(func_2(), u_input.b | ~30479u, ~1u, min(_wgslsmith_sub_u32(var_0.c.x, 18649u), var_0.c.x ^ var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-685f * var_0.a.x) + _wgslsmith_div_f32(var_0.a.x, 498f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-446f * -225f), _wgslsmith_f_op_f32(-1000f * var_0.d)))), 0i), Struct_1(vec4<f32>(-1122f, var_0.a.x, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x)))), any(vec2<bool>(arg_1.x, false)), var_0.c, var_0.a.x, var_0.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-245f + 682f) + var_0.a.x))), var_0.e);
    return firstTrailingBit((min(_wgslsmith_mult_i32(var_0.e, u_input.a), var_0.e) << (min(_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_0.c.x, var_0.c.x, 58857u, var_0.c.x)), 0u) % 32u)) ^ select(2147483647i ^ (1i << (var_0.c.x % 32u)), _wgslsmith_mod_i32(~var_0.e, 40984i), var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), true, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(2473u, u_input.b, 4294967295u, 0u), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u)), vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) & ~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), ~(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))), _wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.b, 82625u, 66804u, 4294967295u) & vec4<u32>(10828u, 1u, 4294967295u, 23550u)), max(~vec4<u32>(4294967295u, u_input.b, 4294967295u, 3572u), firstTrailingBit(vec4<u32>(1u, u_input.b, 18099u, u_input.b))))), -1242f, u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f), var_0.d));
    let var_2 = (var_0.b || (all(vec4<bool>(var_0.b, var_0.b, true, var_0.b)) | (u_input.a != _wgslsmith_div_i32(9323i, 1i)))) & (_wgslsmith_mod_i32(~select(u_input.a, u_input.a, true), _wgslsmith_mult_i32(~35047i, 23911i)) > reverseBits(~func_1(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(true, true, true), true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a));
    var var_4 = ~firstLeadingBit(var_0.c.x) >> (var_0.c.x % 32u);
    var var_5 = var_0;
    var var_6 = !vec4<bool>(all(vec4<bool>(true, false & var_2, true, true)), var_5.b, false, !(!var_0.b) || var_2);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, var_5.e, _wgslsmith_add_i32(var_5.e >> (u_input.b % 32u), ~2147483647i), -1i), var_0.d, -(~_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, var_0.e, var_0.e), abs(vec3<i32>(-17527i, 0i, u_input.a)))), var_5.d);
}

