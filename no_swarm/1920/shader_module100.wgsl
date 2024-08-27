struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<Struct_2, 14>;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<f32>(-799f, -1023f, 2240f), vec4<f32>(-193f, 1480f, 760f, -596f), 1i), Struct_1(vec3<f32>(364f, -2026f, 335f), vec4<f32>(192f, 452f, 1170f, 961f), -6914i), Struct_1(vec3<f32>(-425f, 946f, 1143f), vec4<f32>(1392f, -382f, -396f, -480f), 1i), Struct_1(vec3<f32>(935f, 864f, 1000f), vec4<f32>(1000f, 1045f, 1279f, 339f), 42484i), Struct_1(vec3<f32>(1137f, -261f, 995f), vec4<f32>(1141f, 133f, 234f, -1762f), 25793i), Struct_1(vec3<f32>(678f, 1559f, -1000f), vec4<f32>(1202f, -234f, -776f, -1755f), 5708i), Struct_1(vec3<f32>(595f, 618f, 1205f), vec4<f32>(1000f, -824f, -453f, 523f), 0i), Struct_1(vec3<f32>(422f, -1000f, -2061f), vec4<f32>(-1284f, 1124f, -1000f, 693f), -1i), Struct_1(vec3<f32>(106f, -1178f, -402f), vec4<f32>(-1925f, 1156f, 973f, 880f), -20215i), Struct_1(vec3<f32>(-3124f, 993f, -801f), vec4<f32>(-428f, 1065f, -258f, -100f), -44070i), Struct_1(vec3<f32>(-373f, 136f, 531f), vec4<f32>(-161f, -638f, -970f, -391f), 2147483647i), Struct_1(vec3<f32>(438f, 180f, 383f), vec4<f32>(1599f, 1971f, 926f, 429f), i32(-2147483648)), Struct_1(vec3<f32>(302f, 1287f, -200f), vec4<f32>(-2199f, 1001f, -962f, -2352f), i32(-2147483648)), Struct_1(vec3<f32>(-367f, 782f, -272f), vec4<f32>(-2125f, 611f, 1000f, -1000f), -6395i), Struct_1(vec3<f32>(1190f, -870f, 782f), vec4<f32>(108f, 449f, 282f, -1000f), 10025i), Struct_1(vec3<f32>(1053f, -1601f, -1000f), vec4<f32>(-748f, -549f, 565f, -1000f), 2147483647i), Struct_1(vec3<f32>(211f, 219f, -2093f), vec4<f32>(1166f, -314f, 655f, 1000f), i32(-2147483648)), Struct_1(vec3<f32>(929f, 867f, 1000f), vec4<f32>(-1000f, 935f, -907f, -372f), 2147483647i), Struct_1(vec3<f32>(628f, -1778f, 569f), vec4<f32>(-307f, 472f, 1856f, 1389f), -30083i), Struct_1(vec3<f32>(-404f, 311f, 736f), vec4<f32>(-400f, 431f, -461f, -788f), -1i), Struct_1(vec3<f32>(-1314f, 960f, 2208f), vec4<f32>(-1372f, 610f, -917f, 1030f), -45875i), Struct_1(vec3<f32>(-844f, 1349f, 1000f), vec4<f32>(733f, -996f, 1098f, 419f), -166i), Struct_1(vec3<f32>(-385f, 808f, 668f), vec4<f32>(1213f, -1000f, 322f, 1116f), 1i), Struct_1(vec3<f32>(1358f, -170f, 357f), vec4<f32>(-728f, -1039f, -704f, 1438f), 43676i), Struct_1(vec3<f32>(933f, 1812f, -678f), vec4<f32>(122f, -2115f, 1000f, 556f), -4586i), Struct_1(vec3<f32>(710f, -180f, 358f), vec4<f32>(-1082f, 1041f, 1000f, 1520f), 0i), Struct_1(vec3<f32>(-732f, 1563f, 345f), vec4<f32>(2504f, 419f, 715f, -333f), 0i), Struct_1(vec3<f32>(880f, -308f, 909f), vec4<f32>(560f, -1935f, 935f, -554f), 0i), Struct_1(vec3<f32>(737f, -113f, 687f), vec4<f32>(-1411f, 617f, 594f, -480f), -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32) -> f32 {
    global1 = ~4294967295u;
    var var_0 = global3[_wgslsmith_index_u32(select(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(abs(abs(u_input.a.x)), 4294967295u), u_input.a.x), true), 29u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-702f - global0.b.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, var_0.b.x, 660f) - vec3<f32>(var_0.b.x, 106f, -873f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, 259f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(var_0.b.x - 1000f), _wgslsmith_f_op_f32(1011f + global0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(global0.b.x - -796f), var_0.a.x, -856f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1206f, -167f)) * _wgslsmith_f_op_f32(global0.b.x * -903f)) + 1162f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))))), global0.a.x), -83221i);
    var var_2 = vec4<u32>(countOneBits(arg_0), u_input.a.x, u_input.a.x, 1u);
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 29u)];
    return var_1.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    let var_0 = arg_2;
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(329f)), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - 444f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.b.x, arg_0.a.x)), _wgslsmith_f_op_f32(-arg_1.a.a.x)))), vec4<f32>(1000f, _wgslsmith_f_op_f32(step(-1491f, -1410f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 35598u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 37340u, 0u)), ~(global0.c & arg_2.a.c), arg_1.a.c)), _wgslsmith_f_op_f32(arg_2.a.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.b.x + 760f))))));
    var var_3 = _wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i) * -vec2<i32>(arg_1.a.c, arg_1.a.c)), abs(firstLeadingBit(~vec2<i32>(arg_2.a.c, arg_2.a.c))));
    var var_4 = all(!vec2<bool>(false, arg_3.x)) && (true != all(select(vec2<bool>(true, arg_3.x), !vec2<bool>(arg_3.x, arg_3.x), arg_3.x)));
    return countOneBits(_wgslsmith_sub_u32(0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1, 4294967295u, var_1), select(u_input.a, u_input.a, arg_3.x)), _wgslsmith_div_u32(~max(var_1, var_1), _wgslsmith_mult_u32(~4294967295u, u_input.a.x << (141996u % 32u)))));
}

