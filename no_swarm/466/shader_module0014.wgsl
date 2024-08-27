struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, true, true, false, true, false, true, true, true, true, true, false, true, false, true, true, false, false, true, true, false, false, false, true, false, true, false);

var<private> global1: vec2<f32> = vec2<f32>(-1505f, -1092f);

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(68371u, vec2<bool>(true, true), vec2<f32>(-371f, -574f), vec4<i32>(-11224i, 12409i, 1i, 66606i), vec3<i32>(4516i, -3577i, 0i)), Struct_1(4294967295u, vec2<bool>(false, true), vec2<f32>(-862f, -199f), vec4<i32>(1i, 0i, 46684i, 5139i), vec3<i32>(-54918i, 2147483647i, -7619i)), Struct_1(4294967295u, vec2<bool>(true, true), vec2<f32>(836f, 1000f), vec4<i32>(0i, -22531i, 1i, -32448i), vec3<i32>(1i, 2147483647i, -52967i))), Struct_2(Struct_1(78675u, vec2<bool>(true, false), vec2<f32>(-1000f, -272f), vec4<i32>(-11750i, -12556i, -9147i, 0i), vec3<i32>(21424i, -4258i, -16566i)), Struct_1(4294967295u, vec2<bool>(true, false), vec2<f32>(465f, 993f), vec4<i32>(0i, 33719i, 48506i, 0i), vec3<i32>(1i, 0i, -1i)), Struct_1(26834u, vec2<bool>(true, true), vec2<f32>(-357f, -669f), vec4<i32>(12080i, 2147483647i, 35456i, i32(-2147483648)), vec3<i32>(-1i, -11115i, -1786i))), Struct_2(Struct_1(0u, vec2<bool>(false, false), vec2<f32>(1000f, -758f), vec4<i32>(26128i, i32(-2147483648), -84572i, -38692i), vec3<i32>(38023i, -12399i, 1i)), Struct_1(27357u, vec2<bool>(true, true), vec2<f32>(2261f, 694f), vec4<i32>(2147483647i, -17011i, 2147483647i, i32(-2147483648)), vec3<i32>(-19487i, 2147483647i, i32(-2147483648))), Struct_1(4294967295u, vec2<bool>(true, true), vec2<f32>(396f, 1018f), vec4<i32>(36138i, 15366i, i32(-2147483648), -79108i), vec3<i32>(6662i, 2147483647i, 44237i))), Struct_2(Struct_1(7663u, vec2<bool>(false, true), vec2<f32>(793f, -386f), vec4<i32>(0i, i32(-2147483648), 1i, 42064i), vec3<i32>(1i, -58684i, -37310i)), Struct_1(1u, vec2<bool>(false, false), vec2<f32>(-2118f, -1397f), vec4<i32>(i32(-2147483648), 1i, -25683i, -29234i), vec3<i32>(2147483647i, 0i, 0i)), Struct_1(79700u, vec2<bool>(false, false), vec2<f32>(1000f, 448f), vec4<i32>(25669i, 2848i, i32(-2147483648), 23549i), vec3<i32>(2147483647i, -40440i, i32(-2147483648)))), Struct_2(Struct_1(4294967295u, vec2<bool>(true, false), vec2<f32>(-932f, 1122f), vec4<i32>(-1i, -55237i, 0i, -36241i), vec3<i32>(-1i, 1i, 33622i)), Struct_1(1u, vec2<bool>(true, true), vec2<f32>(290f, -205f), vec4<i32>(2147483647i, -9357i, -25251i, 0i), vec3<i32>(i32(-2147483648), 0i, 21881i)), Struct_1(4294967295u, vec2<bool>(true, false), vec2<f32>(-391f, -249f), vec4<i32>(43999i, -23762i, -1i, 1i), vec3<i32>(0i, -12612i, 1i))), Struct_2(Struct_1(27073u, vec2<bool>(false, true), vec2<f32>(-1634f, -716f), vec4<i32>(-34020i, -27942i, 15418i, 0i), vec3<i32>(-22765i, -15261i, 2147483647i)), Struct_1(0u, vec2<bool>(false, false), vec2<f32>(-681f, 288f), vec4<i32>(-4562i, 34859i, 1i, i32(-2147483648)), vec3<i32>(-31280i, 323i, -1i)), Struct_1(1u, vec2<bool>(false, true), vec2<f32>(966f, -368f), vec4<i32>(23434i, 0i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, -24003i, 2147483647i))), Struct_2(Struct_1(26722u, vec2<bool>(true, true), vec2<f32>(2646f, 1517f), vec4<i32>(-67493i, -1i, 2147483647i, -73980i), vec3<i32>(i32(-2147483648), 18656i, 8400i)), Struct_1(3028u, vec2<bool>(false, true), vec2<f32>(324f, 1000f), vec4<i32>(-11061i, 1i, -1i, 16394i), vec3<i32>(1i, -20774i, -19252i)), Struct_1(62437u, vec2<bool>(false, true), vec2<f32>(450f, 110f), vec4<i32>(2147483647i, 2147483647i, 1i, 28074i), vec3<i32>(-9711i, 1i, 0i))), Struct_2(Struct_1(1u, vec2<bool>(true, false), vec2<f32>(151f, -235f), vec4<i32>(-1i, 18718i, 0i, -31107i), vec3<i32>(66436i, i32(-2147483648), 68509i)), Struct_1(120670u, vec2<bool>(false, true), vec2<f32>(124f, 401f), vec4<i32>(-13128i, -11057i, -35788i, 0i), vec3<i32>(i32(-2147483648), 0i, -7594i)), Struct_1(24411u, vec2<bool>(false, true), vec2<f32>(-460f, 727f), vec4<i32>(-1i, -49566i, -9335i, 0i), vec3<i32>(1i, -1i, 22538i))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global0 = array<bool, 27>();
    global2 = array<Struct_2, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 462f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1000f, 786f) + vec3<f32>(global1.x, -909f, 300f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(global1.x, global1.x, global1.x)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1419f, global1.x)))))));
    global2 = array<Struct_2, 8>();
    global0 = array<bool, 27>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) + _wgslsmith_f_op_f32(min(global1.x, 447f)))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(arg_2.b.a, 27u)];
    let var_1 = 1u;
    let var_2 = select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 27u)], !arg_2.b.b.x, true, false), !select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], arg_2.a.b.x), vec4<bool>(true, global0[_wgslsmith_index_u32(34807u, 27u)], global0[_wgslsmith_index_u32(56977u, 27u)], global0[_wgslsmith_index_u32(10543u, 27u)]), global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~reverseBits(77402u), 27u)]), _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_2.c.b.x, false, false))) == arg_2.a.c.x);
    let var_3 = !(!var_2.x && !var_2.x);
    var var_4 = false;
    return (true & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(firstTrailingBit(vec3<u32>(4294967295u, arg_1, 1u))), u_input.a), 27u)]) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + arg_2.c.c.x), global1.x)) * global1.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-658f)), _wgslsmith_f_op_f32(2716f + 318f)))));
}

