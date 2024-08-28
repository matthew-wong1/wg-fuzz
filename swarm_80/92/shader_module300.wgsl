struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_5) -> u32 {
    let var_0 = ~(~51553u);
    let var_1 = arg_0.b.b.b.a;
    var var_2 = arg_0.b.b;
    var var_3 = Struct_3(-reverseBits(arg_0.b.b.a), var_2.b, vec2<bool>(var_2.c.x, all(select(vec4<bool>(var_2.c.x, true, arg_0.b.a.x, var_2.c.x), vec4<bool>(false, var_2.c.x, arg_0.b.b.c.x, false), arg_0.b.a.x))));
    let var_4 = Struct_5(4294967295u, Struct_4(!arg_0.b.a, Struct_3(~vec3<i32>(var_2.a.x, arg_0.b.b.a.x, var_3.a.x), Struct_2(arg_0.b.b.b.a, _wgslsmith_f_op_vec4_f32(-arg_0.b.b.b.b)), !var_2.c)));
    return var_4.a;
}

fn func_2(arg_0: Struct_5) -> Struct_3 {
    var var_0 = Struct_5(63045u, Struct_4(!(!(!vec3<bool>(arg_0.b.b.c.x, true, arg_0.b.a.x))), Struct_3(~(vec3<i32>(2147483647i, arg_0.b.b.a.x, 0i) ^ arg_0.b.b.a), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_vec4_f32(round(arg_0.b.b.b.b))), select(arg_0.b.a.xx, vec2<bool>(arg_0.b.b.c.x, false), select(arg_0.b.a.yx, arg_0.b.a.yy, true)))));
    var var_1 = Struct_1(vec2<i32>(var_0.b.b.a.x, countOneBits(arg_0.b.b.a.x)), func_3(arg_0), _wgslsmith_f_op_vec3_f32(-var_0.b.b.b.b.xzw));
    var_0 = arg_0;
    var_0 = arg_0;
    let var_2 = 1i;
    return Struct_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(select(var_1.a.x, arg_0.b.b.a.x, arg_0.b.a.x), var_0.b.b.a.x, 0i), var_0.b.b.a, vec3<i32>(_wgslsmith_div_i32(42090i, var_2), _wgslsmith_mult_i32(1i, -1i), countOneBits(var_0.b.b.a.x))), countOneBits(vec3<i32>(0i, var_0.b.b.a.x, var_0.b.b.a.x) | _wgslsmith_div_vec3_i32(arg_0.b.b.a, vec3<i32>(0i, -8850i, -32018i))), -arg_0.b.b.a), arg_0.b.b.b, vec2<bool>(!all(!var_0.b.b.c), false));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = 523u;
    var var_1 = Struct_5(~u_input.a, Struct_4(!vec3<bool>(true, true, arg_1 <= -1i), func_2(Struct_5(_wgslsmith_mod_u32(22902u, 68449u), Struct_4(vec3<bool>(true, false, false), Struct_3(vec3<i32>(-1i, arg_1, arg_1), Struct_2(142f, vec4<f32>(-341f, -109f, -2054f, 1828f)), vec2<bool>(true, true)))))));
    var var_2 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, min(var_1.b.b.a.x, func_2(Struct_5(9222u, Struct_4(vec3<bool>(var_1.b.a.x, false, var_1.b.b.c.x), var_1.b.b))).a.x), ~min(arg_1, arg_1))), vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1, 0i, 0i), vec4<i32>(2147483647i, 1i, var_1.b.b.a.x, -2147483647i)), _wgslsmith_dot_vec2_i32(var_1.b.b.a.yy, vec2<i32>(-21099i, -31630i)), ~43754i));
    var var_3 = abs(-abs(reverseBits(~vec4<i32>(1i, var_1.b.b.a.x, arg_1, arg_1))));
    var_2 = arg_1;
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-237f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))), var_1.b.b.b.b);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    var var_0 = min(_wgslsmith_sub_i32(arg_3.b.a.x << (0u % 32u), 40902i), _wgslsmith_mod_i32(~1i, -arg_2.a.x) << (1u % 32u));
    var_0 = arg_3.b.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1(u_input.b, arg_3.b.a.x).a))), 230f, arg_1)));
    let var_2 = Struct_4(arg_3.a, arg_3.b);
    var var_3 = arg_3.b;
    return -642f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-173f, -1708f)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(1u, 34713i), 145f, Struct_1(vec2<i32>(-34208i, 16306i), u_input.b, vec3<f32>(493f, -680f, 1056f)), Struct_4(vec3<bool>(false, true, true), Struct_3(vec3<i32>(-63040i, -1i, -24598i), Struct_2(471f, vec4<f32>(1260f, -112f, -1070f, 1893f)), vec2<bool>(false, true))))))));
    let var_1 = Struct_4(vec3<bool>(true, true, any(vec4<bool>(true, false, true, true))), Struct_3(~select(vec3<i32>(0i, -40934i, 1i), abs(vec3<i32>(-15496i, 35299i, -2147483647i)), true), func_1(u_input.a ^ firstTrailingBit(u_input.a), -1i >> (0u % 32u)), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_2(Struct_5(u_input.a, Struct_4(vec3<bool>(false, false, false), Struct_3(vec3<i32>(10799i, 1i, -9461i), Struct_2(229f, vec4<f32>(714f, var_0.x, var_0.x, 337f)), vec2<bool>(false, true))))).c)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, var_1.b.b.b.x));
    let var_2 = func_1(~u_input.a, ~1i);
    var_0 = vec2<f32>(var_2.b.x, 1f);
    var var_3 = _wgslsmith_div_vec2_u32(abs(~vec2<u32>(u_input.b, u_input.a)), _wgslsmith_sub_vec2_u32((_wgslsmith_div_vec2_u32(vec2<u32>(11043u, u_input.b), vec2<u32>(38416u, 31054u)) << (vec2<u32>(u_input.a, 79646u) % vec2<u32>(32u))) | abs(vec2<u32>(u_input.a, u_input.b)), ~countOneBits(countOneBits(vec2<u32>(4294967295u, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(_wgslsmith_add_vec3_u32(min(vec3<u32>(var_3.x, 1u, 0u), vec3<u32>(var_3.x, var_3.x, 10075u)), select(vec3<u32>(u_input.b, var_3.x, u_input.b), vec3<u32>(64768u, u_input.b, var_3.x), var_1.b.c.x)))), var_3.x, select(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, u_input.b), vec2<u32>(48192u, 0u)) << (firstTrailingBit(vec2<u32>(var_3.x, u_input.b)) % vec2<u32>(32u))), max(min(vec2<u32>(1u, 1u), vec2<u32>(var_3.x, u_input.a) >> (vec2<u32>(var_3.x, 7608u) % vec2<u32>(32u))), vec2<u32>(u_input.a, ~22646u)), any(!(!var_1.a.yy))));
}

