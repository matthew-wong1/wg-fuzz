struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -47400i;

var<private> global1: vec3<i32>;

var<private> global2: u32 = 0u;

var<private> global3: Struct_2;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = (i32(-1i) * -43011i) > global1.x;
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global3.a, global3.a))), abs(_wgslsmith_div_vec2_u32(global3.b, ~arg_1.a.yz)), ~(~_wgslsmith_mod_u32(arg_1.b, global3.c)) << (~(~global4.a.x) % 32u), global3.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.d, -777f) * vec2<f32>(global3.e.x, 1225f))) - global3.e), global3.a.zz));
    let var_1 = false;
    var var_2 = ~global4.b;
    var var_3 = Struct_3(Struct_2(global3.a, _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, abs(arg_0.x)), select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.x, 1u), arg_0), vec2<u32>(arg_0.x, 30424u) >> (vec2<u32>(90257u, global4.a.x) % vec2<u32>(32u)), arg_1.d <= arg_2)), arg_1.a.x, arg_1, global3.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1348f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-113f)) + _wgslsmith_f_op_f32(abs(414f)))));
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, -2789f, _wgslsmith_div_f32(-806f, 438f)) + global3.a), _wgslsmith_sub_vec2_u32(vec2<u32>(max(u_input.a.x, 0u), ~u_input.a.x), global3.b), reverseBits(global3.c), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.d, 378f))))), -340f);
    var var_1 = -u_input.b;
    let var_2 = -18583i;
    var var_3 = global4.a.x;
    let var_4 = select(_wgslsmith_mult_vec4_i32(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, 2147483647i, -17074i, var_1.x), vec4<i32>(0i, 8023i, -17639i, -2147483647i), vec4<i32>(var_2, var_2, global1.x, 1i)) | vec4<i32>(2147483647i, 1i, var_1.x, u_input.b.x)), countOneBits(vec4<i32>(-28386i, firstTrailingBit(-1i), -60480i, _wgslsmith_sub_i32(u_input.c.x, u_input.b.x)))), -(~(-vec4<i32>(var_2, -28206i, var_1.x, 2147483647i))) >> (u_input.a % vec4<u32>(32u)), arg_0.c);
    return abs(min(_wgslsmith_dot_vec2_u32(global3.d.a.zz & ~vec2<u32>(1u, 1u), ~(~global3.b)), ~(~26377u)));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global2 = _wgslsmith_dot_vec2_u32(countOneBits(select(global4.a.xy, global4.a.yx, arg_0.c.yy)), vec2<u32>(func_4(Struct_1(arg_0.a, _wgslsmith_div_u32(49135u, 1u), arg_0.c, _wgslsmith_f_op_f32(func_3(global3.b, Struct_1(global4.a, global4.a.x, global4.c, 1000f), 303f)))), global3.c | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 50482u), vec2<u32>(25627u, 0u))));
    global4 = arg_0;
    global3 = Struct_2(vec3<f32>(499f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-858f)), _wgslsmith_f_op_f32(136f + -137f))))), global4.d), ~(_wgslsmith_add_vec2_u32(global4.a.xx, vec2<u32>(4294967295u, 0u)) << (select(vec2<u32>(27177u, global3.b.x), vec2<u32>(1u, 0u), global3.d.c.zy) % vec2<u32>(32u))) << (~(~(vec2<u32>(29193u, arg_0.a.x) << (vec2<u32>(0u, global3.d.a.x) % vec2<u32>(32u)))) % vec2<u32>(32u)), global4.a.x, global3.d, global3.a.xy);
    global0 = min(37818i, -59718i);
    return _wgslsmith_f_op_vec2_f32(min(global3.a.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global4.d)), global3.e.x))));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0.x;
    global1 = u_input.b;
    let var_1 = Struct_1(_wgslsmith_div_vec3_u32(abs(u_input.a.zxz), vec3<u32>(1u, u_input.a.x, ~global3.d.a.x << ((3800u >> (u_input.a.x % 32u)) % 32u))), u_input.a.x, global3.d.c, 2056f);
    global4 = Struct_1(~countOneBits(u_input.a.zzw), u_input.a.x, !(!var_1.c), _wgslsmith_f_op_f32(-837f * 905f));
    return global3.d;
}

