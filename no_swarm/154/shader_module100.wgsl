struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(590f, -868f), vec2<f32>(-1000f, -114f), vec2<f32>(-442f, -131f), vec2<f32>(458f, -1035f), vec2<f32>(-626f, 1000f), vec2<f32>(338f, -994f), vec2<f32>(-390f, 1258f), vec2<f32>(-135f, -424f), vec2<f32>(1000f, 718f), vec2<f32>(2797f, 738f), vec2<f32>(450f, -1000f), vec2<f32>(-1000f, 350f), vec2<f32>(-585f, -353f), vec2<f32>(599f, -1846f), vec2<f32>(1000f, 178f), vec2<f32>(-190f, 794f), vec2<f32>(474f, -226f), vec2<f32>(-135f, -477f), vec2<f32>(-296f, -672f), vec2<f32>(-285f, 215f), vec2<f32>(-1124f, 633f), vec2<f32>(-193f, -1527f), vec2<f32>(2121f, -2864f), vec2<f32>(2012f, 636f), vec2<f32>(2076f, -1028f), vec2<f32>(249f, -357f), vec2<f32>(-2435f, -342f));

var<private> global1: array<u32, 3>;

var<private> global2: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(37702u, 583u, 0u, 0u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 30766u, 27429u), vec4<u32>(8129u, 0u, 1u, 61147u), vec4<u32>(46841u, 29444u, 0u, 6568u), vec4<u32>(4294967295u, 28393u, 34107u, 1u), vec4<u32>(821u, 67551u, 1u, 1u), vec4<u32>(0u, 0u, 67136u, 4294967295u), vec4<u32>(1u, 0u, 1u, 69334u), vec4<u32>(1u, 4294967295u, 28088u, 1u), vec4<u32>(1u, 4294967295u, 5304u, 4294967295u));

