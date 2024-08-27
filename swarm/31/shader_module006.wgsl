struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = u_input.b.wyz;
    var var_1 = vec4<bool>(!(!(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x) < 767f)), false, true, true);
    var_1 = vec4<bool>(!arg_0.b.x, any(var_1.zy), all(!var_1.xyw), select(!(!all(arg_0.b.yy)), arg_0.b.x, true));
    var_1 = !vec4<bool>(any(select(vec3<bool>(true, true, true), select(arg_0.b.zwy, vec3<bool>(arg_0.b.x, false, false), var_1.x), select(var_1.wyw, arg_0.b.zzw, true))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))) >= arg_0.a.x, false);
    let var_2 = !arg_0.b;
    return ~u_input.b.yxx;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = firstLeadingBit(u_input.c);
    var var_1 = Struct_1(true, ~u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1179f)))), arg_0.c)), !(arg_0.b.x != _wgslsmith_div_u32(4294967295u, arg_0.b.x)) && arg_0.d, _wgslsmith_f_op_f32(-745f - -883f));
    var var_2 = -vec2<i32>(2147483647i, u_input.d >> (99694u % 32u));
    let var_3 = 14504u >> (u_input.a.x % 32u);
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.c)), -1412f), vec2<f32>(_wgslsmith_div_f32(-404f, var_1.e), -333f))))), vec4<bool>(false, _wgslsmith_div_f32(1676f, _wgslsmith_f_op_f32(2467f * var_1.e)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.e, -853f)))), var_1.d, !(var_3 != var_3)));
    return _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(1449f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f))));
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-2407f))))));
    let var_1 = Struct_3(vec2<f32>(-1683f, _wgslsmith_f_op_f32(func_4(Struct_1(arg_0.x, func_3(Struct_3(vec2<f32>(595f, 436f), vec4<bool>(true, arg_0.x, true, arg_0.x))), -666f, true, _wgslsmith_div_f32(-1111f, -465f))))), !select(vec4<bool>(all(vec3<bool>(arg_0.x, arg_0.x, true)), false, arg_0.x, true), vec4<bool>(arg_0.x, 14649u > u_input.a.x, false, true), vec4<bool>(!arg_0.x, true, arg_0.x | arg_0.x, 49708u > u_input.b.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2419f, var_0, var_1.a.x, var_1.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1989f, -336f, var_1.a.x, var_0), vec4<f32>(2232f, var_1.a.x, var_0, var_1.a.x)))))));
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(select(u_input.d, u_input.d, arg_0.x) << (~_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u), -7086i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(49579i, 0i), vec2<i32>(u_input.d, 16375i), var_1.b.wz), _wgslsmith_mod_vec2_i32(u_input.e, vec2<i32>(-1i, u_input.e.x))) | -20462i, u_input.e.x), vec4<i32>(-2147483647i, u_input.d, 1i, _wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.d), u_input.e))));
    return _wgslsmith_add_vec3_i32(abs(firstTrailingBit(vec3<i32>(u_input.e.x, ~(-2147483647i), u_input.e.x))), _wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(2147483647i, u_input.e.x), -29326i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.e.x, u_input.e.x), vec3<i32>(1i, -25375i, 0i)), _wgslsmith_sub_i32(u_input.d, u_input.e.x))), -select(vec3<i32>(u_input.d, 14954i, -2147483647i), vec3<i32>(0i, u_input.d, u_input.e.x), vec3<bool>(arg_0.x, var_1.b.x, var_1.b.x)) ^ -vec3<i32>(1i, u_input.e.x, 1i)));
}

fn func_1() -> vec4<bool> {
    let var_0 = u_input.e;
    var var_1 = vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_0.x, 0i), vec3<i32>(36963i, -2147483647i, var_0.x)), abs(_wgslsmith_mod_i32(-27398i, -1i)), _wgslsmith_clamp_i32(max(var_0.x, -6556i), ~32345i, -u_input.e.x) & var_0.x) | firstTrailingBit(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-16679i, -1i, u_input.e.x)), max(vec3<i32>(23081i, var_0.x, 62943i), vec3<i32>(var_0.x, -15449i, 2147483647i)) ^ (vec3<i32>(var_0.x, 1i, -42876i) << (u_input.b.xzw % vec3<u32>(32u)))));
    var_1 = func_2(select(vec2<bool>(_wgslsmith_mult_i32(var_0.x, 27429i) <= var_1.x, all(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec2<bool>(true, true))), false));
    var_1 = vec3<i32>(select(reverseBits(-u_input.d), i32(-1i) * -33630i, !all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), ~(~(~(-8789i))), u_input.e.x);
    var_1 = ~countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-var_1.x, ~u_input.d, u_input.d), -(~vec3<i32>(-1i, 1i, var_0.x))));
    return select(vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), all(vec4<bool>(true, false, true, true)) | any(vec3<bool>(true, true, true)), false), vec4<bool>(false, true, true, true), !vec4<bool>(false, _wgslsmith_mod_i32(var_1.x, u_input.e.x) == ~u_input.e.x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(u_input.e.x, -u_input.d);
    let var_1 = u_input.e.x;
    let var_2 = u_input.e;
    let var_3 = u_input.b.x >> (~0u % 32u);
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-516f, -756f)) * vec2<f32>(_wgslsmith_f_op_f32(sign(1828f)), _wgslsmith_f_op_f32(f32(-1f) * -233f))))), !vec4<bool>(true, (13114i & var_2.x) != (i32(-1i) * -13335i), true, true));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.a.x))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, -29878i, 2147483647i, -2147483647i), vec4<i32>(_wgslsmith_sub_i32(-2147i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_0, 2147483647i, var_0), vec4<i32>(u_input.d, 41581i, -1i, 13258i)), -1i, select(-2147483647i, -64085i, var_5.x))) & _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, u_input.e.x, var_2.x), vec4<i32>(u_input.d, var_0, 4801i, var_0)), vec4<i32>(-16780i, 1i, min(var_1, u_input.e.x), ~var_1)), vec4<i32>(_wgslsmith_clamp_i32(~var_1, _wgslsmith_sub_i32(firstTrailingBit(2147483647i), var_2.x), -var_0), firstTrailingBit(~var_2.x), _wgslsmith_div_i32(-11221i, ~reverseBits(-2147483647i)), var_1), vec4<i32>(-2147483647i, -1i, firstTrailingBit(-2147483647i), -2147483647i), 0i);
}

