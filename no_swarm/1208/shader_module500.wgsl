struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<bool, 14>;

var<private> global3: vec3<bool>;

var<private> global4: vec4<f32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> f32 {
    global1 = select(~0i, -firstTrailingBit(select(~(-20210i), 1i, select(arg_1.d.x, global2[_wgslsmith_index_u32(arg_1.b.x, 14u)], true))), false);
    let var_0 = global4.x;
    let var_1 = Struct_2(!select(!select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 14u)], arg_1.d.x, false), vec3<bool>(arg_0.a, false, false), arg_1.d.x), vec3<bool>(!global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], any(vec3<bool>(global3.x, arg_1.d.x, arg_1.d.x))), any(select(vec4<bool>(global3.x, false, true, global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), vec4<bool>(false, true, false, arg_0.a), vec4<bool>(false, global3.x, false, arg_1.d.x)))), Struct_1(reverseBits(u_input.b.yxx), firstTrailingBit(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(4327u, 22163u, arg_1.b.x), arg_1.b, vec3<bool>(false, arg_1.d.x, true)), abs(vec3<u32>(1u, u_input.b.x, 43405u)), arg_1.a)), abs(abs(1u)), vec2<bool>(true, all(vec3<bool>(true, false, true)) | !global3.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global4.x), global4.x, _wgslsmith_f_op_f32(-106f + -1076f)), _wgslsmith_f_op_vec3_f32(global4.xxw - vec3<f32>(512f, _wgslsmith_f_op_f32(1093f + global4.x), global4.x)), global2[_wgslsmith_index_u32(arg_1.a.x, 14u)])), global4.x);
    global2 = array<bool, 14>();
    global2 = array<bool, 14>();
    return 507f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = Struct_4(false);
    global0 = array<Struct_3, 8>();
    let var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(reverseBits(~(-26397i)), 1i), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2718i, 0i), ~vec3<i32>(9831i, 56087i, 1i), vec3<i32>(1i, 1i, 1i)), -(~vec3<i32>(-9018i, -42237i, 0i)))));
    var var_2 = vec2<i32>(2147483647i, -var_1.x);
    var var_3 = true;
    return true;
}

