struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<u32>(41791u, 1u), 975f, vec3<f32>(1211f, 548f, 319f), vec2<i32>(i32(-2147483648), -18149i), vec2<bool>(true, true)), Struct_1(vec2<u32>(5781u, 1u), 845f, vec3<f32>(-216f, 1717f, 1000f), vec2<i32>(0i, -1i), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, 13746u), -142f, vec3<f32>(-995f, 259f, 586f), vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, false)), Struct_1(vec2<u32>(56411u, 4294967295u), -2463f, vec3<f32>(-752f, 1978f, 698f), vec2<i32>(0i, 40728i), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, 1u), 357f, vec3<f32>(2204f, 925f, 190f), vec2<i32>(17267i, -1i), vec2<bool>(false, false)), Struct_1(vec2<u32>(12444u, 921u), 747f, vec3<f32>(-1484f, 1620f, 746f), vec2<i32>(-61461i, i32(-2147483648)), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1142f, vec3<f32>(-2172f, 1000f, 881f), vec2<i32>(i32(-2147483648), 13605i), vec2<bool>(false, false)), Struct_1(vec2<u32>(43875u, 29435u), -249f, vec3<f32>(537f, 539f, -988f), vec2<i32>(1373i, 0i), vec2<bool>(true, true)), Struct_1(vec2<u32>(3109u, 1925u), -953f, vec3<f32>(779f, 402f, -1000f), vec2<i32>(19782i, i32(-2147483648)), vec2<bool>(false, true)), Struct_1(vec2<u32>(9771u, 4294967295u), -1861f, vec3<f32>(1657f, -1146f, -381f), vec2<i32>(19542i, 31256i), vec2<bool>(false, false)), Struct_1(vec2<u32>(1u, 1u), 652f, vec3<f32>(722f, -1000f, -136f), vec2<i32>(1i, 27420i), vec2<bool>(false, false)), Struct_1(vec2<u32>(13907u, 96433u), 1068f, vec3<f32>(-128f, 988f, 1000f), vec2<i32>(2147483647i, -39785i), vec2<bool>(true, false)), Struct_1(vec2<u32>(47457u, 1u), -237f, vec3<f32>(1000f, -171f, -753f), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(true, true)), Struct_1(vec2<u32>(79007u, 811u), 449f, vec3<f32>(-309f, 2512f, 671f), vec2<i32>(1i, 1i), vec2<bool>(false, true)), Struct_1(vec2<u32>(87612u, 59343u), 2069f, vec3<f32>(-656f, -444f, -775f), vec2<i32>(0i, 2147483647i), vec2<bool>(false, false)), Struct_1(vec2<u32>(77353u, 84725u), 1349f, vec3<f32>(-150f, -243f, -463f), vec2<i32>(0i, 38105i), vec2<bool>(true, true)), Struct_1(vec2<u32>(0u, 4294967295u), 939f, vec3<f32>(-202f, -764f, 222f), vec2<i32>(-56409i, -1i), vec2<bool>(true, false)), Struct_1(vec2<u32>(1u, 43669u), 849f, vec3<f32>(1527f, 1098f, -728f), vec2<i32>(1i, -1i), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 0u), -585f, vec3<f32>(749f, 679f, 115f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true)), Struct_1(vec2<u32>(0u, 1u), 989f, vec3<f32>(-1000f, 576f, -770f), vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(true, false)), Struct_1(vec2<u32>(0u, 2770u), -330f, vec3<f32>(252f, 595f, 1153f), vec2<i32>(-8134i, 44657i), vec2<bool>(true, false)), Struct_1(vec2<u32>(60369u, 1u), 386f, vec3<f32>(-1897f, -114f, -658f), vec2<i32>(2147483647i, -52631i), vec2<bool>(false, true)), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1000f, vec3<f32>(593f, 405f, 500f), vec2<i32>(23703i, 0i), vec2<bool>(false, true)), Struct_1(vec2<u32>(53824u, 1u), 319f, vec3<f32>(-429f, -1703f, -428f), vec2<i32>(-1i, 1i), vec2<bool>(true, false)), Struct_1(vec2<u32>(29423u, 12757u), -955f, vec3<f32>(138f, -452f, -120f), vec2<i32>(-4002i, 5202i), vec2<bool>(false, true)));

