struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<vec2<u32>, 18>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3) -> vec2<bool> {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    return select(!(!vec2<bool>(!arg_2.b.x, 0u == arg_1.x)), !vec2<bool>(_wgslsmith_div_f32(arg_0.c.a, arg_2.c.a) == arg_2.d.x, arg_2.b.x), !any(select(vec4<bool>(arg_2.b.x, true, true, arg_2.b.x), vec4<bool>(arg_0.c.d.x, false, false, true), arg_2.b.x)) & all(select(select(arg_0.c.d, vec3<bool>(arg_2.b.x, arg_2.c.d.x, true), arg_0.c.d), arg_0.c.d, select(vec3<bool>(true, arg_0.c.d.x, arg_0.c.d.x), vec3<bool>(true, arg_2.b.x, arg_2.c.d.x), arg_0.c.d))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    global0 = array<u32, 26>();
    let var_0 = arg_2.a;
    var var_1 = arg_2.a.d.yx;
    global0 = array<u32, 26>();
    let var_2 = Struct_4(!select(func_3(Struct_3(17815u, var_0.d.yx, Struct_1(-1255f, 2147483647i, 1u, arg_1.a.d), arg_2.d), arg_2.b, Struct_3(arg_0.x, arg_1.a.d.yy, arg_2.a, vec2<f32>(var_0.a, 946f))), vec2<bool>(true, true), all(vec2<bool>(false, true)) || true), u_input.a.x, _wgslsmith_add_i32(-2147483647i, ~(-2147483647i)), arg_2.a);
    return _wgslsmith_clamp_vec3_i32(abs(abs(~max(vec3<i32>(var_0.b, -2147483647i, 37357i), vec3<i32>(-1i, arg_1.a.b, arg_1.a.b)))), ~(-abs(vec3<i32>(-1i, 0i, var_2.c))), ~(vec3<i32>(arg_1.a.b, -1i, firstLeadingBit(var_2.d.b)) << (vec3<u32>(~arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], var_2.d.c, 1u, var_2.b), vec4<u32>(41440u, var_2.b, var_0.c, 1u)), ~1613u) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_5 {
    var var_0 = arg_1.b;
    var var_1 = 1000f;
    var_1 = 1003f;
    let var_2 = select(u_input.a, countOneBits(~reverseBits(~u_input.a)), vec2<bool>(!arg_1.a.x, true));
    global0 = array<u32, 26>();
    return Struct_5(arg_1.d, arg_2.x);
}

fn func_5(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(reverseBits(~(~vec4<u32>(arg_2.a, global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_0.b, arg_2.a))), ~(~select(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(62436u, 26u)], arg_2.c.c, 48842u), vec4<u32>(global0[_wgslsmith_index_u32(55049u, 26u)], u_input.a.x, 1u, arg_2.c.c), vec4<bool>(arg_0.a.d.x, true, true, false))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(arg_2.c.c, 26u)], arg_0.a.c, 65334u, global0[_wgslsmith_index_u32(0u, 26u)]) << (_wgslsmith_mult_vec4_u32(vec4<u32>(40742u, 0u, 23486u, arg_2.c.c), vec4<u32>(arg_0.b, 1u, arg_0.b, 4294967295u)) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(18561u, 1552u, 32137u, 0u), vec4<u32>(1u, global0[_wgslsmith_index_u32(23613u, 26u)], 57866u, arg_0.b), vec4<u32>(40265u, global0[_wgslsmith_index_u32(0u, 26u)], arg_2.a, 13386u)), vec4<u32>(53872u, select(4294967295u, arg_0.b, false), ~arg_0.a.c, arg_0.a.c ^ arg_0.b)));
    var var_1 = arg_2.c.d;
    let var_2 = Struct_4(vec2<bool>(all(!vec2<bool>(var_1.x, true)), arg_2.c.d.x), _wgslsmith_div_u32(0u, 1u), -38952i, func_4(vec3<i32>(_wgslsmith_mult_i32(1i, arg_2.c.b), countOneBits(-48307i), ~min(arg_2.c.b, -12680i)), Struct_4(func_3(arg_2, countOneBits(vec3<u32>(12615u, arg_0.b, 0u)), Struct_3(8227u, arg_0.a.d.zx, Struct_1(arg_1.x, arg_0.a.b, global0[_wgslsmith_index_u32(arg_2.c.c, 26u)], vec3<bool>(true, false, arg_0.a.d.x)), arg_2.d)), 4294967295u, (arg_0.a.b << (var_0.x % 32u)) ^ -76457i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1411f), arg_0.a.b | 2147483647i, var_0.x, arg_0.a.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, firstLeadingBit(37536u), arg_0.b), vec3<u32>(28646u, ~4294967295u, _wgslsmith_mod_u32(32140u, global0[_wgslsmith_index_u32(17912u, 26u)])))).a);
    global1 = array<vec2<u32>, 18>();
    global1 = array<vec2<u32>, 18>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.b, arg_2.c.b, 56503i), vec3<i32>(arg_0.a.b, arg_0.a.b, -2147483647i)), ~vec3<i32>(arg_2.c.b, arg_0.a.b, var_2.d.b)) | ~(-22904i), 51004u, select(var_2.d.d, vec3<bool>(var_2.a.x || false, arg_0.a.b <= -2147483647i, false), vec3<bool>(-2358f == arg_1.x, var_2.d.d.x, true))), var_0.zxz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_1)) - _wgslsmith_f_op_vec4_f32(exp2(arg_1))) + vec4<f32>(_wgslsmith_f_op_f32(var_2.d.a * var_2.d.a), arg_1.x, _wgslsmith_f_op_f32(-var_2.d.a), _wgslsmith_f_op_f32(-arg_0.a.a)))), vec2<f32>(arg_1.x, -895f));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    global0 = array<u32, 26>();
    var var_0 = true;
    let var_1 = func_5(func_4(countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(51296i, 2147483647i, 2147483647i), func_2(vec4<u32>(109194u, 76048u, 0u, 4294967295u), Struct_5(arg_1.c, 4294967295u), Struct_2(Struct_1(-1664f, arg_2.c.b, global0[_wgslsmith_index_u32(74290u, 26u)], arg_1.c.d), vec3<u32>(3700u, arg_2.c.c, arg_1.a), vec4<f32>(arg_1.d.x, -730f, 204f, 748f), vec2<f32>(arg_2.d.x, -1444f)), true))), Struct_4(!select(arg_2.c.d.xx, arg_2.c.d.yy, arg_2.b.x), 4294967295u, -select(-2147483647i, 2147483647i, arg_3.x), Struct_1(1f, -1i, arg_2.a ^ 1u, !arg_3.ywy)), abs(~vec3<u32>(1u, arg_1.c.c, 1u)) >> ((abs(vec3<u32>(arg_2.a, global0[_wgslsmith_index_u32(4294967295u, 26u)], 37602u)) ^ vec3<u32>(arg_1.a, 1u, 30271u)) % vec3<u32>(32u))), vec4<f32>(730f, _wgslsmith_f_op_f32(arg_2.d.x + -2039f), arg_1.c.a, -764f), Struct_3(abs(~1u | _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), arg_1.b, Struct_1(_wgslsmith_f_op_f32(round(arg_1.d.x)), func_2(vec4<u32>(85785u, arg_2.c.c, 73503u, 24852u), Struct_5(arg_2.c, 36578u), Struct_2(arg_1.c, vec3<u32>(21640u, 4294967295u, arg_1.c.c), vec4<f32>(arg_1.d.x, 1000f, arg_1.c.a, 383f), vec2<f32>(arg_0, arg_2.c.a)), all(vec3<bool>(false, arg_3.x, arg_2.b.x))).x, arg_1.c.c, vec3<bool>(all(vec4<bool>(false, arg_3.x, arg_2.b.x, arg_3.x)), -1i == arg_1.c.b, any(vec3<bool>(false, false, arg_1.b.x)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2.d)))));
    global1 = array<vec2<u32>, 18>();
    var var_2 = Struct_3(_wgslsmith_sub_u32(~14506u, reverseBits(4304u)), arg_3.wy, arg_2.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(404f, _wgslsmith_div_f32(-162f, -437f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.d), vec2<f32>(-1965f, var_1.c.x))), !arg_2.c.d.zz)), var_1.c.yy)));
    return abs(~(~41458u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(max(26247u, u_input.a.x), ~firstLeadingBit(~func_1(-868f, Struct_3(29505u, vec2<bool>(true, false), Struct_1(1005f, -49227i, global0[_wgslsmith_index_u32(4294967295u, 26u)], vec3<bool>(false, true, false)), vec2<f32>(1261f, -584f)), Struct_3(0u, vec2<bool>(false, false), Struct_1(432f, 0i, u_input.a.x, vec3<bool>(false, true, true)), vec2<f32>(-963f, 939f)), vec4<bool>(false, false, false, true))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], (0u & ((u_input.a.x << (0u % 32u)) << (_wgslsmith_div_u32(29098u, 12466u) % 32u))) | ~u_input.a.x);
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(~0i << (1u % 32u), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(17760i, 0i, -7678i), countOneBits(firstTrailingBit(-1i))), ~_wgslsmith_div_i32(-13103i >> (global0[_wgslsmith_index_u32(0u, 26u)] % 32u), -2147483647i), max(1i, i32(-1i) * -33730i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, func_5(Struct_5(Struct_1(808f, 19633i, 1u, vec3<bool>(true, false, false)), 81063u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1515f, 2078f, -851f, -114f)), Struct_3(41502u, vec2<bool>(false, false), Struct_1(-144f, 2147483647i, var_0.x, vec3<bool>(false, false, false)), vec2<f32>(-1675f, -1817f))).a.b, countOneBits(_wgslsmith_div_i32(19763i, 45426i)), _wgslsmith_mult_i32(0i, abs(-1i))), abs(abs(vec4<i32>(7468i, 7856i, 12899i, 1i)) & (vec4<i32>(1i, -2147483647i, -44957i, 21572i) << (vec4<u32>(var_0.x, 30798u, 42791u, 12813u) % vec4<u32>(32u))))));
    var var_2 = (var_1 << (vec4<u32>(1u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 51402u, u_input.a.x), 26u)] >> (_wgslsmith_mod_u32(4294967295u, 61469u) % 32u), global0[_wgslsmith_index_u32(4294967295u << (select(var_0.x, global0[_wgslsmith_index_u32(1u, 26u)], true) % 32u), 26u)], ~(~16496u)) % vec4<u32>(32u))) & var_1;
    let var_3 = 64784i;
    var_0 = ~(~select(vec4<u32>(global0[_wgslsmith_index_u32(1u >> (0u % 32u), 26u)], global0[_wgslsmith_index_u32(func_1(594f, Struct_3(u_input.a.x, vec2<bool>(true, false), Struct_1(-447f, 1i, global0[_wgslsmith_index_u32(30973u, 26u)], vec3<bool>(true, false, false)), vec2<f32>(910f, -903f)), Struct_3(var_0.x, vec2<bool>(true, false), Struct_1(137f, var_2.x, 4197u, vec3<bool>(true, true, false)), vec2<f32>(901f, -1756f)), vec4<bool>(true, true, true, true)), 26u)], 1u, 12843u), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 93397u), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_5(func_4(vec3<i32>(-1i, var_1.x, -71039i), Struct_4(vec2<bool>(true, true), u_input.a.x, 31598i, Struct_1(619f, var_1.x, global0[_wgslsmith_index_u32(16589u, 26u)], vec3<bool>(true, true, false))), vec3<u32>(1u, u_input.a.x, 41211u) >> (var_0.xzw % vec3<u32>(32u))).a, _wgslsmith_dot_vec3_u32(var_0.xyz, var_0.xyw << (vec3<u32>(41448u, 13329u, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, -373f, -1650f, -1104f))), Struct_3(u_input.a.x, vec2<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, true, false))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -387f), i32(-1i) * -2147483647i, 4294967295u, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))).c.zxw, var_3);
}

