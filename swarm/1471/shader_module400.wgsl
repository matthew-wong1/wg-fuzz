struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<i32>(31157i, -1i, 2147483647i), true), Struct_3(vec3<i32>(-43541i, 42202i, 0i), false), Struct_3(vec3<i32>(-63260i, 2147483647i, 44159i), false), Struct_3(vec3<i32>(1i, 32081i, -11853i), true), Struct_3(vec3<i32>(1i, -25255i, 22525i), false), Struct_3(vec3<i32>(-1i, -19720i, i32(-2147483648)), false), Struct_3(vec3<i32>(-23590i, 17218i, -32478i), true), Struct_3(vec3<i32>(-27781i, 50812i, -9229i), true), Struct_3(vec3<i32>(-1i, 31243i, i32(-2147483648)), false), Struct_3(vec3<i32>(-1038i, 11802i, i32(-2147483648)), true), Struct_3(vec3<i32>(7965i, 1i, -6883i), true), Struct_3(vec3<i32>(13773i, 0i, i32(-2147483648)), false));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = !select(vec2<bool>(arg_1, arg_2.x), select(arg_2, select(arg_2, select(vec2<bool>(arg_2.x, true), arg_2, false), false), arg_2), select(arg_2, arg_2, true));
    let var_1 = arg_3.a.yy;
    global0 = array<Struct_3, 12>();
    let var_2 = Struct_2(!(!vec3<bool>(all(vec3<bool>(true, false, false)), true, var_0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.a, 0i, ~arg_3.c), vec3<i32>(27561i, 73413i, (i32(-1i) * -32728i) & _wgslsmith_sub_i32(u_input.a, -2147483647i))), arg_0.x, arg_3);
    let var_3 = var_2.c;
    return ~(-_wgslsmith_dot_vec2_i32(-max(vec2<i32>(arg_3.c, 0i), vec2<i32>(arg_3.c, arg_3.c)), min(abs(var_2.b.xy), _wgslsmith_mult_vec2_i32(var_2.b.yx, vec2<i32>(u_input.a, 2147483647i)))));
}

fn func_4(arg_0: i32) -> u32 {
    let var_0 = ~(~vec4<u32>(0u, _wgslsmith_mod_u32(1u, ~1u), _wgslsmith_sub_u32(~0u, 1u), countOneBits(6922u)));
    var var_1 = Struct_2(select(vec3<bool>(true, false, _wgslsmith_clamp_i32(1i, u_input.a, 2147483647i) > 34112i), vec3<bool>(false, true, false), true), vec3<i32>(u_input.a, func_3(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u), ~var_0), true, vec2<bool>(var_0.x > 37856u, true), Struct_1(vec3<f32>(-1054f, -1127f, -167f), true, ~u_input.a)), 19059i), var_0.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1262f)), -1328f, 1f), all(vec4<bool>(true, true, select(false, true, false), false)), -_wgslsmith_mod_i32(max(u_input.a, 0i), 83081i)));
    var var_2 = var_1.d.a.x;
    let var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, 790f), var_1.d.a.x, 982f)), var_1.d.a), !all(select(vec3<bool>(true, true, true), var_1.a, var_1.a)), var_1.b.x);
    let var_4 = u_input.a ^ (((abs(var_3.c) ^ select(arg_0, -2147483647i, false)) & min(firstTrailingBit(-964i), var_1.d.c)) | (arg_0 << (_wgslsmith_sub_u32(var_1.c, var_1.c) % 32u)));
    return ~_wgslsmith_mult_u32(1u, 39558u);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_3, 12>();
    var var_0 = ~_wgslsmith_div_u32(arg_1.c, arg_1.c);
    global0 = array<Struct_3, 12>();
    var var_1 = arg_1;
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~4294967295u), max(_wgslsmith_mult_u32(var_1.c & arg_1.c, 35423u), _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.c, 54227u), _wgslsmith_sub_u32(38278u, var_1.c))), _wgslsmith_mult_u32(func_4(func_3(vec4<u32>(4294967295u, 36157u, 35388u, arg_1.c), true, vec2<bool>(true, true), arg_1.d)), ~1u)), vec3<u32>(var_1.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c, arg_1.c, 0u, 1u), select(~vec4<u32>(arg_1.c, arg_1.c, 12827u, arg_1.c), firstTrailingBit(vec4<u32>(arg_1.c, arg_1.c, var_1.c, var_1.c)), !var_1.d.b)), 48825u));
    return arg_1;
}

