struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: Struct_2 = Struct_2(53788i, -970f, vec3<f32>(-170f, -1394f, -839f), 0u);

var<private> global3: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(14188u, 4294967295u, 20914u, 14095u), vec4<u32>(4294967295u, 0u, 4294967295u, 54265u), vec4<u32>(67693u, 7477u, 8447u, 0u), vec4<u32>(1u, 0u, 0u, 43134u), vec4<u32>(4294967295u, 4294967295u, 6031u, 1u), vec4<u32>(1u, 16052u, 1u, 9071u), vec4<u32>(0u, 0u, 0u, 20777u), vec4<u32>(18819u, 0u, 4294967295u, 51671u), vec4<u32>(4858u, 1u, 35695u, 38906u), vec4<u32>(66823u, 29641u, 0u, 0u), vec4<u32>(1u, 0u, 110361u, 101172u));

var<private> global4: array<Struct_2, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    var var_0 = 395f;
    var var_1 = _wgslsmith_f_op_f32(sign(global2.c.x));
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.b.xx, vec2<u32>(0u, _wgslsmith_mult_u32(0u, u_input.c))), ~(~(47449u & global0.b.x))), _wgslsmith_mod_u32(global0.b.x, global2.d << (~global0.b.x % 32u)), 4294967295u);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b * global2.c.x) + -688f)))))));
    global0 = Struct_1(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), ~vec3<u32>(_wgslsmith_clamp_u32(~4294967295u, 1u, abs(u_input.c)), 4294967295u, var_2.x));
    return -260f;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = global0.a.xxz;
    let var_1 = global0.a;
    global3 = array<vec4<u32>, 11>();
    var var_2 = ~u_input.e.xzw;
    let var_3 = Struct_2(~(_wgslsmith_mult_i32(-2147483647i, 1i) | global2.a), _wgslsmith_div_f32(1349f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b), 824f, var_0.x))))), vec3<f32>(1131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(546f * global2.b), _wgslsmith_f_op_f32(-global2.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(594f)) * _wgslsmith_div_f32(-678f, -630f))), _wgslsmith_f_op_f32(f32(-1f) * -141f)), ~arg_1.x);
    return Struct_2(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) - -955f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -809f), -717f)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, ~global1.x, global0.b.x >> (31802u % 32u)), vec3<u32>(max(global2.d, global0.b.x), firstLeadingBit(48293u), abs(u_input.c))), arg_1));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1.c + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(exp2(global2.c)))))));
    var var_1 = abs(max(2147483647i, _wgslsmith_mod_i32(14063i, ~(-47878i))));
    let var_2 = arg_1;
    global1 = vec2<u32>(~(global2.d << (~(~var_2.d) % 32u)), global1.x);
    var var_3 = var_0.x;
    return select(select(select(vec4<bool>(!global0.a.x, true, true, false), select(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), select(global0.a, global0.a, vec4<bool>(true, global0.a.x, global0.a.x, false)), global0.a), vec4<bool>(true, true, true, any(vec2<bool>(true, global0.a.x)))), global0.a, true), !(!(!vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-308f * _wgslsmith_f_op_f32(-arg_2.x)))) <= var_2.b);
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    global4 = array<Struct_2, 3>();
    let var_0 = select(~global3[_wgslsmith_index_u32(~64148u, 11u)], min(firstTrailingBit(global3[_wgslsmith_index_u32(0u, 11u)]), vec4<u32>(global2.d & ~global1.x, 41637u, 41246u, u_input.c)), vec4<bool>(global0.a.x, false, false, global0.a.x));
    let var_1 = ~max(1u, global0.b.x);
    let var_2 = _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.x), global2.b) * -1157f)) >= arg_0.b;
    let var_3 = Struct_1(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(312f, global2.c.x, 1231f), vec3<f32>(arg_0.b, arg_0.b, -575f)))) + arg_0.c), func_2(!select(global0.a.yz, global0.a.ww, vec2<bool>(var_2, global0.a.x)), abs(vec3<u32>(global1.x, 23054u, u_input.c)) | ~global0.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, -303f, 1076f) * vec4<f32>(arg_0.c.x, global2.b, global2.b, -697f)))))), min(max(~global0.b, var_0.xyz) >> (var_0.yxz % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global0.b.x, global0.b.x), vec2<u32>(0u, 68059u), false), ~vec2<u32>(4294967295u, 30860u)), firstLeadingBit(0u), max(21638u, 43837u) << (u_input.c % 32u))));
    return vec4<bool>(!all(func_4(vec3<f32>(2271f, arg_0.b, 1449f), func_2(vec2<bool>(false, global0.a.x), var_3.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(1500f, global2.b, arg_0.c.x, 542f) * vec4<f32>(global2.b, 1018f, global2.c.x, -218f))).yzw), 1000f < arg_0.c.x, !global0.a.x != ((var_3.a.x != global0.a.x) == var_2), global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-102f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1485f, global2.c.x)), -635f, !global0.a.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, -273f, -441f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2.c), global2.c)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-303f, global2.b, 1162f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.b, global2.b, global2.b), vec3<f32>(global2.b, global2.b, 1353f))), true)))), 31402u);
    global2 = global4[_wgslsmith_index_u32(0u, 3u)];
    var var_1 = Struct_1(!select(vec4<bool>(any(global0.a.zz), global0.a.x, -254f == global2.b, false), global0.a, func_1(var_0)), ~vec3<u32>(global2.d, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.b, global0.b), global2.d), ~_wgslsmith_sub_u32(4294967295u, global2.d)));
    var var_2 = Struct_2(~_wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, -1i), -u_input.b.x) >> (~u_input.c % 32u), global2.b, var_0.c, global1.x);
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-628f - var_0.c.x), var_0.b, _wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(trunc(1241f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), -298f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + var_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-404f, -488f, -254f, var_2.c.x), vec4<f32>(-1684f, global2.b, -955f, var_2.b))))));
    var_1 = Struct_1(!(!vec4<bool>(true, true, func_1(var_0).x, var_1.a.x)), _wgslsmith_clamp_vec3_u32(select(~min(vec3<u32>(1u, global0.b.x, var_2.d), var_1.b), _wgslsmith_div_vec3_u32(select(vec3<u32>(global2.d, var_2.d, 19329u), vec3<u32>(775u, 23301u, global0.b.x), vec3<bool>(true, global0.a.x, true)), select(vec3<u32>(global1.x, 4294967295u, global2.d), vec3<u32>(15991u, global1.x, var_1.b.x), var_1.a.x)), global0.a.x), vec3<u32>(~123301u, select(firstLeadingBit(0u), 60505u, var_1.a.x | true), reverseBits(2329u)), ~global0.b));
    var var_5 = Struct_1(!vec4<bool>(false, var_1.a.x, var_1.a.x, false), vec3<u32>(select(0u, ~(~12703u), var_1.a.x), global0.b.x, 4294967295u));
    global3 = array<vec4<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, var_0.c.x, -105f, 181f))) + _wgslsmith_f_op_vec4_f32(var_4 + vec4<f32>(2397f, var_2.c.x, 243f, 342f))))), _wgslsmith_f_op_f32(exp2(var_2.c.x)), vec3<u32>(0u ^ global0.b.x, 36731u, ~abs(1u)));
}

