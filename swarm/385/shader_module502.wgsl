struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: array<Struct_3, 15>;

var<private> global2: vec4<i32> = vec4<i32>(-1i, -6426i, -1i, 0i);

var<private> global3: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-599f, -382f, -988f, 830f), vec4<f32>(-281f, -690f, 651f, -620f), vec4<f32>(-211f, 691f, 223f, 150f), vec4<f32>(264f, -1000f, -663f, -550f), vec4<f32>(-205f, 311f, 975f, 621f), vec4<f32>(963f, -759f, 760f, 327f), vec4<f32>(-771f, 587f, 471f, 433f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4) -> i32 {
    let var_0 = firstLeadingBit(u_input.a);
    global0 = array<vec2<bool>, 17>();
    global1 = array<Struct_3, 15>();
    global1 = array<Struct_3, 15>();
    global3 = array<vec4<f32>, 7>();
    return reverseBits(u_input.b.x << (firstLeadingBit(~(~4294967295u)) % 32u));
}

fn func_2() -> vec3<i32> {
    let var_0 = u_input.a;
    global3 = array<vec4<f32>, 7>();
    global2 = _wgslsmith_add_vec4_i32(vec4<i32>(~firstTrailingBit(func_3(vec4<i32>(u_input.b.x, -7134i, u_input.c.x, 2147483647i), Struct_4(global2.x, Struct_2(Struct_1(var_0, 34540u), global2.x)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global2.x, -11758i), u_input.c.x), 1i, ~global2.x ^ -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x & _wgslsmith_dot_vec3_i32(global2.yxx, vec3<i32>(global2.x, -73485i, 0i)), _wgslsmith_sub_i32(firstTrailingBit(global2.x), reverseBits(31317i)), func_3(vec4<i32>(global2.x, 35695i, global2.x, 1i), Struct_4(1i, Struct_2(Struct_1(0u, 0u), u_input.c.x))) | (u_input.c.x | -6165i), _wgslsmith_mult_i32(i32(-1i) * -29983i, func_3(vec4<i32>(1i, u_input.c.x, global2.x, -12250i), Struct_4(1i, Struct_2(Struct_1(4294967295u, 19666u), -5100i))))), vec4<i32>(countOneBits(-7105i), abs(u_input.c.x), func_3(vec4<i32>(u_input.c.x, global2.x, 24317i, global2.x), Struct_4(2147483647i, Struct_2(Struct_1(var_0, var_0), global2.x))), global2.x & 2147483647i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, -1i, u_input.c.x), ~vec4<i32>(-1i, global2.x, -22602i, 5362i))));
    var var_1 = Struct_2(Struct_1(4294967295u, _wgslsmith_div_u32(firstLeadingBit(var_0 & var_0), var_0)), -firstTrailingBit(~1i));
    let var_2 = firstTrailingBit(~vec3<i32>(var_1.b, -var_1.b, -3414i));
    return _wgslsmith_sub_vec3_i32(u_input.b, reverseBits(vec3<i32>(var_1.b >> (1u % 32u), func_3(vec4<i32>(global2.x, 69225i, var_2.x, 2147483647i), Struct_4(var_1.b, Struct_2(var_1.a, var_2.x))), ~(-1i)) & _wgslsmith_add_vec3_i32(-global2.wxy, max(vec3<i32>(var_1.b, var_1.b, u_input.c.x), vec3<i32>(1i, global2.x, global2.x)))));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    global3 = array<vec4<f32>, 7>();
    let var_0 = select(all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), all(vec3<bool>(false, false, false)))), false, all(vec4<bool>(false, true || any(vec3<bool>(true, true, false)), false, false)));
    var var_1 = i32(-1i) * -2147483647i;
    global2 = -(_wgslsmith_mult_vec4_i32(vec4<i32>(-20715i, global2.x, arg_0.x | arg_0.x, 30341i ^ u_input.c.x), vec4<i32>(-2147483647i, u_input.c.x, i32(-1i) * -2147483647i, max(63562i, arg_0.x))) & _wgslsmith_mod_vec4_i32(select(~vec4<i32>(2147483647i, -30865i, -1i, 1i), vec4<i32>(arg_0.x, -16000i, -27813i, global2.x), vec4<bool>(var_0, var_0, var_0, false)), _wgslsmith_mult_vec4_i32(vec4<i32>(62514i, 7893i, 2147483647i, -2147483647i), ~vec4<i32>(global2.x, 2147483647i, -5066i, global2.x))));
    global2 = ~(reverseBits(countOneBits(abs(vec4<i32>(-1i, arg_0.x, u_input.c.x, 56019i)))) & _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(39931i, 2147483647i, -2622i, 27365i), -vec4<i32>(arg_0.x, global2.x, u_input.b.x, 2147483647i)), firstTrailingBit(vec4<i32>(1i, global2.x, -21062i, 1i)) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) % vec4<u32>(32u))));
    return Struct_1(_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 39007u), reverseBits(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)))), ~_wgslsmith_sub_u32(~(~u_input.a), ~reverseBits(0u)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<bool> {
    global3 = array<vec4<f32>, 7>();
    global0 = array<vec2<bool>, 17>();
    let var_0 = Struct_2(func_4(select(u_input.c, select(func_2(), global2.ywy, !vec3<bool>(arg_0, true, true)), arg_0)), -(-firstTrailingBit(global2.x) >> ((_wgslsmith_add_u32(u_input.a, u_input.a) & arg_2.a) % 32u)));
    global0 = array<vec2<bool>, 17>();
    var var_1 = vec3<i32>(1i, _wgslsmith_mod_i32(abs(var_0.b), global2.x), -var_0.b ^ arg_1.b);
    return select(!select(vec3<bool>(arg_0 || arg_0, arg_0, arg_0), vec3<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, false)), var_1.x < arg_1.b, true), arg_0), !select(vec3<bool>(true, arg_0 & arg_0, arg_0), !select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, true), arg_0), vec3<bool>(true, true, true)), vec3<bool>(!(min(var_1.x, var_0.b) > ~1i), true, all(vec2<bool>(false, !arg_0))));
}

