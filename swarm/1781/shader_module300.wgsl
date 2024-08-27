struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 49838u, 0u);

var<private> global1: array<f32, 2> = array<f32, 2>(1106f, -591f);

var<private> global2: i32;

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global4: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(567f, 1497f, -216f), vec2<bool>(false, true), false, true, 24319u), Struct_1(vec3<f32>(2158f, -350f, -1289f), vec2<bool>(false, false), true, false, 4294967295u), Struct_1(vec3<f32>(-313f, 2319f, -1956f), vec2<bool>(false, false), true, false, 27069u), Struct_1(vec3<f32>(-1346f, -730f, -469f), vec2<bool>(true, true), false, true, 76382u), Struct_1(vec3<f32>(-141f, 633f, 470f), vec2<bool>(false, true), true, false, 66665u), Struct_1(vec3<f32>(-698f, -363f, -731f), vec2<bool>(true, false), false, false, 12006u), Struct_1(vec3<f32>(1035f, -774f, 1086f), vec2<bool>(true, false), true, false, 4294967295u), Struct_1(vec3<f32>(-893f, -616f, 218f), vec2<bool>(true, true), true, false, 0u), Struct_1(vec3<f32>(-551f, 517f, -495f), vec2<bool>(true, true), false, true, 56884u), Struct_1(vec3<f32>(-268f, 665f, 1035f), vec2<bool>(false, true), true, false, 1u), Struct_1(vec3<f32>(-780f, -470f, -877f), vec2<bool>(true, true), true, false, 4294967295u), Struct_1(vec3<f32>(598f, -2082f, -1000f), vec2<bool>(false, false), false, true, 6485u), Struct_1(vec3<f32>(1105f, -2538f, 1525f), vec2<bool>(true, true), false, false, 0u), Struct_1(vec3<f32>(1000f, 1579f, -571f), vec2<bool>(true, true), true, true, 4992u), Struct_1(vec3<f32>(118f, -1308f, -132f), vec2<bool>(true, false), false, false, 29888u), Struct_1(vec3<f32>(-1031f, -544f, 944f), vec2<bool>(false, true), true, true, 0u), Struct_1(vec3<f32>(308f, 237f, -1592f), vec2<bool>(false, true), false, false, 42775u), Struct_1(vec3<f32>(2134f, 431f, -1426f), vec2<bool>(false, false), true, true, 0u), Struct_1(vec3<f32>(-1000f, -825f, -1000f), vec2<bool>(false, false), true, false, 30374u), Struct_1(vec3<f32>(-2260f, -1267f, -421f), vec2<bool>(true, true), true, true, 0u), Struct_1(vec3<f32>(-913f, 739f, -1000f), vec2<bool>(true, true), false, true, 74421u), Struct_1(vec3<f32>(516f, -886f, -1124f), vec2<bool>(true, false), false, false, 4294967295u), Struct_1(vec3<f32>(-524f, -1296f, -473f), vec2<bool>(true, true), false, true, 1u), Struct_1(vec3<f32>(461f, -1161f, -124f), vec2<bool>(false, false), false, true, 4294967295u), Struct_1(vec3<f32>(-468f, 394f, -489f), vec2<bool>(true, false), true, false, 132601u), Struct_1(vec3<f32>(1705f, 1337f, 1000f), vec2<bool>(true, true), false, true, 5975u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> f32 {
    let var_0 = !arg_0;
    let var_1 = true;
    let var_2 = Struct_3(arg_3.b.a.x, Struct_2(vec4<i32>(u_input.b, 2147483647i, _wgslsmith_sub_i32(53023i, _wgslsmith_mod_i32(2147483647i, 43008i)), _wgslsmith_dot_vec2_i32(arg_3.b.a.yw, firstLeadingBit(arg_3.b.a.yx))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, 1000f, 673f))), select(select(vec2<bool>(true, false), vec2<bool>(arg_1, false), arg_0.x), global3.zx, select(vec2<bool>(true, true), arg_0.wy, vec2<bool>(false, true))), select(false & var_1, select(arg_1, var_0.x, arg_3.b.b.b.x), arg_1), all(select(vec4<bool>(var_0.x, true, true, false), var_0, var_1)), arg_3.b.b.e)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(select(u_input.d, arg_3.c, var_1), select(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 3u)]), arg_3.c, arg_0.x)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(106979u, u_input.c))) ^ ~arg_3.c);
    let var_3 = vec3<i32>(~25987i, 0i, select(-11829i, abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 10396i, 2147483647i), vec3<i32>(-10500i, 1i, -1i))), !all(arg_3.b.b.b)));
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(-509f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(27641u, arg_3.c.x, global0[_wgslsmith_index_u32(1u, 3u)], u_input.d.x), vec4<u32>(808u, global0[_wgslsmith_index_u32(var_2.b.b.e, 3u)], u_input.a.x, var_2.c.x))), 2u)]), global1[_wgslsmith_index_u32(4294967295u, 2u)]), var_2.b.b.b, !all(!(!arg_0.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1295f, -261f, !arg_0.x))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 - 675f))), 29014u);
    return _wgslsmith_f_op_f32(692f + arg_3.b.b.a.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    var var_0 = arg_1.b.a.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(true, arg_2, true, arg_1.b.d), arg_2, _wgslsmith_f_op_f32(-arg_1.b.a.x), Struct_3(u_input.b, arg_1, u_input.d))))));
    let var_1 = u_input.b;
    let var_2 = arg_1.b.a.xx;
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    return Struct_3(arg_0.x, Struct_2(arg_1.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_1.b.b.x, true, global3.x, true), true, arg_1.b.a.x, Struct_3(var_1, arg_1, vec2<u32>(arg_1.b.e, 0u)))), -1302f, global1[_wgslsmith_index_u32(~3878u, 2u)]), vec2<bool>(any(vec2<bool>(false, global3.x)), any(global3.xwx)), true, true, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(4294967295u, arg_1.b.e)))), ~u_input.d);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    global0 = array<u32, 3>();
    global1 = array<f32, 2>();
    return Struct_4(func_2(~vec2<i32>(select(-2147483647i, -2147483647i, arg_1.b.b.b.x), abs(-69016i)), arg_2.b, true).b.b, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b.b.a.x, 1563f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f - -826f) * _wgslsmith_f_op_f32(f32(-1f) * -480f))), _wgslsmith_f_op_vec3_f32(-arg_1.b.b.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = func_2(abs(vec2<i32>((-7167i >> (0u % 32u)) << (arg_0.e % 32u), u_input.b)), Struct_2(func_2(vec2<i32>(min(u_input.b, u_input.b), -5067i), Struct_2(vec4<i32>(1i, u_input.b, 37130i, u_input.b) << (vec4<u32>(114916u, global0[_wgslsmith_index_u32(arg_2.x, 3u)], u_input.a.x, arg_1.a.e) % vec4<u32>(32u)), func_2(vec2<i32>(u_input.b, u_input.b), Struct_2(vec4<i32>(-41358i, -2147483647i, -2147483647i, 32401i), arg_1.a), false).b.b), !arg_1.a.c == (global1[_wgslsmith_index_u32(35978u, 2u)] >= global1[_wgslsmith_index_u32(arg_2.x, 2u)])).b.a, func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, 1i)) >> (vec2<u32>(1u, arg_0.e) % vec2<u32>(32u)), func_2(vec2<i32>(u_input.b, u_input.b) | vec2<i32>(-1i, u_input.b), Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), Struct_1(arg_1.b, vec2<bool>(false, global3.x), true, arg_1.a.b.x, 41102u)), global3.x).b, true).b.b), all(vec2<bool>(false || arg_1.a.c, !(!global3.x)))).b;
    global4 = array<Struct_1, 26>();
    var var_1 = func_4(vec2<u32>(arg_0.e, 33966u), func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, firstLeadingBit(-1i)), ~(~vec2<i32>(var_0.a.x, 8555i))), Struct_2(vec4<i32>(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x), 2147483647i, -u_input.b, 7497i), Struct_1(var_0.b.a, vec2<bool>(arg_0.b.x, false), global1[_wgslsmith_index_u32(4294967295u, 2u)] <= var_0.b.a.x, false, 4294967295u)), arg_1.a.b.x), func_2(func_2(vec2<i32>(-23598i, var_0.a.x << (4640u % 32u)), Struct_2(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), func_2(vec2<i32>(var_0.a.x, var_0.a.x), Struct_2(vec4<i32>(-58747i, var_0.a.x, 11676i, var_0.a.x), var_0.b), true).b.b), global3.x).b.a.yz, func_2(func_2(~vec2<i32>(0i, u_input.b), func_2(var_0.a.wx, Struct_2(var_0.a, Struct_1(var_0.b.a, vec2<bool>(var_0.b.d, true), arg_0.d, var_0.b.b.x, 19872u)), var_0.b.d).b, true).b.a.xw, Struct_2(var_0.a, Struct_1(var_0.b.a, vec2<bool>(true, false), arg_0.c, false, 0u)), !arg_0.d).b, global3.x));
    var var_2 = -_wgslsmith_sub_i32(firstLeadingBit(-u_input.b) | (_wgslsmith_dot_vec3_i32(var_0.a.ywx, var_0.a.www) | -var_0.a.x), min(_wgslsmith_div_i32(var_0.a.x, -1i) ^ countOneBits(-1i), -2147483647i | -u_input.b));
    var var_3 = func_2(var_0.a.xy, Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.a))), select(!global3.xx, vec2<bool>(false, var_0.b.b.x), !var_1.a.b), arg_0.d != !var_0.b.d, !(arg_1.a.d || arg_0.d), ~0u | _wgslsmith_add_u32(4294967295u, var_1.a.e))), false).b.b;
    return var_0.a;
}

