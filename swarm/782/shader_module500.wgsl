struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(163f, 115f, -617f, -471f, 1709f, -470f, 661f, 1000f, -1621f, -437f, 1023f, 979f, -1000f, 688f, 2326f, -2778f, 153f);

var<private> global1: vec2<i32>;

var<private> global2: Struct_2;

var<private> global3: vec4<bool>;

var<private> global4: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global2 = Struct_2(arg_0, any(select(vec4<bool>(arg_0.c, any(global3.wwz), any(vec4<bool>(global2.b, global3.x, global3.x, false)), true), !(!vec4<bool>(true, arg_0.c, false, true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.a.d.x, 41636u), 17u)] < _wgslsmith_f_op_f32(sign(1000f)))), Struct_1(_wgslsmith_f_op_f32(-887f + arg_0.a), -global2.a.b, global2.a.c, vec3<u32>(~max(31277u, 1u), 4294967295u, firstLeadingBit(4294967295u)), -global2.a.b.x), false, global0[_wgslsmith_index_u32(~(~(~u_input.a.x & _wgslsmith_mod_u32(u_input.a.x, 97114u))), 17u)]);
    global1 = ~(-select(_wgslsmith_mult_vec2_i32(~global2.c.b, vec2<i32>(arg_0.b.x, 2147483647i)), vec2<i32>(_wgslsmith_mod_i32(global1.x, arg_0.b.x), -34i), !arg_0.c || all(global3.ywz)));
    var var_0 = -164f;
    var var_1 = firstTrailingBit(~u_input.b);
    global4 = _wgslsmith_div_u32(~41671u & var_1.x, 29812u);
    return u_input.b | select(vec3<u32>(abs(global2.c.d.x) << ((0u << (0u % 32u)) % 32u), _wgslsmith_mod_u32(var_1.x, 6276u >> (var_1.x % 32u)), ~(global2.c.d.x & u_input.b.x)), u_input.b, global3.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    global1 = global2.c.b;
    var var_0 = ~(1u | global2.a.d.x) << (_wgslsmith_mod_u32(arg_0.d.x, _wgslsmith_mod_u32(0u, arg_0.d.x)) % 32u);
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_3.b.x, ~3306i, arg_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.e, arg_0.e, global1.x), vec3<i32>(-40917i, 1i, arg_3.e)))), vec4<i32>(u_input.d ^ -global2.c.e, global1.x << (arg_3.d.x % 32u), global1.x, select(-36615i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.x, global1.x, 29860i, arg_3.b.x), vec4<i32>(global1.x, global1.x, arg_0.b.x, global2.a.e)), all(vec4<bool>(true, true, global2.d, global2.d))))), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, ~global1.x, _wgslsmith_clamp_i32(u_input.d, u_input.d, -1i), 1i), ~firstLeadingBit(vec4<i32>(global2.a.e, arg_0.e, -45555i, -38790i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0.d.x, 17u)])), 447f, arg_0.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2204f, 746f, arg_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-838f, global0[_wgslsmith_index_u32(0u, 17u)], arg_3.a)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(-1753f)), arg_3.b, true, ~vec3<u32>(51011u, _wgslsmith_clamp_u32(arg_1.x, 1u, 62436u) | reverseBits(arg_0.d.x), arg_0.d.x), ~(~(-1i) >> ((5254u | arg_3.d.x) % 32u)) & firstLeadingBit(~(-38563i)));
    return ~global2.c.d.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global4 = global2.c.d.x;
    var var_0 = arg_0.c;
    global0 = array<f32, 17>();
    var var_1 = var_0.c;
    let var_2 = Struct_2(Struct_1(879f, arg_2.a.b, all(select(select(vec3<bool>(true, true, global2.c.c), vec3<bool>(true, true, false), true), !global3.yyy, arg_2.c.e > global1.x)), u_input.b, i32(-1i) * -22409i), global2.c.c, arg_0.c, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_0.e)));
    return Struct_1(606f, vec2<i32>(-2147483647i, global1.x), func_4(global2.c, abs(vec2<u32>(arg_0.c.d.x, 62744u)), arg_2.b, Struct_1(global2.c.a, ~vec2<i32>(-1i, global2.c.e), arg_1.c, func_3(global2.a), _wgslsmith_div_i32(1i, 1i))) > _wgslsmith_mult_u32(global2.a.d.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.d.x, var_0.d.x, 1u, 4970u), vec4<u32>(12135u, global2.a.d.x, arg_2.a.d.x, 68874u)))), reverseBits(var_0.d), 21444i);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    global0 = array<f32, 17>();
    let var_0 = vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, arg_0.d.x, arg_2.d.x, u_input.b.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 3415u)), countOneBits(arg_2.d.x)), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(2124u, global2.a.d.x, 31737u, arg_0.d.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 19746u, arg_0.d.x), vec4<u32>(u_input.b.x, 4294967295u, arg_0.d.x, global2.a.d.x))), ~(~4294967295u)) << (arg_2.d % vec3<u32>(32u));
    global0 = array<f32, 17>();
    let var_1 = (_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -65i, 1i, u_input.d), vec4<i32>(-53411i, arg_0.b.x, arg_0.b.x, arg_0.b.x)), reverseBits(u_input.d), ~0i, global1.x), -vec4<i32>(arg_2.e, arg_2.b.x, global2.c.b.x, -2147483647i) | abs(vec4<i32>(0i, -56550i, global2.c.b.x, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(global1.x, 36i, global2.c.e, 2147483647i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1835u, arg_0.d.x, _wgslsmith_sub_u32(12323u, var_0.x), 54704u << (arg_0.d.x % 32u)), ~(vec4<u32>(37494u, 4294967295u, 0u, var_0.x) & vec4<u32>(13348u, 59765u, 4294967295u, arg_2.d.x))) % vec4<u32>(32u))) | (max(vec4<i32>(~global1.x, -1366i, i32(-1i) * -25679i, ~21991i), abs(vec4<i32>(arg_2.b.x, global2.c.e, -1i, -7977i))) >> (vec4<u32>(countOneBits(39048u) >> (_wgslsmith_div_u32(arg_2.d.x, var_0.x) % 32u), 7038u, 34059u, ~24245u) % vec4<u32>(32u)));
    global4 = firstTrailingBit(40277u);
    return select(select(global3.zy, !vec2<bool>(arg_2.c, true), vec2<bool>(false, false)), select(vec2<bool>(true, select(!arg_2.c, false, any(vec4<bool>(false, true, false, false)))), global3.xy, func_2(Struct_2(func_2(Struct_2(arg_0, arg_2.c, Struct_1(-155f, arg_0.b, true, global2.a.d, global1.x), arg_0.c, arg_0.a), Struct_1(arg_0.a, vec2<i32>(arg_2.b.x, global1.x), arg_0.c, arg_0.d, -1i), Struct_2(arg_0, global3.x, arg_0, arg_2.c, arg_3)), any(vec4<bool>(global3.x, global3.x, true, arg_2.c)), Struct_1(-948f, vec2<i32>(global2.c.e, 34081i), false, vec3<u32>(var_0.x, arg_0.d.x, global2.a.d.x), var_1.x), arg_0.c, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 17u)] + -1416f)), Struct_1(-111f, abs(vec2<i32>(-12670i, 14130i)), true, countOneBits(var_0), func_2(Struct_2(global2.c, global2.d, Struct_1(global2.a.a, arg_2.b, false, vec3<u32>(arg_2.d.x, 27761u, arg_0.d.x), global2.a.e), global3.x, arg_2.a), Struct_1(global0[_wgslsmith_index_u32(arg_2.d.x, 17u)], vec2<i32>(47186i, u_input.d), arg_2.c, vec3<u32>(30970u, 41343u, global2.a.d.x), var_1.x), Struct_2(Struct_1(arg_0.a, arg_0.b, arg_2.c, global2.c.d, arg_0.b.x), arg_2.c, arg_0, false, 386f)).e), Struct_2(func_2(Struct_2(arg_2, global3.x, Struct_1(arg_0.a, vec2<i32>(global1.x, arg_2.e), arg_0.c, global2.a.d, var_1.x), true, arg_2.a), Struct_1(1000f, arg_0.b, arg_0.c, u_input.b, -1i), Struct_2(Struct_1(arg_1.x, vec2<i32>(-1i, global1.x), arg_2.c, vec3<u32>(arg_0.d.x, 48782u, arg_2.d.x), global1.x), arg_2.c, Struct_1(arg_1.x, vec2<i32>(1i, global1.x), arg_0.c, var_0, global1.x), global3.x, 886f)), global3.x, Struct_1(-343f, vec2<i32>(global1.x, -16978i), true, global2.a.d, var_1.x), arg_2.c, _wgslsmith_div_f32(-1965f, -1000f))).c), select(global3.yy, global3.yw, any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.c, false, global2.b, global3.x), vec4<bool>(arg_2.c, arg_0.c, arg_0.c, true)), vec4<bool>(global2.d, true, arg_2.c, true), select(vec4<bool>(arg_0.c, arg_2.c, true, global3.x), vec4<bool>(arg_0.c, arg_2.c, false, global2.a.c), vec4<bool>(global2.c.c, arg_2.c, arg_0.c, false))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = !select(select(func_5(Struct_1(203f, arg_2.c.b, arg_2.c.c, arg_2.a.d, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.a, arg_1.a)), func_2(arg_2, Struct_1(global2.a.a, arg_1.b, true, u_input.b, 40955i), arg_2), global2.a.a), select(global3.zx, !global3.yw, !vec2<bool>(global3.x, true)), global2.d), global3.zy, global2.b);
    global2 = arg_2;
    let var_1 = Struct_2(func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(global2.a.d.x, 17u)])), abs(global2.c.b), !global2.c.c, vec3<u32>(arg_0, 47548u, 0u), ~(-53076i)), !var_0.x, arg_2.c, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.a, -1183f)), func_2(Struct_2(Struct_1(154f, vec2<i32>(-58228i, u_input.d), arg_1.c, vec3<u32>(arg_0, arg_0, arg_0), u_input.d), global2.b, arg_2.a, var_0.x, 612f), arg_2.a, arg_2).a)), Struct_1(-388f, arg_1.b, true, ~(~u_input.b), abs(-34820i)), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -662f), -vec2<i32>(45774i, -2226i), true, ~u_input.b, u_input.d ^ global2.a.b.x), !any(vec4<bool>(true, false, global3.x, false)), arg_2.a, global2.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)))), all(global3.yz), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1221f + arg_1.a)))), ~arg_2.c.b, !(false & global2.c.c) != ((var_0.x || arg_1.c) & any(vec4<bool>(true, global3.x, arg_1.c, false))), ~(~vec3<u32>(global2.a.d.x, 14499u, arg_0)), -10621i), true, 1392f);
    let var_2 = var_1;
    var var_3 = ~vec2<u32>(59844u >> (_wgslsmith_clamp_u32(4294967295u, reverseBits(arg_1.d.x), _wgslsmith_clamp_u32(0u, arg_1.d.x, arg_1.d.x)) % 32u), _wgslsmith_mult_u32(~22072u, _wgslsmith_clamp_u32(~4294967295u, arg_0, abs(arg_1.d.x))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1473f) * _wgslsmith_f_op_f32(f32(-1f) * -1798f)), select(-reverseBits(vec2<i32>(-240i, var_2.c.e)), ~(~vec2<i32>(0i, var_2.a.e)), global3.wx), true, var_1.c.d, u_input.d), true, func_2(Struct_2(arg_1, !(!var_0.x), func_2(arg_2, var_2.a, var_1), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -720f)))), arg_2.c, Struct_2(arg_2.c, arg_2.c.c, func_2(Struct_2(arg_2.a, false, global2.a, global3.x, 562f), arg_2.c, arg_2), global3.x, _wgslsmith_f_op_f32(step(-1170f, var_2.c.a)))), arg_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.e, arg_1.a, global2.a.c)) * _wgslsmith_f_op_f32(arg_1.a - var_2.a.a))))));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<i32> {
    global2 = Struct_2(arg_1.a, arg_0.x, func_1(func_4(Struct_1(arg_1.e, vec2<i32>(global2.c.e, 2147483647i), true, vec3<u32>(global2.c.d.x, global2.c.d.x, arg_1.c.d.x), u_input.d), ~u_input.b.yy, true, Struct_1(782f, vec2<i32>(-1i, 35387i), true, u_input.b, 2147483647i)) >> (0u % 32u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2.a.b, global2.c.c, u_input.b, (0i | global2.a.e) << (arg_1.a.d.x % 32u)), Struct_2(func_2(func_1(u_input.c, arg_1.a, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 17u)], vec2<i32>(-14236i, global2.c.b.x), true, global2.a.d, -1i), false, global2.c, arg_1.d, global0[_wgslsmith_index_u32(u_input.c, 17u)])), Struct_1(-974f, vec2<i32>(global1.x, 10448i), false, vec3<u32>(4294967295u, 56070u, global2.c.d.x), global1.x), arg_1), !all(vec4<bool>(global2.d, arg_1.d, true, false)), arg_1.a, true && (false & arg_1.a.c), func_2(func_1(33944u, Struct_1(705f, global2.a.b, arg_1.d, vec3<u32>(1u, 56990u, 0u), 17688i), Struct_2(global2.a, true, Struct_1(349f, vec2<i32>(global1.x, global2.c.b.x), arg_1.a.c, vec3<u32>(21167u, 0u, 1u), -25557i), global2.c.c, 298f)), arg_1.a, arg_1).a)).a, !all(arg_0) && func_2(func_1(u_input.b.x ^ 4294967295u, func_2(Struct_2(Struct_1(559f, arg_1.c.b, global2.d, vec3<u32>(arg_1.c.d.x, global2.c.d.x, u_input.c), arg_1.c.e), false, global2.c, global2.a.c, 190f), global2.c, Struct_2(Struct_1(arg_1.e, global2.c.b, true, arg_1.a.d, global1.x), false, global2.a, false, -1120f)), Struct_2(arg_1.c, global3.x, Struct_1(global2.e, global2.c.b, global2.d, vec3<u32>(1u, u_input.b.x, u_input.b.x), global1.x), false, arg_1.c.a)), Struct_1(func_1(arg_1.c.d.x, Struct_1(380f, vec2<i32>(global1.x, global1.x), global3.x, vec3<u32>(33938u, arg_1.c.d.x, u_input.b.x), u_input.d), Struct_2(Struct_1(global2.e, vec2<i32>(-19053i, u_input.d), true, vec3<u32>(84403u, 1u, arg_1.c.d.x), global2.c.e), global3.x, Struct_1(global2.c.a, global2.a.b, true, vec3<u32>(arg_1.a.d.x, 100575u, 107437u), u_input.d), true, -1967f)).a.a, global2.a.b, true && arg_0.x, ~vec3<u32>(u_input.b.x, u_input.c, arg_1.c.d.x), _wgslsmith_div_i32(u_input.d, 2147483647i)), func_1(140251u, Struct_1(global2.e, arg_1.c.b, false, vec3<u32>(u_input.a.x, arg_1.a.d.x, u_input.b.x), global1.x), func_1(global2.c.d.x, Struct_1(arg_1.c.a, vec2<i32>(-60018i, u_input.d), true, vec3<u32>(37529u, 0u, u_input.c), -2147483647i), Struct_2(arg_1.a, false, arg_1.a, false, -249f)))).c, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_1.c.d.x, 17u)])));
    global2 = func_1(min(func_2(Struct_2(Struct_1(arg_1.a.a, global2.c.b, true, vec3<u32>(arg_1.c.d.x, u_input.c, 17644u), global2.c.e), u_input.c > arg_1.c.d.x, arg_1.c, !global3.x, _wgslsmith_f_op_f32(arg_1.c.a - -381f)), func_1(4109u, arg_1.c, func_1(87528u, arg_1.c, Struct_2(arg_1.c, true, Struct_1(global0[_wgslsmith_index_u32(global2.a.d.x, 17u)], vec2<i32>(-2147483647i, -1i), false, u_input.b, 2147483647i), global3.x, arg_1.c.a))).c, arg_1).d.x, 0u), Struct_1(_wgslsmith_f_op_f32(floor(global2.c.a)), vec2<i32>(min(firstLeadingBit(38799i), 24997i), max(select(-10621i, -62685i, false), select(36241i, 1i, true))), arg_1.d, vec3<u32>(arg_1.c.d.x, abs(22786u >> (1u % 32u)), u_input.c), global2.c.b.x), arg_1);
    var var_0 = Struct_2(Struct_1(arg_1.c.a, -(vec2<i32>(22878i, arg_1.a.e) ^ vec2<i32>(2434i, 47175i)), global2.c.c, vec3<u32>(~arg_1.c.d.x, arg_1.c.d.x, abs(_wgslsmith_add_u32(1u, arg_1.c.d.x))), ~(-74864i & _wgslsmith_sub_i32(2147483647i, global2.a.b.x))), global3.x, func_1(76561u, func_1(u_input.a.x | ~arg_1.c.d.x, global2.c, Struct_2(Struct_1(-417f, arg_1.a.b, global3.x, u_input.b, global2.a.b.x), true, func_1(1u, Struct_1(global0[_wgslsmith_index_u32(1u, 17u)], vec2<i32>(1i, 0i), global2.d, u_input.b, arg_1.c.e), arg_1).a, -160f < global2.c.a, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 17u)])))).c, Struct_2(func_2(arg_1, func_1(u_input.c, arg_1.c, Struct_2(global2.a, arg_1.c.c, Struct_1(global2.a.a, vec2<i32>(global1.x, -31035i), arg_1.b, global2.c.d, global2.c.b.x), global2.a.c, -746f)).c, arg_1), true, func_2(arg_1, Struct_1(-1608f, vec2<i32>(-19690i, 13399i), arg_1.b, vec3<u32>(4294967295u, u_input.b.x, 0u), global1.x), Struct_2(arg_1.c, global2.a.c, global2.a, arg_1.c.c, global2.c.a)), arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.c.d.xz, global2.c.d.xz | vec2<u32>(53637u, 30694u)), 17u)])).c, !(~(0u << (1u % 32u)) != arg_1.a.d.x), _wgslsmith_f_op_f32(ceil(global2.a.a)));
    global1 = vec2<i32>(~_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(select(0i, 15768i, global3.x), u_input.d, arg_1.c.b.x)), i32(-1i) * -2682i);
    var var_1 = Struct_2(var_0.a, global2.d, Struct_1(389f, arg_1.a.b, func_1(~29221u, func_2(arg_1, Struct_1(368f, vec2<i32>(u_input.d, 33805i), arg_1.b, vec3<u32>(15704u, 0u, arg_1.c.d.x), -10697i), Struct_2(global2.a, false, global2.c, global2.a.c, var_0.c.a)), arg_1).c.c, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, ~global2.c.d, max(u_input.b, vec3<u32>(u_input.a.x, global2.c.d.x, var_0.a.d.x))), u_input.b), select(~(arg_1.a.e ^ 56007i), -1i, arg_0.x)), false, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-2770f)))), 999f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)])))))));
    return vec2<i32>(~u_input.d >> (1u % 32u), i32(-1i) * -select(func_1(0u, var_0.c, Struct_2(global2.c, global3.x, Struct_1(-911f, vec2<i32>(u_input.d, var_1.c.b.x), true, var_1.a.d, global1.x), arg_1.b, global0[_wgslsmith_index_u32(1u, 17u)])).a.b.x, -20845i, func_5(arg_1.c, vec2<f32>(-1119f, arg_1.e), arg_1.a, var_0.e).x));
}

