struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<vec2<bool>, 9>;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~4294967295u), u_input.c), u_input.c.x);
    var var_1 = true;
    var var_2 = 16787u;
    var var_3 = select(vec2<i32>(-1i) * -(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 0i)), arg_0.xz, select(!select(vec2<bool>(global2.c.d.x, global2.c.d.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, global2.b.x), vec3<u32>(u_input.c.x, 750u, 1u)), 9u)], !global2.c.d.x), vec2<bool>(all(vec3<bool>(global2.c.d.x, global2.c.d.x, true)) | true, global2.c.d.x), true));
    global0 = array<u32, 8>();
    return _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c.x, 74312u), 4294967295u ^ (43475u | _wgslsmith_dot_vec2_u32(~vec2<u32>(59904u, global2.b.x), vec2<u32>(1u, 1u))), reverseBits(0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> Struct_2 {
    global2 = Struct_3(_wgslsmith_f_op_f32(-arg_0.b.x), max(global2.b, firstTrailingBit((vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 1u, 19810u) >> (global2.b % vec3<u32>(32u))) << (global2.b % vec3<u32>(32u)))), Struct_1(~(~5483u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1188f + 818f), _wgslsmith_f_op_f32(trunc(arg_0.b.x)))), func_3(_wgslsmith_sub_vec3_i32(u_input.b, u_input.a.xyw)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.c.c, 5360u, arg_0.c), vec4<u32>(global2.c.a, global2.b.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u)) % 32u), vec2<bool>(false, false)));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1056f)), _wgslsmith_f_op_f32(min(-388f, 397f)), arg_1.x))));
    let var_1 = arg_1.x;
    global0 = array<u32, 8>();
    global1 = array<vec2<bool>, 9>();
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.x, 1000f, global2.c.b.x, var_0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1845f, 445f, 1125f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, 714f, 1616f, 361f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(228f, 525f, arg_0.b.x, 1206f) - vec4<f32>(var_0, -665f, arg_0.b.x, arg_0.b.x)) + vec4<f32>(-783f, -676f, -2020f, var_0)))), arg_0, Struct_1(~0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1769f, -666f)) - _wgslsmith_f_op_f32(-252f + global2.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + 123f))), global0[_wgslsmith_index_u32(countOneBits(4294967295u), 8u)], global2.c.d), select(!(!(!vec4<bool>(false, false, global2.c.d.x, arg_1.x))), vec4<bool>(true, global2.c.d.x, !select(global2.c.d.x, arg_1.x, var_1), true), false), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-108f - 1000f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-432f, 1571f))))), -450f, -693f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_4) -> u32 {
    global1 = array<vec2<bool>, 9>();
    let var_0 = reverseBits(0i << (arg_3.c.c.c % 32u));
    var var_1 = global2.c.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(778f - 1f), func_2(Struct_1(global2.c.c, arg_0.b, global2.c.a, arg_1.c.d), !vec2<bool>(true, arg_1.c.d.x), func_2(Struct_1(1u, arg_1.e.yz, 58590u, arg_0.d), vec2<bool>(true, false), arg_0.c).c.a).a.x, ~arg_0.c != ~0u)))));
    global2 = arg_3.a;
    return global2.b.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>) -> vec4<f32> {
    let var_0 = global2.c;
    global1 = array<vec2<bool>, 9>();
    var var_1 = vec4<bool>(select(false, 0u > func_4(Struct_1(u_input.c.x, vec2<f32>(-644f, 279f), 43864u, global2.c.d), func_2(Struct_1(var_0.a, vec2<f32>(global2.a, 1000f), 7078u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28082u, 8u)], 9u)]), global1[_wgslsmith_index_u32(var_0.a, 9u)], arg_1), func_2(Struct_1(global2.b.x, vec2<f32>(var_0.b.x, global2.c.b.x), arg_0.x, var_0.d), var_0.d, 37681u).d, Struct_4(Struct_3(global2.c.b.x, vec3<u32>(10168u, 4294967295u, 10253u), Struct_1(14285u, var_0.b, 21987u, vec2<bool>(false, global2.c.d.x))), vec2<bool>(var_0.d.x, var_0.d.x), Struct_2(vec4<f32>(-703f, 977f, -545f, 974f), Struct_1(global0[_wgslsmith_index_u32(1u, 8u)], vec2<f32>(global2.a, 1107f), 0u, vec2<bool>(true, global2.c.d.x)), Struct_1(1u, var_0.b, 47710u, global1[_wgslsmith_index_u32(arg_1, 9u)]), vec4<bool>(var_0.d.x, false, true, false), vec3<f32>(743f, global2.c.b.x, 1352f)), var_0.b)), global2.c.d.x), false, func_2(Struct_1(~_wgslsmith_dot_vec2_u32(arg_0.yx, vec2<u32>(54394u, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.c.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, -1252f))), ~var_0.c << (min(global2.b.x, 84205u) % 32u), select(vec2<bool>(true, arg_2.x), vec2<bool>(false, false), !var_0.d.x)), func_2(Struct_1(global2.b.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.x, -683f))), arg_0.x, vec2<bool>(true, arg_2.x)), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global2.b, global2.b), _wgslsmith_add_vec3_u32(arg_0, arg_0))).b.d, _wgslsmith_mult_u32(global2.c.c | ~0u, min(global0[_wgslsmith_index_u32(arg_1, 8u)], 1u))).b.d.x, func_2(func_2(Struct_1(4294967295u ^ global2.c.a, vec2<f32>(948f, -1146f), arg_0.x & global2.b.x, select(vec2<bool>(global2.c.d.x, false), arg_2, arg_2.x)), arg_2, ~max(u_input.c.x, global2.c.a)).b, arg_2, ~(~_wgslsmith_dot_vec2_u32(u_input.c, global2.b.zx))).d.x);
    let var_2 = u_input.b.x;
    var var_3 = 1i;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.c.b.x)), var_0.b.x, _wgslsmith_f_op_f32(-356f - _wgslsmith_f_op_f32(trunc(782f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1260f))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(global2.a)), global2.c.b.x, _wgslsmith_f_op_f32(535f * func_2(Struct_1(u_input.c.x, var_0.b, arg_0.x, vec2<bool>(true, var_0.d.x)), global1[_wgslsmith_index_u32(11757u, 9u)], 71596u).b.b.x), global2.a)), vec4<f32>(-1000f, 299f, var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.b.x, 295f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-737f, global2.a)))))));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = countOneBits(vec3<u32>(u_input.c.x, ~2763u, ~(~arg_0.a.c.c)));
    var var_1 = global2.c.a ^ ~(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(global2.c.c, 7415u)));
    var var_2 = global0[_wgslsmith_index_u32(~(~56669u), 8u)];
    var_2 = 73260u;
    global2 = Struct_3(global2.c.b.x, max(vec3<u32>(1u, _wgslsmith_div_u32(50167u, 20393u) ^ (0u >> (u_input.c.x % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 10486u, 4294967295u), _wgslsmith_clamp_vec3_u32(var_0, global2.b, global2.b))), ~arg_0.a.b & vec3<u32>(firstTrailingBit(15511u), ~0u, ~1u)), global2.c);
    return arg_0.c.b;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    var var_0 = countOneBits(~max(-42356i, u_input.b.x)) ^ 23097i;
    var_0 = ~(-u_input.b.x);
    global1 = array<vec2<bool>, 9>();
    var var_1 = max(_wgslsmith_sub_u32(arg_0.a, arg_0.c), u_input.c.x);
    var_0 = (_wgslsmith_dot_vec2_i32(u_input.b.yz, -vec2<i32>(-2147483647i, 26999i)) | select(-7157i, u_input.a.x, true)) & u_input.b.x;
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_1(select(max(global2.b, vec3<u32>(19321u, 17437u, global0[_wgslsmith_index_u32(31757u, 8u)])), firstTrailingBit(vec3<u32>(29196u, global2.c.c, global0[_wgslsmith_index_u32(20577u, 8u)])), vec3<bool>(arg_0.d.x, global2.c.d.x, arg_0.d.x)), 1u, vec2<bool>(global2.c.d.x, true))).x, -1178f)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), abs(u_input.c)), 8u)]), global2.b), global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_5(Struct_4(Struct_3(1702f, global2.b, Struct_1(1u, vec2<f32>(223f, global2.c.b.x), u_input.c.x, vec2<bool>(global2.c.d.x, global2.c.d.x))), vec2<bool>(false, true), Struct_2(_wgslsmith_f_op_vec4_f32(func_1(global2.b, global0[_wgslsmith_index_u32(global2.b.x, 8u)], vec2<bool>(global2.c.d.x, global2.c.d.x))), func_2(Struct_1(global0[_wgslsmith_index_u32(global2.b.x, 8u)], vec2<f32>(global2.a, global2.c.b.x), 24854u, global1[_wgslsmith_index_u32(4294967295u, 9u)]), global2.c.d, global2.c.a).b, global2.c, func_2(global2.c, vec2<bool>(global2.c.d.x, global2.c.d.x), 35524u).d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, -301f, -934f), vec3<f32>(512f, global2.c.b.x, global2.c.b.x), false))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-554f, global2.a)))))));
    let var_0 = func_2(func_5(Struct_4(Struct_3(_wgslsmith_f_op_f32(select(861f, 672f, true)), ~vec3<u32>(1u, 124715u, 4294967295u), func_5(Struct_4(Struct_3(-852f, global2.b, global2.c), global1[_wgslsmith_index_u32(1017u, 9u)], Struct_2(vec4<f32>(379f, global2.a, 937f, -864f), global2.c, Struct_1(4763u, vec2<f32>(global2.c.b.x, 1363f), global2.b.x, global2.c.d), vec4<bool>(global2.c.d.x, global2.c.d.x, false, global2.c.d.x), vec3<f32>(global2.a, global2.c.b.x, -1000f)), global2.c.b))), vec2<bool>(!global2.c.d.x, func_5(Struct_4(Struct_3(global2.a, vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(905u, 8u)]), global2.c), global2.c.d, Struct_2(vec4<f32>(-250f, global2.c.b.x, 1496f, global2.c.b.x), global2.c, Struct_1(u_input.c.x, vec2<f32>(global2.a, 962f), u_input.c.x, vec2<bool>(global2.c.d.x, global2.c.d.x)), vec4<bool>(global2.c.d.x, false, global2.c.d.x, global2.c.d.x), vec3<f32>(755f, 834f, global2.a)), global2.c.b)).d.x), Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(308f, global2.c.b.x, -1004f, 1407f), vec4<f32>(1661f, global2.a, global2.c.b.x, global2.c.b.x))), func_6(Struct_1(global2.b.x, global2.c.b, 20917u, vec2<bool>(global2.c.d.x, global2.c.d.x))).c, global2.c, select(vec4<bool>(global2.c.d.x, true, false, global2.c.d.x), vec4<bool>(global2.c.d.x, global2.c.d.x, global2.c.d.x, true), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -1000f, global2.c.b.x))), vec2<f32>(_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(global2.b.x, 100579u, global0[_wgslsmith_index_u32(23753u, 8u)]), global0[_wgslsmith_index_u32(u_input.c.x, 8u)], vec2<bool>(true, global2.c.d.x))).x, _wgslsmith_f_op_f32(f32(-1f) * -990f)))), select(func_2(func_6(global2.c).c, vec2<bool>(any(vec3<bool>(false, false, true)), false), ~_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(121538u, 8u)])).c.d, vec2<bool>(global2.c.d.x, any(global2.c.d)), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, func_3(u_input.a.zzz)), 9u)]), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_sub_u32((global2.b.x ^ 27597u) ^ global0[_wgslsmith_index_u32(18509u, 8u)], ~(~global2.c.a))));
    global2 = func_6(global2.c);
    var var_1 = !select(func_2(global2.c, vec2<bool>(true, true), _wgslsmith_div_u32(select(0u, 4294967295u, false), u_input.c.x)).b.d, func_2(func_2(func_6(var_0.b).c, !vec2<bool>(true, global2.c.d.x), 0u).c, !global1[_wgslsmith_index_u32(u_input.c.x >> (var_0.c.a % 32u), 9u)], var_0.b.a).c.d, func_2(global2.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, global2.b.yy) & ~var_0.c.c, 9u)], func_5(Struct_4(Struct_3(var_0.b.b.x, vec3<u32>(global2.b.x, var_0.c.a, 27570u), Struct_1(u_input.c.x, var_0.a.ww, var_0.b.c, global1[_wgslsmith_index_u32(u_input.c.x, 9u)])), var_0.d.zw, Struct_2(var_0.a, Struct_1(4294967295u, vec2<f32>(var_0.e.x, -1000f), 1526u, global1[_wgslsmith_index_u32(1u, 9u)]), var_0.c, vec4<bool>(false, true, true, false), vec3<f32>(227f, var_0.b.b.x, 1216f)), vec2<f32>(var_0.a.x, -740f))).c).c.d);
    let var_2 = var_0.c;
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, -1i) | u_input.b.x, ~((firstLeadingBit(2855i) ^ _wgslsmith_sub_i32(u_input.b.x, -70080i)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, global2.b.zz), select(u_input.c, u_input.c, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a, 8u)], 9u)])) % 32u)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0.e.x, true)), var_0.c.b.x, ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.c.a, u_input.c.x, 5763u, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]) >> (vec4<u32>(u_input.c.x, var_2.a, 4294967295u, global0[_wgslsmith_index_u32(var_2.a, 8u)]) % vec4<u32>(32u)), ~vec4<u32>(36877u, var_0.c.a, 1u, 4294967295u))), _wgslsmith_mult_i32(-42818i, -firstLeadingBit(~var_3)));
}

