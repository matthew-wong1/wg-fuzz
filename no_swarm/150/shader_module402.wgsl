struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-508f, 1590f), vec2<f32>(1454f, 479f), vec2<f32>(-1018f, -108f), vec2<f32>(1017f, -501f), vec2<f32>(2466f, -277f), vec2<f32>(-208f, -805f), vec2<f32>(-219f, 1470f), vec2<f32>(-464f, 136f), vec2<f32>(-1271f, -763f), vec2<f32>(550f, -1213f), vec2<f32>(-769f, -787f), vec2<f32>(-409f, -3491f), vec2<f32>(677f, -833f), vec2<f32>(1324f, -1183f), vec2<f32>(1146f, -301f));

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-45997i, 2020i, -38778i), vec3<i32>(24930i, -51302i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(2147483647i, i32(-2147483648), -4677i), vec3<i32>(-15052i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-9800i, 3706i, 1i), vec3<i32>(18023i, -1i, -1i), vec3<i32>(0i, 9902i, 42653i), vec3<i32>(-51571i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(-5741i, 0i, 12055i), vec3<i32>(-1i, 1i, 15367i), vec3<i32>(0i, -27130i, 2147483647i), vec3<i32>(16093i, -23160i, -2464i), vec3<i32>(-11159i, -32690i, 1i), vec3<i32>(2147483647i, 9356i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(-38314i, 35957i, -19822i), vec3<i32>(0i, -21120i, -23712i), vec3<i32>(1i, i32(-2147483648), 54177i), vec3<i32>(-6180i, i32(-2147483648), 1i), vec3<i32>(-1i, i32(-2147483648), 30108i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(1i, -60766i, -40546i), vec3<i32>(2837i, 1i, 1i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(39940i, 1i, -2600i), vec3<i32>(4985i, -43654i, -8954i), vec3<i32>(15935i, -49443i, 2147483647i), vec3<i32>(-11858i, 31494i, -73578i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = Struct_4(Struct_1(abs(~vec3<u32>(arg_2.a.x, u_input.e.x, arg_1.e.a.x) >> (select(vec3<u32>(u_input.e.x, 18236u, 1u), vec3<u32>(arg_1.c.x, 1u, 4294967295u), arg_0) % vec3<u32>(32u)))), arg_1.d, 0u, _wgslsmith_add_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -68369i, 7054i, u_input.a.x), vec4<i32>(1i, arg_1.a.x, u_input.d.x, 1i))), 0i, 1i, ~(-1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2895i, arg_1.a.x, u_input.b.x), u_input.b)), vec4<i32>(~(-arg_1.a.x), _wgslsmith_dot_vec3_i32(arg_1.a, vec3<i32>(-48005i, 0i, arg_1.a.x)) >> (min(arg_1.e.a.x, arg_2.a.x) % 32u), -(arg_1.a.x & u_input.a.x), 1i)));
    global0 = array<vec2<f32>, 15>();
    let var_1 = -firstTrailingBit(0i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.d))))), _wgslsmith_f_op_f32(round(arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(round(arg_1.d))))));
    let var_3 = Struct_4(var_0.a, _wgslsmith_f_op_f32(min(var_0.b, var_2.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_2.a.x, 4294967295u), _wgslsmith_sub_u32(firstLeadingBit(arg_2.a.x), _wgslsmith_clamp_u32(4294967295u, 38975u, 18498u))) | ~(~(u_input.c.x ^ var_0.c)), _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(u_input.b.x) >> (~arg_1.b % 32u), _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(2147483647i)), firstTrailingBit(_wgslsmith_dot_vec4_i32(var_0.d, var_0.d)), arg_1.a.x), var_0.d));
    return min(~var_0.d.zxy, -_wgslsmith_mult_vec3_i32(var_3.d.ywx, vec3<i32>(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(6950u, 31u)], vec3<i32>(u_input.d.x, var_3.d.x, var_3.d.x)), 59102i, _wgslsmith_mod_i32(var_3.d.x, -2147483647i))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d), 199f, _wgslsmith_f_op_f32(sign(arg_3.b))))));
    var var_1 = arg_3;
    var var_2 = Struct_3(~_wgslsmith_mod_vec3_i32(select(-vec3<i32>(29221i, u_input.d.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, -38293i), !arg_1), arg_3.d.wyy), u_input.e.x, _wgslsmith_div_vec2_u32(arg_2.e.a.xz, var_1.a.a.xx), arg_2.d, arg_2.e);
    global1 = array<vec3<i32>, 31>();
    let var_3 = !arg_0;
    return vec2<u32>(arg_3.c ^ max(var_2.b, _wgslsmith_clamp_u32(var_1.c, var_2.c.x, var_1.a.a.x) ^ abs(u_input.c.x)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 0u, var_1.c, var_2.b)) << (~(u_input.c >> (u_input.e % vec4<u32>(32u))) % vec4<u32>(32u)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.c, 27462u, u_input.c.x, arg_3.a.a.x), u_input.e) & reverseBits(u_input.e))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_1(arg_0);
    let var_1 = _wgslsmith_mult_vec2_u32(func_4(vec3<bool>(true, arg_1, !arg_1), arg_1, Struct_3(select(-global1[_wgslsmith_index_u32(u_input.e.x, 31u)], func_3(vec3<bool>(true, arg_1, false), Struct_3(vec3<i32>(u_input.d.x, u_input.b.x, u_input.a.x), var_0.a.x, vec2<u32>(1u, 13112u), -797f, Struct_1(vec3<u32>(u_input.e.x, var_0.a.x, 1u))), Struct_1(u_input.e.yyx)), 45827u >= var_0.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, 10639u, 0u, 43754u), vec4<u32>(78428u, 0u, arg_0.x, u_input.e.x)), vec2<u32>(u_input.c.x, arg_0.x), 1f, Struct_1(vec3<u32>(var_0.a.x, 19459u, u_input.c.x))), Struct_4(Struct_1(abs(vec3<u32>(arg_0.x, 0u, 79659u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2489f * -786f) - _wgslsmith_f_op_f32(min(-460f, 558f))), abs(4294967295u), countOneBits(vec4<i32>(-23687i, -27638i, -1i, u_input.b.x)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x | 4294967295u, ~var_0.a.x), select(select(vec2<u32>(arg_0.x, 1u), vec2<u32>(arg_0.x, 0u), vec2<bool>(arg_1, arg_1)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, 6920u), vec2<u32>(0u, 0u)), false)), arg_0.x));
    let var_2 = arg_0.x;
    global1 = array<vec3<i32>, 31>();
    var var_3 = true;
    return Struct_3(_wgslsmith_add_vec3_i32(reverseBits((vec3<i32>(u_input.a.x, u_input.a.x, -34616i) ^ u_input.b.zyx) & reverseBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_vec3_i32(-select(vec3<i32>(u_input.a.x, u_input.d.x, 0i), global1[_wgslsmith_index_u32(var_0.a.x, 31u)], vec3<bool>(arg_1, false, arg_1)), select(global1[_wgslsmith_index_u32(~var_0.a.x, 31u)], -vec3<i32>(u_input.d.x, u_input.a.x, -2092i), arg_1), global1[_wgslsmith_index_u32(firstTrailingBit(35156u), 31u)])), ~97819u, reverseBits(var_0.a.zx), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1110f, -824f, false)))) - 544f))), Struct_1(vec3<u32>(var_1.x, ~1u, u_input.c.x)));
}

