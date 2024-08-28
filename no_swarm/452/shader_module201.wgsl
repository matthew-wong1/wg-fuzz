struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
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

var<private> global0: array<u32, 16>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec2<i32> {
    global0 = array<u32, 16>();
    var var_0 = select(select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, false, true, false), any(vec4<bool>(true, false, true, false))), vec4<bool>(true, ~global0[_wgslsmith_index_u32(4294967295u, 16u)] != (u_input.c ^ 41082u), ~u_input.a < (u_input.a >> (global0[_wgslsmith_index_u32(u_input.c, 16u)] % 32u)), false), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), !vec4<bool>(false, _wgslsmith_div_f32(arg_1, arg_1) != _wgslsmith_f_op_f32(ceil(2848f)), true, true), !(!all(vec2<bool>(true, false))));
    let var_1 = reverseBits((_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 16u)], 16u)], u_input.c) >> (vec2<u32>(33471u, u_input.d) % vec2<u32>(32u)), select(vec2<u32>(u_input.a, u_input.c), vec2<u32>(859u, 0u), var_0.x)) >> (~(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], 0u)) % vec2<u32>(32u))) << (vec2<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(5306u, u_input.d), 16u)], countOneBits(u_input.d << (0u % 32u))) % vec2<u32>(32u)));
    global0 = array<u32, 16>();
    let var_2 = Struct_2(u_input.b.zx, select(!(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), var_0.x)), !(!vec4<bool>(true, var_0.x, false, var_0.x)), false), Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(10981i, u_input.e), vec2<i32>(arg_0, -44880i)), arg_0, 27896i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 0i, u_input.b.x), u_input.b.wyz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(abs(252f)))), vec4<i32>(-countOneBits(u_input.e), -2147483647i, _wgslsmith_mult_i32(arg_0, 2147483647i), arg_0), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(select(u_input.b.xy, vec2<i32>(1i, 0i), vec2<bool>(var_0.x, var_0.x)), u_input.b.yw), _wgslsmith_mod_vec2_i32(u_input.b.wy | vec2<i32>(arg_0, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, 2147483647i), u_input.b.wx, u_input.b.wy)))), 0i);
    return vec2<i32>(abs(-var_2.a.x), var_2.c.d.x);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1567f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1748f), _wgslsmith_f_op_f32(-659f - -1538f))), -1105f, -108f));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(var_0.x, -563f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + 770f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(774f * 1000f)))), vec3<f32>(-456f, -1786f, 628f)))));
    global0 = array<u32, 16>();
    let var_1 = u_input.c;
    var var_2 = 27348u;
    return Struct_2(select(u_input.b.wz, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(func_3(1i, 1943f), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.b.x, 21553i))), func_3(u_input.e | u_input.e, _wgslsmith_f_op_f32(-1024f - 504f)), -vec2<i32>(u_input.b.x, 2147483647i)), !(true | all(vec3<bool>(false, true, false)))), vec4<bool>(true, all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec3<bool>(true, true, true))), Struct_1(countOneBits(-vec4<i32>(-2147483647i, 1i, u_input.b.x, u_input.e)), vec2<f32>(var_0.x, var_0.x), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(-18860i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.e, u_input.b.x, -1i, u_input.b.x)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, u_input.e, u_input.e, 0i), -vec4<i32>(-2147483647i, u_input.b.x, -14369i, -12032i)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), true)), ~(-_wgslsmith_mod_vec2_i32(u_input.b.yy, vec2<i32>(u_input.b.x, u_input.e)))), _wgslsmith_sub_i32(u_input.b.x, firstLeadingBit(-2147483647i)));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = !vec4<bool>(arg_0.a.b, (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.c.d, u_input.e), vec2<i32>(-50135i, 1i)) << (_wgslsmith_div_u32(4294967295u, 23830u) % 32u)) <= firstTrailingBit(~(-1i)), arg_0.b, !func_2().b.x);
    let var_1 = Struct_4(arg_0.a, all(select(select(vec4<bool>(arg_0.b, var_0.x, var_0.x, var_0.x), !arg_0.a.c.b, arg_0.b && var_0.x), select(select(arg_0.a.c.b, arg_0.a.c.b, arg_0.a.c.b), select(arg_0.a.c.b, vec4<bool>(false, true, arg_0.b, var_0.x), true), arg_0.a.c.b), vec4<bool>(arg_0.b, var_0.x, true, !var_0.x))), _wgslsmith_dot_vec2_u32(reverseBits(~reverseBits(vec2<u32>(u_input.d, 0u))), select(~vec2<u32>(0u, u_input.d), _wgslsmith_sub_vec2_u32(vec2<u32>(20461u, 1u), vec2<u32>(2320u, u_input.c)), !func_2().b.x)), vec3<i32>(_wgslsmith_add_i32(u_input.e, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, u_input.e, arg_0.d.x), vec4<i32>(arg_0.d.x, arg_0.d.x, -46853i, arg_0.a.c.c.c.x)), u_input.b)), i32(-1i) * -firstLeadingBit(1i), func_2().c.a.x), ~(~53842u));
    var var_2 = abs(~vec2<i32>(firstLeadingBit(77513i), arg_0.d.x));
    var var_3 = ~(-2147483647i) > abs(-_wgslsmith_div_i32(u_input.e, firstTrailingBit(0i)));
    let var_4 = arg_0;
    return var_1.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = Struct_4(func_4(Struct_4(Struct_3(738f, true, func_2()), true, 19768u, arg_2.a.zzw, ~abs(2215u))), true, ~(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 8661u) << (select(u_input.c, 17408u, false) % 32u)) ^ 1u, arg_2.c.yww, select(arg_1.x, ~4294967295u, func_4(Struct_4(Struct_3(arg_2.b.x, false, Struct_2(vec2<i32>(21068i, arg_0.x), vec4<bool>(true, true, false, true), Struct_1(u_input.b, vec2<f32>(1000f, arg_2.b.x), vec4<i32>(arg_0.x, arg_0.x, 0i, 0i), arg_2.d), -19921i)), false, 0u, vec3<i32>(arg_2.c.x, u_input.b.x, arg_2.c.x), 0u)).b) & max(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(14685u, u_input.c), 16u)], _wgslsmith_div_u32(~0u, abs(19612u))));
    let var_1 = var_0.a.c.b.x != all(!select(vec3<bool>(var_0.a.c.b.x, var_0.b, var_0.a.b), vec3<bool>(false, false, false), select(var_0.a.c.b.x, true, var_0.b)));
    let var_2 = var_0.a.c.b.xzx;
    var var_3 = false;
    var var_4 = -(arg_2.a << ((abs(vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(arg_1.x, 16u)], global0[_wgslsmith_index_u32(24705u, 16u)]) & vec4<u32>(1u, 21406u, var_0.e, 25275u)) ^ vec4<u32>(1u, 0u, select(global0[_wgslsmith_index_u32(u_input.a, 16u)], 82319u, false), _wgslsmith_mod_u32(53415u, global0[_wgslsmith_index_u32(arg_1.x, 16u)]))) % vec4<u32>(32u)));
    return Struct_4(var_0.a, var_1, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(min(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(117021u, 16u)], var_0.c, 0u)), select(vec3<u32>(var_0.e, 4294967295u, 0u), vec3<u32>(u_input.c, arg_1.x, global0[_wgslsmith_index_u32(arg_1.x, 16u)]), vec3<bool>(var_1, true, true))), vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(57356u, global0[_wgslsmith_index_u32(var_0.e, 16u)], 56656u, u_input.a), vec4<u32>(arg_1.x, u_input.d, 35030u, arg_1.x)), 16u)], ~1u, ~1u))), -_wgslsmith_add_vec3_i32(firstLeadingBit(var_0.a.c.c.a.wzw) >> (~vec3<u32>(17916u, u_input.a, global0[_wgslsmith_index_u32(var_0.c, 16u)]) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(-16498i, var_4.x), arg_2.a.x, 7009i)), var_0.e);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_4) -> vec4<bool> {
    return vec4<bool>(func_4(arg_2).c.b.x, func_4(func_1(u_input.b.wy, arg_1, arg_2.a.c.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c.c.b.x, -566f)) * arg_2.a.c.c.b))).c.b.x, !(countOneBits(arg_2.a.c.c.a.x) >= u_input.e), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(func_5(_wgslsmith_add_u32(u_input.d, 26622u), abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 4294967295u)), func_1(u_input.b.wy, vec2<u32>(41603u, global0[_wgslsmith_index_u32(0u, 16u)]), Struct_1(vec4<i32>(2147483647i, u_input.b.x, u_input.e, 11265i), vec2<f32>(864f, -883f), u_input.b, vec2<i32>(1i, 0i)), vec2<f32>(-1000f, 305f))), vec4<bool>(true, true, true, true), true));
    let var_1 = vec3<i32>((27585i & countOneBits(func_1(u_input.b.yy, vec2<u32>(1u, 1u), Struct_1(vec4<i32>(u_input.e, 0i, u_input.b.x, u_input.e), vec2<f32>(225f, -486f), vec4<i32>(1i, 0i, -1i, -21250i), vec2<i32>(u_input.b.x, 2147483647i)), vec2<f32>(1000f, 2220f)).d.x)) >> (6284u % 32u), _wgslsmith_div_i32(func_3(-u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1310f)).x >> ((u_input.d & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(58901u, 16u)], u_input.d, 0u), vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(91331u, 16u)], u_input.a, u_input.c))) % 32u), func_4(Struct_4(func_4(Struct_4(Struct_3(237f, false, Struct_2(u_input.b.wz, vec4<bool>(true, false, false, false), Struct_1(vec4<i32>(u_input.e, 16156i, u_input.e, u_input.e), vec2<f32>(115f, -718f), vec4<i32>(-1i, 1i, u_input.b.x, u_input.e), u_input.b.zy), u_input.e)), true, 37577u, u_input.b.xzz, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41041u, 16u)], 16u)])), true, _wgslsmith_dot_vec3_u32(vec3<u32>(48320u, 0u, u_input.a), vec3<u32>(17627u, u_input.d, global0[_wgslsmith_index_u32(1u, 16u)])), vec3<i32>(u_input.b.x, u_input.b.x, u_input.e), abs(1u))).c.a.x), ~u_input.b.x);
    var var_2 = func_2();
    var_0 = var_2.c.c.x < reverseBits(1i & (_wgslsmith_dot_vec3_i32(vec3<i32>(48552i, 3710i, var_2.c.d.x), vec3<i32>(10606i, -1i, 2147483647i)) ^ (var_2.c.a.x | -48605i)));
    var var_3 = func_4(func_1(~abs(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), var_1.xz)), _wgslsmith_div_vec2_u32(~max(vec2<u32>(0u, 68277u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], 20273u)), ~vec2<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(47623u, 16u)]) & vec2<u32>(4294967295u, 4294967295u)), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1718f, var_2.c.b.x), vec2<f32>(1162f, 616f)))), vec4<i32>(var_2.a.x, 1i, _wgslsmith_clamp_i32(u_input.e, var_2.c.c.x, -2147483647i), u_input.e), _wgslsmith_sub_vec2_i32(func_1(u_input.b.xx, vec2<u32>(global0[_wgslsmith_index_u32(0u, 16u)], u_input.d), Struct_1(u_input.b, var_2.c.b, vec4<i32>(var_1.x, var_2.d, var_2.a.x, -77487i), vec2<i32>(0i, 42321i)), vec2<f32>(var_2.c.b.x, -1054f)).d.zz, var_2.c.c.xw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.c.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(446f, var_2.c.b.x))) - var_2.c.b))).c.b;
    var var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~57269u, u_input.a), 16u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23918u, 16u)], 16u)], 4294967295u, u_input.d), vec4<u32>(31360u, ~global0[_wgslsmith_index_u32(0u, 16u)] | 1u, u_input.c, 38731u));
    global0 = array<u32, 16>();
    let var_5 = var_2.c;
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~func_2().a.x, _wgslsmith_clamp_i32(-1i, ~var_1.x, u_input.e)));
}

