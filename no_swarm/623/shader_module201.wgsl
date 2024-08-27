struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec3<bool>(true, true, true), 28051u, vec3<u32>(19751u, 41409u, 4294967295u), Struct_2(Struct_1(2147483647i, vec2<f32>(1958f, 276f), vec2<f32>(860f, -870f)), false, 51007u, 856f), Struct_2(Struct_1(35565i, vec2<f32>(-336f, 753f), vec2<f32>(-582f, 248f)), false, 1u, -421f)), Struct_3(vec3<bool>(true, false, false), 36040u, vec3<u32>(16883u, 0u, 1u), Struct_2(Struct_1(63055i, vec2<f32>(538f, -395f), vec2<f32>(-1255f, 558f)), false, 8559u, 796f), Struct_2(Struct_1(-47916i, vec2<f32>(-1032f, 1282f), vec2<f32>(289f, 287f)), false, 4294967295u, 1252f)), Struct_3(vec3<bool>(true, true, false), 4294967295u, vec3<u32>(4294967295u, 4294967295u, 1u), Struct_2(Struct_1(-58092i, vec2<f32>(431f, -361f), vec2<f32>(408f, -942f)), true, 4294967295u, -389f), Struct_2(Struct_1(-1i, vec2<f32>(1616f, -216f), vec2<f32>(-285f, 890f)), false, 71135u, 1487f)), Struct_3(vec3<bool>(true, false, false), 4294967295u, vec3<u32>(9u, 6670u, 2659u), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(136f, 639f), vec2<f32>(-637f, -335f)), false, 1u, -1095f), Struct_2(Struct_1(-8258i, vec2<f32>(-503f, 1969f), vec2<f32>(1121f, -1167f)), true, 37014u, -1074f)), Struct_3(vec3<bool>(false, true, false), 1u, vec3<u32>(0u, 25018u, 1u), Struct_2(Struct_1(-73480i, vec2<f32>(2189f, -1675f), vec2<f32>(-581f, 1187f)), true, 95666u, 604f), Struct_2(Struct_1(-52972i, vec2<f32>(-939f, 274f), vec2<f32>(-500f, -528f)), false, 1631u, -1836f)), Struct_3(vec3<bool>(false, false, false), 1u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_2(Struct_1(8562i, vec2<f32>(-2598f, 714f), vec2<f32>(-3084f, 806f)), false, 27613u, 637f), Struct_2(Struct_1(0i, vec2<f32>(-1371f, -686f), vec2<f32>(-1326f, -1196f)), true, 60525u, 817f)), Struct_3(vec3<bool>(true, false, false), 28355u, vec3<u32>(1u, 23562u, 1u), Struct_2(Struct_1(-26642i, vec2<f32>(1000f, -1194f), vec2<f32>(-1000f, -1240f)), false, 0u, -1000f), Struct_2(Struct_1(0i, vec2<f32>(804f, -1687f), vec2<f32>(-787f, 1382f)), false, 0u, 222f)), Struct_3(vec3<bool>(true, true, false), 1757u, vec3<u32>(58931u, 19719u, 0u), Struct_2(Struct_1(0i, vec2<f32>(-1970f, 664f), vec2<f32>(947f, -1000f)), true, 69550u, -155f), Struct_2(Struct_1(0i, vec2<f32>(1405f, 1767f), vec2<f32>(250f, 1062f)), true, 1u, -1329f)), Struct_3(vec3<bool>(false, false, false), 11971u, vec3<u32>(4294967295u, 0u, 0u), Struct_2(Struct_1(29323i, vec2<f32>(868f, 1156f), vec2<f32>(804f, 888f)), false, 0u, 2152f), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(-1000f, -899f), vec2<f32>(-2507f, -211f)), true, 31617u, 1689f)), Struct_3(vec3<bool>(true, false, true), 45839u, vec3<u32>(0u, 1u, 12635u), Struct_2(Struct_1(32150i, vec2<f32>(237f, 1602f), vec2<f32>(392f, 841f)), false, 5757u, -1749f), Struct_2(Struct_1(14620i, vec2<f32>(484f, 1111f), vec2<f32>(-810f, 297f)), true, 4871u, 1000f)));

