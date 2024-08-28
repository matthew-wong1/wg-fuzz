struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 20>;

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(1330f, 467f, 1636f, 994f), vec4<f32>(1194f, 1044f, 323f, 798f), vec4<f32>(-635f, 408f, -1293f, 1337f), vec4<f32>(-566f, 2202f, 616f, -868f), vec4<f32>(-537f, 369f, -2310f, 862f), vec4<f32>(2329f, 633f, 455f, 1000f), vec4<f32>(-1000f, 129f, 469f, 1471f), vec4<f32>(-317f, 1548f, 1897f, 411f), vec4<f32>(659f, -1000f, 136f, -162f), vec4<f32>(-237f, -1046f, 333f, -255f), vec4<f32>(-718f, 1128f, -676f, 405f), vec4<f32>(-683f, 689f, 719f, -438f), vec4<f32>(1957f, -230f, 113f, -1000f), vec4<f32>(1406f, 1000f, -773f, 179f), vec4<f32>(-1000f, -2068f, 954f, -578f), vec4<f32>(1053f, 546f, 362f, -593f), vec4<f32>(-1678f, -303f, 622f, -1100f), vec4<f32>(1374f, -551f, 153f, 552f), vec4<f32>(-438f, -302f, -230f, 2301f));

var<private> global3: Struct_1;

var<private> global4: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(all(!vec2<bool>(all(vec2<bool>(false, global0.a.x)), global0.a.x)));
    global1 = array<bool, 20>();
    let var_1 = vec3<u32>(~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(53065u, 1u), vec2<u32>(4294967295u, 34532u)) | _wgslsmith_mod_u32(10882u, 66026u)), ~select(1u, 4294967295u, true), _wgslsmith_add_u32(4294967295u, 0u));
    var var_2 = global3.b.wyz;
    let var_3 = Struct_2(!all(!(!vec4<bool>(var_0.a, false, true, var_0.a))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-766f, 1f))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global2 = array<vec4<f32>, 19>();
    var var_0 = _wgslsmith_f_op_f32(round(arg_0));
    global3 = arg_1;
    var var_1 = 10104i;
    var_1 = _wgslsmith_sub_i32(arg_1.b.x, _wgslsmith_mod_i32(i32(-1i) * -(~global0.b.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(global0.b.x, -1i)), vec2<i32>(global3.b.x | -1i, -34207i))));
    return ~firstTrailingBit(~reverseBits(vec4<u32>(13525u, 83302u, 25215u, 4294967295u)));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~select(vec4<u32>(1u, 62661u, 4294967295u, 4294967295u), vec4<u32>(16536u, 76984u, 92694u, 4294967295u), global1[_wgslsmith_index_u32(41029u, 20u)]), _wgslsmith_mult_vec4_u32(~vec4<u32>(58u, 13857u, 16000u, 0u), vec4<u32>(1u, 1u, 1u, 1u))), func_4(_wgslsmith_f_op_f32(func_3()), Struct_1(vec2<bool>(global3.a.x, true), ~global0.b), Struct_1(select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), false), vec4<i32>(0i, -1i, 11915i, -36298i)))) >> (abs(~vec4<u32>(14446u, 33349u, 4294967295u, 0u) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(24811u, 20471u, 23393u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 17036u, 4294967295u), ~vec4<u32>(62104u, 88072u, 0u, 110381u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = global0.a.x || !(var_0.x == func_4(_wgslsmith_f_op_f32(f32(-1f) * -512f), Struct_1(vec2<bool>(global0.a.x, global0.a.x), vec4<i32>(u_input.a, 4744i, global0.b.x, global3.b.x)), Struct_1(vec2<bool>(global0.a.x, false), vec4<i32>(global0.b.x, global3.b.x, 1362i, u_input.a))).x);
    var var_2 = !select(select(select(!vec3<bool>(global0.a.x, global0.a.x, global0.a.x), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], var_1, global1[_wgslsmith_index_u32(var_0.x, 20u)]), !var_1), vec3<bool>(true, !global3.a.x, select(true, global1[_wgslsmith_index_u32(23342u, 20u)], false)), true), vec3<bool>(global0.a.x, var_1, false), all(!select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], false, global0.a.x), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 20u)], global1[_wgslsmith_index_u32(var_0.x, 20u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 20u)], true, global3.a.x))));
    var var_3 = -1155f;
    global0 = Struct_1(select(global0.a, select(global0.a, var_2.zz, select(global0.b.x <= 2147483647i, select(true, false, true), true)), var_1), global3.b);
    return vec3<bool>(var_2.x, arg_0, true);
}

