struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32>;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(-1i, -3923i, 1i), vec3<i32>(48334i, -23714i, 59900i));

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<i32>(-75177i, 0i, -32049i), vec3<i32>(-21558i, 1i, 1i)), Struct_2(vec3<i32>(-1i, 44566i, 54060i), vec3<i32>(-11658i, 2147483647i, 39719i)), Struct_2(vec3<i32>(-1i, 1i, -19742i), vec3<i32>(2147483647i, 2147483647i, 34439i)), Struct_2(vec3<i32>(44687i, 1i, 39494i), vec3<i32>(2147483647i, -40820i, -1i)), Struct_2(vec3<i32>(61118i, i32(-2147483648), 1i), vec3<i32>(3814i, 1i, 28720i)), Struct_2(vec3<i32>(-53782i, -11102i, -51187i), vec3<i32>(19310i, -21125i, -40656i)), Struct_2(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-4113i, -651i, -49078i)), Struct_2(vec3<i32>(0i, -15257i, 1i), vec3<i32>(-65441i, 13112i, 0i)), Struct_2(vec3<i32>(-165i, -1i, 1i), vec3<i32>(69621i, 1i, -13620i)), Struct_2(vec3<i32>(i32(-2147483648), -11480i, 2147483647i), vec3<i32>(1i, 7616i, 2147483647i)), Struct_2(vec3<i32>(-11968i, -38827i, i32(-2147483648)), vec3<i32>(2147483647i, 24086i, 19657i)), Struct_2(vec3<i32>(25240i, -1i, 1i), vec3<i32>(-1i, -9751i, -36536i)), Struct_2(vec3<i32>(46941i, 2147483647i, 1i), vec3<i32>(-1i, -1i, 14845i)), Struct_2(vec3<i32>(48519i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648))), Struct_2(vec3<i32>(-6503i, -1i, 2147483647i), vec3<i32>(-1i, 0i, 1i)), Struct_2(vec3<i32>(1222i, -1i, -24511i), vec3<i32>(-69434i, -12575i, -1i)), Struct_2(vec3<i32>(-1i, 0i, -20580i), vec3<i32>(8627i, i32(-2147483648), 2147483647i)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = max(_wgslsmith_dot_vec3_i32(u_input.c.xyw, global2.a), 1i);
    var var_1 = countOneBits(vec3<i32>(arg_0.b.x, -19511i, -1i));
    let var_2 = min(u_input.c, u_input.c);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.a - arg_2.a), _wgslsmith_f_op_f32(arg_2.a * 127f))), _wgslsmith_f_op_f32(arg_2.a + arg_2.a)))), -1202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1176f)));
    var var_4 = -vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(41198i, var_1.x, global1.x, 1i), vec4<i32>(arg_1, -1i, 2147483647i, arg_0.a.x), vec4<bool>(false, true, false, false)), var_2), countOneBits(-73260i), 0i, abs(var_1.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_2.a, -501f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(561f, -1164f)))), _wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(round(-255f))))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2.a)), var_3.x, select(true, var_4.x <= var_1.x, false) || true));
}

