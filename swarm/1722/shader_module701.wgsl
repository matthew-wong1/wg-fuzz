struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = -246f;
    let var_1 = arg_0.a.a;
    var var_2 = Struct_3(Struct_2(~vec2<u32>(_wgslsmith_mult_u32(83699u, var_1.x), countOneBits(1u))), Struct_1(true, select(!vec2<bool>(arg_0.b.b.x, arg_0.b.d.x), !arg_0.b.b, _wgslsmith_f_op_f32(step(672f, var_0)) != -440f), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, 0i), vec3<i32>(arg_0.b.e, 8864i, 0i)), max(arg_0.b.c, arg_0.b.c)) & arg_0.b.c, select(vec3<bool>(arg_0.b.b.x, arg_0.b.a, !arg_0.b.a), arg_0.b.d, !select(true, false, true)), u_input.e.x));
    let var_3 = ~(-abs(-2147483647i));
    var var_4 = vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a), vec4<u32>(var_2.a.a.x, 53898u, var_2.a.a.x, arg_0.a.a.x)), 19198u) >> (vec2<u32>(1u, 35003u) % vec2<u32>(32u));
    return _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.e.x, var_3 | -var_3), _wgslsmith_clamp_i32(i32(-1i) * -arg_0.b.c.x, _wgslsmith_mod_i32(-11000i, _wgslsmith_clamp_i32(-35511i, -1i, arg_0.b.c.x)), firstTrailingBit(21851i))) <= var_3;
}