fn func_1() -> Struct_1 {
    let var_0 = global3.b.yzy;
    global3 = Struct_1(global0.a, max(~global3.b, vec4<i32>(-(~(-33820i)), global3.b.x, ~(~1i), -16062i)));
    let var_1 = select(vec3<bool>(any(!select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], false, true), vec3<bool>(global0.a.x, true, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global3.a.x, false))), true, false), select(vec3<bool>(global1[_wgslsmith_index_u32(34644u, 20u)] & (global0.a.x & global3.a.x), all(vec3<bool>(global3.a.x, global1[_wgslsmith_index_u32(73332u, 20u)], global1[_wgslsmith_index_u32(62305u, 20u)])), firstTrailingBit(30180u) >= select(15012u, 83340u, global0.a.x)), vec3<bool>(true, global0.a.x, true), select(!select(vec3<bool>(global0.a.x, true, false), vec3<bool>(false, false, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global3.a.x, global1[_wgslsmith_index_u32(4294967295u, 20u)])), func_2(true), vec3<bool>(all(vec4<bool>(true, true, global0.a.x, false)), global1[_wgslsmith_index_u32(~41020u, 20u)], global3.a.x))), global1[_wgslsmith_index_u32(1u, 20u)]);
    let var_2 = ~vec2<i32>(_wgslsmith_div_i32(global3.b.x, _wgslsmith_div_i32(global3.b.x, ~var_0.x)), min(-1i, ~26103i));
    var var_3 = Struct_2(global3.a.x);
    return Struct_1(var_1.zx, global3.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> f32 {
    global3 = func_1();
    var var_0 = arg_1;
    let var_1 = global0.b.wzz;
    var var_2 = func_1();
    var var_3 = Struct_2(!(arg_1.a && (-867f >= _wgslsmith_f_op_f32(sign(arg_2)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + arg_2);
}

fn func_6(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(true);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(11444i, _wgslsmith_mult_i32(-2147483647i, arg_1)) ^ abs(u_input.c.zx), -global3.b.wy);
    return Struct_1(!(!vec2<bool>(global1[_wgslsmith_index_u32(15557u, 20u)] & true, false)), select(global3.b, -vec4<i32>(reverseBits(global0.b.x), u_input.a, abs(arg_1), 0i), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(331f, -427f)) * _wgslsmith_f_op_f32(-2437f - -1715f)), _wgslsmith_f_op_f32(func_5(func_1(), Struct_2(func_1().a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1034f)))))), _wgslsmith_dot_vec4_i32(global3.b, global3.b >> (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), ((vec3<i32>(57674i, 1631i, 1i) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(global3.b.x, u_input.b, 0i))) | vec3<i32>(-2147483647i, global3.b.x, -global0.b.x));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(58171u, 4294967295u, 4294967295u)), firstLeadingBit(vec3<u32>(94482u, 0u, 22994u))), _wgslsmith_clamp_u32(56315u, countOneBits(8719u), 12086u));
    global0 = Struct_1(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 20u)], false))), vec4<i32>(_wgslsmith_mult_i32(-countOneBits(global3.b.x), ~(~global0.b.x)), var_0.b.x, u_input.b, 5063i));
    var_1 = _wgslsmith_clamp_u32(~4294967295u, 1u, 52187u);
    let var_2 = func_6(vec2<f32>(1203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-425f - -659f), _wgslsmith_f_op_f32(-1159f * 1309f))))), i32(-1i) * -2147483647i, var_0.b.wxw);
    global1 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-982f)), abs(abs(~27856u)) ^ max(46621u | func_4(1250f, Struct_1(var_2.a, vec4<i32>(u_input.b, 2147483647i, -13281i, var_0.b.x)), Struct_1(global0.a, vec4<i32>(2147483647i, var_2.b.x, -1i, 1i))).x, ~1u), 1u);
}

