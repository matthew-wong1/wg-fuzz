struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(2147483647i, arg_0.xz, arg_1, countOneBits(9616u) >> (min(~(~u_input.a.x), u_input.e.x) % 32u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(713f, 2755f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(359f, -716f))))))));
    let var_1 = var_0.e;
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = arg_1;
    var var_4 = var_0;
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> vec2<i32> {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = firstTrailingBit(u_input.d);
    var_2 = ~5941u;
    var var_3 = arg_1;
    return _wgslsmith_mod_vec2_i32(-(~firstLeadingBit(-vec2<i32>(var_0.a.c.x, -2147483647i))), -vec2<i32>(_wgslsmith_dot_vec2_i32(func_2(vec3<bool>(true, arg_1.a.b.x, var_1.b.b.x), vec2<i32>(arg_1.a.a, var_0.b.c.x)).c, vec2<i32>(arg_2.x, -1i) >> (vec2<u32>(var_1.a.d, var_0.a.d) % vec2<u32>(32u))), 1i));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(select(vec3<bool>(false, true, true && any(vec3<bool>(true, true, true))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), !any(vec2<bool>(true, false))), u_input.c);
    var_0 = Struct_1(-(u_input.c.x | _wgslsmith_sub_i32(-var_0.c.x, 94498i)), vec2<bool>(-1i >= u_input.b, (abs(u_input.c.x) == 1i) & any(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x))), vec2<i32>(-1i) * -(func_3(Struct_1(-2147483647i, var_0.b, vec2<i32>(-2147483647i, var_0.a), u_input.d, vec2<f32>(389f, var_0.e.x)), Struct_2(Struct_1(31903i, var_0.b, vec2<i32>(-27780i, 0i), u_input.a.x, var_0.e), Struct_1(u_input.b, vec2<bool>(var_0.b.x, false), var_0.c, u_input.e.x, vec2<f32>(var_0.e.x, -1183f))), vec4<i32>(var_0.c.x, u_input.c.x, -1i, -1383i), false) ^ vec2<i32>(u_input.c.x, 2147483647i)), _wgslsmith_clamp_u32(~14053u, ~(~38737u), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(38529u, u_input.a.x, var_0.d), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, var_0.d, var_0.d), vec3<u32>(u_input.d, u_input.e.x, 0u))))), var_0.e);
    var var_1 = ~u_input.e & ~abs(countOneBits(_wgslsmith_clamp_vec2_u32(u_input.e, u_input.a, u_input.a)));
    let var_2 = Struct_1(~_wgslsmith_mult_i32(~(-1i) << (firstTrailingBit(0u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.a, u_input.b, -24467i), vec4<i32>(var_0.c.x, 50479i, -18083i, u_input.c.x) << (vec4<u32>(var_1.x, 36256u, var_0.d, var_1.x) % vec4<u32>(32u)))), func_2(select(!vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, any(vec4<bool>(true, var_0.b.x, var_0.b.x, true)), !var_0.b.x), !(!var_0.b.x)), vec2<i32>(_wgslsmith_add_i32(reverseBits(u_input.c.x), 0i), var_0.a)).b, -u_input.c, _wgslsmith_sub_u32(abs(~u_input.a.x << (var_1.x % 32u)), abs(firstLeadingBit(~0u))), var_0.e);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(ceil(179f))), -364f));
    return Struct_2(func_2(select(vec3<bool>(!var_0.b.x, true, true), !(!vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), var_2.b.x), var_0.c), var_2);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    let var_0 = ~vec4<u32>(51180u, 1u, 60819u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_1.a.d, u_input.d, 16697u, 18466u) | vec4<u32>(0u, 15011u, arg_1.b.d, arg_1.b.d)), vec4<u32>(abs(0u), 120345u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 24215u, arg_1.b.d), vec3<u32>(1632u, 4294967295u, arg_1.b.d)), 4294967295u)));
    var var_1 = func_1().a.b;
    var var_2 = arg_1.b;
    let var_3 = false;
    var var_4 = var_2.e.x;
    return ~arg_2.x == u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d < 0u;
    var_0 = !func_4(vec4<bool>(false, true, all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)))), func_1(), vec4<i32>(firstLeadingBit(1i), 1i, -u_input.b, -23104i) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.c.x) >> (vec4<u32>(23334u, 0u, 0u, 28417u) % vec4<u32>(32u)), vec4<i32>(63747i, u_input.c.x, 0i, 3775i)));
    let var_1 = true;
    var var_2 = min(24522i, u_input.c.x);
    var_2 = -2147483647i;
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(40740u, 8649u, u_input.d, u_input.d)) ^ vec4<u32>(abs(u_input.d), u_input.d, ~u_input.a.x, ~u_input.a.x), vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(70761u, firstLeadingBit(u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e.x), u_input.a), u_input.a.x)), ~1u);
    let var_4 = vec4<bool>(false, true, firstTrailingBit(max(1i, func_3(Struct_1(u_input.c.x, vec2<bool>(var_1, var_1), vec2<i32>(u_input.b, 1i), u_input.d, vec2<f32>(-676f, 1000f)), Struct_2(Struct_1(u_input.b, vec2<bool>(var_1, true), vec2<i32>(u_input.b, 0i), u_input.a.x, vec2<f32>(-1210f, 1002f)), Struct_1(u_input.b, vec2<bool>(var_1, var_1), u_input.c, u_input.e.x, vec2<f32>(675f, -1030f))), vec4<i32>(55154i, -1239i, 22524i, u_input.b), var_1).x)) == u_input.b, !select(true, true, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1534f)), -436f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f * -391f)), 1f))), select(vec4<i32>(-1i) * -vec4<i32>(-1i, 0i, u_input.c.x, 57922i), vec4<i32>(u_input.c.x >> (34704u % 32u), -1i, 1i, 23823i), !(!vec4<bool>(false, var_4.x, var_4.x, var_4.x))) & vec4<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.b), ~firstLeadingBit(-25825i), _wgslsmith_add_i32(0i, 1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, u_input.b, 1i), vec4<i32>(0i, -23898i, -40245i, u_input.b)), vec4<i32>(86962i, 2147483647i, -2147483647i, 69432i))));
}

