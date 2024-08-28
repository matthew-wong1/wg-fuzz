struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<u32, 7> = array<u32, 7>(21687u, 1u, 4294967295u, 3937u, 1u, 34517u, 4294967295u);

var<private> global2: array<bool, 21>;

var<private> global3: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(57336u, 0u, 1u), vec3<u32>(0u, 8301u, 1u), vec3<u32>(1u, 4294967295u, 10387u), vec3<u32>(31008u, 96823u, 105338u), vec3<u32>(22311u, 6919u, 27955u), vec3<u32>(4294967295u, 61077u, 1u), vec3<u32>(19660u, 0u, 96121u), vec3<u32>(38750u, 0u, 1u), vec3<u32>(1u, 39821u, 4294967295u), vec3<u32>(4294967295u, 65804u, 33771u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(50365u, 25820u, 60073u), vec3<u32>(4294967295u, 1u, 42610u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 11619u, 61316u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(27512u, 58551u, 97800u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 1u, 23242u), vec3<u32>(0u, 55705u, 0u), vec3<u32>(75557u, 12726u, 22851u));

var<private> global4: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> bool {
    global1 = array<u32, 7>();
    let var_0 = ~(~firstTrailingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), min(vec2<u32>(arg_0.e, 0u), vec2<u32>(arg_0.e, 1u)))));
    global0 = array<vec4<f32>, 4>();
    let var_1 = arg_0.a.yx;
    global4 = array<vec3<bool>, 29>();
    return var_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, -1i, arg_1, -47539i) << ((vec4<u32>(arg_0.e.a, arg_0.d.a, 4294967295u, global1[_wgslsmith_index_u32(arg_0.e.a, 7u)]) << (vec4<u32>(arg_0.d.a, 23124u, 19636u, 26903u) % vec4<u32>(32u))) % vec4<u32>(32u))), -max(vec4<i32>(-14227i, arg_0.e.c.x, -1i, -8066i), ~vec4<i32>(u_input.a.x, arg_1, -2147483647i, 11680i))) >= _wgslsmith_add_i32(~reverseBits(arg_0.e.b.x << (arg_0.d.a % 32u)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(arg_0.a.x, u_input.a.x, -11621i)) << (~global1[_wgslsmith_index_u32(1u, 7u)] % 32u));
    var var_1 = vec4<bool>(true, true, !(!(arg_0.d.d != true)), !(!func_3(Struct_4(vec4<bool>(true, arg_0.e.d, var_0, false), vec2<f32>(180f, -272f), vec3<i32>(0i, 0i, -1i), vec2<bool>(global2[_wgslsmith_index_u32(arg_0.d.a, 21u)], var_0), 17103u), -1043f)));
    var var_2 = select(var_1.zwz, vec3<bool>(true, 1370f < _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + arg_0.c) <= -1300f), select(select(global4[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(arg_0.e.a, 7u)]), 29u)], select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.e.a, 21u)], arg_0.e.d, true), global4[_wgslsmith_index_u32(max(0u, arg_0.b.a), 29u)], global2[_wgslsmith_index_u32(~42174u, 21u)]), var_1.xxx), select(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13379u, 43935u, 19092u, arg_0.b.a), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 0u, arg_0.d.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), 29u)], vec3<bool>(!global2[_wgslsmith_index_u32(33785u, 21u)], var_1.x, false), var_1.xzz), true));
    var var_3 = Struct_1(50884u, max(arg_0.b.b, abs(min(arg_0.a.yz, ~vec2<i32>(arg_1, arg_0.e.c.x)))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, 0i), select(u_input.a, vec2<i32>(14953i, -15110i), vec2<bool>(var_1.x, var_1.x))), abs(arg_1), u_input.a.x) | vec3<i32>(21449i, ~1i, select(arg_0.d.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_0.a.x, 76801i)), !var_1.x)), (var_2.x && global2[_wgslsmith_index_u32(arg_0.d.a, 21u)]) && any(!select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_2.x, var_1.x, false, false), var_0)));
    let var_4 = -1382f;
    return vec4<bool>(arg_0.e.d, any(var_1.yyy), !select(true, (u_input.a.x & u_input.a.x) > 1i, -arg_1 > 45568i), all(select(!select(var_1.yy, var_1.xy, var_1.zy), var_2.yx, vec2<bool>(true, true))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(vec4<bool>(_wgslsmith_f_op_f32(-1565f + _wgslsmith_f_op_f32(min(arg_1.b.x, -1323f))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-307f)))), global2[_wgslsmith_index_u32(~arg_3.a.a, 21u)], arg_3.a.d, !(false || !arg_3.a.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1422f, arg_1.b.x)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b.x)) - arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x))), ~max(-vec3<i32>(343i, -23047i, arg_3.c.x), _wgslsmith_add_vec3_i32(arg_1.c | arg_3.a.c, vec3<i32>(-1i, 22146i, arg_2.x))), select(func_2(Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(-54861i, arg_0, 0i), arg_3.a.c), arg_3.a, _wgslsmith_f_op_f32(f32(-1f) * -1051f), Struct_1(arg_1.e, vec2<i32>(u_input.a.x, 2147483647i), arg_1.c, true), Struct_1(9029u, vec2<i32>(54558i, u_input.a.x), vec3<i32>(91464i, 0i, arg_2.x), arg_3.a.d)), -2147483647i).zw, arg_1.d, !all(!arg_1.d)), 4294967295u);
    let var_1 = reverseBits(~(~1u));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.x - -948f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.b))))));
    global1 = array<u32, 7>();
    var var_3 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, ~arg_1.e, ~var_1), 20942u), vec2<i32>(u_input.a.x, -arg_3.c.x), select(firstLeadingBit(countOneBits(~vec3<i32>(arg_0, 25699i, u_input.a.x))), ~_wgslsmith_sub_vec3_i32(max(arg_3.a.c, vec3<i32>(arg_3.c.x, 2147483647i, arg_3.c.x)), arg_1.c), any(select(func_2(Struct_2(vec3<i32>(-51924i, var_0.c.x, 1i), arg_3.a, arg_3.b, arg_3.a, arg_3.a), 1i), select(arg_1.a, vec4<bool>(arg_1.d.x, var_0.d.x, false, global2[_wgslsmith_index_u32(4294967295u, 21u)]), true), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(arg_1.e, 21u)])))), var_1 <= 40578u);
    return arg_3.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = ~max(4294967295u, 10581u) & ~global1[_wgslsmith_index_u32(0u, 7u)];
    global4 = array<vec3<bool>, 29>();
    return Struct_2(arg_2.c, func_4(0i, Struct_4(!select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 21u)], true), vec4<bool>(arg_2.d, arg_2.d, true, arg_0.d), arg_2.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-543f, -601f), vec2<f32>(-115f, 1000f)))), ~func_4(arg_2.b.x, Struct_4(vec4<bool>(arg_2.d, true, arg_0.d, arg_0.d), vec2<f32>(-1106f, -2410f), arg_2.c, vec2<bool>(arg_2.d, global2[_wgslsmith_index_u32(arg_0.a, 21u)]), 51170u), vec2<i32>(24785i, u_input.a.x), Struct_3(arg_0, 477f, arg_2.c.xz)).c, func_2(Struct_2(vec3<i32>(-2147483647i, 0i, 2147483647i), Struct_1(global1[_wgslsmith_index_u32(15962u, 7u)], vec2<i32>(arg_3, 20230i), arg_2.c, arg_2.d), -1853f, Struct_1(arg_0.a, vec2<i32>(u_input.a.x, arg_2.c.x), vec3<i32>(2147483647i, arg_1.x, 6445i), false), Struct_1(arg_2.a, u_input.a, vec3<i32>(arg_2.c.x, -2147483647i, arg_1.x), arg_0.d)), -218i).zy, _wgslsmith_add_u32(func_4(arg_3, Struct_4(vec4<bool>(false, true, arg_2.d, false), vec2<f32>(1125f, -1237f), vec3<i32>(arg_3, u_input.a.x, 0i), vec2<bool>(true, false), arg_0.a), arg_0.c.xx, Struct_3(arg_2, 221f, vec2<i32>(arg_2.b.x, arg_3))).a, min(arg_2.a, arg_0.a))), arg_2.c.zy, Struct_3(arg_0, _wgslsmith_f_op_f32(-1792f + _wgslsmith_f_op_f32(round(-1104f))), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), arg_0.c.xx)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), func_4(~arg_0.b.x << (~arg_0.a % 32u), Struct_4(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(60283u, 21u)], arg_2.d, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(148f, 1112f) - vec2<f32>(-337f, -179f))), countOneBits(arg_2.c), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.a, 21u)])), _wgslsmith_div_u32(firstTrailingBit(9200u), 4294967295u ^ arg_2.a)), _wgslsmith_mult_vec2_i32(abs(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(arg_1.x, arg_1.x))), vec2<i32>(arg_0.c.x, _wgslsmith_mult_i32(arg_1.x, -6290i))), Struct_3(func_4(countOneBits(2147483647i), Struct_4(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 21u)], arg_0.d, false), vec2<f32>(915f, -1808f), vec3<i32>(0i, -70392i, arg_2.c.x), vec2<bool>(false, true), 0u), arg_2.c.xz ^ vec2<i32>(arg_0.b.x, arg_3), Struct_3(Struct_1(global1[_wgslsmith_index_u32(arg_2.a, 7u)], arg_0.b, arg_2.c, arg_2.d), -331f, vec2<i32>(u_input.a.x, 10028i))), _wgslsmith_f_op_f32(563f * _wgslsmith_f_op_f32(-952f + 868f)), min(arg_0.c.zz, arg_2.c.xy))), Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(103776u, 7u)], 81442u) ^ vec2<u32>(1u, arg_2.a), vec2<u32>(arg_2.a, 4294967295u))), _wgslsmith_add_vec2_i32(arg_0.b, vec2<i32>(i32(-1i) * -21979i, arg_1.x ^ arg_0.c.x)), -_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2.c.x, -5005i, -1i), vec3<i32>(u_input.a.x, 6360i, 1i)), !arg_2.d));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = func_5(func_4(_wgslsmith_mod_i32(abs(reverseBits(-35278i)), u_input.a.x), Struct_4(!func_2(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(1u, 7u)], vec2<i32>(u_input.a.x, -2147483647i), vec3<i32>(15177i, 23954i, u_input.a.x), true), arg_0.x, Struct_1(1u, vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 34926i, u_input.a.x), false), Struct_1(global1[_wgslsmith_index_u32(0u, 7u)], u_input.a, vec3<i32>(1i, u_input.a.x, 10748i), global2[_wgslsmith_index_u32(4294967295u, 21u)])), -2871i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.xx * arg_0.yz)), countOneBits(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), !(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61237u, 7u)], 7u)], 21u)])), _wgslsmith_div_u32(48868u, global1[_wgslsmith_index_u32(0u, 7u)]) | global1[_wgslsmith_index_u32(0u, 7u)]), u_input.a, Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(49166u, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33230u, 7u)], 7u)], 87u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], global1[_wgslsmith_index_u32(47818u, 7u)], global1[_wgslsmith_index_u32(29576u, 7u)], 13127u)), u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-13156i, 52292i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), false), -1615f, ~vec2<i32>(2147483647i, -1i) & reverseBits(u_input.a))), vec2<i32>(_wgslsmith_mult_i32(37805i, _wgslsmith_mult_i32(2147483647i, u_input.a.x) | 1i), _wgslsmith_mod_i32(~u_input.a.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)] % 32u), 1i)), Struct_1(~countOneBits(~26910u), u_input.a, vec3<i32>(0i, ~(u_input.a.x >> (global1[_wgslsmith_index_u32(1u, 7u)] % 32u)), ~firstLeadingBit(-1i)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 0u, 47385u)), vec3<u32>(max(global1[_wgslsmith_index_u32(41797u, 7u)], 0u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44129u, 7u)] << (23193u % 32u), 7u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), 7u)], 21u)]), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<i32>(45316i, u_input.a.x, u_input.a.x)), vec3<i32>(select(u_input.a.x, ~u_input.a.x, u_input.a.x <= 2360i), u_input.a.x, firstTrailingBit(-40904i))));
    global0 = array<vec4<f32>, 4>();
    let var_1 = -895f;
    let var_2 = func_2(Struct_2(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.a.x, var_0.d.c.x, u_input.a.x), vec4<i32>(var_0.d.b.x, u_input.a.x, u_input.a.x, -50290i)), var_0.d.b.x, reverseBits(0i)), func_4(-u_input.a.x, Struct_4(func_2(Struct_2(var_0.e.c, Struct_1(4294967295u, var_0.a.xx, var_0.e.c, false), arg_0.x, var_0.d, var_0.b), var_0.d.b.x), _wgslsmith_div_vec2_f32(arg_0.yx, arg_0.zx), var_0.e.c, !vec2<bool>(global2[_wgslsmith_index_u32(45789u, 21u)], global2[_wgslsmith_index_u32(13524u, 21u)]), ~6936u), ~vec2<i32>(var_0.d.c.x, var_0.d.c.x), Struct_3(var_0.d, -1754f, -vec2<i32>(var_0.d.c.x, -11580i))), _wgslsmith_f_op_f32(1f + -613f), func_5(Struct_1(0u, _wgslsmith_div_vec2_i32(var_0.e.c.zx, vec2<i32>(u_input.a.x, u_input.a.x)), var_0.e.c, global2[_wgslsmith_index_u32(57799u, 21u)]), firstLeadingBit(vec2<i32>(2147483647i, 2599i)), func_5(func_4(27212i, Struct_4(vec4<bool>(true, false, true, var_0.b.d), vec2<f32>(arg_0.x, -1256f), vec3<i32>(0i, var_0.d.c.x, var_0.e.b.x), vec2<bool>(true, true), 8558u), vec2<i32>(var_0.a.x, -52588i), Struct_3(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.e.a, 7u)], 7u)], 7u)], vec2<i32>(11142i, var_0.d.b.x), vec3<i32>(76187i, -2147483647i, u_input.a.x), true), arg_0.x, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-9598i, 2147483647i), vec2<i32>(var_0.d.b.x, 0i)), var_0.e, u_input.a.x).e, u_input.a.x).d, Struct_1(global1[_wgslsmith_index_u32(func_5(func_5(Struct_1(98752u, vec2<i32>(u_input.a.x, 5039i), vec3<i32>(46913i, u_input.a.x, u_input.a.x), false), var_0.e.c.xy, Struct_1(1u, u_input.a, var_0.b.c, true), var_0.b.b.x).b, vec2<i32>(0i, u_input.a.x) & vec2<i32>(var_0.d.b.x, u_input.a.x), Struct_1(45379u, u_input.a, vec3<i32>(var_0.b.c.x, -1i, -43030i), var_0.d.d), var_0.b.b.x).d.a, 7u)], -var_0.d.b | vec2<i32>(-50852i, -65500i), vec3<i32>(var_0.d.b.x, abs(var_0.b.c.x), 1i), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.b.a, 0u), 1u), 21u)])), -_wgslsmith_add_i32(abs(-2726i), i32(-1i) * -1i)).zxw;
    let var_3 = vec3<f32>(arg_0.x, var_1, -1161f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.c, var_1, true)))) * 1475f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(vec3<f32>(1291f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1015f, _wgslsmith_f_op_f32(-805f + 124f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1047f, -437f)) - 765f))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -936f);
    let var_1 = Struct_1(~(~_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(4294967295u, 7u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29690u, 7u)], 7u)], func_4(u_input.a.x, Struct_4(vec4<bool>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(111049u, 21u)], global2[_wgslsmith_index_u32(41979u, 21u)], false), vec2<f32>(926f, 2381f), vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec2<bool>(global2[_wgslsmith_index_u32(42648u, 21u)], false), global1[_wgslsmith_index_u32(29858u, 7u)]), u_input.a, Struct_3(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28780u, 7u)], 7u)], u_input.a, vec3<i32>(u_input.a.x, 51275i, u_input.a.x), true), -377f, vec2<i32>(0i, -2147483647i))).a)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(0i), abs(u_input.a.x)), _wgslsmith_mod_vec2_i32(func_4(u_input.a.x, Struct_4(vec4<bool>(global2[_wgslsmith_index_u32(52278u, 21u)], true, global2[_wgslsmith_index_u32(88019u, 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2446u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 21u)]), vec2<f32>(-402f, -508f), vec3<i32>(u_input.a.x, 2882i, -2147483647i), vec2<bool>(false, true), 45197u), vec2<i32>(u_input.a.x, u_input.a.x), Struct_3(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78899u, 7u)], 7u)], 7u)], 7u)], u_input.a, vec3<i32>(35234i, -1i, u_input.a.x), true), -324f, vec2<i32>(6012i, u_input.a.x))).c.xy, ~vec2<i32>(u_input.a.x, u_input.a.x)))), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -u_input.a.x, 0i) >> (_wgslsmith_div_vec3_u32(countOneBits(global3[_wgslsmith_index_u32(func_5(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], u_input.a, vec3<i32>(-54249i, -58814i, u_input.a.x), false), vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(0u, 7u)], vec2<i32>(10763i, 35430i), vec3<i32>(1i, -44304i, u_input.a.x), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 21u)]), 1i).b.a, 21u)]), ~(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 7u)], 38150u, 46461u))) % vec3<u32>(32u)), true);
    global3 = array<vec3<u32>, 21>();
    let var_2 = Struct_4(select(select(vec4<bool>(any(global4[_wgslsmith_index_u32(var_1.a, 29u)]), 0i == var_1.c.x, true, true), func_2(func_5(var_1, var_1.c.xz, var_1, u_input.a.x), 58468i), (var_1.c.x != 77991i) | true), select(vec4<bool>(global2[_wgslsmith_index_u32(61813u, 21u)], true, !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 21u)], global2[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(23248u, 7u)]), 21u)]), !(!vec4<bool>(var_1.d, true, false, false)), select(!vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a, 7u)], 21u)], false, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 21u)]), select(vec4<bool>(false, var_1.d, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20917u, 7u)], 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38484u, 7u)], 21u)], var_1.d), true), func_2(Struct_2(vec3<i32>(-1i, 1i, u_input.a.x), var_1, -157f, var_1, Struct_1(39318u, vec2<i32>(-14221i, -2147483647i), var_1.c, global2[_wgslsmith_index_u32(4294967295u, 21u)])), 2147483647i))), all(!func_2(Struct_2(vec3<i32>(0i, var_1.c.x, u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(14378u, 7u)], var_1.c.zy, vec3<i32>(-1i, 14103i, 66044i), var_1.d), 1602f, Struct_1(12777u, u_input.a, var_1.c, var_1.d), Struct_1(var_1.a, var_1.c.yx, var_1.c, var_1.d)), -1i))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(128f, 926f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(192f, 381f))))), !(!(!vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69929u, 7u)], 21u)], true))))), var_1.c, vec2<bool>(true || var_1.d, true), countOneBits(0u));
    var var_3 = func_5(Struct_1(7896u, var_1.c.xy, var_1.c, !((var_1.d && var_2.a.x) || any(var_2.d))), reverseBits(vec2<i32>(u_input.a.x, -firstLeadingBit(u_input.a.x))), Struct_1(~min(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(33748u, 7u)], 7u)], 1u), -u_input.a ^ _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, var_1.c.x), var_1.b), var_1.c.xx), -var_1.c, var_2.d.x), select(16071i, i32(-1i) * -36357i, true)).e;
    let var_4 = Struct_3(var_1, -1740f, abs(var_3.b) >> (~(~firstLeadingBit(vec2<u32>(4294967295u, 76351u))) % vec2<u32>(32u)));
    let var_5 = func_4(_wgslsmith_sub_i32(-11076i, ~((i32(-1i) * -1i) >> (~var_1.a % 32u))), Struct_4(!vec4<bool>(all(vec2<bool>(false, false)), -72940i < var_1.c.x, true, global2[_wgslsmith_index_u32(firstLeadingBit(var_2.e), 21u)]), vec2<f32>(-1297f, _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(f32(-1f) * -895f))), -var_4.a.c, func_2(Struct_2(vec3<i32>(-4697i, var_3.c.x, u_input.a.x), var_1, var_4.b, Struct_1(var_4.a.a, var_3.b, var_4.a.c, false), func_4(var_1.b.x, Struct_4(var_2.a, vec2<f32>(var_4.b, var_4.b), var_2.c, var_2.a.yw, 17183u), vec2<i32>(-1i, var_4.a.b.x), Struct_3(var_4.a, -700f, var_1.c.zz))), 2147483647i).zz, 4294967295u), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~(var_2.c.yy >> (vec2<u32>(22898u, var_2.e) % vec2<u32>(32u))), ~(~vec2<i32>(var_2.c.x, 26965i))), vec2<i32>(min(_wgslsmith_mod_i32(-1i, 7272i), -2147483647i | var_4.c.x), _wgslsmith_add_i32(~u_input.a.x, 0i >> (global1[_wgslsmith_index_u32(1u, 7u)] % 32u)))), Struct_3(func_5(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.x, -1i, -842i, 0i), vec4<i32>(78160i, -49645i, var_4.c.x, -1i)), var_2, vec2<i32>(19015i, -6003i), var_4), -vec2<i32>(var_2.c.x, -3411i), func_5(func_5(var_4.a, vec2<i32>(var_2.c.x, var_3.c.x), var_4.a, var_1.c.x).d, vec2<i32>(var_2.c.x, -19309i), func_4(0i, Struct_4(var_2.a, var_2.b, vec3<i32>(-38106i, var_3.c.x, var_1.c.x), vec2<bool>(true, false), 52394u), vec2<i32>(39483i, var_4.c.x), Struct_3(Struct_1(var_3.a, vec2<i32>(6982i, u_input.a.x), vec3<i32>(u_input.a.x, -10990i, 34272i), true), 583f, vec2<i32>(var_2.c.x, var_3.c.x))), -1i).e, 17400i).e, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_4.b, var_4.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1199f, 1274f, -1538f))))), var_4.a.c.zz));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, ~vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(45368u, 7u)], 64474u), 7u)], ~1u), ~_wgslsmith_sub_u32(var_4.a.a, var_1.a)), vec2<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(var_1.a, 7u)], ~(0u << (var_5.a % 32u))), select(abs(43969u), _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 0u), 1u >> (var_2.e % 32u)), true)));
}

