struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(74460u, 4294967295u, 46054u, 2230u, 48338u, 1u, 38913u, 0u, 61062u, 1u, 1u, 0u, 86498u, 0u, 0u, 13026u);

var<private> global1: array<vec2<bool>, 6>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<bool>(false, false, false), vec4<u32>(4294967295u, 1u, 1u, 1u), 1i, vec3<i32>(0i, 2147483647i, 26097i)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(4294967295u, 1u, 0u, 0u), -9670i, vec3<i32>(-14652i, -11921i, 38509i)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(79721u, 30780u, 26165u, 45170u), -1i, vec3<i32>(-1i, 26257i, -6009i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    var var_0 = arg_0.x;
    let var_1 = true;
    let var_2 = Struct_2(_wgslsmith_add_u32(~(global0[_wgslsmith_index_u32(~0u, 16u)] >> (55424u % 32u)), 2364u), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3.x ^ arg_3.x, 1u), reverseBits(firstTrailingBit(~vec2<u32>(45729u, u_input.c.x)))), global2[_wgslsmith_index_u32(arg_3.x, 3u)], vec3<i32>((-1i << (u_input.a % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.c.x, arg_3.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(arg_2, u_input.b))), abs(-abs(u_input.b)), _wgslsmith_mod_i32(35991i, -38729i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -u_input.b) & countOneBits(~vec2<i32>(-49434i, u_input.b)), vec2<i32>(-arg_2, reverseBits(-1i))));
    let var_3 = global2[_wgslsmith_index_u32(arg_3.x, 3u)];
    var var_4 = -1i;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(~abs(vec4<u32>(38615u, 28865u, 15105u, u_input.c.x))), _wgslsmith_add_vec4_u32(~(~var_2.c.b), var_2.c.b)), var_2.c.b);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(1u, ~func_3(arg_0.a, 2215f, _wgslsmith_sub_i32(u_input.b | u_input.b, 1i), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(70190u, u_input.a, u_input.c.x, u_input.a), vec4<u32>(arg_0.b.x, 4294967295u, arg_0.b.x, arg_0.b.x)), countOneBits(0u), _wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39701u, 16u)], 16u)]))), global2[_wgslsmith_index_u32(select(firstLeadingBit(3645u), min(~(~u_input.a), firstTrailingBit(50566u)), true), 3u)], arg_0.d << (~(arg_0.b.zxw & arg_0.b.wzy) % vec3<u32>(32u)), _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-13418i, 6459i), arg_0.d.xz), arg_0.d.zx)), u_input.b));
    let var_1 = Struct_1(select(vec3<bool>(!arg_0.a.x, arg_0.a.x, true), arg_0.a, !vec3<bool>(arg_0.a.x, all(var_0.c.a), arg_0.a.x)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, var_0.b, var_0.c.b.x | var_0.b, _wgslsmith_add_u32(1u, u_input.a)), ~(~var_0.c.b), all(vec3<bool>(var_0.c.a.x, arg_0.a.x, arg_0.a.x))), var_0.c.b, var_0.c.b), arg_0.c, vec3<i32>(~(-22012i), abs(u_input.b), -2147483647i));
    global0 = array<u32, 16>();
    let var_2 = 1f;
    global0 = array<u32, 16>();
    return Struct_1(select(select(var_0.c.a, vec3<bool>(!var_1.a.x, var_1.a.x, var_1.a.x), !(!vec3<bool>(true, var_1.a.x, false))), !(!(!var_0.c.a)), !select(var_1.a, !vec3<bool>(arg_0.a.x, var_1.a.x, false), !vec3<bool>(var_1.a.x, true, true))), _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(arg_0.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 16u)], 16u)]), 116292u, var_0.a, 4294967295u), vec4<u32>(30565u, arg_0.b.x, global0[_wgslsmith_index_u32(firstLeadingBit(var_0.a), 16u)], ~_wgslsmith_dot_vec4_u32(arg_0.b, var_0.c.b))), var_1.c, abs(~countOneBits(-vec3<i32>(var_0.d.x, -2147483647i, var_1.d.x))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = 464f;
    var var_1 = Struct_1(vec3<bool>(true, false, false), abs(vec4<u32>(min(global0[_wgslsmith_index_u32(30624u, 16u)], arg_0.a) | (16240u << (arg_0.b % 32u)), arg_0.a, 0u, 6810u)), u_input.b, vec3<i32>(countOneBits(1i), firstLeadingBit(arg_0.d.x), u_input.b));
    var var_2 = Struct_2(_wgslsmith_dot_vec3_u32(~var_1.b.xzx, ~arg_3.c.b.zxx), select(68487u, ~(firstLeadingBit(u_input.c.x) >> (abs(global0[_wgslsmith_index_u32(28719u, 16u)]) % 32u)), !(!arg_2)), arg_0.c, func_2(Struct_1(vec3<bool>(all(arg_0.c.a), select(true, false, false), global0[_wgslsmith_index_u32(arg_3.c.b.x, 16u)] <= 31612u), _wgslsmith_sub_vec4_u32(var_1.b | arg_0.c.b, vec4<u32>(2251u, 91097u, 1u, arg_1)), ~(-1i << (0u % 32u)), select(vec3<i32>(var_1.c, arg_0.e, -11190i), vec3<i32>(u_input.b, -1i, var_1.c), true) & ~vec3<i32>(-16740i, arg_0.d.x, 56627i)), -vec4<i32>(arg_3.e, _wgslsmith_div_i32(-2147483647i, u_input.b), u_input.b, min(var_1.c, -2147483647i))).d, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_0.c.d.x, -7278i), _wgslsmith_sub_i32(-u_input.b, -2147483647i), var_1.c, arg_0.d.x), min(countOneBits(vec4<i32>(0i, arg_3.c.d.x, var_1.c, arg_0.e)), vec4<i32>(-17661i, 1i, var_1.c, u_input.b) >> (vec4<u32>(0u, arg_0.a, global0[_wgslsmith_index_u32(1u, 16u)], arg_1) % vec4<u32>(32u))) & ~(~vec4<i32>(var_1.c, 2147483647i, u_input.b, 0i))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, -789f, -1000f))));
    let var_4 = Struct_2(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(arg_0.c.b.yxz & vec3<u32>(29756u, 32592u, 1u), select(var_1.b.zyy, vec3<u32>(0u, var_1.b.x, 0u), arg_0.c.a.x)), select(21650u, ~0u, false) ^ _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~arg_1, 16u)], var_1.b.x, 0u)), 49829u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, reverseBits(~(~global0[_wgslsmith_index_u32(arg_1, 16u)]))), 3u)], var_2.d, var_1.d.x);
    return var_4.c.d.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    let var_0 = reverseBits(vec2<i32>(func_4(arg_2, select(~14247u, ~u_input.c.x, arg_1.x >= -445f), !(arg_1.x <= 1029f), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(122625u, 13104u, 30997u), vec3<u32>(12680u, arg_0.b.x, 14957u)), ~arg_0.b.x, func_2(arg_2.c, vec4<i32>(u_input.b, arg_2.c.c, u_input.b, u_input.b)), arg_0.d >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], arg_0.b.x, 4294967295u) % vec3<u32>(32u)), firstLeadingBit(arg_2.e))), arg_2.e));
    let var_1 = vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false);
    var var_2 = func_2(arg_2.c, -vec4<i32>(reverseBits(min(var_0.x, -31932i)), min(arg_2.e, i32(-1i) * -1i), u_input.b, 1i));
    var var_3 = arg_0.a.xy;
    let var_4 = arg_1.xwy;
    return _wgslsmith_mult_i32(~arg_0.c, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    global0 = array<u32, 16>();
    global1 = array<vec2<bool>, 6>();
    let var_1 = Struct_1(!vec3<bool>(u_input.c.x == ~u_input.a, false, true), firstLeadingBit(abs(~vec4<u32>(1u, 9626u, 25720u, global0[_wgslsmith_index_u32(u_input.a, 16u)]))), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(14227i, u_input.b, func_1(Struct_1(vec3<bool>(false, true, false), vec4<u32>(u_input.a, 151u, u_input.c.x, 68459u), 0i, vec3<i32>(-8872i, u_input.b, u_input.b)), vec4<f32>(563f, 994f, 694f, 1093f), Struct_2(0u, 1u, Struct_1(vec3<bool>(false, false, true), vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(0u, 16u)], 12328u), 10275i, vec3<i32>(11568i, 2147483647i, -5802i)), vec3<i32>(29898i, 13484i, u_input.b), u_input.b), vec2<f32>(1484f, -942f)), ~u_input.b), firstLeadingBit(~vec4<i32>(u_input.b, -8916i, u_input.b, u_input.b)))), ~(firstLeadingBit(reverseBits(vec3<i32>(u_input.b, 0i, u_input.b))) << (~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29888u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(0u, 16u)])) % vec3<u32>(32u))));
    var var_2 = var_1;
    let var_3 = Struct_2(reverseBits(4294967295u), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(11539u), 55134u << (global0[_wgslsmith_index_u32(var_2.b.x, 16u)] % 32u)), ~_wgslsmith_clamp_u32(u_input.a, var_1.b.x, u_input.c.x)), Struct_1(var_2.a, ~vec4<u32>(firstLeadingBit(0u), var_1.b.x, 1u, 786u), ~(~1i), vec3<i32>(var_2.d.x, _wgslsmith_sub_i32(-2147483647i, u_input.b), 2147483647i) << (var_2.b.xwy % vec3<u32>(32u))), var_1.d, 9897i);
    global2 = array<Struct_1, 3>();
    let var_4 = var_2.b.zzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1148f, _wgslsmith_f_op_f32(2051f + -813f))), var_3.d | var_2.d, var_3.c.b.x & abs(~var_1.b.x), ~select(~func_2(global2[_wgslsmith_index_u32(u_input.a, 3u)], vec4<i32>(55256i, var_2.d.x, u_input.b, -19935i)).d, var_2.d, false), abs(6561i));
}

