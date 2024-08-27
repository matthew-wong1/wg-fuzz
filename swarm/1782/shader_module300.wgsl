struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_4,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = global0.e.x;
    let var_1 = vec3<bool>(global0.e.x, ~u_input.a == 2147483647i, !(firstTrailingBit(~arg_1) >= (arg_1 >> (1u % 32u))));
    global0 = Struct_3(_wgslsmith_sub_i32(abs(~_wgslsmith_add_i32(-1i, -9304i)), global0.d), _wgslsmith_dot_vec4_i32(global0.c, max(-global0.c, ~global0.c) << (_wgslsmith_mod_vec4_u32(vec4<u32>(29778u, 0u, arg_0, arg_0), vec4<u32>(0u, 37680u, 1u, 3439u)) % vec4<u32>(32u))), vec4<i32>(global0.d, ~(i32(-1i) * -47154i), 2147483647i, global0.c.x), global0.b, global0.e);
    var var_2 = vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 3u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_1, 3u)])), _wgslsmith_f_op_f32(max(-949f, global1[_wgslsmith_index_u32(arg_1, 3u)])), global0.e.x)), -431f), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(arg_0 << (arg_1 % 32u)), arg_0), 3u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(arg_1, 3u)])) - _wgslsmith_f_op_f32(-385f * -300f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32354u, 3u)]))) * global1[_wgslsmith_index_u32(8952u, 3u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-831f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~arg_0, 3u)] + _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(45596u, 3u)]))))));
    var var_3 = Struct_5(true, 18867i, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 3u)]) * -1204f) < var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.zzz) + var_2.zxw) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, global1[_wgslsmith_index_u32(114471u, 3u)], var_2.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, global1[_wgslsmith_index_u32(48803u, 3u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x + 925f), -813f))), _wgslsmith_mult_i32(1i, 0i), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(49887u, 0u), firstLeadingBit(vec2<u32>(73296u, arg_1)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 32100u), vec2<u32>(0u, 1u))), (vec2<u32>(1u, 100739u) << (vec2<u32>(66351u, arg_1) % vec2<u32>(32u))) & ~vec2<u32>(arg_1, arg_1))), Struct_1(~36290u, !(~global0.d > global0.b), !global0.e.x && false, vec2<f32>(global1[_wgslsmith_index_u32(42306u, 3u)], -164f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~abs(arg_1), 3u)] - -150f), 1502f)));
    return ~global0.c.x;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> vec4<i32> {
    global0 = arg_0;
    var var_0 = -9340i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 61667u), vec2<u32>(0u, 1u)), 3u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(440f)) + global1[_wgslsmith_index_u32(~6604u, 3u)])) + _wgslsmith_f_op_f32(step(1142f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19979u, 3u)]), _wgslsmith_f_op_f32(min(-852f, -1000f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 3u)], 919f))))), -1030f)), 1898f);
    let var_2 = _wgslsmith_mult_vec4_i32(global0.c & global0.c, _wgslsmith_add_vec4_i32(global0.c, -(~(~vec4<i32>(arg_1, u_input.a, -1i, arg_0.b)))));
    global0 = arg_0;
    return vec4<i32>(~(~(i32(-1i) * -u_input.a)), _wgslsmith_mod_i32(u_input.a, u_input.a), max(-_wgslsmith_mult_i32(arg_1, ~2147483647i), arg_0.d), 24749i);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_3(firstLeadingBit(-13938i), global0.c.x, global0.c & func_4(Struct_3(global0.a, 14034i, abs(vec4<i32>(1i, 2147483647i, -2147483647i, 2147483647i)), _wgslsmith_div_i32(u_input.a, global0.a), vec2<bool>(arg_2.x, false)), func_3(11645u, arg_1.x) >> (arg_1.x % 32u), false), -32468i, vec2<bool>(any(select(vec2<bool>(true, arg_2.x), !vec2<bool>(arg_2.x, global0.e.x), select(vec2<bool>(false, true), global0.e, arg_2.yy))), true));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(floor(158f)) < global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(~arg_1.x), 1u), 3u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.x, 3u)], global1[_wgslsmith_index_u32(arg_1.x, 3u)], global1[_wgslsmith_index_u32(16703u, 3u)]))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(463f, global1[_wgslsmith_index_u32(1u, 3u)], -1414f) + vec3<f32>(225f, global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(42113u, 3u)], -1203f, global1[_wgslsmith_index_u32(20281u, 3u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.x, 3u)], 180f, 1000f) + vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], -151f)))))), _wgslsmith_div_f32(1681f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -807f)))), -min(firstTrailingBit(_wgslsmith_add_i32(2147483647i, -22370i)), u_input.a), ~(~arg_1.xx));
    var var_2 = arg_1;
    var_1 = Struct_4(any(arg_2), vec3<f32>(_wgslsmith_f_op_f32(select(-1219f, global1[_wgslsmith_index_u32(max(~30433u, max(var_2.x, arg_1.x)), 3u)], (var_2.x < var_1.e.x) && select(false, var_1.a, global0.e.x))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.x, 3u)], -173f), var_1.c), _wgslsmith_f_op_f32(round(-676f)), 0i, _wgslsmith_div_vec2_u32(reverseBits(arg_1.wz), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, 773u), ~5271u), vec2<u32>(max(arg_1.x, var_2.x), ~1u))));
    let var_3 = firstTrailingBit(vec4<u32>(1u, 19099u, countOneBits(0u), ~_wgslsmith_mult_u32(~arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(23351u, arg_1.x, var_1.e.x, 4294967295u), vec4<u32>(var_2.x, 41309u, 14938u, 0u)))));
    return Struct_1(select(~_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.e.x, arg_1.x), _wgslsmith_clamp_u32(40913u, arg_1.x, 5484u)), ~4294967295u, var_1.a), false, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.x, 3u)])))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = Struct_5(false, global0.a, Struct_4(arg_1.a.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(261f, -889f))), func_2(func_3(27091u, 4294967295u), reverseBits(vec4<u32>(arg_2, 77428u, 20386u, 1u)), !vec4<bool>(global0.e.x, false, false, global0.e.x)).d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.d.x, -820f)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 3u)] + 242f))), global1[_wgslsmith_index_u32(arg_2, 3u)], max((arg_0.x << (0u % 32u)) >> (arg_2 % 32u), -1i), vec2<u32>(1u, ~arg_1.a.a) >> (vec2<u32>(~73831u, ~arg_2) % vec2<u32>(32u))), func_2(1i, vec4<u32>(countOneBits(arg_2), arg_1.a.a, 0u, ~(~arg_1.a.a)), select(select(vec4<bool>(arg_1.a.c, global0.e.x, false, arg_1.a.c), select(vec4<bool>(true, global0.e.x, global0.e.x, true), vec4<bool>(false, arg_1.a.c, true, false), global0.e.x), vec4<bool>(true, false, true, true)), vec4<bool>(true, any(vec4<bool>(arg_1.a.b, false, true, global0.e.x)), any(vec3<bool>(true, true, global0.e.x)), !global0.e.x), select(select(vec4<bool>(true, false, false, arg_1.a.b), vec4<bool>(global0.e.x, global0.e.x, true, false), true), select(vec4<bool>(arg_1.a.c, global0.e.x, true, global0.e.x), vec4<bool>(true, true, false, false), vec4<bool>(arg_1.a.b, false, false, false)), true && arg_1.a.b))), _wgslsmith_f_op_f32(sign(arg_1.a.d.x)));
    global1 = array<f32, 3>();
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.c.b * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.c.b + _wgslsmith_f_op_vec3_f32(var_0.c.b - var_0.c.b)), var_0.c.b)))));
    var var_2 = select(!select(vec4<bool>(false, var_0.c.a, false, any(vec2<bool>(arg_1.a.c, arg_1.a.c))), !(!vec4<bool>(true, true, global0.e.x, arg_1.a.c)), vec4<bool>(!var_0.a, false, arg_1.a.d.x < 996f, true)), select(!vec4<bool>(!var_0.c.a, true, !var_0.a, var_0.d.c), vec4<bool>(global0.e.x, all(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, false, true, global0.e.x)), true), arg_1.a.b && true), !select(!select(vec4<bool>(false, true, true, global0.e.x), vec4<bool>(arg_1.a.b, false, global0.e.x, global0.e.x), vec4<bool>(global0.e.x, false, global0.e.x, arg_1.a.c)), !select(vec4<bool>(arg_1.a.b, false, true, false), vec4<bool>(true, true, true, arg_1.a.c), vec4<bool>(false, global0.e.x, true, global0.e.x)), !select(vec4<bool>(false, true, true, global0.e.x), vec4<bool>(false, false, true, global0.e.x), false)));
    let var_3 = func_2(~arg_0.x, reverseBits(~(~(~vec4<u32>(0u, arg_2, arg_2, 0u)))), vec4<bool>(!select(true, !var_2.x, true), !(!arg_1.a.c), true, true));
    return arg_0.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = Struct_3(~_wgslsmith_clamp_i32(~49790i, -1i, ~arg_0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-17096i), reverseBits(arg_0.x), -arg_0.x, global0.d), vec4<i32>(arg_0.x ^ -1611i, _wgslsmith_mult_i32(u_input.a, -32044i), ~0i, 20844i)), -global0.a), vec4<i32>(func_5(_wgslsmith_mult_vec2_i32(global0.c.zy, global0.c.xx), Struct_2(func_2(global0.c.x, vec4<u32>(75280u, 40623u, 26537u, 0u), vec4<bool>(global0.e.x, global0.e.x, global0.e.x, false))), 35253u), global0.d, -global0.d << (~(~4294967295u) % 32u), 1i), ~(~firstLeadingBit(-2147483647i)), !global0.e);
    let var_0 = global0.c.xww;
    global0 = Struct_3(-24241i, arg_0.x, max(-global0.c, firstTrailingBit(~vec4<i32>(-1i, global0.a, global0.b, -50054i)) << (firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 4663u), vec4<u32>(0u, 1u, 4294967295u, 35359u), vec4<u32>(0u, 0u, 0u, 4294967295u))) % vec4<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -(u_input.a >> (1u % 32u)), arg_0.x), 26083i), vec2<bool>(!(global0.e.x || global0.e.x), any(!(!vec4<bool>(false, true, global0.e.x, true)))));
    let var_1 = ~firstTrailingBit(vec4<u32>(~1u, _wgslsmith_add_u32(49073u, 31381u), _wgslsmith_div_u32(0u, 1u), ~47134u)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u));
    global1 = array<f32, 3>();
    return func_2(11520i, var_1, select(vec4<bool>(global0.e.x, false, true, !global0.e.x), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, global0.e.x, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(global0.e.x, global0.e.x, global0.e.x, global0.e.x), vec4<bool>(false, global0.e.x, false, false), vec4<bool>(true, false, global0.e.x, global0.e.x)), false), select(select(vec4<bool>(true, false, false, false), !vec4<bool>(true, global0.e.x, true, false), var_1.x <= var_1.x), vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)] == global1[_wgslsmith_index_u32(0u, 3u)], 404f <= global1[_wgslsmith_index_u32(var_1.x, 3u)], global0.e.x, global0.e.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(abs(~u_input.a) >> (~(~(~0u)) % 32u));
    var var_1 = Struct_2(func_1(select(vec2<i32>(1i, u_input.a ^ 15890i), vec2<i32>(7211i, -29683i) ^ select(vec2<i32>(7156i, global0.a), vec2<i32>(u_input.a, 1i), false), !select(vec2<bool>(false, global0.e.x), vec2<bool>(true, false), global0.e))));
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    var_1 = Struct_2(Struct_1(_wgslsmith_mult_u32(~(0u ^ var_1.a.a), firstLeadingBit(56754u >> (var_1.a.a % 32u))), true || var_1.a.b, global0.d == (firstTrailingBit(-2147483647i) & -u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(5779u, 3u)], 771f), vec2<f32>(var_1.a.d.x, global1[_wgslsmith_index_u32(32113u, 3u)])))))));
    let var_2 = !(!select(!global0.e, global0.e, vec2<bool>(true, var_1.a.c)));
    var var_3 = vec4<u32>(func_2((-u_input.a >> (19604u % 32u)) | u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(29310u, var_1.a.a, var_1.a.a, 23306u), abs(vec4<u32>(var_1.a.a, var_1.a.a, var_1.a.a, var_1.a.a))) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.a, 4294967295u, 17698u, 1u), vec4<u32>(0u, 1u, var_1.a.a, 4294967295u)) >> ((vec4<u32>(var_1.a.a, var_1.a.a, 62277u, 0u) | vec4<u32>(var_1.a.a, var_1.a.a, var_1.a.a, 0u)) % vec4<u32>(32u))), select(!(!vec4<bool>(true, var_2.x, false, global0.e.x)), select(vec4<bool>(true, false, false, global0.e.x), select(vec4<bool>(var_1.a.c, var_2.x, false, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(false, false, true, true)), !vec4<bool>(false, global0.e.x, false, var_2.x)), !(!vec4<bool>(var_2.x, true, var_1.a.b, true)))).a, ~9308u, ~max(var_1.a.a, _wgslsmith_mod_u32(78306u, 4294967295u)), 0u ^ (var_1.a.a ^ 1u));
    let var_4 = vec2<u32>(_wgslsmith_clamp_u32(var_3.x, max(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(var_3.wx, var_3.yy)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a, 72778u), ~var_3.zz)), 4294967295u), _wgslsmith_clamp_u32(380u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_3.x, 28015u, var_3.x, var_1.a.a)), vec4<u32>(abs(1u), _wgslsmith_add_u32(var_1.a.a, 0u), ~14788u, 1u)), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_4, global0.c.zy, var_1.a.d.x);
}

