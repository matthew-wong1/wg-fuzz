struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<u32>(23731u, 74490u), vec3<i32>(-27298i, 1i, -26455i), -6533i), Struct_1(vec2<u32>(4616u, 59216u), vec3<i32>(4307i, 2147483647i, 2147483647i), -46453i)), Struct_2(Struct_1(vec2<u32>(142238u, 1u), vec3<i32>(41555i, -16451i, 1i), -1i), Struct_1(vec2<u32>(1u, 21431u), vec3<i32>(1i, i32(-2147483648), -1i), -1815i)), Struct_2(Struct_1(vec2<u32>(34775u, 1u), vec3<i32>(-8113i, 1i, -44959i), -13861i), Struct_1(vec2<u32>(43883u, 1u), vec3<i32>(-39460i, -1i, -2458i), -57118i)), Struct_2(Struct_1(vec2<u32>(14498u, 0u), vec3<i32>(0i, 13397i, -1i), 0i), Struct_1(vec2<u32>(4294967295u, 38283u), vec3<i32>(87036i, 2147483647i, -44220i), 1i)), Struct_2(Struct_1(vec2<u32>(60730u, 56384u), vec3<i32>(0i, 0i, -7066i), 1i), Struct_1(vec2<u32>(4294967295u, 1u), vec3<i32>(2700i, i32(-2147483648), 4543i), -1i)), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec3<i32>(17855i, i32(-2147483648), -1i), -30269i), Struct_1(vec2<u32>(17451u, 34944u), vec3<i32>(-7469i, 2147483647i, i32(-2147483648)), i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(1u, 3579u), vec3<i32>(3754i, -42828i, -1i), i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<i32>(2147483647i, 18152i, -20981i), 46718i)));

var<private> global1: array<bool, 17> = array<bool, 17>(false, true, true, false, true, true, true, false, false, true, true, false, true, false, false, false, true);

var<private> global2: array<bool, 7> = array<bool, 7>(false, false, false, true, false, false, false);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 87240u), vec3<i32>(3112i, 0i, -1i), 8560i), Struct_1(vec2<u32>(50576u, 0u), vec3<i32>(12395i, 5384i, -1i), 2147483647i));

var<private> global4: array<u32, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32) -> bool {
    let var_0 = ~_wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(2337u, 38051u, 4294967295u), vec3<u32>(15032u, global3.b.a.x, global4[_wgslsmith_index_u32(global3.b.a.x, 30u)]), arg_0.xzz), _wgslsmith_sub_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 16956u, 0u), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.a.a.x, 30u)], 30u)], 4265u, 4294967295u)), vec3<u32>(30302u, 0u, 8766u))), vec3<u32>(~36374u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(12646u, 1u, 4294967295u, global3.a.a.x), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global3.b.a.x, 30u)], 2352u, 320u)), ~vec4<u32>(0u, 1u, global4[_wgslsmith_index_u32(0u, 30u)], global4[_wgslsmith_index_u32(global3.b.a.x, 30u)])), ~global3.a.a.x & 114603u));
    global0 = array<Struct_2, 7>();
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = global3.b;
    return !any(select(!arg_0.xx, arg_0.yw, true));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global1 = array<bool, 17>();
    var var_0 = Struct_3(-u_input.a);
    let var_1 = Struct_3(firstLeadingBit(vec4<i32>(2147483647i, -62786i, firstTrailingBit(global3.b.c | u_input.a.x), _wgslsmith_mult_i32(0i, global3.b.c))));
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(87206u, ~0u, arg_0.x), vec3<u32>(12108u, 1u, firstTrailingBit(global3.b.a.x))), select(~reverseBits(arg_0.zxw), arg_0.yxx, func_3(!vec4<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15197u, 30u)], 30u)], 7u)], false, true), Struct_3(vec4<i32>(-2147483647i, 0i, global3.b.b.x, 2147483647i)), _wgslsmith_f_op_f32(1594f - -450f)))), vec3<u32>(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], 1u, global4[_wgslsmith_index_u32(global3.a.a.x, 30u)]), vec3<u32>(arg_0.x, arg_0.x, 4294967295u))), _wgslsmith_div_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(0u, 30u)] ^ global4[_wgslsmith_index_u32(4294967295u, 30u)], ~global3.a.a.x), 6314u), _wgslsmith_div_u32(countOneBits(_wgslsmith_clamp_u32(4905u, arg_0.x, 72944u)), ~_wgslsmith_div_u32(global3.b.a.x, global3.b.a.x))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-295f, 865f, 1511f, 870f) - vec4<f32>(-123f, 387f, -1728f, 940f)) - vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(361f * 110f), _wgslsmith_f_op_f32(trunc(-267f)), -577f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(487f, 2269f))), _wgslsmith_f_op_f32(sign(-1011f)), _wgslsmith_div_f32(-589f, _wgslsmith_f_op_f32(floor(-515f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-265f, -1355f) * 1000f))));
    return all(select(select(!(!vec3<bool>(global1[_wgslsmith_index_u32(7920u, 17u)], global2[_wgslsmith_index_u32(arg_0.x, 7u)], false)), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(var_2.x, 17u)], global2[_wgslsmith_index_u32(45230u, 7u)])), true), !vec3<bool>(true, true, !global2[_wgslsmith_index_u32(34714u, 7u)]), vec3<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(~arg_0.x), 7u)], any(!vec4<bool>(global2[_wgslsmith_index_u32(25938u, 7u)], global1[_wgslsmith_index_u32(var_2.x, 17u)], false, true)), global2[_wgslsmith_index_u32(27466u, 7u)])));
}

