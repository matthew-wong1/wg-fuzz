struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<u32, 29>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<i32>) -> u32 {
    global0 = array<Struct_3, 14>();
    global2 = array<u32, 29>();
    var var_0 = arg_0.b.b;
    var var_1 = 1i;
    let var_2 = Struct_4(Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(arg_0.b.b, 29u)], arg_0.b.b), _wgslsmith_mult_vec3_u32(vec3<u32>(87275u, 49575u, 4294967295u), vec3<u32>(1u, 19004u, arg_0.b.b))))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.b, 67255u), max(vec2<u32>(u_input.a, 51851u), vec2<u32>(arg_0.b.b, arg_0.b.b))), reverseBits(countOneBits(vec2<u32>(u_input.a, arg_0.b.b)))));
    return ~_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, var_2.a.b.b), vec4<u32>(96186u, global2[_wgslsmith_index_u32(u_input.a, 29u)], 1u, 0u))) | 63474u, global2[_wgslsmith_index_u32(~(~(~15995u)), 29u)]);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<u32>) -> vec2<u32> {
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    let var_0 = all(vec2<bool>(arg_2, !any(vec3<bool>(arg_1.x, true, false))));
    global0 = array<Struct_3, 14>();
    return _wgslsmith_mult_vec2_u32(min(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 39027u), arg_3.zw, arg_3.xz)), vec2<u32>(global2[_wgslsmith_index_u32(5859u, 29u)], countOneBits(27000u))), abs(~(~arg_3.zx))) >> (((arg_3.zx & ~arg_3.xw) ^ _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, arg_0)), arg_3.zw), arg_3.yz)) % vec2<u32>(32u));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(~reverseBits(global2[_wgslsmith_index_u32(~25509u, 29u)]), 29u)] ^ u_input.a;
    var var_1 = -_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(1i, 1i));
    var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-64383i, 2352i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-4258i, -25286i) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), vec2<i32>(var_1.x, var_1.x), -vec2<i32>(var_1.x, -37180i))), firstTrailingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(var_1.x, -21951i), countOneBits(vec2<i32>(var_1.x, var_1.x))))) << (func_4(_wgslsmith_mult_u32(func_3(global1[_wgslsmith_index_u32(79813u, 18u)], false, vec2<i32>(-1i, var_1.x), vec3<i32>(-26450i, var_1.x, var_1.x) << (vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 29u)], 0u, 1u) % vec3<u32>(32u))), u_input.a), vec2<bool>(true, _wgslsmith_f_op_f32(trunc(289f)) <= _wgslsmith_f_op_f32(min(702f, 271f))), !select(all(vec2<bool>(false, true)), true, all(vec3<bool>(true, true, false))), ~select(~vec4<u32>(25480u, 4294967295u, var_0, 7027u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0, u_input.a), vec4<u32>(var_0, 1u, var_0, global2[_wgslsmith_index_u32(arg_0, 29u)])), vec4<bool>(true, true, true, true))) % vec2<u32>(32u));
    global1 = array<Struct_2, 18>();
    let var_2 = ~2147483647i;
    return global1[_wgslsmith_index_u32(80423u, 18u)];
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_clamp_u32(60418u, max(0u, _wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(0u, 4294967295u, arg_0, 35668u)), vec4<u32>(global2[_wgslsmith_index_u32(0u, 29u)], 4294967295u, arg_0, 49539u)), ~vec4<u32>(u_input.a, 0u, 0u, u_input.a) & ~vec4<u32>(1u, arg_1.b.b, 69387u, u_input.a))), firstLeadingBit(abs(arg_0)));
    let var_1 = 151f;
    var var_2 = func_2(~(~(~(~27980u))));
    let var_3 = Struct_4(arg_1, ~var_2.b.b);
    var var_4 = Struct_5(Struct_2(var_2.a, func_2(var_3.a.b.b).b));
    return Struct_4(func_2(0u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(u_input.a ^ reverseBits(global2[_wgslsmith_index_u32(0u, 29u)])), min(global2[_wgslsmith_index_u32(u_input.a, 29u)] << (~global2[_wgslsmith_index_u32(u_input.a, 29u)] % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.a, 29u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], u_input.a))), 4294967295u), 29u)], Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(11386i, 1i, 0i, 13325i), vec4<i32>(1i, -11395i, -1i, 2147483647i)), firstTrailingBit(vec4<i32>(9313i, 0i, -2147483647i, -20724i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -14074i, 40501i, 0i), vec4<i32>(37463i, 0i, 0i, 5406i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -36839i, 9898i, 1i), reverseBits(vec4<i32>(1i, -1i, 1i, 53415i)))), Struct_1(-424f, u_input.a)));
    let var_1 = Struct_3(~0i, func_2(u_input.a), Struct_2(var_0.a.a, func_2(reverseBits(~75841u)).b));
    var var_2 = _wgslsmith_f_op_f32(var_0.a.b.a + var_0.a.b.a);
    let var_3 = Struct_4(var_0.a, var_0.a.b.b);
    let var_4 = var_1;
    let var_5 = _wgslsmith_div_vec2_i32(func_1(select(_wgslsmith_mult_u32(34181u, ~4294967295u), var_4.b.b.b, true), Struct_2(~select(var_0.a.a, vec4<i32>(var_4.a, -2147483647i, 23413i, var_4.b.a.x), false), Struct_1(-349f, var_0.b))).a.a.ww, vec2<i32>(firstLeadingBit(~firstLeadingBit(var_4.c.a.x)), firstTrailingBit(-26838i) << (~min(35861u, 25948u) % 32u)));
    var var_6 = Struct_3(-2147483647i, func_1(32463u, var_0.a).a, var_4.c);
    let var_7 = firstTrailingBit(-1i);
    global2 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(68759i);
}