fn func_1(arg_0: i32) -> vec2<f32> {
    global0 = array<bool, 27>();
    var var_0 = Struct_1(u_input.a.x >> ((u_input.a.x & u_input.a.x) % 32u), vec2<bool>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-5589i, u_input.b.x), -2147483647i) > _wgslsmith_sub_i32(-27436i << (u_input.a.x % 32u), ~(-1i)), !global0[_wgslsmith_index_u32(~45373u, 27u)]), vec2<f32>(261f, global1.x), countOneBits(u_input.b), u_input.b.xxz);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), global1.x, var_0.c.x, _wgslsmith_f_op_f32(ceil(-949f))));
    var_0 = Struct_1(countOneBits(select(4294967295u, 48412u, true)), select(!vec2<bool>(!global0[_wgslsmith_index_u32(0u, 27u)], var_0.b.x || false), !vec2<bool>(func_2(var_0.c, 41548u, global2[_wgslsmith_index_u32(14902u, 8u)]), -770f == global1.x), true || (_wgslsmith_clamp_i32(-1i, u_input.b.x, 52915i) >= 1i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(225f, global1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global1.x))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, var_1.x)))))), var_0.d, vec3<i32>(_wgslsmith_dot_vec4_i32(var_0.d, _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 6340i, 53776i, -2147483647i)) & select(vec4<i32>(arg_0, u_input.b.x, var_0.e.x, u_input.b.x), vec4<i32>(16189i, -2147483647i, 2147483647i, var_0.d.x), vec4<bool>(global0[_wgslsmith_index_u32(16534u, 27u)], false, true, true))), 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0, -2147483647i) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(var_0.d.ywz, vec3<i32>(arg_0, arg_0, -28521i) & vec3<i32>(-1i, -2147483647i, var_0.d.x), u_input.b.yzz))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.xz))) - var_1.yx) + _wgslsmith_f_op_vec2_f32(-var_0.c));
    return vec2<f32>(1000f, 1133f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<bool, 27>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(6705i)));
    var var_1 = select(select(!vec3<bool>(true, 34431u < u_input.a.x, all(vec4<bool>(global0[_wgslsmith_index_u32(26215u, 27u)], false, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))), select(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 27u)], select(global0[_wgslsmith_index_u32(41668u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(227u, 27u)]), true), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 27u)], false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 27u)])), true), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], false, true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true)), true)), !(!select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)])), false)), min(u_input.b.x, abs(reverseBits(u_input.b.x))) != (_wgslsmith_mult_i32(-2147483647i, u_input.b.x) ^ -54774i));
    var_0 = global1.x != _wgslsmith_f_op_f32(182f + global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(~vec4<u32>(95175u, 0u, u_input.a.x, 31302u), vec4<u32>(u_input.a.x, 1u, 5229u, u_input.a.x)) & vec4<u32>(u_input.a.x, select(~1u, reverseBits(61747u), func_2(vec2<f32>(444f, global1.x), 22131u, global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), countOneBits(~u_input.a.x), ~min(4294967295u, 4294967295u)), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-734f, -2799f, global1.x, 275f), vec4<f32>(-436f, 1521f, global1.x, -1988f), global0[_wgslsmith_index_u32(u_input.a.x, 27u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(444f, 634f, global1.x, -633f) * vec4<f32>(global1.x, -931f, -135f, global1.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1393f, -156f), vec2<f32>(1764f, global1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1500f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, 245f, 1435f, 539f)), vec4<f32>(759f, _wgslsmith_f_op_f32(f32(-1f) * -2199f), -387f, global1.x))))));
}