fn func_2() -> Struct_2 {
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(global4.x * global4.x), _wgslsmith_f_op_f32(floor(208f)), global4.x))));
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -881f, 553f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.x, global4.x, 350f))))))), global4.xxy);
    var var_1 = true;
    var var_2 = Struct_2(vec3<bool>(select(!all(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(60569u, 14u)])), ~u_input.b.x < ~u_input.a.x, select(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(u_input.c, 14u)], false) | true), select(true, global3.x && (false & global3.x), global3.x), func_4(Struct_2(vec3<bool>(false, true, false), Struct_1(u_input.a, vec3<u32>(u_input.c, 4294967295u, 4294967295u), u_input.c, global3.zz), global4.zwz, _wgslsmith_f_op_f32(func_3(Struct_4(true), Struct_1(u_input.b.xxw, vec3<u32>(u_input.a.x, u_input.c, u_input.b.x), u_input.a.x, global3.zz)))), Struct_2(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], false), Struct_1(u_input.a, u_input.a, u_input.a.x, global3.xz), vec3<f32>(-2429f, -143f, var_0.x), var_0.x))), Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.c)), _wgslsmith_dot_vec3_u32(reverseBits(u_input.a), ~u_input.b.zyw), 1612u), u_input.b.yyw, 0u >> (u_input.c % 32u), vec2<bool>((true | global2[_wgslsmith_index_u32(15745u, 14u)]) && global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(22483u, u_input.a.x, 0u, u_input.b.x)), 14u)], all(vec3<bool>(global3.x, false, global2[_wgslsmith_index_u32(u_input.c, 14u)])))), _wgslsmith_f_op_vec3_f32(-global4.yyw), _wgslsmith_f_op_f32(f32(-1f) * -769f));
    var var_3 = vec2<i32>(-17252i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, -29732i, -14700i) << (abs(vec3<u32>(0u, 1u, var_2.b.a.x)) % vec3<u32>(32u)), vec3<i32>(-23834i, 0i, 1i)), ~vec3<i32>(1i, 1i, 1i)));
    return Struct_2(select(var_2.a, var_2.a, !vec3<bool>(true, true, all(vec3<bool>(true, global3.x, true)))), var_2.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(false), Struct_1(var_2.b.a, u_input.b.zzy, var_2.b.a.x, global3.yy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f - 335f)), -1720f))), global4.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_1.d.c;
    var var_1 = Struct_3(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a.x, 2147483647i) & vec2<i32>(-1i, 18992i), vec2<i32>(-1i, ~arg_1.a.x), vec2<i32>(arg_0.x, arg_1.a.x)), ~(~vec2<i32>(1i, 1i) & arg_1.a)), arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.d, -574f, 391f, var_0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, -1868f, -706f, global4.x) * vec4<f32>(var_0.x, global4.x, 428f, 258f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1277f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - arg_1.d.c.x), global4.x, var_0.x)), func_2());
    return Struct_1(arg_1.d.b.b, vec3<u32>(~arg_1.b.b.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(49723u, u_input.a.x, arg_1.b.b.x, 1u), u_input.b), ~(~vec4<u32>(63524u, 1u, 54159u, arg_1.b.b.x))), _wgslsmith_add_u32(u_input.a.x, u_input.c)), ~reverseBits(~u_input.b.x), !select(vec2<bool>(global2[_wgslsmith_index_u32(~arg_1.d.b.c, 14u)], true), vec2<bool>(false, false), var_1.b.d));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1730f, global4.x, 850f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1007f, global4.x, global4.x, -1678f) * vec4<f32>(-585f, 1717f, -859f, 353f))), vec4<f32>(-1352f, -1000f, _wgslsmith_f_op_f32(-630f + 744f), _wgslsmith_f_op_f32(round(global4.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1184f, 249f, global4.x, global4.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-554f, -482f, -817f, 681f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.x, global4.x, global4.x, 803f), vec4<f32>(184f, 3276f, global4.x, 490f)))))));
    let var_1 = Struct_4(any(select(!select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(arg_1.a.x, 14u)], arg_2.x), vec4<bool>(false, true, true, true), vec4<bool>(arg_1.d.x, false, arg_2.x, false)), vec4<bool>(true, arg_2.x, !global3.x, all(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.c, 14u)], false))), _wgslsmith_f_op_f32(trunc(436f)) != -702f)));
    var var_2 = _wgslsmith_f_op_f32(-global4.x);
    let var_3 = arg_2.x;
    var var_4 = ~_wgslsmith_dot_vec2_u32(~arg_1.b.xy ^ (select(vec2<u32>(0u, arg_1.b.x), arg_1.a.zx, vec2<bool>(false, true)) << (vec2<u32>(41711u, u_input.a.x) % vec2<u32>(32u))), ~(~vec2<u32>(u_input.b.x, arg_1.a.x)) ^ ((arg_1.a.yx ^ vec2<u32>(1u, 30812u)) & ~vec2<u32>(5206u, 0u)));
    return func_1(arg_0.yz, Struct_3(_wgslsmith_add_vec2_i32(arg_0.xy << (~arg_1.b.xx % vec2<u32>(32u)), vec2<i32>(abs(2147483647i), 1i)), func_1(abs(min(arg_0.zz, arg_0.zx)), Struct_3(vec2<i32>(arg_0.x, -445i), Struct_1(arg_1.b, u_input.a, arg_1.a.x, vec2<bool>(global3.x, var_3)), var_0, Struct_2(vec3<bool>(true, false, global3.x), arg_1, global4.xxy, -1652f))), _wgslsmith_f_op_vec4_f32(ceil(var_0)), Struct_2(!vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 14u)], true), func_2().b, var_0.xyy, var_0.x)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = ~1u;
    let var_1 = ~vec2<u32>(_wgslsmith_mod_u32(4294967295u, arg_1.b.c), u_input.c);
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global4.x, -651f, arg_1.d.d) * arg_1.c), _wgslsmith_f_op_vec4_f32(-arg_1.c))))))));
    let var_2 = Struct_1(vec3<u32>(~arg_1.d.b.a.x, 1u, func_2().b.a.x), vec3<u32>(func_5(vec3<i32>(arg_1.a.x, _wgslsmith_mod_i32(arg_3.x, 2147483647i), firstTrailingBit(arg_3.x)), func_5(~vec3<i32>(arg_2, 2147483647i, 0i), Struct_1(vec3<u32>(33026u, arg_1.d.b.b.x, 36787u), vec3<u32>(24299u, u_input.a.x, u_input.a.x), 1u, global3.xx), vec2<bool>(true, global3.x)), global3.xz).c, max(_wgslsmith_mult_u32(abs(53341u), 0u), _wgslsmith_mult_u32(0u, var_1.x)), 0u), firstLeadingBit(_wgslsmith_mod_u32(arg_1.b.a.x, ~15315u)), func_1(arg_1.a, Struct_3(vec2<i32>(_wgslsmith_div_i32(-2147483647i, arg_2), _wgslsmith_sub_i32(arg_1.a.x, arg_2)), func_2().b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(966f, 1547f, -1000f, -294f))), arg_1.d)).d);
    return func_5(arg_3.yzw, Struct_1(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_2.a.x, 0u)), var_2.b), _wgslsmith_add_vec3_u32(~var_2.b << (vec3<u32>(62779u, 1729u, 32545u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(var_2.b, var_2.a)), 101361u | ~countOneBits(arg_1.d.b.c), func_2().a.yz), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2212f;
    var var_1 = vec3<bool>(!all(vec3<bool>(true, any(vec2<bool>(false, global2[_wgslsmith_index_u32(13449u, 14u)])), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global2[_wgslsmith_index_u32(21762u, 14u)], true)))), global3.x, true);
    let var_2 = Struct_4(true);
    var var_3 = Struct_3(reverseBits(min(max(vec2<i32>(1i, -1i), vec2<i32>(0i, -73123i)), ~vec2<i32>(-6825i, 24397i))) | (-select(vec2<i32>(-1i, -48828i), vec2<i32>(-34811i, 1i), var_1.zy) | abs(min(vec2<i32>(30492i, 45408i), vec2<i32>(-23435i, -45296i)))), func_6(vec3<bool>(true, true, true), Struct_3(countOneBits(vec2<i32>(-57739i, 2147483647i)), func_5(vec3<i32>(1i, 1i, 1i), func_1(vec2<i32>(1i, 24519i), Struct_3(vec2<i32>(10134i, -2147483647i), Struct_1(vec3<u32>(u_input.b.x, 601u, 4294967295u), u_input.a, u_input.a.x, vec2<bool>(var_2.a, global2[_wgslsmith_index_u32(0u, 14u)])), vec4<f32>(354f, global4.x, -255f, 751f), Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global3.x, var_2.a), Struct_1(vec3<u32>(u_input.b.x, u_input.a.x, 0u), u_input.b.wyz, u_input.a.x, global3.zz), vec3<f32>(-1981f, global4.x, 1743f), -1201f))), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global3.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.x, global4.x, 1367f, 1011f))))), func_2()), -14598i, ~vec4<i32>(-24546i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -19245i, -1i), vec3<i32>(-40791i, 19000i, -46411i)), _wgslsmith_dot_vec4_i32(vec4<i32>(9737i, -38753i, 28552i, -8599i), vec4<i32>(1i, 11293i, 2147483647i, 0i)), _wgslsmith_add_i32(1i, 63095i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, 1000f, global4.x, 1100f), vec4<f32>(global4.x, -613f, global4.x, global4.x), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.x, -1000f, -609f, -1630f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2827f, -532f, -1671f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1746f, -952f, global4.x)))))), func_2());
    global0 = array<Struct_3, 8>();
    let var_4 = vec2<f32>(1201f, _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))));
    var var_5 = _wgslsmith_sub_i32(-48603i, var_3.a.x >> (~select(~u_input.a.x, 9078u, !global2[_wgslsmith_index_u32(u_input.b.x, 14u)]) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x);
}