fn func_1(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = func_2(firstTrailingBit(vec3<u32>(u_input.e.x << (2157u % 32u), arg_0.b, 11172u) << (arg_0.e.a % vec3<u32>(32u))), true);
    var var_1 = Struct_3(select(u_input.b.wzz, vec3<i32>((20948i >> (var_0.b % 32u)) << (countOneBits(u_input.e.x) % 32u), 0i, u_input.b.x), !vec3<bool>(-33908i == var_0.a.x, true, true)), arg_0.e.a.x, select(u_input.e.yw, abs(~var_0.c), select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), !all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(725f)), 521f)), 1212f, _wgslsmith_mult_u32(0u, u_input.c.x) >= arg_0.e.a.x))), Struct_1(u_input.e.wzx));
    var var_2 = Struct_2(select(vec4<bool>(true, any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true)), var_1.d >= _wgslsmith_f_op_f32(var_1.d * -223f)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true)) || false), firstLeadingBit(-1i), arg_0.d, 163f, var_1.e);
    var_0 = arg_0;
    let var_3 = vec2<f32>(616f, -1020f);
    return StorageBuffer(~_wgslsmith_mult_vec3_i32(max(_wgslsmith_add_vec3_i32(arg_0.a, var_1.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(var_2.e.a.x, var_2.e.a.x, 25261u, var_2.e.a.x)), 31u)]), vec3<i32>(var_0.a.x ^ 2147483647i, ~var_0.a.x, ~arg_0.a.x)), _wgslsmith_f_op_f32(-var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 31>();
    let var_0 = select(u_input.b, -vec4<i32>(u_input.d.x, -u_input.b.x, u_input.b.x, u_input.a.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false))) & u_input.b;
    global1 = array<vec3<i32>, 31>();
    let var_1 = reverseBits(_wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(abs(71514u), 31u)], ~vec3<i32>(u_input.b.x, -14157i, u_input.d.x))), var_0.xyy));
    global0 = array<vec2<f32>, 15>();
    let x = u_input.a;
    s_output = func_1(Struct_3(_wgslsmith_mult_vec3_i32(var_0.zxz, vec3<i32>(40885i, var_0.x | 1044i, -var_0.x)), ~38231u, u_input.e.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) + _wgslsmith_f_op_f32(833f - -1000f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1099f)))), Struct_1(u_input.e.zxw)));
}