fn func_5(arg_0: Struct_2) -> i32 {
    let var_0 = arg_0;
    var var_1 = Struct_3(arg_0.b, !arg_0.a.x);
    global0 = array<Struct_3, 12>();
    let var_2 = _wgslsmith_add_vec3_u32(countOneBits(max(select(vec3<u32>(arg_0.c, 4905u, arg_0.c), vec3<u32>(21209u, arg_0.c, 4294967295u), var_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(957u, arg_0.c, var_0.c), vec3<u32>(var_0.c, 0u, 1u))) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c, var_0.c, 4294967295u), vec3<u32>(var_0.c, 1u, var_0.c), vec3<u32>(arg_0.c, arg_0.c, 1u))), min(vec3<u32>(~arg_0.c, ~1006u, _wgslsmith_sub_u32(34930u, 9551u)), ~(~vec3<u32>(var_0.c, var_0.c, arg_0.c))) << (firstTrailingBit(vec3<u32>(abs(1u), _wgslsmith_div_u32(4294967295u, 37458u), min(9372u, 0u))) % vec3<u32>(32u)));
    let var_3 = all(func_2(~var_0.d.c, Struct_2(!select(var_0.a, vec3<bool>(true, true, var_1.b), vec3<bool>(var_0.a.x, var_0.d.b, true)), -(~arg_0.b), min(arg_0.c, 38115u) | ~53896u, var_0.d)).a);
    return countOneBits(var_0.b.x);
}

