struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<i32>(-1i, -11316i, -50564i, 86515i), vec4<f32>(1187f, 2440f, 154f, 567f), true, vec3<bool>(false, false, true)), Struct_2(vec4<i32>(2147483647i, -32447i, 1i, i32(-2147483648)), vec4<f32>(1000f, 2057f, -779f, -1269f), true, vec3<bool>(false, true, true)), Struct_2(vec4<i32>(35521i, -39284i, -16732i, i32(-2147483648)), vec4<f32>(-1693f, -318f, 157f, 1000f), false, vec3<bool>(true, true, true)), Struct_2(vec4<i32>(-1i, 11707i, i32(-2147483648), -1i), vec4<f32>(374f, -1957f, -606f, -640f), false, vec3<bool>(false, true, false)), Struct_2(vec4<i32>(-55740i, -21369i, -1i, -12238i), vec4<f32>(1209f, -1001f, 1680f, 1847f), true, vec3<bool>(false, true, true)), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 2147483647i), vec4<f32>(-1359f, -714f, -1150f, -1055f), true, vec3<bool>(false, true, true)), Struct_2(vec4<i32>(-14684i, -1i, 3926i, 32391i), vec4<f32>(-1050f, -1000f, -551f, -773f), true, vec3<bool>(true, true, false)), Struct_2(vec4<i32>(0i, -28776i, 0i, 0i), vec4<f32>(1752f, -226f, -956f, -145f), true, vec3<bool>(true, true, false)), Struct_2(vec4<i32>(0i, -1i, 1i, 2147483647i), vec4<f32>(199f, 1195f, 1000f, 1139f), false, vec3<bool>(true, false, true)), Struct_2(vec4<i32>(-34158i, i32(-2147483648), 2147483647i, -47764i), vec4<f32>(-788f, 857f, 469f, -844f), true, vec3<bool>(true, false, true)), Struct_2(vec4<i32>(-749i, -1i, -1i, 2147483647i), vec4<f32>(-192f, -681f, -493f, 1000f), true, vec3<bool>(false, true, false)), Struct_2(vec4<i32>(8058i, 804i, -1i, -870i), vec4<f32>(1000f, -1537f, -1031f, 420f), true, vec3<bool>(true, true, false)), Struct_2(vec4<i32>(16986i, i32(-2147483648), -1i, -8867i), vec4<f32>(1432f, 1373f, -254f, -1040f), true, vec3<bool>(false, true, false)), Struct_2(vec4<i32>(1i, 2147483647i, -8896i, -25232i), vec4<f32>(-508f, 306f, 692f, -839f), true, vec3<bool>(true, true, false)), Struct_2(vec4<i32>(-182i, -7569i, 14509i, 2147483647i), vec4<f32>(-411f, -429f, -1593f, 1952f), false, vec3<bool>(true, true, true)), Struct_2(vec4<i32>(2147483647i, 4473i, -1i, 0i), vec4<f32>(-743f, -647f, -666f, -316f), true, vec3<bool>(true, false, true)), Struct_2(vec4<i32>(i32(-2147483648), -13992i, -18385i, 16786i), vec4<f32>(-438f, -254f, 130f, 339f), true, vec3<bool>(false, true, false)), Struct_2(vec4<i32>(2147483647i, 21789i, -24655i, -61586i), vec4<f32>(352f, 1000f, -1560f, -1000f), false, vec3<bool>(false, false, true)), Struct_2(vec4<i32>(-91178i, i32(-2147483648), 72463i, -1i), vec4<f32>(720f, -985f, 483f, -1000f), true, vec3<bool>(true, false, false)), Struct_2(vec4<i32>(-1i, 2147483647i, 10212i, 2147483647i), vec4<f32>(623f, -858f, -649f, 1182f), false, vec3<bool>(false, true, false)), Struct_2(vec4<i32>(2147483647i, -10699i, -14917i, 27769i), vec4<f32>(-956f, -880f, 357f, -426f), true, vec3<bool>(false, true, true)), Struct_2(vec4<i32>(2147483647i, 6122i, 13835i, -3408i), vec4<f32>(-1199f, 1593f, 873f, 824f), false, vec3<bool>(true, true, false)), Struct_2(vec4<i32>(1i, -30241i, 6252i, 0i), vec4<f32>(-681f, 253f, -519f, -416f), true, vec3<bool>(false, true, true)), Struct_2(vec4<i32>(17257i, 18557i, -1i, 0i), vec4<f32>(-939f, 781f, 467f, 494f), true, vec3<bool>(true, false, true)), Struct_2(vec4<i32>(-40113i, 4608i, 2147483647i, 0i), vec4<f32>(-313f, 640f, 1000f, -1223f), false, vec3<bool>(true, true, false)), Struct_2(vec4<i32>(7167i, -97006i, 3515i, -15265i), vec4<f32>(-993f, -216f, 419f, -1280f), false, vec3<bool>(false, true, true)));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(4294967295u, 60099u), vec2<bool>(true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    var var_0 = min(abs(abs(17461i) ^ (u_input.a.x ^ -23114i)) >> (abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~4294967295u)) % 32u), i32(-1i) * -2425i);
    let var_1 = !arg_1.d.xy;
    var_0 = abs(arg_0.x);
    let var_2 = Struct_1(firstTrailingBit(u_input.b.wy), arg_1.d.yz);
    global1 = var_2;
    return true;
}

