struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(34758i, 17031i, 2147483647i, -17308i);

var<private> global1: array<i32, 29>;

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, true), -263f, -1184f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    global1 = array<i32, 29>();
    var var_0 = (min(arg_2.d.x, 0u) & _wgslsmith_mod_u32(arg_2.d.x, ~11289u)) ^ (arg_2.d.x | _wgslsmith_dot_vec2_u32(arg_2.d.yx, arg_2.d.wz));
    var_0 = countOneBits(4294967295u);
    global2 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1086f, arg_0.b, -474f, _wgslsmith_f_op_f32(floor(-1130f))) + vec4<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(global2.c - -1481f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.c + -193f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c * arg_0.c))))), _wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(min(arg_2.b.x, arg_0.c))));
    return max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, select(arg_2.d.x, arg_2.d.x, true), arg_2.d.x, countOneBits(87081u)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.d, arg_2.d), vec4<u32>(0u, arg_2.d.x, arg_2.d.x, 33090u))), abs(_wgslsmith_div_u32(~20395u, arg_2.d.x >> (0u % 32u))), _wgslsmith_dot_vec3_u32(arg_2.d.zyy, ~vec3<u32>(0u, arg_2.d.x, 38556u) ^ arg_2.d.yww), 4294967295u), firstLeadingBit(abs(abs(arg_2.d) >> (arg_2.d % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)), _wgslsmith_f_op_f32(max(-1080f, _wgslsmith_f_op_f32(f32(-1f) * -632f))))), -1778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b)))))));
    var var_1 = -(((firstLeadingBit(vec2<i32>(-29629i, -2147483647i)) & vec2<i32>(global0.x, -13237i)) | _wgslsmith_clamp_vec2_i32(global0.zy << (arg_0.zy % vec2<u32>(32u)), vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 29u)], -2147483647i), ~vec2<i32>(u_input.a, 1i))) & vec2<i32>(0i, _wgslsmith_sub_i32(1i, 0i) << ((arg_0.x << (0u % 32u)) % 32u)));
    global0 = vec4<i32>(-15913i, global0.x, ~(-firstTrailingBit(-24399i)), -(~var_1.x << (4294967295u % 32u)));
    var_1 = ~vec2<i32>((global0.x ^ 1i) >> (countOneBits(19525u ^ arg_0.x) % 32u), _wgslsmith_add_i32(-_wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_0.x, 29u)], global1[_wgslsmith_index_u32(31793u, 29u)]), global0.x));
    return Struct_1(global0.wyx, var_0.xy, !select(vec4<bool>(true, true, any(vec3<bool>(global2.a.x, global2.a.x, global2.a.x)), all(vec4<bool>(global2.a.x, true, true, global2.a.x))), vec4<bool>(false || global2.a.x, true, true, true), !vec4<bool>(false, global2.a.x, global2.a.x, global2.a.x)), _wgslsmith_mod_vec4_u32(~(~func_3(Struct_2(vec2<bool>(global2.a.x, global2.a.x), -2297f, -636f), var_1.x, Struct_1(global0.yzy, vec2<f32>(var_0.x, 336f), vec4<bool>(true, global2.a.x, global2.a.x, global2.a.x), vec4<u32>(62604u, arg_0.x, 1u, 922u)), Struct_2(global2.a, global2.b, 1000f))), _wgslsmith_div_vec4_u32(~(vec4<u32>(40209u, arg_0.x, 4294967295u, 1u) << (arg_0 % vec4<u32>(32u))), vec4<u32>(arg_0.x ^ 1u, 0u, arg_0.x >> (53677u % 32u), func_3(Struct_2(vec2<bool>(global2.a.x, global2.a.x), var_0.x, global2.b), global1[_wgslsmith_index_u32(arg_0.x, 29u)], Struct_1(global0.wwy, var_0.zx, vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false), arg_0), Struct_2(vec2<bool>(global2.a.x, true), global2.c, -1000f)).x))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    global0 = vec4<i32>(_wgslsmith_mult_i32(-arg_0.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0.x, 13491i, 32665i, u_input.a)), max(vec4<i32>(27715i, 2147483647i, -21543i, 9377i), vec4<i32>(0i, u_input.a, -17845i, global1[_wgslsmith_index_u32(30883u, 29u)]))) << (_wgslsmith_div_u32(1u, arg_1.d.x) % 32u)), ~_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(arg_2.a.xz, vec2<i32>(u_input.a, 2147483647i))), -reverseBits(arg_2.a.x)), 6386i, -2147483647i);
    global0 = firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(arg_2.d.x, 29u)], (u_input.a << (arg_1.d.x % 32u)) << (25222u % 32u), firstTrailingBit(1i), func_2(arg_1.d).a.x)) << (~select(min(arg_1.d | vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(arg_1.d.x, 1u, arg_1.d.x, arg_2.d.x)), vec4<u32>(1u, abs(arg_1.d.x), firstTrailingBit(0u), 21267u), arg_2.c) % vec4<u32>(32u));
    var var_0 = ~(-global0.xzx);
    global0 = vec4<i32>(-21022i, -arg_2.a.x, 20107i | abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 12253i, global1[_wgslsmith_index_u32(arg_1.d.x, 29u)]), arg_1.a & global0.xzx)), _wgslsmith_add_i32(func_2(arg_2.d).a.x, arg_0.x));
    return _wgslsmith_f_op_vec2_f32(-arg_1.b);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    let var_0 = select(vec2<bool>(true, true), !arg_1.a, arg_2.a);
    let var_1 = Struct_1(global0.zzy & vec3<i32>(global1[_wgslsmith_index_u32(firstTrailingBit(17276u) & ~1u, 29u)], ~0i, 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(abs(min(global0.wy, global0.zz)), Struct_1(global0.www | global0.zzz, vec2<f32>(-1000f, global2.c), vec4<bool>(global2.a.x, false, arg_2.a.x, false), vec4<u32>(1u, 1u, 1u, 1u)), func_2(vec4<u32>(0u, 7669u, 7674u, 45501u))))), !vec4<bool>(arg_1.a.x, var_0.x, true, true), vec4<u32>(~countOneBits(~36853u), ~4294967295u, 4294967295u, 4767u));
    global1 = array<i32, 29>();
    var var_2 = func_2(var_1.d);
    let var_3 = Struct_2(vec2<bool>(arg_2.c > global2.b, arg_2.a.x), _wgslsmith_div_f32(1857f, _wgslsmith_f_op_f32(-var_1.b.x)), 708f);
    return vec3<f32>(-348f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c)))))), 121f);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_1;
    global1 = array<i32, 29>();
    let var_1 = arg_3;
    let var_2 = arg_0.xx;
    var var_3 = !(var_1.a.x || true);
    return abs(1i | func_2(abs(select(vec4<u32>(1u, arg_2.x, arg_1.x, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, 20548u, 49936u), vec4<bool>(arg_3.a.x, true, false, global2.a.x)))).a.x);
}

