struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(9294u, 24757u), vec2<u32>(1u, 33826u), vec2<u32>(4294967295u, 1u), vec2<u32>(53581u, 72835u), vec2<u32>(0u, 19551u), vec2<u32>(113u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 39363u), vec2<u32>(19576u, 15952u), vec2<u32>(58264u, 1u), vec2<u32>(13153u, 1u), vec2<u32>(26699u, 0u), vec2<u32>(0u, 1245u), vec2<u32>(3483u, 1u), vec2<u32>(97884u, 23728u), vec2<u32>(0u, 74627u), vec2<u32>(0u, 81570u), vec2<u32>(28150u, 1u), vec2<u32>(27310u, 97276u), vec2<u32>(46749u, 42862u));

var<private> global1: Struct_4 = Struct_4(vec4<i32>(10537i, 1i, 17828i, -1i), Struct_2(vec3<f32>(-1181f, 245f, -147f), Struct_1(0u, vec3<bool>(false, false, false), 608f, vec3<i32>(13956i, -68102i, 2147483647i)), Struct_1(1203u, vec3<bool>(false, false, true), -1000f, vec3<i32>(-9999i, -2614i, 0i))), 1416f, vec4<bool>(true, false, true, true), vec2<u32>(38991u, 1u));

var<private> global2: array<u32, 10>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>) -> u32 {
    global0 = array<vec2<u32>, 20>();
    let var_0 = vec2<u32>(global1.e.x, ~(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.wyy, vec3<u32>(18818u, global3.c.a, 4294967295u)), 10u)])) >> (((_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, global3.b.a), vec2<u32>(66857u, 47807u), min(global1.e, vec2<u32>(11082u, 63131u))) >> (((vec2<u32>(global2[_wgslsmith_index_u32(0u, 10u)], u_input.a) << (vec2<u32>(4294967295u, arg_0.x) % vec2<u32>(32u))) & ~global1.e) % vec2<u32>(32u))) ^ arg_0.xx) % vec2<u32>(32u));
    global1 = Struct_4(global1.a, global1.b, 748f, global1.d, select(~(~(global1.e >> (var_0 % vec2<u32>(32u)))), min(~arg_0.yw, global1.e), !select(global1.d.zz, global1.d.yy, !global1.b.b.b.xx)));
    let var_1 = true;
    return countOneBits(~(~(~24510u) | _wgslsmith_mult_u32(_wgslsmith_div_u32(global1.b.c.a, global3.b.a), ~72452u)));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global1.b.a.x);
    let var_1 = (41474u >> (func_3(~(vec4<u32>(10794u, global3.c.a, u_input.a, 4294967295u) ^ vec4<u32>(global3.c.a, global3.c.a, global3.c.a, 0u)), !select(global3.b.b.xz, vec2<bool>(global3.c.b.x, arg_0), arg_0)) % 32u)) & ~_wgslsmith_clamp_u32(1u & global1.b.b.a, 1u, arg_2.x);
    let var_2 = reverseBits(vec2<i32>(arg_1.x, -2147483647i));
    var var_3 = ~(~0u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-global1.c))))));
    return global1.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = vec3<bool>(arg_1.d.x, global3.b.b.x, select(any(!(!vec3<bool>(false, global3.b.b.x, arg_1.b.b.b.x))), true, true));
    global2 = array<u32, 10>();
    global1 = Struct_4(arg_1.a, func_2(!any(func_2(true, vec2<i32>(u_input.b, u_input.b), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(true, false, true)).b.b.xy), -(_wgslsmith_sub_vec2_i32(global3.c.d.xz, arg_1.a.yz) >> (select(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(9465u, 10u)]), global0[_wgslsmith_index_u32(34417u, 20u)], true) % vec2<u32>(32u))), ~(~vec3<u32>(global1.b.c.a, 76326u, global2[_wgslsmith_index_u32(u_input.a, 10u)])), vec3<bool>(any(global1.d.zxz) == true, !all(vec3<bool>(global1.d.x, var_0.x, true)), arg_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)), select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -980f) > global1.b.a.x, true, false, !global3.c.b.x), vec4<bool>(true, true, true, true), !arg_1.d), _wgslsmith_sub_vec2_u32(reverseBits(global1.e), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.b.a, 4294967295u), vec2<u32>(77534u, global2[_wgslsmith_index_u32(55344u, 10u)]), arg_1.e), global1.e >> (global1.e % vec2<u32>(32u)))) | ~vec2<u32>(global2[_wgslsmith_index_u32(0u, 10u)] & u_input.a, countOneBits(u_input.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(544f, global1.b.c.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.a.x, arg_0.x)), 2245f)));
    var var_2 = arg_1.e.x;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_1 {
    global2 = array<u32, 10>();
    let var_0 = func_2(any(arg_1.b.b.b) || true, ~abs(vec2<i32>(-1i) * -global1.b.c.d.yz), reverseBits(min(vec3<u32>(~u_input.a, 0u, ~27585u), ~(~vec3<u32>(u_input.a, global3.b.a, arg_2.b.b.a)))), vec3<bool>(true, any(!arg_0.b.xx), all(func_2(all(vec2<bool>(arg_0.b.x, true)), min(vec2<i32>(arg_0.d.x, -9114i), vec2<i32>(arg_3.x, 0i)), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a, 10u)], 10u)], 0u, global3.b.a), vec3<bool>(arg_1.d.x, arg_1.d.x, global3.b.b.x)).c.b))).b.d.x;
    var var_1 = ~(-_wgslsmith_sub_i32(global1.b.b.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-29375i, arg_2.b.c.d.x), arg_1.a.yz))) & abs(-1i);
    var var_2 = 8762i;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -713f);
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(global1.b.a, func_5(global3.b, func_4(arg_1, Struct_4(global1.a, func_2(true, vec2<i32>(1i, global3.c.d.x), vec3<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec3<bool>(global1.d.x, arg_0, arg_0)), _wgslsmith_f_op_f32(arg_1.x * arg_1.x), global1.d, ~global1.e)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-374f, global1.c, -121f, global1.c))) - _wgslsmith_f_op_vec4_f32(-arg_1)), func_4(vec4<f32>(-938f, arg_1.x, global1.b.b.c, 140f), func_4(vec4<f32>(global3.a.x, arg_1.x, global3.c.c, arg_1.x), Struct_4(global1.a, global1.b, global1.b.c.c, vec4<bool>(global1.b.c.b.x, true, false, false), vec2<u32>(global2[_wgslsmith_index_u32(global1.e.x, 10u)], global1.b.c.a))))), global1.a), global1.b.b);
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(select(-349f, _wgslsmith_div_f32(-684f, _wgslsmith_f_op_f32(arg_1.x - global1.c)), true)), global1.b.c.c, _wgslsmith_f_op_f32(-var_0.b.c), -393f), Struct_4(select(global1.a, vec4<i32>(-1i, -42962i, -17044i, var_0.b.d.x), vec4<bool>(func_5(var_0.c, Struct_4(global1.a, global1.b, 508f, global1.d, vec2<u32>(15833u, 1u)), Struct_4(global1.a, global1.b, 987f, vec4<bool>(global3.b.b.x, arg_0, true, false), vec2<u32>(global2[_wgslsmith_index_u32(var_0.b.a, 10u)], u_input.a)), vec4<i32>(u_input.b, global1.a.x, var_0.b.d.x, 0i)).b.x, true, false, arg_0)), global1.b, -122f, select(vec4<bool>(1205f != global3.c.c, true, any(var_0.c.b), true), !vec4<bool>(false, arg_0, false, global1.b.b.b.x), !select(vec4<bool>(false, var_0.b.b.x, arg_0, false), global1.d, vec4<bool>(var_0.c.b.x, var_0.b.b.x, arg_0, global3.b.b.x))), ~firstLeadingBit(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(78765u, 20u)], vec2<u32>(0u, global3.c.a))))).b.a;
    global0 = array<vec2<u32>, 20>();
    var_0 = func_2(global1.b.b.b.x, -global3.b.d.yy & global1.b.c.d.yx, firstLeadingBit(reverseBits(max(vec3<u32>(global1.b.c.a, 4294967295u, 6937u) >> (vec3<u32>(53270u, var_0.c.a, var_0.b.a) % vec3<u32>(32u)), ~vec3<u32>(var_0.c.a, global1.e.x, u_input.a)))), var_0.b.b);
    var var_2 = global3.b;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(all(!(!(!global1.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(291f, _wgslsmith_f_op_f32(global3.a.x - 313f), _wgslsmith_f_op_f32(trunc(global1.b.a.x)), _wgslsmith_f_op_f32(-870f * global1.b.b.c)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b.b.c, 770f, global1.c, global3.c.c))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b.b.c, -362f, 2364f, global1.b.c.c)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, 1173f, -462f, -728f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(333f, -396f, -1450f, 170f)))))));
    var var_0 = 2147483647i;
    global1 = Struct_4(global1.a, global1.b, _wgslsmith_f_op_f32(global3.c.c * 157f), select(global1.d, global1.d, select(vec4<bool>(true, select(true, global3.b.b.x, global1.b.b.b.x), global3.b.b.x, false), vec4<bool>(func_2(global3.c.b.x, vec2<i32>(-1i, 32189i), vec3<u32>(4294967295u, global3.c.a, 136390u), global3.b.b).c.b.x, false, select(true, true, global3.b.b.x), func_5(global3.c, Struct_4(global1.a, Struct_2(vec3<f32>(global1.b.a.x, global1.b.a.x, global1.c), global1.b.c, global1.b.b), -734f, vec4<bool>(global3.b.b.x, global3.b.b.x, false, global3.b.b.x), vec2<u32>(global1.b.c.a, 0u)), Struct_4(vec4<i32>(global3.b.d.x, global3.c.d.x, global1.a.x, -22101i), global1.b, global1.c, vec4<bool>(global3.b.b.x, true, true, global3.c.b.x), vec2<u32>(global1.e.x, global2[_wgslsmith_index_u32(global1.b.b.a, 10u)])), vec4<i32>(25010i, global3.b.d.x, global1.b.b.d.x, -2147483647i)).b.x), global1.d)), ~(~(~global1.e)) >> (global0[_wgslsmith_index_u32(62703u, 20u)] % vec2<u32>(32u)));
    var var_1 = abs(vec2<u32>(0u, select(countOneBits(~6067u), _wgslsmith_dot_vec2_u32(vec2<u32>(29404u, global3.c.a), vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)])) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(global3.b.a, 10u)], 18585u), vec3<u32>(global3.c.a, global2[_wgslsmith_index_u32(global1.e.x, 10u)], u_input.a)), func_1(any(global3.c.b.xy), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c, global3.b.c, global1.c, 1000f)))).b.b.x)));
    let var_2 = func_1(false, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(func_2(global1.d.x, reverseBits(global1.a.zx), ~vec3<u32>(0u, 1u, global2[_wgslsmith_index_u32(var_1.x, 10u)]), global3.c.b).c.c, _wgslsmith_f_op_f32(select(global3.b.c, _wgslsmith_f_op_f32(f32(-1f) * -788f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f) + _wgslsmith_f_op_f32(f32(-1f) * -740f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.c * global3.a.x) * -766f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, global1.c, _wgslsmith_f_op_f32(f32(-1f) * -1029f), global1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~(~func_5(Struct_1(0u, global3.c.b, -1205f, global1.b.b.d), Struct_4(vec4<i32>(-2147483647i, 30526i, var_2.b.d.x, 0i), Struct_2(global1.b.a, Struct_1(global3.c.a, global1.d.xyy, 214f, var_2.c.d), Struct_1(global3.c.a, global3.b.b, -665f, var_2.b.d)), -969f, global1.d, vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(25711u, 10u)])), Struct_4(global1.a, Struct_2(vec3<f32>(global1.c, 532f, -169f), var_2.b, Struct_1(global1.e.x, global1.b.c.b, global3.a.x, var_2.b.d)), var_2.c.c, global1.d, vec2<u32>(global1.e.x, 4294967295u)), vec4<i32>(-1997i, -1i, -2147483647i, global1.b.b.d.x)).d), _wgslsmith_mult_vec3_i32(reverseBits(var_2.c.d), -vec3<i32>(1i, global3.b.d.x, -88946i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(19012u, 1u, global1.e.x), vec3<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(29168u, 10u)])) % vec3<u32>(32u)))), vec4<i32>(15325i, u_input.b, 1i, global1.b.b.d.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c)))));
}

