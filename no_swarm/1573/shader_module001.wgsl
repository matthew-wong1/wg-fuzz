struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    let var_0 = false;
    var var_1 = arg_3;
    let var_2 = ~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(33859u | arg_2.c.a, ~arg_1.x)));
    global0 = ~arg_2.c.b;
    global1 = array<bool, 20>();
    return 17130u;
}

fn func_3() -> i32 {
    let var_0 = Struct_1(min(u_input.d.x, ~(~u_input.d.x)), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, 57869u, u_input.c), ~vec4<u32>(global0.x, 39237u, 4294967295u, u_input.c)), vec4<u32>(u_input.c, abs(global0.x) & _wgslsmith_add_u32(u_input.d.x, u_input.c), 50484u, _wgslsmith_mod_u32(~global0.x, 95160u)), ~reverseBits(abs(vec4<u32>(10395u, 0u, 1u, 0u)))));
    let var_1 = Struct_1(firstTrailingBit(u_input.c), vec4<u32>(0u << (~_wgslsmith_clamp_u32(4294967295u, 63334u, global0.x) % 32u), global0.x, ~4294967295u, global0.x));
    var var_2 = u_input.d.x < var_1.b.x;
    global0 = min(vec4<u32>(~(~(var_1.b.x | var_1.b.x)), 0u ^ _wgslsmith_dot_vec3_u32(global0.xxw, vec3<u32>(var_0.b.x, var_0.a, global0.x)), global0.x, 9387u), min(_wgslsmith_mult_vec4_u32(abs(abs(vec4<u32>(global0.x, var_0.b.x, 103537u, 35425u))), ~var_1.b & min(vec4<u32>(var_1.b.x, 5541u, var_0.a, var_1.b.x), var_0.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(4736u, u_input.c, 4294967295u, 16638u) >> (firstLeadingBit(vec4<u32>(1u, 7838u, 16474u, u_input.c)) % vec4<u32>(32u)), vec4<u32>(1u, ~global0.x, ~0u, select(24637u, 14087u, true)))));
    var var_3 = select(select(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d.x, u_input.d.x), var_1.b.ww), (global0.wx ^ var_1.b.zx) ^ abs(var_1.b.yy)), abs(var_1.b.yx), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.b.x, 20u)], global1[_wgslsmith_index_u32(global0.x, 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)]), false), global1[_wgslsmith_index_u32(~var_0.b.x, 20u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(59010u, 20u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(global0.x, 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_1.a, 20u)], global1[_wgslsmith_index_u32(30879u, 20u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(global0.x, 20u)])), select(global1[_wgslsmith_index_u32(var_1.a, 20u)], true, global1[_wgslsmith_index_u32(75307u, 20u)])), vec2<bool>(global1[_wgslsmith_index_u32(var_0.a, 20u)], !global1[_wgslsmith_index_u32(4294967295u, 20u)]))), global0.yx, !(!(!select(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)], true))));
    return u_input.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = select(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, reverseBits(-2147483647i), arg_1.a, countOneBits(u_input.a)), _wgslsmith_mod_vec4_i32(-vec4<i32>(5180i, -821i, u_input.a, arg_2.x), ~vec4<i32>(arg_1.d, arg_2.x, -2147483647i, 2147483647i)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -58963i, arg_2.x, 0i), vec4<i32>(22131i, u_input.a, arg_2.x, 2927i)), ~vec4<i32>(arg_2.x, -63643i, 0i, u_input.a))), vec4<i32>(_wgslsmith_mult_i32(2147483647i, arg_1.d), -min(arg_1.a, -2147483647i), ~_wgslsmith_div_i32(arg_1.d, 52739i), u_input.a), vec4<i32>(u_input.b, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, -1i), -44394i), firstTrailingBit(u_input.b) << (~u_input.d.x % 32u), _wgslsmith_div_i32(1i, -arg_1.d))), reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, -1i, arg_1.d, 36085i) >> (vec4<u32>(15828u, arg_1.b.x, arg_1.c.b.x, global0.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.d, 16361i, arg_2.x, 76583i), vec4<i32>(-16245i, u_input.a, -15159i, arg_2.x)))), select(vec4<bool>(~arg_3.x < _wgslsmith_dot_vec2_u32(arg_1.b, vec2<u32>(arg_1.b.x, 4839u)), true, any(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_3.x, 20u)], arg_0), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(true, true))), all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 20u)], true))), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(19191u, 20u)]), vec4<bool>(arg_0, global1[_wgslsmith_index_u32(4294967295u, 20u)], false, global1[_wgslsmith_index_u32(global0.x, 20u)]), 2147483647i >= arg_1.a), true));
    global0 = ~(vec4<u32>(_wgslsmith_div_u32(u_input.d.x, 1u), ~(~56077u), _wgslsmith_mult_u32(global0.x, ~global0.x), global0.x) ^ ~(~vec4<u32>(global0.x, arg_3.x, 3996u, 45148u)));
    var var_1 = Struct_2(max(-1i, 0i), global0.zy >> (_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, global0.x)), vec2<u32>(4539u, firstLeadingBit(u_input.c))) % vec2<u32>(32u)), arg_1.c, -countOneBits(-(~arg_1.a)));
    let var_2 = firstTrailingBit(1i);
    global0 = _wgslsmith_mod_vec4_u32(countOneBits(max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.d.x), var_1.c.b.zwx), 1u, ~arg_3.x, ~arg_1.c.a), select(~vec4<u32>(1u, 4294967295u, 18287u, var_1.b.x), select(vec4<u32>(u_input.d.x, 31741u, u_input.c, 81845u), arg_1.c.b, arg_0), any(vec4<bool>(arg_0, arg_0, true, global1[_wgslsmith_index_u32(global0.x, 20u)]))))), arg_1.c.b & _wgslsmith_mod_vec4_u32(firstLeadingBit(var_1.c.b), min(var_1.c.b | vec4<u32>(4294967295u, 46610u, u_input.d.x, 44872u), vec4<u32>(96933u, u_input.c, u_input.d.x, 8486u))));
    return ~max(_wgslsmith_sub_vec4_u32((vec4<u32>(var_1.c.b.x, u_input.d.x, arg_1.b.x, 4294967295u) | vec4<u32>(global0.x, arg_1.c.b.x, 1u, 44284u)) ^ arg_1.c.b, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 37950u, 54946u, 12810u), var_1.c.b)), select(~vec4<u32>(135710u, 20755u, var_1.c.b.x, 52516u), ~vec4<u32>(0u, arg_3.x, global0.x, 1u), global1[_wgslsmith_index_u32(58114u, 20u)]) | arg_1.c.b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(4294967295u, vec4<u32>(firstLeadingBit(49789u) & firstTrailingBit(global0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.d.yx), abs(u_input.d.zx)), max(0u, ~0u), _wgslsmith_mult_u32(global0.x ^ u_input.c, _wgslsmith_add_u32(4294967295u, global0.x))) ^ ~countOneBits(select(vec4<u32>(0u, u_input.d.x, 34465u, 52136u), vec4<u32>(4294967295u, global0.x, u_input.c, 0u), vec4<bool>(global1[_wgslsmith_index_u32(49442u, 20u)], global1[_wgslsmith_index_u32(20466u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], true))));
    global1 = array<bool, 20>();
    let var_1 = global1[_wgslsmith_index_u32(23305u, 20u)];
    var var_2 = firstTrailingBit(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-56294i, -25728i), u_input.a, ~u_input.b));
    let var_3 = Struct_1(abs(~(u_input.d.x & var_0.b.x)), vec4<u32>(~(~1u ^ global0.x), ~(~2365u) ^ func_1(_wgslsmith_f_op_f32(197f - 1788f), var_0.b.wyy, Struct_2(-2147483647i, u_input.d.yz, Struct_1(var_0.b.x, var_0.b), u_input.a), select(vec2<bool>(global1[_wgslsmith_index_u32(2591u, 20u)], false), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 20u)], false), global1[_wgslsmith_index_u32(4294967295u, 20u)])), 1u, abs(global0.x)));
    return Struct_1(_wgslsmith_dot_vec4_u32(var_3.b, var_0.b), func_4(any(select(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(48121u, 20u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(var_0.b.x, 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(388u, 20u)], true), global1[_wgslsmith_index_u32(0u, 20u)]), any(vec3<bool>(global1[_wgslsmith_index_u32(var_0.a, 20u)], true, false)))), Struct_2(-11902i, abs(firstTrailingBit(var_3.b.wx)), var_0, _wgslsmith_clamp_i32(11391i, u_input.b, 8071i) ^ u_input.a), vec2<i32>(u_input.a, -func_3()), ~firstTrailingBit(vec2<u32>(0u, var_3.b.x))));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec3<bool>(global1[_wgslsmith_index_u32(max(~u_input.d.x, func_4(!global1[_wgslsmith_index_u32(11578u, 20u)], Struct_2(arg_1, arg_0.yz, Struct_1(0u, arg_0), arg_1), firstTrailingBit(vec2<i32>(8566i, 1i)), u_input.d.xy).x ^ ~arg_0.x), 20u)], all(!select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(arg_2.c.b.x, 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 20u)], false), vec3<bool>(global1[_wgslsmith_index_u32(arg_2.b.x, 20u)], global1[_wgslsmith_index_u32(arg_2.c.a, 20u)], false))) | ((!global1[_wgslsmith_index_u32(48014u, 20u)] || (13268u < u_input.d.x)) != false), all(!vec4<bool>(17172u >= arg_0.x, global1[_wgslsmith_index_u32(u_input.c << (arg_0.x % 32u), 20u)], select(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(1130u, 20u)]), global1[_wgslsmith_index_u32(arg_2.b.x, 20u)] | global1[_wgslsmith_index_u32(global0.x, 20u)])));
    global1 = array<bool, 20>();
    var var_1 = -2147483647i;
    let var_2 = !any(select(select(!vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(global0.x, 20u)], true, global1[_wgslsmith_index_u32(arg_2.c.a, 20u)]), !vec4<bool>(var_0.x, false, global1[_wgslsmith_index_u32(8304u, 20u)], true), global1[_wgslsmith_index_u32(arg_2.b.x, 20u)] || global1[_wgslsmith_index_u32(1u, 20u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], true, false, var_0.x), select(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 20u)], true, global1[_wgslsmith_index_u32(39791u, 20u)], global1[_wgslsmith_index_u32(arg_2.c.b.x, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 20u)], true, true, global1[_wgslsmith_index_u32(u_input.d.x, 20u)]), false), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(29113u, 20u)], false, var_0.x)), all(select(var_0.xy, vec2<bool>(var_0.x, true), global1[_wgslsmith_index_u32(global0.x, 20u)]))));
    var_0 = !(!vec3<bool>(select(true, var_2, all(vec3<bool>(true, false, var_2))), true, true));
    return Struct_2(arg_2.a | ~select(-arg_1, -14294i, u_input.b <= 1i), ~_wgslsmith_mod_vec2_u32(~(~u_input.d.zz), countOneBits(arg_0.yx)), Struct_1(~arg_2.b.x, ~vec4<u32>(global0.x, ~arg_2.c.b.x, arg_0.x, ~83590u)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.c);
    global0 = vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.d.x, ~(u_input.d.x >> (u_input.d.x % 32u))), 35463u, global0.x >> (~(~u_input.c) % 32u), 4294967295u) << (select(vec4<u32>(firstLeadingBit(func_1(1810f, vec3<u32>(global0.x, u_input.d.x, u_input.d.x), Struct_2(-1i, vec2<u32>(global0.x, var_0), Struct_1(var_0, vec4<u32>(u_input.c, 0u, var_0, global0.x)), -1i), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false))), max(~1u, abs(var_0)), var_0, ~u_input.c), vec4<u32>(~1u, 1u ^ var_0, reverseBits(u_input.d.x), ~var_0) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.c, 0u, global0.x), ~vec4<u32>(23872u, u_input.c, 48953u, 4294967295u)) % vec4<u32>(32u)), all(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(57917u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(var_0, 20u)], false, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(21105u, 20u)]), true))) % vec4<u32>(32u));
    global1 = array<bool, 20>();
    let var_1 = func_5(vec4<u32>(~min(~0u, firstTrailingBit(53740u)), global0.x, ~18833u, reverseBits(~(global0.x | u_input.c))), -38428i, Struct_2(14364i, vec2<u32>(4294967295u, ~global0.x | 24661u), func_2(), u_input.b));
    let var_2 = vec4<i32>(22124i, _wgslsmith_add_i32(var_1.d, u_input.b) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(func_2().a, firstLeadingBit(4294967295u)), ~1u) % 32u), _wgslsmith_div_i32(~(_wgslsmith_add_i32(-37655i, u_input.b) ^ (var_1.a & u_input.b)), _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(var_1.d, var_1.a)) & reverseBits(u_input.b ^ 2147483647i)), u_input.b);
    global0 = abs(~vec4<u32>(~4294967295u, var_1.b.x, func_5(var_1.c.b & vec4<u32>(1u, 1u, 5237u, global0.x), abs(u_input.a), Struct_2(2147483647i, global0.zx, var_1.c, -13735i)).b.x, 1u));
    var var_3 = Struct_1(1u, vec4<u32>(_wgslsmith_mod_u32(var_0, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 89524u), _wgslsmith_div_u32(u_input.c, 23669u))), global0.x, var_1.b.x, 1u));
    global0 = ~func_2().b;
    var var_4 = ~(~select(-(~var_2.zxy), min(var_2.wwz, var_2.zzy), vec3<bool>(any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_1.b.x, 20u)])), !global1[_wgslsmith_index_u32(var_0, 20u)], var_0 == 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(var_4.xx, vec2<i32>(func_3(), max(var_1.a, var_2.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, 94873i, 0i), -var_2.zyz), abs(var_2.xxx ^ var_2.yww)) | (u_input.a | ~1i), vec2<u32>(countOneBits(~_wgslsmith_div_u32(var_3.b.x, global0.x)), 69783u));
}