fn func_4(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = countOneBits(-vec4<i32>(0i, -u_input.a.x, ~2147483647i << (abs(global3.a.a.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 89553i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, -15943i) << (vec3<u32>(9893u, 1u, 1u) % vec3<u32>(32u)))));
    var var_2 = global3.a;
    global4 = array<u32, 30>();
    var var_3 = ~select(select(abs(min(vec3<i32>(-17787i, global3.a.c, 4663i), global3.b.b)), firstTrailingBit(var_2.b) | ~vec3<i32>(u_input.a.x, 19969i, -2147483647i), select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_2.a.x, 17u)]), select(vec3<bool>(true, arg_0.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25322u, 30u)], 30u)], 17u)]), vec3<bool>(true, false, arg_0.x), arg_0.x), arg_0.x && global2[_wgslsmith_index_u32(global3.a.a.x, 7u)])), global3.a.b, true);
    return Struct_2(Struct_1(vec2<u32>(~abs(1u), ~(~17293u)), var_1.www, -72967i), Struct_1(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 30u)], 30u)], (0u >> (var_2.a.x % 32u)) >> (var_2.a.x % 32u)), -_wgslsmith_clamp_vec3_i32(var_1.wzx, vec3<i32>(-25616i, u_input.a.x, 0i), var_2.b << (vec3<u32>(global3.a.a.x, 57229u, global3.b.a.x) % vec3<u32>(32u))), 3321i));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> i32 {
    global4 = array<u32, 30>();
    let var_0 = Struct_3(arg_1.a);
    global3 = func_4(vec2<bool>(func_2(~vec4<u32>(67873u, global4[_wgslsmith_index_u32(51980u, 30u)], 13627u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57098u, 30u)], 30u)])) | any(vec2<bool>(false, true)), true));
    let var_1 = Struct_3(arg_1.a);
    var var_2 = abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0, var_1.a.x, 0i), vec3<i32>(arg_0, reverseBits(-1i), var_0.a.x)) >> (~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41368u, global4[_wgslsmith_index_u32(0u, 30u)]), global3.a.a), ~16900u, 0u) % vec3<u32>(32u)));
    return _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(~(~(-1i)), 1i)) | _wgslsmith_div_i32(var_1.a.x, 47696i & -arg_1.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(639f, -392f), vec2<f32>(-1003f, 1453f), vec2<bool>(global1[_wgslsmith_index_u32(global3.a.a.x, 17u)], arg_1.x))), vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(317f, 1670f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1105f, -984f))) * vec2<f32>(-116f, -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(570f + -1116f), _wgslsmith_f_op_f32(-227f * 407f))))));
    let var_1 = !select(vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.a.a.x, 30u)], 17u)], true, arg_1.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(23335u, 4294967295u, arg_0.a.x, global4[_wgslsmith_index_u32(59513u, 30u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(69648u, 30u)], 0u, 0u), vec4<u32>(global4[_wgslsmith_index_u32(arg_0.a.x, 30u)], arg_0.a.x, 7439u, global3.a.a.x))), 17u)], global1[_wgslsmith_index_u32(~global3.a.a.x, 17u)]), select(select(select(arg_1, vec3<bool>(false, false, false), true), arg_1, true), arg_1, true), select(vec3<bool>(select(global2[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 30u)], 17u)], global2[_wgslsmith_index_u32(0u, 7u)]), arg_1.x, !global1[_wgslsmith_index_u32(arg_0.a.x, 17u)]), select(select(vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 30u)], 17u)], global1[_wgslsmith_index_u32(73365u, 17u)]), vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20783u, 30u)], 7u)]), arg_1), select(vec3<bool>(arg_2, global2[_wgslsmith_index_u32(48694u, 7u)], true), arg_1, vec3<bool>(arg_2, global1[_wgslsmith_index_u32(0u, 17u)], arg_2)), false), !vec3<bool>(false, arg_1.x, arg_2)));
    var var_2 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(2109f)), 1066f);
    global3 = func_4(!select(var_1.xy, !var_1.yy, arg_1.zx));
    global0 = array<Struct_2, 7>();
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-459f, var_0.x)), vec3<f32>(413f, _wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(f32(-1f) * -183f)))), vec3<f32>(-563f, 630f, -1051f)), vec3<f32>(_wgslsmith_f_op_f32(1816f * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<i32>(~1i >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 30u)], 30u)] % 32u), global3.a.c, max(-global3.a.b.x | u_input.a.x, reverseBits(global3.a.b.x) & 946i), u_input.a.x));
    let x = u_input.a;
    s_output = func_5(Struct_1(vec2<u32>(4294967295u, countOneBits(global3.b.a.x)), vec3<i32>(2147483647i, func_1(u_input.a.x, var_0, vec2<f32>(-481f, 1610f)) << (25332u % 32u), global3.a.c), 4498i), !vec3<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)])), true, all(select(vec4<bool>(global1[_wgslsmith_index_u32(35284u, 17u)], false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], false, global2[_wgslsmith_index_u32(96665u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 7u)], true, global2[_wgslsmith_index_u32(1u, 7u)], true)))), false, 26743i << (1u % 32u));
}