fn func_5(arg_0: vec3<bool>) -> vec4<i32> {
    return _wgslsmith_add_vec4_i32(select(vec4<i32>(1i, -52866i, 5839i, func_3(vec4<i32>(global2.x, 37360i, u_input.c.x, global2.x), Struct_4(-5668i, Struct_2(Struct_1(1u, 0u), global2.x)))) | vec4<i32>(func_2().x, -1i, -1i, u_input.b.x), vec4<i32>(-(~(-29245i)), reverseBits(17330i | u_input.b.x), global2.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 2147483647i, -1i, 59878i), vec4<i32>(-15683i, u_input.b.x, global2.x, -1i))), vec4<bool>(!(!arg_0.x), func_1(true, Struct_2(Struct_1(u_input.a, u_input.a), -2147483647i), func_4(vec3<i32>(-39247i, u_input.b.x, -71900i)), vec4<u32>(u_input.a, 4294967295u, 0u, 25373u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 44314u) % vec4<u32>(32u))).x, any(arg_0.zy), arg_0.x)), reverseBits(vec4<i32>(u_input.c.x, u_input.c.x ^ 0i, _wgslsmith_div_i32(u_input.b.x << (14688u % 32u), firstTrailingBit(-14620i)), 11996i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~u_input.a << (~u_input.a % 32u), 7u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(ceil(557f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f) - _wgslsmith_f_op_f32(-1412f - -226f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-160f, -1852f)) - 1631f), _wgslsmith_f_op_f32(min(-861f, _wgslsmith_f_op_f32(-1031f + 973f))))), true));
    global3 = array<vec4<f32>, 7>();
    global3 = array<vec4<f32>, 7>();
    global2 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(21599i, -1i, u_input.b.x, 8032i), vec4<i32>(2147483647i, u_input.c.x, 1i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, -1i, 1i), vec4<i32>(0i, global2.x, 12553i, -1i)), select(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -1i), vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, u_input.c.x), vec4<bool>(false, false, false, false))), ~(vec4<i32>(-13907i, u_input.c.x, global2.x, global2.x) ^ vec4<i32>(u_input.c.x, u_input.b.x, global2.x, 1i)), func_5(func_1(false, Struct_2(Struct_1(u_input.a, u_input.a), 2147483647i), Struct_1(u_input.a, 34575u), vec4<u32>(87313u, 1u, 1u, u_input.a)))) | _wgslsmith_add_vec4_i32(vec4<i32>(-16306i, reverseBits(global2.x), -27906i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b.x, global2.x, global2.x) << (vec4<u32>(4294967295u, 1u, u_input.a, 0u) % vec4<u32>(32u)), vec4<i32>(20387i, global2.x, u_input.c.x, u_input.c.x) >> (vec4<u32>(4294967295u, 107424u, u_input.a, 0u) % vec4<u32>(32u)))), func_5(vec3<bool>(true, true, true)));
    let var_1 = !any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true));
    let var_2 = true;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(0u, 7u)] - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.x, -919f, -1733f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1377f, var_0.x, 523f, -1803f) - global3[_wgslsmith_index_u32(0u, 7u)]))))), global3[_wgslsmith_index_u32(~u_input.a, 7u)]);
    let x = u_input.a;
    s_output = StorageBuffer(1f, -34820i, ~firstTrailingBit(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 8919u))));
}

