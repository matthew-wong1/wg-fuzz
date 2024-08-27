struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(i32(-2147483648), 1i, 42411i, 6875i), vec4<i32>(0i, 13682i, -7699i, 0i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 10919i), vec4<i32>(1530i, 7708i, -1i, 0i), vec4<i32>(42556i, 3327i, -1i, 1i), vec4<i32>(-11134i, -1i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), 58875i, -26653i, 0i), vec4<i32>(-1i, 1i, -1i, 1i), vec4<i32>(20691i, -32567i, -418i, -47573i), vec4<i32>(i32(-2147483648), 23892i, 2147483647i, -1i), vec4<i32>(-33874i, 35351i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -1687i), vec4<i32>(2147483647i, 1i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), -40986i, -1380i, 1i), vec4<i32>(1i, 2147483647i, 8713i, 9097i), vec4<i32>(0i, -1i, 1i, 2147483647i), vec4<i32>(-14041i, -1i, 29114i, i32(-2147483648)), vec4<i32>(27126i, i32(-2147483648), 12523i, 50273i), vec4<i32>(-1i, -9236i, 0i, i32(-2147483648)), vec4<i32>(-9609i, i32(-2147483648), -64503i, -1i), vec4<i32>(-35590i, 1i, 0i, -1i), vec4<i32>(-1i, -1i, -14145i, i32(-2147483648)), vec4<i32>(22681i, 2147483647i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), -22122i, -1i, -1547i), vec4<i32>(1i, -19949i, -26962i, 2266i), vec4<i32>(i32(-2147483648), 21239i, 17526i, -67455i), vec4<i32>(22086i, i32(-2147483648), -56923i, -55253i), vec4<i32>(-1i, i32(-2147483648), -62083i, 2147483647i));