var<private> global3: u32;

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    return arg_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: bool) -> vec4<bool> {
    let var_0 = reverseBits(vec3<u32>(~u_input.a, 2581u, arg_0.b) << (vec3<u32>(~1u, u_input.a, func_3(arg_0, vec2<u32>(arg_0.b, 4294967295u) >> (vec2<u32>(0u, arg_0.b) % vec2<u32>(32u)), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_3, true), arg_1), ~global1[_wgslsmith_index_u32(u_input.a, 3u)])) % vec3<u32>(32u)));
    var var_1 = Struct_1(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f + 1220f) + arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2017f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(901f)) - 1f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), 1f)))), arg_0.b, _wgslsmith_f_op_vec3_f32(-arg_2));
    let var_2 = _wgslsmith_f_op_f32(sign(1000f));
    var_1 = arg_0;
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~var_0), ~(_wgslsmith_div_vec3_u32(var_0, var_0 << (var_0 % vec3<u32>(32u))) >> (var_0 % vec3<u32>(32u)))), 13u)];
    return !vec4<bool>(true, true, !arg_1, arg_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = true != (select(true, true, any(func_2(arg_3, true, arg_3.c, true))) || (_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-22037i, -1i, 8239i, -1i), vec4<i32>(-1i, -1i, 2147483647i, 2147483647i)), 13977i << (arg_2.b % 32u)) > 2147483647i));
    global3 = arg_1.b;
    var var_1 = arg_3;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(var_1.a, arg_0)), ~(~77837u), var_1.c);
    let var_3 = 1u;
    return Struct_1(arg_1.a, arg_1.b ^ firstLeadingBit(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(~1u, 3u)])), vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1013f)), var_2.a.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = ~_wgslsmith_sub_u32(arg_0.x, _wgslsmith_clamp_u32(select(arg_2.b | 6511u, 1u, false), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.yyx, arg_0.yyy), ~arg_0.zyz), u_input.a));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1338f + -866f), arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.x)) - _wgslsmith_f_op_f32(sign(920f))))), global4[_wgslsmith_index_u32(arg_0.x, 13u)], global4[_wgslsmith_index_u32(reverseBits(arg_0.x), 13u)], global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(firstLeadingBit(66229u), 3u)], 3u)], 13u)]);
    let var_2 = vec3<bool>(!arg_1, true, !arg_1);
    return select(!(!select(vec4<bool>(false, arg_1, false, false), select(vec4<bool>(true, var_2.x, arg_1, var_2.x), vec4<bool>(false, var_2.x, arg_1, var_2.x), var_2.x), vec4<bool>(false, false, var_2.x, var_2.x))), !vec4<bool>(arg_1, !select(true, arg_1, true), !var_2.x == true, _wgslsmith_f_op_f32(f32(-1f) * -556f) != var_1.a.x), select(vec4<bool>(false, -1224f < var_1.c.x, var_2.x, true), !vec4<bool>(true, select(true, true, arg_1), any(var_2), true), arg_1 != false));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, ~(~(~arg_1.b)), func_3(arg_1, vec2<u32>(countOneBits(61789u), ~47761u), func_4(vec4<u32>(4294967295u, arg_1.b, 1u, global1[_wgslsmith_index_u32(arg_1.b, 3u)]), !arg_0, func_1(arg_1.a, global4[_wgslsmith_index_u32(19703u, 13u)], global4[_wgslsmith_index_u32(u_input.a, 13u)], Struct_1(vec4<f32>(271f, arg_1.c.x, 2907f, arg_1.a.x), 4294967295u, vec3<f32>(arg_1.c.x, arg_1.c.x, 817f)))).wxw, 1u), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 3u)])), abs(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a, u_input.a)))), 3u)]), ~global2[_wgslsmith_index_u32(u_input.a, 11u)]);
    var var_1 = global4[_wgslsmith_index_u32(((~(~var_0.x) | func_1(vec4<f32>(1647f, 1000f, arg_1.a.x, arg_1.a.x), func_1(vec4<f32>(arg_1.a.x, 622f, 909f, arg_1.c.x), Struct_1(arg_1.a, 1420u, vec3<f32>(arg_1.c.x, -192f, -560f)), Struct_1(vec4<f32>(-1001f, -1139f, arg_1.a.x, arg_1.c.x), 57393u, vec3<f32>(arg_1.a.x, -458f, arg_1.c.x)), arg_1), func_1(arg_1.a, Struct_1(vec4<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), 44893u, arg_1.a.zwz), arg_1, global4[_wgslsmith_index_u32(arg_1.b, 13u)]), Struct_1(arg_1.a, 28997u, vec3<f32>(arg_1.a.x, arg_1.c.x, arg_1.c.x))).b) | ~26577u) >> (48426u % 32u), 13u)];
    var var_2 = global2[_wgslsmith_index_u32(abs(0u), 11u)];
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_1.a.x), var_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-491f - _wgslsmith_f_op_f32(-var_1.c.x))))), 1229f);
    var var_4 = !vec3<bool>(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a * var_1.a), var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-110f, 165f, -1127f))), arg_0, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-655f, -534f, var_3.x), vec3<f32>(arg_1.c.x, 906f, var_1.a.x), vec3<bool>(true, arg_0, false))))), true).x, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1089f, var_3.x, arg_1.a.x, 1230f)), ~var_1.b, vec3<f32>(-1956f, arg_1.c.x, 1462f)), arg_0, vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x), arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -839f)), select(select(arg_0, arg_0, arg_0), select(arg_0, true, true), arg_0)).x, true);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1674f * -616f), _wgslsmith_f_op_f32(var_3.x - -1056f), 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.c.x, 349f) * vec3<f32>(-1052f, -507f, -699f)))), arg_0))));
}