fn func_6(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(-vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, -65563i), global0.x), 15476i), Struct_1(~global0.xzz, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(global2.b * global2.b), -372f))), func_2(vec4<u32>(1u, 1u, 1u, 1u)).c, vec4<u32>(1u, 1u, 1u, 1u)), func_2(func_2(select(vec4<u32>(4294967295u, 58734u, 30252u, 10353u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 117u, 18249u, 1u), vec4<u32>(13315u, 76733u, 1u, 1u), vec4<u32>(68005u, 6166u, 4294967295u, 5856u)), vec4<bool>(global2.a.x, arg_0, false, global2.a.x))).d)));
    var var_1 = abs(firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(8465u, 29u)], global0.x)));
    let var_2 = vec4<i32>(-904i, -2147483647i, u_input.a, 18144i);
    global2 = Struct_2(!select(!global2.a, select(vec2<bool>(true, true), !global2.a, global2.a), !global2.a), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    let var_3 = var_1.x;
    return Struct_2(!select(global2.a, vec2<bool>(true, true), func_2(firstTrailingBit(vec4<u32>(33100u, 1u, 17118u, 4294967295u))).c.xy), global2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * global2.c))), _wgslsmith_f_op_f32(f32(-1f) * -305f)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c), func_6(global2.a.x, global0.x).b), -1372f, 941f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), 314f, _wgslsmith_f_op_f32(global2.b + -1043f), _wgslsmith_f_op_f32(-arg_0.b))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, arg_0.c, -1975f, -514f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, arg_1.b.x, 456f, arg_1.b.x), vec4<f32>(global2.c, -883f, 386f, global2.b), arg_1.c.x)))))));
    global0 = select(vec4<i32>(abs(countOneBits(1i)), _wgslsmith_mod_i32(-8279i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, arg_1.a.x, global0.x), vec4<i32>(0i, -8692i, 13350i, 1i))), _wgslsmith_mod_i32(u_input.a, global0.x) >> (~arg_1.d.x % 32u), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.a, global1[_wgslsmith_index_u32(74676u, 29u)], 22383i), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(arg_1.d.x, 29u)], arg_1.a.x, global0.x))) | (firstTrailingBit(vec4<i32>(u_input.a, arg_1.a.x, global1[_wgslsmith_index_u32(arg_1.d.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])) & (abs(vec4<i32>(global0.x, u_input.a, global0.x, global1[_wgslsmith_index_u32(57255u, 29u)])) << (vec4<u32>(arg_1.d.x, arg_1.d.x, 1029u, arg_1.d.x) % vec4<u32>(32u)))), select(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(arg_1.d.x, 29u)], global0.x) & -vec4<i32>(1i, 0i, 2147483647i, u_input.a), vec4<i32>(-2147483647i, 2147483647i, firstTrailingBit(global1[_wgslsmith_index_u32(9293u, 29u)]), global1[_wgslsmith_index_u32(func_3(arg_0, u_input.a, arg_1, Struct_2(arg_0.a, -715f, 171f)).x, 29u)])), abs(firstLeadingBit(firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(35479u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], -31318i, -1i)))), !arg_1.c), 10443u < arg_1.d.x);
    var var_1 = func_2(arg_1.d).a.x;
    let var_2 = select(select(global2.a, !func_6(false, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(25580u, 29u)], -2147483647i)).a, !global2.a), vec2<bool>(arg_1.c.x, false), !arg_1.c.xy);
    global1 = array<i32, 29>();
    return Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(-var_0.zx), vec4<bool>(true, !(var_2.x || true), true | any(func_6(false, arg_1.a.x).a), true), min(countOneBits(~vec4<u32>(arg_1.d.x, 0u, arg_1.d.x, arg_1.d.x) & (vec4<u32>(arg_1.d.x, 34257u, 1u, 20336u) | arg_1.d)), _wgslsmith_sub_vec4_u32(~(vec4<u32>(68637u, arg_1.d.x, 4294967295u, arg_1.d.x) ^ vec4<u32>(16673u, arg_1.d.x, 24404u, 4294967295u)), vec4<u32>(67575u, ~arg_1.d.x, 1u, countOneBits(arg_1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 50462u, 80104u), vec3<u32>(5410u, 1463u, 28981u)), ~_wgslsmith_div_u32(6561u, 23544u)), 8691u), ~(~1u));
    global1 = array<i32, 29>();
    let var_1 = _wgslsmith_f_op_f32(round(-403f));
    var var_2 = ~25843u;
    var_0 = max(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(61274u, 3788u, 4294967295u)), 1u), ~firstLeadingBit(1u));
    global2 = Struct_2(global2.a, _wgslsmith_f_op_f32(ceil(-2245f)), _wgslsmith_f_op_f32(sign(global2.c)));
    let var_3 = func_7(func_6(!(_wgslsmith_f_op_f32(-global2.b) < _wgslsmith_f_op_f32(-global2.c)), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.a, Struct_2(vec2<bool>(true, global2.a.x), -1000f, global2.b), Struct_2(vec2<bool>(false, global2.a.x), -1253f, 546f), false))), ~vec3<u32>(6527u, 1u, 4294967295u), firstLeadingBit(abs(vec2<u32>(49563u, 25608u))), Struct_2(select(global2.a, vec2<bool>(true, global2.a.x), global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(f32(-1f) * -402f)))), func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_4 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_3.d.x, 29u)], 42231i), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.a), ~40123i) >> (vec2<u32>(0u, ~var_3.d.x) % vec2<u32>(32u))), _wgslsmith_mult_i32(~firstTrailingBit(-var_3.a.x), global0.x), ~(~(_wgslsmith_add_vec3_u32(var_3.d.yww, vec3<u32>(var_3.d.x, var_3.d.x, 0u)) >> ((var_3.d.xzz << (vec3<u32>(30016u, 0u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
}

