struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.b.x);
    let var_1 = Struct_1(any(select(!vec4<bool>(false, arg_1.a, true, arg_1.a), select(select(vec4<bool>(true, false, arg_1.a, true), vec4<bool>(false, arg_2.a, true, arg_1.a), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a)), !vec4<bool>(arg_1.a, false, arg_1.a, false), u_input.b.x > 1u), true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(641f + arg_1.b.x), arg_1.a)), _wgslsmith_f_op_f32(-577f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0))), vec3<u32>(~51641u, arg_2.c.x, arg_2.c.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -151f, arg_0, -851f))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1230f, 138f, arg_0, 204f))))));
    let var_3 = _wgslsmith_mod_i32(-12113i, _wgslsmith_mult_i32(min(_wgslsmith_add_i32(firstTrailingBit(-1i), ~(-98297i)), firstLeadingBit(countOneBits(2147483647i))), 1i));
    var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1772f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(198f, 387f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1382f + var_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), -1578f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, var_2.x, 207f, 1444f) * vec4<f32>(var_2.x, var_2.x, arg_0, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(2077f, var_1.b.x, var_1.b.x, arg_0) - vec4<f32>(619f, -852f, arg_1.b.x, arg_2.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_2.b.x, arg_1.b.x, 1118f) * vec4<f32>(-318f, arg_1.b.x, -933f, -1035f)))))))));
    return ~arg_2.c.x;
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(any(!vec3<bool>(select(false, false, false), true, any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-550f, 167f, 2610f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 381f, 1057f))))), ~vec3<u32>(min(u_input.b.x & u_input.b.x, ~u_input.b.x), func_3(_wgslsmith_div_f32(783f, -1000f), Struct_1(false, vec3<f32>(-1072f, -491f, 268f), vec3<u32>(u_input.b.x, 1u, 0u)), Struct_1(true, vec3<f32>(235f, -1372f, 1177f), vec3<u32>(25562u, 0u, 1u))), firstTrailingBit(~36986u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, -350f, false)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.b.yy);
    let var_3 = Struct_1(var_0.a, vec3<f32>(var_2.x, var_1, 629f), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_0.c.x, ~u_input.b.x), u_input.b.x, u_input.a.x), var_0.c));
    let var_4 = select(vec4<bool>(true, all(vec2<bool>(any(vec2<bool>(false, false)), !var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f * var_2.x) * _wgslsmith_div_f32(var_1, 677f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-1276f * var_0.b.x)), false), vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(var_3.a, var_3.a), vec2<bool>(var_0.a, var_3.a))), any(select(vec2<bool>(true, var_0.a), vec2<bool>(true, true), true)), false, any(select(select(vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, var_0.a, true), var_0.a), !vec3<bool>(var_3.a, false, true), vec3<bool>(false, true, true)))), !(!select(!vec4<bool>(false, var_0.a, true, var_0.a), select(vec4<bool>(true, true, var_3.a, true), vec4<bool>(false, var_3.a, true, false), vec4<bool>(false, true, var_0.a, true)), select(vec4<bool>(false, var_3.a, true, false), vec4<bool>(true, true, var_0.a, var_3.a), true))));
    return vec4<i32>(-37912i, abs(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 0i)), vec2<i32>(0i, -2147483647i) >> (vec2<u32>(u_input.b.x, var_0.c.x) % vec2<u32>(32u))), ~firstLeadingBit(vec2<i32>(75794i, -2147483647i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-7654i, 1i, ~2147483647i, -468i) ^ (vec4<i32>(-2147483647i, -2147483647i, -9411i, 1i) << (~vec4<u32>(u_input.a.x, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(-1i, 0i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 27150i, -33289i), vec4<i32>(49474i, 58180i, 1i, 19813i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(40566i, 52442i)))), min(~(select(-26342i, 43646i, var_0.a) | _wgslsmith_add_i32(-1i, -7467i)), select(~countOneBits(-5588i), firstLeadingBit(i32(-1i) * -33081i), -1129f < _wgslsmith_f_op_f32(trunc(-1106f)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = -func_2();
    var var_1 = !any(vec4<bool>(true, 1i == var_0.x, true, arg_0.a));
    var_1 = any(select(vec2<bool>(any(vec3<bool>(arg_0.a, arg_0.a, true)), !any(vec3<bool>(false, true, arg_0.a))), select(vec2<bool>(true, arg_0.a), select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, true), true), vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(false, arg_0.a)), vec2<bool>(false, true)), arg_0.a & any(select(vec4<bool>(arg_0.a, arg_0.a, true, true), vec4<bool>(arg_0.a, true, true, arg_0.a), arg_0.a))));
    let var_2 = select(any(vec4<bool>(-111f != arg_0.b.x, arg_0.a, !(arg_0.c.x <= u_input.b.x), true)), !all(!vec4<bool>(false, arg_0.a, true, arg_0.a)) && !(_wgslsmith_f_op_f32(-358f * arg_0.b.x) > _wgslsmith_f_op_f32(-arg_0.b.x)), true);
    var_1 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b.x)) + arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-179f - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(862f))))));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-4187f, -1318f, -600f), vec3<f32>(466f, 844f, 395f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-983f, 1483f, -760f) * vec3<f32>(474f, -636f, -373f)))))), vec3<u32>(u_input.a.x ^ u_input.a.x, _wgslsmith_div_u32(~(~u_input.a.x), u_input.b.x), 1u));
    let var_2 = Struct_1(!(true != var_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.x))), -272f)), var_1.c);
    var var_3 = Struct_1(!var_1.a, vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(func_1(var_2))) + 236f), var_1.b.x), ~vec3<u32>(4294967295u, var_1.c.x, min(_wgslsmith_clamp_u32(var_1.c.x, 0u, u_input.b.x), 16454u)));
    let var_4 = true;
    let var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_2)) * -1287f) * var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.b.x + var_2.b.x))))));
    var var_6 = var_2;
    var_6 = Struct_1(var_6.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-628f, -104f, 249f), vec3<f32>(899f, -257f, var_3.b.x)) * var_3.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1327f, 990f, var_3.b.x) * var_2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1002f, -1969f, 1244f) + _wgslsmith_div_vec3_f32(var_6.b, var_6.b))))), ~vec3<u32>(~16085u, var_3.c.x, _wgslsmith_sub_u32(var_1.c.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer((firstLeadingBit(var_2.c) >> (~(~var_2.c) % vec3<u32>(32u))) & _wgslsmith_add_vec3_u32(var_3.c, firstLeadingBit(~vec3<u32>(var_3.c.x, 80575u, 1u))), _wgslsmith_f_op_vec2_f32(var_3.b.zz - var_6.b.zy), var_1.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.x, -640f), var_1.b.zx)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, -1643f, -1329f, _wgslsmith_f_op_f32(ceil(var_2.b.x)))))));
}

