struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(-1i, 1i, -10268i, i32(-2147483648)), vec4<u32>(47916u, 22390u, 2786u, 46529u)), Struct_1(vec4<i32>(37496i, -1i, 46678i, -1i), vec4<u32>(24809u, 77363u, 72541u, 26622u)), Struct_1(vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)), vec4<u32>(76119u, 34412u, 20100u, 27723u)), Struct_1(vec4<i32>(57028i, 2147483647i, -46612i, 17863i), vec4<u32>(0u, 4732u, 1u, 1u)), Struct_1(vec4<i32>(7216i, 7591i, 14676i, 2147483647i), vec4<u32>(98653u, 13354u, 0u, 21519u)), Struct_1(vec4<i32>(-4426i, i32(-2147483648), -26128i, 2147483647i), vec4<u32>(0u, 4294967295u, 4294967295u, 783u)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 23652i, 348i), vec4<u32>(10326u, 24863u, 43925u, 30936u)), Struct_1(vec4<i32>(28323i, -18461i, 1i, 1399i), vec4<u32>(37090u, 4294967295u, 24193u, 14034u)), Struct_1(vec4<i32>(-1i, 0i, -8264i, 1i), vec4<u32>(14954u, 1u, 0u, 38626u)), Struct_1(vec4<i32>(0i, 54814i, 2147483647i, 11319i), vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<i32>(-53752i, -43748i, -5081i, 1i), vec4<u32>(0u, 0u, 4294967295u, 10870u)), Struct_1(vec4<i32>(36335i, 8810i, -11930i, 23627i), vec4<u32>(1u, 0u, 154611u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), 22518i, i32(-2147483648), 22537i), vec4<u32>(1u, 4294967295u, 0u, 59776u)), Struct_1(vec4<i32>(2147483647i, 10522i, 60912i, 1i), vec4<u32>(102887u, 3853u, 46162u, 107419u)), Struct_1(vec4<i32>(2197i, 1i, -14230i, -57339i), vec4<u32>(12656u, 12356u, 1u, 19632u)), Struct_1(vec4<i32>(0i, -24665i, 1i, -6578i), vec4<u32>(39431u, 4294967295u, 18783u, 19369u)), Struct_1(vec4<i32>(1i, 2147483647i, 1i, 48538i), vec4<u32>(0u, 1u, 62338u, 0u)), Struct_1(vec4<i32>(-1i, -35196i, i32(-2147483648), -1i), vec4<u32>(20482u, 1u, 1u, 4294967295u)), Struct_1(vec4<i32>(15435i, 0i, 3141i, 1i), vec4<u32>(0u, 1u, 1u, 4294967295u)), Struct_1(vec4<i32>(51299i, -1i, -1i, 42598i), vec4<u32>(63260u, 4294967295u, 1u, 78862u)), Struct_1(vec4<i32>(i32(-2147483648), -36884i, -16656i, 11472i), vec4<u32>(0u, 899u, 39446u, 18818u)), Struct_1(vec4<i32>(i32(-2147483648), -20616i, -5741i, 2147483647i), vec4<u32>(4294967295u, 1u, 0u, 1u)), Struct_1(vec4<i32>(23315i, 9057i, 48579i, -41261i), vec4<u32>(0u, 2922u, 14459u, 98966u)));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec4<u32> = vec4<u32>(657u, 21346u, 1u, 12482u);