var<private> global1: array<Struct_1, 6>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 16122u, 13618u, 4294967295u);

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(-1i, vec2<f32>(-104f, -659f), vec2<f32>(-342f, 849f)), false, 49576u, 1742f), Struct_2(Struct_1(2147483647i, vec2<f32>(-1323f, -302f), vec2<f32>(-513f, 1205f)), true, 24666u, -439f), Struct_2(Struct_1(-39331i, vec2<f32>(1221f, 309f), vec2<f32>(853f, -1459f)), false, 29717u, 555f), Struct_2(Struct_1(0i, vec2<f32>(-1458f, 1147f), vec2<f32>(1205f, 672f)), false, 4294967295u, -564f), Struct_2(Struct_1(2172i, vec2<f32>(964f, -1192f), vec2<f32>(1392f, -427f)), false, 1u, -424f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    global2 = _wgslsmith_clamp_vec4_u32(~min(~vec4<u32>(19463u, 38919u, 79912u, 1u) | vec4<u32>(1u, 55094u, 16320u, global2.x), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, global2.x, 1u), vec4<u32>(global2.x, 0u, global2.x, 1u) << (vec4<u32>(global2.x, global2.x, global2.x, global2.x) % vec4<u32>(32u)))), min(_wgslsmith_mod_vec4_u32(vec4<u32>(~global2.x, global2.x, _wgslsmith_clamp_u32(global2.x, 6326u, global2.x), ~1u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 21586u, 65512u, 1u) ^ vec4<u32>(90104u, 13372u, global2.x, 0u), vec4<u32>(global2.x, global2.x, global2.x, 78420u))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, global2.x, 0u, 1u) & vec4<u32>(global2.x, 90037u, global2.x, global2.x), ~vec4<u32>(global2.x, 4294967295u, global2.x, 6071u)))), abs(~vec4<u32>(global2.x, _wgslsmith_mod_u32(82629u, 19370u), global2.x & global2.x, 84931u)));
    let var_0 = global2.x | global2.x;
    global1 = array<Struct_1, 6>();
    var var_1 = vec4<bool>(true, any(vec4<bool>(true, true, true, true)), select(true, true, 893f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1493f + 1000f)))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_2 = u_input.a.zy;
    return Struct_2(global1[_wgslsmith_index_u32(1u, 6u)], var_1.x && ((39723u | global2.x) != _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0, var_0, 41492u, 4294967295u)), ~vec4<u32>(0u, 51702u, 57458u, global2.x))), 1u, 1574f);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<i32>) -> i32 {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(countOneBits(1u), ~firstLeadingBit(19936u), global2.x) | global2.x, 0u, 1u, min(~4294967295u, 22313u));
    var var_1 = -696f;
    var var_2 = func_2();
    let var_3 = reverseBits(1u) <= _wgslsmith_dot_vec3_u32(max(reverseBits(var_0.wyx) | countOneBits(vec3<u32>(32860u, 53910u, 24882u)), vec3<u32>(40291u, var_2.c, arg_1.e.c & arg_0.x)), vec3<u32>(arg_0.x, var_2.c, 1u & var_0.x));
    let var_4 = Struct_3(!(!(!select(vec3<bool>(true, var_2.b, var_3), vec3<bool>(false, var_3, arg_1.e.b), arg_1.a))), 32133u, vec3<u32>(_wgslsmith_sub_u32(~arg_0.x, abs(~arg_0.x)), _wgslsmith_div_u32(48750u, ~arg_0.x) | arg_0.x, global2.x), Struct_2(Struct_1(u_input.a.x, arg_1.d.a.b, arg_1.d.a.c), (1u < (var_0.x | var_0.x)) || false, 0u, _wgslsmith_f_op_f32(arg_1.e.a.b.x - 881f)), func_2());
    return arg_2.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> StorageBuffer {
    global1 = array<Struct_1, 6>();
    global0 = array<Struct_3, 10>();
    var var_0 = Struct_1(_wgslsmith_div_i32(-_wgslsmith_mult_i32(-arg_0.x, -arg_0.x), arg_2.e.a.a), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.d.d)), _wgslsmith_f_op_f32(round(-907f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.d.a.c))));
    var var_1 = max(~var_0.a, func_3(max(global2.wxy, vec3<u32>(arg_2.d.c, arg_2.c.x, arg_2.c.x)) ^ global2.zwz, Struct_3(arg_2.a, _wgslsmith_div_u32(arg_2.e.c, global2.x), ~vec3<u32>(arg_2.c.x, 1u, global2.x), func_2(), global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 5u)]), vec3<i32>(arg_2.d.a.a, -13592i, _wgslsmith_mult_i32(arg_2.d.a.a, 0i)))) & 0i;
    let var_2 = !(!arg_3);
    return StorageBuffer(_wgslsmith_mult_vec2_u32(abs(arg_2.c.yx), ~(~global2.zw)), 55608u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)) - 1000f)));
    let x = u_input.a;
    s_output = func_1((_wgslsmith_clamp_vec2_i32(abs(u_input.a.xx), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(u_input.b, u_input.b)), u_input.a.zz) | -vec2<i32>(u_input.a.x, -19792i)) | reverseBits(u_input.a.zx), global1[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(14369u, global2.x))), 10u)], !all(vec4<bool>(global2.x >= global2.x, true, true, u_input.b < u_input.a.x)));
}

