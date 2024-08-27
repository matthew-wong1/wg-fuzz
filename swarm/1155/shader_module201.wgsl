struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24>;

var<private> global1: Struct_4 = Struct_4(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec2<i32>(0i, -104i), false);

var<private> global2: f32;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a.c.x + -1000f)) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.a.a.c.x, arg_2.a.a.c.x), _wgslsmith_f_op_f32(-199f * arg_2.a.a.c.x))))) + _wgslsmith_f_op_f32(sign(-143f)));
    var_0 = -1000f;
    let var_1 = (_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.x, 1i, 35348i, arg_0.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-35802i, 18896i, arg_3.x, arg_3.x), vec4<i32>(arg_2.a.a.a, -1i, arg_2.c.x, -34248i))), select(arg_2.a.b, abs(arg_2.a.b), !vec4<bool>(false, false, false, global1.b.x))) << (~vec4<u32>(arg_2.a.a.d | 12852u, arg_2.a.a.d, ~u_input.a.x, 9376u | arg_2.a.a.d) % vec4<u32>(32u))) << (~(~(~vec4<u32>(u_input.a.x, 0u, arg_2.a.a.d, 0u))) % vec4<u32>(32u));
    let var_2 = Struct_2(Struct_1(var_1.x & 23361i, vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.a.a.b.x)), _wgslsmith_f_op_f32(-1238f * _wgslsmith_f_op_f32(floor(-210f))), arg_2.a.a.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a.c.x, -1713f, arg_2.a.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a.c.x, 2962f, 334f)))) + vec3<f32>(arg_2.a.a.b.x, _wgslsmith_f_op_f32(round(-357f)), _wgslsmith_f_op_f32(arg_2.a.a.b.x - arg_2.a.a.c.x))), 1u), ~vec4<i32>(0i, -18378i, var_1.x, -arg_0.c.x) >> (~vec4<u32>(0u, 8119u, ~18891u, 21197u) % vec4<u32>(32u)), vec2<i32>(firstLeadingBit(-8382i), min(_wgslsmith_div_i32(~global1.c.x, arg_0.c.x), _wgslsmith_sub_i32(~arg_3.x, global1.c.x))));
    global2 = arg_2.a.a.c.x;
    return !all(vec3<bool>(all(global1.b), true, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>) -> bool {
    var var_0 = ~vec3<u32>(_wgslsmith_sub_u32(arg_2.x ^ ~57954u, abs(min(arg_2.x, arg_0.d))), arg_0.d & min(arg_2.x, firstLeadingBit(17527u)), _wgslsmith_div_u32(1u ^ arg_2.x, arg_0.d));
    global2 = arg_0.b.x;
    var var_1 = ~global1.c;
    var var_2 = global1.c.x;
    let var_3 = Struct_3(Struct_2(Struct_1(-28232i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, -651f, -839f) * vec3<f32>(-1791f, arg_0.b.x, 604f)) * arg_0.c), arg_0.b, _wgslsmith_clamp_u32(reverseBits(arg_2.x), firstTrailingBit(61754u), 4294967295u)), _wgslsmith_div_vec4_i32(min(abs(vec4<i32>(arg_1.c.x, -15454i, -12177i, arg_1.c.x)), vec4<i32>(arg_1.c.x, arg_0.a, 1i, 14023i)), select(vec4<i32>(arg_1.c.x, -3766i, 55099i, 1i), vec4<i32>(arg_0.a, var_1.x, arg_1.c.x, 1i), vec4<bool>(true, true, global1.d, global3.x)) ^ -vec4<i32>(arg_1.c.x, 1i, arg_0.a, -10329i)), ~(-arg_1.c)), global3.x, ~_wgslsmith_mod_vec3_i32(vec3<i32>(select(arg_1.c.x, global1.c.x, false), reverseBits(-17518i), _wgslsmith_mod_i32(global1.c.x, global1.c.x)), ~(-vec3<i32>(arg_0.a, arg_0.a, 2147483647i))));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    global1 = Struct_4(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c.x * arg_0.a.b.x)) >= _wgslsmith_div_f32(-1000f, -334f), false, global1.d), global1.a, arg_0.b.zx, global1.a.x);
    global0 = array<vec2<f32>, 24>();
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f)), 880f, func_4(Struct_1((-1i & global1.c.x) << (78686u % 32u), arg_0.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, 386f, arg_0.a.c.x)), 67307u), Struct_4(select(global1.b, select(global1.a, vec3<bool>(global1.d, true, global3.x), global1.b), !global1.a), !global1.a, select(arg_1.yx, vec2<i32>(0i, arg_0.a.a), vec2<bool>(global1.b.x, global1.a.x)) & min(vec2<i32>(1i, arg_0.a.a), global1.c), !func_3(Struct_4(vec3<bool>(true, true, true), global1.a, arg_1.zz, true), true, Struct_3(Struct_2(Struct_1(arg_0.b.x, vec3<f32>(-170f, -1363f, 1903f), arg_0.a.c, 0u), arg_1, arg_1.yx), true, arg_0.b.zwx), vec4<i32>(arg_1.x, global1.c.x, arg_0.a.a, 6170i))), vec2<u32>(arg_0.a.d, arg_0.a.d))));
    var var_0 = Struct_4(!global1.a, select(select(global1.b, !vec3<bool>(global3.x, global1.b.x, global3.x), global1.a), select(global1.b, !global1.b, select(!global1.a, global1.a, global1.b)), vec3<bool>(true, !(!global3.x), false & global3.x)), vec2<i32>(_wgslsmith_div_i32(reverseBits(0i), -arg_0.a.a), ~((0i | global1.c.x) & _wgslsmith_dot_vec2_i32(arg_0.b.zy, vec2<i32>(0i, global1.c.x)))), global3.x);
    var var_1 = ~(~_wgslsmith_sub_u32(u_input.a.x, 0u));
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = global1.b.x;
    var var_1 = Struct_4(select(vec3<bool>(true, global3.x, global1.d), vec3<bool>(true, false, true), global1.a), select(!vec3<bool>(func_4(arg_1.a, Struct_4(vec3<bool>(false, false, global3.x), vec3<bool>(global1.a.x, global3.x, true), arg_1.b.zy, global1.d), u_input.a), false, !global3.x), select(select(vec3<bool>(true, true, true), select(global1.a, vec3<bool>(true, global1.d, true), global1.a), true), vec3<bool>(true, global1.b.x, global1.d), !global1.a), true), vec2<i32>((arg_2.a | global1.c.x) >> (_wgslsmith_mult_u32(~arg_1.a.d, arg_2.d) % 32u), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(-1i, arg_1.c.x))), true);
    let var_2 = var_1.c.x;
    var var_3 = var_1.c.x;
    var var_4 = select(vec2<bool>(all(select(vec4<bool>(false, global1.a.x, var_1.b.x, var_1.d), select(vec4<bool>(false, false, false, true), vec4<bool>(true, global1.a.x, global1.b.x, true), vec4<bool>(var_1.a.x, true, true, global1.a.x)), !vec4<bool>(true, var_1.d, global3.x, global3.x))), false), vec2<bool>(global1.d, any(vec2<bool>(var_1.b.x, global3.x))), true);
    return Struct_2(func_2(arg_1, countOneBits(-arg_1.b) ^ arg_1.b).a, vec4<i32>(arg_2.a, -_wgslsmith_mod_i32(~var_1.c.x, ~var_1.c.x), global1.c.x, 1i), arg_1.b.yx);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_4 {
    return Struct_4(select(select(global1.b, !vec3<bool>(true, global1.a.x, global3.x), !(global3.x & global3.x)), global1.b, true), !global1.b, max(-arg_0.c, select(reverseBits(vec2<i32>(arg_1.a, -2147483647i) >> (arg_2.yy % vec2<u32>(32u))), global1.c, select(vec2<bool>(global3.x, false), vec2<bool>(global1.d, false), all(vec3<bool>(false, true, true))))), u_input.a.x <= 0u);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    global1 = Struct_4(vec3<bool>(true, any(vec2<bool>(all(global3.zz), true)), true), !vec3<bool>(global1.d, global3.x, true), vec2<i32>(min(_wgslsmith_dot_vec4_i32(arg_1.a.b, vec4<i32>(global1.c.x, arg_1.c.x, 25953i, global1.c.x)), ~global1.c.x), 32790i), true);
    let var_0 = Struct_3(arg_1.a, u_input.a.x != _wgslsmith_mod_u32(u_input.a.x, ~4294967295u), vec3<i32>(arg_1.c.x, arg_1.c.x, -2147483647i));
    let var_1 = -vec2<i32>(firstTrailingBit(1i), 1i);
    global3 = vec3<bool>(all(!vec4<bool>(global1.b.x, func_6(Struct_2(var_0.a.a, var_0.a.b, vec2<i32>(var_0.c.x, 22263i)), var_0.a.a, vec4<u32>(30295u, 0u, var_0.a.a.d, var_0.a.a.d)).d, arg_1.b && global1.a.x, func_3(arg_0, global1.b.x, var_0, arg_1.a.b))), !all(global1.b), true);
    let var_2 = ~u_input.a | ~u_input.a;
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(3972u, firstLeadingBit(26458u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_2.x, var_0.a.a.d), vec3<u32>(0u, var_2.x, var_2.x)), min(1u, 0u))), ~(vec4<u32>(arg_1.a.a.d ^ 1u, _wgslsmith_clamp_u32(var_2.x, u_input.a.x, 0u), 1u, abs(arg_1.a.a.d)) << (~firstTrailingBit(vec4<u32>(arg_1.a.a.d, u_input.a.x, arg_1.a.a.d, 22835u)) % vec4<u32>(32u))));
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(func_7(func_6(func_5(1703f, func_2(Struct_2(Struct_1(global1.c.x, vec3<f32>(309f, -950f, -609f), vec3<f32>(1000f, 849f, 241f), u_input.a.x), vec4<i32>(75579i, global1.c.x, global1.c.x, global1.c.x), vec2<i32>(global1.c.x, global1.c.x)), vec4<i32>(1i, 23227i, 0i, global1.c.x)), func_2(Struct_2(Struct_1(global1.c.x, vec3<f32>(287f, 1000f, 1539f), vec3<f32>(220f, -953f, 1785f), 0u), vec4<i32>(global1.c.x, 80126i, 2772i, global1.c.x), global1.c), vec4<i32>(14360i, global1.c.x, -1i, global1.c.x)).a), func_5(_wgslsmith_f_op_f32(step(-496f, 178f)), Struct_2(Struct_1(32163i, vec3<f32>(594f, -1349f, 676f), vec3<f32>(1588f, 1000f, -738f), u_input.a.x), vec4<i32>(global1.c.x, 2147483647i, 2147483647i, 12864i), vec2<i32>(-74679i, global1.c.x)), Struct_1(0i, vec3<f32>(1822f, 1381f, -785f), vec3<f32>(-849f, -1000f, 1000f), 93445u)).a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 27419u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 99484u))), Struct_3(func_5(_wgslsmith_f_op_f32(-1000f * 1095f), Struct_2(Struct_1(global1.c.x, vec3<f32>(-1917f, -1487f, -764f), vec3<f32>(289f, 1214f, -1205f), 35458u), vec4<i32>(0i, global1.c.x, 0i, global1.c.x), global1.c), Struct_1(-70100i, vec3<f32>(-1000f, -1317f, -1001f), vec3<f32>(725f, 412f, 637f), 27209u)), global1.a.x, -abs(vec3<i32>(2147483647i, global1.c.x, global1.c.x)))), 24u)] - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(313f, 1052f), vec2<f32>(-1000f, -409f))) - vec2<f32>(1191f, -946f)) - vec2<f32>(-153f, _wgslsmith_f_op_f32(485f - -1519f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global1.b.x))))));
    let var_1 = firstLeadingBit(vec2<i32>(select(global1.c.x, -select(2147483647i, -29975i, global1.b.x), !(var_0.x >= -263f)), _wgslsmith_mult_i32(func_5(var_0.x, func_5(-1573f, Struct_2(Struct_1(global1.c.x, vec3<f32>(var_0.x, 355f, var_0.x), vec3<f32>(-1000f, var_0.x, 401f), 1u), vec4<i32>(24078i, global1.c.x, 29412i, 41422i), global1.c), Struct_1(54136i, vec3<f32>(1000f, var_0.x, 574f), vec3<f32>(1500f, -526f, -1591f), u_input.a.x)), Struct_1(global1.c.x, vec3<f32>(var_0.x, var_0.x, 234f), vec3<f32>(159f, 2278f, var_0.x), u_input.a.x)).a.a, -1i)));
    let var_2 = Struct_2(func_2(Struct_2(Struct_1(func_5(var_0.x, Struct_2(Struct_1(global1.c.x, vec3<f32>(1993f, var_0.x, -747f), vec3<f32>(var_0.x, var_0.x, var_0.x), u_input.a.x), vec4<i32>(-1i, 54102i, 2147483647i, -66689i), vec2<i32>(-2147483647i, var_1.x)), Struct_1(global1.c.x, vec3<f32>(-395f, 756f, -1684f), vec3<f32>(-509f, 465f, var_0.x), u_input.a.x)).c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1341f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -121f, -242f)), 1u), vec4<i32>(-var_1.x, -2147483647i, _wgslsmith_clamp_i32(-1i, var_1.x, global1.c.x), global1.c.x), global1.c), min(vec4<i32>(2147483647i, var_1.x, ~global1.c.x, -var_1.x), vec4<i32>(abs(global1.c.x), _wgslsmith_clamp_i32(var_1.x, -2147483647i, 35125i), min(global1.c.x, var_1.x), reverseBits(var_1.x)))).a, vec4<i32>(-29681i, -21421i, 29256i & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.c.x, -8242i, 0i), vec3<i32>(0i, -2147483647i, global1.c.x)), max(vec3<i32>(1i, global1.c.x, var_1.x), vec3<i32>(global1.c.x, var_1.x, -1i))), func_6(func_2(Struct_2(Struct_1(-1i, vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, -1115f, var_0.x), 1u), vec4<i32>(global1.c.x, global1.c.x, var_1.x, global1.c.x), vec2<i32>(global1.c.x, 5882i)), vec4<i32>(-1i, var_1.x, var_1.x, -2147483647i)), Struct_1(_wgslsmith_dot_vec2_i32(global1.c, vec2<i32>(-2147483647i, global1.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1615f)), vec3<f32>(var_0.x, 882f, 1183f), abs(u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a), 4294967295u, u_input.a.x, 58997u)).c.x), vec2<i32>(_wgslsmith_sub_i32(global1.c.x, -reverseBits(global1.c.x)), global1.c.x));
    let var_3 = vec4<bool>(func_4(func_2(var_2, func_5(_wgslsmith_div_f32(-255f, -1756f), var_2, var_2.a).b).a, func_6(func_2(Struct_2(Struct_1(-68955i, var_2.a.b, var_2.a.b, 4294967295u), var_2.b, var_2.b.yz), vec4<i32>(var_1.x, 1i, var_1.x, 31570i) | vec4<i32>(-4017i, var_2.c.x, var_2.c.x, 0i)), Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec3_f32(var_2.a.b * vec3<f32>(var_0.x, 1373f, -299f)), var_2.a.b, var_2.a.d | var_2.a.d), ~(~vec4<u32>(u_input.a.x, var_2.a.d, var_2.a.d, 18191u))), max(u_input.a, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(var_2.a.d, 4294967295u)), u_input.a))), any(!vec4<bool>(func_6(Struct_2(var_2.a, vec4<i32>(global1.c.x, -10446i, 35210i, 29397i), vec2<i32>(global1.c.x, 2147483647i)), var_2.a, vec4<u32>(7675u, u_input.a.x, u_input.a.x, var_2.a.d)).b.x, false, global3.x, 2148f == var_0.x)), global3.x, true & (!global3.x && true));
    global3 = select(!func_6(Struct_2(func_2(var_2, vec4<i32>(59966i, global1.c.x, -8413i, var_1.x)).a, vec4<i32>(1i, global1.c.x, var_1.x, global1.c.x), vec2<i32>(-2147483647i, 2147483647i)), Struct_1(_wgslsmith_add_i32(-1i, -2147483647i), var_2.a.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1796f, 1000f, var_2.a.c.x), var_2.a.c, global1.a)), var_2.a.d), ~reverseBits(vec4<u32>(u_input.a.x, var_2.a.d, 30990u, u_input.a.x))).a, select(!select(!global1.b, vec3<bool>(global1.a.x, false, var_3.x), global1.a), !select(global1.a, select(vec3<bool>(false, false, var_3.x), vec3<bool>(global3.x, global3.x, true), vec3<bool>(global1.b.x, false, var_3.x)), select(vec3<bool>(true, false, false), global1.a, false)), true), true);
    return select(var_2.b.xyz, vec3<i32>(23928i, var_1.x, ~func_2(Struct_2(var_2.a, vec4<i32>(var_2.b.x, -22734i, var_1.x, var_1.x), var_1), var_2.b).c.x & 0i), vec3<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(75862i, 1i, var_2.a.a, -40298i), var_2.b) <= -var_1.x), all(!select(vec2<bool>(global3.x, true), var_3.zy, true)), true));
}

