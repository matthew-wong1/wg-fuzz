struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<f32>, 11>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 26>;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(4294967295u, 0u), Struct_1(107196u, 4586u), Struct_1(1u, 1u), Struct_1(1u, 23055u), Struct_1(29062u, 40058u), Struct_1(0u, 35913u), Struct_1(0u, 1u), Struct_1(31488u, 0u), Struct_1(15612u, 1u), Struct_1(3669u, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_1(~(~1u), 0u);
    var var_1 = !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false)), true));
    let var_2 = u_input.d;
    let var_3 = 1285f;
    var var_4 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(reverseBits(1i), u_input.d, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global3[_wgslsmith_index_u32(1u, 26u)], global0.b, global0.b)), firstLeadingBit(39086i)))), ~(-u_input.a.x));
    return _wgslsmith_add_i32(~global3[_wgslsmith_index_u32(select(global0.a.b, 39419u, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true))), 26u)], global0.b);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(13374u, 1u ^ ((global0.a.a << (u_input.c % 32u)) ^ 0u)), -min(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(26768u, 26u)], -25477i), func_3(vec2<f32>(-445f, -233f))) >> (_wgslsmith_dot_vec4_u32(abs(~u_input.b), u_input.b) % 32u));
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, arg_0.b, abs(977u)), u_input.b.xzx);
    let var_2 = Struct_2(arg_0, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(global0.a.a, 26u)] | 59314i, _wgslsmith_mult_i32(~firstTrailingBit(global3[_wgslsmith_index_u32(u_input.c, 26u)]), u_input.a.x)));
    var var_3 = max(u_input.b, ~reverseBits(vec4<u32>(var_0.a.a, var_1.x, var_0.a.a, 4294967295u)) >> (u_input.b % vec4<u32>(32u)));
    var var_4 = u_input.b;
    return !vec2<bool>(var_0.b <= ~_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(u_input.d, 32139i)), 4294967295u > (var_0.a.b >> (70915u % 32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = global0.b;
    global4 = array<Struct_1, 10>();
    var var_1 = Struct_1(arg_0.x >> (~_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(global2.a, 8979u)) % 32u), max(1u, 0u));
    global2 = global0.a;
    global2 = global4[_wgslsmith_index_u32(0u, 10u)];
    return Struct_2(Struct_1(reverseBits(~0u >> (_wgslsmith_clamp_u32(arg_0.x, global0.a.a, 0u) % 32u)), 1u), _wgslsmith_add_i32(u_input.d, ~(global3[_wgslsmith_index_u32(u_input.c, 26u)] | global3[_wgslsmith_index_u32(45661u, 26u)])) | u_input.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = global0.a;
    global0 = func_4(~(~(~u_input.b.yw ^ ~arg_1.zy)), select(vec2<bool>(false, !(global0.b < global3[_wgslsmith_index_u32(1u, 26u)])), func_2(global4[_wgslsmith_index_u32(~(~5749u), 10u)]), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false), select(true, false, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var_0 = func_4(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(15662u, 1u), vec2<u32>(4294967295u, arg_1.x))), func_2(Struct_1(arg_1.x, _wgslsmith_div_u32(~38930u, 51242u | global2.b)))).a;
    return vec2<bool>(!select(any(vec2<bool>(true, true)), true | select(true, false, true), all(func_2(global4[_wgslsmith_index_u32(var_0.a, 10u)]))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -368f);
    var var_1 = 27034i;
    let var_2 = select(select(vec2<bool>(!(47586u < global0.a.a), true), func_1(firstLeadingBit(u_input.a), max(firstLeadingBit(vec3<u32>(global2.a, global0.a.b, 54388u)), ~vec3<u32>(23304u, 4294967295u, global2.b))), func_2(global0.a)), func_2(func_4(~u_input.b.yw, func_2(func_4(vec2<u32>(0u, 91855u), vec2<bool>(false, true)).a)).a), vec2<bool>(func_1(abs(vec3<i32>(13707i, u_input.d, global3[_wgslsmith_index_u32(0u, 26u)]) & vec3<i32>(global0.b, u_input.a.x, -2147483647i)), ~vec3<u32>(4294967295u, 4294967295u, global2.b) & u_input.b.zxx).x, true));
    global2 = global4[_wgslsmith_index_u32(u_input.b.x, 10u)];
    let var_3 = var_0;
    let var_4 = var_2.x;
    let var_5 = Struct_2(global0.a, ~firstLeadingBit(0i << (1u % 32u)));
    let var_6 = 305f;
    let var_7 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, ~_wgslsmith_div_vec4_u32(var_7, vec4<u32>(59652u, var_5.a.a, 0u, global2.b))), u_input.b), select(_wgslsmith_mod_vec2_u32(select(~vec2<u32>(u_input.b.x, 28980u), ~vec2<u32>(0u, var_7.x), false), ~(~var_7.zy)), var_7.xz, var_2), firstLeadingBit(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zz, -vec2<i32>(u_input.d, u_input.a.x)), _wgslsmith_clamp_i32(55109i ^ global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global2.b, 26u)], global0.b, u_input.d), u_input.a), ~0i), _wgslsmith_mod_i32(~(-2147483647i), i32(-1i) * -50171i))), global1[_wgslsmith_index_u32(abs(abs((18906u << (u_input.b.x % 32u)) << (global2.b % 32u))), 11u)]);
}

