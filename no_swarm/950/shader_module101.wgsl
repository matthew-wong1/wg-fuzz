struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30550u;

var<private> global1: Struct_4;

var<private> global2: array<f32, 23> = array<f32, 23>(298f, -993f, 1896f, 901f, 289f, -1398f, -1272f, -1469f, 450f, 2646f, -489f, 996f, -903f, -741f, 1184f, -920f, -789f, -150f, 641f, 867f, -1893f, 1658f, 269f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_2(Struct_1((_wgslsmith_add_vec4_i32(vec4<i32>(global1.b.a, 1i, global1.b.a, 9666i), vec4<i32>(78765i, 0i, 20450i, 1i)) >> (vec4<u32>(u_input.d.x, u_input.b, 51923u, u_input.d.x) % vec4<u32>(32u))) | (_wgslsmith_sub_vec4_i32(vec4<i32>(43803i, 5644i, global1.b.a, 1i), vec4<i32>(global1.b.a, global1.b.a, global1.b.a, -2147483647i)) ^ ~vec4<i32>(24004i, global1.b.a, -25540i, -83877i)), _wgslsmith_clamp_i32(~(-global1.b.a), 1i, ~(~37533i)), select(vec3<i32>(1i, -22369i >> (u_input.a % 32u), global1.b.a), vec3<i32>(global1.b.a, global1.b.a, global1.b.a) | ~vec3<i32>(global1.b.a, global1.b.a, global1.b.a), vec3<bool>(!global1.a, true, 4294967295u > u_input.c))), global1.a, Struct_1((vec4<i32>(-1i) * -vec4<i32>(1i, global1.b.a, global1.b.a, 2147483647i)) >> (vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), 0u, 4294967295u, min(u_input.a, 15156u)) % vec4<u32>(32u)), -firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(7924i, -2147483647i, -27473i), vec3<i32>(global1.b.a, 26465i, 2147483647i))), vec3<i32>(global1.b.a, ~global1.b.a, -global1.b.a)));
    let var_1 = Struct_2(var_0.c, all(vec2<bool>(any(vec3<bool>(global1.a, false, true)) & !var_0.b, global1.a)), var_0.c);
    var var_2 = Struct_1(vec4<i32>(2147483647i, ~_wgslsmith_add_i32(-1i, global1.b.a), var_0.a.a.x, abs(0i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-17342i, var_1.c.a.x, var_0.c.c.x, var_1.a.b), -vec4<i32>(global1.b.a, global1.b.a, var_1.a.c.x, var_0.a.a.x), ~var_1.a.a) | vec4<i32>(i32(-1i) * -2988i, var_0.a.c.x, _wgslsmith_div_i32(36247i, var_0.c.a.x), 4737i), vec4<i32>(69321i, abs(_wgslsmith_mult_i32(23129i, var_1.a.a.x)), var_1.a.a.x, _wgslsmith_div_i32(-var_0.a.c.x, 1i))), abs(max(vec3<i32>(_wgslsmith_mult_i32(45726i, global1.b.a), global1.b.a, 1i), vec3<i32>(global1.b.a, 6467i, max(2147483647i, var_1.a.a.x)))));
    return vec3<f32>(-536f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.yy), ~1u), abs(u_input.b), _wgslsmith_add_u32(u_input.a, ~u_input.c))), 23u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a, 23u)]))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0.zzw;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.ywy + arg_0.zxx)), vec3<f32>(-163f, var_0.x, arg_0.x), global1.a)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.zwy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.wyz, _wgslsmith_f_op_vec3_f32(func_3()), !vec3<bool>(false, false, global1.a))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-509f, global2[_wgslsmith_index_u32(u_input.a, 23u)], arg_0.x))))))));
    global1 = Struct_4(global1.a, global1.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-536f * global2[_wgslsmith_index_u32(36512u, 23u)]) - _wgslsmith_f_op_f32(395f * 999f))), arg_0.x)) * arg_0.x);
    var var_2 = Struct_2(Struct_1(arg_1.a, ~arg_1.c.x, _wgslsmith_add_vec3_i32(max(vec3<i32>(global1.b.a, global1.b.a, global1.b.a), arg_1.a.xxw) & abs(arg_1.a.yxy), _wgslsmith_mod_vec3_i32(arg_1.a.wyx, arg_1.c) | arg_1.a.wxx)), false, arg_1);
    return 8516u;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    let var_0 = vec2<bool>(true, !(!global1.a));
    var var_1 = true && var_0.x;
    let var_2 = (~vec3<u32>(func_2(vec4<f32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], 137f, global2[_wgslsmith_index_u32(arg_0, 23u)]), Struct_1(vec4<i32>(arg_1.x, 0i, global1.b.a, 29589i), -1i, vec3<i32>(0i, global1.b.a, 0i))), ~4294967295u, ~arg_0) & u_input.d) ^ select(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d | vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(arg_0, 4294967295u, arg_0)), countOneBits(select(u_input.d, vec3<u32>(u_input.a, 0u, 0u), global1.a))), u_input.d, global1.a);
    var var_3 = Struct_4(var_0.x, global1.b);
    var_1 = !all(select(!select(vec4<bool>(true, true, var_3.a, true), vec4<bool>(false, global1.a, global1.a, global1.a), vec4<bool>(global1.a, var_0.x, var_3.a, var_0.x)), select(select(vec4<bool>(false, true, var_3.a, global1.a), vec4<bool>(var_0.x, global1.a, false, true), vec4<bool>(false, var_0.x, global1.a, global1.a)), select(vec4<bool>(false, var_3.a, true, false), vec4<bool>(false, false, false, false), true), var_0.x), any(select(var_0, vec2<bool>(false, var_0.x), false))));
    return _wgslsmith_mult_i32(-1i, countOneBits(-1i));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: i32, arg_3: bool) -> f32 {
    global0 = 23233u;
    var var_0 = countOneBits(u_input.b);
    var var_1 = Struct_4(true, Struct_3(abs(arg_2)));
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.yy << ((arg_0.b.xx & (u_input.d.yy >> (u_input.d.zz % vec2<u32>(32u)))) % vec2<u32>(32u)), max(~vec2<u32>(17766u, 1147u), ~(~vec2<u32>(75079u, arg_0.b.x)))), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~arg_0.b.zx, _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, arg_0.b.x), ~vec2<u32>(arg_0.b.x, u_input.c))), vec2<u32>(countOneBits(select(u_input.a, 9526u, global1.a)), 0u)));
    var var_3 = arg_0;
    return global2[_wgslsmith_index_u32(~4294967295u, 23u)];
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: i32) -> i32 {
    let var_0 = any(!select(select(select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, true), vec2<bool>(true, false)), !vec2<bool>(global1.a, global1.a), vec2<bool>(true, true)), !(!vec2<bool>(global1.a, true)), global1.a || false));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(41861i, max(-2147483647i, -23594i), countOneBits(-2147483647i), 17782i), vec4<i32>(arg_1.a, ~(-2147483647i), _wgslsmith_mult_i32(arg_2, -2147483647i), -1i)), select(select(vec4<i32>(arg_2, arg_1.a, global1.b.a, arg_1.a), vec4<i32>(2147483647i, 3863i, arg_2, 1i), vec4<bool>(var_0, var_0, false, false)) >> (~vec4<u32>(u_input.d.x, 4294967295u, 18704u, 4294967295u) % vec4<u32>(32u)), -min(vec4<i32>(arg_1.a, 34097i, -13221i, arg_1.a), vec4<i32>(arg_1.a, arg_2, arg_2, global1.b.a)), select(select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, true, global1.a, true), false), vec4<bool>(var_0, var_0, global1.a, global1.a), all(vec3<bool>(global1.a, var_0, false)))), _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-29063i, arg_1.a, -14268i, 0i), vec4<i32>(arg_1.a, -51208i, 43166i, arg_1.a)), vec4<i32>(-arg_2, global1.b.a ^ -2147483647i, firstTrailingBit(0i), -20350i))), ~0i, (abs(~vec3<i32>(-2147483647i, -2147483647i, global1.b.a)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_1.a, arg_1.a), vec3<i32>(global1.b.a, 40577i, global1.b.a) ^ vec3<i32>(-58631i, arg_2, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(-6055i, -1i, -38066i), vec3<i32>(0i, arg_1.a, -30529i)))) >> (arg_1.b % vec3<u32>(32u)));
    global2 = array<f32, 23>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-arg_2, _wgslsmith_dot_vec3_i32(var_1.c, var_1.c), 73765i, i32(-1i) * -31346i), select(-vec4<i32>(var_1.a.x, 1i, var_1.b, arg_1.a), abs(vec4<i32>(29729i, 24480i, -29322i, var_1.c.x)), global1.a && var_0)), ~(-2147483647i), vec3<i32>(7127i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.c.xz, var_1.c.xy), select(var_1.c.xx, var_1.a.yz, vec2<bool>(global1.a, true))), global1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-244f))) < arg_0, Struct_1(var_1.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(768i, arg_2), -vec2<i32>(arg_2, 55866i)), var_1.a.zxx));
    let var_3 = var_2;
    return ~0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(!(-global1.b.a < global1.b.a), Struct_3(10415i));
    let var_0 = Struct_3(func_5(_wgslsmith_f_op_f32(func_4(Struct_5(func_1(17299u, vec2<i32>(global1.b.a, -2147483647i)), _wgslsmith_sub_vec3_u32(u_input.d, u_input.d), _wgslsmith_f_op_f32(min(1375f, global2[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], -1165f, global2[_wgslsmith_index_u32(u_input.c, 23u)], 587f), vec4<f32>(-2216f, global2[_wgslsmith_index_u32(12070u, 23u)], 281f, global2[_wgslsmith_index_u32(u_input.a, 23u)])))), -2147483647i, global1.b.a, !(686f < global2[_wgslsmith_index_u32(u_input.a, 23u)]))), Struct_5(~(-global1.b.a), select(vec3<u32>(49667u, u_input.d.x, 1u), vec3<u32>(40342u, u_input.d.x, 4294967295u), false) | (u_input.d & vec3<u32>(39108u, 4294967295u, u_input.a)), 961f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], -290f, 474f, -312f)))))), _wgslsmith_div_i32(min(func_1(u_input.c, vec2<i32>(45342i, global1.b.a)), -global1.b.a), -51344i)));
    let var_1 = vec2<i32>(-11258i, -38027i);
    var var_2 = Struct_1(max(-vec4<i32>(-1i, -1i, global1.b.a, 1i), vec4<i32>(~2147483647i, select(var_0.a, var_0.a, global1.a), -11018i, firstTrailingBit(var_1.x))) << (vec4<u32>(firstLeadingBit(25903u), abs(61541u), _wgslsmith_mod_u32(~u_input.b, u_input.c ^ u_input.c), 4294967295u) % vec4<u32>(32u)), -1i, reverseBits(select(~countOneBits(vec3<i32>(55i, 0i, 39352i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, 0i, 2147483647i), abs(vec3<i32>(-18027i, var_0.a, -37163i))), !(u_input.a > 9407u))));
    let var_3 = Struct_1(vec4<i32>(2679i, _wgslsmith_mult_i32(1i, -var_0.a ^ _wgslsmith_mod_i32(-22288i, var_2.a.x)), var_2.b, global1.b.a), -_wgslsmith_clamp_i32(var_0.a, abs(-9989i >> (u_input.a % 32u)), -20079i), vec3<i32>(global1.b.a, _wgslsmith_mult_i32(countOneBits(_wgslsmith_dot_vec3_i32(var_2.c, var_2.c)), ~(-1i >> (u_input.a % 32u))), 21679i));
    let x = u_input.a;
    s_output = StorageBuffer(~func_5(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(select(0u, 32542u, false), 23u)], _wgslsmith_f_op_f32(func_4(Struct_5(var_3.c.x, u_input.d, global2[_wgslsmith_index_u32(18822u, 23u)], vec4<f32>(1000f, global2[_wgslsmith_index_u32(1u, 23u)], 2048f, global2[_wgslsmith_index_u32(u_input.c, 23u)])), global1.b.a, -67390i, global1.a)), global1.a)), Struct_5(-var_3.a.x, ~vec3<u32>(25721u, u_input.a, 34318u), _wgslsmith_f_op_f32(step(1648f, 2446f)), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(u_input.b, 23u)], 358f)), var_0.a), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 23u)])), ~(-(~vec4<i32>(-2147483647i, var_1.x, 11479i, var_0.a))), 4294967295u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-703f, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(0u, 23u)], 1640f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-468f, global2[_wgslsmith_index_u32(u_input.a, 23u)]) + vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(25523u, 23u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(8727u, 23u)], global2[_wgslsmith_index_u32(28988u, 23u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(54704u, 23u)] - global2[_wgslsmith_index_u32(u_input.b, 23u)]))), !(!any(vec4<bool>(false, false, global1.a, global1.a))))));
}

