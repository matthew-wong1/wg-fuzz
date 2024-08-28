struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(528f, -398f, 199f);

var<private> global1: array<f32, 10>;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec4<u32>(34049u, 4294967295u, 47305u, 4294967295u), Struct_1(31427u), 107f, 39483u), Struct_3(vec4<u32>(1803u, 20467u, 1u, 4294967295u), Struct_1(23724u), 1000f, 0u), Struct_3(vec4<u32>(0u, 1u, 1u, 1u), Struct_1(4294967295u), -111f, 50198u), Struct_3(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), Struct_1(48751u), 1000f, 0u), Struct_3(vec4<u32>(55878u, 7180u, 67139u, 4294967295u), Struct_1(4294967295u), -1131f, 52813u), Struct_3(vec4<u32>(11686u, 4294967295u, 10668u, 4294967295u), Struct_1(1u), -1098f, 0u), Struct_3(vec4<u32>(27306u, 0u, 62753u, 0u), Struct_1(35749u), 1184f, 0u), Struct_3(vec4<u32>(1u, 16367u, 38500u, 1u), Struct_1(27826u), 1204f, 28063u));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(4294967295u), Struct_1(30497u), Struct_1(43797u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u), Struct_1(20388u), Struct_1(1u), Struct_1(53383u), Struct_1(82167u), Struct_1(4294967295u), Struct_1(12023u), Struct_1(1u), Struct_1(42885u), Struct_1(31324u), Struct_1(1u), Struct_1(0u), Struct_1(130061u), Struct_1(17186u), Struct_1(65333u), Struct_1(32283u), Struct_1(18247u), Struct_1(749u), Struct_1(20327u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u), Struct_1(22961u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u), Struct_1(37869u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    global1 = array<f32, 10>();
    let var_0 = ~abs(~firstLeadingBit(11792u));
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, firstLeadingBit(var_0)), 32u)];
    var var_2 = _wgslsmith_mult_i32(u_input.a, -firstLeadingBit(min(abs(75793i), firstLeadingBit(u_input.a))));
    global3 = array<Struct_1, 32>();
    return reverseBits(~var_1.a);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = vec4<bool>(arg_0.d, any(!(!select(vec3<bool>(true, arg_0.d, false), vec3<bool>(arg_0.d, false, true), vec3<bool>(arg_0.d, arg_0.d, arg_0.d)))), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + global1[_wgslsmith_index_u32(18766u, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -2215f)) - _wgslsmith_f_op_f32(-arg_0.c)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.a.x, 10u)] * arg_1.x) + _wgslsmith_f_op_f32(floor(-586f)))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_2.c, -1318f)))) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a.x, 10u)])), arg_0.c, arg_0.b.x) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1336f, global1[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.b.a, 10u)]), _wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.b, vec3<f32>(219f, global1[_wgslsmith_index_u32(arg_2.d, 10u)], global0.x))))))));
    let var_1 = global3[_wgslsmith_index_u32(abs(arg_0.a.x), 32u)];
    var var_2 = arg_1.zx;
    var var_3 = vec3<i32>(reverseBits(u_input.a), ~2147483647i, _wgslsmith_add_i32(select(0i, -u_input.a, any(vec4<bool>(true, arg_0.d, true, arg_0.d))), ~max(1i, 5378i)) >> (~(_wgslsmith_mult_u32(arg_0.a.x, var_1.a) & ~51055u) % 32u));
    return arg_2.a;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = arg_0.d;
    let var_1 = Struct_2(arg_0.a.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(271f, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(arg_0.d, 10u)]))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c, -1594f, global1[_wgslsmith_index_u32(13827u, 10u)])))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1224f, -713f, global0.x), vec3<f32>(arg_0.c, global1[_wgslsmith_index_u32(var_0, 10u)], arg_0.c))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), true | select(true, !(!arg_1), true));
    let var_2 = Struct_2(countOneBits(var_1.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c))), 857f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -838f)))))), _wgslsmith_f_op_f32(f32(-1f) * -201f), var_1.d);
    let var_3 = ~select(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-6061i, u_input.a, -1i, u_input.a), arg_1))), -max(_wgslsmith_clamp_vec4_i32(vec4<i32>(907i, u_input.a, -15573i, 1i), vec4<i32>(0i, u_input.a, u_input.a, -20982i), vec4<i32>(u_input.a, 37757i, u_input.a, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(2147483647i, 17234i, -2147483647i, -2147483647i))), !vec4<bool>(var_2.d & var_2.d, arg_1 != arg_1, false, false));
    let var_4 = _wgslsmith_sub_vec4_u32(arg_0.a, vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(var_1.a.x), 0u), abs(var_1.a.x), var_1.a.x, 99164u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(~func_3(var_2, var_2.b, Struct_3(vec4<u32>(arg_0.d, var_0, var_0, 1u), global3[_wgslsmith_index_u32(25424u, 32u)], -1000f, 4502u)).x, ~(~4294967295u), 0u, ~(~arg_0.a.x)), abs(~arg_0.a), vec4<u32>(~var_1.a.x, var_0, var_2.a.x & _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 0u), vec2<u32>(arg_0.b.a, var_2.a.x)), min(var_1.a.x, ~63261u))) % vec4<u32>(32u));
    return var_0;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = max(_wgslsmith_add_vec4_u32(vec4<u32>(~(~52335u), ~arg_0.x, 0u, max(arg_1, _wgslsmith_dot_vec3_u32(arg_0.wyz, vec3<u32>(28046u, 18249u, arg_0.x)))), arg_0), vec4<u32>(arg_1, max(_wgslsmith_mod_u32(0u, arg_1 ^ 45102u), func_2()), ~arg_1, func_4(Struct_3(func_3(Struct_2(vec2<u32>(arg_0.x, 33464u), vec3<f32>(global1[_wgslsmith_index_u32(23366u, 10u)], -1010f, -839f), 1754f, false), vec3<f32>(616f, global1[_wgslsmith_index_u32(4294967295u, 10u)], 1692f), global2[_wgslsmith_index_u32(40007u, 8u)]), global3[_wgslsmith_index_u32(arg_1, 32u)], -357f, reverseBits(4294967295u)), true)));
    var_0 = ~abs(vec4<u32>(arg_0.x & var_0.x, 68286u, reverseBits(59579u ^ var_0.x), 0u));
    let var_1 = global2[_wgslsmith_index_u32(0u, 8u)];
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 431f, 502f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, -1262f) * vec3<f32>(global0.x, global1[_wgslsmith_index_u32(21711u, 10u)], global1[_wgslsmith_index_u32(35697u, 10u)]))) * vec3<f32>(_wgslsmith_f_op_f32(-199f + var_1.c), global1[_wgslsmith_index_u32(~arg_0.x, 10u)], _wgslsmith_f_op_f32(sign(global0.x)))))) + vec3<f32>(var_1.c, var_1.c, 557f));
    global3 = array<Struct_1, 32>();
    return Struct_2(_wgslsmith_sub_vec2_u32(var_1.a.yy, var_0.zz), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(17775u, 10u)])))), var_1.c, _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), -1000f)), 1493f <= _wgslsmith_f_op_f32(min(733f, global0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = abs(-31607i);
    var var_1 = func_1(vec4<u32>(~128504u & max(~1u, abs(arg_1.a.x)), ~arg_1.d, select(arg_0.a.x, max(arg_0.a.x, arg_0.a.x | arg_0.a.x), any(vec2<bool>(arg_0.d, arg_0.d))), arg_1.a.x), arg_1.d);
    var var_2 = max((select(_wgslsmith_add_vec3_u32(arg_1.a.wyx, vec3<u32>(arg_0.a.x, var_1.a.x, arg_0.a.x)), _wgslsmith_mult_vec3_u32(arg_1.a.zyz, vec3<u32>(var_1.a.x, 4294967295u, 46520u)), vec3<bool>(var_1.d, false, true)) ^ vec3<u32>(~var_1.a.x, ~75881u, 0u)) | vec3<u32>(arg_0.a.x, arg_1.b.a, 41568u), arg_1.a.xwy);
    return _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~(~(~vec2<u32>(0u, 55316u))), ~var_1.a), func_3(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-973f, arg_1.c, 625f)))), global2[_wgslsmith_index_u32(~(~min(var_2.x, arg_1.b.a)), 8u)]).ww);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-arg_0.b);
    var var_0 = func_1(~(~vec4<u32>(min(1u, arg_0.a.x), max(31559u, 4294967295u), 28805u, 1u)), ~((5186u << (arg_0.a.x % 32u)) << (~arg_0.a.x % 32u)) ^ arg_0.a.x);
    let var_1 = Struct_1(var_0.a.x);
    var var_2 = select(vec2<u32>(abs(arg_0.a.x), ~59512u), var_0.a, vec2<bool>(true, !(!(!arg_0.d))));
    var var_3 = _wgslsmith_clamp_i32(3723i, 10271i, -27043i) < (~(firstLeadingBit(u_input.a) << (~var_1.a % 32u)) << (~(~71984u) % 32u));
    return arg_0;
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    global0 = arg_0.b;
    global1 = array<f32, 10>();
    let var_0 = arg_0.c;
    global3 = array<Struct_1, 32>();
    let var_1 = select(select(vec4<bool>(arg_0.a.x >= _wgslsmith_mult_u32(4294967295u, arg_0.a.x), !(arg_0.a.x < 32596u), false, true), vec4<bool>(any(select(vec4<bool>(false, false, arg_0.d, true), vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.d, true, false))), true, true, u_input.a > (i32(-1i) * -51469i)), arg_0.d), vec4<bool>(arg_0.d, !arg_0.d, arg_0.d, func_1(vec4<u32>(1u, ~arg_0.a.x, arg_0.a.x, _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x)), arg_0.a.x).d), arg_0.a.x == 1u);
    return global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a.x | arg_0.a.x, 23021u << (arg_0.a.x % 32u), 1u), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(Struct_2(func_5(func_1(vec4<u32>(37460u, 1u, 4294967295u, 21056u), 0u), Struct_3(vec4<u32>(23214u, 50865u, 73048u, 36978u), Struct_1(4525u), -895f, 21366u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1058f, -1137f, global0.x))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_1(vec4<u32>(4294967295u, 126735u, 0u, 4294967295u), 0u).a, vec2<u32>(16015u, 112661u)), 10u)], all(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global0.yz, global0.xz, vec2<bool>(true, true)))))));
    let var_1 = u_input.a;
    global0 = vec3<f32>(-573f, 1237f, global1[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 10u)]);
    let var_2 = !vec4<bool>(false, _wgslsmith_div_f32(-454f, _wgslsmith_f_op_f32(min(543f, global0.x))) > _wgslsmith_f_op_f32(f32(-1f) * -1809f), false, func_1(min(vec4<u32>(1u, 38223u, var_0.a, 0u), vec4<u32>(var_0.a, var_0.a, 1u, var_0.a)), _wgslsmith_mult_u32(38315u, var_0.a)).b.x != global1[_wgslsmith_index_u32(4294967295u, 10u)]);
    let var_3 = Struct_2(vec2<u32>(var_0.a, select(var_0.a, ~0u, var_2.x)) >> (func_1(~func_3(Struct_2(vec2<u32>(var_0.a, var_0.a), vec3<f32>(-117f, -110f, global0.x), global0.x, var_2.x), vec3<f32>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(21000u, 10u)], global1[_wgslsmith_index_u32(var_0.a, 10u)]), Struct_3(vec4<u32>(0u, var_0.a, 27869u, 4294967295u), global3[_wgslsmith_index_u32(var_0.a, 32u)], 1372f, var_0.a)), 1u).a % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(312f, -2092f, global0.x), vec3<f32>(global0.x, -415f, _wgslsmith_f_op_f32(f32(-1f) * -338f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_0.a, 10u)]))), any(var_2.zxx));
    var var_4 = _wgslsmith_clamp_vec2_i32(max((vec2<i32>(43968i, var_1) << (~var_3.a % vec2<u32>(32u))) >> (func_1(vec4<u32>(0u, 4294967295u, 31500u, var_3.a.x), func_7(var_3).a).a % vec2<u32>(32u)), vec2<i32>(reverseBits(u_input.a) ^ firstLeadingBit(-1i), firstTrailingBit(firstTrailingBit(-6104i)))), ~(_wgslsmith_sub_vec2_i32(max(vec2<i32>(var_1, 32333i), vec2<i32>(u_input.a, var_1)), -vec2<i32>(-65856i, var_1)) >> (~firstLeadingBit(vec2<u32>(4294967295u, var_0.a)) % vec2<u32>(32u))), max(-abs(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_div_vec2_i32(max(vec2<i32>(0i, u_input.a), ~vec2<i32>(-11927i, -1i)), vec2<i32>(u_input.a, ~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(-vec4<i32>(var_1, var_1, var_4.x, var_1))) & abs(_wgslsmith_div_vec4_i32(vec4<i32>(-22209i, var_1, 0i, 0i) ^ vec4<i32>(2147483647i, 1i, u_input.a, u_input.a), vec4<i32>(var_1, 19745i, -4777i, 0i) | vec4<i32>(0i, -42522i, -17283i, var_1))), var_1, _wgslsmith_f_op_vec3_f32(min(var_3.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_3.b), vec3<f32>(global1[_wgslsmith_index_u32(64557u, 10u)], var_3.b.x, global1[_wgslsmith_index_u32(var_3.a.x, 10u)]))) - vec3<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(ceil(var_3.c)), -1000f)))), var_0.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.b.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(var_0.a, 10u)]) * _wgslsmith_div_vec2_f32(var_3.b.yz, global0.xx))))));
}

