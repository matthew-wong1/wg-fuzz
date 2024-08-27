struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: array<Struct_3, 6>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-294f, 1000f, -1000f, -188f), vec4<i32>(0i, 1i, i32(-2147483648), 36268i), 1698f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    var var_0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(20480u, 1u), 0u, u_input.b ^ u_input.a.x)) | 66456u;
    var var_1 = global2.a.x;
    var var_2 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.c, global2.c, global2.a.x, -404f))), vec4<bool>(true, true, true, true))), _wgslsmith_add_vec4_i32(global2.b, _wgslsmith_mod_vec4_i32(global2.b, vec4<i32>(-1i, arg_0.x, -1i, -2147483647i))), 1013f), true == any(vec3<bool>(true, true, true))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 0u, u_input.b), vec4<u32>(31888u, u_input.a.x, 8026u, u_input.a.x)) << (countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 17052u)) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.a.x, 18030u, u_input.a.x >> (u_input.a.x % 32u))), ~(u_input.a.x >> (min(8124u, 4294967295u) % 32u)), u_input.a.x), global2.a);
    let var_3 = var_2.b.x;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 1628f, false)), _wgslsmith_div_f32(-657f, _wgslsmith_f_op_f32(f32(-1f) * -327f))) * global2.c)));
    return -297f;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_1(vec4<f32>(global2.c, _wgslsmith_div_f32(global2.c, -1146f), _wgslsmith_f_op_f32(round(-296f)), 248f), vec4<i32>(-10362i, firstLeadingBit(-50303i), arg_3.a.x, reverseBits(reverseBits(arg_3.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec3<i32>(_wgslsmith_sub_i32(-16034i, arg_3.a.x), _wgslsmith_mult_i32(-48018i, global2.b.x), arg_3.a.x & global2.b.x), ~abs(1i))))));
    var var_1 = _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.a.x, 77148u, 11322u, arg_2), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 29586u, 1u, arg_2), vec4<u32>(45149u, 0u, 57140u, 132073u))) | vec4<u32>(arg_2, firstLeadingBit(u_input.b), 51551u ^ arg_2, 4294967295u)), ~min(max(vec4<u32>(49895u, u_input.b, 1u, u_input.b), countOneBits(vec4<u32>(4294967295u, 44804u, 0u, arg_2))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 21632u, u_input.a.x, arg_2), vec4<u32>(arg_2, 0u, 36903u, 4294967295u)))), firstLeadingBit(~firstTrailingBit(vec4<u32>(arg_2, arg_2, u_input.b, 66058u) | vec4<u32>(0u, 67826u, u_input.a.x, 1u))));
    global1 = array<Struct_3, 6>();
    var var_2 = Struct_4(global1[_wgslsmith_index_u32(~(~(0u << (var_1.x % 32u))), 6u)], vec3<u32>(var_1.x, _wgslsmith_div_u32(var_1.x, ~1u) ^ arg_2, _wgslsmith_sub_u32(~var_1.x, ~1u)), global2.a);
    var var_3 = global0[_wgslsmith_index_u32(1u, 19u)];
    return global1[_wgslsmith_index_u32(var_1.x << (u_input.b % 32u), 6u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = -150f;
    var var_1 = func_2(false, global2.a.zzy, arg_1.x, Struct_2(-arg_2.a | (vec4<i32>(0i, -19704i, -15838i, arg_2.a.x) ^ -vec4<i32>(-1i, -15404i, 0i, global2.b.x))));
    var var_2 = -61214i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.a.a)) + var_1.a.a), ~_wgslsmith_mult_vec4_i32(select(global2.b, vec4<i32>(-1i, 5645i, 0i, global2.b.x), vec4<bool>(var_1.b, var_1.b, true, true)) << (vec4<u32>(arg_1.x, 30686u, 18889u, 0u) % vec4<u32>(32u)), min(-arg_2.a, select(global2.b, var_1.a.b, var_1.b))), _wgslsmith_f_op_f32(-var_1.a.a.x));
    var_0 = var_3.a.x;
    return vec3<bool>(var_1.b, all(vec2<bool>(true, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(global2.b.x, firstTrailingBit(countOneBits(2147483647i)), -(global2.b.x & global2.b.x)) >> ((~select(abs(vec3<u32>(42807u, 0u, u_input.a.x)), ~u_input.a, func_1(vec2<u32>(u_input.b, u_input.b), vec3<u32>(33057u, u_input.b, 1u), Struct_2(vec4<i32>(-49315i, 4164i, global2.b.x, global2.b.x)))) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u));
    global2 = func_2(!all(vec2<bool>(true, false)), global2.a.zzz, select(max(u_input.b, u_input.b << (u_input.a.x % 32u)), ~u_input.a.x, true), Struct_2(vec4<i32>(global2.b.x, max(global2.b.x, 2147483647i), i32(-1i) * -9184i, var_0.x))).a;
    var var_1 = global0[_wgslsmith_index_u32(0u, 19u)];
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(u_input.b, 6u)], vec3<u32>(~abs(21019u) >> (abs(u_input.a.x | u_input.a.x) % 32u), u_input.a.x, (3086u & (u_input.b >> (38947u % 32u))) & ~max(u_input.b, u_input.b)), global2.a);
    global0 = array<vec2<bool>, 19>();
    var var_3 = func_2((_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.c.x + global2.c))) == _wgslsmith_f_op_f32(-var_2.c.x)) & true, var_2.a.a.a.zwx, u_input.a.x, Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_2.a.a.b.x, var_2.a.a.b.x, var_0.x) & firstTrailingBit(global2.b), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.b.x, global2.b.x, global2.b.x, 2147483647i), ~global2.b)))).a.b.x;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a.a.a), select(vec4<i32>(-1i) * -(~vec4<i32>(var_0.x, var_0.x, 0i, -52174i)), vec4<i32>(_wgslsmith_div_i32(-1i | var_0.x, var_0.x | -1i), var_0.x, _wgslsmith_clamp_i32(var_0.x, min(-31043i, var_0.x), _wgslsmith_div_i32(var_0.x, global2.b.x)), _wgslsmith_sub_i32(-49i | var_2.a.a.b.x, ~0i)), select(!vec4<bool>(var_2.a.b, var_2.a.b, var_2.a.b, true), vec4<bool>(false, var_2.a.b, var_1.x, any(vec4<bool>(var_1.x, var_1.x, false, var_1.x))), any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a.x), 19u)]))), _wgslsmith_f_op_f32(-var_2.a.a.c));
    let var_4 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, 28669i, i32(-1i) * -2147483647i, 1i), _wgslsmith_clamp_vec4_i32(~var_2.a.a.b, -vec4<i32>(-19643i, 0i, var_0.x, -33307i), vec4<i32>(var_0.x, 0i, var_2.a.a.b.x, 24371i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.a, ~vec3<u32>(27586u, 51901u, 1u)));
}

