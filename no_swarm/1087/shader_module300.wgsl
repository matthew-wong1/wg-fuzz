struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_3) -> bool {
    let var_0 = arg_0;
    let var_1 = Struct_1(~(-abs(arg_3.c.xxw)), var_0.a.b, vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.d.b.x, arg_0.a.e.x, 22963u), vec3<u32>(arg_3.d.e.x, arg_3.b.x, 0u))), arg_0.a.e.x ^ 7513u, var_0.a.c.x, _wgslsmith_mult_u32(~abs(5748u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(64952u, 41885u), arg_3.d.c.xx))), -u_input.a.x, _wgslsmith_div_vec3_u32(vec3<u32>(~3896u, arg_3.d.e.x, _wgslsmith_mod_u32(35416u, 45773u)), arg_0.a.e) ^ ~(~abs(arg_2)));
    let var_2 = arg_0.b;
    var var_3 = any(vec2<bool>(false || (firstTrailingBit(var_1.d) >= countOneBits(-2147483647i)), arg_3.a));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> vec3<bool> {
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 23801u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(4294967295u, 4294967295u)))) < 78161u;
    var var_2 = Struct_2(~vec4<u32>(_wgslsmith_mult_u32(1u, 6587u), abs(~5912u), ~42893u, 0u), 1i, Struct_1(~abs(vec3<i32>(u_input.a.x, -20833i, 24652i)), select(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(0u, 4843u, 1u, 7866u)), false), vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 54100u, 4294967295u), vec3<u32>(40654u, 0u, 1u), vec3<bool>(true, arg_0.x, false)), ~vec3<u32>(47825u, 4294967295u, 1u)), 1u, ~_wgslsmith_clamp_u32(51740u, 4294967295u, 34543u), _wgslsmith_clamp_u32(1u, 4294967295u, _wgslsmith_mod_u32(4294967295u, 1u))), ~u_input.a.x, vec3<u32>(~firstLeadingBit(1u), 35862u, ~4294967295u)), _wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(38495u, 1u, 0u, 0u), vec4<u32>(48522u, 4294967295u, 45960u, 116447u)) << (firstTrailingBit(vec4<u32>(47671u, 2290u, 61110u, 0u)) % vec4<u32>(32u))), abs(vec4<u32>(4732u, _wgslsmith_sub_u32(4294967295u, 4294967295u), firstLeadingBit(30560u), ~1u))));
    var_0 = all(!select(!select(vec3<bool>(true, arg_0.x, true), vec3<bool>(true, true, arg_0.x), false), vec3<bool>(false, all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true), false));
    var var_3 = Struct_2(vec4<u32>(0u, var_2.c.e.x, firstLeadingBit(countOneBits(var_2.d)) | firstTrailingBit(~4294967295u), var_2.a.x), 9634i, var_2.c, var_2.a.x);
    return vec3<bool>(arg_0.x & true, arg_0.x, any(vec4<bool>(!arg_0.x, false, true, select(arg_0.x, !arg_0.x, arg_0.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: u32) -> i32 {
    var var_0 = Struct_4(Struct_1(~vec3<i32>(u_input.a.x, 1i, select(82712i, u_input.a.x, true)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(2463u, 0u, 0u, arg_1), ~vec4<u32>(arg_1, arg_1, 0u, arg_2)), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(1u), 4294967295u, ~arg_0.x, arg_0.x), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(663u, arg_0.x, arg_2, 1u), vec4<u32>(28434u, arg_1, arg_1, 47466u)), vec4<u32>(81541u, 59426u, arg_0.x, arg_1)), abs(vec4<u32>(arg_2, 0u, 0u, arg_1))), 20174i, ~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_2, 4294967295u), vec3<u32>(1u, 1u, arg_2)))), 257f, vec4<i32>(select(u_input.a.x, u_input.a.x, false), u_input.a.x, min(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), vec4<i32>(70592i, 26116i, u_input.a.x, u_input.a.x))), -1i));
    let var_1 = Struct_3(any(func_4(vec2<bool>(func_3(Struct_4(Struct_1(var_0.a.a, vec4<u32>(arg_1, arg_1, 21533u, 0u), vec4<u32>(0u, arg_2, var_0.a.e.x, 1u), 1i, vec3<u32>(0u, 0u, 0u)), 819f, vec4<i32>(var_0.c.x, 2147483647i, u_input.a.x, 41051i)), true, var_0.a.e, Struct_3(true, var_0.a.c.yxz, vec4<i32>(1i, u_input.a.x, u_input.a.x, -42658i), Struct_1(vec3<i32>(var_0.a.d, -1i, var_0.a.a.x), var_0.a.b, var_0.a.c, u_input.a.x, var_0.a.b.zzw))), true), 775f)), firstTrailingBit(_wgslsmith_add_vec3_u32(abs(max(vec3<u32>(4294967295u, arg_0.x, 4294967295u), var_0.a.b.ywz)), vec3<u32>(arg_2, ~arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11914u, var_0.a.e.x), var_0.a.b.wwx)))), abs(-(~var_0.c)), Struct_1(vec3<i32>(u_input.a.x, var_0.a.a.x | firstTrailingBit(var_0.c.x), ~select(u_input.a.x, var_0.c.x, false)), ~max(var_0.a.c, vec4<u32>(4205u, 1u, arg_0.x, 4294967295u)), abs(vec4<u32>(_wgslsmith_clamp_u32(51934u, 4294967295u, 4294967295u), ~var_0.a.e.x, 1u, reverseBits(4294967295u))), -_wgslsmith_add_i32(u_input.a.x >> (8604u % 32u), i32(-1i) * -30083i), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1 >> (1u % 32u), 1u, min(arg_2, 14683u)), vec3<u32>(~arg_1, 21025u, ~21948u))));
    let var_2 = !select(!select(!vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, var_1.a), vec4<bool>(true, var_1.a, true, false)), false), select(!select(vec4<bool>(var_1.a, true, false, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_1.a), select(select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, false, true, true)), select(vec4<bool>(false, var_1.a, false, true), vec4<bool>(var_1.a, var_1.a, false, var_1.a), var_1.a), !vec4<bool>(false, var_1.a, false, true)), select(select(vec4<bool>(false, var_1.a, var_1.a, true), vec4<bool>(var_1.a, false, var_1.a, true), vec4<bool>(true, var_1.a, true, false)), !vec4<bool>(var_1.a, true, true, true), vec4<bool>(var_1.a, true, true, true))), select(vec4<bool>(all(vec4<bool>(false, var_1.a, var_1.a, var_1.a)), var_1.a & true, var_1.a, var_1.a), vec4<bool>(true, true, true, true), select(!vec4<bool>(true, var_1.a, false, false), vec4<bool>(false, true, var_1.a, var_1.a), !vec4<bool>(false, var_1.a, var_1.a, false))));
    var var_3 = Struct_4(var_1.d, var_0.b, vec4<i32>(u_input.a.x, ~2147483647i, firstTrailingBit(u_input.a.x), var_0.a.a.x) >> (var_0.a.b % vec4<u32>(32u)));
    var var_4 = select(min(_wgslsmith_sub_vec2_u32(var_3.a.e.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 64186u) & var_0.a.b.wy, select(var_3.a.b.zw, arg_0, vec2<bool>(false, var_1.a)))), firstTrailingBit(vec2<u32>(var_3.a.e.x | 4294967295u, 1u))), var_3.a.c.zw, !(!all(vec4<bool>(var_1.a, var_1.a, false, var_1.a))));
    return ~1i;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec3<bool>(false, select(!(u_input.a.x < 62438i), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), true);
    var var_1 = ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(max(~(-1i), -61386i), func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 47348u), vec2<u32>(37404u, arg_0)), arg_0 ^ arg_0, arg_0), ~firstLeadingBit(u_input.a.x)), _wgslsmith_mult_i32(25192i, ~u_input.a.x));
    let var_2 = _wgslsmith_sub_u32(firstLeadingBit(arg_0) << (_wgslsmith_dot_vec3_u32(vec3<u32>(~10894u, 0u, ~1u), vec3<u32>(arg_0, arg_0, arg_0) >> (vec3<u32>(0u, arg_0, 29290u) % vec3<u32>(32u))) % 32u), 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-648f - _wgslsmith_f_op_f32(f32(-1f) * -1168f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1068f)), 1f)))));
    var_0 = vec3<bool>(u_input.a.x > u_input.a.x, false, all(!var_0.xz));
    return Struct_1(-(u_input.a.wwz & u_input.a.yyw), ~vec4<u32>(16976u, 86181u, arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 57793u, var_2, var_2), vec4<u32>(arg_0, arg_0, 4294967295u, 4294967295u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0, var_2), min(vec4<u32>(1u, 53416u, 21519u, var_2), vec4<u32>(18283u, 0u, var_2, 4294967295u)) << (vec4<u32>(0u, var_2, 4294967295u, var_2) % vec4<u32>(32u))), vec4<u32>(abs(firstTrailingBit(countOneBits(219u))), ~38670u, arg_0 << (~_wgslsmith_div_u32(var_2, arg_0) % 32u), 1u), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, -1i)), u_input.a.zw), vec2<i32>(u_input.a.x, 1i)), min(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 16823u, var_2), vec3<u32>(arg_0, var_2, arg_0)), var_2, _wgslsmith_mult_u32(var_2, arg_0)) ^ vec3<u32>(var_2, arg_0 | arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2, var_2), vec3<u32>(15373u, 34393u, arg_0))), max(vec3<u32>(arg_0, 4294967295u, var_2) & _wgslsmith_sub_vec3_u32(vec3<u32>(66040u, 1439u, 49458u), vec3<u32>(arg_0, arg_0, 2527u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 4294967295u, 4294967295u), vec3<u32>(1u, var_2, var_2)) | ~vec3<u32>(var_2, 0u, 0u))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> Struct_5 {
    var var_0 = -1363f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 3130f)));
    var var_1 = vec2<i32>(func_2(~firstLeadingBit(arg_3.a.xx | arg_3.c.b.wz), arg_3.c.c.x, (1u << (_wgslsmith_dot_vec3_u32(arg_3.c.b.xzz, arg_1.b) % 32u)) ^ _wgslsmith_dot_vec3_u32(arg_3.c.e, arg_2.e)), 74243i);
    var_1 = u_input.a.xw;
    let var_2 = arg_0.x;
    let var_3 = Struct_5(Struct_4(func_1(0u), arg_0.x, ~max(-vec4<i32>(arg_1.c.x, arg_1.d.d, -1i, u_input.a.x), vec4<i32>(-2147483647i, 2147483647i, -1029i, u_input.a.x))), arg_1.b.yz, 63531u == ~_wgslsmith_sub_u32(0u, ~arg_1.d.c.x));
    return Struct_5(Struct_4(func_1(var_3.a.a.e.x), _wgslsmith_f_op_f32(round(var_2)), vec4<i32>(24831i, _wgslsmith_mod_i32(countOneBits(var_1.x), u_input.a.x << (40937u % 32u)), _wgslsmith_div_i32(-12073i, -arg_2.d), ~reverseBits(43247i))), ~vec2<u32>(reverseBits(_wgslsmith_div_u32(var_3.b.x, 0u)), arg_1.b.x), true);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(590f + 991f), -1000f, _wgslsmith_f_op_f32(-1675f - arg_0.a.b), _wgslsmith_f_op_f32(floor(275f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.b, 442f, 864f, -799f))))))), Struct_3(true, abs(vec3<u32>(1u, arg_1.e.x, _wgslsmith_mod_u32(arg_1.e.x, 0u))), u_input.a, func_1(arg_1.e.x)), arg_0.a.a, Struct_2(vec4<u32>(func_1(~40530u).b.x, 113541u, _wgslsmith_sub_u32(arg_0.b.x, 1u), _wgslsmith_sub_u32(arg_0.a.a.b.x, arg_1.e.x) << (firstLeadingBit(4294967295u) % 32u)), ~_wgslsmith_mult_i32(arg_0.a.a.d & -68053i, -1i), Struct_1(arg_1.a & _wgslsmith_mod_vec3_i32(u_input.a.wyy, u_input.a.wwy), arg_0.a.a.b, vec4<u32>(~4294967295u, 0u, 20289u, 40231u), arg_1.a.x, arg_1.b.xxz), arg_0.a.a.b.x)).a;
    let var_1 = Struct_3(select(_wgslsmith_f_op_f32(max(975f, _wgslsmith_f_op_f32(round(var_0.b)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + arg_0.a.b), any(vec3<bool>(!arg_2, !arg_2, arg_0.b.x <= 0u)), arg_0.c), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 28725u, 0u), var_0.a.e, arg_0.c), _wgslsmith_mult_vec3_u32(var_0.a.c.zwx, vec3<u32>(var_0.a.c.x, var_0.a.b.x, 16222u))), arg_1.c.xyw), ~arg_0.a.a.b.zxz & arg_0.a.a.e), u_input.a, arg_1);
    var var_2 = Struct_5(arg_0.a, vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.a.a.c.xz, ~vec2<u32>(0u, 1u)), abs(~vec2<u32>(1u, var_0.a.c.x))), 4294967295u), true);
    return -(~(-vec2<i32>(45413i, arg_1.d << (var_2.a.a.b.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(141f, 1770f, 209f, 1000f)))), Struct_3(false, abs(max(vec3<u32>(4199u, 0u, 1u), vec3<u32>(20834u, 1u, 35334u))), u_input.a, func_1(~26772u)), Struct_1(firstTrailingBit(vec3<i32>(30427i, 1i, u_input.a.x)), reverseBits(func_1(4294967295u).c), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(103185u, 24509u, 4294967295u, 4294967295u), vec4<u32>(58787u, 1u, 101628u, 0u)), reverseBits(34686u), 1u), func_2(firstLeadingBit(vec2<u32>(0u, 27860u)), ~4294967295u, 15739u), vec3<u32>(reverseBits(4294967295u), ~0u, _wgslsmith_div_u32(1u, 1u))), Struct_2(select(vec4<u32>(134865u, 3196u, 1u, 1u), firstTrailingBit(vec4<u32>(1u, 50914u, 1u, 1u)), true), 7140i, func_1(~1u), 56404u)), Struct_1(countOneBits(select(vec3<i32>(u_input.a.x, 0i, 2147483647i), u_input.a.zxy, vec3<bool>(true, false, true)) ^ -vec3<i32>(u_input.a.x, -1i, -37674i)), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(56397u, 620u)), ~42053u, reverseBits(~33650u), select(~0u, select(0u, 118100u, false), true)), func_1(~(~4294967295u)).c, _wgslsmith_div_i32(-(i32(-1i) * -2147483647i), max(34587i, min(60754i, u_input.a.x))), firstLeadingBit(vec3<u32>(~1u, _wgslsmith_mod_u32(119593u, 7091u), firstTrailingBit(1u)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false))), !func_4(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), -721f).xy);
    var_0 = ~firstTrailingBit(u_input.a.zw);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, -353f, -1000f, -680f)))))) * vec4<f32>(-1662f, 1000f, 535f, 1000f));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), 1025f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(var_1.yz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, -134f))))) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), 2646f));
    var var_3 = Struct_5(func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_2.x, 647f)), vec4<f32>(1418f, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -571f, var_2.x, var_2.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1.x, -1277f, -394f) + vec4<f32>(-863f, -1000f, var_2.x, 1305f)))), Struct_3(true, _wgslsmith_clamp_vec3_u32(vec3<u32>(37893u, 0u, 1u), vec3<u32>(66554u, 1u, 29034u), vec3<u32>(4294967295u, 4294967295u, 26360u)) & _wgslsmith_add_vec3_u32(vec3<u32>(27536u, 41782u, 0u), vec3<u32>(0u, 18803u, 2767u)), vec4<i32>(u_input.a.x << (68672u % 32u), -11023i, 1i, var_0.x), func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 111018u), vec2<u32>(4294967295u, 0u)))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, -1000f, 1234f))), Struct_3(true, firstLeadingBit(vec3<u32>(15126u, 16702u, 4294967295u)), abs(vec4<i32>(1i, -7541i, u_input.a.x, 1i)), Struct_1(u_input.a.zzw, vec4<u32>(4294967295u, 124904u, 4294967295u, 60252u), vec4<u32>(43923u, 0u, 1u, 57911u), var_0.x, vec3<u32>(1u, 11033u, 84988u))), func_1(13258u), Struct_2(firstLeadingBit(vec4<u32>(0u, 1u, 21135u, 4294967295u)), firstTrailingBit(u_input.a.x), func_5(vec4<f32>(1221f, -1000f, 1000f, var_1.x), Struct_3(true, vec3<u32>(11071u, 4294967295u, 0u), vec4<i32>(17189i, -2147483647i, 12519i, 2147483647i), Struct_1(vec3<i32>(1i, 44371i, 25421i), vec4<u32>(0u, 64741u, 1u, 72796u), vec4<u32>(0u, 5033u, 78132u, 4294967295u), 0i, vec3<u32>(78618u, 4294967295u, 4294967295u))), Struct_1(u_input.a.xxw, vec4<u32>(14366u, 4294967295u, 18697u, 3938u), vec4<u32>(0u, 4294967295u, 66185u, 30329u), -1i, vec3<u32>(4294967295u, 4294967295u, 13581u)), Struct_2(vec4<u32>(23997u, 0u, 18526u, 7049u), -37918i, Struct_1(vec3<i32>(0i, 2147483647i, u_input.a.x), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(45691u, 69082u, 10262u, 31798u), -48304i, vec3<u32>(0u, 0u, 60651u)), 1u)).a.a, select(0u, 32248u, true))).a.a, Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(17412u, 54300u, 4294967295u, 18961u), vec4<u32>(20930u, 4294967295u, 1u, 4294967295u)), func_2(~vec2<u32>(19310u, 65178u), ~43476u, 1u), func_1(~4294967295u), ~reverseBits(48838u))).a, ~vec2<u32>(1u, 1u), false);
    var var_4 = var_0.x | -var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~var_3.b.x, abs(var_3.b.x)));
}

