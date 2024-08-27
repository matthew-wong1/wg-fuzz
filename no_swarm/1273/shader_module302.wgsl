struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(2147483647i, vec2<bool>(false, true), i32(-2147483648)), 59986u);

var<private> global1: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_2(global0.a, arg_0);
    var var_1 = reverseBits(u_input.a);
    var var_2 = global0.a.b;
    let var_3 = var_0;
    var_1 = 2147483647i;
    return _wgslsmith_add_i32(_wgslsmith_clamp_i32(max(-var_0.a.a & var_0.a.c, _wgslsmith_mult_i32(-48689i, arg_3.x) & reverseBits(0i)), -19924i, -55959i), countOneBits(global0.a.a));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(-_wgslsmith_mult_i32(arg_0.c, ~(-2531i)), arg_0.b, min(u_input.a, ~(-1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.b, 4294967295u), vec3<u32>(global0.b, 5u, 1u)) % 32u))), 4294967295u);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1714f * _wgslsmith_f_op_f32(f32(-1f) * -316f)))), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, var_0.b), (~0u >> (u_input.b % 32u)) | ~(global0.b | 27279u)), vec3<i32>(-select(0i, func_3(var_0.b, arg_0.b.x, vec3<u32>(global0.b, 29893u, u_input.b), vec4<i32>(4397i, u_input.a, 14623i, u_input.a)), var_0.a.b.x), -20039i, 1i), Struct_2(var_0.a, 4294967295u), select(!(!select(vec4<bool>(var_0.a.b.x, arg_0.b.x, arg_0.b.x, true), vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(true, global0.a.b.x, global0.a.b.x, global0.a.b.x))), !vec4<bool>(false, false, any(vec4<bool>(arg_0.b.x, true, var_0.a.b.x, arg_0.b.x)), any(vec4<bool>(arg_0.b.x, global0.a.b.x, true, false))), arg_0.b.x));
    let var_2 = !any(var_0.a.b);
    var var_3 = _wgslsmith_div_vec4_i32((vec4<i32>(1i, -2937i, max(2147483647i, var_0.a.c), global0.a.a) >> (~firstLeadingBit(vec4<u32>(global0.b, var_0.b, 76769u, 4294967295u)) % vec4<u32>(32u))) ^ select(vec4<i32>(-22216i, 46828i, arg_0.c, 25062i) << (select(vec4<u32>(128143u, var_0.b, 4294967295u, var_0.b), vec4<u32>(51609u, u_input.b, global0.b, 59843u), vec4<bool>(var_2, true, false, false)) % vec4<u32>(32u)), vec4<i32>(35832i >> (var_0.b % 32u), _wgslsmith_div_i32(33953i, -18052i), max(-2147483647i, global0.a.a), u_input.a), true), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(-1060i, -26678i, -16376i, 91048i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_0.c, global0.a.c, -2147483647i), vec4<i32>(u_input.a, 2147483647i, global0.a.a, -26442i))) >> ((~vec4<u32>(var_1.b, var_1.b, u_input.b, var_0.b) ^ ~vec4<u32>(4294967295u, 50859u, 55020u, 10296u)) % vec4<u32>(32u))));
    var var_4 = Struct_2(var_0.a, 0u);
    return 4294967295u;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~vec3<u32>(~_wgslsmith_sub_u32(~arg_0.b, 12171u), _wgslsmith_div_u32(4294967295u << (func_2(Struct_1(1i, global0.a.b, -273i), global0.a.a) % 32u), firstTrailingBit(global0.b)), 4294967295u);
    var var_1 = !(!select(select(select(vec2<bool>(true, global0.a.b.x), global0.a.b, vec2<bool>(true, arg_0.a.b.x)), vec2<bool>(true, false), any(vec4<bool>(arg_0.a.b.x, false, true, false))), select(select(vec2<bool>(true, global0.a.b.x), global0.a.b, vec2<bool>(global0.a.b.x, true)), select(vec2<bool>(global0.a.b.x, true), arg_0.a.b, false), true), global0.a.b));
    var var_2 = select(-select(_wgslsmith_mult_vec2_i32(vec2<i32>(9975i, -1i) & vec2<i32>(arg_0.a.c, 0i), abs(vec2<i32>(arg_0.a.a, u_input.a))), ~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.c, -6422i), vec2<i32>(-37484i, u_input.a)), _wgslsmith_add_i32(arg_0.a.c, 0i) > 0i), select(vec2<i32>(19793i, 23915i), ~(-select(vec2<i32>(0i, 1i), vec2<i32>(13142i, u_input.a), global0.a.b.x)), global0.a.b.x), true);
    var_2 = (((min(vec2<i32>(-23061i, 2147483647i), vec2<i32>(14372i, 45489i)) >> (vec2<u32>(4294967295u, global0.b) % vec2<u32>(32u))) | vec2<i32>(global0.a.a, -global0.a.a)) << ((_wgslsmith_mult_vec2_u32(var_0.xy, var_0.yx) >> (vec2<u32>(1u, ~global0.b) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(select(~(var_0.zx & var_0.xy), ~var_0.yx << (~vec2<u32>(11747u, 7430u) % vec2<u32>(32u)), !var_1.x), ~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(1u, arg_0.b)))) % vec2<u32>(32u));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204f, _wgslsmith_f_op_f32(round(1018f))))), 1u, select(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global0.a.c, var_2.x), vec3<i32>(u_input.a, 0i, -31221i), vec3<i32>(arg_0.a.c, -21575i, global0.a.c)), firstTrailingBit(vec3<i32>(global0.a.c, arg_0.a.a, arg_0.a.c)), !arg_0.a.b.x) ^ vec3<i32>(u_input.a | _wgslsmith_add_i32(global0.a.a, -2147483647i), u_input.a, _wgslsmith_add_i32(var_2.x, arg_0.a.c)), Struct_2(Struct_1(~firstTrailingBit(global0.a.c), select(vec2<bool>(true, arg_0.a.b.x), select(arg_0.a.b, vec2<bool>(arg_0.a.b.x, global0.a.b.x), global0.a.b.x), true), _wgslsmith_sub_i32(5876i, var_2.x & 27433i)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, _wgslsmith_mod_u32(var_0.x, var_0.x), reverseBits(4294967295u)), _wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, 4294967295u, 30863u, global0.b), vec4<u32>(var_0.x, 33310u, 1u, arg_0.b)), firstLeadingBit(vec4<u32>(108096u, u_input.b, 52876u, 4294967295u))))), !vec4<bool>(any(vec3<bool>(false, false, true)) || select(global0.a.b.x, var_1.x, global0.a.b.x), arg_0.a.b.x, (global0.a.b.x || true) & true, true));
    return var_3.d;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global1 = false;
    let var_0 = arg_2.a;
    global0 = func_1(func_1(Struct_2(global0.a, u_input.b)));
    global1 = !all(func_1(Struct_2(func_1(arg_2).a, firstTrailingBit(49381u))).a.b);
    global0 = arg_2;
    return _wgslsmith_add_u32(~(~4294967295u), ~firstTrailingBit(~arg_1.b << (1u % 32u)));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -599f))), -481f);
    global0 = arg_3;
    var var_2 = -481f;
    let var_3 = 37123i;
    return !all(select(select(!vec4<bool>(global0.a.b.x, arg_3.a.b.x, true, global0.a.b.x), select(vec4<bool>(arg_3.a.b.x, false, global0.a.b.x, arg_3.a.b.x), vec4<bool>(global0.a.b.x, false, false, global0.a.b.x), false), true), !select(vec4<bool>(true, global0.a.b.x, false, arg_3.a.b.x), vec4<bool>(true, arg_3.a.b.x, true, true), vec4<bool>(arg_3.a.b.x, true, true, global0.a.b.x)), !all(vec3<bool>(true, global0.a.b.x, global0.a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(10255u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(28804u, u_input.b), func_4(_wgslsmith_f_op_f32(1323f - 752f), func_1(Struct_2(Struct_1(global0.a.a, global0.a.b, global0.a.c), u_input.b)), Struct_2(Struct_1(global0.a.a, vec2<bool>(false, global0.a.b.x), 43455i), u_input.b))), vec2<u32>(global0.b << (~66224u % 32u), ~firstLeadingBit(global0.b))), firstLeadingBit(reverseBits(vec3<u32>(~global0.b, 1u, _wgslsmith_mod_u32(u_input.b, 502u)))), func_1(Struct_2(Struct_1(0i, global0.a.b, 0i), 1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(940f, 949f, 914f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-127f, 608f, -872f), vec3<f32>(276f, 2154f, -465f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(-1192f + -670f), -118f), _wgslsmith_div_f32(-2276f, -282f) > _wgslsmith_f_op_f32(round(-446f))))))));
    var var_2 = ~(~min(vec4<u32>(41865u, 16779u, firstTrailingBit(0u), 42094u), abs(firstLeadingBit(vec4<u32>(global0.b, 0u, u_input.b, 31069u)))));
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(~(~49926u ^ func_4(var_1.x, Struct_2(Struct_1(global0.a.c, global0.a.b, -537i), global0.b), Struct_2(global0.a, u_input.b))), countOneBits(11482u)), ~1u);
    let var_4 = vec4<bool>(func_5(29194u, ~abs(max(1u, 16442u)), max(var_2.wxy, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(var_2.yxw, vec3<u32>(u_input.b, u_input.b, 19070u)), ~vec3<u32>(var_3.x, var_2.x, var_2.x), var_2.zzy)), Struct_2(func_1(Struct_2(global0.a, 4294967295u)).a, ~(var_2.x | global0.b))), any(select(vec3<bool>(true, true, select(true, true, false)), !(!vec3<bool>(var_0, true, global0.a.b.x)), !(global0.a.b.x | true))), all(select(!(!vec3<bool>(global0.a.b.x, global0.a.b.x, var_0)), select(vec3<bool>(global0.a.b.x, global0.a.b.x, var_0), vec3<bool>(global0.a.b.x, global0.a.b.x, var_0), vec3<bool>(false, false, false)), any(vec2<bool>(true, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a), ~(global0.b | _wgslsmith_sub_u32(var_3.x, u_input.b & var_3.x)), _wgslsmith_div_u32(1u, ~max(u_input.b, global0.b) | ~global0.b), -2147483647i, _wgslsmith_div_vec4_u32(select(countOneBits(countOneBits(vec4<u32>(global0.b, var_3.x, var_2.x, u_input.b))), _wgslsmith_add_vec4_u32(~vec4<u32>(13329u, var_3.x, 12071u, 1u), firstTrailingBit(vec4<u32>(var_3.x, 1u, u_input.b, global0.b))), var_4), vec4<u32>(1u, var_3.x, _wgslsmith_mod_u32(~var_2.x, ~var_3.x), _wgslsmith_mod_u32(4294967295u & u_input.b, func_1(Struct_2(global0.a, var_2.x)).b))));
}