fn func_2() -> i32 {
    var var_0 = vec2<i32>(2147483647i, ~_wgslsmith_dot_vec2_i32(u_input.a.zy, -vec2<i32>(u_input.c, -1i)) >> (~u_input.b.x % 32u));
    global0 = array<Struct_2, 26>();
    global1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global1.a.x, global1.a.x), global1.a.x >> (33735u % 32u)) | ~(u_input.b.zx << (vec2<u32>(global1.a.x, 4294967295u) % vec2<u32>(32u))), vec2<u32>(global1.a.x, ~reverseBits(0u))), select(global1.b, !vec2<bool>(!global1.b.x, select(global1.b.x, global1.b.x, global1.b.x)), vec2<bool>(any(global1.b), !func_3(u_input.a, global0[_wgslsmith_index_u32(23051u, 26u)]))));
    let var_1 = Struct_2(select(vec4<i32>(0i, -(~34797i), u_input.a.x, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -1i, u_input.a.x, u_input.c) ^ -vec4<i32>(-14934i, 1i, var_0.x, 13051i), vec4<i32>(-1i) * -vec4<i32>(var_0.x, u_input.a.x, u_input.c, u_input.a.x)), global1.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1736f, -787f, -711f, 981f) * vec4<f32>(779f, -603f, -599f, 460f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(606f, -710f, 516f, 2073f) + vec4<f32>(1061f, 617f, -510f, -210f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(198f, -226f, -607f, -103f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(100f, -242f, -541f, 381f)))))), true, vec3<bool>(true, true, !select(global1.a.x < 82977u, all(vec3<bool>(global1.b.x, global1.b.x, global1.b.x)), true)));
    var var_2 = ~u_input.b;
    return _wgslsmith_dot_vec2_i32(abs(-firstTrailingBit(firstLeadingBit(vec2<i32>(2147483647i, 2147483647i)))), ~vec2<i32>(~(-43972i), u_input.a.x));
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 26>();
    return _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, firstLeadingBit(~(-2147483647i)) | u_input.a.x), (-func_2() ^ -1i) | -u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global1 = Struct_1(_wgslsmith_div_vec2_u32(~(global1.a >> (global1.a % vec2<u32>(32u))), u_input.b.zz), global1.b);
    var var_0 = Struct_2(vec4<i32>(i32(-1i) * -14155i, 0i, _wgslsmith_sub_i32(-1i, 25928i), func_1() & (i32(-1i) * -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1379f, 656f, -911f, 1147f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(370f, -256f, 925f, -343f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-720f, 325f, -1757f, 1351f)))))), !global1.b.x, vec3<bool>(global1.b.x, global1.b.x, global1.b.x));
    global0 = array<Struct_2, 26>();
    let var_1 = Struct_2(vec4<i32>(0i, var_0.a.x, u_input.a.x, 1i | var_0.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(907f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * 1578f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-756f)), -1888f), -1376f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-190f))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(-var_0.b.x))))), global1.b.x, vec3<bool>(true, true, global1.a.x < global1.a.x));
    var_0 = global0[_wgslsmith_index_u32(37158u, 26u)];
    let var_2 = ~0i;
    let var_3 = Struct_1(global1.a, !vec2<bool>(var_1.c && any(vec4<bool>(false, var_0.c, var_0.c, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c, -firstTrailingBit(var_0.a.x) ^ -2147483647i, u_input.c, _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(countOneBits(13508i), 1i))));
}