fn func_1() -> Struct_2 {
    var var_0 = select(select(-vec4<i32>(u_input.a, -2147483647i, -75443i, 1i) >> (vec4<u32>(1u, 0u, 112420u, 126512u) % vec4<u32>(32u)), -(~vec4<i32>(2305i, -31957i, 26784i, u_input.a)), any(vec2<bool>(true, true))), ~(min(vec4<i32>(-1i, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, -36691i)) & -vec4<i32>(u_input.a, -60992i, -11302i, u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec3<bool>(true, true, true))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)))) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a), 1i, -36981i), reverseBits(vec4<i32>(28661i, 1i, -1i, 5452i) ^ vec4<i32>(0i, 1i, u_input.a, u_input.a)));
    var_0 = _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a) ^ vec4<i32>(1i, var_0.x, -1i, u_input.a)), vec4<i32>(-u_input.a, 2147483647i, func_5(func_2(-34532i, Struct_2(vec3<bool>(false, false, true), vec3<i32>(-2147483647i, u_input.a, u_input.a), 38036u, Struct_1(vec3<f32>(-395f, -1361f, 737f), true, -23256i)))), abs(~10659i))) ^ vec4<i32>(~(-min(u_input.a, 0i)), ~(-2147483647i), ~u_input.a, var_0.x << (0u % 32u));
    var var_1 = firstTrailingBit(max(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a), _wgslsmith_sub_i32(-56773i, var_0.x), u_input.a, var_0.x), select(vec4<i32>(u_input.a, 0i, var_0.x, -35364i), vec4<i32>(58173i, u_input.a, 0i, u_input.a), false) >> (vec4<u32>(4294967295u, 39958u, 4294967295u, 20385u) % vec4<u32>(32u)))) | vec4<i32>(~(~u_input.a), firstTrailingBit(abs(~1i)), u_input.a, u_input.a);
    let var_2 = countOneBits(reverseBits(vec4<u32>(23741u, ~func_2(-80565i, Struct_2(vec3<bool>(false, true, false), var_1.wwy, 1u, Struct_1(vec3<f32>(-304f, -1000f, 263f), true, 2147483647i))).c, 1u, ~max(1u, 1u))));
    var var_3 = Struct_2(select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), func_2(-2147483647i, Struct_2(vec3<bool>(false, false, true), vec3<i32>(-1i, 2147483647i, 17212i), var_2.x, Struct_1(vec3<f32>(1233f, 116f, 893f), false, var_0.x))).a, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), true), vec3<bool>(true, true, true), true), select(_wgslsmith_mult_vec3_i32(-var_1.yyz, firstLeadingBit(func_2(25801i, Struct_2(vec3<bool>(false, false, true), vec3<i32>(u_input.a, 1i, 24152i), 4294967295u, Struct_1(vec3<f32>(-603f, 1272f, -279f), false, 1i))).b)), ~(-var_0.yxz) >> (var_2.xyw % vec3<u32>(32u)), vec3<bool>(true, select(true, false, true), all(vec2<bool>(true, true)))), ~_wgslsmith_mod_u32(firstTrailingBit(~79896u), var_2.x), func_2(var_0.x, Struct_2(vec3<bool>(any(vec3<bool>(true, false, false)), true, all(vec4<bool>(true, true, true, false))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_1.x, 1797i), var_1.wyx), var_2.x, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1372f, 1000f, 1280f) - vec3<f32>(1000f, 1351f, 592f)), true, -12244i))).d);
    return func_2(abs(func_3(~reverseBits(vec4<u32>(15002u, 4294967295u, 1u, 54417u)), any(vec2<bool>(var_3.a.x, false)), select(!vec2<bool>(var_3.a.x, false), vec2<bool>(true, var_3.a.x), vec2<bool>(var_3.a.x, var_3.a.x)), Struct_1(var_3.d.a, !var_3.d.b, u_input.a))), func_2(_wgslsmith_div_i32(countOneBits(~var_3.b.x), _wgslsmith_clamp_i32(var_3.b.x, firstLeadingBit(var_1.x), _wgslsmith_mult_i32(61723i, 0i))), Struct_2(select(vec3<bool>(var_3.d.b, true, false), select(vec3<bool>(false, var_3.d.b, false), var_3.a, true), var_3.d.b), var_0.xzy, ~(var_2.x >> (4294967295u % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, -1157f, -706f)), true, -2147483647i))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_3, 12>();
    let var_0 = arg_0.ww;
    global0 = array<Struct_3, 12>();
    let var_1 = arg_1;
    let var_2 = arg_1.d.a.yz;
    return arg_1;
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(-17898i, arg_1.d.c), u_input.a, 1i);
    let var_1 = ~vec2<u32>(42811u, ~arg_1.c | (4294967295u | arg_1.c));
    let var_2 = vec3<bool>(all(vec3<bool>(func_2(u_input.a, Struct_2(vec3<bool>(arg_1.d.b, true, true), arg_0, 16531u, arg_1.d)).d.b != select(true, false, arg_1.d.b), false, _wgslsmith_div_f32(arg_1.d.a.x, 1403f) < _wgslsmith_f_op_f32(f32(-1f) * -597f))), arg_1.c > 4294967295u, false);
    let var_3 = true;
    var_0 = min(~_wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_0.x, arg_0.x, 22784i) ^ vec3<i32>(-2147483647i, u_input.a, -65036i)), vec3<i32>(_wgslsmith_add_i32(arg_0.x, -16871i), -13858i, u_input.a)), select(firstTrailingBit(vec3<i32>(-arg_1.b.x, 1i ^ arg_1.d.c, 83307i)), min(~(-arg_1.b), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_0, vec3<i32>(u_input.a, 27597i, arg_0.x)), vec3<i32>(var_0.x, arg_1.d.c, arg_1.d.c), arg_1.b << (vec3<u32>(arg_1.c, 0u, 45929u) % vec3<u32>(32u)))), arg_1.d.b));
    return _wgslsmith_f_op_f32(-arg_1.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(func_7(vec3<i32>(u_input.a, -57541i, 21166i), func_6(max(-vec4<i32>(0i, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i) >> (vec4<u32>(28607u, 8218u, 50340u, 1u) % vec4<u32>(32u))), func_1()))));
    global0 = array<Struct_3, 12>();
    let var_1 = Struct_3(countOneBits(vec3<i32>(max(-1i, 0i), u_input.a, u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14459u, 1u, 4294967295u), vec4<u32>(52066u, 31497u, 0u, 0u)) % 32u))), func_1().d.b);
    let var_2 = vec2<f32>(-1885f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-543f, -170f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(715f * 365f), 1325f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_2.x)), -269f, _wgslsmith_f_op_f32(trunc(var_2.x)))) + vec3<f32>(_wgslsmith_f_op_f32(round(var_2.x)), -338f, 153f)), true, _wgslsmith_add_i32(0i & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -17998i, 1239i) | vec4<i32>(3180i, u_input.a, -1i, u_input.a), vec4<i32>(var_1.a.x, u_input.a, 19290i, -22346i)), 55661i));
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(1638f, -vec2<i32>(i32(-1i) * -2147483647i, ~0i), -var_1.a.yy, _wgslsmith_sub_u32(~0u, ~(~0u)), min(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 43842u), vec2<u32>(50015u, 14551u)), vec2<u32>(4294967295u, 78299u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(62529u, 27382u), vec2<u32>(1u, 0u), vec2<u32>(1u, 7769u)) & ~vec2<u32>(1u, 1u))));
}