fn func_2() -> i32 {
    var var_0 = ~(~(~_wgslsmith_clamp_u32(u_input.c, u_input.b, u_input.d.x) >> (firstLeadingBit(~u_input.d.x) % 32u)));
    var var_1 = Struct_1(true, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_clamp_vec3_i32(-(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<i32>(1i, -2147483647i, u_input.e.x)) & ~vec3<i32>(u_input.e.x, 1i, 36212i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3805i, u_input.e.x, u_input.e.x), vec3<i32>(u_input.e.x, 0i, u_input.e.x), vec3<i32>(u_input.e.x, 13975i, 5767i)) ^ (vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x) << (u_input.a.wyw % vec3<u32>(32u))), ~max(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<i32>(46899i, u_input.e.x, u_input.e.x))), vec3<i32>(_wgslsmith_sub_i32(u_input.e.x, -1i) & countOneBits(1i), abs(1i), min(u_input.e.x | u_input.e.x, -1i))), !vec3<bool>(func_3(Struct_3(Struct_2(u_input.a.zy), Struct_1(false, vec2<bool>(false, false), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<bool>(false, false, false), -9835i))), (u_input.e.x >> (u_input.c % 32u)) > -u_input.e.x, true), u_input.e.x);
    var_0 = _wgslsmith_dot_vec4_u32(~(~max(~vec4<u32>(u_input.d.x, u_input.c, u_input.b, 19327u), ~vec4<u32>(u_input.a.x, 1u, 121661u, u_input.c))), ~_wgslsmith_mult_vec4_u32((vec4<u32>(0u, u_input.a.x, u_input.d.x, 0u) ^ vec4<u32>(u_input.c, u_input.d.x, u_input.b, u_input.a.x)) << (u_input.a % vec4<u32>(32u)), vec4<u32>(~4294967295u, u_input.d.x, ~4294967295u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    let var_2 = Struct_3(Struct_2(firstLeadingBit(~_wgslsmith_clamp_vec2_u32(u_input.d.yx, u_input.a.xz, u_input.a.yz))), Struct_1(var_1.a, !select(var_1.b, vec2<bool>(var_1.a, false), !var_1.d.xz), ~var_1.c, var_1.d, _wgslsmith_mult_i32(~u_input.e.x, abs(~u_input.e.x))));
    var_1 = Struct_1(all(!select(vec3<bool>(var_2.b.a, true, var_1.a), var_1.d, var_1.b.x)) | true, vec2<bool>(var_2.b.b.x, var_2.b.b.x), vec3<i32>((firstLeadingBit(var_2.b.c.x) << (abs(var_2.a.a.x) % 32u)) << (0u % 32u), select(var_2.b.e, ~6144i, !any(var_1.b)), 7276i), var_2.b.d, abs(~u_input.e.x & (u_input.e.x << (~var_2.a.a.x % 32u))));
    return _wgslsmith_add_i32(-2147483647i, ~(-9495i));
}

fn func_4(arg_0: i32) -> Struct_2 {
    return Struct_2(u_input.a.xz >> (min(~(~u_input.a.ww), ~abs(vec2<u32>(u_input.b, 4294967295u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    var var_0 = func_4(func_2());
    var var_1 = !any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), true));
    return func_4(select(min(~u_input.e.x, ~_wgslsmith_mod_i32(u_input.e.x, -1i)), (_wgslsmith_mult_i32(u_input.e.x, 0i) << (func_4(-37511i).a.x % 32u)) >> (1u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(256f)) - _wgslsmith_f_op_f32(2055f - -2714f)) == 1698f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = vec4<i32>(select(abs(u_input.e.x & u_input.e.x), u_input.e.x, arg_1.b.d.x), ~4577i, _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_div_i32(i32(-1i) * -1i, 75245i), arg_1.b.c.x), 1i);
    var_0 = (~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_1.b.e, 14778i, u_input.e.x), vec4<i32>(0i, var_0.x, arg_1.b.e, -1i)), firstLeadingBit(vec4<i32>(-2147483647i, 31541i, -1i, 7164i))) | ~(abs(vec4<i32>(1i, var_0.x, -3976i, u_input.e.x)) & vec4<i32>(-2147483647i, 1400i, var_0.x, u_input.e.x))) << (firstTrailingBit(firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(arg_1.a.a.x, 0u, 83579u), 4294967295u, arg_1.a.a.x, func_4(arg_1.b.c.x).a.x))) % vec4<u32>(32u));
    let var_1 = Struct_3(Struct_2(vec2<u32>(48203u, arg_1.a.a.x)), Struct_1(!(!(!arg_1.b.a)), arg_1.b.d.xz, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(var_0.x, u_input.e.x, -57465i)), abs(vec3<i32>(2147483647i, 0i, 6313i))), -vec3<i32>(arg_1.b.c.x, -569i, 1i)), vec3<bool>(arg_1.b.b.x, any(vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.d.x, true)) == true, true), ~0i));
    var var_2 = !select(select(select(vec3<bool>(var_1.b.b.x, var_1.b.d.x, true), !var_1.b.d, !var_1.b.a), var_1.b.d, vec3<bool>(true, true, true)), var_1.b.d, select(!arg_1.b.d, select(!vec3<bool>(var_1.b.b.x, var_1.b.b.x, arg_1.b.b.x), vec3<bool>(var_1.b.a, var_1.b.b.x, arg_1.b.a), arg_1.b.a && true), true));
    var_0 = ~(~((-vec4<i32>(67937i, u_input.e.x, 2147483647i, -1i) >> (_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_1.a.a.x, arg_1.a.a.x, 1u, u_input.b)) % vec4<u32>(32u))) << ((vec4<u32>(arg_0.a.x, 1u, 7256u, u_input.c) & vec4<u32>(19255u, 74634u, arg_1.a.a.x, arg_1.a.a.x)) % vec4<u32>(32u))));
    return Struct_1(all(!(!select(vec3<bool>(true, true, arg_1.b.b.x), arg_1.b.d, true))), select(vec2<bool>(true, var_1.b.b.x), vec2<bool>(var_1.b.b.x, true), vec2<bool>(var_2.x, true)), vec3<i32>(u_input.e.x, firstTrailingBit(278i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, var_1.b.e) | select(vec4<i32>(var_0.x, 2147483647i, arg_1.b.c.x, -2147483647i), vec4<i32>(1i, 0i, 1i, arg_1.b.e), vec4<bool>(var_2.x, false, var_2.x, var_2.x)), ~(~vec4<i32>(-15541i, arg_1.b.e, var_1.b.c.x, -8327i)))), arg_1.b.d, u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(~select(u_input.d.zy, _wgslsmith_mod_vec2_u32(u_input.d.yz, u_input.d.xz), vec2<bool>(true, true))), Struct_3(func_1(_wgslsmith_add_i32(42691i, u_input.e.x) & -2147483647i, u_input.e.x), Struct_1(false, vec2<bool>(true, true), vec3<i32>(22542i, i32(-1i) * -1i, u_input.e.x), vec3<bool>(true, true, true), i32(-1i) * -55436i)));
    let var_1 = 10733i;
    var var_2 = Struct_2(reverseBits(u_input.d.xy));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-379f))), _wgslsmith_f_op_f32(ceil(432f))));
    var var_4 = Struct_3(Struct_2(vec2<u32>(u_input.c, 23415u)), var_0);
    var_2 = func_4(var_1);
    var var_5 = var_3;
    var var_6 = var_4.b.d.x;
    var var_7 = vec2<i32>((i32(-1i) * -15838i) ^ u_input.e.x, -abs(~u_input.e.x << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 727f) * vec2<f32>(-1000f, -1269f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 730f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1010f, var_3))))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-995f)), 1777f)), vec2<u32>(firstLeadingBit(4294967295u), ~4294967295u), vec4<u32>(15839u, 3638u, min(63360u, u_input.b), min(3455u, _wgslsmith_clamp_u32(4294967295u, var_4.a.a.x, 1u)) >> (33319u % 32u)), _wgslsmith_mod_i32(1i, max(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1, -1i, -22976i, 0i), vec4<i32>(var_1, u_input.e.x, u_input.e.x, var_0.e), false), vec4<i32>(-460i, var_1, var_0.e, var_1)), func_5(func_1(7249i, 37615i), Struct_3(var_4.a, var_0)).c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_3)), -760f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3))))) - -1362f));
}

