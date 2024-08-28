struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    return Struct_1(vec3<u32>(54665u, u_input.e.x, 4294967295u), _wgslsmith_mult_u32(1u << (~4294967295u % 32u), u_input.c) & u_input.e.x, vec3<bool>(false, !(!arg_0 && arg_0), arg_0));
}

fn func_3() -> u32 {
    let var_0 = ~(~select(~u_input.e.x, abs(1u), all(vec4<bool>(false, true, false, true)))) < u_input.c;
    var var_1 = 1f;
    var var_2 = 0i;
    let var_3 = func_2(~(~(~u_input.c)) < 1u);
    var var_4 = Struct_1(~(~(~u_input.e.xwx) & min(vec3<u32>(0u, var_3.a.x, var_3.a.x), vec3<u32>(89657u, 141u, u_input.c))), select(0u, abs(abs(select(1u, 1u, true))), false), !(!select(select(var_3.c, var_3.c, var_3.c), !vec3<bool>(var_0, var_0, var_3.c.x), !vec3<bool>(true, var_0, var_3.c.x))));
    return func_2(any(select(!select(vec4<bool>(true, var_0, false, var_3.c.x), vec4<bool>(var_0, false, false, false), vec4<bool>(false, var_0, false, var_0)), select(vec4<bool>(var_3.c.x, var_4.c.x, false, var_0), vec4<bool>(var_4.c.x, true, var_4.c.x, var_3.c.x), !vec4<bool>(var_0, var_4.c.x, var_4.c.x, false)), var_3.c.x))).b;
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))));
    var var_1 = func_2(var_0.c.x);
    var var_2 = var_1.a.x;
    var var_3 = 0i;
    let var_4 = Struct_1(vec3<u32>(func_3(), u_input.c, ~4294967295u), min(reverseBits(reverseBits(115678u | var_0.a.x)), ~(~39047u << (max(var_1.a.x, u_input.c) % 32u))), !(!vec3<bool>(false, all(vec4<bool>(false, var_0.c.x, true, var_1.c.x)), true)));
    return select(func_2(any(select(var_4.c.xz, !var_0.c.zy, var_4.c.yx))).c, vec3<bool>((var_1.a.x > ~34023u) || any(!var_0.c.yx), true, true), select(vec3<bool>(var_0.c.x, false, !(!var_0.c.x)), vec3<bool>(var_1.c.x, true, (var_1.b & var_1.a.x) < 138525u), vec3<bool>(select(true, var_1.c.x, var_1.c.x) && var_4.c.x, select(var_4.a.x, u_input.c, var_1.c.x) >= 2494u, all(var_4.c.xx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.e.wxx, u_input.e.xwy) & _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, u_input.c, 0u), u_input.e.zyw), ~u_input.e.yyw), ~vec3<u32>(max(1u, u_input.e.x), ~u_input.e.x, min(1u, u_input.e.x))), min(~u_input.c, select(~4294967295u, firstLeadingBit(4636u), false)), select(vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), func_1(), true), all(vec4<bool>(true, false, select(false, true, true), any(vec3<bool>(false, false, false))))));
    var var_1 = 21650u;
    var var_2 = vec3<bool>(!(var_0.c.x | select(true, true, true)), false, !(!var_0.c.x));
    var_1 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.e.x, var_0.a.x)), _wgslsmith_sub_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, 1u, u_input.c)))), u_input.e.wxx);
    var var_3 = ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -u_input.b.x), _wgslsmith_sub_vec2_i32(max(countOneBits(vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(u_input.b.x, u_input.b.x)), reverseBits(vec2<i32>(2147483647i, -5643i)) >> (select(vec2<u32>(var_0.a.x, var_0.b), vec2<u32>(4294967295u, 14246u), var_2.x) % vec2<u32>(32u))));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(700f, 194f, 1000f, -1000f) * vec4<f32>(1000f, 243f, -1300f, 1174f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(757f, 2577f, 1186f, -164f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-512f, -1154f, 753f, -1952f), _wgslsmith_div_vec4_f32(vec4<f32>(1346f, 638f, -224f, 882f), vec4<f32>(-270f, -1207f, 1084f, 867f)), false)))), vec4<f32>(-1038f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(343f, 1282f))), _wgslsmith_f_op_f32(f32(-1f) * -722f), 2120f), 464f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1244f)) * _wgslsmith_f_op_f32(min(-502f, 181f))))));
}