var<private> global1: array<f32, 18> = array<f32, 18>(109f, 170f, -167f, 1828f, -139f, -416f, 125f, 225f, -463f, 313f, 965f, 527f, -1000f, 1693f, -546f, 1000f, -786f, 1869f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 25>();
    var var_0 = -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(0i, countOneBits(u_input.a.x)));
    let var_1 = vec4<i32>(-2147483647i, ~(-(u_input.a.x | 1i) & countOneBits(-u_input.a.x)), 2147483647i, _wgslsmith_dot_vec2_i32(~countOneBits(abs(u_input.a.yx)), ~u_input.a.yy));
    global1 = array<f32, 18>();
    var_0 = min(var_1.zz, u_input.a.zy) & ~(vec2<i32>(_wgslsmith_div_i32(var_1.x, var_1.x), var_1.x >> (u_input.c.x % 32u)) << (vec2<u32>(64166u, 4294967295u) % vec2<u32>(32u)));
    return 1382f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = select(!select(vec2<bool>(true, all(arg_0.e)), vec2<bool>(true, true), arg_1.e.x & true), vec2<bool>(true, arg_0.e.x), vec2<bool>(arg_0.e.x, true));
    let var_1 = arg_1;
    global1 = array<f32, 18>();
    var var_2 = abs(vec2<u32>(_wgslsmith_div_u32(~var_1.a.x, 16662u), ~(~909u)) | (vec2<u32>(0u, ~28438u) | ~(vec2<u32>(4294967295u, 51440u) ^ vec2<u32>(0u, arg_1.a.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.c.yx, vec2<f32>(_wgslsmith_f_op_f32(func_3()), -639f)) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), 268f)));
    return u_input.b;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<u32> {
    let var_0 = arg_1.e.x;
    global1 = array<f32, 18>();
    let var_1 = global0[_wgslsmith_index_u32(~16045u, 25u)];
    global0 = array<Struct_1, 25>();
    var var_2 = global0[_wgslsmith_index_u32(arg_3.x, 25u)];
    return vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(~20289u), ~(~36598u), 1u), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.a.x ^ arg_2.a.x, arg_0 ^ 4294967295u), ~1u >> (~4294967295u % 32u)), func_2(arg_2, arg_1, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.zwy | func_1(4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], Struct_1(vec2<u32>(u_input.c.x, 1u), global1[_wgslsmith_index_u32(32007u, 18u)], vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], -284f), u_input.a.xx, vec2<bool>(true, false)), vec2<u32>(162219u, u_input.c.x)), abs(vec3<u32>(53673u, 13614u, 0u))), vec3<u32>(1u, ~func_1(u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], Struct_1(u_input.c.zw, -924f, vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(u_input.c.x, 18u)], 1000f), u_input.a.zx, vec2<bool>(false, true)), vec2<u32>(u_input.b, u_input.b)).x, _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_clamp_u32(u_input.b, u_input.c.x, u_input.c.x)))), vec3<u32>(1u, countOneBits(~(1u << (u_input.c.x % 32u))), func_1(~_wgslsmith_dot_vec3_u32(u_input.c.yyw, u_input.c.zzw), Struct_1(~u_input.c.wy, global1[_wgslsmith_index_u32(~u_input.b, 18u)], vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], 1342f, 118f), abs(vec2<i32>(1i, u_input.a.x)), vec2<bool>(false, false)), global0[_wgslsmith_index_u32(~(~221u), 25u)], select(select(u_input.c.zx, vec2<u32>(u_input.c.x, u_input.b), vec2<bool>(false, false)), vec2<u32>(u_input.b, u_input.c.x), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))).x));
    var var_1 = Struct_1(u_input.c.wz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1259f, global1[_wgslsmith_index_u32(0u, 18u)])))))), vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 18u)] - global1[_wgslsmith_index_u32(13508u, 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], -1445f) + _wgslsmith_f_op_f32(f32(-1f) * -2309f))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 53237u), 18u)]), select(u_input.a.xy, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_add_vec2_i32(u_input.a.xx, u_input.a.yx), vec2<i32>(23500i, -1i)), reverseBits(vec2<i32>(u_input.a.x, u_input.a.x) ^ u_input.a.xx)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false)))), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))), true));
    var var_2 = -_wgslsmith_dot_vec2_i32(abs(u_input.a.xx), -(~vec2<i32>(0i, var_1.d.x))) | u_input.a.x;
    var var_3 = countOneBits(2147483647i);
    let var_4 = !vec3<bool>(select(!var_1.e.x, all(vec3<bool>(var_1.e.x, true, true)), any(select(vec4<bool>(true, true, true, var_1.e.x), vec4<bool>(var_1.e.x, var_1.e.x, true, var_1.e.x), var_1.e.x))), !(!(!var_1.e.x)), all(vec3<bool>(true, any(vec2<bool>(var_1.e.x, var_1.e.x)), var_1.e.x)));
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 18u)], -1297f, var_1.b, 937f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b, global1[_wgslsmith_index_u32(47441u, 18u)], global1[_wgslsmith_index_u32(53474u, 18u)], -1999f), vec4<f32>(var_1.b, 800f, 1109f, global1[_wgslsmith_index_u32(36064u, 18u)]))) - vec4<f32>(-711f, 677f, var_1.b, -295f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(var_1.b * var_1.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(1u, 18u)], -1541f, -1068f, global1[_wgslsmith_index_u32(u_input.b, 18u)])))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1137f, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(4414u, 18u)], -735f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(921f, -1000f, var_1.c.x, var_1.c.x) * vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 18u)], global1[_wgslsmith_index_u32(60225u, 18u)], var_1.c.x, global1[_wgslsmith_index_u32(0u, 18u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 18u)])))), -196f), -1530f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -140f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -696f)))), var_5.x), ~u_input.a, ~var_1.a.x ^ _wgslsmith_sub_u32(~1u, 7065u), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.x, 4294967295u, var_0.x), var_0.x << (22577u % 32u)) & var_0.x, _wgslsmith_div_u32(~0u, ~_wgslsmith_mult_u32(var_0.x, 84212u)));
}

