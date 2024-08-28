struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-1000f), Struct_1(914f), Struct_1(-754f), Struct_1(-1481f), Struct_1(-1028f), Struct_1(-1516f), Struct_1(-565f), Struct_1(1175f), Struct_1(370f), Struct_1(792f), Struct_1(2264f), Struct_1(-1490f), Struct_1(1423f), Struct_1(1141f), Struct_1(2217f), Struct_1(1697f), Struct_1(-1734f), Struct_1(375f), Struct_1(-1237f), Struct_1(827f), Struct_1(-418f), Struct_1(1000f), Struct_1(-1000f), Struct_1(360f));

var<private> global1: Struct_1;

var<private> global2: vec3<i32> = vec3<i32>(54709i, 1i, 63476i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global0 = array<Struct_1, 24>();
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(_wgslsmith_clamp_u32(1u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.d, 22836u), vec3<u32>(u_input.c, 4294967295u, 27666u))) ^ (u_input.c & _wgslsmith_mult_u32(1u, 7488u))), 30667u), 24u)];
    let var_0 = max(u_input.d, ~11565u);
    var var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(var_0, 24u)];
    return ~max(~firstTrailingBit(vec2<u32>(4509u, 32489u)), vec2<u32>(1u, var_0));
}

fn func_2(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global1.a));
    var var_1 = global0[_wgslsmith_index_u32(1u, 24u)];
    var var_2 = min(-vec2<i32>(31940i, firstLeadingBit(2147483647i)), ~(-u_input.b) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.x, 1u), func_3(true)) % vec2<u32>(32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(-688f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-443f - -800f)), _wgslsmith_f_op_f32(var_0.a - 960f))), true)));
    var_3 = global0[_wgslsmith_index_u32(~4294967295u, 24u)];
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(~firstLeadingBit(arg_0.x), ~0u, 0u), ~arg_0.wwx);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_1 {
    global2 = arg_1;
    global0 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 898f) - vec2<f32>(global1.a, global1.a))) - vec2<f32>(1f, -1401f));
    let var_1 = firstLeadingBit(arg_2 ^ vec4<u32>(~35871u, _wgslsmith_dot_vec4_u32(arg_2, reverseBits(vec4<u32>(arg_0.x, 4294967295u, arg_2.x, 1384u))), select(42887u, 3768u, true) & 1u, ~(u_input.d >> (arg_2.x % 32u))));
    let var_2 = ~(~(func_3(true) ^ vec2<u32>(u_input.c, var_1.x)));
    return global0[_wgslsmith_index_u32(~var_2.x, 24u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a);
    var var_1 = arg_0;
    global2 = -(~(~abs(vec3<i32>(global2.x, u_input.a, 0i)) ^ vec3<i32>(-4740i, global2.x << (u_input.c % 32u), u_input.b.x)));
    let var_2 = arg_1;
    let var_3 = u_input.d & ~(~u_input.e | ~(~11834u));
    return func_4(_wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(4294967295u, 1u))), _wgslsmith_mod_vec2_u32(func_2(vec4<u32>(30170u, var_3, 4294967295u, 4294967295u)).zy >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(59949u, 47920u))))), _wgslsmith_div_vec3_i32(~(vec3<i32>(1i, u_input.b.x, u_input.b.x) >> (firstLeadingBit(vec3<u32>(0u, u_input.e, u_input.e)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), -(vec3<i32>(13812i, 2147483647i, global2.x) & vec3<i32>(-1i, 2147483647i, u_input.b.x)), firstTrailingBit(vec3<i32>(u_input.b.x, -2147483647i, -19242i)))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 11962u, u_input.e), vec3<u32>(u_input.c, u_input.d, u_input.d)), countOneBits(vec3<u32>(u_input.d, 0u, var_3))), vec3<u32>(_wgslsmith_mult_u32(1u, u_input.c), 107123u, ~0u)), ~(~var_3 | ~4294967295u), ~u_input.d, abs(_wgslsmith_clamp_u32(var_3, 4294967295u, 1u)) ^ ~(~var_3)));
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.d >> (~(~0u) % 32u);
    let var_1 = global0[_wgslsmith_index_u32(u_input.d, 24u)];
    let var_2 = Struct_1(global1.a);
    var var_3 = func_5(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - var_2.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-784f, 562f) + _wgslsmith_f_op_f32(abs(797f))))), func_4(vec2<u32>(abs(1u), ~var_0), -(vec3<i32>(-13638i, global2.x, 0i) >> (vec3<u32>(u_input.c, 0u, u_input.d) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, var_0) ^ vec3<u32>(var_0, var_0, var_0), func_2(vec4<u32>(u_input.d, u_input.d, 4294967295u, 4294967295u))) % vec3<u32>(32u)), select(~firstLeadingBit(vec4<u32>(84922u, 42440u, 66947u, 0u)), min(~vec4<u32>(0u, var_0, 1u, 0u), vec4<u32>(var_0, u_input.e, var_0, u_input.e)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))))));
    global2 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i, select(1i, 2147483647i, true) ^ _wgslsmith_div_i32(u_input.b.x, 0i), _wgslsmith_dot_vec2_i32(global2.xz, u_input.b ^ u_input.b))), vec3<i32>(global2.x, u_input.b.x, u_input.a) | reverseBits(vec3<i32>(global2.x >> (u_input.c % 32u), global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-43i, -1i), global2.yy))));
    return StorageBuffer(vec2<i32>(max(global2.x, u_input.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, 49173i, -45286i), _wgslsmith_add_vec3_i32(select(vec3<i32>(global2.x, 1i, 1i), vec3<i32>(u_input.a, global2.x, global2.x), vec3<bool>(false, true, true)), _wgslsmith_add_vec3_i32(vec3<i32>(23386i, u_input.a, global2.x), vec3<i32>(u_input.b.x, 2147483647i, -559i))))), u_input.c >> (~(~103812u & abs(var_0)) % 32u), vec2<u32>(func_3(false).x, ~(~_wgslsmith_add_u32(41163u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f) - global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-814f);
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.e, u_input.d), 24u)];
    global2 = _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -u_input.b.x, u_input.a, u_input.b.x), vec3<i32>(u_input.a, -7450i, 1i) ^ ~firstTrailingBit(reverseBits(vec3<i32>(global2.x, u_input.a, 9066i))));
    global0 = array<Struct_1, 24>();
    let var_0 = 558f;
    let x = u_input.a;
    s_output = func_1();
}