fn func_8(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    let var_0 = vec3<bool>(!(global3.x != func_6(func_2(Struct_2(Struct_1(arg_1.x, arg_0.b, arg_0.c, 1658u), vec4<i32>(6776i, global1.c.x, arg_1.x, -2147483647i), vec2<i32>(-1i, global1.c.x)), vec4<i32>(global1.c.x, 22326i, 2147483647i, 2147483647i)), arg_0, reverseBits(vec4<u32>(22198u, u_input.a.x, arg_0.d, 0u))).b.x), -902f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(531f))))), false);
    var var_1 = vec2<i32>(-global1.c.x, global1.c.x);
    global1 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)) - -400f) - _wgslsmith_f_op_f32(func_2(Struct_2(arg_0, vec4<i32>(global1.c.x, 1i, 28976i, 62816i), vec2<i32>(2147483647i, 41453i)), vec4<i32>(-4422i, arg_1.x, arg_1.x, -11935i)).a.c.x - _wgslsmith_f_op_f32(-639f - 708f))), Struct_2(Struct_1(_wgslsmith_mod_i32(41432i, arg_0.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-678f, 1499f, arg_0.c.x))), arg_0.c, ~55272u), vec4<i32>(_wgslsmith_sub_i32(0i, -2147483647i), var_1.x << (arg_0.d % 32u), global1.c.x ^ 37156i, func_2(Struct_2(Struct_1(-2147483647i, arg_0.b, arg_0.c, u_input.a.x), vec4<i32>(global1.c.x, arg_1.x, -40450i, global1.c.x), global1.c), vec4<i32>(-34249i, 1i, 21996i, arg_0.a)).a.a), _wgslsmith_add_vec2_i32(arg_1.zy, global1.c)), func_2(Struct_2(Struct_1(global1.c.x, arg_0.b, vec3<f32>(550f, arg_0.b.x, arg_0.b.x), 4294967295u), ~vec4<i32>(arg_0.a, 2147483647i, var_1.x, global1.c.x), vec2<i32>(arg_0.a, arg_0.a)), max(-vec4<i32>(-1i, arg_1.x, -2147483647i, -4040i), -vec4<i32>(-2147483647i, -1i, 0i, global1.c.x))).a), arg_0, firstTrailingBit(~vec4<u32>(~u_input.a.x, arg_0.d, firstLeadingBit(67165u), arg_0.d)));
    var var_2 = arg_1;
    var var_3 = 53182u;
    return ~min(abs(-4506i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.a, 7150i), func_2(Struct_2(arg_0, vec4<i32>(var_1.x, arg_0.a, 2147483647i, arg_1.x), arg_1.yz), vec4<i32>(-1i, -2147483647i, -23858i, 0i)).c.x), -5452i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(293f, -1797f, true)) - -265f) - 242f)));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)));
    let var_0 = reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 59921u, u_input.a.x, 26869u), vec4<u32>(u_input.a.x, 36783u, u_input.a.x, 39826u)) & ~select(vec4<u32>(77521u, u_input.a.x, u_input.a.x, 54488u), vec4<u32>(29628u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(global1.d, false, true, false))) ^ countOneBits(vec4<u32>(2419u, _wgslsmith_dot_vec3_u32(~vec3<u32>(35363u, 4294967295u, u_input.a.x), select(vec3<u32>(u_input.a.x, u_input.a.x, 61489u), vec3<u32>(12186u, 31694u, u_input.a.x), true)), _wgslsmith_sub_u32(u_input.a.x, 15475u) & ~0u, ~1u));
    var var_1 = firstLeadingBit(min(var_0 ^ firstLeadingBit(var_0), var_0) << (var_0 % vec4<u32>(32u)));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_8(Struct_1(2147483647i, vec3<f32>(-257f, 278f, -156f), vec3<f32>(-1375f, 1331f, -1006f), 1u), func_1())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1731f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_5(-246f, Struct_2(Struct_1(global1.c.x, vec3<f32>(118f, 420f, 250f), vec3<f32>(-1477f, 436f, 214f), 15598u), vec4<i32>(global1.c.x, 1i, global1.c.x, global1.c.x), vec2<i32>(global1.c.x, 15576i)), Struct_1(global1.c.x, vec3<f32>(-555f, 1000f, -1755f), vec3<f32>(682f, -801f, -331f), var_2.x)).a.b.x)) * 1f)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-804f + 1122f) * -170f), _wgslsmith_f_op_f32(-250f + -161f))), -904f), ~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(10422u, 0u, var_1.x), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.x, 30111u), ~2233u, ~var_0.x)), (vec4<i32>(i32(-1i) * -24421i, i32(-1i) * -2147483647i, 12346i, -1i) >> (vec4<u32>(_wgslsmith_mod_u32(var_1.x, var_0.x), ~var_2.x, 1u, _wgslsmith_dot_vec2_u32(var_0.ww, vec2<u32>(var_1.x, 4294967295u))) % vec4<u32>(32u))) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(20103u, 98514u, var_1.x, 0u), ~var_0) & _wgslsmith_mult_vec4_u32(~var_0, vec4<u32>(u_input.a.x, 29963u, 36910u, 4559u) >> (var_0 % vec4<u32>(32u)))) % vec4<u32>(32u)));
}