fn func_1() -> vec3<u32> {
    global4 = func_5(_wgslsmith_f_op_vec2_f32(func_2(global3.d)));
    let var_0 = ~42724u;
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_5(global3.e).d, global3.d.d))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(func_5(global3.a.yz))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(var_1.d + -325f))))));
    global3 = Struct_2(global3.a, var_1.a.xz, var_0, global3.d, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(global3.a.zz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.d, var_1.d))), select(vec2<bool>(global4.c.x, var_1.c.x), var_1.c.zy, !global4.c.yy))))));
    return u_input.a.xzw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(func_1() ^ abs(_wgslsmith_sub_vec3_u32(u_input.a.zww, vec3<u32>(0u, 6024u, global3.d.b))), ~(~vec3<u32>(global3.b.x, u_input.a.x, 0u)) & abs(select(vec3<u32>(global4.b, global3.d.a.x, global3.c), vec3<u32>(u_input.a.x, 12296u, 1u), global3.d.c.x))), ~firstLeadingBit(~_wgslsmith_mod_u32(u_input.a.x, 21923u)), !vec4<bool>(select(all(global4.c), all(vec2<bool>(false, true)), false), global3.d.c.x, func_5(vec2<f32>(global4.d, 298f)).d <= 1000f, global4.c.x), 406f);
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a) + vec3<f32>(-1105f, global4.d, 555f))), global3.a)), ~vec2<u32>(global3.c, 1u) >> (vec2<u32>(~(~37532u), 0u) % vec2<u32>(32u)), var_0.a.x, func_5(global3.a.xx), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global3.d))), vec2<f32>(global3.d.d, _wgslsmith_f_op_f32(abs(global4.d))), global4.a.x == (57948u >> (var_0.a.x % 32u)))))));
    let var_1 = 22880i;
    global3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1368f, global4.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -959f)), _wgslsmith_f_op_f32(func_5(vec2<f32>(-100f, var_0.d)).d + global4.d)), _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(22163u, 1u, 4294967295u), _wgslsmith_div_u32(var_0.b, u_input.a.x)), ~(~vec2<u32>(0u, 4294967295u)) >> (abs(func_1().xy) % vec2<u32>(32u))), ~u_input.a.x, func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.e + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2086f, global3.a.x))))), _wgslsmith_f_op_vec2_f32(exp2(global3.e)));
    var var_2 = ~vec4<i32>(28132i, _wgslsmith_dot_vec2_i32(global1.yz, u_input.b.yx), global1.x, -(i32(-1i) * -23814i));
    var var_3 = -select(vec4<i32>(-(~global1.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 63373i), vec2<i32>(0i, -1i)), _wgslsmith_mult_i32(~(-2147483647i), select(u_input.b.x, var_1, false)), (419i | var_1) | var_1), select(vec4<i32>(27187i, var_1, 18735i, -2147483647i) & vec4<i32>(7282i, var_2.x, -7556i, 22325i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1, -1i, global1.x), vec4<i32>(-60319i, global1.x, -29766i, var_1)) << (vec4<u32>(17343u, u_input.a.x, 4294967295u, 36771u) % vec4<u32>(32u)), any(global3.d.c.wz)), var_0.c);
    let var_4 = Struct_3(Struct_2(global3.a, global4.a.yy, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(global3.b.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 65672u), ~var_0.a.xy)), Struct_1(max(vec3<u32>(u_input.a.x, 4294967295u, var_0.b) & global4.a, u_input.a.zyz), ~(~u_input.a.x), !(!global4.c), 803f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d, _wgslsmith_f_op_f32(-global4.d)))), 1000f);
    let var_5 = var_4.a.e;
    global3 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(i32(-1i) * -64193i, firstLeadingBit(14167i), _wgslsmith_mod_i32(countOneBits(-2147483647i), ~var_2.x), ~0i << (_wgslsmith_sub_u32(global3.d.b, 0u) % 32u)), _wgslsmith_add_vec4_i32((vec4<i32>(-11479i, var_3.x, 1i, -1i) & vec4<i32>(-2147483647i, global1.x, 4085i, var_1)) & -vec4<i32>(var_1, var_1, global1.x, u_input.b.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(1323i, u_input.b.x, var_1, -1i), vec4<i32>(global1.x, -1i, 1i, 0i))), select(!var_4.a.d.c, global3.d.c, ~u_input.a.x != 25485u)), global1.x | var_3.x, (~var_4.a.d.a.yz & var_0.a.yz) ^ ~vec2<u32>(func_1().x, select(global4.a.x, global4.b, var_0.c.x)), _wgslsmith_f_op_f32(ceil(1000f)), -_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_3.x, var_2.x), 62924i) ^ ~abs(~(-2147483647i)));
}

