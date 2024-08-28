struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1000f, false, vec2<u32>(27126u, 1u)), -1831f, vec3<f32>(1000f, -298f, -1032f), vec4<u32>(1u, 1u, 0u, 1u), vec3<i32>(40084i, 2147483647i, 0i));

var<private> global1: array<i32, 12>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(-483f, true, vec2<u32>(1u, 44910u)), -2400f, vec3<f32>(-1738f, 828f, -1208f), vec4<u32>(1u, 119828u, 30912u, 14639u), vec3<i32>(1i, 0i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global2 = countOneBits(select(global0.d.zxx, ~select(vec3<u32>(53253u, arg_1.c.x, arg_0.c.x), select(global0.d.ywx, global3.d.yzx, vec3<bool>(false, false, global3.a.b)), true), !(!(!vec3<bool>(false, global0.a.b, true)))));
    var var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global3.c.x), global0.a.b, global2.yx);
    let var_2 = vec2<i32>(countOneBits(global1[_wgslsmith_index_u32(21364u, 12u)]), -8028i);
    let var_3 = var_0.b;
    return abs(0i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(arg_3.x)), true, vec2<u32>(u_input.a, 1u)), -441f, vec3<f32>(arg_0.a, arg_0.a, -1995f), ~global3.d, vec3<i32>(12589i, _wgslsmith_mod_i32(max(1i, 32706i), max(firstTrailingBit(4826i), arg_1.e.x)), ~global0.e.x));
    let var_0 = ~u_input.a;
    let var_1 = Struct_2(global3.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, arg_3.x, 129f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), global0.a.a, -627f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1495f), 1985f, _wgslsmith_f_op_f32(ceil(arg_3.x))))), ~global3.d | ~arg_1.d, global3.e);
    let var_2 = -(vec4<i32>(global3.e.x, func_3(Struct_1(-204f, false, global0.a.c), arg_0, arg_0), -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global3.e.x, -2147483647i, 26088i), ~vec3<i32>(global1[_wgslsmith_index_u32(global3.d.x, 12u)], 33296i, 0i))) & vec4<i32>(global1[_wgslsmith_index_u32(abs(~global0.a.c.x), 12u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global0.d.wy, arg_1.d.yz), 12u)], global3.e.x, ~_wgslsmith_mult_i32(var_1.e.x, -1i)));
    global3 = arg_1;
    return Struct_1(1466f, false, ~arg_2.xy >> (vec2<u32>(global0.a.c.x, 1u) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    global0 = Struct_2(Struct_1(-1685f, select(!arg_1.b, arg_1.b, true && !arg_2.x), global3.d.zx), _wgslsmith_f_op_f32(max(global0.b, -302f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3.c, vec3<f32>(325f, global3.b, arg_3), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c))) - vec3<f32>(139f, -621f, _wgslsmith_f_op_f32(round(-595f)))), vec4<u32>(1u, func_2(Struct_1(_wgslsmith_f_op_f32(-global0.c.x), !arg_1.b, vec2<u32>(17372u, 0u)), Struct_2(global0.a, _wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_vec3_f32(global0.c + global0.c), abs(vec4<u32>(60771u, global0.d.x, 4294967295u, 1u)), abs(vec3<i32>(-1i, global3.e.x, global1[_wgslsmith_index_u32(arg_1.c.x, 12u)]))), global0.d.yyy, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.c * global0.c)))).c.x, global3.d.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(global0.a.c.x ^ 0u, global3.a.c.x), firstTrailingBit(64861u), ~44749u)), vec3<i32>(-_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(global0.e.x, 4753i, -2147483647i, global0.e.x) ^ vec4<i32>(-2147483647i, 2147483647i, global0.e.x, 2147483647i)), _wgslsmith_add_i32(arg_0.x << ((22783u << (u_input.a % 32u)) % 32u), _wgslsmith_sub_i32(-37977i, ~2147483647i)), -1i));
    global2 = vec3<u32>(abs(u_input.a), arg_1.c.x, min(global0.d.x, 22914u));
    global0 = Struct_2(func_2(func_2(global3.a, Struct_2(func_2(global0.a, Struct_2(Struct_1(arg_1.a, arg_2.x, global0.d.yy), global0.b, vec3<f32>(arg_1.a, arg_3, arg_3), vec4<u32>(arg_1.c.x, 58001u, 1u, global3.d.x), global3.e), global0.d.yyx, vec3<f32>(global0.a.a, -720f, 157f)), arg_1.a, _wgslsmith_f_op_vec3_f32(round(global0.c)), ~vec4<u32>(15833u, 4294967295u, 0u, u_input.a), ~vec3<i32>(-37285i, arg_0.x, -29113i)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(28696u, u_input.a, global2.x), global0.d.zzw, global3.d.yzx), vec3<u32>(arg_1.c.x, global0.a.c.x, 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global3.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2036f, arg_3, 491f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-391f + global3.c.x), !arg_1.b, _wgslsmith_mod_vec2_u32(global0.d.zw, global2.zy)), _wgslsmith_f_op_f32(244f - _wgslsmith_f_op_f32(-1176f * arg_3)), _wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-225f, arg_1.a, arg_3), vec3<f32>(1319f, -103f, 276f))), !arg_1.b)), global3.d, ~global3.e), vec3<u32>(_wgslsmith_sub_u32(57890u, global3.a.c.x), _wgslsmith_add_u32(~29373u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 11719u, global2.x), vec3<u32>(u_input.a, 1u, global2.x))), _wgslsmith_clamp_u32(27385u, 1u ^ u_input.a, 1u << (global0.a.c.x % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), 186f, -1387f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a, -1000f, 497f))))), arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global3.c), global0.c)))), reverseBits(global0.d), -((vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_1.c.x, 12u)], 0i)) ^ countOneBits(global3.e)));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f * -338f), false, ~_wgslsmith_mod_vec2_u32(~arg_1.c, _wgslsmith_mod_vec2_u32(arg_1.c, vec2<u32>(30544u, 0u)))), arg_1.a, global0.c, select(abs(vec4<u32>(1u, 1u, 4294967295u, u_input.a) | global0.d), (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 61262u, global0.d.x), vec4<u32>(global3.d.x, 6040u, arg_1.c.x, global3.d.x), vec4<u32>(u_input.a, 4294967295u, 11272u, global3.a.c.x)) << ((global3.d >> (global0.d % vec4<u32>(32u))) % vec4<u32>(32u))) >> (global0.d % vec4<u32>(32u)), vec4<bool>(global3.a.b, arg_3 != _wgslsmith_div_f32(1000f, -733f), global0.a.b, _wgslsmith_mod_u32(58575u, global3.d.x) == 4294967295u)), (~(-vec3<i32>(global0.e.x, 3815i, arg_0.x)) | global3.e) | _wgslsmith_mod_vec3_i32(abs(vec3<i32>(0i, global3.e.x, arg_0.x)), vec3<i32>(-global3.e.x, _wgslsmith_mod_i32(global0.e.x, global3.e.x), 78321i)));
    let var_1 = Struct_2(Struct_1(var_0.c.x, abs(_wgslsmith_mod_i32(0i, global0.e.x)) < var_0.e.x, vec2<u32>(global0.a.c.x, _wgslsmith_sub_u32(global0.a.c.x, max(56753u, 28322u)))), 2093f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2124f, 1071f, 2508f)) * global0.c), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), global0.b, _wgslsmith_f_op_f32(-var_0.a.a)))))), firstTrailingBit(vec4<u32>(~_wgslsmith_div_u32(0u, global0.d.x), arg_1.c.x, 33884u, max(_wgslsmith_dot_vec3_u32(var_0.d.yyz, vec3<u32>(global3.d.x, global2.x, 4294967295u)), u_input.a))), reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.x, global0.e.x, -4985i), arg_0.yyz), i32(-1i) * -2147483647i, 1i)) & ~_wgslsmith_mult_vec3_i32(vec3<i32>(10991i, -31241i, -1i), vec3<i32>(-1i, arg_0.x, 0i)));
    return ~arg_1.c.x ^ u_input.a;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(false, ~_wgslsmith_dot_vec2_u32(select(global2.xz, vec2<u32>(global0.a.c.x, global2.x), vec2<bool>(true, false)), global3.a.c & vec2<u32>(global2.x, global3.a.c.x)) < ~func_4(vec4<i32>(28461i, -22405i, 0i, 43978i), func_2(global3.a, Struct_2(Struct_1(-629f, global0.a.b, global3.a.c), -1693f, global0.c, vec4<u32>(1u, 1u, global3.a.c.x, 63342u), global3.e), global0.d.xyz, vec3<f32>(global3.c.x, 1449f, 1440f)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-1580f - 526f)), func_2(func_2(func_2(Struct_1(-178f, false, vec2<u32>(global2.x, 86310u)), Struct_2(global3.a, -899f, vec3<f32>(global0.a.a, -391f, global0.a.a), global3.d, global0.e), countOneBits(vec3<u32>(6595u, 1u, global0.a.c.x)), _wgslsmith_div_vec3_f32(global3.c, global0.c)), Struct_2(Struct_1(578f, true, vec2<u32>(0u, 10227u)), _wgslsmith_f_op_f32(514f - global0.a.a), _wgslsmith_f_op_vec3_f32(global3.c - global3.c), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 88427u, 1u, 0u), global3.d), global3.e), global3.d.zzw, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(global0.c))))), Struct_2(global0.a, global0.a.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1052f, 574f, -1642f), _wgslsmith_f_op_vec3_f32(-global0.c))), vec4<u32>(_wgslsmith_mult_u32(1u, global3.d.x), func_2(global0.a, Struct_2(Struct_1(-268f, true, global2.xy), 946f, vec3<f32>(-1000f, global3.a.a, global0.b), global0.d, global3.e), global0.d.yyw, vec3<f32>(global3.b, -1081f, global0.a.a)).c.x, func_2(global3.a, Struct_2(Struct_1(-554f, false, global2.xx), 522f, global3.c, global0.d, global3.e), vec3<u32>(0u, 1u, global3.d.x), vec3<f32>(395f, global0.b, global0.a.a)).c.x, 0u), global3.e), ~firstLeadingBit(~vec3<u32>(25805u, 44573u, 23900u)), global3.c).b);
    let var_1 = !var_0.zx;
    global1 = array<i32, 12>();
    var var_2 = -(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, global3.e.x, global0.e.x), select(global3.e, global3.e, vec3<bool>(var_0.x, true, true)), reverseBits(global0.e)) ^ global3.e) << ((abs(~(~global0.d.yxw)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(~27054u, 146201u, global2.x), global3.d.xxy) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = Struct_2(Struct_1(func_2(Struct_1(global3.c.x, true, ~global0.a.c), Struct_2(Struct_1(global3.c.x, global0.a.b, vec2<u32>(0u, global3.a.c.x)), _wgslsmith_f_op_f32(1924f + global0.b), vec3<f32>(global3.c.x, global3.c.x, -1480f), vec4<u32>(global2.x, 40949u, global3.d.x, 47783u), vec3<i32>(global1[_wgslsmith_index_u32(44066u, 12u)], global0.e.x, 0i)), global0.d.xyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.c)))).a, false, global3.d.yz), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1234f, global3.a.a))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1210f, -722f), _wgslsmith_f_op_f32(abs(-343f))))) - global3.c.x), vec3<f32>(_wgslsmith_f_op_f32(trunc(763f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a, -565f) + global0.c.x) + global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1088f)), ~max(global0.d, abs(~global3.d)), vec3<i32>(firstTrailingBit(~2147483647i), -9058i, func_3(global0.a, Struct_1(1211f, false, global2.yy), func_2(global3.a, Struct_2(Struct_1(global3.c.x, false, global3.d.xy), global3.c.x, vec3<f32>(global0.c.x, global3.b, global0.b), vec4<u32>(29109u, 20950u, 1u, global0.d.x), vec3<i32>(0i, 0i, 580i)), global3.d.zwz >> (vec3<u32>(global0.d.x, global2.x, u_input.a) % vec3<u32>(32u)), global0.c))));
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.c.x + _wgslsmith_f_op_f32(-var_3.b)), 281f)), var_3.d.x <= 4294967295u, ~abs(vec2<u32>(5841u, _wgslsmith_mult_u32(0u, 46245u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.b;
    var var_1 = func_1();
    let var_2 = global0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1174f, vec4<f32>(292f, -799f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_1.a))), global0.a.a), var_1.a);
}

