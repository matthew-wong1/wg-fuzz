struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(1u, vec3<bool>(false, true, true), vec3<u32>(0u, 4294967295u, 21078u));

var<private> global2: array<Struct_5, 16>;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(42094u, Struct_1(4294967295u, vec3<bool>(false, true, true), vec3<u32>(4294967295u, 8426u, 0u)), vec3<i32>(1i, 0i, i32(-2147483648)), 57373u, vec4<u32>(41308u, 23183u, 1u, 43447u)), Struct_2(1u, Struct_1(0u, vec3<bool>(true, true, false), vec3<u32>(79533u, 4294967295u, 1u)), vec3<i32>(2147483647i, i32(-2147483648), 33944i), 51143u, vec4<u32>(43257u, 8631u, 0u, 19312u)), Struct_2(0u, Struct_1(38086u, vec3<bool>(false, false, false), vec3<u32>(4283u, 5221u, 58960u)), vec3<i32>(-1i, 0i, 39656i), 18633u, vec4<u32>(1u, 32131u, 62423u, 1u)), Struct_2(4294967295u, Struct_1(67889u, vec3<bool>(false, true, false), vec3<u32>(1u, 0u, 84091u)), vec3<i32>(2147483647i, 5456i, 30795i), 55657u, vec4<u32>(36535u, 28952u, 1281u, 4294967295u)), Struct_2(38301u, Struct_1(44219u, vec3<bool>(true, true, false), vec3<u32>(1u, 4294967295u, 1u)), vec3<i32>(2147483647i, i32(-2147483648), -43157i), 7785u, vec4<u32>(41107u, 16673u, 451u, 0u)), Struct_2(85241u, Struct_1(23729u, vec3<bool>(false, true, false), vec3<u32>(15550u, 4429u, 94500u)), vec3<i32>(1i, -1i, 42346i), 12571u, vec4<u32>(0u, 54039u, 75668u, 0u)), Struct_2(1u, Struct_1(1u, vec3<bool>(true, false, true), vec3<u32>(1u, 0u, 10964u)), vec3<i32>(9066i, -88187i, -1i), 4294967295u, vec4<u32>(11165u, 11817u, 1u, 26661u)), Struct_2(72448u, Struct_1(25734u, vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 19567u)), vec3<i32>(2147483647i, -73799i, 7741i), 1u, vec4<u32>(45581u, 43563u, 5913u, 4294967295u)), Struct_2(10699u, Struct_1(4294967295u, vec3<bool>(true, false, false), vec3<u32>(1u, 24111u, 4294967295u)), vec3<i32>(-1i, i32(-2147483648), 2147483647i), 4294967295u, vec4<u32>(4382u, 57958u, 1u, 0u)), Struct_2(0u, Struct_1(1u, vec3<bool>(true, false, false), vec3<u32>(0u, 1u, 1u)), vec3<i32>(3466i, 0i, 1i), 28628u, vec4<u32>(4294967295u, 73746u, 4294967295u, 24150u)), Struct_2(83878u, Struct_1(37746u, vec3<bool>(false, true, true), vec3<u32>(18842u, 60702u, 33986u)), vec3<i32>(i32(-2147483648), -1i, 2147483647i), 4294967295u, vec4<u32>(2279u, 47445u, 0u, 6633u)), Struct_2(4294967295u, Struct_1(48368u, vec3<bool>(true, false, false), vec3<u32>(95413u, 4294967295u, 26817u)), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), 0u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), Struct_2(0u, Struct_1(105846u, vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 54289u)), vec3<i32>(-7351i, -15022i, 15566i), 88922u, vec4<u32>(4294967295u, 16712u, 37765u, 25684u)), Struct_2(1u, Struct_1(26287u, vec3<bool>(true, false, false), vec3<u32>(28767u, 1u, 3547u)), vec3<i32>(2147483647i, 12247i, -1i), 32929u, vec4<u32>(1u, 1u, 12117u, 4294967295u)), Struct_2(56324u, Struct_1(1u, vec3<bool>(false, false, false), vec3<u32>(47064u, 1u, 1u)), vec3<i32>(1i, 0i, -1i), 4294967295u, vec4<u32>(0u, 35290u, 22525u, 52292u)), Struct_2(14156u, Struct_1(0u, vec3<bool>(true, false, true), vec3<u32>(4294967295u, 0u, 81515u)), vec3<i32>(2147483647i, 700i, -69394i), 0u, vec4<u32>(1u, 33911u, 20599u, 4294967295u)), Struct_2(30628u, Struct_1(1u, vec3<bool>(true, true, false), vec3<u32>(19194u, 1u, 54476u)), vec3<i32>(-20465i, 2147483647i, -1i), 10956u, vec4<u32>(4294967295u, 4294967295u, 27895u, 0u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> i32 {
    global0 = ~vec3<u32>(1u, abs(firstLeadingBit(_wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(u_input.a, 1u, 35268u)))), 48424u & ~(~u_input.a));
    global3 = array<Struct_2, 17>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(~4294967295u, ~4294967295u, ~u_input.a, global0.x), select(~(vec4<u32>(45154u, u_input.a, global1.c.x, 1u) ^ vec4<u32>(global1.c.x, global1.c.x, global0.x, 1u)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.a, u_input.a, 26519u), vec4<u32>(global0.x, 0u, u_input.a, global1.c.x)), ~global1.a, ~4294967295u), select(vec4<bool>(true, false, global1.b.x, true), vec4<bool>(global1.b.x, global1.b.x, true, false), true)))), 17u)];
    global3 = array<Struct_2, 17>();
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(37022u, 44603u, 1u), 17u)];
    return 0i;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(-(~(vec4<i32>(u_input.b, 0i, -31172i, u_input.b) >> (reverseBits(vec4<u32>(u_input.a, global1.c.x, 64627u, 0u)) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(~abs(vec4<i32>(u_input.b, 20831i, u_input.b, -927i)), vec4<i32>(0i, _wgslsmith_add_i32(-1i, i32(-1i) * -54019i), abs(_wgslsmith_clamp_i32(u_input.b, u_input.b, -1i)), ~2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -33839i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b) << (vec4<u32>(arg_3.c.x, 36160u, global0.x, 34536u) % vec4<u32>(32u))) | -(~vec4<i32>(u_input.b, u_input.b, 39623i, u_input.b))));
    global0 = _wgslsmith_mult_vec3_u32(~arg_1.c, countOneBits(global1.c));
    var var_1 = !all(!select(select(vec3<bool>(global1.b.x, false, false), arg_1.b, false), !vec3<bool>(global1.b.x, true, arg_3.b.x), global1.c.x == u_input.a));
    var var_2 = 324f;
    global1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~(~global1.c), arg_3.c), 3338u), vec3<bool>(!arg_3.b.x, ((arg_3.a >= global1.c.x) | select(true, true, true)) || arg_0, true), global1.c);
    return !vec4<bool>(any(!vec4<bool>(false, global1.b.x, false, arg_3.b.x)), true, true, _wgslsmith_sub_i32(-var_0, -31639i) <= 0i);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    let var_0 = !select(arg_2.c.b.b.yz, select(vec2<bool>(true, true), arg_2.c.b.b.xy, !arg_2.c.b.b.x), select(!(!global1.b.yx), vec2<bool>(true, true), true));
    var var_1 = !(!select(func_3(false, arg_2.c.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.a, arg_1.x, arg_2.a))), arg_2.c.b), select(func_3(false, Struct_1(u_input.a, arg_2.c.b.b, vec3<u32>(4294967295u, 0u, arg_2.b.x)), arg_1.wwz, Struct_1(11396u, vec3<bool>(false, false, var_0.x), vec3<u32>(4294967295u, 64024u, 90636u))), func_3(false, Struct_1(global0.x, vec3<bool>(true, arg_2.c.b.b.x, global1.b.x), vec3<u32>(global1.c.x, 46617u, global0.x)), arg_1.xxy, arg_2.c.b), true), !(!vec4<bool>(arg_2.c.b.b.x, true, var_0.x, arg_2.c.b.b.x))));
    var_1 = func_3(true, arg_2.c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1.ywz, vec3<f32>(456f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1211f, 1522f, -1349f))), _wgslsmith_div_vec3_f32(arg_1.zxz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1356f, arg_1.x, 559f)))), vec3<bool>(true, -1i == u_input.b, var_1.x))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1408f, 734f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_2.a, arg_2.a, arg_2.c.b.b.x)))))), arg_2.c.b);
    var var_2 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(~global1.c), vec3<u32>(5374u, 0u, 44168u) << (arg_2.b.xxx % vec3<u32>(32u)), arg_2.c.b.c);
    global2 = array<Struct_5, 16>();
    return -420f;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1597f)), arg_1, _wgslsmith_f_op_f32(ceil(1451f)), 1363f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(610f, arg_1, arg_1, 942f), vec4<f32>(arg_1, arg_1, arg_1, -1196f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 924f, -448f, arg_1)), func_3(select(arg_2.x, false, global1.b.x), Struct_1(global0.x, vec3<bool>(true, global1.b.x, global1.b.x), global1.c), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-372f, 341f, arg_1))), Struct_1(29423u, global1.b, vec3<u32>(global1.a, global0.x, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-934f + _wgslsmith_f_op_f32(min(832f, 2014f))), 370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) * _wgslsmith_f_op_f32(f32(-1f) * -773f)), _wgslsmith_f_op_f32(-arg_1)))));
    let var_1 = ~_wgslsmith_dot_vec3_i32(-(~(-arg_0.yzy)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_3.x, u_input.b) << (_wgslsmith_clamp_vec3_u32(global1.c, global1.c, global1.c) % vec3<u32>(32u)), (vec3<i32>(2147483647i, u_input.b, arg_3.x) ^ vec3<i32>(0i, -1i, arg_0.x)) << (global1.c % vec3<u32>(32u))));
    var var_2 = vec3<bool>(arg_2.x, all(!(!global1.b.yx)), func_3(!(_wgslsmith_f_op_f32(761f - 272f) > _wgslsmith_f_op_f32(-var_0.x)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 20016u), _wgslsmith_mult_vec2_u32(vec2<u32>(22078u, 4294967295u), vec2<u32>(u_input.a, u_input.a))), vec3<bool>(any(vec2<bool>(arg_2.x, true)), false, false), vec3<u32>(~global1.c.x, u_input.a, global1.c.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_0.wyz, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, -968f), var_0.zwz)), !arg_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-126f, -1000f, var_0.x))) - var_0.ywz))), Struct_1(global1.c.x, !vec3<bool>(arg_2.x, false, false), select(_wgslsmith_mod_vec3_u32(global1.c, vec3<u32>(4294967295u, 12881u, global1.c.x)), select(global1.c, vec3<u32>(global0.x, 0u, 51330u), false), !global1.b))).x);
    global0 = ~countOneBits(select(vec3<u32>(_wgslsmith_add_u32(global1.c.x, global1.c.x), 0u, 1u), ~(~global1.c), vec3<bool>(!arg_2.x, true, any(vec4<bool>(arg_2.x, false, var_2.x, false)))));
    global3 = array<Struct_2, 17>();
    return Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 0u, 4229u, u_input.a) ^ vec4<u32>(u_input.a, 4294967295u, 4294967295u, 27877u), ~vec4<u32>(u_input.a, global1.a, 4294967295u, global1.c.x)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, global1.c.x, 4294967295u, 117678u), vec4<u32>(global0.x, global1.a, 71120u, 1u), arg_2.x), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 0u, 0u), vec4<u32>(14218u, u_input.a, 0u, u_input.a))))), select(global1.b, global1.b, !var_2.x), vec3<u32>(_wgslsmith_mult_u32(countOneBits(4294967295u ^ global1.a), global1.a), u_input.a, _wgslsmith_div_u32(81828u, ~_wgslsmith_div_u32(4294967295u, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.x;
    let var_1 = Struct_2(global1.a, func_4(vec4<i32>(abs(~(-38546i)), -21138i, ~func_1(), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_i32(u_input.b, 0i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1619f, -1518f, -1098f, -1228f), vec4<f32>(-1428f, -537f, -1000f, 560f))), Struct_4(-355f, vec4<u32>(4294967295u, global0.x, u_input.a, 15147u), Struct_2(global1.a, Struct_1(u_input.a, global1.b, global1.c), vec3<i32>(2147483647i, u_input.b, -37444i), 16449u, vec4<u32>(global0.x, 116956u, global0.x, 78049u)))))), vec2<bool>(func_3(false, Struct_1(u_input.a, global1.b, global1.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, 553f, 1682f)), Struct_1(0u, global1.b, vec3<u32>(35463u, 4294967295u, u_input.a))).x, true), vec2<i32>(-u_input.b, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(35745i, u_input.b, u_input.b)), vec3<i32>(u_input.b, u_input.b, u_input.b)))), max(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(0i, u_input.b), u_input.b), min(16435i, u_input.b << (global1.a % 32u)), u_input.b), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, u_input.b, u_input.b), min(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(-1i, -1i, 1i))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 21504i, -2147483647i) & vec3<i32>(u_input.b, 5735i, u_input.b), firstTrailingBit(vec3<i32>(31578i, u_input.b, 1i))))), countOneBits(select(89185u, global0.x, true)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 48908u, global1.a, 12542u), vec4<u32>(u_input.a, 50065u, u_input.a, global1.a))) >> (~_wgslsmith_mult_vec4_u32(select(vec4<u32>(3162u, u_input.a, global0.x, 1u), vec4<u32>(global1.a, 75738u, 63789u, global0.x), global1.b.x), min(vec4<u32>(u_input.a, 0u, global0.x, global0.x), vec4<u32>(global0.x, 51183u, 49075u, global0.x))) % vec4<u32>(32u)));
    let var_2 = vec4<f32>(-1585f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(282f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1374f * -1056f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -2071f), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1252f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-803f, -1154f)))))));
    let var_3 = false;
    var var_4 = _wgslsmith_div_f32(971f, var_2.x);
    let var_5 = var_1.b.a;
    global3 = array<Struct_2, 17>();
    let var_6 = Struct_5(reverseBits(firstTrailingBit(abs(-42259i))));
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(round(-1724f))), 540f))), ~global1.c, vec2<i32>(firstLeadingBit(~(-25603i)), abs(~var_6.a)), 4294967295u);
}

