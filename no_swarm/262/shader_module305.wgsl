struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32;

var<private> global2: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> u32 {
    global2 = array<vec4<bool>, 5>();
    var var_0 = arg_2.b;
    let var_1 = u_input.b;
    global1 = -29201i;
    let var_2 = ~35126u & reverseBits(_wgslsmith_mod_u32(countOneBits(~52757u), ~(arg_2.b.c | arg_2.b.c)));
    return abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.c >> (var_2 % 32u), var_0.a, abs(53574u), _wgslsmith_dot_vec4_u32(vec4<u32>(53040u, arg_0.c.c, 1u, 15981u), vec4<u32>(77731u, arg_2.b.c, arg_0.c.c, 4294967295u))), ~(vec4<u32>(arg_2.a.a, global0.a.c.c, var_2, 44149u) | vec4<u32>(arg_2.a.a, 26240u, 39917u, 51329u))), var_2));
}

fn func_2(arg_0: u32) -> Struct_4 {
    global0 = Struct_4(global0.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(global0.b, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, global0.b.x) >> (global0.b % vec4<u32>(32u)), global0.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 34550u, 1u, global0.c.x), vec4<u32>(29724u, global0.a.c.a, arg_0, global0.b.x), vec4<u32>(arg_0, global0.a.c.c, 15682u, arg_0)) | global0.b, vec4<u32>(_wgslsmith_mult_u32(arg_0, 103161u), global0.a.c.c, arg_0, reverseBits(countOneBits(1u)))), abs(global0.b.wyy) & ~(~select(vec3<u32>(71099u, 41544u, 68685u), vec3<u32>(4294967295u, 40620u, 75263u), vec3<bool>(global0.a.b, global0.a.a.x, global0.a.a.x))));
    global2 = array<vec4<bool>, 5>();
    return Struct_4(Struct_3(vec4<bool>(false, false, false, any(select(global0.a.a.xy, global0.a.a.ww, true))), global0.a.a.x, Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c.b + global0.a.c.b)), arg_0)), global0.b, ~_wgslsmith_div_vec3_u32(vec3<u32>(87064u, abs(global0.c.x), _wgslsmith_dot_vec2_u32(global0.c.zz, global0.b.wz)), vec3<u32>(func_3(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 5u)], global0.a.a.x, global0.a.c), 4294967295u, Struct_2(global0.a.c, global0.a.c)), ~global0.c.x, _wgslsmith_dot_vec3_u32(global0.b.wxw, vec3<u32>(arg_0, arg_0, arg_0)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<i32>) -> Struct_4 {
    global1 = -u_input.a;
    let var_0 = global0.b.zxz;
    var var_1 = _wgslsmith_f_op_f32(-global0.a.c.b);
    let var_2 = all(vec2<bool>(true, (_wgslsmith_sub_i32(arg_2.x, -31767i) >= ~(-1i)) & true));
    global2 = array<vec4<bool>, 5>();
    return func_2(~var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(select(vec3<bool>(_wgslsmith_f_op_f32(-global0.a.c.b) != _wgslsmith_f_op_f32(ceil(global0.a.c.b)), global0.a.a.x, select(false, any(global0.a.a.zyz), global0.a.a.x)), vec3<bool>(global0.a.b, true, !global0.a.a.x), all(select(select(global0.a.a, vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, global0.a.b)), select(vec4<bool>(global0.a.a.x, global0.a.b, global0.a.a.x, true), global0.a.a, true), any(vec4<bool>(global0.a.b, false, global0.a.b, global0.a.a.x))))), ~(-2147483647i), vec3<i32>(_wgslsmith_mod_i32(-(~u_input.b), select(reverseBits(-84213i), -23825i & u_input.b, true)), 0i, u_input.a));
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(1i, ~u_input.b), min(_wgslsmith_div_vec2_i32(vec2<i32>(7980i, -48987i), vec2<i32>(u_input.a, 53018i)), vec2<i32>(-29058i, u_input.b))) ^ vec2<i32>(13911i, u_input.b), countOneBits(vec2<i32>(-48923i, u_input.a ^ u_input.b) ^ vec2<i32>(1i, 0i)));
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.x, firstTrailingBit(global0.b.x | global0.a.c.c), 49748u, min(52862u, 22174u)), global0.b);
    var var_1 = !any(!vec3<bool>(global0.a.b, true, global0.a.b)) != false;
    let var_2 = Struct_2(Struct_1(0u, global0.a.c.b, ~global0.c.x), func_2(41641u).a.c);
    global1 = firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.c.b, _wgslsmith_clamp_vec4_i32(-(min(vec4<i32>(-2147483647i, -3602i, u_input.b, u_input.a), vec4<i32>(u_input.a, u_input.a, -64603i, u_input.b)) & -vec4<i32>(17212i, 3651i, 48336i, 39232i)), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(0i, -2147483647i, u_input.a, u_input.a)), reverseBits(vec4<i32>(-48474i, -u_input.b, _wgslsmith_add_i32(30914i, u_input.a), ~u_input.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f * var_2.a.b)) + -558f))), _wgslsmith_add_vec2_i32(-select(-vec2<i32>(u_input.b, -4006i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -1i)), select(vec2<bool>(false, false), vec2<bool>(false, global0.a.a.x), false)), vec2<i32>(u_input.b, u_input.b) >> (var_0.yz % vec2<u32>(32u))));
}

