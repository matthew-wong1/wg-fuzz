struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, -1i, -25186i, -44918i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global1 = Struct_2(true, -global1.b);
    global2 = select(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.b, u_input.a.x, 1i, 0i), vec4<i32>(-1i, global1.b, 2147483647i, global0.a), vec4<i32>(0i, -2147483647i, -3645i, -4065i)), vec4<i32>(-u_input.c.x ^ (global2.x & -1i), global2.x, 21805i, countOneBits(-25859i)), !vec4<bool>(global1.a, true, any(vec4<bool>(false, global1.a, false, global1.a)), true)) | _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b, 2147483647i, 26189i, select(-1i, -4056i, true)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, u_input.d, 1u) & vec4<u32>(10256u, 71509u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) ^ vec4<u32>(18388u, 4294967295u, 1u, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, ~u_input.a.x, -1i, ~global2.x), ~vec4<i32>(global1.b, -1i, global1.b, 2147483647i)));
    var var_0 = ~(vec4<i32>(-1i) * -reverseBits(vec4<i32>(41723i, -17337i, 1i, -2147483647i) ^ vec4<i32>(global0.a, global0.a, 1i, global2.x)));
    global0 = Struct_3(~(i32(-1i) * -(global1.b >> (u_input.b.x % 32u))));
    return countOneBits(firstLeadingBit(countOneBits(u_input.a.x)));
}

fn func_2() -> i32 {
    let var_0 = vec4<u32>(u_input.b.x, countOneBits(u_input.b.x), u_input.b.x, ~_wgslsmith_mult_u32(select(0u, u_input.d, true), 0u));
    var var_1 = Struct_1(~55197u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1008f * 117f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, -1229f))) + 1f)));
    let var_2 = Struct_3(~func_3());
    let var_3 = ~(vec2<u32>(_wgslsmith_div_u32(var_1.a << (var_0.x % 32u), var_0.x), var_0.x) >> ((abs(vec2<u32>(u_input.b.x, 28914u)) << (vec2<u32>(abs(1u), abs(var_1.a)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_4 = var_2;
    return firstLeadingBit(func_3()) ^ firstTrailingBit(var_2.a);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_3 {
    global2 = abs(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(global0.a, 0i, -32003i, global1.b), -vec4<i32>(38577i, 24686i, 5341i, u_input.c.x), !vec4<bool>(global1.a, true, arg_0, false)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global1.b, u_input.c.x, -2147483647i), vec4<i32>(u_input.a.x, global0.a, global0.a, global0.a))), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_clamp_i32(global1.b, global2.x, global2.x)), -6873i, reverseBits(_wgslsmith_mod_i32(2147483647i, u_input.c.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, global2.x, 16958i), abs(0i)))));
    let var_0 = 0i;
    var var_1 = global2.x;
    var var_2 = _wgslsmith_sub_i32(1i, (_wgslsmith_sub_i32(2147483647i, func_2()) & -(global1.b >> (arg_1 % 32u))) | _wgslsmith_mult_i32(0i, countOneBits(~global1.b)));
    global1 = Struct_2(global1.a, i32(-1i) * -2147483647i);
    return Struct_3(i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global1.a, ~(~(~(~u_input.b.x))));
    var var_0 = Struct_1(_wgslsmith_mult_u32(26514u, abs(23863u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))));
    let var_1 = Struct_1(~(var_0.a | (abs(57335u) >> (~u_input.d % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) + 1f), 603f));
    global2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -56197i, global0.a ^ ~2147483647i, 1i) << (((vec4<u32>(20837u, u_input.d, 44822u, 4294967295u) >> (~vec4<u32>(var_0.a, var_0.a, 29787u, var_0.a) % vec4<u32>(32u))) >> (vec4<u32>(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 4294967295u, var_0.a), vec4<u32>(u_input.d, u_input.b.x, var_1.a, 12926u)), min(4294967295u, 61498u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 11376u), vec2<u32>(var_1.a, var_1.a))) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(global0.a, u_input.a.x, ~(~u_input.c.x), u_input.a.x ^ global2.x));
    global2 = ~(vec4<i32>(-1i) * -((vec4<i32>(global0.a, 1i, 2147483647i, global1.b) ^ vec4<i32>(1934i, global0.a, 42408i, -4982i)) ^ ~vec4<i32>(1i, 1i, global1.b, global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(41562u, var_1.a, var_0.a, 62206u), ~vec4<u32>(u_input.d, 6385u, u_input.d, 47034u)), u_input.b.x, ~0u), vec2<i32>(select(global2.x, ~22054i, true), ~_wgslsmith_mult_i32(global2.x, -2147483647i) >> (4294967295u % 32u)), u_input.b);
}

