struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = -countOneBits(2659i);
    global0 = Struct_1(reverseBits(vec2<u32>(11919u, _wgslsmith_dot_vec2_u32(global0.a, global0.a))), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-785f)) + _wgslsmith_f_op_f32(-global0.c)))));
    return countOneBits(~u_input.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_i32(-(-900i << (~global1.x % 32u)), -abs(-2147483647i));
    global1 = vec2<u32>(u_input.b, arg_2.a.x);
    global1 = ~(~global0.a) << (firstLeadingBit(global0.a) % vec2<u32>(32u));
    var var_1 = arg_2;
    let var_2 = Struct_1(~_wgslsmith_clamp_vec2_u32(var_1.a, vec2<u32>(~22669u, arg_1), vec2<u32>(~0u, 8032u & arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c), 696f), _wgslsmith_f_op_f32(f32(-1f) * -2986f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c - -552f)) - _wgslsmith_f_op_f32(-1052f + 646f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))));
    return firstTrailingBit(reverseBits(global0.a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = !(!arg_1);
    global1 = func_4(arg_1, ~func_3(), arg_0, Struct_1(arg_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b + global0.b))), 237f)) | _wgslsmith_mod_vec2_u32(abs(global0.a) ^ _wgslsmith_mult_vec2_u32(~global0.a, select(arg_0.a, arg_0.a, false)), ~global0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(ceil(global0.c)), arg_2.x))));
    global1 = ~_wgslsmith_div_vec2_u32(abs(global0.a), ~(~vec2<u32>(global1.x, arg_0.a.x)));
    let var_2 = 1i;
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    global0 = arg_1;
    var var_0 = firstTrailingBit(-1i);
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, arg_2), ~u_input.a), abs(_wgslsmith_mod_u32(u_input.b, 12705u))), ~111u), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-2123f, 106f), _wgslsmith_f_op_f32(min(193f, global0.b)))));
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) - _wgslsmith_f_op_f32(max(-1000f, 589f)))) - arg_1.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + _wgslsmith_f_op_f32(f32(-1f) * -580f))), 1000f)));
    return -(i32(-1i) * -2147483647i);
}

fn func_1() -> Struct_1 {
    let var_0 = global0.a.x;
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(func_5(true, func_2(Struct_1(vec2<u32>(global0.a.x, global1.x), global0.c, 172f), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -556f, 354f) * vec3<f32>(1000f, global0.b, global0.c)), _wgslsmith_f_op_f32(-global0.c)), 4294967295u, vec3<bool>(true, false, true)), _wgslsmith_mod_i32(-func_5(false, Struct_1(global0.a, 139f, 269f), global0.a.x, vec3<bool>(true, false, false)), ~2147483647i), -1i), ~(~vec3<i32>(1i, 1i, 1i) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a.x, 15394u, 4294967295u), vec3<u32>(global1.x, 1u, global0.a.x)) % vec3<u32>(32u))), -max(_wgslsmith_div_vec3_i32(vec3<i32>(-7917i, 38321i, -2147483647i), -vec3<i32>(7791i, 2147483647i, -19851i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-40759i, 28523i, 1i), vec3<i32>(1i, 1i, 1i))));
    global1 = ~(~max(select(_wgslsmith_mod_vec2_u32(global0.a, vec2<u32>(u_input.a, 4294967295u)), global0.a, true), ~(~vec2<u32>(u_input.b, global1.x))));
    var var_2 = func_2(func_2(func_2(Struct_1(max(vec2<u32>(92442u, 73795u), vec2<u32>(56697u, 4294967295u)), 1702f, _wgslsmith_f_op_f32(-global0.c)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 643f, 925f) + vec3<f32>(480f, 1000f, 567f)), vec3<f32>(global0.b, global0.c, global0.b)), global0.c), vec4<bool>(true, true, true, true), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.c, 1294f)), 1835f)), -434f, func_2(Struct_1(vec2<u32>(global0.a.x, global0.a.x), global0.b, global0.c), vec4<bool>(true, true, true, true), vec3<f32>(-1038f, -781f, 747f), _wgslsmith_f_op_f32(-361f + 984f)).c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(step(1000f, global0.c)), _wgslsmith_div_f32(global0.b, 855f)))))), _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c))) * global0.c))));
    var_1 = -(vec3<i32>(-1i) * -max(vec3<i32>(var_1.x, -10090i, var_1.x), vec3<i32>(-1i, var_1.x, var_1.x))) | (((vec3<i32>(2147483647i, -61952i, var_1.x) ^ (vec3<i32>(var_1.x, 1i, var_1.x) >> (vec3<u32>(var_2.a.x, global1.x, 21807u) % vec3<u32>(32u)))) >> (~vec3<u32>(var_2.a.x, global1.x, global1.x) % vec3<u32>(32u))) | firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_1.x, -1i), vec3<i32>(-39734i, var_1.x, var_1.x)), -vec3<i32>(var_1.x, var_1.x, 0i))));
    return func_2(func_2(Struct_1(~firstLeadingBit(global0.a), _wgslsmith_f_op_f32(var_2.c - -560f), -1545f), vec4<bool>(true, true, _wgslsmith_f_op_f32(var_2.b + global0.c) > global0.b, true | any(vec2<bool>(true, true))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1266f * global0.b) + _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(min(var_2.c, var_2.c))), global0.c), !vec4<bool>(!all(vec4<bool>(false, false, true, false)), _wgslsmith_f_op_f32(round(193f)) > _wgslsmith_f_op_f32(-global0.b), 0u <= global0.a.x, true), vec3<f32>(global0.c, func_2(func_2(Struct_1(global0.a, var_2.c, var_2.b), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-383f, -497f, global0.c))), _wgslsmith_f_op_f32(f32(-1f) * -715f)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, 1340f, -1359f))), 155f).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b))))), -918f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(global0.c, global0.c), -459f, -1167f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -895f, global0.c), vec3<f32>(-1000f, global0.b, global0.c), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-748f, global0.b, 1027f) + vec3<f32>(global0.c, global0.c, 1047f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 1843f)))))));
    global1 = ~_wgslsmith_mod_vec2_u32(~max(global0.a << (global0.a % vec2<u32>(32u)), vec2<u32>(global0.a.x, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(76872u, global0.a.x), _wgslsmith_sub_vec2_u32(select(global0.a, vec2<u32>(20622u, 67217u), vec2<bool>(false, true)), global0.a), ~vec2<u32>(global0.a.x, 4294967295u)));
    global0 = Struct_1(countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.a.x, global0.a.x), vec2<u32>(firstLeadingBit(u_input.b), u_input.a & 1844u))), var_0.x, _wgslsmith_f_op_f32(floor(1147f)));
    var var_1 = func_1();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(global0.b, 1000f)), _wgslsmith_f_op_f32(step(-390f, global0.c))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -455f, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 1442f, -596f) + vec3<f32>(-1000f, -1000f, -1511f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -282f, -1700f))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), 370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * -234f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 625f, global0.b) - vec3<f32>(global0.c, 1612f, global0.b))))))));
    var var_2 = _wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1263i, -22957i) >> (vec2<u32>(4294967295u, var_1.a.x) % vec2<u32>(32u)), reverseBits(vec2<i32>(0i, 0i))), ~vec2<i32>(3443i, 22162i), vec2<i32>(_wgslsmith_mult_i32(-13083i, -10711i), 1i))), -abs(abs(vec2<i32>(1i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_u32(abs(global0.a.x >> (global0.a.x % 32u)), 1u), _wgslsmith_mod_u32(~0u, ~global1.x)), _wgslsmith_f_op_f32(sign(1885f)));
}

