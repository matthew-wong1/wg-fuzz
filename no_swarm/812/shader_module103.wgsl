struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(false, false), -2361f, Struct_2(Struct_1(2147483647i, vec4<i32>(1i, i32(-2147483648), 18982i, 2147483647i), vec2<i32>(-52454i, 0i)), -737f, vec3<u32>(0u, 1u, 19187u)), 23689u);

var<private> global1: Struct_2 = Struct_2(Struct_1(-4639i, vec4<i32>(54412i, -1i, -1i, 34156i), vec2<i32>(-22101i, -24516i)), 1000f, vec3<u32>(0u, 82259u, 0u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = Struct_3(!select(select(select(global0.a, vec2<bool>(global0.a.x, global0.a.x), global0.a.x), vec2<bool>(global0.a.x, global0.a.x), any(vec3<bool>(true, false, global0.a.x))), global0.a, global0.a), arg_3.b, Struct_2(Struct_1(firstTrailingBit(arg_3.a.c.x), arg_1, vec2<i32>(-1i, 0i)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3.b, global0.c.b))), vec3<u32>(11508u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 0u), arg_2.yz) % 32u), 4294967295u, global1.c.x)), ~0u);
    global1 = Struct_2(Struct_1(-arg_1.x, arg_1, select(vec2<i32>(countOneBits(global1.a.a), var_0.c.a.c.x), u_input.a.zx, var_0.a)), -854f, arg_3.c);
    var var_1 = select(select(!select(vec3<bool>(true, var_0.a.x, global0.a.x), vec3<bool>(true, true, false), any(vec4<bool>(global0.a.x, var_0.a.x, global0.a.x, false))), vec3<bool>(!global0.a.x, true, any(var_0.a)), all(select(vec4<bool>(var_0.a.x, global0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(global0.a.x, global0.a.x, var_0.a.x, global0.a.x), all(vec4<bool>(false, true, global0.a.x, global0.a.x))))), select(vec3<bool>(!any(vec3<bool>(var_0.a.x, global0.a.x, var_0.a.x)), !global0.a.x | global0.a.x, true), select(!(!vec3<bool>(var_0.a.x, true, false)), !select(vec3<bool>(global0.a.x, false, true), vec3<bool>(true, true, var_0.a.x), vec3<bool>(var_0.a.x, true, true)), !(!vec3<bool>(true, var_0.a.x, false))), select(!select(vec3<bool>(true, global0.a.x, global0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false), global0.a.x), !(!vec3<bool>(var_0.a.x, var_0.a.x, false)), false)), select(select(select(vec3<bool>(global0.a.x, true, false), vec3<bool>(var_0.a.x, var_0.a.x, true), select(true, false, global0.a.x)), select(vec3<bool>(false, true, false), !vec3<bool>(global0.a.x, true, true), vec3<bool>(false, true, global0.a.x)), vec3<bool>(true, true, true)), !vec3<bool>(arg_3.b < arg_3.b, true, !var_0.a.x), global0.a.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1261f + 1003f), var_0.c.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(366f, arg_3.b), vec2<f32>(global0.c.b, 176f), var_0.a)))))))));
    let var_3 = !var_1.xx;
    return vec4<f32>(-754f, global0.b, 439f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * -1174f))) * _wgslsmith_f_op_f32(trunc(global1.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-906f, 213f, arg_3.b, global0.b) * vec4<f32>(arg_3.b, 248f, 1000f, global0.c.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b, -1208f, arg_2.b, global0.c.b))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-446f, arg_3.b, global1.b, arg_3.b))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-750f, 1152f, global1.b, arg_3.b), vec4<f32>(-1820f, -315f, arg_3.b, 1596f), vec4<bool>(false, global0.a.x, false, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, -282f, 678f, 124f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1460f), arg_0.b, _wgslsmith_f_op_f32(arg_1.c.b - global1.b), -1089f)))));
    let var_1 = Struct_3(!global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(241f))), Struct_2(arg_2.a, arg_3.b, ~vec3<u32>(52599u & arg_0.c.x, arg_2.c.x & global0.c.c.x, 1u)), ~(~0u));
    global0 = arg_1;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, global0.b, -1366f, arg_2.b), vec4<f32>(var_1.c.b, 682f, 294f, arg_3.b))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(352f, -605f, arg_3.b, 901f) - vec4<f32>(global0.b, -1225f, var_1.c.b, global0.c.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, arg_3.b, arg_1.c.b, -1623f)))) - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(-1820i, arg_1.c.a.c.x, -1i, -2147483647i), firstTrailingBit(arg_3.a.b)), arg_0.a.b, vec4<u32>(15415u, 46332u, min(global0.d, arg_3.c.x), abs(0u)), arg_3))));
    var var_2 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global1.a.b.x, arg_0.a.b.x), 33782i, u_input.a.x >> (116165u % 32u)), _wgslsmith_div_i32(i32(-1i) * -32016i, ~(-42344i)), -1i, arg_1.c.a.b.x << (arg_2.c.x % 32u)), vec4<i32>(u_input.a.x, -11406i, 1i, arg_2.a.c.x), arg_0.a.b);
    return Struct_3(global0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.c.a.b, vec4<i32>(-2147483647i, arg_0.a.c.x, 2147483647i, -48793i), vec4<u32>(4294967295u, global1.c.x, arg_1.d, 40806u) << (vec4<u32>(1u, 1u, 1u, var_1.c.c.x) % vec4<u32>(32u)), arg_2)).x))), arg_3, 4294967295u);
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1324f, global1.b, global1.b, arg_0.x))) * vec4<f32>(-1131f, global0.b, global0.c.b, global0.b))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.b, global1.b, arg_0.x)) + vec4<f32>(601f, -1463f, 459f, -1396f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1331f, global1.b, -1893f, 608f), vec4<f32>(global1.b, global0.c.b, -531f, arg_0.x), vec4<bool>(true, true, global0.a.x, global0.a.x))))))));
    global0 = func_2(global0.c, Struct_3(select(vec2<bool>(true, !global0.a.x), global0.a, vec2<bool>(false, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global1.b)), -1057f)), global0.c, max(84521u, 4294967295u)), global0.c, global0.c);
    var var_1 = true;
    var_1 = true;
    return Struct_3(vec2<bool>(min(u_input.a.x, abs(global1.a.a)) > -firstLeadingBit(global0.c.a.a), any(!vec2<bool>(true, global0.a.x))), 2035f, Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.c.x, 6318i, 12210i), vec3<i32>(u_input.a.x, 2147483647i, global0.c.a.b.x)), _wgslsmith_dot_vec4_i32(global1.a.b, global0.c.a.b)), -(global0.c.a.b >> (vec4<u32>(global0.c.c.x, 41403u, global1.c.x, 73556u) % vec4<u32>(32u))), firstTrailingBit(countOneBits(vec2<i32>(-48210i, global1.a.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, 1118f)) + _wgslsmith_f_op_f32(-1040f - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f + var_0.x)))), reverseBits(~_wgslsmith_sub_vec3_u32(global0.c.c, global0.c.c))), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<bool>(global0.a.x, false), global1.b, Struct_2(Struct_1(global0.c.a.a, global0.c.a.b, -u_input.a.zx), _wgslsmith_f_op_f32(global1.b + global1.b), _wgslsmith_mod_vec3_u32(global1.c, vec3<u32>(global0.c.c.x, ~global0.d, global0.d))), min(global1.c.x, global0.d));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b, 555f, global0.b) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1135f, var_0.c.b, global0.b)))) * vec3<f32>(_wgslsmith_f_op_f32(global1.b * 696f), global0.c.b, _wgslsmith_f_op_f32(-var_0.b)))));
    global1 = func_2(global0.c, func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 482f, global0.c.b), vec3<f32>(global1.b, global0.b, -1000f)) + _wgslsmith_f_op_vec4_f32(func_3(global0.c.a.b, vec4<i32>(global1.a.a, var_0.c.a.c.x, global1.a.c.x, -13011i), vec4<u32>(var_0.d, 0u, var_0.c.c.x, global1.c.x), Struct_2(global1.a, global1.b, global0.c.c))).wyw), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(176f, -979f, var_0.b), vec3<f32>(-226f, global0.c.b, 455f), vec3<bool>(global0.a.x, false, global0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.b, -1496f, global0.c.b) - vec3<f32>(global1.b, -2547f, -178f))))))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1018f, 211f, 737f)))))).c, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, var_0.b, var_0.c.b)))).c).c;
    let var_1 = select(vec3<bool>(global0.a.x, var_0.a.x, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.b, var_0.b, global0.c.b), vec3<f32>(142f, var_0.c.b, global0.c.b)))).a.x), vec3<bool>(false, func_2(var_0.c, Struct_3(global0.a, global0.b, global0.c, countOneBits(global1.c.x)), var_0.c, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 1051f, global1.b))).c).a.x, true), !(!(!(!vec3<bool>(global0.a.x, global0.a.x, global0.a.x)))));
    global0 = Struct_3(vec2<bool>(var_0.c.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(-11490i, -2147483647i, global0.c.a.b.x, var_0.c.a.b.x), global0.c.a.b, vec4<u32>(global1.c.x, global0.c.c.x, global1.c.x, global1.c.x), Struct_2(Struct_1(global1.a.a, vec4<i32>(1i, 64511i, 5119i, global0.c.a.a), vec2<i32>(12221i, -1i)), var_0.c.b, global1.c))).x), global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1362f), Struct_2(func_2(var_0.c, func_1(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(var_0.c.a.b.x, 26908i, 2147483647i, u_input.a.x), global0.c.a.b, vec4<u32>(102946u, global0.c.c.x, global1.c.x, global1.c.x), var_0.c)).xyy), func_1(vec3<f32>(global0.b, var_0.b, -1000f)).c, func_2(Struct_2(Struct_1(-1i, var_0.c.a.b, vec2<i32>(var_0.c.a.c.x, -66135i)), global0.b, vec3<u32>(global0.c.c.x, global0.d, 33044u)), func_1(vec3<f32>(global1.b, 648f, 1869f)), func_2(Struct_2(Struct_1(37643i, var_0.c.a.b, u_input.a.zz), 1000f, vec3<u32>(0u, global1.c.x, global1.c.x)), Struct_3(var_0.a, -203f, global0.c, 4294967295u), Struct_2(Struct_1(global0.c.a.b.x, vec4<i32>(var_0.c.a.a, global0.c.a.c.x, u_input.a.x, global0.c.a.c.x), vec2<i32>(1i, 0i)), var_0.c.b, vec3<u32>(1u, global1.c.x, global0.c.c.x)), Struct_2(Struct_1(global1.a.c.x, vec4<i32>(global0.c.a.a, 1i, -20654i, 17786i), vec2<i32>(1i, global0.c.a.b.x)), -403f, vec3<u32>(0u, global0.d, global0.d))).c, func_2(global0.c, Struct_3(vec2<bool>(false, false), global0.b, var_0.c, global0.c.c.x), Struct_2(Struct_1(global0.c.a.b.x, global0.c.a.b, u_input.a.yy), 912f, global1.c), Struct_2(global1.a, var_0.c.b, global1.c)).c).c).c.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(640f)))), vec3<u32>(26486u, 96757u & ~var_0.d, ~51186u)), global0.c.c.x);
    let var_2 = Struct_3(func_2(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, global0.c.b, 1052f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.b, global0.b, global0.c.b), vec3<f32>(-297f, global0.b, global1.b), var_1)))).c, func_2(Struct_2(global1.a, global0.b, func_1(vec3<f32>(134f, var_0.c.b, global1.b)).c.c), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.b, -240f, global1.b), vec3<f32>(1274f, 486f, var_0.b))), var_0.c, var_0.c), var_0.c, var_0.c).a, 1953f, func_2(var_0.c, Struct_3(var_1.zz, _wgslsmith_f_op_f32(-var_0.c.b), var_0.c, 3116u), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(378f, global0.b, -2565f) + vec3<f32>(var_0.c.b, -432f, var_0.b)))).c, Struct_2(var_0.c.a, global0.c.b, max(global0.c.c >> (vec3<u32>(14001u, 4294967295u, global1.c.x) % vec3<u32>(32u)), ~vec3<u32>(global1.c.x, global1.c.x, 4294967295u)))).c, _wgslsmith_sub_u32(var_0.c.c.x, max(~var_0.d, global1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, global0.c.b, global1.b), vec3<f32>(-346f, global1.b, var_2.c.b)))), -2085f);
}

