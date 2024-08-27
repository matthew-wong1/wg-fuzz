struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(152f, vec4<u32>(1u, 46497u, 12600u, 15400u), vec3<i32>(-17330i, i32(-2147483648), 1417i), 4294967295u), Struct_1(382f, vec4<u32>(4294967295u, 0u, 37045u, 28332u), vec3<i32>(1i, 2147483647i, -1818i), 18816u), Struct_1(567f, vec4<u32>(0u, 1u, 16611u, 0u), vec3<i32>(23380i, -33891i, -5005i), 1u), Struct_1(-1153f, vec4<u32>(12963u, 1u, 1u, 58223u), vec3<i32>(i32(-2147483648), 3210i, 2147483647i), 25801u));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(978f, vec4<u32>(627u, 0u, 6999u, 17280u), vec3<i32>(2147483647i, -32541i, -1i), 15877u), Struct_1(-217f, vec4<u32>(0u, 4294967295u, 97536u, 4294967295u), vec3<i32>(2147483647i, 19079i, -17198i), 22971u), Struct_1(101f, vec4<u32>(63036u, 1u, 0u, 0u), vec3<i32>(-19253i, 21834i, 2147483647i), 4294967295u), Struct_1(174f, vec4<u32>(0u, 37501u, 33912u, 45928u), vec3<i32>(31298i, 16801i, -1i), 19462u), Struct_1(990f, vec4<u32>(2801u, 31865u, 0u, 16322u), vec3<i32>(i32(-2147483648), 0i, 0i), 0u), Struct_1(776f, vec4<u32>(34176u, 11673u, 1u, 1u), vec3<i32>(94837i, 0i, i32(-2147483648)), 0u), Struct_1(-204f, vec4<u32>(4294967295u, 43961u, 1u, 2712u), vec3<i32>(-13641i, 47328i, 39428i), 30056u), Struct_1(-430f, vec4<u32>(63178u, 4294967295u, 58251u, 40691u), vec3<i32>(1i, 0i, -248i), 1u), Struct_1(-768f, vec4<u32>(796u, 8654u, 4294967295u, 1u), vec3<i32>(41334i, 0i, i32(-2147483648)), 16787u), Struct_1(-839f, vec4<u32>(1u, 0u, 86908u, 1551u), vec3<i32>(99727i, 0i, i32(-2147483648)), 47663u), Struct_1(-1000f, vec4<u32>(15257u, 6098u, 15816u, 10956u), vec3<i32>(i32(-2147483648), -19435i, -1i), 1u), Struct_1(146f, vec4<u32>(4294967295u, 32107u, 10176u, 1u), vec3<i32>(0i, 1i, -27771i), 26868u), Struct_1(154f, vec4<u32>(4294967295u, 26286u, 1u, 4294967295u), vec3<i32>(0i, -41316i, -45731i), 1u), Struct_1(375f, vec4<u32>(4294967295u, 4294967295u, 1u, 21683u), vec3<i32>(-44596i, -1i, 2147483647i), 0u), Struct_1(498f, vec4<u32>(0u, 0u, 37206u, 44173u), vec3<i32>(-1i, 0i, -39638i), 1u), Struct_1(1494f, vec4<u32>(37700u, 4294967295u, 29243u, 0u), vec3<i32>(-916i, -24931i, 2147483647i), 4294967295u), Struct_1(201f, vec4<u32>(0u, 1u, 27469u, 17013u), vec3<i32>(-1i, -2685i, -18651i), 0u), Struct_1(239f, vec4<u32>(4294967295u, 4294967295u, 1u, 68150u), vec3<i32>(22506i, i32(-2147483648), 1i), 25612u), Struct_1(576f, vec4<u32>(8296u, 0u, 15615u, 0u), vec3<i32>(0i, i32(-2147483648), 0i), 20349u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(231f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1384f)), -185f))), ~(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_1.x, 4294967295u, 369u), vec4<u32>(arg_1.x, 0u, arg_1.x, 33694u), vec4<u32>(4294967295u, arg_1.x, 30711u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(147u, 4294967295u, arg_0, 41558u), vec4<u32>(arg_0, arg_1.x, arg_0, arg_1.x))) << (vec4<u32>(1u, ~1485u, arg_1.x, arg_0) % vec4<u32>(32u))), arg_3.xzy, arg_1.x);
    var var_1 = var_0.b.wyw;
    let var_2 = any(vec3<bool>(!(!arg_2), true, any(vec3<bool>(arg_2 && arg_2, all(vec2<bool>(arg_2, true)), false))));
    let var_3 = vec4<i32>(arg_3.x, -30184i, _wgslsmith_dot_vec3_i32(reverseBits(var_0.c), firstLeadingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(13592i, var_0.c.x, u_input.a), var_0.c), _wgslsmith_mod_vec3_i32(arg_3.wyx, var_0.c), vec3<i32>(var_0.c.x, 2147483647i, -1i)))), abs(i32(-1i) * -(2147483647i | arg_3.x)));
    return var_0;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -803f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-941f, -553f, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1233f, -1633f, arg_0) - vec3<f32>(arg_0, arg_0, -574f)))))));
    var var_1 = ~14686u;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-193f, -841f, arg_2.x), vec3<f32>(808f, 221f, 141f), vec3<bool>(true, false, false))))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1172f, 2298f, 588f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_2.x, 319f) + vec3<f32>(var_0.x, 787f, 1448f)), vec3<bool>(false, false, false)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(838f, arg_0, arg_2.x), vec3<f32>(1826f, -1000f, 239f), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_2.x, 1025f)))), !all(vec4<bool>(true, false, true, true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_0, arg_0))));
    var_1 = min(0u, 17384u);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.x, arg_0), _wgslsmith_div_f32(815f, arg_0), _wgslsmith_f_op_f32(ceil(483f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(423f, -1062f, var_0.x)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(613f, -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -236f), 768f)))));
    return _wgslsmith_f_op_vec2_f32(-var_0.zz);
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    let var_0 = firstLeadingBit(~(-max(abs(vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.a)), countOneBits(vec4<i32>(37158i, u_input.a, u_input.a, 2147483647i)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f - _wgslsmith_f_op_f32(-1690f - _wgslsmith_f_op_f32(-arg_1.x))) - arg_1.x), max(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(49646u, 54803u, 4294967295u, 64283u), vec4<u32>(arg_0, 0u, 0u, 1u))), vec4<u32>(countOneBits(~arg_0), ~_wgslsmith_add_u32(arg_0, 1u), arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(6169u, arg_0, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(28765u, 14242u, 34742u), vec3<u32>(29547u, arg_0, 15010u))))), ~var_0.yyw, _wgslsmith_div_u32(~(~(29572u >> (arg_0 % 32u))), 4294967295u));
    let var_2 = u_input.a;
    global0 = array<Struct_1, 4>();
    var var_3 = var_1.c.x;
    return var_1.b.x & (var_1.b.x << (4294967295u % 32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = ~arg_3.c.x;
    var var_1 = true;
    var var_2 = true;
    var var_3 = func_1(~0u, vec2<u32>(_wgslsmith_dot_vec2_u32(~arg_0.xy, ~arg_0.yy) | reverseBits(111367u), firstLeadingBit(_wgslsmith_add_u32(arg_1.d & arg_0.x, arg_1.b.x & 4294967295u))), all(vec2<bool>(false, any(vec2<bool>(false, false)) || any(vec2<bool>(true, false)))), abs(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(1i, arg_3.c.x), -32069i, arg_1.c.x, -2147483647i))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), vec4<u32>(4294967295u, 0u, var_3.d, ~func_4(arg_3.d, _wgslsmith_f_op_vec2_f32(func_3(var_3.a, arg_3.c.zy, vec2<f32>(-509f, var_3.a))))), arg_3.c, 15232u);
    return reverseBits(-9027i);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.d, ~(arg_0.b.x | arg_2.b.x), ~(~24027u), ~_wgslsmith_div_u32(arg_2.d, 39298u))), arg_2.b);
    var var_1 = Struct_1(1024f, _wgslsmith_mod_vec4_u32(arg_0.b, min(countOneBits(vec4<u32>(8914u, arg_0.d, arg_2.b.x, var_0.x)) | ~vec4<u32>(arg_0.b.x, arg_0.b.x, 18574u, 37971u), var_0)), -_wgslsmith_mult_vec3_i32(min(_wgslsmith_mod_vec3_i32(arg_2.c, vec3<i32>(-49640i, arg_0.c.x, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.c.x, -9045i, -17797i), arg_2.c, vec3<i32>(-34999i, 0i, 1i))), func_1(arg_2.d, arg_2.b.yx, true, vec4<i32>(arg_0.c.x, arg_0.c.x, arg_1, arg_2.c.x)).c >> (_wgslsmith_clamp_vec3_u32(var_0.yww, vec3<u32>(arg_0.b.x, arg_0.b.x, var_0.x), vec3<u32>(9186u, arg_2.d, 0u)) % vec3<u32>(32u))), ~(~32618u));
    var_1 = func_1(func_4(countOneBits(_wgslsmith_div_u32(29871u, 26063u)), vec2<f32>(_wgslsmith_f_op_f32(-1135f + _wgslsmith_f_op_f32(f32(-1f) * -1641f)), arg_2.a)), arg_0.b.wz, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), var_0.x > arg_2.b.x)) || true, reverseBits(vec4<i32>(42380i, -51317i, arg_2.c.x, _wgslsmith_add_i32(47702i, arg_1))));
    let var_2 = func_1(~firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(25875u, arg_0.d), vec2<u32>(0u, arg_0.b.x))), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(select(10500u, arg_2.b.x, true), var_1.d | arg_0.d), ~reverseBits(vec2<u32>(1u, arg_2.d)))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, arg_2.c.x, -48338i, var_1.c.x), vec4<i32>(203i, arg_1, -2147483647i, -13570i)) ^ vec4<i32>(u_input.a, -6602i, arg_1, -27121i)) & vec4<i32>(2147483647i, -var_1.c.x | arg_0.c.x, _wgslsmith_dot_vec2_i32(arg_2.c.zz >> (vec2<u32>(arg_2.d, var_1.d) % vec2<u32>(32u)), -vec2<i32>(u_input.a, var_1.c.x)), var_1.c.x ^ -1i));
    var_1 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    return 974f;
}

