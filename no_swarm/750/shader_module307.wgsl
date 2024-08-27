struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(-27569i, -1i), 4294967295u), Struct_1(vec2<i32>(14607i, -33489i), 0u), Struct_1(vec2<i32>(40040i, i32(-2147483648)), 46291u), Struct_1(vec2<i32>(-1i, 2147483647i), 1437u), Struct_1(vec2<i32>(0i, 15411i), 1u), Struct_1(vec2<i32>(i32(-2147483648), 0i), 1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    let var_0 = true;
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(50844u, ~(u_input.b | 19001u)), vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(36233u, u_input.b, 37437u, u_input.b) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 79287u) % vec4<u32>(32u))), abs(vec4<u32>(1u, 1u, u_input.b, 1u)) ^ vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)), ~(~min(u_input.b, u_input.b))));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.x, _wgslsmith_sub_u32(var_1.x << (~var_1.x % 32u), 1u)), vec3<u32>(var_1.x, abs(var_1.x), _wgslsmith_mod_u32(u_input.b, ~abs(var_1.x))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = 1061f;
    var var_1 = -_wgslsmith_mod_vec3_i32(reverseBits(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(31581i, arg_0, 2147483647i))), vec3<i32>(max(min(u_input.a, u_input.a), -arg_0), firstTrailingBit(-arg_0), u_input.a));
    var_1 = ((vec3<i32>(u_input.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 38181i, -37886i, -2147483647i), vec4<i32>(var_1.x, arg_0, -18723i, u_input.a))) | _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, u_input.a, -25912i), vec3<i32>(1i, -2147483647i, 1i)), countOneBits(vec3<i32>(-7192i, 1i, u_input.a)))) >> (abs(func_3(vec3<i32>(2147483647i, -1i, u_input.a))) % vec3<u32>(32u))) & firstLeadingBit(vec3<i32>(-(2147483647i | u_input.a), i32(-1i) * -6617i, var_1.x));
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -2147483647i), vec3<i32>(var_1.x, u_input.a, -1i)), 1i ^ var_1.x), min(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i), var_1.xx) ^ var_1.yy, -var_1.yx), _wgslsmith_mod_vec2_i32(max(~var_1.xx, select(var_1.zy, vec2<i32>(var_1.x, arg_0), false)), var_1.zy)), u_input.b);
    var var_3 = Struct_1(-_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(27120i, -13590i)), abs(select(vec2<i32>(-2147483647i, 26429i), vec2<i32>(0i, var_1.x), false))), firstLeadingBit(1u));
    return Struct_1(~(~_wgslsmith_div_vec2_i32(-vec2<i32>(var_2.a.x, var_1.x), ~var_3.a)), var_3.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_1, 6>();
    let var_0 = func_2(arg_3.a.x);
    let var_1 = func_2(firstLeadingBit(arg_1.a.x));
    var var_2 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(u_input.a, var_0.a.x), i32(-1i) * -9583i), var_1.a), arg_1.b);
    var var_3 = Struct_1(firstTrailingBit(-(~var_0.a | arg_1.a)), 1u);
    return 39421i << ((var_0.b >> (arg_1.b % 32u)) % 32u);
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(func_4(countOneBits(vec2<u32>(1431u, 56277u)), func_2(u_input.a), -vec2<i32>(u_input.a, -2147483647i), func_2(u_input.a)), _wgslsmith_sub_i32(-15938i & u_input.a, _wgslsmith_add_i32(2147483647i, -1i))), ~u_input.a), 92080u);
    var var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_0.a.x), var_0.a), vec2<i32>(-2147483647i, -5527i)))), u_input.b);
    let var_2 = vec3<i32>(~(~var_1.a.x), 0i, -2147483647i);
    return 56700u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~func_1());
    var_0 = u_input.b;
    var_0 = 53493u;
    let var_1 = func_2(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 0i), vec4<i32>(2147483647i, 1i, u_input.a, 15065i)), firstTrailingBit(_wgslsmith_sub_i32(23166i, u_input.a))), ~u_input.a));
    var var_2 = true;
    var var_3 = firstLeadingBit(vec4<i32>(~var_1.a.x, min(_wgslsmith_add_i32(var_1.a.x, 17660i), 0i) >> (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1.b, 4294967295u, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, 13120u), vec3<u32>(2048u, var_1.b, u_input.b))) % 32u), u_input.a, u_input.a));
    var var_4 = vec3<u32>(_wgslsmith_mult_u32(u_input.b, ~22696u), 4294967295u, max(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 24829u, u_input.b) & vec4<u32>(1u, u_input.b, 69564u, u_input.b), vec4<u32>(u_input.b, 1u, 76148u, u_input.b)), 9139u));
    var_3 = -vec4<i32>(abs(var_3.x) >> (u_input.b % 32u), _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -10408i, -1i, var_3.x), vec4<i32>(-20960i, var_1.a.x, 1i, u_input.a)), vec4<i32>(u_input.a | u_input.a, abs(var_3.x), 0i, 2147483647i)), u_input.a, -4837i);
    let var_5 = global0[_wgslsmith_index_u32(~var_1.b, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(1459f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(545f)))));
}

