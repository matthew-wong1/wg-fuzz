struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(0i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(9082i, -30i), vec2<i32>(-20900i, 50984i), vec2<i32>(-2693i, -52892i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(-20454i, i32(-2147483648)), vec2<i32>(-1i, 27516i), vec2<i32>(0i, -1i), vec2<i32>(-15867i, -1i), vec2<i32>(i32(-2147483648), -8594i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-380i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-11847i, 0i), vec2<i32>(0i, 26082i), vec2<i32>(-38650i, i32(-2147483648)), vec2<i32>(27762i, 0i));

var<private> global1: i32 = -19024i;

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-218f, 1691f, -1731f, -924f), vec4<f32>(213f, 1157f, 371f, -144f), vec4<f32>(544f, 603f, 850f, 130f), vec4<f32>(-1000f, 930f, -709f, 567f), vec4<f32>(-926f, 148f, -565f, -774f), vec4<f32>(142f, -843f, -1209f, 2227f), vec4<f32>(-713f, 710f, -450f, 1238f), vec4<f32>(-1343f, -159f, -528f, 1370f), vec4<f32>(741f, 1541f, -557f, 1512f), vec4<f32>(-1037f, 579f, 1011f, -1074f), vec4<f32>(-965f, -144f, 128f, 1003f), vec4<f32>(-232f, -456f, 1000f, -2777f), vec4<f32>(1563f, -560f, -1864f, 1543f), vec4<f32>(477f, -573f, -1000f, -480f), vec4<f32>(871f, -1989f, 1017f, -364f), vec4<f32>(-1717f, -147f, 421f, -798f), vec4<f32>(-505f, 1117f, -851f, -2194f), vec4<f32>(1033f, 1565f, -1304f, -1000f), vec4<f32>(-298f, -1563f, 203f, 942f), vec4<f32>(-954f, -1389f, 1467f, 204f), vec4<f32>(878f, -1737f, -211f, -249f), vec4<f32>(-1042f, 999f, -1000f, -266f), vec4<f32>(196f, -595f, 728f, 262f), vec4<f32>(-1883f, 1000f, 731f, -575f), vec4<f32>(-680f, -401f, 649f, -1000f), vec4<f32>(-848f, 473f, -1391f, 722f), vec4<f32>(-619f, -1155f, 228f, 1000f), vec4<f32>(1043f, -858f, 763f, -825f), vec4<f32>(313f, 880f, -517f, 1965f), vec4<f32>(1060f, 329f, 1599f, 367f));

var<private> global3: array<vec3<i32>, 1>;

var<private> global4: array<i32, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    var var_0 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true)));
    global4 = array<i32, 1>();
    var var_1 = true;
    var var_2 = Struct_3(u_input.c, ~91584i, Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, true), !select(false, true, true)), vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), all(vec2<bool>(true, true)))));
    let var_3 = Struct_5(Struct_1(var_2.c.d, vec2<bool>(abs(4294967295u) < (var_2.a | 25794u), any(!vec4<bool>(var_2.c.b.x, var_2.c.d.x, false, var_2.c.c.x))), var_2.c.d, var_2.c.b), ~(~(~u_input.a.x)) | _wgslsmith_mult_u32(1u, 4294967295u), select(select(vec3<bool>(true, true, var_2.c.d.x), vec3<bool>(true, true, all(vec3<bool>(var_2.c.a.x, false, var_2.c.d.x))), vec3<bool>(any(vec4<bool>(var_2.c.b.x, var_2.c.b.x, var_2.c.c.x, var_2.c.b.x)), all(vec3<bool>(true, true, false)), any(vec2<bool>(true, var_2.c.c.x)))), vec3<bool>(var_2.c.c.x, !var_2.c.c.x & var_2.c.a.x, var_2.c.b.x), false), Struct_1(select(!vec2<bool>(var_2.c.b.x, var_2.c.b.x), vec2<bool>(true, false), vec2<bool>(true, any(vec4<bool>(false, true, var_2.c.d.x, var_2.c.b.x)))), vec2<bool>(select(var_2.c.b.x, !var_2.c.d.x, false), all(select(vec3<bool>(false, true, var_2.c.a.x), vec3<bool>(true, true, var_2.c.a.x), var_2.c.a.x))), !var_2.c.a, vec2<bool>(all(select(vec4<bool>(false, var_2.c.c.x, true, var_2.c.b.x), vec4<bool>(var_2.c.d.x, true, var_2.c.c.x, false), vec4<bool>(var_2.c.a.x, false, var_2.c.b.x, var_2.c.b.x))), true)));
    return 0u;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 757f)) * arg_1.x), 1000f, arg_1.x, _wgslsmith_f_op_f32(exp2(arg_1.x)));
    var var_1 = vec4<i32>(2147483647i, _wgslsmith_add_i32((i32(-1i) * -1i) ^ ~u_input.b.x, reverseBits(u_input.b.x) << (u_input.a.x % 32u)) >> (abs(u_input.a.x) % 32u), ~abs(global4[_wgslsmith_index_u32(min(~u_input.a.x, 4294967295u), 1u)]), ~global4[_wgslsmith_index_u32(0u, 1u)]);
    let var_2 = u_input.a;
    global4 = array<i32, 1>();
    return vec2<bool>(false, arg_2.x);
}

