struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(27344u, 4294967295u, 36080u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_4, 20>;

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(!(!global1.a), min(firstLeadingBit(~abs(u_input.b)), global3.b), (0i | _wgslsmith_clamp_i32(-39476i, reverseBits(global1.c), 15151i)) & 0i, vec2<bool>(!all(global3.a.zwx), any(global1.a.wxx)));
    return !global1.a.zz;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: f32) -> vec3<u32> {
    var var_0 = -7897i;
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(337f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-447f, -1000f, -1441f, 775f), vec4<f32>(-360f, arg_2, arg_2, -1624f)))))))));
    var var_4 = reverseBits(~_wgslsmith_add_u32(~u_input.b, ~4306u) | (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, arg_1.x), 0u) & global0.x));
    return vec3<u32>(~countOneBits(~global3.b), 1u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, global3.b, 1u, 71209u), vec4<u32>(25822u, 5046u, 0u, 34871u)), ~0u), _wgslsmith_sub_u32(~u_input.b ^ reverseBits(7585u), ~1u)) & abs(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(25662u, global1.b, 4294967295u), vec3<u32>(600u, u_input.b, arg_1.x)), vec3<u32>(4294967295u, 0u, 21274u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 1u, 4294967295u), vec3<u32>(global1.b, 0u, 94975u))));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_mod_vec3_u32(func_3(countOneBits(-(~u_input.a)), global0.zx, -1000f), ~vec3<u32>(global0.x, global3.b, global1.b));
    var var_0 = !(!global3.d.x);
    let var_1 = vec2<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(25035i, -1i, global1.c), vec3<i32>(25269i, -32615i, 30014i))), reverseBits(firstTrailingBit(-2147483647i))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(abs(global3.b), countOneBits(1u)), ~(~u_input.b)), vec2<u32>(reverseBits(func_3(vec4<i32>(-7607i, global3.c, u_input.a.x, global3.c), global0.zx, -729f).x), _wgslsmith_dot_vec2_u32(global0.zx, ~vec2<u32>(global3.b, global1.b)))) % vec2<u32>(32u));
    let var_2 = abs(firstTrailingBit(~abs(vec4<u32>(global1.b, 0u, 25420u, global3.b)))) ^ vec4<u32>(global0.x, 4294967295u, countOneBits(0u), u_input.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-187f, 607f) + vec2<f32>(303f, -1052f)) + vec2<f32>(255f, 288f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-738f, _wgslsmith_f_op_f32(f32(-1f) * -129f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1299f, 194f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-603f, 222f), vec2<f32>(-120f, 691f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-100f, 421f))))))));
    return -firstLeadingBit(~_wgslsmith_clamp_i32(var_1.x, _wgslsmith_dot_vec2_i32(var_1, var_1), ~1i));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    global0 = ~abs(vec3<u32>(4294967295u, global1.b, ~26861u) ^ _wgslsmith_add_vec3_u32(arg_1.d.a, vec3<u32>(global3.b, 4294967295u, 72837u)));
    var var_0 = arg_1.e;
    var_0 = Struct_1(arg_1.d.e.a, 81776u, global1.c, arg_2.yy);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-896f, -2230f, arg_1.d.d, arg_1.d.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-798f, arg_1.d.d, arg_1.d.d, arg_1.d.d)))), vec4<f32>(-1153f, 713f, _wgslsmith_f_op_f32(624f + arg_1.d.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.d - arg_1.d.d)))));
    return Struct_1(select(arg_2, vec4<bool>(var_0.a.x, func_1(var_1.zyy).x, true, true), arg_2), ~global0.x, i32(-1i) * -6646i, vec2<bool>(func_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -120f, _wgslsmith_f_op_f32(select(arg_1.d.d, var_1.x, false)))).x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(vec4<bool>(global3.d.x, global3.a.x, !global3.d.x, any(vec4<bool>(true, any(vec4<bool>(false, false, global3.d.x, false)), true, select(true, false, global3.a.x)))), global0.x, 1i, !func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-395f, -1008f, 2101f))))));
    let var_0 = func_4(u_input.c ^ ~vec3<i32>(global3.c, ~global3.c, max(global3.c, global3.c)), Struct_3(global3.a.x, vec2<i32>(func_2(), -1i), select(max(vec3<u32>(1u, 0u, global0.x), vec3<u32>(global3.b, global3.b, 4294967295u) << (vec3<u32>(26716u, 46520u, global0.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(12971u, global3.b, 1u)), abs(vec3<u32>(global3.b, global1.b, global1.b))), global3.d.x), Struct_2(~(vec3<u32>(global1.b, global1.b, global1.b) ^ vec3<u32>(4294967295u, 77244u, u_input.b)), Struct_1(vec4<bool>(global3.d.x, global3.a.x, global3.d.x, global1.d.x), 27716u, 1i, global1.a.wx), vec3<i32>(-33805i, -31032i, global3.c) ^ vec3<i32>(-58358i, u_input.c.x, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f)), Struct_1(vec4<bool>(false, global3.a.x, false, global3.a.x), countOneBits(4294967295u), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.c, 5851i, 2147483647i), u_input.c), global1.a.xx)), Struct_1(!global3.a, reverseBits(select(global1.b, 0u, global1.d.x)), _wgslsmith_add_i32(-26263i, -u_input.c.x), !func_1(vec3<f32>(433f, -462f, -1336f)))), vec4<bool>(global3.d.x, global1.a.x, 3130u != firstTrailingBit(global1.b), any(select(global1.a, vec4<bool>(false, global1.a.x, global3.a.x, true), func_1(vec3<f32>(-908f, 164f, -804f)).x))));
    var var_1 = global1.a;
    var var_2 = var_0;
    let var_3 = countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global3.b, 12008u), vec3<u32>(global0.x, global1.b, var_2.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.b, u_input.b), vec3<u32>(4294967295u, global0.x, 9701u))), select(abs(vec3<u32>(u_input.b, global3.b, 11542u)), vec3<u32>(0u, global3.b, global0.x), global1.d.x))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(func_3(~u_input.a, ~vec2<u32>(var_0.b, var_0.b), -1326f), _wgslsmith_div_vec3_u32(func_3(u_input.a, global0.yx, -744f), min(vec3<u32>(1u, global1.b, var_2.b), vec3<u32>(var_2.b, global0.x, 21670u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b, 0u), ~4294967295u, 37916u), _wgslsmith_mult_vec3_u32(func_3(vec4<i32>(var_2.c, -13639i, var_0.c, -1i), global0.xx, 169f), vec3<u32>(var_0.b, 1u, 4294967295u) << (vec3<u32>(var_2.b, 26923u, var_2.b) % vec3<u32>(32u))))) % vec3<u32>(32u));
    global2 = array<Struct_4, 20>();
    var var_4 = Struct_3(true, vec2<i32>(abs(-5548i), ~(~var_0.c << (global1.b % 32u))), var_3, Struct_2(~vec3<u32>(min(var_3.x, 47600u), ~global0.x, ~0u), func_4(~(u_input.c & u_input.c), Struct_3(var_1.x & var_2.d.x, vec2<i32>(var_2.c, global1.c), var_3, Struct_2(vec3<u32>(global3.b, var_3.x, 1u), Struct_1(vec4<bool>(global1.a.x, false, var_2.d.x, false), 1u, 1i, var_1.yx), u_input.c, 1000f, Struct_1(var_2.a, 46087u, 2147483647i, global3.d)), Struct_1(global3.a, 4294967295u, 58989i, global3.d)), vec4<bool>(var_2.d.x, !var_0.a.x, any(vec2<bool>(true, var_2.a.x)), true)), -vec3<i32>(u_input.c.x, var_0.c, u_input.c.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 75688u), var_3) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-652f)) * 1273f), var_0), var_0);
    let var_5 = _wgslsmith_div_vec3_u32(abs(vec3<u32>(~reverseBits(1u), ~var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 51191u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 6728u, global3.b), var_4.d.a)))), ~(reverseBits(var_4.d.a) & ~(vec3<u32>(17465u, 4294967295u, global3.b) >> (vec3<u32>(1u, global3.b, 1u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.d.d), 786f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(647f))), _wgslsmith_f_op_f32(-var_4.d.d))), vec3<u32>(global3.b, _wgslsmith_clamp_u32(~0u, var_2.b, 6258u) | var_3.x, ~var_0.b));
}

