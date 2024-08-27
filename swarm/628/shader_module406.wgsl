struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_mod_i32(arg_3.x, 0i);
    return 1739f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(true, _wgslsmith_mod_vec2_u32(vec2<u32>(31516u, u_input.e), vec2<u32>(u_input.d, 26319u)) ^ select(vec2<u32>(4294967295u, u_input.d), vec2<u32>(0u, u_input.c), false), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1137f, -1474f) * vec2<f32>(482f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, 340f)))), _wgslsmith_sub_vec2_i32(-u_input.b, ~u_input.a.yz)))))));
    var var_1 = Struct_1(firstTrailingBit(u_input.a.zzy << (vec3<u32>(~54360u, 1u, 1u) % vec3<u32>(32u))));
    let var_2 = !(!(var_1.a.x < select(var_1.a.x, u_input.b.x, true)));
    var_1 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(0i, -u_input.b.x >> (u_input.c % 32u)), -1i, _wgslsmith_mult_i32(i32(-1i) * -18349i, ~abs(u_input.a.x))));
    var_1 = Struct_1((firstTrailingBit(select(vec3<i32>(-6483i, 27209i, 60409i), vec3<i32>(34599i, -1i, var_1.a.x), false)) >> (vec3<u32>(~1u, 4294967295u, _wgslsmith_mult_u32(u_input.c, u_input.c)) % vec3<u32>(32u))) << (vec3<u32>(~_wgslsmith_sub_u32(22133u, u_input.d), u_input.e, u_input.e) % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_sub_vec3_i32(u_input.a.xzx, ~(~abs(var_1.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(min(arg_1.a.x, _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(9236i, -2092i), arg_3.a.yy), vec2<i32>(select(0i, -1i, false), u_input.b.x))), u_input.b.x);
    var_0 = ~u_input.b;
    var_0 = arg_1.a.yz;
    var var_1 = Struct_1(countOneBits(vec3<i32>(arg_2.a.x, _wgslsmith_sub_i32(~1i, func_2().a.x), func_2().a.x)));
    var_0 = vec2<i32>(var_1.a.x, 1i ^ arg_2.a.x) << (_wgslsmith_div_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d, 4294967295u), vec2<u32>(63995u, 1188u), ~vec2<u32>(323u, u_input.d))), ~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(0u, 60796u)), _wgslsmith_sub_vec2_u32(vec2<u32>(60495u, 727u), vec2<u32>(u_input.d, u_input.c)))) % vec2<u32>(32u));
    return func_2();
}

fn func_1() -> vec3<i32> {
    var var_0 = func_4(func_2(), func_2(), Struct_1(u_input.a.www), Struct_1(u_input.a.zzz));
    var var_1 = func_4(func_4(func_2(), Struct_1(firstLeadingBit(var_0.a)), func_4(Struct_1(u_input.a.wyx), Struct_1(-vec3<i32>(-21008i, 38818i, 3208i)), func_4(func_4(Struct_1(vec3<i32>(-39584i, u_input.b.x, 1i)), Struct_1(var_0.a), Struct_1(u_input.a.xyy), Struct_1(vec3<i32>(var_0.a.x, u_input.a.x, -1i))), func_2(), func_4(Struct_1(vec3<i32>(-2147483647i, var_0.a.x, 20046i)), Struct_1(vec3<i32>(0i, 2147483647i, var_0.a.x)), Struct_1(vec3<i32>(u_input.b.x, -903i, var_0.a.x)), Struct_1(vec3<i32>(-700i, var_0.a.x, var_0.a.x))), Struct_1(vec3<i32>(16339i, u_input.a.x, 2147483647i))), func_2()), func_4(func_4(Struct_1(u_input.a.yxx), Struct_1(u_input.a.yxx), func_4(Struct_1(vec3<i32>(var_0.a.x, -7727i, 15514i)), Struct_1(var_0.a), Struct_1(u_input.a.yyw), Struct_1(vec3<i32>(1i, -1i, -29698i))), Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, u_input.b.x))), func_4(Struct_1(u_input.a.ywx), Struct_1(var_0.a), func_4(Struct_1(vec3<i32>(u_input.b.x, -34155i, var_0.a.x)), Struct_1(vec3<i32>(-3171i, var_0.a.x, var_0.a.x)), Struct_1(vec3<i32>(-1i, var_0.a.x, u_input.a.x)), Struct_1(vec3<i32>(u_input.a.x, 2147483647i, 67976i))), Struct_1(vec3<i32>(2147483647i, -30001i, u_input.b.x))), Struct_1(vec3<i32>(var_0.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.c, 26687u, u_input.e) % vec3<u32>(32u))), func_2())), func_4(func_2(), func_4(Struct_1(u_input.a.zxz), Struct_1(min(vec3<i32>(u_input.b.x, 0i, u_input.b.x), u_input.a.wyw)), func_2(), func_4(func_2(), func_4(Struct_1(u_input.a.zzw), Struct_1(vec3<i32>(var_0.a.x, u_input.b.x, var_0.a.x)), Struct_1(vec3<i32>(var_0.a.x, u_input.b.x, var_0.a.x)), Struct_1(vec3<i32>(0i, -9624i, -35366i))), Struct_1(vec3<i32>(u_input.a.x, 0i, -1i)), func_2())), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1021i, 37349i), var_0.a.yx), 1i, var_0.a.x)), Struct_1(-select(vec3<i32>(u_input.b.x, 1i, var_0.a.x), vec3<i32>(-2147483647i, 0i, -1i), vec3<bool>(false, false, false)))), func_2(), func_2());
    var var_2 = _wgslsmith_f_op_f32(trunc(-409f));
    return vec3<i32>(2147483647i, ~var_1.a.x, ~_wgslsmith_mult_i32(var_1.a.x, i32(-1i) * -u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1();
    let var_1 = var_0.yz;
    var var_2 = func_2();
    var var_3 = Struct_1(vec3<i32>(1i, firstTrailingBit(~(var_2.a.x >> (u_input.c % 32u))), ~_wgslsmith_clamp_i32(-49912i, ~u_input.b.x, var_1.x)));
    let var_4 = abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(abs(vec3<u32>(71872u, u_input.e, 0u) >> (vec3<u32>(u_input.e, u_input.c, u_input.d) % vec3<u32>(32u)))), min(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, 18369u), vec3<u32>(32166u, u_input.c, u_input.e))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, u_input.d, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 11611u, 17505u), vec3<u32>(u_input.d, u_input.c, u_input.e))))));
    let var_5 = select(vec3<bool>(false, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), false), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false)))), !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, true))));
    var var_6 = Struct_1(~(~countOneBits(u_input.a.xzz)) << (~vec3<u32>(var_4.x << (u_input.e % 32u), 13267u, min(9056u, 13015u)) % vec3<u32>(32u)));
    var var_7 = func_1().x;
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_6.a.x, var_2.a.x, -26574i), u_input.a, u_input.a)) & reverseBits(vec4<i32>(var_2.a.x, -25327i, var_2.a.x, 38765i) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.x, var_1.x, -2147483647i, var_1.x), vec4<i32>(1i, 0i, 9148i, var_0.x))), 1f);
}

