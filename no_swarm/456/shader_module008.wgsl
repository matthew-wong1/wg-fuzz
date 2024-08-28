struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -17002i;

var<private> global1: array<i32, 26>;

var<private> global2: vec4<i32> = vec4<i32>(19905i, -40590i, i32(-2147483648), -24859i);

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<bool>(true, false), -333f, vec3<i32>(i32(-2147483648), 2147483647i, 32754i)), Struct_3(vec2<bool>(false, true), 533f, vec3<i32>(-12252i, 23859i, -10991i)), Struct_3(vec2<bool>(true, true), -356f, vec3<i32>(-49835i, -24792i, -1i)), Struct_3(vec2<bool>(true, true), 754f, vec3<i32>(4314i, -14862i, -1i)), Struct_3(vec2<bool>(false, false), 1897f, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), Struct_3(vec2<bool>(false, true), -1077f, vec3<i32>(9542i, 1i, i32(-2147483648))));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> i32 {
    let var_0 = vec3<bool>(!(!(!all(vec2<bool>(true, false)))), true, true);
    var var_1 = ~(~u_input.c);
    global0 = 23220i;
    let var_2 = -(1i << (reverseBits(u_input.b) % 32u));
    global1 = array<i32, 26>();
    return -1i;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = global3[_wgslsmith_index_u32(1u, 6u)];
    global3 = array<Struct_3, 6>();
    let var_1 = -_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_2.x, u_input.d), global2.yxy), ~var_0.c), vec3<i32>(select(_wgslsmith_sub_i32(2147483647i, 1i), func_1(), var_0.a.x & var_0.a.x), abs(~global1[_wgslsmith_index_u32(u_input.b, 26u)]), ~global2.x));
    var var_2 = !select(select(select(vec3<bool>(false, false, var_0.a.x), !vec3<bool>(var_0.a.x, var_0.a.x, false), false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, var_0.a.x, false), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), !vec3<bool>(var_0.a.x, false, true), true), select(!vec3<bool>(true, var_0.a.x, false), vec3<bool>(false, true, true), vec3<bool>(false, var_0.a.x, true))), vec3<bool>(all(select(vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec4<bool>(true, true, true, var_0.a.x), vec4<bool>(true, var_0.a.x, true, false))), all(!vec4<bool>(false, false, var_0.a.x, true)), false), !vec3<bool>(var_0.a.x, all(vec2<bool>(true, var_0.a.x)), true));
    var var_3 = _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(28331u, 32209u)) >> (countOneBits(max(max(u_input.c.zy, u_input.c.xy), _wgslsmith_sub_vec2_u32(u_input.c.xx, vec2<u32>(0u, 96905u)))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(35030u), arg_1.a, ~23391u), _wgslsmith_mult_u32(0u, u_input.b)), vec2<u32>(arg_0.a, 1u)));
    return vec2<u32>(u_input.c.x << (~arg_1.a % 32u), 1u) ^ ~(~u_input.c.xx);
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    global1 = array<i32, 26>();
    let var_0 = true;
    var var_1 = ~func_3(Struct_4(_wgslsmith_div_u32(u_input.c.x, u_input.b)), Struct_4(104722u), vec4<i32>(u_input.d, 0i ^ u_input.d, firstTrailingBit(-global1[_wgslsmith_index_u32(u_input.a, 26u)]), select(2147483647i | global2.x, ~(-1i), var_0)));
    let var_2 = max(global1[_wgslsmith_index_u32(~var_1.x, 26u)], arg_1);
    var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(reverseBits(u_input.a), _wgslsmith_sub_u32(1u, var_1.x)), u_input.c.zz), abs(~(~u_input.c.zx)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<i32>(_wgslsmith_mod_i32(-u_input.d, _wgslsmith_add_i32(1i, global1[_wgslsmith_index_u32(4294967295u, 26u)])), func_2(862f, ~(func_1() ^ global2.x)), ~1i, _wgslsmith_mod_i32((global1[_wgslsmith_index_u32(u_input.a, 26u)] | _wgslsmith_clamp_i32(-1i, global1[_wgslsmith_index_u32(u_input.a, 26u)], 54406i)) << (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u), -min(global2.x & 14827i, i32(-1i) * -1i)));
    let var_0 = -_wgslsmith_clamp_vec3_i32(~(select(vec3<i32>(0i, -32679i, 36466i), global2.xwy, vec3<bool>(true, true, false)) & ~global2.zwx), global2.xzw, max(vec3<i32>(abs(-2147483647i), countOneBits(global2.x), countOneBits(22620i)), ~select(vec3<i32>(-11972i, global1[_wgslsmith_index_u32(u_input.b, 26u)], global2.x), global2.yzz, false)));
    let var_1 = Struct_4(91661u);
    let var_2 = vec2<f32>(-1159f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -324f))))));
    var var_3 = ~(vec4<i32>(firstLeadingBit(-2147483647i << (0u % 32u)), -32505i, -u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_0.x), vec3<i32>(global2.x, global2.x, global2.x))) >> ((~(vec4<u32>(var_1.a, u_input.c.x, var_1.a, u_input.b) << (vec4<u32>(4294967295u, 16294u, 44946u, 44839u) % vec4<u32>(32u))) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, 20846u, var_1.a, var_1.a), vec4<u32>(0u, 4294967295u, u_input.a, var_1.a))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mult_i32(func_2(var_2.x, -19555i), 0i) << (_wgslsmith_mult_u32(1u, ~40141u) % 32u), -_wgslsmith_mod_i32(~(-44495i), global2.x)), 1u, (countOneBits(vec4<u32>(4294967295u, u_input.a, u_input.b, 43343u)) ^ ((vec4<u32>(var_1.a, u_input.a, u_input.c.x, var_1.a) ^ vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, var_1.a)) ^ firstTrailingBit(vec4<u32>(u_input.b, var_1.a, 35373u, 7465u)))) >> ((~(~vec4<u32>(var_1.a, u_input.c.x, var_1.a, var_1.a)) | _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, var_1.a, u_input.b, var_1.a), vec4<u32>(1u, 4959u, u_input.a, 1u)), select(vec4<u32>(31647u, var_1.a, var_1.a, 0u), vec4<u32>(u_input.c.x, 87708u, 93657u, u_input.b), true))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -1336f, 560f, var_2.x)), true || (u_input.a < u_input.a))))), -max(-_wgslsmith_sub_i32(var_0.x, 0i), -(~32586i)));
}

