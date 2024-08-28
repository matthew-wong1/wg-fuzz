struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(161f, 1479f, 472f), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(218f, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - 433f), 625f)), countOneBits(arg_0.zy & ~abs(vec2<u32>(2037u, arg_0.x))), vec4<bool>(false, (arg_1.a | (arg_1.a & arg_1.a)) || (arg_1.a | select(false, arg_1.a, arg_1.a)), arg_1.a, select(_wgslsmith_sub_i32(u_input.d, u_input.a.x), ~u_input.d, arg_1.a) >= u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1843f, 1335f, arg_2, -1000f), vec4<f32>(arg_2, arg_2, arg_2, arg_2)))))), arg_0);
    var var_1 = Struct_2(~firstLeadingBit(_wgslsmith_mult_vec3_u32(arg_0.wzx, vec3<u32>(43273u, 52070u, arg_0.x)) << (reverseBits(vec3<u32>(u_input.c.x, var_0.e.x, var_0.e.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(var_0.d.zxx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_2, 1000f), _wgslsmith_f_op_vec3_f32(min(var_0.d.zzz, vec3<f32>(arg_2, var_0.a.x, -1022f))))))));
    let var_2 = Struct_5(Struct_2(vec3<u32>(25948u, ~(~var_0.e.x), _wgslsmith_mod_u32(65882u, _wgslsmith_clamp_u32(var_0.e.x, 72374u, 23572u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1639f, arg_2, var_0.d.x))))));
    var_1 = var_2.a;
    let var_3 = arg_0;
    return all(select(vec3<bool>(~2863u != ~var_1.a.x, var_0.c.x, false), !vec3<bool>(arg_1.a, arg_1.a == arg_1.a, true), vec3<bool>(var_0.c.x, true, arg_1.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1331f))), 476f))), -160f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1063f) + vec3<f32>(-1268f, var_0.x, -419f)))))), vec2<u32>(u_input.b, 4294967295u), select(select(vec4<bool>(all(vec2<bool>(true, true)), true, true, func_3(vec4<u32>(u_input.b, 1u, u_input.b, 54867u), Struct_3(true), -901f)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(any(vec4<bool>(true, true, false, false)), true, true)), vec4<bool>(var_0.x > _wgslsmith_f_op_f32(-var_0.x), !all(vec4<bool>(true, true, false, false)), true, true || all(vec2<bool>(true, false))), select(_wgslsmith_f_op_f32(var_0.x - -2727f) <= -296f, 7019i != _wgslsmith_sub_i32(u_input.d, -1i), true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-940f, -893f, 823f, 272f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -576f, var_0.x, -775f) * vec4<f32>(-1000f, var_0.x, -679f, 381f))))))), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 0u, 43483u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 1u)) & _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 85126u, 1u, u_input.c.x), ~vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.c.x)), countOneBits(~firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)))));
    let var_2 = vec2<bool>(false, _wgslsmith_sub_i32(-2573i, u_input.a.x) != -(~_wgslsmith_clamp_i32(u_input.a.x, 0i, 14037i)));
    var var_3 = Struct_4(var_1.c.x, var_1.c.zxz, var_1.e.xxw, abs(u_input.a), u_input.c.zz);
    var_3 = Struct_4(var_2.x, select(select(vec3<bool>(false, all(var_1.c), true), select(!vec3<bool>(true, var_1.c.x, false), vec3<bool>(true, true, false), var_2.x), true), select(vec3<bool>(var_1.c.x || true, all(var_3.b.xy), true), vec3<bool>(!var_1.c.x, true, false), var_3.b), false), u_input.c, reverseBits(vec2<i32>(_wgslsmith_mult_i32(var_3.d.x, select(var_3.d.x, u_input.a.x, var_2.x)), var_3.d.x)), ~var_1.b);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), ~var_3.e, !vec4<bool>(all(var_1.c), var_1.c.x, any(vec2<bool>(true, true)), !(var_1.a.x != 277f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-792f, _wgslsmith_f_op_f32(1f + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(ceil(-1009f)))), vec4<u32>(~(~(1u ^ u_input.b)), var_3.c.x, var_1.b.x, abs(abs(0u))));
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    var var_0 = Struct_5(Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, arg_0.e.x, u_input.b), vec4<u32>(0u, arg_0.e.x, u_input.c.x, 93674u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, u_input.b, 4294967295u), vec4<u32>(1u, u_input.b, 42465u, 1u))), min(1u >> (arg_0.e.x % 32u), _wgslsmith_sub_u32(arg_0.b.x, u_input.c.x)), arg_0.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a), vec3<f32>(func_2().a.x, func_2().a.x, arg_0.d.x)))));
    var_0 = Struct_5(var_0.a);
    var var_1 = Struct_4(firstLeadingBit(firstTrailingBit(u_input.b & u_input.c.x)) > ~1u, vec3<bool>(func_3(abs(vec4<u32>(13485u, 1u, 24281u, var_0.a.a.x)), Struct_3(func_2().c.x), _wgslsmith_f_op_f32(f32(-1f) * -658f)), any(arg_0.c), arg_0.e.x != _wgslsmith_mod_u32(var_0.a.a.x, abs(var_0.a.a.x))), ~vec3<u32>(70930u, arg_0.e.x, ~(~8984u)), vec2<i32>(-_wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(u_input.a.x, -1i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(29846i, u_input.d), -vec2<i32>(u_input.a.x, -2147483647i)), -15958i)), countOneBits(countOneBits(vec2<u32>(arg_0.b.x, 35440u))));
    var var_2 = arg_0.c;
    var var_3 = i32(-1i) * -35971i;
    return Struct_5(Struct_2(abs(_wgslsmith_clamp_vec3_u32(~var_1.c, ~var_0.a.a, vec3<u32>(u_input.b, 1u, 51009u) | vec3<u32>(var_0.a.a.x, 48361u, var_1.e.x))), _wgslsmith_f_op_vec3_f32(arg_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d.zww - arg_0.a)))));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = func_4(func_2());
    let var_1 = var_0.a.b.x;
    let var_2 = func_2();
    let var_3 = ~firstLeadingBit(~vec3<u32>(_wgslsmith_add_u32(var_0.a.a.x, var_0.a.a.x), var_0.a.a.x, _wgslsmith_div_u32(u_input.c.x, 42157u)));
    var var_4 = _wgslsmith_mult_i32(-1i, 1i);
    return Struct_3(!all(!vec2<bool>(false, arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(true));
    var var_1 = Struct_4(!var_0.a, !vec3<bool>(!var_0.a, false, var_0.a), vec3<u32>(65837u, ~u_input.b, _wgslsmith_sub_u32(~(u_input.b ^ 23543u), 866u)), select(vec2<i32>(1i, _wgslsmith_clamp_i32(u_input.a.x, u_input.d, countOneBits(u_input.a.x))), select(-vec2<i32>(15385i, u_input.d), ~max(vec2<i32>(u_input.d, -11465i), u_input.a), !func_3(vec4<u32>(55442u, u_input.c.x, u_input.c.x, 1u), Struct_3(var_0.a), 332f)), !func_2().c.wx), u_input.c.xz);
    let var_2 = 46680i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-202f)), 840f, -811f))), _wgslsmith_clamp_vec2_u32(var_1.e, _wgslsmith_clamp_vec2_u32(firstLeadingBit(firstTrailingBit(u_input.c.xy)), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.c.x, var_1.e.x), var_1.e), max(_wgslsmith_mult_vec2_u32(var_1.c.xx, vec2<u32>(var_1.e.x, 34204u)), vec2<u32>(var_1.e.x, u_input.b))), vec2<u32>(16908u, ~u_input.c.x)), !vec4<bool>(func_1(Struct_3(false)).a & var_0.a, all(!vec4<bool>(false, var_1.b.x, false, false)), false, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1304f, 226f, -1000f, 1204f))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(f32(-1f) * -2993f)))), ~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b, 77630u, var_1.c.x, var_1.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(47159u, u_input.b, u_input.b, var_1.e.x), vec4<u32>(19764u, var_1.c.x, u_input.b, 55004u))), ~(vec4<u32>(u_input.c.x, u_input.c.x, var_1.e.x, 0u) ^ vec4<u32>(var_1.c.x, u_input.b, 41125u, u_input.b))));
    var_0 = func_1(func_1(Struct_3((var_1.d.x >> (0u % 32u)) <= -18310i)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<u32>(var_1.c.x, u_input.b, var_3.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.e.x, u_input.b, var_3.e.x) << (~vec3<u32>(var_1.e.x, var_3.b.x, 1u) % vec3<u32>(32u)), ~vec3<u32>(233u, var_3.e.x, 4294967295u) & var_1.c)), _wgslsmith_div_f32(var_3.a.x, 1311f), var_1.e.x);
}