fn func_6(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a + 434f), _wgslsmith_f_op_f32(floor(1000f))), arg_0))) * arg_0);
    var var_1 = arg_0.x;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2.a)), 3110f, false));
    var_1 = _wgslsmith_f_op_f32(abs(-1332f));
    var var_2 = func_1(1u, _wgslsmith_add_vec2_u32(arg_3.xw, ~(~arg_2.b.wx)), select(any(vec4<bool>(arg_1, true, true, true)), any(vec3<bool>(arg_1, arg_2.c.x > u_input.a, false)), all(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(true, arg_1)))), vec4<i32>(u_input.a << (1u % 32u), arg_2.c.x, select(max(-arg_2.c.x, arg_2.c.x), (arg_2.c.x >> (4294967295u % 32u)) & (u_input.a >> (54995u % 32u)), any(select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(false, arg_1, true, true)))), firstLeadingBit(arg_2.c.x)));
    return global0[_wgslsmith_index_u32(42884u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1205f)));
    global1 = array<Struct_1, 19>();
    var var_1 = vec2<bool>(true, true);
    let var_2 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1333f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) + vec2<f32>(_wgslsmith_f_op_f32(step(773f, var_0)), _wgslsmith_f_op_f32(var_0 + 719f)))), !var_1.x, Struct_1(_wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_mult_u32(1u, 0u), vec2<u32>(31219u, 46708u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), false, vec4<i32>(-1i, -21968i, u_input.a, u_input.a)), func_2(vec3<u32>(1u, 1u, 1u), func_1(4294967295u, vec2<u32>(62685u, 22914u), false, vec4<i32>(-38560i, 2147483647i, -1i, -2147483647i)), 1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26614u, 0u), vec2<u32>(0u, 4294967295u)), 19u)]), global1[_wgslsmith_index_u32(countOneBits(reverseBits(26613u)), 19u)], _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 - 349f)))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(~vec4<u32>(0u, 26706u, 51109u, 4294967295u))), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(-17503i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -3995i))), 1u), reverseBits(max(countOneBits(vec4<u32>(4294967295u, 1u, 1u, 31995u)), vec4<u32>(~41421u, ~1u, max(1u, 23271u), 1u))));
    let var_3 = var_2.c.x;
    let var_4 = -_wgslsmith_mod_i32(~(~var_3 << (func_6(vec2<f32>(var_2.a, 2476f), false, global0[_wgslsmith_index_u32(var_2.b.x, 4u)], vec4<u32>(1u, 23118u, 838u, var_2.b.x)).d % 32u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -812f))), func_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.d, 4294967295u, var_2.b.x), vec4<u32>(var_2.b.x, var_2.b.x, var_2.d, var_2.d))), var_2.b.zz, true, -_wgslsmith_sub_vec4_i32(vec4<i32>(var_3, var_2.c.x, var_4, var_3), vec4<i32>(-5052i, 1i, -1i, 48961i))).a, -133f, 181f), 136f);
}

