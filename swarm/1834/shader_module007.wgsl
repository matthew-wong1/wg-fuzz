struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    let var_0 = Struct_1(vec4<u32>(u_input.a.x, u_input.a.x >> (max(4294967295u, 8370u) % 32u), ~(~0u), u_input.a.x) & vec4<u32>(_wgslsmith_add_u32(~9401u, min(u_input.a.x, u_input.a.x)), countOneBits(~u_input.a.x), ~(4294967295u ^ u_input.a.x), abs(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1135f - arg_1) - _wgslsmith_f_op_f32(-1871f - -267f))))), !select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false))), true);
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a.x), ~_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(29150u, u_input.a.x, var_0.a.x, u_input.a.x)), _wgslsmith_div_u32(var_0.a.x, 45445u), ~(~var_0.a.x)), var_0.a), var_0.b, var_0.c, true);
    let var_2 = Struct_1(vec4<u32>(var_0.a.x, 0u, u_input.a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(40867u, var_0.a.x, 44709u) ^ var_1.a.yxy, select(var_0.a.zzw, vec3<u32>(1u, u_input.a.x, var_1.a.x), var_1.c.x), true), select(var_0.a.yxx, _wgslsmith_sub_vec3_u32(var_0.a.zzx, vec3<u32>(0u, 55996u, 4775u)), select(vec3<bool>(var_0.d, true, true), vec3<bool>(true, var_0.d, true), var_0.c.wzz)))), var_1.b, vec4<bool>(any(var_0.c.xw), _wgslsmith_mod_u32(1335u, var_0.a.x) > _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(u_input.a.x, var_0.a.x, u_input.a.x)), all(vec2<bool>(var_0.c.x, any(vec2<bool>(var_0.d, var_1.d)))), var_1.c.x), min(65698i, ~_wgslsmith_sub_i32(-2147483647i, 1i)) != -arg_0.x);
    var var_3 = _wgslsmith_f_op_f32(-1147f * _wgslsmith_f_op_f32(-var_1.b)) > _wgslsmith_f_op_f32(-1f);
    var var_4 = Struct_1(var_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(649f))))), var_0.c, select(!(-2147483647i != arg_0.x), !(false != var_0.d), true));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-839f))));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(firstTrailingBit(~vec3<i32>(0i, 70144i, -18673i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2265f - -572f) - -566f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(round(1717f)), all(vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1191f, 1785f, 986f, 1000f))) + vec4<f32>(_wgslsmith_f_op_f32(round(-791f)), _wgslsmith_f_op_f32(select(503f, -339f, all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-124f - 923f))), _wgslsmith_f_op_f32(select(1f, -1248f, true)))));
    var var_1 = Struct_1(abs(~(vec4<u32>(0u, 4294967295u, 4294967295u, 19283u) >> (vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 32841u, u_input.a.x, arg_0.x), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, arg_0.x)), u_input.a.x, 4294967295u, arg_0.x) % vec4<u32>(32u))), -1315f, !vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true), select(true, all(vec3<bool>(false, var_0.x > var_0.x, false)), true));
    var_1 = Struct_1(vec4<u32>(abs(u_input.a.x), 1u, countOneBits(_wgslsmith_div_u32(abs(0u), 1u)), ~0u), _wgslsmith_f_op_f32(-var_1.b), select(vec4<bool>(false && var_1.d, var_1.c.x, all(!vec3<bool>(var_1.c.x, false, var_1.d)), any(select(var_1.c.zzx, vec3<bool>(true, true, var_1.c.x), var_1.c.xzx))), !select(select(vec4<bool>(var_1.c.x, false, true, var_1.d), vec4<bool>(var_1.c.x, true, var_1.c.x, true), vec4<bool>(true, false, true, true)), !vec4<bool>(var_1.d, false, true, true), !var_1.d), var_1.c), select(any(vec2<bool>(true, var_1.c.x)), false, select((var_1.d || true) != var_1.c.x, false, !all(vec4<bool>(var_1.c.x, true, true, var_1.c.x)))));
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_add_u32(abs(arg_0.x), var_1.a.x), _wgslsmith_div_u32(1u, arg_0.x), select(~(~1u), ~18330u, var_1.c.x), 4294967295u & arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-729f, _wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 5726i, 1i), -1265f)))), var_1.c, !all(var_1.c.wy));
    var var_3 = min((~1i & _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(29770i, 0i, 48612i, 19578i)), firstTrailingBit(vec4<i32>(-1i, 1i, -30381i, 0i)))) | ~(-4404i), -1i);
    return reverseBits(-_wgslsmith_div_i32(_wgslsmith_div_i32(0i, -12250i), 47756i)) << (var_1.a.x % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_add_i32(-abs(func_2(arg_0.a.wzw) ^ 2147483647i), _wgslsmith_mult_i32(30919i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-18245i, 89075i, 80857i, -2147483647i)) & _wgslsmith_clamp_i32(firstLeadingBit(1i), ~2147483647i, ~(-1i))));
    let var_1 = _wgslsmith_f_op_f32(step(arg_1.b, 234f));
    var var_2 = arg_1;
    var var_3 = true;
    var_2 = Struct_1(max(~var_2.a, _wgslsmith_div_vec4_u32(~vec4<u32>(25246u, u_input.a.x, arg_1.a.x, 4294967295u) >> (~vec4<u32>(23517u, 1166u, 15368u, arg_2.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.a, vec4<u32>(arg_2.x, arg_2.x, 4294967295u, arg_2.x)), reverseBits(vec4<u32>(7495u, 15707u, 25045u, 69672u))))), -1372f, arg_1.c, !all(!arg_1.c));
    return -var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(-2147483647i);
    let var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(1i, 1i), 26484i), _wgslsmith_mult_i32(_wgslsmith_add_i32(func_1(Struct_1(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 33945u), -385f, vec4<bool>(false, false, false, false), true), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 63518u, u_input.a.x), 1150f, vec4<bool>(false, false, false, false), false), vec2<u32>(u_input.a.x, 14831u), vec2<f32>(1402f, -862f)), -56889i), _wgslsmith_div_i32(-5216i, ~0i))), 1i, 17263i);
    let var_2 = select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), var_1.x != ~var_1.x), vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))), any(vec2<bool>(true, true)), false), false);
    let var_3 = select(4294967295u, (firstLeadingBit(~4294967295u) & ~select(u_input.a.x, 37406u, true)) & 0u, true);
    var var_4 = Struct_1(select(~(~vec4<u32>(23011u, 3360u, 44098u, var_3)), vec4<u32>(u_input.a.x | 1u, ~14682u, 1u, var_3), !select(vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, true, true))) | countOneBits(vec4<u32>(~var_3, _wgslsmith_mod_u32(29591u, 64586u), u_input.a.x << (28541u % 32u), abs(u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1308f), select(select(!select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, false, var_2.x)), !select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, true, var_2.x, var_2.x)), vec4<bool>(select(var_2.x, true, true), true, all(vec4<bool>(true, var_2.x, false, var_2.x)), true)), select(vec4<bool>(true, true, var_2.x, var_2.x), select(vec4<bool>(var_2.x, false, true, true), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), !vec4<bool>(var_2.x, var_2.x, var_2.x, false)), select(!vec4<bool>(var_2.x, false, false, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x), !vec4<bool>(false, true, var_2.x, var_2.x))), any(vec3<bool>(var_2.x, 0i > var_1.x, true))), var_2.x);
    var_4 = Struct_1(vec4<u32>(~4294967295u, 4294967295u, 0u, _wgslsmith_clamp_u32(u_input.a.x, select(1u, 1u, true) >> (max(u_input.a.x, var_3) % 32u), 804u << (var_3 % 32u))), _wgslsmith_f_op_f32(abs(309f)), vec4<bool>(true, var_2.x, ~48967u >= var_4.a.x, any(var_4.c.zxy)), !any(var_4.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(265f, var_4.b)), ~4294967295u, (_wgslsmith_dot_vec2_u32(vec2<u32>(65420u, var_4.a.x), select(var_4.a.xw, u_input.a, var_2.x)) >> (firstLeadingBit(4294967295u >> (u_input.a.x % 32u)) % 32u)) << (0u % 32u), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -201f)));
}