fn func_1(arg_0: f32) -> u32 {
    global1 = ~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, func_2(global3[_wgslsmith_index_u32(69385u, 29u)], Struct_2(Struct_1(global0.b.wxw, global0.b, global0.c), global0.b.wyw), global2[_wgslsmith_index_u32(28145u, 14u)], vec3<bool>(false, true, false))), ~firstLeadingBit(u_input.a.x), 0u));
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(~0u, ~0u, firstTrailingBit(1u), ~u_input.a.x), u_input.a, false), reverseBits(~vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x))), u_input.a.x);
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.x, 4294967295u, var_0.x), 29u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a + global0.b.zww) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, global0.b.x, global0.b.x), vec3<f32>(1579f, arg_0, -1063f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.a - global0.b.zxx), vec3<f32>(global0.a.x, arg_0, -1000f), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b.wzz * vec3<f32>(arg_0, 1066f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(global0.b.zwx - global0.b.zyy)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1443f, global0.b.x, -241f), global0.b.wyx, vec3<bool>(true, false, false)))))));
    var var_2 = select(vec3<i32>(-24510i, global0.c, global0.c), -vec3<i32>(-1i, -30546i, abs(var_1.a.c) | var_1.a.c), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))));
    global1 = 1u;
    return 8758u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u << (_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), u_input.a.x) % 32u), ~(~1u)), vec4<u32>(~(~_wgslsmith_sub_u32(14258u, u_input.a.x)), func_1(_wgslsmith_f_op_f32(global0.a.x - 1000f)) & max(~38401u, u_input.a.x), u_input.a.x, firstTrailingBit(~(~u_input.a.x))), _wgslsmith_add_vec2_i32(vec2<i32>(abs(global0.c), firstLeadingBit(-1i)), -(~vec2<i32>(36700i, -1i))) >> (vec2<u32>(u_input.a.x, 0u >> (u_input.a.x % 32u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b.xww, vec3<f32>(2284f, -954f, global0.b.x))) + vec3<f32>(_wgslsmith_f_op_f32(-1255f * -713f), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(select(global0.b.x, global0.a.x, true))), _wgslsmith_f_op_f32(abs(global0.a.x)))));
}

