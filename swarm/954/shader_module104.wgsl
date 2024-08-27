struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global0 = ~u_input.b;
    return -12355i;
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(firstTrailingBit(19965i), max(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)) << (select(vec2<u32>(46373u, 0u), vec2<u32>(23994u, 4294967295u), true) % vec2<u32>(32u)), min(vec2<i32>(26378i, -86367i), -vec2<i32>(7315i, u_input.a))), -(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -62299i), vec2<i32>(17353i, -26170i)) << (vec2<u32>(33383u, 4294967295u) % vec2<u32>(32u)))), firstLeadingBit(select(max(~vec2<u32>(12556u, 1u), ~vec2<u32>(1u, 21099u)), vec2<u32>(1u, 1u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<bool>(true, true))), vec3<bool>(any(vec3<bool>(true, false, true)), !(!all(vec4<bool>(true, true, true, true))), true));
    var var_1 = var_0.d.xy;
    var_0 = Struct_1(1i, _wgslsmith_mult_vec2_i32(var_0.b, vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(0i), -40264i), var_0.a & 20071i)), vec2<u32>(var_0.c.x, max(var_0.c.x, var_0.c.x)), var_0.d);
    let var_2 = !(min(1u, countOneBits(countOneBits(var_0.c.x))) == var_0.c.x);
    var var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.b.x, 2147483647i, -10401i, 21637i), vec4<i32>(u_input.a, u_input.a, 2147483647i, var_0.b.x)) >> ((vec4<u32>(0u, var_0.c.x, 5078u, var_0.c.x) << (vec4<u32>(83752u, var_0.c.x, 82791u, var_0.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), -(~vec4<i32>(var_0.a, 47506i, var_0.b.x, var_0.a))), -13234i, 51573i, var_0.a) | select(vec4<i32>(1i, min(max(var_0.b.x, 0i), -var_0.b.x), -2147483647i, u_input.a), vec4<i32>(-u_input.b, -(u_input.b | var_0.b.x), var_0.a & ~26909i, ~var_0.a << (1u % 32u)), select(select(select(vec4<bool>(true, false, var_1.x, var_0.d.x), vec4<bool>(var_0.d.x, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_0.d.x, var_0.d.x)), !vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), true), !select(vec4<bool>(var_2, var_2, var_2, var_0.d.x), vec4<bool>(false, var_2, var_0.d.x, false), vec4<bool>(false, var_1.x, true, true)), var_2 || all(vec3<bool>(true, var_0.d.x, var_2))));
    return u_input.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = !(!(any(!vec4<bool>(true, false, true, arg_1.x)) & !arg_1.x));
    global0 = ~u_input.a;
    global0 = _wgslsmith_mod_i32(arg_2.b.x, 14742i);
    let var_1 = abs(min(~(~(~79415u)), ~1u ^ reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 17563u), arg_2.c))));
    let var_2 = arg_2.b;
    return _wgslsmith_div_i32(func_2(vec3<u32>(~arg_2.c.x, _wgslsmith_mult_u32(arg_2.c.x, abs(20605u)), 0u)), _wgslsmith_mult_i32(~(~u_input.b ^ arg_2.a), _wgslsmith_sub_i32(func_3(arg_0), ~_wgslsmith_mod_i32(u_input.b, arg_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = !vec4<bool>(var_0.x, var_0.x, true, var_0.x);
    var var_2 = _wgslsmith_add_vec2_i32(min(vec2<i32>(abs(u_input.b) ^ -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, 0i), vec3<i32>(u_input.a, u_input.b, u_input.b)), -vec3<i32>(-1i, u_input.b, u_input.b))), abs(vec2<i32>(func_1(Struct_2(1127f), var_1.ww, Struct_1(u_input.b, vec2<i32>(-25158i, u_input.b), vec2<u32>(26144u, 89087u), var_1.xxw)), max(u_input.b, -2147483647i)))), vec2<i32>(i32(-1i) * -23638i, reverseBits(func_1(Struct_2(-477f), !var_1.xy, Struct_1(u_input.b, vec2<i32>(u_input.b, -4420i), vec2<u32>(92812u, 0u), vec3<bool>(var_0.x, true, false))))));
    let var_3 = var_0.x;
    let var_4 = firstLeadingBit(vec3<u32>(countOneBits(43553u), ~1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~(vec2<i32>(var_2.x, 2147483647i) << (vec2<u32>(25140u, var_4.x) % vec2<u32>(32u))), -vec2<i32>(var_2.x, -1i)), countOneBits(-vec2<i32>(-6002i, u_input.a))), var_4.x, 1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 722f, -598f, -1338f) + vec4<f32>(108f, 866f, -1110f, 164f)), vec4<f32>(-485f, 190f, -105f, -1462f), true)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -639f), 1538f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1556f)))), 198f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -606f))))));
}

