struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<u32>(4294967295u, 1u, 50872u, 1u), -581f, vec3<i32>(22444i, 2147483647i, -50950i), vec3<f32>(859f, -1342f, -2361f)), Struct_1(vec4<u32>(0u, 6829u, 71126u, 0u), 720f, vec3<i32>(0i, 2147483647i, 2147483647i), vec3<f32>(1352f, 1988f, 587f)), Struct_1(vec4<u32>(59632u, 28622u, 18791u, 4294967295u), 411f, vec3<i32>(42271i, 57530i, 28352i), vec3<f32>(205f, -117f, 243f)), Struct_1(vec4<u32>(22104u, 7841u, 2093u, 16665u), -665f, vec3<i32>(i32(-2147483648), -46596i, 1i), vec3<f32>(-255f, 606f, -1540f)), Struct_1(vec4<u32>(4294967295u, 60357u, 63596u, 69382u), 565f, vec3<i32>(2147483647i, 0i, 1i), vec3<f32>(1000f, -556f, -1878f)), Struct_1(vec4<u32>(17753u, 10936u, 0u, 71992u), 1633f, vec3<i32>(-9603i, 2147483647i, 0i), vec3<f32>(-556f, -782f, -661f)), Struct_1(vec4<u32>(0u, 1u, 34081u, 4294967295u), 440f, vec3<i32>(8336i, -1i, 2147483647i), vec3<f32>(-441f, 229f, -1270f)));

