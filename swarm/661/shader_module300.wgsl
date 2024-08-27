struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: bool = false;

var<private> global3: u32 = 64898u;

var<private> global4: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.c.a - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(arg_0.c.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.d, arg_0.c.d, -747f, arg_0.c.a.x)))))), arg_0.c.b | -_wgslsmith_div_i32(i32(-1i) * -15415i, -u_input.b), select(select(vec2<bool>(true, arg_0.b.x), select(vec2<bool>(true, false), vec2<bool>(arg_0.c.c.x, arg_0.c.c.x), arg_0.a.zz), false), select(arg_0.b.xz, vec2<bool>(true, true), false), vec2<bool>(!any(global4[_wgslsmith_index_u32(0u, 18u)]), any(!vec4<bool>(false, false, arg_0.a.x, arg_0.a.x)))), 550f, arg_0.c.a.zxy);
    global0 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_f32(-1150f + 937f);
    global3 = 1u;
    global1 = array<vec3<i32>, 20>();
    return arg_0.b.x;
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_2(select(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(reverseBits(3598u), 1u)), 18u)], vec4<bool>(!func_3(Struct_2(global4[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(1u, 26u)])), select(true, true, true), false, false), !global4[_wgslsmith_index_u32(abs(~3086u), 18u)]), select(vec3<bool>(!all(vec3<bool>(true, true, true)), false, false), vec3<bool>(true, true, true), !(true != all(vec3<bool>(false, false, true)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, -918f, 634f, 1000f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(811f, -381f, 672f, 694f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-624f, -252f, -978f, 2068f), vec4<f32>(673f, -529f, 1411f, 321f), true))))), u_input.b, !(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(450f, -300f))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1246f, 972f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) - _wgslsmith_div_f32(1738f, 465f)))));
    global0 = array<Struct_1, 26>();
    var var_1 = !(var_0.a.x & var_0.c.c.x);
    var var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(var_2.a.zww, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, var_2.e.x, var_0.c.a.x)) - _wgslsmith_f_op_vec3_f32(-var_2.e))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-107f, var_0.c.a.x, var_2.e.x)))), vec3<f32>(-276f, var_2.a.x, var_0.c.a.x)))))));
    return ~(~vec3<u32>(1u, 1u, 1u));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> vec4<f32> {
    global1 = array<vec3<i32>, 20>();
    global0 = array<Struct_1, 26>();
    var var_0 = -_wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, 54536i, -2147483647i)), countOneBits(global1[_wgslsmith_index_u32(arg_0.x, 20u)]))), abs(-50208i));
    global2 = arg_1 && all(select(vec2<bool>(arg_1, true), select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), arg_1 && (arg_1 || arg_1)));
    global1 = array<vec3<i32>, 20>();
    return vec4<f32>(-1714f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f * 1910f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-641f, _wgslsmith_f_op_f32(max(1057f, 1141f)))) + _wgslsmith_f_op_f32(f32(-1f) * -145f))), _wgslsmith_f_op_f32(-1053f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1212f)), -1925f)) + _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1737f)))), -476f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = arg_1;
    let var_1 = var_0.b.xx;
    global4 = array<vec4<bool>, 18>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(firstTrailingBit(func_2()), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(14979u, 0u), 1u, ~9578u) <= ~1u)), _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.b, 2147483647i, 12121i, -17565i), vec4<i32>(var_0.c.b, 61796i, 2147483647i, 28474i)) >> (firstLeadingBit(vec4<u32>(0u, 1u, 1u, 62552u)) % vec4<u32>(32u)), vec4<i32>(arg_1.c.b, var_0.c.b, var_0.c.b, var_0.c.b) >> (~vec4<u32>(4294967295u, 4294967295u, 608u, 29626u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(u_input.a, min(vec4<i32>(2147483647i, var_0.c.b, u_input.a.x, -2147483647i), vec4<i32>(u_input.b, var_0.c.b, var_0.c.b, -2147483647i)), u_input.a))), vec2<bool>(!var_0.a.x, true), var_0.c.a.x, _wgslsmith_f_op_vec3_f32(var_0.c.e - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2220f), arg_1.c.a.x, -205f) - _wgslsmith_f_op_vec4_f32(func_4(vec3<u32>(4294967295u, 1u, 1u) >> (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), var_0.b.x)).wzw)));
    let var_3 = _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(select(u_input.a.yy, ~u_input.a.xw, select(var_0.a.yx, var_2.c, var_1.x)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 4728i) ^ u_input.a.xx, _wgslsmith_mult_vec2_i32(u_input.a.zw, vec2<i32>(u_input.b, var_0.c.b)))), vec2<i32>(-1i, -2147483647i));
    return _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(abs(abs(27254u)), ~min(39317u, 1207u), ~select(1u, 58183u, arg_1.a.x), countOneBits(~46860u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(56225u, func_2().x >> ((8164u >> (1u % 32u)) % 32u), 30605u, abs(firstLeadingBit(55u))), vec4<u32>(0u, 0u, ~(~35764u), reverseBits(_wgslsmith_mod_u32(0u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 1u;
    var var_0 = -1i >> (_wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(56259u, 1u, 0u, 4294967295u)), vec4<u32>(1u >> (1u % 32u), _wgslsmith_dot_vec4_u32(func_1(vec4<bool>(true, false, true, true), Struct_2(global4[_wgslsmith_index_u32(4294967295u, 18u)], vec3<bool>(true, false, true), Struct_1(vec4<f32>(881f, 1453f, 124f, -970f), -1i, vec2<bool>(true, true), 985f, vec3<f32>(645f, 801f, 383f)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 29123u, 0u, 42131u), vec4<u32>(4294967295u, 25598u, 55863u, 16051u), vec4<u32>(50603u, 321u, 0u, 17157u))), 1u, ~(~40940u))) % 32u);
    var var_1 = ~_wgslsmith_mult_u32(~4294967295u, ~(~78067u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -468f), -1137f, vec4<u32>(~countOneBits(7415u), ~_wgslsmith_add_u32(func_2().x, ~1u), 1u, 73895u), _wgslsmith_sub_i32(-17536i, -(_wgslsmith_mod_i32(2147483647i, u_input.a.x) ^ (u_input.a.x >> (63641u % 32u)))));
}

