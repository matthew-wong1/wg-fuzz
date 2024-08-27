struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(1000f, -1340f, -1449f), -424f, vec4<f32>(-1914f, -712f, 916f, 296f), i32(-2147483648));

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec3<i32>, 4>;

var<private> global3: u32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<i32> {
    let var_0 = ~1u;
    let var_1 = abs(firstLeadingBit(u_input.e ^ ~firstLeadingBit(vec2<u32>(4294967295u, u_input.b.x))));
    var var_2 = Struct_2(Struct_1(vec2<i32>(u_input.c.x, max(u_input.c.x, _wgslsmith_mod_i32(global0.e, -1i))), vec3<f32>(198f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(472f)))), -786f), global0.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.b.x)), 1826f, _wgslsmith_f_op_f32(-1000f + -563f), _wgslsmith_f_op_f32(select(543f, -329f, false))), global0.d), _wgslsmith_mod_i32(min(u_input.d, 43145i), u_input.d)), u_input.a.x, vec3<bool>(true, false, true), Struct_1(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(global0.d.zww, global0.d.yyy)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -538f, global0.b.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.zzz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(sign(885f)), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(global0.d, global0.d)))) * _wgslsmith_f_op_vec4_f32(-global0.d)), ~firstLeadingBit(16121i)));
    let var_3 = Struct_1(-_wgslsmith_div_vec2_i32(-(var_2.d.a & vec2<i32>(1i, -2147483647i)), select(abs(global0.a), u_input.c.xy, vec2<bool>(var_2.c.x, false))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.d.d.zyz))), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.a.d.x)), 2389f, global0.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.d.b.x * _wgslsmith_f_op_f32(-global0.d.x)))), global0.d, global0.e);
    var var_4 = Struct_2(Struct_1(~(-_wgslsmith_sub_vec2_i32(u_input.c.yz, var_2.d.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, global0.c, var_3.d.x)) + global0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1370f - -2156f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1107f, _wgslsmith_div_f32(1702f, global0.b.x), _wgslsmith_div_f32(-2685f, var_3.d.x), var_3.d.x) + global0.d), min(abs(6322i), global0.a.x)), var_0, !var_2.c, var_2.a);
    return ~(var_4.d.a & _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global0.a, vec2<i32>(2147483647i, 862i)) << (_wgslsmith_add_vec2_u32(u_input.b.wz, var_1) % vec2<u32>(32u)), vec2<i32>(1i, reverseBits(u_input.c.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = Struct_2(Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.x, 1627f, -283f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f * arg_0.d.x)))), global0.d, -(-68031i << (u_input.b.x % 32u))), _wgslsmith_div_u32(22087u, arg_2.b), arg_2.c, Struct_1(vec2<i32>(-1i, 1046i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(216f, arg_0.d.x)), _wgslsmith_f_op_f32(1153f + 442f), 1508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1726f), arg_2.a.d.x, 1000f, global0.c) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 1386f, arg_1.b.x, 724f)) - arg_2.a.d)), i32(-1i) * -firstTrailingBit(-714i)));
    global3 = ~u_input.a.x | ~arg_2.b;
    global2 = array<vec3<i32>, 4>();
    let var_1 = var_0;
    var var_2 = vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 76513u), _wgslsmith_dot_vec3_u32(u_input.a.wxw, select(vec3<u32>(var_0.b, 4294967295u, 0u), ~vec3<u32>(0u, var_1.b, 45195u), arg_2.c.x)) << (~(~21702u) % 32u), 1u);
    return !(all(select(arg_2.c, select(vec3<bool>(arg_2.c.x, false, var_0.c.x), var_0.c, var_0.c), arg_2.c)) || !select(true, 57273u <= u_input.e.x, true));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = true | (true || !(!(294f != global0.c)));
    let var_1 = u_input.b.x;
    let var_2 = !(!vec3<bool>(!func_2(arg_0, arg_0, Struct_2(Struct_1(vec2<i32>(0i, global0.e), arg_0.d.xzx, arg_0.c, vec4<f32>(global0.b.x, arg_0.b.x, -785f, arg_0.c), 1i), 26331u, vec3<bool>(true, true, false), arg_0)), (u_input.b.x >> (4294967295u % 32u)) != max(var_1, 26391u), !all(vec2<bool>(false, true))));
    global1 = 0i;
    let var_3 = _wgslsmith_f_op_f32(floor(1f));
    return !(!vec4<bool>(var_2.x, any(vec2<bool>(var_2.x, false)) && all(vec3<bool>(false, false, true)), select(true, var_3 > -1397f, any(vec2<bool>(var_2.x, false))), any(var_2) & true));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(-38903i, global0.e, firstLeadingBit(-1267i));
    var var_1 = Struct_2(arg_2.a, u_input.a.x, arg_0.xwx, Struct_1(vec2<i32>(-1i, -70938i), arg_2.d.b, -372f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2232f, global0.b.x, global0.c, arg_2.d.d.x) - global0.d)))), 1i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1717f, global0.c)) + _wgslsmith_f_op_f32(abs(741f)));
    global3 = ~(abs(26486u) | _wgslsmith_mult_u32(1u, min(abs(var_1.b), arg_2.b << (var_1.b % 32u))));
    var var_3 = arg_2.a;
    return Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))))), 342f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_1.d.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.d * vec4<f32>(-1000f, var_3.b.x, -654f, var_3.b.x)))))), -2147483647i);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = (reverseBits(_wgslsmith_add_u32(u_input.b.x << (u_input.b.x % 32u), ~u_input.e.x)) > u_input.e.x) | true;
    var var_1 = Struct_2(arg_0.d, min(0u, 3088u), select(select(!arg_0.c, select(select(arg_0.c, arg_0.c, var_0), !arg_0.c, select(vec3<bool>(true, false, false), vec3<bool>(arg_0.c.x, true, arg_0.c.x), arg_0.c)), true), vec3<bool>(any(arg_0.c.xy) || var_0, var_0, 1i == arg_1.x), func_2(arg_0.a, func_4(select(vec4<bool>(true, var_0, false, true), vec4<bool>(arg_0.c.x, arg_0.c.x, var_0, var_0), vec4<bool>(var_0, true, arg_0.c.x, arg_0.c.x)), all(arg_0.c), Struct_2(arg_0.a, 1u, vec3<bool>(arg_0.c.x, var_0, false), arg_0.a)), arg_0)), Struct_1(func_4(vec4<bool>(true, true, true, true), all(!vec4<bool>(false, true, false, var_0)), Struct_2(arg_0.d, ~u_input.e.x, select(vec3<bool>(arg_0.c.x, arg_0.c.x, var_0), vec3<bool>(true, arg_0.c.x, var_0), true), arg_0.a)).a, vec3<f32>(-181f, _wgslsmith_f_op_f32(f32(-1f) * -802f), arg_0.a.c), _wgslsmith_div_f32(586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f + global0.b.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -233f, global0.c, -1019f))))), ~_wgslsmith_dot_vec4_i32(reverseBits(arg_1), _wgslsmith_mult_vec4_i32(arg_1, vec4<i32>(-35580i, arg_0.d.a.x, 2147483647i, arg_0.d.a.x)))));
    var var_2 = var_1.d;
    return func_4(vec4<bool>(var_1.c.x, any(vec3<bool>(true, func_2(arg_0.a, Struct_1(var_2.a, vec3<f32>(-296f, 1000f, -1294f), -572f, vec4<f32>(var_2.c, -853f, -1298f, var_1.a.c), 1871i), Struct_2(Struct_1(arg_1.zy, arg_0.a.d.xxy, 1066f, vec4<f32>(var_1.a.c, global0.c, -290f, -1260f), u_input.c.x), 67049u, arg_0.c, arg_0.d)), var_0)), true, all(var_1.c.xy)), any(vec2<bool>(!arg_0.c.x, arg_0.b != arg_0.b)) | (max(-var_2.a.x, var_1.d.a.x & 8671i) <= countOneBits(1i)), Struct_2(Struct_1(arg_1.zw, _wgslsmith_f_op_vec3_f32(-global0.b), var_1.d.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1566f, arg_0.a.d.x, 1640f, var_2.d.x) + vec4<f32>(173f, 412f, -221f, -1063f)), global0.d, true)), 55212i), (0u >> (arg_0.b % 32u)) ^ ~var_1.b, select(vec3<bool>(arg_0.d.d.x == 1406f, any(vec4<bool>(arg_0.c.x, var_0, false, arg_0.c.x)), any(vec2<bool>(false, arg_0.c.x))), vec3<bool>(-1673f == var_1.a.c, false, var_0), var_1.c), func_4(vec4<bool>(any(vec4<bool>(var_0, var_0, true, arg_0.c.x)), true, true, true), arg_0.c.x, Struct_2(var_1.a, abs(7654u), select(arg_0.c, vec3<bool>(true, false, var_0), arg_0.c), Struct_1(vec2<i32>(10460i, -18424i), vec3<f32>(-361f, 435f, global0.b.x), -1279f, global0.d, u_input.c.x)))));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(select(select(select(vec4<bool>(arg_3.c.x, arg_3.c.x, false, arg_3.c.x), vec4<bool>(true, false, arg_3.c.x, arg_3.c.x), false), select(vec4<bool>(false, arg_3.c.x, true, arg_3.c.x), vec4<bool>(true, true, arg_3.c.x, arg_3.c.x), true), vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x, true)), func_1(func_4(vec4<bool>(true, true, false, arg_3.c.x), arg_3.c.x, Struct_2(arg_2, var_0.x, arg_3.c, Struct_1(vec2<i32>(arg_2.a.x, global0.a.x), vec3<f32>(arg_0, arg_1, 641f), 835f, vec4<f32>(global0.b.x, -1409f, arg_1, 854f), arg_2.a.x)))), !vec4<bool>(arg_3.c.x, false, true, arg_3.c.x)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(33216i, 2147483647i, global0.a.x, 1i), vec4<i32>(u_input.c.x, arg_3.a.a.x, u_input.c.x, u_input.c.x)), select(vec4<i32>(35953i, 811i, global0.e, global0.a.x), vec4<i32>(global0.e, 24512i, arg_3.d.e, 0i), vec4<bool>(true, true, true, arg_3.c.x))) != _wgslsmith_sub_i32(firstTrailingBit(u_input.c.x), u_input.d << (102677u % 32u)), arg_3).b.zz - arg_2.d.yz);
    global1 = abs(i32(-1i) * -global0.a.x);
    var_1 = vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-var_1.x));
    global0 = arg_2;
    return !vec4<bool>(true, arg_3.c.x, ~1u >= ~var_0.x, all(select(!vec3<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x), select(vec3<bool>(arg_3.c.x, arg_3.c.x, true), arg_3.c, arg_3.c), arg_3.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-10940i);
    var var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_div_f32(-634f, global0.c)))), global0.b.x, func_5(Struct_2(func_4(func_1(Struct_1(vec2<i32>(var_0, -1i), vec3<f32>(global0.d.x, -2056f, global0.d.x), global0.b.x, global0.d, -1i)), 1603f < global0.b.x, Struct_2(Struct_1(u_input.c.yx, vec3<f32>(global0.b.x, global0.b.x, -121f), global0.b.x, global0.d, -1i), 1u, vec3<bool>(true, true, true), Struct_1(u_input.c.xx, vec3<f32>(1000f, -535f, global0.d.x), -1891f, vec4<f32>(global0.d.x, 114f, global0.b.x, -1167f), 2147483647i))), ~44544u, vec3<bool>(true, true, true), Struct_1(vec2<i32>(var_0, 1i), global0.d.yxy, _wgslsmith_f_op_f32(f32(-1f) * -1037f), _wgslsmith_f_op_vec4_f32(-global0.d), var_0)), ~reverseBits(-vec4<i32>(-1i, -3076i, var_0, -20213i))), Struct_2(func_5(Struct_2(Struct_1(vec2<i32>(14787i, 2147483647i), global0.d.xxz, -1198f, vec4<f32>(1281f, -380f, 1647f, global0.c), var_0), _wgslsmith_clamp_u32(8519u, u_input.a.x, u_input.b.x), vec3<bool>(true, true, true), func_4(vec4<bool>(true, false, true, true), false, Struct_2(Struct_1(u_input.c.xx, vec3<f32>(-1982f, -159f, global0.b.x), global0.d.x, vec4<f32>(1132f, -740f, global0.b.x, -847f), 1i), u_input.a.x, vec3<bool>(true, true, true), Struct_1(vec2<i32>(global0.e, u_input.d), global0.d.xxw, -741f, vec4<f32>(global0.d.x, global0.d.x, -909f, global0.d.x), -2147483647i)))), ~(vec4<i32>(-1i, u_input.d, 1i, var_0) & vec4<i32>(global0.e, global0.e, u_input.c.x, var_0))), 4294967295u, vec3<bool>(!all(vec2<bool>(false, false)), !any(vec4<bool>(true, false, true, false)), global0.a.x <= ~global0.e), Struct_1(abs(countOneBits(global0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.d.xzw, global0.d.wwz, vec3<bool>(false, true, true)))), global0.c, vec4<f32>(1561f, -231f, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_mult_i32(max(u_input.d, -4613i), 94i))));
    global2 = array<vec3<i32>, 4>();
    global1 = firstTrailingBit(u_input.c.x);
    var var_2 = vec3<bool>(!(!(-692f <= global0.b.x)), var_1.x, func_1(func_4(vec4<bool>(select(var_1.x, true, false), -1097f < global0.d.x, true, false), func_2(Struct_1(vec2<i32>(1i, global0.a.x), vec3<f32>(global0.d.x, 998f, global0.b.x), global0.b.x, global0.d, var_0), func_4(vec4<bool>(var_1.x, true, var_1.x, false), false, Struct_2(Struct_1(u_input.c.yx, global0.b, 1475f, global0.d, 38642i), 74997u, vec3<bool>(false, true, false), Struct_1(vec2<i32>(5472i, 20356i), global0.b, global0.d.x, global0.d, u_input.d))), Struct_2(Struct_1(global0.a, vec3<f32>(global0.b.x, global0.b.x, global0.c), -670f, global0.d, -97923i), 37380u, vec3<bool>(true, false, true), Struct_1(vec2<i32>(0i, 2147483647i), vec3<f32>(-1558f, global0.c, -1797f), 2347f, vec4<f32>(-929f, global0.b.x, 693f, global0.b.x), -1i))), Struct_2(Struct_1(global0.a, global0.b, global0.b.x, vec4<f32>(global0.d.x, -515f, global0.d.x, global0.b.x), -1i), u_input.e.x, !var_1.xwx, Struct_1(vec2<i32>(0i, u_input.c.x), global0.d.zyy, -404f, global0.d, var_0)))).x);
    let var_3 = Struct_2(Struct_1(u_input.c.zy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1902f), _wgslsmith_f_op_f32(-global0.b.x)), vec3<f32>(global0.b.x, _wgslsmith_div_f32(397f, 1591f), 1f), var_1.x)), -832f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(848f, global0.b.x, global0.d.x, -622f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.d, global0.d)))), reverseBits(_wgslsmith_add_i32(6523i, 1i))), select(0u, u_input.a.x, func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-353f))), _wgslsmith_f_op_f32(f32(-1f) * -463f), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(trunc(global0.b)), 1904f, _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, global0.c, global0.d.x, 1231f), vec4<f32>(global0.b.x, 257f, global0.c, global0.b.x)), _wgslsmith_sub_i32(u_input.d, global0.a.x)), Struct_2(Struct_1(vec2<i32>(u_input.c.x, 34822i), global0.d.zwz, -2225f, global0.d, 0i), 4294967295u, var_1.xzy, func_4(vec4<bool>(var_2.x, true, true, var_1.x), var_1.x, Struct_2(Struct_1(vec2<i32>(-32928i, 2147483647i), vec3<f32>(global0.d.x, -951f, global0.c), global0.b.x, global0.d, -10958i), u_input.b.x, var_1.ywz, Struct_1(global0.a, global0.d.yzw, 1496f, vec4<f32>(1427f, 1680f, global0.d.x, global0.b.x), var_0))))).x), var_1.yyz, func_5(Struct_2(Struct_1(vec2<i32>(var_0, var_0), _wgslsmith_f_op_vec3_f32(global0.b - global0.b), _wgslsmith_f_op_f32(global0.d.x * global0.c), func_4(vec4<bool>(true, true, var_1.x, var_2.x), var_2.x, Struct_2(Struct_1(vec2<i32>(global0.e, global0.e), global0.b, 2225f, vec4<f32>(-398f, -749f, 1000f, global0.d.x), 1556i), 0u, var_1.yxz, Struct_1(u_input.c.xx, vec3<f32>(global0.c, global0.d.x, global0.d.x), global0.b.x, global0.d, 0i))).d, u_input.d >> (27902u % 32u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.b.x), abs(u_input.a.x)), !func_1(Struct_1(vec2<i32>(var_0, global0.e), global0.b, -1168f, global0.d, u_input.c.x)).wyx, Struct_1(vec2<i32>(1i, u_input.d) | global0.a, global0.b, global0.d.x, _wgslsmith_f_op_vec4_f32(-global0.d), global0.a.x)), -(vec4<i32>(18688i, -2147483647i, u_input.c.x, u_input.d) & vec4<i32>(global0.e, global0.a.x, u_input.d, 11203i))));
    global3 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(61686i), _wgslsmith_sub_vec3_i32(~(vec3<i32>(var_3.d.a.x, global0.e, u_input.d) | _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 4471i, 2147483647i), global2[_wgslsmith_index_u32(0u, 4u)])), vec3<i32>(~global0.e, -10817i, u_input.d) >> (vec3<u32>(~4294967295u, ~4294967295u, 0u) % vec3<u32>(32u))), -1190f);
}