fn func_2() -> u32 {
    global2 = array<vec4<f32>, 30>();
    var var_0 = vec4<i32>(reverseBits(u_input.b.x), 0i, 1850i, u_input.b.x);
    var var_1 = Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec2<bool>(!select(any(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true)), true), false && all(vec3<bool>(true, true, true))), select(!vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 1u)] <= var_0.x), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(vec2<bool>(true, any(vec3<bool>(false, true, false))), vec2<bool>(true, true), vec2<bool>(true, true))), func_4(all(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(func_3() | (_wgslsmith_dot_vec3_u32(u_input.a.zzw, vec3<u32>(13925u, u_input.a.x, u_input.c)) ^ (2625u | u_input.a.x)), 30u)], !vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false))), select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec2<bool>(false, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(false, false, true))))));
    var var_2 = Struct_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(627f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -961f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(2066f * 437f)))), firstLeadingBit(~vec3<u32>(u_input.c, 28430u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c, u_input.a.x), vec4<u32>(u_input.a.x, 21104u, u_input.c, 0u)))), Struct_1(select(var_1.d, vec2<bool>(true, all(var_1.c)), func_4(false, _wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), select(vec3<bool>(var_1.b.x, var_1.c.x, var_1.a.x), vec3<bool>(true, var_1.c.x, true), vec3<bool>(true, var_1.c.x, var_1.b.x)), Struct_1(vec2<bool>(false, var_1.a.x), vec2<bool>(false, true), var_1.a, var_1.c)).x), !var_1.a, !(!func_4(false, global2[_wgslsmith_index_u32(10034u, 30u)], vec3<bool>(false, true, true), Struct_1(var_1.a, vec2<bool>(var_1.a.x, false), vec2<bool>(var_1.b.x, false), var_1.b))), select(!(!var_1.c), var_1.d, false)), false);
    let var_3 = u_input.b.x ^ -9767i;
    return reverseBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~u_input.c, func_3()), _wgslsmith_mod_vec3_u32(vec3<u32>(31563u, 13290u, 48939u), vec3<u32>(var_2.c.x, u_input.a.x, 15205u)) >> (vec3<u32>(4294967295u, 68575u, 30134u) % vec3<u32>(32u))), var_2.c.x & ~abs(u_input.a.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c, 25913u, u_input.c), vec4<u32>(u_input.c | u_input.a.x, ~u_input.a.x, 4294967295u ^ u_input.c, func_2()))), -u_input.b.x, Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = vec3<i32>(-min(-abs(var_0.b), -2147483647i), 0i, ~global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~(var_0.a ^ 1u)), 1u)]);
    global1 = _wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(2147483647i, -2147483647i & var_1.x)) & -1i, i32(-1i) * -(i32(-1i) * -16895i));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-256f * _wgslsmith_f_op_f32(trunc(508f))), 265f, func_4(var_0.c.d.x | var_0.c.c.x, vec4<f32>(189f, -590f, -1000f, -1119f), !vec3<bool>(false, var_0.c.c.x, false), var_0.c).x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-358f)), 1219f)))), _wgslsmith_f_op_f32(max(1246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1457f, -1736f)) + 403f))))));
    var var_3 = var_1.x;
    return Struct_1(var_0.c.a, func_4(!var_0.c.d.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -451f, _wgslsmith_f_op_f32(2873f * -1000f), _wgslsmith_f_op_f32(ceil(1f))), select(select(!vec3<bool>(var_0.c.b.x, var_0.c.a.x, true), vec3<bool>(false, false, true), true), select(vec3<bool>(var_0.c.d.x, false, true), !vec3<bool>(false, false, var_0.c.a.x), !vec3<bool>(var_0.c.b.x, var_0.c.c.x, true)), select(vec3<bool>(var_0.c.c.x, true, false), select(vec3<bool>(false, true, true), vec3<bool>(var_0.c.c.x, false, var_0.c.d.x), var_0.c.c.x), var_0.c.c.x & true)), Struct_1(vec2<bool>(!var_0.c.d.x, var_0.c.d.x), vec2<bool>(!var_0.c.a.x, var_0.c.c.x), var_0.c.c, func_4(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, -539f, 1996f, 1763f)), vec3<bool>(var_0.c.a.x, var_0.c.a.x, true), var_0.c))), !func_4(var_0.c.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(258f, -1773f, -241f, 567f)), vec3<bool>(var_0.c.c.x, true, !var_0.c.a.x), Struct_1(select(vec2<bool>(true, var_0.c.d.x), vec2<bool>(var_0.c.c.x, var_0.c.b.x), var_0.c.d.x), vec2<bool>(false, true), func_4(true, global2[_wgslsmith_index_u32(1u, 30u)], vec3<bool>(var_0.c.c.x, false, false), Struct_1(var_0.c.b, var_0.c.c, vec2<bool>(var_0.c.c.x, true), vec2<bool>(true, true))), var_0.c.b)), func_4(var_0.c.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 616f, -1306f, -698f)), _wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(var_0.a, 30u)])), true))), select(!(!vec3<bool>(false, false, var_0.c.c.x)), select(vec3<bool>(var_0.c.d.x, false, false), vec3<bool>(var_0.c.c.x, false, var_0.c.c.x), vec3<bool>(var_0.c.d.x, false, var_0.c.a.x)), true | any(vec4<bool>(false, var_0.c.d.x, true, var_0.c.c.x))), Struct_1(!var_0.c.a, !(!var_0.c.d), vec2<bool>(any(var_0.c.b), any(vec4<bool>(var_0.c.c.x, true, false, false))), vec2<bool>(var_0.c.d.x != false, any(vec4<bool>(false, var_0.c.d.x, var_0.c.b.x, var_0.c.c.x))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: u32) -> Struct_5 {
    let var_0 = -158f;
    let var_1 = _wgslsmith_clamp_vec4_i32(countOneBits(~vec4<i32>(-global4[_wgslsmith_index_u32(18335u, 1u)], -arg_2.x, _wgslsmith_mult_i32(1i, arg_2.x), 1i)), -_wgslsmith_mult_vec4_i32((vec4<i32>(u_input.b.x, 0i, arg_2.x, 26852i) | vec4<i32>(arg_2.x, arg_2.x, -19835i, arg_2.x)) & -vec4<i32>(global4[_wgslsmith_index_u32(arg_3, 1u)], 35254i, 14052i, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 1i, 29394i, 1872i) << (u_input.a % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i) << (vec4<u32>(arg_0.c.x, 110234u, 0u, 125048u) % vec4<u32>(32u)))), vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, select(vec4<u32>(28642u, u_input.c, 46064u, 4294967295u), u_input.a, arg_1.x)), 1u)], ~abs(~global4[_wgslsmith_index_u32(u_input.a.x, 1u)]), -(~arg_2.x)));
    global3 = array<vec3<i32>, 1>();
    let var_2 = Struct_4(Struct_3(0u, _wgslsmith_sub_i32(24423i, _wgslsmith_div_i32(var_1.x, -1090i) & abs(-4424i)), arg_0.d), true);
    global4 = array<i32, 1>();
    return Struct_5(arg_0.d, 8198u, vec3<bool>(true, arg_3 >= (~7558u << (min(arg_3, 0u) % 32u)), false), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(119f, 1377f, 1744f), vec3<f32>(-1950f, -1000f, -1042f))), vec3<f32>(1249f, 485f, 1486f)))), vec3<u32>(~u_input.a.x, u_input.a.x, min(79806u, u_input.a.x)), func_1(), false), !vec4<bool>(true, select(true, true, func_1().d.x), all(vec4<bool>(true, true, true, true)), true), _wgslsmith_mod_vec2_i32(-global0[_wgslsmith_index_u32(1u, 21u)] ^ u_input.b.zz, u_input.b.yx), firstLeadingBit(0u));
    let var_1 = (-2147483647i ^ global4[_wgslsmith_index_u32(1u, 1u)]) >> (~func_3() % 32u);
    var var_2 = ~(reverseBits(countOneBits(firstTrailingBit(u_input.b.x))) >> (abs(countOneBits(u_input.c)) % 32u));
    global0 = array<vec2<i32>, 21>();
    global3 = array<vec3<i32>, 1>();
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-global0[_wgslsmith_index_u32(40206u, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * 1598f) + -2006f)), _wgslsmith_mult_vec2_u32(u_input.a.yx, ~u_input.a.ww), u_input.a.xz);
}