fn func_2() -> vec4<bool> {
    var var_0 = !(!vec3<bool>(any(vec4<bool>(false, true, false, true)), true, !func_3(Struct_2(vec3<i32>(36357i, 0i, global1.x), u_input.d), global1.x, Struct_1(453f, global2.a, global2.b.x), u_input.a.xxx)));
    let var_1 = u_input.e.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1030f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-901f, 150f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(157f - 998f)))));
    let var_3 = !(!vec4<bool>(false, var_2.x < 795f, (var_0.x & false) & false, !func_3(Struct_2(vec3<i32>(u_input.b, 1i, global2.b.x), global2.a), u_input.d.x, Struct_1(var_2.x, vec3<i32>(-8777i, global2.b.x, global2.b.x), global1.x), u_input.a.wxx)));
    let var_4 = Struct_1(_wgslsmith_div_f32(-596f, var_2.x), _wgslsmith_div_vec3_i32(global2.a, select(~abs(global2.b), global2.a, true)), 0i);
    return vec4<bool>(true | ((10237u == var_1) && any(!var_3.zxx)), !any(var_0.zy), all(select(select(var_3.zxx, vec3<bool>(var_0.x, false, var_0.x), var_0.x), !var_3.wxw, var_3.x)), any(!vec4<bool>(var_0.x, func_3(global3[_wgslsmith_index_u32(22496u, 17u)], u_input.c.x, var_4, vec3<u32>(u_input.e.x, 1u, u_input.a.x)), all(var_3.yzw), var_3.x)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> f32 {
    global0 = ~((min(~(-1i), _wgslsmith_dot_vec2_i32(u_input.c.ww, u_input.d.xx)) | -firstLeadingBit(global2.b.x)) ^ _wgslsmith_sub_i32(firstTrailingBit(global1.x), global2.a.x));
    var var_0 = true;
    let var_1 = u_input.a;
    var var_2 = arg_1;
    var var_3 = Struct_3(u_input.e.x, select(select(vec4<bool>(arg_0.b.x & arg_0.b.x, any(vec2<bool>(arg_0.b.x, false)), arg_0.b.x, arg_0.b.x), !arg_0.b, !arg_0.b), select(select(arg_0.b, select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), vec4<bool>(arg_0.b.x, true, false, arg_0.b.x), arg_0.b.x), arg_0.b.x), vec4<bool>(arg_0.b.x == false, false, arg_0.b.x, true), vec4<bool>(true, all(vec2<bool>(true, true)), false, any(vec2<bool>(false, arg_0.b.x)))), func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -592f), -1373f);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-652f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -116f))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(func_2().x, true, true, any(vec3<bool>(true, true, arg_0 | true))), !select(!vec4<bool>(arg_0, arg_0, true, false), !vec4<bool>(arg_0, false, true, arg_0), true), vec4<bool>(select(true | (arg_1.x < -1530f), arg_0, arg_0), true, true, true));
    let var_1 = Struct_3(_wgslsmith_div_u32(~(abs(arg_2.x) ^ ~4294967295u), 0u), vec4<bool>(!any(var_0.zyw), func_2().x, var_0.x, (any(vec2<bool>(arg_0, var_0.x)) && !arg_0) && all(!var_0.yzy)), -1186f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(1011f * arg_1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1.x)))), !(!(!var_0.x)))));
    var var_2 = countOneBits(~arg_2.xw);
    let var_3 = var_1;
    let var_4 = false;
    return global3[_wgslsmith_index_u32(u_input.e.x & _wgslsmith_clamp_u32(var_3.a, ~_wgslsmith_sub_u32(11401u, 1u << (u_input.a.x % 32u)), ~firstTrailingBit(0u)), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 17>();
    global2 = func_4(!all(vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-758f + 1000f) - _wgslsmith_f_op_f32(-1718f * -2420f)) - -2026f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(u_input.a.x, vec4<bool>(false, true, true, false), -1957f, -1751f), vec3<f32>(759f, 315f, 1528f)))) * 129f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-619f * 298f), _wgslsmith_div_f32(1978f, -1461f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1170f, -1787f)))), _wgslsmith_f_op_f32(select(-2413f, _wgslsmith_f_op_f32(-1001f * 800f), false))))), u_input.a);
    global2 = global3[_wgslsmith_index_u32(u_input.a.x, 17u)];
    global1 = _wgslsmith_mod_vec3_i32(~global2.b, abs(_wgslsmith_add_vec3_i32(vec3<i32>(13240i, -u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, -47387i)), abs(-global2.a))));
    global2 = func_4(true, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-515f + _wgslsmith_f_op_f32(f32(-1f) * -823f)), 452f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1619f, _wgslsmith_f_op_f32(ceil(-1131f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(sign(-1348f))))), -1012f), u_input.a);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 133f), _wgslsmith_mod_vec3_i32(~min(u_input.d, vec3<i32>(u_input.d.x, 74189i, 37045i)), vec3<i32>(global1.x, global2.a.x, global2.b.x) >> (vec3<u32>(u_input.e.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))) << (u_input.a.zxz % vec3<u32>(32u)), -8112i);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(7670i, var_0.b.x, global2.b.x, 0i), u_input.c)), firstLeadingBit(-18009i), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(global1.x, 12735i) | vec2<i32>(31433i, -766i)), _wgslsmith_mult_vec2_i32(-global2.a.xx, global2.b.zz ^ vec2<i32>(2147483647i, -23698i)), _wgslsmith_clamp_vec2_i32(global2.a.yy, vec2<i32>(global1.x, u_input.c.x), vec2<i32>(global1.x, -1i)) | vec2<i32>(global2.a.x, 2004i)), ~countOneBits(vec2<i32>(u_input.b, u_input.b))), ~u_input.a.x, -(global1.x ^ countOneBits(-3675i)) & global1.x);
}

