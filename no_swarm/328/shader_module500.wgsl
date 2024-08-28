struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -579f;

var<private> global1: vec2<i32>;

var<private> global2: vec2<f32> = vec2<f32>(-531f, -724f);

var<private> global3: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec3<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2346f, 537f, arg_0)) + -1176f)))));
    let var_0 = vec2<u32>(reverseBits(_wgslsmith_div_u32(firstTrailingBit(~arg_3.x), select(select(88396u, u_input.c.x, false), _wgslsmith_mod_u32(7212u, 11663u), 34760i != global1.x))), arg_3.x);
    let var_1 = arg_2;
    let var_2 = 1i;
    let var_3 = !(((global3.x | var_2) != ((0i ^ global3.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-36377i, 0i), vec2<i32>(1i, u_input.a)))) & true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global2.x, global2.x)))) - global2.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(true, vec3<bool>(false, true, true), Struct_4(vec4<bool>(true, true, true, false)), vec3<u32>(u_input.c.x, u_input.c.x, 1u)))))))));
    var var_1 = Struct_1(arg_1.xxx, _wgslsmith_f_op_vec2_f32(-var_0.xy), select(_wgslsmith_clamp_i32(25294i, ~arg_1.x, _wgslsmith_clamp_i32(global3.x, arg_0.x, arg_1.x)) << (u_input.c.x % 32u), 0i, 0i > min(1i, 18540i >> (u_input.c.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    let var_2 = vec3<i32>(-77731i, arg_1.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c.x & u_input.c.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(58756u, 0u, u_input.c.x), vec3<u32>(8689u, u_input.c.x, 0u))) % 32u), 6162i);
    let var_3 = 1132f;
    var var_4 = Struct_4(!vec4<bool>(false, false, false, all(vec2<bool>(true, true))));
    return Struct_4(!(!var_4.a));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-2015f + global2.x);
    global3 = select(countOneBits(vec4<i32>(_wgslsmith_mod_i32(-61864i, u_input.a), 1i, ~(~u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.b), ~vec2<i32>(arg_1.x, 0i)))), firstLeadingBit(min(vec4<i32>(-global1.x, arg_1.x, _wgslsmith_sub_i32(global1.x, -2147483647i), _wgslsmith_clamp_i32(-22011i, 17647i, arg_1.x)), firstLeadingBit(vec4<i32>(19406i, 33789i, 34088i, global1.x)) | vec4<i32>(global1.x, -3594i, global3.x, arg_1.x))), !arg_0.a);
    var var_0 = _wgslsmith_f_op_f32(-global2.x);
    var var_1 = Struct_2(Struct_1(firstTrailingBit(global3.yzy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1046f, 807f), vec2<f32>(-839f, global2.x)))), ~global1.x, _wgslsmith_f_op_f32(-1549f * -803f)), Struct_1(_wgslsmith_add_vec3_i32(min(global3.xzx, firstTrailingBit(global3.xyz)), -global3.yzx ^ max(vec3<i32>(-13833i, arg_1.x, global3.x), global3.xwz)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-685f - global2.x) * -438f), global2.x), abs(-firstLeadingBit(9432i)), _wgslsmith_f_op_f32(abs(-757f))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(1i), ~firstLeadingBit(40644i)), i32(-1i) * -710i));
    var var_2 = firstLeadingBit(firstLeadingBit(reverseBits(vec4<u32>(u_input.c.x, ~4294967295u, min(4294967295u, u_input.c.x), 1u))));
    return Struct_3(Struct_2(var_1.a, Struct_1(_wgslsmith_mod_vec3_i32(-var_1.b.a, global3.yyy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1187f, -1055f)), var_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x))), _wgslsmith_dot_vec3_i32(~global3.xwx, global3.xzz)), firstLeadingBit(max(vec4<i32>(-global3.x, global1.x | global3.x, _wgslsmith_mod_i32(-2147483647i, var_1.c), _wgslsmith_mult_i32(global3.x, global3.x)), max(abs(vec4<i32>(var_1.a.c, arg_1.x, u_input.a, global1.x)), abs(vec4<i32>(-19927i, 7035i, global1.x, 1i))))));
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    let var_0 = func_4(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, global3.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_0.x), ~global3.wz)), reverseBits(vec4<i32>(2147483647i, 2147483647i, global1.x, -11025i) | vec4<i32>(global3.x, -1i, 26499i, -25355i)) & vec4<i32>(_wgslsmith_clamp_i32(4106i, global3.x, 2147483647i), global3.x, _wgslsmith_dot_vec2_i32(global3.zx, arg_0.yx), -12928i)), select(_wgslsmith_mod_vec2_i32(-vec2<i32>(-10765i, global3.x) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 8209u), vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), global3.xx), arg_0.xz, any(vec2<bool>(any(vec2<bool>(false, true)), true))));
    let var_1 = func_2(vec2<i32>(34577i, var_0.b.x), var_0.b).a.zzz;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec2<i32>(-56018i, var_0.b.x), var_0.b), firstTrailingBit(arg_0.yy)).a.a.d - -853f) - 1345f)));
    var var_2 = -410f;
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.d, 262f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.b.b) * _wgslsmith_f_op_vec2_f32(var_0.a.a.b * var_0.a.a.b))))));
    return min(i32(-1i) * -14137i, 24646i);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_2(func_4(func_2(arg_2.b.zx, arg_2.b >> (vec4<u32>(u_input.c.x, u_input.c.x, 57420u, 98715u) % vec4<u32>(32u))), -vec2<i32>(global1.x, arg_2.a.a.a.x)).a.a, arg_2.a.a, global1.x);
    let var_1 = func_2(~var_0.b.a.zx << (u_input.c % vec2<u32>(32u)), arg_2.b);
    let var_2 = arg_0.xwy;
    var var_3 = func_4(var_1, global3.zw | vec2<i32>(_wgslsmith_sub_i32(-15483i << (u_input.c.x % 32u), 2147483647i), _wgslsmith_div_i32(-56231i, arg_2.b.x) ^ 1i));
    var var_4 = u_input.c.x;
    return func_2(max(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -var_3.a.a.c), _wgslsmith_div_vec2_i32(abs(var_3.b.zz), var_3.b.yx)), arg_2.a.b.a.xy), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -arg_2.b, arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<bool>(true, true, !(-634f >= global2.x), _wgslsmith_add_i32(func_1(global3.zzx), global3.x) > abs(-1441i)), true, Struct_3(Struct_2(Struct_1(-global3.zxz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, 283f)), global3.x << (3392u % 32u), global2.x), Struct_1(abs(global3.ywz), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, -938f), vec2<f32>(-137f, global2.x))), _wgslsmith_clamp_i32(2147483647i, 1i, global3.x), -737f), ~1i), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, global3.x, -52988i, global3.x), firstLeadingBit(vec4<i32>(global3.x, 1i, -12131i, 18776i))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(step(global2.x, 1055f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_4(vec4<bool>(true, true, var_0.a.x, true)), global3.yy).a.a.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, global2.x))) - vec2<f32>(global2.x, global2.x))));
    global0 = _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) * global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), var_0.a.x)))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(501f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f))), global2.x);
    var var_1 = func_4(Struct_4(vec4<bool>(func_5(!vec4<bool>(true, var_0.a.x, true, var_0.a.x), true, func_4(Struct_4(vec4<bool>(true, var_0.a.x, true, var_0.a.x)), vec2<i32>(global3.x, global3.x))).a.x, !(!var_0.a.x), var_0.a.x, select(func_2(global3.zw, vec4<i32>(-2147483647i, 2147483647i, 39595i, 1i)).a.x, true, func_5(var_0.a, false, Struct_3(Struct_2(Struct_1(global3.xwz, vec2<f32>(global2.x, global2.x), 56738i, global2.x), Struct_1(global3.wzz, vec2<f32>(global2.x, -1000f), global1.x, -2161f), 0i), vec4<i32>(global1.x, global1.x, 5864i, 0i))).a.x))), countOneBits(abs((vec2<i32>(global3.x, global3.x) | global3.xx) << ((u_input.c | vec2<u32>(u_input.c.x, 19822u)) % vec2<u32>(32u))))).a.b;
    var var_2 = func_4(var_0, _wgslsmith_mult_vec2_i32(global3.yw, ~_wgslsmith_mult_vec2_i32(vec2<i32>(global3.x, -16113i) >> (u_input.c % vec2<u32>(32u)), vec2<i32>(2147483647i, -1i))));
    var_2 = func_4(Struct_4(vec4<bool>(firstTrailingBit(u_input.c.x) != u_input.c.x, func_5(vec4<bool>(true, var_0.a.x, false, true), true, Struct_3(Struct_2(Struct_1(vec3<i32>(-3618i, -1i, 76470i), vec2<f32>(-1295f, global2.x), u_input.b, 1318f), Struct_1(vec3<i32>(0i, 0i, 7267i), vec2<f32>(-1000f, global2.x), 3115i, -451f), var_2.b.x), vec4<i32>(var_2.a.a.c, global3.x, 1i, var_2.b.x))).a.x | true, !var_0.a.x, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -var_2.b.xz, -(~vec2<i32>(25738i, -1617i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.c.x, _wgslsmith_mod_u32(~(~u_input.c.x), _wgslsmith_mult_u32(~u_input.c.x, reverseBits(u_input.c.x)))));
}