var<private> global1: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec3<u32> {
    var var_0 = select(global1.b.c >> (global1.b.a.yzx % vec3<u32>(32u)), -firstTrailingBit(global1.b.c) << (_wgslsmith_add_vec3_u32(~(~arg_1.wxx), ~vec3<u32>(35501u, 39650u, 0u) >> ((arg_1.wyz | global1.b.a.wxw) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(!all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), true));
    return max(firstLeadingBit(vec3<u32>(4294967295u, global1.b.a.x, 1u)), vec3<u32>(_wgslsmith_clamp_u32(1u, ~(arg_1.x >> (u_input.b % 32u)), abs(arg_1.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(24597u, u_input.b), arg_1.yx)), 30353u, ~_wgslsmith_mult_u32(4294967295u >> (global1.b.a.x % 32u), ~4294967295u)));
}

fn func_2() -> vec3<i32> {
    let var_0 = global1.b.d;
    var var_1 = global0[_wgslsmith_index_u32(25451u, 7u)];
    var var_2 = abs(_wgslsmith_dot_vec3_u32(~global1.b.a.zxx, max(~func_3(u_input.d.x, vec4<u32>(var_1.a.x, 44872u, 4294967295u, global1.b.a.x)), _wgslsmith_sub_vec3_u32(var_1.a.wyw | var_1.a.ywx, global1.b.a.www ^ var_1.a.xxz))));
    var var_3 = Struct_3(global1.a, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(9045u, 13112u, global1.b.a.x, 0u), abs(vec4<u32>(30658u, 31320u, 8096u, global1.b.a.x)), var_1.a) | abs(vec4<u32>(var_1.a.x, 6320u, global1.a, global1.a)), global1.b.b, -vec3<i32>(u_input.c.x << (var_1.a.x % 32u), -1i, select(u_input.d.x, global1.c, false)), global1.b.d), _wgslsmith_dot_vec3_i32(-vec3<i32>(i32(-1i) * -10286i, global1.c, _wgslsmith_dot_vec2_i32(global1.b.c.zx, vec2<i32>(var_1.c.x, 1i))), global1.b.c));
    var var_4 = Struct_2(Struct_1(~(var_3.b.a << (countOneBits(vec4<u32>(1u, 13290u, var_1.a.x, u_input.b)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(1010f))))), global1.b.c, vec3<f32>(-1852f, _wgslsmith_f_op_f32(var_1.b - -468f), _wgslsmith_f_op_f32(min(var_1.b, var_3.b.d.x)))));
    return -global1.b.c;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = max(_wgslsmith_add_vec4_u32(countOneBits(~arg_0.b.a), vec4<u32>(u_input.b, arg_0.b.a.x, u_input.b, global1.a)), arg_0.b.a);
    global1 = arg_0;
    var var_1 = vec4<u32>(global1.b.a.x, select(firstTrailingBit(~16394u), _wgslsmith_mod_u32(533u, _wgslsmith_add_u32(u_input.b, 1u)), arg_1), ~19751u, abs(~_wgslsmith_dot_vec4_u32(arg_0.b.a, vec4<u32>(u_input.b, global1.b.a.x, var_0.x, 1174u)))) | ~(~(_wgslsmith_clamp_vec4_u32(arg_0.b.a, vec4<u32>(u_input.b, var_0.x, var_0.x, u_input.b), vec4<u32>(4294967295u, 73476u, 4294967295u, 92820u)) & vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u)));
    var var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(-arg_2.x) != -935f);
    var_2 = vec2<bool>(true, _wgslsmith_sub_i32(-u_input.d.x, global1.c) <= 38939i);
    return Struct_1(~(vec4<u32>(4294967295u, _wgslsmith_div_u32(var_1.x, 3937u), select(51502u, u_input.b, var_2.x), 4294967295u) >> (vec4<u32>(~51729u, 1u, 11093u, _wgslsmith_mult_u32(arg_0.a, 1u)) % vec4<u32>(32u))), 1000f, func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.d.x), _wgslsmith_f_op_f32(arg_2.x * 288f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -953f)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = array<Struct_1, 7>();
    var var_0 = select(select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(vec4<bool>((arg_1.a.x >> (u_input.b % 32u)) >= ~4294967295u, all(vec4<bool>(true, false, false, true)), !any(vec3<bool>(false, true, false)), true), !vec4<bool>(select(false, false, true), true, all(vec3<bool>(false, true, true)), true), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true)) || all(vec3<bool>(true, true, true))), all(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) + _wgslsmith_f_op_f32(-arg_2.a.b));
    global0 = array<Struct_1, 7>();
    var var_2 = global1.b;
    return _wgslsmith_div_u32(~0u | func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_2.c.x), var_2.c.yz), var_2.a).x, ~abs(var_2.a.x)) << (~select(17384u & (u_input.b << (u_input.b % 32u)), arg_2.a.a.x, any(var_0.wy) == all(vec2<bool>(true, var_0.x))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<u32>(4294967295u, u_input.b | ~_wgslsmith_sub_u32(u_input.b, 89176u), 1u, func_4(u_input.c, Struct_1(~vec4<u32>(u_input.b, 1u, 44178u, global1.b.a.x), _wgslsmith_f_op_f32(step(global1.b.d.x, global1.b.d.x)), ~vec3<i32>(-2147483647i, global1.c, u_input.d.x), _wgslsmith_f_op_vec3_f32(trunc(global1.b.d))), Struct_2(func_1(Struct_3(global1.a, Struct_1(vec4<u32>(global1.a, 4294967295u, global1.a, 11872u), global1.b.d.x, vec3<i32>(40654i, u_input.d.x, -13418i), vec3<f32>(global1.b.d.x, global1.b.d.x, 886f)), global1.c), true, global1.b.d.zx)))), ~global1.b.a, !(firstLeadingBit(-global1.c) <= _wgslsmith_mod_i32(global1.c, 1i & u_input.a)));
    let var_1 = global1.b;
    let var_2 = var_0.x & _wgslsmith_dot_vec3_u32(var_0.zxw, vec3<u32>(func_4(vec2<i32>(-24356i, 1i) & vec2<i32>(var_1.c.x, -24640i), global0[_wgslsmith_index_u32(47924u, 7u)], Struct_2(global1.b)), var_0.x, ~select(32557u, 0u, false)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(1659f - _wgslsmith_f_op_f32(-881f * global1.b.d.x)), _wgslsmith_f_op_f32(step(213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1577f)) - global1.b.d.x) - -2455f))), -652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_1(Struct_3(1u, global1.b, 1i), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1035f, 1000f), var_1.d.zy, vec2<bool>(false, false)))).d.x))));
    let var_4 = Struct_3(func_4(vec2<i32>(_wgslsmith_mod_i32(abs(var_1.c.x), var_1.c.x), -2147483647i), func_1(Struct_3(_wgslsmith_mult_u32(1u, var_0.x), Struct_1(vec4<u32>(var_2, 4294967295u, 122843u, 7026u), -365f, global1.b.c, vec3<f32>(369f, 270f, global1.b.b)), u_input.c.x), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.zz * global1.b.d.zy) - global1.b.d.yx)), Struct_2(global0[_wgslsmith_index_u32(0u, 7u)])), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_1.a.x, var_2, ~1u), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.a, 4294967295u, 4294967295u, 51603u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.a.x, var_0.x, var_0.x, global1.b.a.x), vec4<u32>(37520u, 0u, 0u, var_1.a.x)))), global1.b.d.x, vec3<i32>(firstLeadingBit(47407i), -1i, min(~var_1.c.x, 31931i & u_input.c.x)), _wgslsmith_f_op_vec3_f32(-func_1(Struct_3(var_1.a.x, Struct_1(var_1.a, global1.b.b, var_1.c, vec3<f32>(global1.b.b, 3042f, -609f)), 19909i), all(vec3<bool>(true, false, false)), vec2<f32>(1263f, global1.b.b)).d)), min(_wgslsmith_mod_i32(_wgslsmith_add_i32(-var_1.c.x, abs(global1.c)), func_2().x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), vec3<i32>(-1i, 2147483647i, u_input.a)), ~u_input.d), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -9813i), var_1.c))));
    var var_5 = global0[_wgslsmith_index_u32(~var_1.a.x, 7u)];
    var var_6 = any(vec2<bool>(true, all(vec4<bool>(false, false, false, false))));
    global1 = Struct_3(~_wgslsmith_clamp_u32(4136u, 58889u, 0u), func_1(var_4, !select(false, all(vec3<bool>(true, false, false)), true), global1.b.d.zz), -(21675i >> (0u % 32u)));
    var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.d.xx, var_1.d, ~(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.x, 3465u, var_1.a.x), global1.b.a.wzz, var_1.a.xzw), func_1(Struct_3(88883u, var_4.b, global1.b.c.x), false, var_4.b.d.xy).a.xwz) ^ vec3<u32>(~0u, var_5.a.x << (7800u % 32u), var_5.a.x)), vec3<i32>(var_5.c.x, min(var_4.b.c.x, var_1.c.x), global1.b.c.x), 0i);
}

