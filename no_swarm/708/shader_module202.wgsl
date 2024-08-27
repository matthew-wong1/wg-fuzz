struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = u_input.d;
    var var_1 = arg_0.x;
    let var_2 = Struct_1(vec4<bool>(!(all(vec3<bool>(true, false, true)) | all(vec3<bool>(true, true, false))), any(vec2<bool>(true, true)), false, all(vec4<bool>(true, true, true, any(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1181f, arg_0.x, arg_0.x, 780f)))))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f - arg_0.x) - _wgslsmith_f_op_f32(1011f - 647f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1458f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-865f)), _wgslsmith_f_op_f32(-arg_0.x))))), arg_1.a.yxx ^ countOneBits(arg_1.a.yzw));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(-929f, _wgslsmith_f_op_f32(1703f * arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f)))), 1000f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1249f, -2577f, var_2.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, 767f, var_2.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.yyy + _wgslsmith_f_op_vec3_f32(var_2.b.wyw * vec3<f32>(var_2.b.x, arg_0.x, -1000f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(888f, 1324f, arg_0.x), var_2.b.wyx)), _wgslsmith_f_op_vec3_f32(ceil(var_2.b.zzw))))));
    var var_4 = var_2.c << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.c.x, ~_wgslsmith_add_u32(32787u, 38301u), u_input.a), vec3<u32>(arg_1.a.x, 94361u, ~4294967295u) >> (var_2.c % vec3<u32>(32u))) % vec3<u32>(32u));
    return vec3<bool>(any(select(var_2.a.zx, var_2.a.zy, true)) & (arg_1.a.x > _wgslsmith_dot_vec2_u32(countOneBits(arg_1.a.ww), vec2<u32>(arg_1.a.x, arg_2.x))), var_2.a.x, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_sub_vec3_u32(arg_0.c, arg_0.c);
    let var_1 = select(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.b.wy * vec2<f32>(673f, -329f))))), Struct_2(vec4<u32>(arg_1.x, ~var_0.x, 55761u, ~0u)), (countOneBits(arg_3.a.xz) >> (_wgslsmith_clamp_vec2_u32(arg_1, vec2<u32>(50655u, arg_1.x), vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))) & vec2<u32>(~0u, u_input.a)), vec3<bool>(any(vec2<bool>(true, arg_2.a.x)), true, arg_0.a.x | !arg_0.a.x), vec3<bool>(false, true, true));
    let var_2 = _wgslsmith_sub_vec2_i32(select(countOneBits(u_input.c.zy), countOneBits(-firstTrailingBit(vec2<i32>(2147483647i, -1i))), _wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(ceil(arg_0.b.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1204f)))), select(u_input.d, u_input.c.zy, var_1.xy));
    var var_3 = Struct_2(vec4<u32>(0u, arg_1.x, arg_0.c.x, ~(select(arg_0.c.x, u_input.a, var_1.x) << (_wgslsmith_add_u32(arg_1.x, 16760u) % 32u))));
    var_3 = arg_3;
    return _wgslsmith_f_op_f32(round(808f));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    let var_0 = !vec4<bool>(all(vec2<bool>(-1i < u_input.b, all(vec2<bool>(false, true)))), !(_wgslsmith_f_op_f32(f32(-1f) * -1066f) <= _wgslsmith_f_op_f32(round(1000f))), !(-581f > _wgslsmith_f_op_f32(ceil(-1353f))), u_input.b > 2147483647i);
    let var_1 = arg_0.x;
    let var_2 = vec2<bool>(any(var_0.yxx), var_0.x);
    var var_3 = Struct_1(vec4<bool>(false, !(~0u != arg_3.x), var_2.x, true), vec4<f32>(-597f, -2068f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1392f + _wgslsmith_f_op_f32(f32(-1f) * -2324f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(216f + -1467f), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(var_2.x, var_0.x, true, var_0.x), vec4<f32>(-126f, 1119f, 1595f, 156f), arg_3.zwz), vec2<u32>(44274u, arg_3.x), Struct_3(var_0.wy, var_0), Struct_2(arg_3))))))), select(arg_2.a.wyz, arg_3.xxz, false));
    let var_4 = vec2<bool>(false | var_2.x, var_0.x);
    return all(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(func_1(vec3<i32>(~0i, max(u_input.c.x, 19132i), -u_input.b), -(u_input.b ^ 2147483647i), Struct_2(vec4<u32>(47480u, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 17119u, 1u)), ~vec4<u32>(23124u, u_input.a, u_input.a, u_input.a))), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(abs(1244f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(708f)) - _wgslsmith_f_op_f32(-885f - -784f))), select(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(1663f, 866f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(710f, 2568f))), Struct_2(vec4<u32>(u_input.a, 109528u, 49187u, u_input.a) | vec4<u32>(0u, u_input.a, 45597u, 63362u)), ~vec2<u32>(8583u, u_input.a)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1328f, 165f) + vec2<f32>(956f, 304f))), Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(102445u, u_input.a, 45941u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 37972u, u_input.a, 4294967295u))), vec2<u32>(u_input.a, ~u_input.a))), true);
    var_0 = vec3<bool>(u_input.a <= (u_input.a << ((select(38948u, u_input.a, var_0.x) | u_input.a) % 32u)), false, any(vec4<bool>(all(select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true))), false, true, true && var_0.x)));
    var_0 = !vec3<bool>(true, var_0.x || !(var_0.x && false), func_1(vec3<i32>(u_input.e, _wgslsmith_mult_i32(-39364i, 0i), u_input.e & u_input.c.x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17024i, -6383i, 1i, 1i), vec4<i32>(-2147483647i, -48057i, u_input.e, 1i)), i32(-1i) * -1i), Struct_2(vec4<u32>(82833u, u_input.a, 79630u, 4294967295u)), vec4<u32>(~u_input.a, u_input.a >> (5576u % 32u), u_input.a, u_input.a)));
    var var_1 = vec4<u32>(~(u_input.a | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, 9626u), vec3<u32>(22008u, 0u, 1u)))), max(~u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(4294967295u, 131604u, u_input.a, 1u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a ^ 4294967295u, firstTrailingBit(~93138u)), select(max(vec3<u32>(u_input.a, u_input.a, 8657u), vec3<u32>(u_input.a, 1u, 22429u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(4294967295u, 7607u, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 8849u, 3718u), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), false)), ~firstTrailingBit(u_input.a));
    var_1 = min(~select(vec4<u32>(104715u, u_input.a, u_input.a, var_1.x) | vec4<u32>(4294967295u, var_1.x, 0u, u_input.a), vec4<u32>(1u, var_1.x, 1u, var_1.x) & vec4<u32>(u_input.a, u_input.a, 1u, 1u), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, false, true, var_0.x), var_0.x)), firstTrailingBit(vec4<u32>(max(1u, 4294967295u), ~var_1.x, max(u_input.a, u_input.a), 73061u))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.x, u_input.a, 44835u), vec4<u32>(u_input.a, 37649u, 1u, 58648u)) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_1.x, var_1.x, 4294967295u, 66182u)), ~vec4<u32>(u_input.a, 27074u, 53115u, 13552u)) % vec4<u32>(32u)), min(vec4<u32>(abs(var_1.x), countOneBits(110702u), ~0u, 50782u | var_1.x), ~(~vec4<u32>(u_input.a, var_1.x, 1u, u_input.a)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(895f, -1061f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1524f, -837f), vec2<f32>(-1727f, 958f), var_0.zx)) - _wgslsmith_div_vec2_f32(vec2<f32>(1451f, -784f), vec2<f32>(633f, 1473f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(140f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1335f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1559f + -690f)))), _wgslsmith_f_op_f32(select(-1880f, -1150f, ~u_input.a > u_input.a))), -1975f);
}