fn func_6(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = vec4<u32>(6976u, abs(16755u), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(~global2[_wgslsmith_index_u32(u_input.a, 11u)]), firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(0u, 3u)], u_input.a, 3432u, 4294967295u) >> (vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(0u, 3u)], 0u) % vec4<u32>(32u)))), ~4294967295u >> (u_input.a % 32u));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -1518f), -1107f, arg_0.x, 215f)), func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, 1000f, arg_0.x, -392f), vec4<f32>(arg_0.x, 142f, 403f, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1593f, 215f, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x)))))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, arg_0.x, -157f, arg_0.x)), Struct_1(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -673f), u_input.a, arg_0), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(667f, arg_0.x, -189f, arg_0.x) * vec4<f32>(235f, arg_0.x, 175f, arg_0.x)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 13u)], Struct_1(vec4<f32>(-1000f, 1880f, arg_0.x, -496f), var_0.x, vec3<f32>(1405f, arg_0.x, arg_0.x)), func_1(vec4<f32>(arg_0.x, 430f, arg_0.x, arg_0.x), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 3u)], 13u)], Struct_1(vec4<f32>(-1000f, 1435f, -1000f, arg_0.x), var_0.x, vec3<f32>(-228f, arg_0.x, -581f)), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 13u)])), Struct_1(vec4<f32>(535f, arg_0.x, arg_0.x, 877f), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 3u)], 3u)], arg_0)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), 88795u, arg_0), func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-224f, arg_0.x, 1409f, arg_0.x), vec4<f32>(arg_0.x, 1691f, -546f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-881f, 324f, -1415f, arg_0.x)), vec4<bool>(true, true, true, true))), global4[_wgslsmith_index_u32(1u, 13u)], global4[_wgslsmith_index_u32(3527u, 13u)], func_1(vec4<f32>(arg_0.x, arg_0.x, -1487f, -870f), global4[_wgslsmith_index_u32(53891u, 13u)], Struct_1(vec4<f32>(1521f, arg_0.x, arg_0.x, 1372f), var_0.x, vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), Struct_1(vec4<f32>(arg_0.x, -116f, -1240f, 1228f), u_input.a, vec3<f32>(-690f, -471f, arg_0.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -652f, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, 734f, -1537f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, -387f, 393f, arg_0.x))))), _wgslsmith_dot_vec4_u32(min(select(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 3u)], 3u)], 11u)], vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a, 109964u, 1u), vec4<bool>(true, true, false, false)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)] ^ var_0.x, 11u)]), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 108364u, 13896u), vec4<u32>(u_input.a, var_0.x, var_0.x, var_0.x)), global2[_wgslsmith_index_u32(u_input.a, 11u)] << (global2[_wgslsmith_index_u32(4294967295u, 11u)] % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - vec3<f32>(-1291f, _wgslsmith_f_op_f32(sign(-513f)), arg_0.x))), global4[_wgslsmith_index_u32(65601u, 13u)]);
    let var_2 = min(vec3<i32>(-1i, countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 72528i, -2147483647i), vec4<i32>(-1i, 0i, 2147483647i, -36793i)), -1i)), -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(i32(-1i) * -2147483647i), ~(~19172i), 1i), -reverseBits(vec3<i32>(1i, 1i, 1i)), -vec3<i32>(1i, 1i, 1i)));
    let var_3 = countOneBits(var_2.x);
    let var_4 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(_wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(1000f, var_1.a.x, var_1.c.x, var_1.c.x)), Struct_1(vec4<f32>(-958f, 369f, var_1.c.x, arg_0.x), var_1.b, vec3<f32>(-229f, var_1.a.x, var_1.a.x)), Struct_1(var_1.a, 0u, vec3<f32>(var_1.a.x, var_1.a.x, arg_0.x)), Struct_1(vec4<f32>(-130f, arg_0.x, arg_0.x, 1152f), 45579u, vec3<f32>(var_1.a.x, -1196f, -340f))).b | u_input.a, reverseBits(global1[_wgslsmith_index_u32(var_1.b, 3u)])) << (~0u % 32u), 13u)];
    return StorageBuffer(-(~max(-vec4<i32>(-18564i, var_2.x, var_3, var_2.x), ~vec4<i32>(2147483647i, 10656i, var_2.x, 59408i))), 1u, -max(var_2, min(var_2 << (vec3<u32>(var_1.b, var_4.b, 24241u) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, var_3, 21324i))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, var_4.b)), var_0.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec3_f32(func_5(all(func_4(global2[_wgslsmith_index_u32(1u, 11u)], any(vec4<bool>(false, true, false, false)), func_1(vec4<f32>(1846f, -400f, 1000f, -626f), global4[_wgslsmith_index_u32(u_input.a, 13u)], Struct_1(vec4<f32>(-442f, 787f, -658f, 383f), 43313u, vec3<f32>(-795f, -1741f, 1325f)), global4[_wgslsmith_index_u32(u_input.a, 13u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, -163f, -739f, -760f) * vec4<f32>(-274f, 1540f, -1000f, 1234f))), ~firstLeadingBit(47138u), vec3<f32>(1f, 1f, 1f)))));
}