var<private> global2: array<i32, 2> = array<i32, 2>(2147483647i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = any(vec3<bool>(true, true, true));
    var var_1 = 1u;
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(2017u, arg_0.x, arg_0.x, 26070u), vec4<u32>(63431u, arg_0.x, arg_0.x, 4294967295u)), ~vec4<u32>(4294967295u, 8190u, arg_0.x, 10944u)), 0u), _wgslsmith_mult_u32(arg_0.x, abs(41029u)) & ~1u, ~arg_0.x), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f - 1451f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1353f, _wgslsmith_f_op_f32(f32(-1f) * -370f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1593f))))));
    var_1 = var_2.b;
    global0 = arg_0.x;
    return _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(126f - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), true)))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(reverseBits(vec3<u32>(~11475u, 30673u, _wgslsmith_dot_vec2_u32(vec2<u32>(46772u, 4294967295u), vec2<u32>(4294967295u, 6295u)))) ^ _wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, 10998u, 1u)), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(_wgslsmith_div_u32(1u, ~abs(14901u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) - 560f)))), 1000f);
    var var_1 = _wgslsmith_mult_u32(var_0.b, 0u);
    let var_2 = var_0;
    global0 = ~var_0.b;
    let var_3 = reverseBits(arg_0.yww);
    return vec4<u32>(reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, var_0.b, var_0.b, 0u), vec4<u32>(4294967295u, 104796u, var_0.b, var_0.b)), reverseBits(vec4<u32>(63662u, var_0.b, var_0.b, var_2.b))), var_0.a.x)), ~_wgslsmith_sub_u32(~42580u, 1u), ~var_0.a.x, ~26488u);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> f32 {
    var var_0 = -230f;
    var var_1 = reverseBits(func_3(-select(-vec4<i32>(global2[_wgslsmith_index_u32(21392u, 2u)], u_input.a.x, -1i, global2[_wgslsmith_index_u32(arg_1.x, 2u)]), select(vec4<i32>(global2[_wgslsmith_index_u32(8188u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(43927u, 2u)], u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 2u)], 2147483647i, 0i, -2147483647i), true), false)));
    global2 = array<i32, 2>();
    var_1 = _wgslsmith_add_vec4_u32(min(~vec4<u32>(51792u, 43335u, arg_0, arg_1.x) >> (vec4<u32>(var_1.x, arg_1.x, 1u, 10740u) % vec4<u32>(32u)), vec4<u32>(~arg_1.x, _wgslsmith_div_u32(arg_1.x, 28782u), firstLeadingBit(22472u), arg_0 & arg_0)) | vec4<u32>(22868u, var_1.x, firstTrailingBit(arg_0), _wgslsmith_dot_vec2_u32(var_1.zz >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(65079u, 0u), arg_1.xz))), _wgslsmith_mod_vec4_u32(vec4<u32>(11630u, ~var_1.x, ~(arg_0 << (1u % 32u)), countOneBits(var_1.x)), vec4<u32>(4294967295u ^ var_1.x, 1u, abs(arg_0), 36973u) | vec4<u32>(min(arg_0, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 2112u), vec2<u32>(var_1.x, arg_0)), 1u, reverseBits(arg_1.x))));
    var var_2 = Struct_1(~var_1.wzx, max(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.zz, arg_1.zz), var_1.xy), _wgslsmith_add_u32(1u, arg_1.x) ^ _wgslsmith_add_u32(arg_1.x, 23494u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, arg_0) & 3962u, abs(_wgslsmith_mod_u32(86932u, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f)), _wgslsmith_f_op_f32(-1f)), 573f);
    return _wgslsmith_f_op_f32(min(var_2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.c)) - _wgslsmith_f_op_f32(trunc(-1000f))), -1217f)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global0 = 4294967295u;
    return _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(~11598u, 35470u | arg_2.x, firstLeadingBit(66925u), firstLeadingBit(0u)) | countOneBits(max(vec4<u32>(arg_2.x, 689u, 1u, arg_2.x), vec4<u32>(arg_3.a.x, arg_3.b, arg_2.x, 69466u)))), firstTrailingBit(firstTrailingBit(vec4<u32>(24576u, arg_3.b, 48468u, 0u) | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.b, arg_2.x, arg_2.x, 122619u), vec4<u32>(75489u, 36847u, arg_2.x, arg_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(func_4(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(33496u, 2u)]), _wgslsmith_f_op_f32(func_1(~abs(vec2<u32>(1u, 1u)))), vec2<u32>(1u, 1u), Struct_1(vec3<u32>(1u, 1u, 1u), 4294967295u, 2423f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(914f, 2345f) - _wgslsmith_f_op_f32(func_2(2781u, vec3<u32>(36662u, 4294967295u, 47724u)))))), 21691u);
    var var_1 = ~_wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(var_0.x, 121724u, 1u, 1u)), reverseBits(vec4<u32>(46302u, 1u, var_0.x, 4294967295u)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), abs(func_3(vec4<i32>(33647i, 12305i, u_input.a.x, 64505i))));
    let var_2 = min(firstTrailingBit(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(var_0.x, 28u)])), global1[_wgslsmith_index_u32(countOneBits(~(~68492u)), 28u)]);
    global2 = array<i32, 2>();
    var var_3 = !(!vec4<bool>(false, true, all(vec4<bool>(false, false, true, false)) | (global2[_wgslsmith_index_u32(32018u, 2u)] != global2[_wgslsmith_index_u32(36886u, 2u)]), true));
    var var_4 = _wgslsmith_sub_u32(105181u, 1u);
    var var_5 = firstLeadingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~func_3(global1[_wgslsmith_index_u32(var_0.x, 28u)]).wwz, ~(~vec3<u32>(61432u, 0u, 4294967295u))), vec3<u32>(~var_0.x | ~0u, ~110625u >> (var_0.x % 32u), 1u)));
    var var_6 = ~var_0.x;
    var_1 = _wgslsmith_div_u32(var_5.x, (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_5.x, var_0.x), vec3<u32>(var_5.x, 14244u, 1u)) ^ (var_0.x << (var_0.x % 32u))) >> (reverseBits(_wgslsmith_clamp_u32(var_5.x, var_0.x, 63586u)) % 32u)) | _wgslsmith_dot_vec2_u32(var_5.yz, var_5.xz & var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec4<u32>(8855u, var_5.x, 0u, var_0.x), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, var_5.x, 4294967295u), vec4<u32>(var_0.x, 2312u, 0u, var_5.x), vec4<u32>(var_0.x, 30616u, var_0.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 26739u, 77752u, 1u), vec4<u32>(var_0.x, 1u, var_0.x, 12514u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -233f))), ~vec4<u32>(_wgslsmith_sub_u32(var_5.x, var_0.x & 1u), _wgslsmith_sub_u32(firstTrailingBit(4294967295u), func_3(var_2).x), ~(~28646u), _wgslsmith_dot_vec2_u32(~var_0, ~var_5.xy)));
}

