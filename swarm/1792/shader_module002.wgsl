struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    var var_0 = select(vec4<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), false & all(vec2<bool>(false, true)), !(true != any(vec2<bool>(true, false)))), !vec4<bool>(true, false, any(vec2<bool>(true, true)), all(vec2<bool>(true, true)) & true), vec4<bool>(true, false, true, all(vec3<bool>(false, true, true))));
    var_0 = !vec4<bool>(u_input.b.x <= 0i, true, true, !var_0.x);
    var_0 = select(!(!vec4<bool>(true, select(var_0.x, false, true), var_0.x, all(vec2<bool>(var_0.x, var_0.x)))), vec4<bool>(true, var_0.x, u_input.b.x == 1i, false), vec4<bool>(var_0.x, true, all(!select(var_0.zzy, vec3<bool>(true, true, true), false)), true));
    var var_1 = ~u_input.b.zx;
    var_0 = !select(select(vec4<bool>(var_0.x | var_0.x, any(vec4<bool>(false, false, true, false)), var_0.x, var_0.x), !(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true))), !vec4<bool>(false, true, false, var_0.x), select(select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false)), !vec4<bool>(true, var_0.x, true, false), true), select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x)), all(var_0.wxy)));
    return vec3<i32>(var_1.x, reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.yyy, _wgslsmith_mult_vec3_i32(vec3<i32>(-20742i, 2147483647i, u_input.a.x), u_input.b))), var_1.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_add_i32(~(-1i), 1i);
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a.x, arg_0.x), arg_0, vec3<i32>(arg_0.x, arg_0.x, -1i)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 1u, 0u), arg_1, arg_1) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-18839i, -17168i, -2147483647i), vec3<i32>(2147483647i, -1i, arg_0.x)), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), vec3<i32>(firstTrailingBit(u_input.b.x), u_input.b.x & -19288i, u_input.b.x))), _wgslsmith_add_vec3_i32(arg_0 & vec3<i32>(_wgslsmith_mult_i32(2147483647i, u_input.b.x), -50756i, _wgslsmith_clamp_i32(u_input.b.x, arg_0.x, 54180i)), ~func_3() << (arg_1 % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(622f, -615f, -199f) * vec3<f32>(175f, 1000f, -826f)))))));
    let var_2 = Struct_1(select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, arg_1.x, arg_1.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) >> (vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 0u, 4294967295u, 30384u), vec4<u32>(arg_1.x, 34574u, 4294967295u, 26145u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, 4294967295u, 1u, arg_1.x), ~vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 71331u))), abs(vec4<u32>(arg_1.x ^ 16u, _wgslsmith_mod_u32(103961u, 18819u), firstTrailingBit(20786u), 16750u)), select(true, false, any(vec2<bool>(false, true))) == false));
    var_0 = u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(802f, var_1.x) + -195f))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4545u, 1u, 0u, arg_1.a.x), vec4<u32>(4294967295u, 4294967295u, arg_1.a.x, abs(4294967295u))), ~_wgslsmith_add_u32(0u, arg_1.a.x), ~min(~4294967295u, 1u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_3.a.a.x), vec3<u32>(arg_0.x, 1u, arg_3.a.a.x))) >> (4294967295u % 32u)));
    let var_1 = vec2<u32>(~var_0.a.x, _wgslsmith_add_u32(abs(select(32982u & arg_1.a.x, arg_0.x, true)), 4294967295u));
    var_0 = arg_3.a;
    var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.a.x, abs(var_1.x), ~59728u, ~var_0.a.x), vec4<u32>(arg_1.a.x, ~24618u, arg_3.a.a.x << (49392u % 32u), _wgslsmith_mult_u32(4294967295u, 0u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-3295f, 1759f) + _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = 44163i;
    let var_1 = true;
    var var_2 = Struct_2(arg_1);
    var_2 = Struct_2(Struct_1(arg_1.a));
    var var_3 = ~(~arg_1.a);
    return Struct_2(var_2.a);
}

fn func_1() -> vec3<u32> {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1461f + -1000f), _wgslsmith_f_op_f32(227f + -1000f)) - _wgslsmith_f_op_f32(ceil(-713f)))), func_4(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), firstTrailingBit(26663u) ^ 0u, 44564u << (1u % 32u)), Struct_1(vec4<u32>(1u, 1u, 1u, 0u)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_2(u_input.a.wwy & u_input.a.wzw, vec3<u32>(0u, 0u, 41527u)))), Struct_2(Struct_1(abs(vec4<u32>(14410u, 31748u, 1u, 30770u))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, -429f, 339f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-978f, -1000f, 165f), vec3<f32>(141f, -1217f, 557f))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-604f, -833f, -901f)))))))));
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(572f, -2482f), 1000f, false))))), Struct_1(min(var_0.a.a, _wgslsmith_mult_vec4_u32(var_0.a.a, ~vec4<u32>(4294967295u, 12053u, 20514u, 13601u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1687f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -558f))), -435f)));
    var var_2 = var_0;
    var_1 = Struct_2(func_5(705f, var_0.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(458f, -1556f, 1000f), vec3<f32>(359f, -1031f, -577f), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-756f, 311f, 306f) + vec3<f32>(310f, 1865f, -1717f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, -778f, -2243f) - vec3<f32>(773f, 786f, -889f)))))).a);
    var var_3 = max(_wgslsmith_dot_vec3_i32(u_input.a.zyz | vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 594i), vec2<i32>(u_input.a.x, u_input.b.x)), countOneBits(u_input.b.x), u_input.b.x), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), firstTrailingBit(-u_input.a.wyw))), ~_wgslsmith_clamp_i32(u_input.a.x, 1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.wzx, u_input.a.zyw), -21585i)));
    return var_0.a.a.xwy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~max(abs(countOneBits(vec3<u32>(16916u, 4294967295u, 54435u))), ~(~vec3<u32>(48437u, 40957u, 53676u))));
    let var_1 = -vec4<i32>(42442i, u_input.a.x, -firstLeadingBit(u_input.a.x) >> (var_0.x % 32u), -1i);
    var_0 = ~firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 60347u, var_0.x) & vec3<u32>(11965u, var_0.x, 31545u), ~vec3<u32>(var_0.x, 4294967295u, var_0.x), ~vec3<u32>(var_0.x, var_0.x, var_0.x)));
    var_0 = vec3<u32>(~(~1u), ~_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(10526u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 1u))), var_0.x & 1u), 4294967295u);
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~func_1(), ~vec3<u32>(1u, var_0.x, _wgslsmith_mod_u32(var_0.x, 0u))), _wgslsmith_mult_vec3_u32(countOneBits(reverseBits(vec3<u32>(var_0.x, var_0.x, var_0.x))), vec3<u32>(var_0.x, var_0.x, reverseBits(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~abs(47940i)), vec2<i32>(_wgslsmith_dot_vec4_i32(var_1, var_1), -30424i) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), func_3(), vec4<i32>(reverseBits(min(0i, u_input.a.x)) << (var_0.x % 32u), -1i << (var_0.x % 32u), u_input.a.x, u_input.b.x));
}

