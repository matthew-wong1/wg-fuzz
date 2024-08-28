struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec2<u32>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 89257u, 30267u, 26677u);

var<private> global1: array<i32, 20>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = !(!(!(!(!vec2<bool>(arg_1.a, true)))));
    global1 = array<i32, 20>();
    let var_1 = global2.b;
    var var_2 = 1000f;
    global1 = array<i32, 20>();
    return arg_1.d;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = ~global0.wyy;
    global2 = arg_1;
    global0 = vec4<u32>(0u, 12630u, ~abs(4294967295u), 4294967295u);
    var_0 = vec3<u32>(0u, u_input.a.x, 47847u);
    global2 = arg_1;
    return ~0u;
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_4) -> u32 {
    let var_0 = vec2<f32>(arg_0.b.d.x, _wgslsmith_f_op_f32(-global2.d.x));
    var var_1 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(~countOneBits(arg_0.c), firstTrailingBit(58956u)), ~arg_2.a.x);
    var var_2 = vec4<bool>(!(true || !arg_1.x), any(select(select(select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, false), true), select(vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, false, arg_1.x, arg_1.x), arg_1.x), vec4<bool>(true, arg_1.x, false, false)), vec4<bool>(arg_1.x, true, true, arg_2.e.x > global2.b), select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(true, arg_1.x, arg_1.x, true), all(arg_1)))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)) <= _wgslsmith_f_op_f32(-arg_2.b.a.x));
    var var_3 = -arg_2.e;
    var_1 = vec3<u32>(26689u << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.zyw | vec3<u32>(0u, u_input.a.x, global0.x), u_input.a.yyx), reverseBits(vec3<u32>(global0.x, global0.x, u_input.a.x) | u_input.a.zxy)) % 32u), var_1.x >> ((global0.x >> (_wgslsmith_div_u32(53841u, min(2292u, 4294967295u)) % 32u)) % 32u), var_1.x);
    return 0u;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5) -> Struct_1 {
    global1 = array<i32, 20>();
    global2 = func_1(global2.d, Struct_2(true, func_3(Struct_4(~arg_2.c, Struct_1(arg_2.b.b.a, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], arg_2.b.b.c, vec3<f32>(arg_1.b.b.c.x, -408f, arg_1.a.d.d.x)), ~arg_1.c.x, i32(-1i) * -90545i, vec4<i32>(20890i, 31501i, -2147483647i, global2.b)), select(arg_1.e, select(vec2<bool>(arg_2.e.x, arg_0), vec2<bool>(arg_1.d, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true)), Struct_4(~vec2<u32>(4294967295u, arg_1.b.a.x), Struct_1(arg_2.b.b.c.zw, 1i, vec4<f32>(arg_1.a.a.c.x, arg_2.a.a.c.x, -234f, 2017f), vec3<f32>(arg_1.a.d.c.x, global2.a.x, -1000f)), 14708u, ~global1[_wgslsmith_index_u32(2064u, 20u)], vec4<i32>(arg_2.b.e.x, 18931i, global2.b, -34377i) << (u_input.a % vec4<u32>(32u)))), func_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1164f)), -653f, _wgslsmith_f_op_f32(arg_2.b.b.d.x - global2.c.x)), Struct_2(all(vec2<bool>(true, true)), arg_2.c.x, Struct_1(arg_2.b.b.a, global2.b, vec4<f32>(global2.c.x, 718f, -771f, arg_1.b.b.c.x), arg_2.b.b.c.zxz), func_1(global2.c.zzz, Struct_2(arg_1.d, u_input.a.x, Struct_1(arg_2.a.d.a, 0i, arg_2.b.b.c, arg_2.a.a.c.xwx), arg_2.a.b)))), func_1(vec3<f32>(-1034f, _wgslsmith_f_op_f32(round(arg_1.a.b.a.x)), arg_1.b.b.c.x), Struct_2(false, 50159u, func_1(arg_1.b.b.d, Struct_2(arg_0, arg_1.c.x, arg_1.a.d, Struct_1(arg_2.b.b.a, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global2.c, vec3<f32>(760f, -1000f, 500f)))), Struct_1(vec2<f32>(430f, arg_1.a.a.d.x), arg_2.a.b.b, vec4<f32>(arg_1.b.b.d.x, -1000f, global2.c.x, global2.a.x), vec3<f32>(global2.d.x, 326f, 988f))))));
    var var_0 = firstLeadingBit(firstTrailingBit(~57218u));
    var_0 = 14389u;
    let var_1 = Struct_2(!(arg_2.e.x && all(vec3<bool>(arg_1.d, arg_0, arg_2.e.x))), ~u_input.a.x, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.b.d.yy * vec2<f32>(arg_1.a.e.c.x, global2.a.x)) - _wgslsmith_f_op_vec2_f32(max(arg_2.a.b.c.yz, vec2<f32>(arg_1.b.b.c.x, -899f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, arg_2.b.b.c.x) * vec2<f32>(-237f, 221f)), _wgslsmith_f_op_vec2_f32(-arg_1.a.b.a), arg_2.e.x != false))), ~global1[_wgslsmith_index_u32(arg_2.a.c, 20u)], vec4<f32>(arg_1.b.b.d.x, _wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(trunc(arg_1.b.b.d.x)), arg_2.a.d.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.b.b.d.x, arg_1.a.a.a.x), _wgslsmith_f_op_f32(global2.c.x * global2.d.x), _wgslsmith_f_op_f32(-arg_2.b.b.d.x)))), arg_1.a.d);
    return Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.b.b.d.yx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.a, vec2<f32>(-638f, -1035f), vec2<bool>(arg_1.d, false))) - vec2<f32>(arg_2.a.e.d.x, -514f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 411f) + var_1.d.d.yz) * _wgslsmith_f_op_vec2_f32(trunc(var_1.c.a))))), -select(arg_1.a.b.b, -1i, true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a.d.x, _wgslsmith_f_op_f32(-var_1.d.c.x), _wgslsmith_f_op_f32(abs(469f)), _wgslsmith_f_op_f32(673f * 1000f))))), var_1.d.d);
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_5 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_3.d.xy))))) - global2.d.zy));
    let var_2 = arg_3.d.yz;
    global2 = func_4(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))) | true, Struct_5(Struct_3(arg_3, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1255f, var_2.x, -1094f) * arg_3.d), Struct_2(false, 55360u, arg_3, Struct_1(var_2, arg_1, global2.c, vec3<f32>(arg_3.d.x, arg_2.x, var_2.x)))), ~(~u_input.a.x), arg_3, Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.a.x, 667f))), ~(-50957i), global2.c, global2.c.yxx)), Struct_4(~(~u_input.a.xw), Struct_1(global2.c.wy, u_input.b.x, arg_3.c, vec3<f32>(global2.c.x, arg_3.a.x, -1000f)), _wgslsmith_add_u32(4294967295u | global0.x, global0.x), arg_3.b, select(-vec4<i32>(arg_0.x, 71893i, arg_0.x, global2.b), select(vec4<i32>(arg_3.b, -29800i, arg_1, u_input.b.x), vec4<i32>(99348i, arg_1, global1[_wgslsmith_index_u32(global0.x, 20u)], arg_0.x), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, false))), vec2<u32>(global0.x, ~16631u), _wgslsmith_dot_vec3_u32(u_input.a.xxw, _wgslsmith_sub_vec3_u32(u_input.a.xzw, u_input.a.xxy)) != u_input.a.x, vec2<bool>(select(true, all(vec2<bool>(true, true)), true), false)), Struct_5(Struct_3(Struct_1(vec2<f32>(1000f, 1000f), _wgslsmith_div_i32(3893i, u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, arg_2.x, arg_3.a.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-arg_3.c.wzx)), Struct_1(arg_3.c.zz, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(102780u, 20u)], global2.b), vec4<f32>(global2.d.x, var_2.x, 1673f, var_2.x), vec3<f32>(1000f, 832f, arg_3.d.x)), ~func_3(Struct_4(u_input.a.yz, arg_3, 0u, -1i, vec4<i32>(global2.b, 2147483647i, -2147483647i, 2147483647i)), vec2<bool>(false, true), Struct_4(global0.wx, Struct_1(arg_3.c.xw, global2.b, vec4<f32>(var_1.x, -1322f, 938f, -100f), global2.d), u_input.a.x, arg_3.b, vec4<i32>(2147483647i, arg_0.x, 0i, -35432i))), Struct_1(arg_3.a, 0i, _wgslsmith_f_op_vec4_f32(trunc(global2.c)), arg_3.d), func_4(all(vec2<bool>(true, false)), Struct_5(Struct_3(Struct_1(global2.d.xy, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global2.c, global2.d), Struct_1(var_2, global1[_wgslsmith_index_u32(1u, 20u)], vec4<f32>(-1985f, arg_3.a.x, -269f, -642f), vec3<f32>(arg_2.x, global2.d.x, global2.a.x)), 1u, Struct_1(vec2<f32>(-137f, -140f), 3697i, arg_3.c, arg_3.c.xyy), Struct_1(var_2, 0i, vec4<f32>(global2.c.x, 547f, -652f, -1226f), global2.c.ywy)), Struct_4(vec2<u32>(24214u, 23434u), Struct_1(global2.c.xz, -2147483647i, arg_3.c, vec3<f32>(-1486f, -210f, arg_3.a.x)), u_input.a.x, 2147483647i, vec4<i32>(19371i, -2147483647i, 0i, u_input.b.x)), u_input.a.yx, false, vec2<bool>(true, false)), Struct_5(Struct_3(arg_3, arg_3, u_input.a.x, arg_3, Struct_1(var_2, 6138i, vec4<f32>(var_1.x, var_1.x, var_1.x, -994f), vec3<f32>(707f, arg_3.a.x, global2.d.x))), Struct_4(global0.zz, arg_3, u_input.a.x, -22442i, vec4<i32>(global2.b, arg_3.b, u_input.b.x, 0i)), vec2<u32>(4294967295u, u_input.a.x), true, vec2<bool>(false, false)))), Struct_4(firstTrailingBit(global0.zx), func_4(true, Struct_5(Struct_3(arg_3, arg_3, u_input.a.x, arg_3, arg_3), Struct_4(u_input.a.yw, Struct_1(global2.a, arg_3.b, vec4<f32>(526f, var_1.x, 1000f, -718f), global2.c.xzy), 4968u, -28582i, vec4<i32>(0i, 14157i, global2.b, arg_1)), vec2<u32>(117264u, global0.x), false, vec2<bool>(true, true)), Struct_5(Struct_3(arg_3, Struct_1(vec2<f32>(-734f, -1000f), global2.b, global2.c, arg_3.c.zzz), 0u, Struct_1(var_2, global1[_wgslsmith_index_u32(0u, 20u)], arg_3.c, vec3<f32>(375f, 326f, var_1.x)), arg_3), Struct_4(global0.yy, Struct_1(global2.d.yx, -40945i, global2.c, vec3<f32>(-736f, 195f, arg_2.x)), 15965u, 19127i, vec4<i32>(global2.b, arg_0.x, 1i, arg_3.b)), vec2<u32>(42001u, u_input.a.x), true, vec2<bool>(false, true))), 10834u >> (~global0.x % 32u), _wgslsmith_clamp_i32(func_4(false, Struct_5(Struct_3(arg_3, Struct_1(vec2<f32>(701f, global2.a.x), 47066i, vec4<f32>(var_1.x, -972f, -1000f, 835f), vec3<f32>(-1063f, -660f, global2.a.x)), u_input.a.x, arg_3, Struct_1(global2.d.xz, 28364i, vec4<f32>(-1505f, arg_3.a.x, 1019f, global2.d.x), global2.d)), Struct_4(u_input.a.zy, Struct_1(arg_3.a, global2.b, arg_3.c, vec3<f32>(-145f, 293f, var_1.x)), 0u, 44153i, vec4<i32>(12753i, arg_3.b, global1[_wgslsmith_index_u32(16502u, 20u)], -32895i)), u_input.a.zx, true, vec2<bool>(false, false)), Struct_5(Struct_3(arg_3, arg_3, u_input.a.x, arg_3, arg_3), Struct_4(global0.xy, arg_3, 4294967295u, global2.b, vec4<i32>(-1i, 0i, global2.b, u_input.b.x)), vec2<u32>(3065u, 22199u), true, vec2<bool>(true, false))).b, min(arg_1, -35072i), 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.b.x, 0i), firstLeadingBit(vec4<i32>(global2.b, 18094i, arg_3.b, -1494i)))), ~select(select(vec2<u32>(u_input.a.x, 1u), global0.yw, vec2<bool>(false, true)), select(global0.wy, vec2<u32>(33689u, global0.x), false), true), true, !vec2<bool>(true, any(vec3<bool>(false, true, true)))));
    var var_3 = Struct_2((any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)) && all(vec3<bool>(true, true, true))) & (~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.b.x, 23117i), u_input.b) == firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, global2.b), vec3<i32>(arg_3.b, 32727i, 24207i)))), u_input.a.x, arg_3, func_1(vec3<f32>(_wgslsmith_div_f32(-660f, _wgslsmith_f_op_f32(-var_2.x)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) * _wgslsmith_f_op_f32(-1359f - var_1.x))), Struct_2(false, countOneBits(global0.x), func_4(all(vec2<bool>(true, false)), Struct_5(Struct_3(Struct_1(vec2<f32>(global2.a.x, var_1.x), -1i, arg_3.c, arg_3.d), Struct_1(var_2, -6758i, vec4<f32>(arg_2.x, -985f, 1014f, global2.a.x), global2.d), u_input.a.x, arg_3, arg_3), Struct_4(vec2<u32>(global0.x, global0.x), arg_3, global0.x, arg_0.x, vec4<i32>(0i, u_input.c.x, 48153i, u_input.b.x)), vec2<u32>(4294967295u, global0.x), true, vec2<bool>(true, true)), Struct_5(Struct_3(Struct_1(vec2<f32>(arg_3.c.x, global2.d.x), u_input.c.x, arg_3.c, global2.d), Struct_1(arg_3.a, 47259i, arg_3.c, global2.d), 104613u, Struct_1(var_2, -1i, global2.c, global2.c.xyx), arg_3), Struct_4(vec2<u32>(global0.x, 80637u), Struct_1(var_2, 0i, vec4<f32>(arg_2.x, 645f, arg_2.x, var_1.x), vec3<f32>(var_2.x, var_2.x, 386f)), u_input.a.x, -1i, vec4<i32>(arg_1, -2147483647i, 1i, 0i)), global0.ww, true, vec2<bool>(false, false))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-609f, 1065f, -433f) + vec3<f32>(arg_2.x, 176f, var_1.x)), Struct_2(false, u_input.a.x, arg_3, Struct_1(var_2, -2147483647i, vec4<f32>(arg_3.d.x, 930f, global2.a.x, 734f), arg_3.c.wwx))))));
    return Struct_5(Struct_3(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, global2.a.x, 1374f)))), Struct_2(false, 1u, func_1(vec3<f32>(308f, 802f, global2.d.x), Struct_2(true, global0.x, arg_3, Struct_1(var_2, global1[_wgslsmith_index_u32(1u, 20u)], vec4<f32>(1185f, 424f, global2.d.x, arg_3.c.x), arg_3.d))), func_1(vec3<f32>(arg_2.x, 928f, -496f), Struct_2(var_3.a, global0.x, var_3.c, var_3.c)))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(582f, var_2.x), arg_2, var_3.a))), ~arg_1 | -2535i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_3.d.d), var_3.d.c.wwx))), var_3.b, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, arg_3.d.x), arg_3.c.yz), -3708i, arg_3.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.d.c.zww + vec3<f32>(arg_2.x, 1547f, arg_3.d.x)), global2.d)), arg_3), Struct_4(vec2<u32>(~firstLeadingBit(global0.x), ~61546u), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.d.x), var_1.x), _wgslsmith_dot_vec3_i32(reverseBits(u_input.c), u_input.c), arg_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, -1000f, 550f))))), ~23798u, global1[_wgslsmith_index_u32(min(~global0.x, _wgslsmith_add_u32(8554u, 1u) >> (~global0.x % 32u)), 20u)], select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.d.b, arg_1, 1i, 0i), vec4<i32>(1i, global2.b, 0i, -18165i), vec4<i32>(-15336i, -18266i, var_3.c.b, arg_3.b)), _wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 20u)], 1i, -28222i, u_input.c.x), firstLeadingBit(vec4<i32>(arg_0.x, -40752i, 26871i, arg_0.x))), select(select(vec4<bool>(var_3.a, true, true, false), vec4<bool>(var_3.a, var_3.a, var_3.a, true), vec4<bool>(var_3.a, var_3.a, var_3.a, false)), select(vec4<bool>(true, var_3.a, var_3.a, false), vec4<bool>(true, var_3.a, false, true), vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a)), select(vec4<bool>(true, false, var_3.a, false), vec4<bool>(true, true, var_3.a, var_3.a), vec4<bool>(false, false, var_3.a, var_3.a))))), ~countOneBits(u_input.a.yy), all(select(!(!vec4<bool>(var_3.a, var_3.a, false, var_3.a)), !vec4<bool>(true, true, var_3.a, var_3.a), !vec4<bool>(var_3.a, var_3.a, false, false))), vec2<bool>(var_3.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.x;
    var var_1 = func_5(max(-firstLeadingBit(firstTrailingBit(vec2<i32>(-14920i, global1[_wgslsmith_index_u32(6428u, 20u)]))), vec2<i32>(u_input.c.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, u_input.b.x), 0i))), -5365i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1339f, global2.a.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1559f, global2.d.x), vec2<f32>(global2.d.x, global2.d.x))) + _wgslsmith_div_vec2_f32(vec2<f32>(964f, global2.c.x), vec2<f32>(292f, -350f))))), func_4(true, Struct_5(Struct_3(Struct_1(vec2<f32>(global2.c.x, global2.d.x), -28223i, vec4<f32>(global2.d.x, -925f, -822f, global2.c.x), vec3<f32>(274f, global2.c.x, 873f)), Struct_1(vec2<f32>(global2.a.x, -2463f), global2.b, global2.c, vec3<f32>(-1000f, 665f, -415f)), u_input.a.x, Struct_1(vec2<f32>(-622f, 464f), 23675i, global2.c, global2.c.wzx), func_1(global2.d, Struct_2(true, 0u, Struct_1(vec2<f32>(global2.a.x, global2.a.x), 0i, global2.c, global2.d), Struct_1(vec2<f32>(-1545f, global2.a.x), 8965i, global2.c, vec3<f32>(global2.c.x, global2.c.x, global2.a.x))))), Struct_4(u_input.a.xw, func_1(vec3<f32>(907f, 1000f, global2.c.x), Struct_2(true, 4294967295u, Struct_1(vec2<f32>(807f, global2.a.x), 26095i, global2.c, vec3<f32>(1000f, global2.c.x, global2.d.x)), Struct_1(vec2<f32>(-1503f, 924f), -1i, vec4<f32>(1745f, global2.a.x, -634f, global2.d.x), global2.c.ywy))), global0.x, global2.b, -vec4<i32>(0i, -9894i, -15263i, -5937i)), vec2<u32>(u_input.a.x, func_2(u_input.c.x, Struct_1(global2.c.xy, global1[_wgslsmith_index_u32(46853u, 20u)], global2.c, global2.c.xwx))), _wgslsmith_f_op_f32(-178f - 1893f) < global2.a.x, vec2<bool>(true, true)), Struct_5(Struct_3(Struct_1(global2.a, u_input.c.x, global2.c, global2.d), func_1(global2.c.yww, Struct_2(false, 0u, Struct_1(global2.a, 52165i, vec4<f32>(934f, -2022f, global2.d.x, global2.d.x), vec3<f32>(global2.c.x, -555f, -170f)), Struct_1(global2.c.xz, -9693i, global2.c, global2.d))), func_3(Struct_4(global0.wx, Struct_1(vec2<f32>(-1132f, global2.c.x), u_input.c.x, vec4<f32>(1499f, global2.a.x, 745f, global2.d.x), vec3<f32>(705f, 2175f, global2.a.x)), 832u, global2.b, vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 20u)], 0i, 18622i, -52221i)), vec2<bool>(true, false), Struct_4(vec2<u32>(4294967295u, global0.x), Struct_1(vec2<f32>(global2.c.x, global2.c.x), -26067i, global2.c, global2.d), u_input.a.x, -2610i, vec4<i32>(-9146i, global2.b, 0i, 16392i))), func_1(global2.d, Struct_2(true, 1u, Struct_1(global2.c.zx, global2.b, vec4<f32>(855f, global2.a.x, global2.d.x, global2.c.x), global2.d), Struct_1(global2.d.xy, global1[_wgslsmith_index_u32(4816u, 20u)], vec4<f32>(global2.a.x, -1952f, global2.a.x, 1241f), global2.c.zyy))), func_1(vec3<f32>(305f, global2.c.x, global2.a.x), Struct_2(true, u_input.a.x, Struct_1(vec2<f32>(global2.a.x, global2.d.x), u_input.b.x, vec4<f32>(global2.c.x, 429f, global2.d.x, global2.a.x), vec3<f32>(global2.d.x, global2.d.x, global2.d.x)), Struct_1(vec2<f32>(global2.d.x, global2.d.x), 2147483647i, global2.c, global2.c.wxz)))), Struct_4(~global0.zw, Struct_1(global2.d.xx, global2.b, global2.c, vec3<f32>(485f, 1441f, global2.a.x)), ~u_input.a.x, global2.b, max(vec4<i32>(global2.b, -31048i, global2.b, -12641i), vec4<i32>(u_input.b.x, -61218i, global2.b, 22929i))), min(u_input.a.yw, global0.wy) & global0.zz, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true))));
    var var_2 = 852f;
    let var_3 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_1.a.c, ~_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(global0.x, 38417u, 4294967295u, global0.x))), -var_1.b.e, _wgslsmith_f_op_f32(var_1.b.b.c.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.b.c.x)))), func_5(firstLeadingBit(~vec2<i32>(3095i, u_input.c.x)), -6618i, _wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(_wgslsmith_div_f32(var_1.a.e.c.x, global2.d.x), _wgslsmith_f_op_f32(-var_1.a.b.c.x))), func_5(~(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 1i)), firstTrailingBit(i32(-1i) * -40912i), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.b.c.x), func_1(vec3<f32>(global2.a.x, -1977f, -525f), Struct_2(false, 5893u, Struct_1(vec2<f32>(global2.a.x, global2.d.x), global1[_wgslsmith_index_u32(global0.x, 20u)], vec4<f32>(global2.a.x, -263f, var_1.b.b.d.x, global2.c.x), vec3<f32>(global2.c.x, 929f, 1062f)), Struct_1(var_1.b.b.c.zx, 25689i, var_1.b.b.c, global2.c.zyy))).a.x), Struct_1(var_1.b.b.c.zz, i32(-1i) * -26764i, vec4<f32>(1000f, -568f, var_1.b.b.a.x, -1148f), vec3<f32>(-1000f, global2.d.x, 1560f))).b.b).a.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_1.e.x, Struct_5(var_1.a, var_1.b, global0.xy, var_3.x, var_1.e), Struct_5(var_1.a, var_1.b, vec2<u32>(1373u, u_input.a.x), var_1.d, vec2<bool>(false, true))).d.x * _wgslsmith_f_op_f32(f32(-1f) * -317f))) + 102f));
}

