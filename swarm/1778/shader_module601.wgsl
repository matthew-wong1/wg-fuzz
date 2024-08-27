struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_2(true, 737f, vec3<i32>(-48226i, u_input.a.x, u_input.a.x));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 1022f, _wgslsmith_f_op_f32(ceil(-1131f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 1113f, var_0.b, 1315f), vec4<f32>(-2418f, var_0.b, -1515f, 1260f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1043f, global0.x, var_0.b, 225f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(880f, 1335f, 152f, 1124f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-645f, global0.x, 1118f, global0.x), vec4<f32>(global0.x, -1095f, var_0.b, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, -1401f) - vec4<f32>(global0.x, -499f, 625f, var_0.b)))), select(select(vec4<bool>(false, var_0.a, true, true), vec4<bool>(false, false, var_0.a, arg_0), vec4<bool>(false, true, false, false)), vec4<bool>(var_0.a, arg_0, arg_0, true), false)))));
    let var_1 = ~firstTrailingBit(_wgslsmith_sub_i32(max(var_0.c.x, reverseBits(u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 0i)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, var_0.b)), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(step(-1501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), 998f));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2639f, 1053f));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<bool> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * 1472f), _wgslsmith_f_op_f32(f32(-1f) * -866f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(2455f + 486f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-502f + -656f), arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1823f))) * _wgslsmith_f_op_f32(ceil(-760f)))), 1134f);
    let var_0 = arg_3.x;
    global0 = vec4<f32>(global0.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-518f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, global0.x, arg_1, 336f), vec4<f32>(arg_1, global0.x, 1327f, -731f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_1, -1000f, arg_1)), select(false, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-105f, -807f, 240f, global0.x) - vec4<f32>(arg_1, arg_1, arg_1, arg_1))), vec4<bool>(true, true, true, true)))))));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2.a & arg_2.a, vec4<u32>(arg_3.x, 1u, 1u, 0u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(103538u, 23343u, 1u, arg_2.a.x), select(vec4<u32>(arg_3.x, arg_3.x, arg_2.a.x, u_input.c), arg_2.a, vec4<bool>(false, false, false, true))) % vec4<u32>(32u)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, arg_3.x, arg_3.x), vec4<u32>(arg_2.a.x, 7212u, u_input.b, arg_2.a.x), arg_2.a) << (~arg_2.a % vec4<u32>(32u)))), u_input.a.x);
    return vec4<bool>(true, true, true, true);
}

fn func_1(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = vec4<bool>(any(select(func_2(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-global0.x), Struct_1(vec4<u32>(0u, arg_0.x, 9907u, u_input.b), u_input.a.x), ~arg_0.wzx), vec4<bool>(true, arg_0.x <= 1u, true, true), func_2(~u_input.a.ww, 1576f, Struct_1(arg_0, u_input.a.x), vec3<u32>(1u, 67205u, u_input.b)))), func_2(-(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 8444i), u_input.a.zx) << (countOneBits(vec2<u32>(arg_0.x, u_input.c)) % vec2<u32>(32u))), global0.x, Struct_1(arg_0, u_input.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, u_input.c), arg_0.xxx << (arg_0.xzw % vec3<u32>(32u))) << (arg_0.zyy % vec3<u32>(32u))).x, true, true);
    let var_1 = Struct_1(arg_0, countOneBits(u_input.a.x));
    var var_2 = Struct_2(!var_0.x, 757f, -vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.b, u_input.a.x), vec3<i32>(-32589i, -1i, var_1.b)), _wgslsmith_dot_vec3_i32(u_input.a.ywy, u_input.a.wwz)) >> (vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_0.ww, arg_0.yz), ~9763u, ~arg_0.x) % vec3<u32>(32u)));
    var_2 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - 476f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1172f))))), _wgslsmith_div_vec3_i32(-(~(~u_input.a.zyz)), ~firstTrailingBit(vec3<i32>(25891i, 2147483647i, -22893i)) >> (vec3<u32>(countOneBits(arg_0.x), 4294967295u, 51982u >> (1u % 32u)) % vec3<u32>(32u))));
    let var_3 = 2147483647i;
    return max(abs(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(var_1.b, -1i)), ~var_3, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-reverseBits(var_1.b), _wgslsmith_div_i32(abs(var_3), var_1.b), -55713i), vec3<i32>(~var_2.c.x, -u_input.a.x, firstLeadingBit(2147483647i)) ^ vec3<i32>(2147483647i, ~12598i, _wgslsmith_mult_i32(0i, 1i))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> vec4<f32> {
    let var_0 = !func_2(reverseBits(min(vec2<i32>(arg_0.c.x, u_input.a.x), vec2<i32>(-1i, 10075i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f - _wgslsmith_f_op_f32(-arg_0.b))), Struct_1(~(vec4<u32>(u_input.c, u_input.b, 4294967295u, u_input.b) ^ vec4<u32>(0u, 29805u, 66447u, 5130u)), 1993i), ~(~(~vec3<u32>(u_input.c, 94505u, u_input.b)))).wyy;
    let var_1 = Struct_1(vec4<u32>(0u, 11150u, ~(~u_input.b), 1u), select(abs(u_input.a.x) >> (72267u % 32u), func_1(abs(vec4<u32>(u_input.c, 0u, u_input.b, u_input.b))).x, _wgslsmith_f_op_f32(-arg_1) <= arg_0.b) << (abs(4294967295u) % 32u));
    var var_2 = _wgslsmith_div_u32(4294967295u, 11495u);
    let var_3 = select(~((var_1.a.x & (u_input.b & 4294967295u)) & var_1.a.x), firstTrailingBit(var_1.a.x), !(1000f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f * arg_1) - _wgslsmith_f_op_f32(999f - global0.x))));
    let var_4 = var_1;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -263f) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-576f - arg_0.b)))), 1185f, arg_1, _wgslsmith_f_op_f32(-534f + _wgslsmith_f_op_f32(1431f * _wgslsmith_f_op_f32(min(arg_0.b, 772f))))) + vec4<f32>(global0.x, 1829f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1286f) * _wgslsmith_f_op_f32(trunc(global0.x))), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(select(false, true, false), _wgslsmith_div_f32(global0.x, global0.x), func_1(vec4<u32>(11379u, 7602u, u_input.c, u_input.b))), -1079f, vec2<bool>(true, true)))));
    let var_0 = vec4<i32>(u_input.a.x, 4370i, 0i, reverseBits(-firstTrailingBit(41641i)));
    var var_1 = u_input.a.zzz;
    let var_2 = 939f;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(global0.x, -1644f)), 1000f > var_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -795f), 2065f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))) * _wgslsmith_f_op_vec2_f32(global0.zw + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(199f, global0.x) * global0.wz), _wgslsmith_f_op_vec2_f32(select(global0.wx, vec2<f32>(global0.x, global0.x), vec2<bool>(false, true))))))), select(true, all(vec2<bool>(true, true)) | (all(vec2<bool>(true, false)) || true), !(false || all(vec2<bool>(true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, firstLeadingBit(u_input.b), false), vec3<u32>(_wgslsmith_add_u32(~(~1u), _wgslsmith_sub_u32(u_input.c, u_input.b) << (4294967295u % 32u)), ~83832u, abs(u_input.b)));
}