fn func_7(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~(~u_input.c), 17u)], vec2<i32>(_wgslsmith_div_i32(2147483647i, func_1(48655u, global2.c, func_1(0u, global2.a, Struct_2(global2.c, true, Struct_1(232f, vec2<i32>(global1.x, arg_1.x), true, vec3<u32>(global2.a.d.x, 78835u, 4294967295u), 53715i), false, 2374f))).c.e), global2.c.b.x), !global3.x, abs(u_input.b << (_wgslsmith_add_vec3_u32(vec3<u32>(global2.c.d.x, global2.a.d.x, 40644u), abs(vec3<u32>(u_input.b.x, 21811u, u_input.a.x))) % vec3<u32>(32u))), func_2(Struct_2(func_2(Struct_2(global2.a, global3.x, global2.c, true, global2.c.a), Struct_1(global2.e, vec2<i32>(1i, -1i), global2.c.c, global2.c.d, u_input.d), Struct_2(global2.c, global2.a.c, global2.a, global2.d, -754f)), true, global2.c, all(select(vec2<bool>(false, global3.x), global3.zw, global2.a.c)), _wgslsmith_f_op_f32(step(global2.c.a, -216f))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 17u)]))), ~arg_1.zy, all(vec2<bool>(false, false)), _wgslsmith_mult_vec3_u32(min(u_input.b, global2.c.d), func_1(u_input.c, Struct_1(global0[_wgslsmith_index_u32(global2.c.d.x, 17u)], vec2<i32>(global1.x, 12188i), false, global2.c.d, u_input.d), Struct_2(Struct_1(995f, arg_0, global2.d, u_input.b, global1.x), false, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global2.c.b, true, vec3<u32>(4294967295u, u_input.a.x, 3609u), 7458i), true, global2.c.a)).c.d), global1.x), func_1(func_4(Struct_1(global2.a.a, vec2<i32>(-4049i, arg_0.x), false, vec3<u32>(4294967295u, global2.c.d.x, global2.a.d.x), arg_2), u_input.b.yz, global2.c.c, Struct_1(143f, vec2<i32>(-1153i, arg_2), global3.x, u_input.b, arg_2)) | u_input.b.x, Struct_1(-199f, vec2<i32>(27192i, global1.x), true, select(vec3<u32>(1u, 20375u, 26043u), vec3<u32>(u_input.b.x, 0u, global2.a.d.x), global3.x), u_input.d & arg_1.x), func_1(~3885u, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], vec2<i32>(53827i, arg_1.x), true, u_input.b, -1i), Struct_2(Struct_1(-1537f, vec2<i32>(arg_2, 1i), false, vec3<u32>(27296u, u_input.a.x, 0u), 5104i), true, Struct_1(global0[_wgslsmith_index_u32(16822u, 17u)], arg_1.zy, false, global2.a.d, 2147483647i), true, -229f)))).e);
    var var_1 = global2.d;
    global1 = var_0.b;
    let var_2 = Struct_2(func_1(u_input.c, Struct_1(-1000f, func_6(!global3.xw, Struct_2(var_0, true, Struct_1(-349f, vec2<i32>(u_input.d, arg_1.x), global2.b, u_input.b, -10146i), global2.b, -570f)), all(global3.xy), countOneBits(vec3<u32>(var_0.d.x, 1u, 80841u)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1141i, 2147483647i, global2.a.e), vec4<i32>(2147483647i, arg_0.x, arg_0.x, 0i)) >> (~11918u % 32u)), func_1(global2.a.d.x, func_1(abs(25510u), func_2(Struct_2(Struct_1(-1242f, vec2<i32>(9485i, 34877i), var_0.c, vec3<u32>(1u, u_input.b.x, 4294967295u), -2147483647i), var_0.c, Struct_1(-314f, arg_0, var_0.c, vec3<u32>(47493u, 4294967295u, u_input.c), arg_1.x), global3.x, 996f), global2.a, Struct_2(var_0, global3.x, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_0, true, global2.a.d, u_input.d), false, global0[_wgslsmith_index_u32(u_input.b.x, 17u)])), Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_0.d.x, 17u)], global2.c.b, false, vec3<u32>(u_input.c, 4294967295u, 5588u), u_input.d), global3.x, Struct_1(-1022f, vec2<i32>(global2.c.e, 0i), var_0.c, global2.c.d, u_input.d), global3.x, -456f)).a, Struct_2(var_0, true, func_2(Struct_2(var_0, true, var_0, global3.x, 575f), Struct_1(201f, vec2<i32>(-5298i, u_input.d), global2.a.c, vec3<u32>(u_input.a.x, 4294967295u, global2.a.d.x), -28749i), Struct_2(Struct_1(var_0.a, global2.c.b, global2.b, u_input.b, arg_0.x), true, var_0, false, global0[_wgslsmith_index_u32(u_input.c, 17u)])), true, func_2(Struct_2(Struct_1(var_0.a, vec2<i32>(arg_0.x, global1.x), global3.x, var_0.d, u_input.d), false, Struct_1(-743f, vec2<i32>(global2.a.b.x, -1i), true, vec3<u32>(global2.c.d.x, 12448u, 27117u), 15980i), false, global0[_wgslsmith_index_u32(var_0.d.x, 17u)]), Struct_1(1344f, vec2<i32>(global2.c.b.x, 2147483647i), global3.x, var_0.d, -2147483647i), Struct_2(Struct_1(-2023f, arg_1.xx, global3.x, vec3<u32>(13076u, u_input.a.x, 42489u), global1.x), false, Struct_1(var_0.a, vec2<i32>(u_input.d, u_input.d), false, vec3<u32>(var_0.d.x, 0u, 8282u), 2147483647i), global2.d, -610f)).a))).a, ~(~var_0.d.x) <= 0u, func_1(_wgslsmith_sub_u32(25258u, 0u), var_0, Struct_2(global2.c, true, var_0, !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.a) - _wgslsmith_f_op_f32(-var_0.a)))).a, func_5(global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1121f, global0[_wgslsmith_index_u32(var_0.d.x, 17u)])) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1326f, -799f), vec2<f32>(global2.c.a, global0[_wgslsmith_index_u32(4294967295u, 17u)])))) + vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 17u)] + -1302f), -1862f)), Struct_1(-673f, _wgslsmith_mult_vec2_i32(func_1(u_input.b.x, Struct_1(global2.e, var_0.b, global2.b, global2.a.d, 42158i), Struct_2(Struct_1(130f, vec2<i32>(global1.x, var_0.b.x), false, var_0.d, 2147483647i), global2.d, var_0, false, 314f)).c.b, _wgslsmith_div_vec2_i32(vec2<i32>(-70113i, -2147483647i), global2.a.b)), ~(-3278i) <= u_input.d, max(vec3<u32>(0u, var_0.d.x, u_input.c), abs(vec3<u32>(0u, u_input.a.x, global2.c.d.x))), _wgslsmith_div_i32(1i, abs(arg_2))), global2.a.a).x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(52924u, 54741u, 5477u, 67047u))), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.d.x, 0u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), firstTrailingBit(global2.c.d.x)), ~min(vec4<u32>(global2.c.d.x, global2.c.d.x, var_0.d.x, 3727u), vec4<u32>(0u, global2.a.d.x, 1u, 0u)))), 17u)]);
    global1 = arg_1.xx;
    return func_1(~_wgslsmith_sub_u32(1u, var_0.d.x) >> (32965u % 32u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1303f)) - -1096f) * global2.e), var_0.b, true & select(global2.e < 1797f, all(global3.wy), true & global3.x), ~global2.c.d, _wgslsmith_sub_i32(~12282i, select(var_2.c.b.x, 46012i << (global2.a.d.x % 32u), var_2.d))), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(var_2.c.a)), vec2<i32>(var_0.b.x, -1i), func_2(var_2, Struct_1(725f, vec2<i32>(var_2.c.b.x, var_2.a.b.x), false, var_0.d, 33234i), Struct_2(var_0, var_2.b, var_2.a, global2.b, -856f)).c, ~_wgslsmith_clamp_vec3_u32(var_0.d, var_2.c.d, var_2.c.d), max(func_2(Struct_2(Struct_1(global2.c.a, vec2<i32>(arg_2, 19511i), var_0.c, global2.c.d, -14693i), true, Struct_1(global0[_wgslsmith_index_u32(9854u, 17u)], global2.c.b, var_2.d, vec3<u32>(global2.a.d.x, global2.c.d.x, var_0.d.x), -1i), global3.x, 329f), Struct_1(547f, vec2<i32>(-1i, global2.a.b.x), false, vec3<u32>(50505u, var_2.c.d.x, global2.a.d.x), arg_0.x), Struct_2(var_2.c, global3.x, global2.c, false, global0[_wgslsmith_index_u32(var_0.d.x, 17u)])).e, global1.x & 0i)), !(!var_0.c) | false, Struct_1(_wgslsmith_f_op_f32(-var_0.a), vec2<i32>(i32(-1i) * -13527i, ~var_0.b.x), !(!var_0.c), ~(global2.a.d ^ u_input.b), global2.a.b.x), !(!global2.a.c), -797f));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    global2 = func_1(26722u, arg_1.a, func_7(~_wgslsmith_mult_vec2_i32(global2.c.b, vec2<i32>(-31714i, arg_1.c.b.x)), ~(-(~vec3<i32>(2147483647i, 0i, arg_1.c.e))), _wgslsmith_add_i32(i32(-1i) * -9231i, u_input.d | arg_1.a.e) ^ arg_1.a.b.x));
    let var_0 = func_1(~reverseBits(0u), func_1(arg_0.d.x, arg_0, arg_1).a, func_7(-(vec2<i32>(-1i, global2.a.b.x) >> (global2.a.d.zz % vec2<u32>(32u))) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 34520u), vec2<u32>(0u, 30410u)) % vec2<u32>(32u)), vec3<i32>(-func_6(vec2<bool>(global2.a.c, true), Struct_2(Struct_1(108f, global2.c.b, false, vec3<u32>(5067u, arg_1.c.d.x, global2.c.d.x), global2.c.e), false, arg_0, arg_0.c, global2.e)).x, arg_1.c.b.x, 9804i), 1i));
    let var_1 = Struct_2(arg_0, 561f > _wgslsmith_f_op_f32(-var_0.e), Struct_1(_wgslsmith_f_op_f32(global2.c.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 17u)])))), vec2<i32>(-1i, ~u_input.d), false, arg_1.a.d << (~_wgslsmith_div_vec3_u32(u_input.b, global2.a.d) % vec3<u32>(32u)), -2147483647i), !var_0.c.c, _wgslsmith_f_op_f32(arg_0.a * -1642f));
    let var_2 = arg_0.e;
    let var_3 = 28571u;
    return select(!select(!select(vec4<bool>(var_0.b, arg_1.c.c, true, var_0.a.c), vec4<bool>(arg_1.c.c, true, var_0.d, var_1.c.c), var_1.b), vec4<bool>(!global3.x, any(global3.yz), all(global3.zzx), !var_0.c.c), true), select(vec4<bool>(select(func_1(4294967295u, Struct_1(235f, vec2<i32>(global1.x, arg_1.a.b.x), false, var_1.c.d, 14741i), arg_1).c.c, !var_1.c.c, arg_0.c), true, func_7(-var_1.a.b, abs(vec3<i32>(1i, 1i, arg_0.b.x)), select(arg_0.e, 1i, true)).c.c, any(func_5(arg_1.a, vec2<f32>(-259f, global0[_wgslsmith_index_u32(global2.c.d.x, 17u)]), Struct_1(var_0.e, vec2<i32>(-14518i, 1i), var_0.a.c, vec3<u32>(u_input.b.x, 1u, var_0.a.d.x), -7538i), arg_1.e))), !(!select(vec4<bool>(true, false, true, var_1.b), vec4<bool>(var_0.d, true, false, false), vec4<bool>(global2.d, true, var_1.c.c, arg_0.c))), true), vec4<bool>(!any(!vec2<bool>(false, global2.b)), func_7(arg_1.c.b, ~vec3<i32>(global2.c.e, arg_1.a.b.x, -1i), min(-u_input.d, _wgslsmith_div_i32(-18836i, -2147483647i))).b, var_0.d, !global3.x & true));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global2.a.d.x;
    global3 = func_8(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 17u)]), vec2<i32>(-1i) * -(vec2<i32>(u_input.d, -48209i) | vec2<i32>(global2.c.e, global1.x)), true, ~(~(global2.a.d & vec3<u32>(global2.a.d.x, u_input.b.x, 44274u))), global2.c.e), func_7(~func_6(!global3.zx, func_1(global2.c.d.x, Struct_1(global2.e, global2.c.b, global2.a.c, global2.a.d, global2.a.e), Struct_2(global2.a, global2.d, Struct_1(global0[_wgslsmith_index_u32(global2.c.d.x, 17u)], vec2<i32>(global1.x, -1i), true, vec3<u32>(global2.a.d.x, u_input.a.x, 0u), 76048i), global3.x, global0[_wgslsmith_index_u32(u_input.b.x, 17u)]))), ~max(-vec3<i32>(u_input.d, u_input.d, -2147483647i), vec3<i32>(1124i, -37134i, 29029i) << (vec3<u32>(35436u, 0u, global2.c.d.x) % vec3<u32>(32u))), _wgslsmith_div_i32(-1i, global2.c.e)));
    global0 = array<f32, 17>();
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1(min(~u_input.c, 23050u), global2.c, func_7(_wgslsmith_mult_vec2_i32(global2.c.b, vec2<i32>(global1.x, 2147483647i)), firstLeadingBit(vec3<i32>(-1i, 6768i, 0i)), global2.c.b.x)).a.a, -944f));
    global1 = global2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_7(global2.a.b, select(~vec3<i32>(global2.c.e, -2147483647i, 45566i), vec3<i32>(1i, global2.a.b.x, global1.x) ^ vec3<i32>(global1.x, 1i, global1.x), true), global2.a.b.x).a.d.x), global0[_wgslsmith_index_u32(u_input.c, 17u)], _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.e, global0[_wgslsmith_index_u32(u_input.c, 17u)], -1505f), vec3<f32>(1213f, 168f, -1103f), global3.wwx)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 284f), vec3<f32>(var_1.x, global0[_wgslsmith_index_u32(24866u, 17u)], 666f))), vec3<f32>(-700f, -1149f, 1206f), select(vec3<bool>(true, true, true), !vec3<bool>(global3.x, global2.a.c, global2.d), func_8(global2.a, Struct_2(Struct_1(global0[_wgslsmith_index_u32(global2.c.d.x, 17u)], vec2<i32>(21874i, 27617i), global3.x, u_input.b, u_input.d), global2.a.c, global2.c, global2.a.c, global2.a.a)).xzy))))));
}