fn func_1() -> bool {
    global1 = array<f32, 2>();
    var var_0 = Struct_2(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], 3u)], 2u)], -1049f), vec3<f32>(global1[_wgslsmith_index_u32(2200u, 2u)], global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]))))), global3.zw, !global3.x, global3.x, u_input.d.x), func_4(vec2<u32>(~u_input.d.x, ~u_input.d.x), Struct_3(1i, Struct_2(vec4<i32>(0i, u_input.b, u_input.b, -2027i), global4[_wgslsmith_index_u32(18010u, 26u)]), min(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 3u)], u_input.c))), func_2(countOneBits(vec2<i32>(-32150i, -55591i)), Struct_2(vec4<i32>(u_input.b, u_input.b, 1i, -1i), global4[_wgslsmith_index_u32(0u, 26u)]), select(global3.x, global3.x, false))), firstTrailingBit(~countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], 1u)))), global4[_wgslsmith_index_u32(1u, 26u)]);
    let var_1 = 1u;
    global3 = vec4<bool>(true, global3.x, !(!all(select(vec4<bool>(var_0.b.b.x, var_0.b.c, var_0.b.b.x, var_0.b.b.x), vec4<bool>(var_0.b.d, global3.x, true, global3.x), false))), global3.x);
    let var_2 = ~(~u_input.d.x);
    return true;
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: vec4<f32>) -> Struct_4 {
    global2 = ~(-countOneBits(-2147483647i));
    var var_0 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(func_5(Struct_1(arg_2.wxy, global3.wy, false, true, 4294967295u), Struct_4(Struct_1(arg_2.zzx, global3.wz, global3.x, global3.x, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<f32>(1052f, arg_0, arg_0)), vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], 13300u))), -(vec4<i32>(-22448i, -50605i, u_input.b, u_input.b) & vec4<i32>(-73865i, u_input.b, 1i, u_input.b))), abs(reverseBits(vec4<i32>(u_input.b, -17471i, 69098i, 2147483647i) << (vec4<u32>(9585u, 4294967295u, 56355u, global0[_wgslsmith_index_u32(0u, 3u)]) % vec4<u32>(32u))))), global4[_wgslsmith_index_u32(u_input.a.x ^ 17617u, 26u)]);
    global0 = array<u32, 3>();
    var var_1 = ~vec3<u32>(_wgslsmith_mult_u32(~(~var_0.b.e), func_4(vec2<u32>(var_0.b.e, 37033u), Struct_3(u_input.b, Struct_2(var_0.a, Struct_1(arg_2.zyw, global3.wy, var_0.b.d, true, u_input.d.x)), vec2<u32>(4294967295u, 1u)), Struct_3(u_input.b, Struct_2(var_0.a, global4[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<u32>(u_input.a.x, 27673u))).a.e | _wgslsmith_div_u32(var_0.b.e, var_0.b.e)), u_input.c, 22064u);
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-(~var_0.a.wx | vec2<i32>(34288i, u_input.b)), vec2<i32>(u_input.b, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(var_0.a.x, u_input.b))))), countOneBits(_wgslsmith_mod_vec2_i32(var_0.a.yw, var_0.a.wx)));
    return Struct_4(func_2(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(11183i, 1i) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), select(var_0.a.wz, vec2<i32>(u_input.b, u_input.b), false), var_0.a.wx), -_wgslsmith_add_vec2_i32(var_0.a.xz, var_0.a.yy)), func_2(~firstLeadingBit(vec2<i32>(8388i, 56360i)), Struct_2(vec4<i32>(u_input.b, var_0.a.x, var_0.a.x, var_0.a.x) << (vec4<u32>(u_input.a.x, var_0.b.e, var_0.b.e, var_1.x) % vec4<u32>(32u)), global4[_wgslsmith_index_u32(min(var_1.x, 1u), 26u)]), true).b, func_1() != any(global3.zw)).b.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 2>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -765f);
    global2 = ~(~(-25614i));
    global2 = u_input.b;
    let var_1 = func_6(global1[_wgslsmith_index_u32(min(~(~(~global0[_wgslsmith_index_u32(4294967295u, 3u)])), u_input.a.x), 2u)], func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 2u)], -263f, -1260f, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1042f, -204f, -606f, -896f) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15876u, 3u)], 2u)], -1213f, 1658f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -835f, -1840f, var_0), vec4<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41540u, 3u)], 2u)], global1[_wgslsmith_index_u32(27011u, 2u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], 2u)], 1203f))))))));
    var var_2 = _wgslsmith_mult_u32(33142u, u_input.d.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(65369u, func_2(vec2<i32>(45061i, u_input.b), Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), global4[_wgslsmith_index_u32(36347u, 26u)]), false).b.b.e, var_1.a.e, 29402u), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.a.e, 0u, u_input.c, u_input.a.x), abs(max(vec4<u32>(var_1.a.e, global0[_wgslsmith_index_u32(0u, 3u)], 48448u, u_input.d.x), vec4<u32>(20370u, 22652u, 1u, var_1.a.e)))));
    global1 = array<f32, 2>();
    var var_3 = Struct_2(firstTrailingBit(vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(~26605i, u_input.b & 4473i, -1i), -u_input.b, firstLeadingBit(33178i))), func_6(_wgslsmith_f_op_f32(-129f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(373f * -187f) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(69435u, 2u)]))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_1.b.x))))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.b.a.x), _wgslsmith_f_op_f32(floor(1113f))) + vec2<f32>(var_0, var_3.b.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.a.yy * vec2<f32>(global1[_wgslsmith_index_u32(~var_3.b.e, 2u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_3.b.e, 2u)], -1152f)))), vec4<i32>(var_3.a.x, var_3.a.x, -2147483647i, 201i), select(vec3<u32>(max(_wgslsmith_add_u32(29668u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.e, 3u)], 3u)]), ~var_3.b.e), 20671u, func_4(vec2<u32>(var_3.b.e, var_3.b.e), Struct_3(var_3.a.x, Struct_2(var_3.a, global4[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<u32>(var_3.b.e, 48478u)), func_2(vec2<i32>(var_3.a.x, 1i), Struct_2(var_3.a, var_3.b), false)).a.e), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.a.e, 64330u), _wgslsmith_mult_vec3_u32(vec3<u32>(114774u, global0[_wgslsmith_index_u32(var_1.a.e, 3u)], u_input.a.x), vec3<u32>(u_input.a.x, 7767u, var_1.a.e))), !select(!vec3<bool>(false, global3.x, false), !global3.wyw, true)));
}