var<private> global3: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1059f), -238f, -913f), abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global2.www, global2.yzy), ~9777u, global2.x << (3991u % 32u)) << (u_input.b % 32u)));
    var var_1 = Struct_3(var_0.a.zz);
    let var_2 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(7359u, u_input.b, global2.x, global2.x), vec4<u32>(u_input.d, 2419u, 0u, 0u) | vec4<u32>(u_input.d, 0u, u_input.c, 0u)) << (~_wgslsmith_add_u32(~4294967295u, 1u >> (0u % 32u)) % 32u));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(max(var_0.a.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a.zz - vec2<f32>(-921f, 423f)))) * _wgslsmith_div_vec2_f32(var_0.a.zx, var_1.a)))));
    let var_4 = Struct_5(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.e.x, u_input.a.x, 12277i, u_input.a.x) ^ (-vec4<i32>(35617i, -3845i, -2147483647i, u_input.e.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(29143u, 35964u, var_2, u_input.d), vec4<u32>(global2.x, var_0.b, 20477u, u_input.d)) % vec4<u32>(32u))), reverseBits(select(vec4<i32>(47603i, u_input.a.x, -9425i, 1i), vec4<i32>(u_input.e.x, u_input.a.x, -1i, u_input.e.x), true)) | vec4<i32>(u_input.e.x, abs(u_input.e.x), firstTrailingBit(u_input.a.x), ~0i), abs(vec4<i32>(-u_input.a.x, u_input.a.x, u_input.e.x >> (global2.x % 32u), _wgslsmith_mult_i32(u_input.a.x, 40323i)))), select(!(!vec2<bool>(global1.x, global1.x)), !vec2<bool>(!global1.x, true), !select(!vec2<bool>(global1.x, true), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), false), vec2<bool>(false, true))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.d, var_2), _wgslsmith_clamp_u32(global2.x, 42603u, 8841u)), ~_wgslsmith_clamp_vec2_u32(global2.wx, vec2<u32>(var_0.b, global2.x), global2.xw)) | min(global2.yz & vec2<u32>(1u, 18176u), global2.wx), _wgslsmith_mult_vec2_i32(-abs(select(u_input.a.zz, u_input.e.zy, global1.x)), ~vec2<i32>(u_input.a.x >> (58000u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 2147483647i), vec2<i32>(-29382i, -15431i)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_3.a.x)))) * _wgslsmith_f_op_f32(var_3.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(select(-279f, 799f, false))))));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = vec3<i32>(arg_0.d.x, u_input.e.x, -2147483647i);
    let var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit((_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d.x, 21546i, var_0.x, 50142i), vec4<i32>(2147483647i, var_0.x, -51490i, -2147483647i), arg_0.a) ^ vec4<i32>(var_0.x, u_input.a.x, -25569i, -2147483647i)) ^ ((arg_0.a ^ arg_0.a) ^ (vec4<i32>(u_input.e.x, u_input.e.x, u_input.a.x, 44534i) << (vec4<u32>(arg_0.c.x, 1u, global2.x, arg_0.c.x) % vec4<u32>(32u))))), ~abs(-arg_0.a) | (arg_0.a & arg_0.a));
    global2 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c.x, u_input.c, 40655u, arg_1.x), vec4<u32>(30224u, global2.x, u_input.b, 1u)) >> (firstLeadingBit(vec4<u32>(0u, 1u, 0u, arg_0.c.x)) % vec4<u32>(32u))), ~(~(~vec4<u32>(53439u, arg_0.c.x, u_input.d, 4294967295u)))), ~firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, global2.x, arg_0.c.x, arg_1.x), vec4<u32>(77969u, 4294967295u, arg_1.x, 9164u), vec4<u32>(u_input.c, 24124u, global2.x, 47136u))));
    var var_2 = _wgslsmith_mult_u32(15187u, arg_0.c.x);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1798f + 1198f), _wgslsmith_f_op_f32(func_3())))));
    return vec3<bool>(!global1.x, global1.x, true);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_4 {
    var var_0 = abs(global2.x | u_input.c) & arg_1.x;
    global1 = vec2<bool>(all(arg_3.b), true);
    let var_1 = global0[_wgslsmith_index_u32(min(0u, arg_3.c.x), 23u)];
    global1 = !vec2<bool>(arg_3.b.x, true);
    var var_2 = arg_2;
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - -1123f), 1017f)), -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f - 1049f) - _wgslsmith_f_op_f32(max(-292f, -325f))), -852f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> vec3<u32> {
    let var_0 = 1i;
    let var_1 = func_4(var_0, global2.www, select(select(select(!vec3<bool>(arg_0.x, global1.x, true), select(vec3<bool>(true, false, false), vec3<bool>(global1.x, arg_0.x, false), true), select(vec3<bool>(global1.x, global1.x, arg_0.x), vec3<bool>(true, true, global1.x), vec3<bool>(false, global1.x, true))), vec3<bool>(all(vec3<bool>(global1.x, global1.x, arg_0.x)), !arg_0.x, global1.x && global1.x), vec3<bool>(true, true, true)), !func_2(Struct_5(vec4<i32>(19993i, 35795i, u_input.e.x, 10208i), arg_0, global2.wy, vec2<i32>(0i, 31148i)), reverseBits(vec3<u32>(0u, 4294967295u, global2.x))), !select(vec3<bool>(false, global1.x, true), select(vec3<bool>(global1.x, arg_0.x, global1.x), vec3<bool>(global1.x, arg_0.x, false), vec3<bool>(true, global1.x, global1.x)), vec3<bool>(global1.x, false, arg_0.x))), Struct_5(~vec4<i32>(~16072i, var_0 | -56516i, -48823i, u_input.a.x), arg_0, vec2<u32>(1u, 1u), ~u_input.e.zy));
    let var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -45713i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0, 41045i), u_input.a.yx)), _wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(var_0, u_input.e.x), 78287i), _wgslsmith_dot_vec2_i32(select(u_input.a.yz, vec2<i32>(-1i, var_0), arg_0), ~u_input.e.zz), min(select(var_0, var_0, arg_0.x), var_0)), -(~_wgslsmith_add_vec4_i32(vec4<i32>(3358i, 2147483647i, var_0, u_input.e.x), vec4<i32>(u_input.e.x, 2147483647i, u_input.e.x, u_input.e.x))), ~(~vec4<i32>(u_input.e.x, u_input.e.x, var_0, -21482i)) & vec4<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-42759i, 10289i), vec2<i32>(u_input.e.x, -9286i)), 21832i, _wgslsmith_sub_i32(13624i, -5481i))), abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, -26803i, 29670i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, u_input.a.x, 15611i, -56499i), vec4<i32>(-7465i, 24583i, 28255i, -2147483647i))), (vec4<i32>(-1i, var_0, -25919i, -2147483647i) << (vec4<u32>(u_input.b, global2.x, u_input.b, 1u) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, 1u, global2.x, u_input.c) % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1490i, -2836i, 2147483647i, -2147483647i), vec4<i32>(u_input.e.x, u_input.e.x, 5359i, u_input.e.x))))));
    global3 = false;
    let var_3 = var_2.x;
    return ~global2.wxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~(~global2.zxy), global2.wxy & func_1(vec2<bool>(true, true), -704f));
    var var_1 = -firstTrailingBit(u_input.a);
    var var_2 = ~vec2<i32>(16657i << (u_input.d % 32u), 0i);
    var_1 = u_input.a;
    var_0 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-324f, vec3<u32>(global2.x, 4294967295u, ~(~51014u)) ^ countOneBits(~(global2.xyx | vec3<u32>(43u, global2.x, 4294967295u))), _wgslsmith_f_op_f32(func_4(1i, vec3<u32>(u_input.b, 0u, _wgslsmith_sub_u32(122097u, 99732u)), !vec3<bool>(global1.x, global1.x, global1.x), Struct_5(reverseBits(vec4<i32>(28988i, var_2.x, 60719i, u_input.a.x)), vec2<bool>(false, global1.x), global2.xw, u_input.e.yz | u_input.a.zz)).a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(897f * 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, -1183f, 887f, _wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_clamp_vec2_u32(global2.xx, _wgslsmith_sub_vec2_u32(vec2<u32>(25252u, u_input.b) ^ ~vec2<u32>(global2.x, 67743u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(77807u, 38137u), global2.yx)), ~global2.zw));
}

