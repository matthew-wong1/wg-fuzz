struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = u_input.c.x;
    let var_1 = ~vec3<u32>(19149u, 29470u, ~_wgslsmith_add_u32(~u_input.b.x, ~u_input.c.x));
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    var var_0 = -1840f;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(992f, 1577f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-504f, var_1.a.b), vec2<f32>(var_1.a.b, -135f))))) * vec2<f32>(-852f, _wgslsmith_f_op_f32(floor(1334f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, -496f)))))))));
    var var_3 = var_1.d.yyz;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-498f, 438f, var_2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a.b, var_2.x, arg_1.a.b), vec3<f32>(439f, arg_1.a.b, arg_1.a.b))) - vec3<f32>(var_1.a.b, arg_1.a.b, -502f)))), vec3<f32>(-1133f, var_1.a.b, var_1.a.b), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1989f + var_1.a.b)))));
}

fn func_2() -> bool {
    var var_0 = vec4<bool>(false, select(false, !all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), select(u_input.c.x, 11641u, u_input.c.x < 0u) < ~0u), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), true);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1128f, -959f)), _wgslsmith_f_op_f32(abs(1000f)), any(var_0.wwx))))), _wgslsmith_f_op_f32(func_4(func_3(vec4<bool>(var_0.x, var_0.x, var_0.x, true)) >> (1u % 32u), Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_div_f32(-1153f, 242f), false, min(vec3<i32>(1i, 13405i, u_input.a.x), vec3<i32>(-70245i, -2147483647i, 36631i))), vec3<i32>(-1i, min(-2147483647i, 1i), ~u_input.a.x), true, ~(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.c.x))), _wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(u_input.a, u_input.a)), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)))));
    var var_2 = 1825f;
    var_0 = !select(vec4<bool>(var_0.x, !(!var_0.x), any(vec2<bool>(var_0.x, true)) || any(var_0.yyz), 0i <= u_input.a.x), select(vec4<bool>(var_1.x > 1716f, false, true, true), vec4<bool>(!var_0.x, any(var_0.yw), all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true), !vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !var_0.x);
    var_2 = 1551f;
    return all(select(vec3<bool>(true, !(var_1.x > 2335f), var_0.x), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), u_input.a.x <= -1i), vec3<bool>(all(var_0.xw), u_input.b.x <= 37854u, true), var_0.x), select(vec3<bool>(var_0.x, 44910u < u_input.c.x, any(var_0.xz)), vec3<bool>(var_0.x, var_0.x, var_0.x), any(!vec4<bool>(var_0.x, true, false, var_0.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_1(~vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -590f))) * -554f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-107f * -1700f), _wgslsmith_f_op_f32(step(-457f, -1390f))))))), select(true || !func_2(), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), ~(arg_0.x & 0u) >= max(~arg_0.x, ~0u)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-3432i, u_input.a.x, u_input.a.x) ^ ~vec3<i32>(156i, -37775i, 29797i), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 1i, 1i))));
    var var_1 = Struct_2(Struct_1(u_input.a, var_0.b, var_0.c, min(var_0.d, select(select(var_0.d, vec3<i32>(9737i, u_input.a.x, 15067i), var_0.c), var_0.d, !vec3<bool>(false, var_0.c, true)))), _wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 1i, 1i), vec3<i32>(-2147483647i, 2147483647i, -1i)), firstLeadingBit(-u_input.a.x), -countOneBits(-14304i)), vec3<i32>(3826i, -1i, -2147483647i)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(179f, -1460f)) * -327f) >= var_0.b), arg_0);
    var_1 = Struct_2(Struct_1((var_0.a | vec2<i32>(20528i, -1i)) | min(u_input.a, -var_0.a), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1793f), var_1.a.b), -551f), (var_1.a.c | true) || var_0.c, ((var_0.d ^ vec3<i32>(u_input.a.x, var_0.a.x, 0i)) | (vec3<i32>(var_1.b.x, var_0.d.x, var_0.d.x) ^ var_0.d)) ^ var_1.b), var_1.a.d, !var_1.c, vec4<u32>(~(~var_1.d.x) ^ 4294967295u, select(62132u, u_input.c.x, !var_0.c), ~reverseBits(~arg_1), _wgslsmith_clamp_u32(0u, 18498u, 19521u)));
    var var_2 = _wgslsmith_sub_vec3_i32(~var_0.d, ~var_0.d);
    var var_3 = Struct_2(var_1.a, _wgslsmith_sub_vec3_i32(~(-select(var_0.d, var_1.a.d, true)), _wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(var_0.d, vec3<i32>(-2147483647i, -2147483647i, 1i)), vec3<i32>(21307i << (u_input.b.x % 32u), select(63101i, 6806i, var_1.a.c), ~2147483647i))), false, var_1.d);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-min(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(44602u, 4294967295u, u_input.c.x, 4294967295u), vec4<u32>(40486u, u_input.b.x, 1u, u_input.b.x)), ~1u), ~(-vec2<i32>(58974i, u_input.a.x))), _wgslsmith_f_op_f32(func_4(~reverseBits(u_input.b.x) ^ 78880u, Struct_2(Struct_1(~vec2<i32>(u_input.a.x, -21354i), _wgslsmith_f_op_f32(func_4(u_input.c.x, Struct_2(Struct_1(vec2<i32>(115530i, u_input.a.x), 574f, true, vec3<i32>(29006i, u_input.a.x, -46248i)), vec3<i32>(u_input.a.x, -10196i, 1i), false, vec4<u32>(u_input.c.x, 45458u, 0u, 15550u)), vec2<i32>(u_input.a.x, 14189i))), true, ~vec3<i32>(u_input.a.x, 1i, u_input.a.x)), _wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, 1i, 0i), reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), select(false, true, true), select(~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 0u), countOneBits(vec4<u32>(15969u, u_input.c.x, 0u, 28753u)), true)), select(u_input.a, (vec2<i32>(u_input.a.x, 2123i) >> (u_input.c.xy % vec2<u32>(32u))) & _wgslsmith_sub_vec2_i32(vec2<i32>(14265i, u_input.a.x), vec2<i32>(1i, u_input.a.x)), select(true, true, all(vec2<bool>(false, true)))))), func_2(), _wgslsmith_clamp_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.a.x, u_input.a.x, 60843i)), -(~vec3<i32>(7099i, u_input.a.x, 0i)) & vec3<i32>(~u_input.a.x, -38610i, ~(-1i)), (vec3<i32>(u_input.a.x, u_input.a.x, 48797i) ^ ~vec3<i32>(-2147483647i, u_input.a.x, -2147483647i)) ^ (~vec3<i32>(-4924i, -14433i, u_input.a.x) >> (~vec3<u32>(28247u, 25886u, 4294967295u) % vec3<u32>(32u)))));
    let var_1 = !select(true, !(_wgslsmith_sub_i32(32231i, var_0.a.x) == u_input.a.x), var_0.c);
    let var_2 = Struct_2(Struct_1(vec2<i32>(abs(reverseBits(var_0.d.x)), select(-16111i, 1071i, any(vec4<bool>(var_1, true, var_0.c, var_0.c)))), _wgslsmith_f_op_f32(-var_0.b), (!var_0.c && (true || var_0.c)) || (u_input.b.x <= u_input.b.x), abs(var_0.d)), var_0.d, var_1, ~(~(~(~vec4<u32>(102931u, u_input.b.x, 18053u, u_input.c.x)))));
    var var_3 = Struct_2(var_0, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.x, var_0.a.x, -14664i) ^ firstTrailingBit(var_2.a.d), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(74672i, var_0.d.x, var_0.a.x)), vec3<i32>(u_input.a.x, 1i, 2147483647i) ^ vec3<i32>(u_input.a.x, u_input.a.x, 22905i))), var_0.d ^ _wgslsmith_div_vec3_i32(select(var_2.b, var_0.d, vec3<bool>(false, true, var_1)), -var_2.b)), false && any(!vec2<bool>(var_2.c, false)), _wgslsmith_mult_vec4_u32(abs(var_2.d), abs(~var_2.d)));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.b), select(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_4.b.x), u_input.a & var_4.b.xy) << (min(var_4.d.xx, min(vec2<u32>(u_input.b.x, var_2.d.x), u_input.b.zy)) % vec2<u32>(32u)), ~(-vec2<i32>(var_3.a.d.x, var_3.b.x)), true), vec3<i32>(var_0.a.x, var_3.a.a.x, ~max(var_2.a.d.x, var_0.d.x & var_0.a.x)), reverseBits(abs(var_2.d)), -994f);
}

