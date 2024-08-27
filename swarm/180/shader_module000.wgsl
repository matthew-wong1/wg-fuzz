struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: array<f32, 20> = array<f32, 20>(-1083f, 1776f, -423f, 2664f, -1049f, -395f, -1278f, -177f, -159f, 409f, 604f, 417f, 113f, -619f, 1204f, 758f, -1129f, 729f, 142f, 385f);

var<private> global2: array<u32, 3> = array<u32, 3>(98182u, 53482u, 19037u);

var<private> global3: u32;

var<private> global4: array<i32, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.e;
    var_0 = Struct_1(~var_0.d.x, vec3<f32>(881f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(16046u, 20u)]))), -2750f)), 1897f), ~5933u, arg_0.c.d, select(~arg_0.c.e, 4294967295u, all(vec3<bool>(true, true, true))));
    global1 = array<f32, 20>();
    let var_1 = true;
    let var_2 = Struct_3(28259u, ~vec4<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(arg_0.e.c, 3u)]) ^ firstLeadingBit(0u), ~min(42909u, 0u), arg_0.e.e, arg_0.e.e), Struct_1(_wgslsmith_dot_vec2_i32(arg_0.e.d.zz, ~vec2<i32>(var_0.a, 2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(trunc(1035f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(133f * -446f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(580f * var_0.b.x), _wgslsmith_f_op_f32(trunc(646f))))), max(~arg_0.e.c, 13935u ^ arg_0.e.e), arg_0.e.d << (max(reverseBits(vec3<u32>(4294967295u, 5854u, 44114u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c, 44117u, var_0.c), vec3<u32>(14526u, 1u, 1u))) % vec3<u32>(32u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global2[_wgslsmith_index_u32(77579u, 3u)], arg_0.e.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c, 1u, 15047u), vec3<u32>(37183u, var_0.e, 23132u), vec3<u32>(1u, arg_0.e.c, var_0.c)))));
    return abs(1540u);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_1(global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4153u, 64184u, global2[_wgslsmith_index_u32(0u, 3u)], 27608u), vec4<u32>(arg_2.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], 49244u, 7264u))), 7u)], _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~select(func_3(Struct_2(-1921f, arg_0.zy, Struct_1(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 7u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(10488u, 3u)], u_input.b.zwz, 0u), vec3<f32>(arg_1, -1000f, 960f), Struct_1(-2147483647i, arg_0, 0u, u_input.a.xzx, arg_2.x))), 71605u, true), 5u)]), _wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(firstTrailingBit(0u), 3u)], 4294967295u, 4294967295u), vec3<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(8423u, 36812u), 3u)]), ~25240u, ~(~1u))), vec3<i32>(-21332i, -4300i, global4[_wgslsmith_index_u32(arg_2.x, 7u)] | -(~global4[_wgslsmith_index_u32(arg_2.x, 7u)])), 1u);
    var var_1 = _wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(var_0.e, arg_2.x, 1u, 0u), vec4<u32>(24247u, 2808u, arg_2.x, global2[_wgslsmith_index_u32(var_0.c, 3u)]))), min(min(~vec4<u32>(1u, global2[_wgslsmith_index_u32(577u, 3u)], arg_2.x, 1u), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(35250u, 83777u, 399u, global2[_wgslsmith_index_u32(29905u, 3u)]), vec4<u32>(1u, var_0.c, 64594u, arg_2.x)), ~vec4<u32>(43957u, var_0.e, 30015u, var_0.e))), reverseBits(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 1u, 47964u, arg_2.x), vec4<u32>(48594u, arg_2.x, global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(false, false, true, true)), max(vec4<u32>(0u, var_0.e, 0u, 0u), vec4<u32>(12796u, 1u, global2[_wgslsmith_index_u32(0u, 3u)], var_0.e))))));
    global2 = array<u32, 3>();
    global3 = _wgslsmith_sub_u32(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~var_0.c, 3u)], firstLeadingBit(arg_2.x)), 15879u) ^ _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(~arg_2, arg_2), 3856u);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 20u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1624f - _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 20u)])))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.x, 20u)]) + -598f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_0.x) - _wgslsmith_f_op_f32(-arg_1))));
    return Struct_2(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_2.x | var_0.c, 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1030f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), arg_0.x)), _wgslsmith_f_op_f32(round(2528f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-641f, _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.xz, var_0.b.xy))))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(48398i, 44862i, 6707i, 35247i), countOneBits(vec4<i32>(-1i, u_input.b.x, var_0.a, u_input.b.x))), var_0.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2.x, 20u)] + 1524f) - 963f), arg_0.x, arg_0.x), countOneBits(abs(global2[_wgslsmith_index_u32(~0u, 3u)])), ~_wgslsmith_mult_vec3_i32(abs(var_0.d), firstTrailingBit(var_0.d)), global2[_wgslsmith_index_u32(3691u, 3u)]), vec3<f32>(_wgslsmith_f_op_f32(floor(917f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(29765u, 20u)]) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-331f - -1910f), arg_0.x)), arg_0.x), Struct_1(~(firstTrailingBit(u_input.a.x) ^ 28153i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, arg_1, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.e, 3u)], 20u)], 547f, arg_1)) * global0[_wgslsmith_index_u32(~1u, 5u)])), ~(arg_2.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(20403u, var_0.e), arg_2) % 32u)), -vec3<i32>(~global4[_wgslsmith_index_u32(4294967295u, 7u)], -43505i, global4[_wgslsmith_index_u32(~38458u, 7u)]), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 31517u, arg_2.x, global2[_wgslsmith_index_u32(1u, 3u)])), ~vec4<u32>(arg_2.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 84432u, 71945u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec4<i32> {
    let var_0 = (vec4<u32>(1u, 1u, arg_1.x, ~(~1u)) << (select(firstLeadingBit(~vec4<u32>(arg_1.x, arg_1.x, 33777u, 16148u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(11760u, 3u)], 0u, arg_0.c.c, 1u), vec4<u32>(4294967295u, 0u, 1u, 0u)) | (vec4<u32>(arg_1.x, arg_0.e.e, 61046u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.c.e, 3u)], 3u)]) | vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], global2[_wgslsmith_index_u32(14159u, 3u)], arg_0.e.e)), vec4<bool>(any(vec2<bool>(true, false)), true, any(vec3<bool>(true, false, true)), global1[_wgslsmith_index_u32(arg_1.x, 20u)] < 388f)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(arg_1.x, arg_1.x, arg_0.c.e, global2[_wgslsmith_index_u32(18994u, 3u)])), vec4<u32>(arg_0.c.c, ~arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 64343u, 1u, 1u), vec4<u32>(1u, arg_1.x, 16777u, arg_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(52395u, 0u, 4294967295u, 37335u), vec4<u32>(25352u, 4294967295u, global2[_wgslsmith_index_u32(9456u, 3u)], arg_0.e.e)))), _wgslsmith_sub_vec4_u32(vec4<u32>(1969u, 4294967295u << (arg_1.x % 32u), 8766u, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, 58773u, arg_0.c.c))), vec4<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.c.e, 3u)], 3u)], max(95754u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.e.c, 3u)], 3u)]), 14158u, _wgslsmith_add_u32(0u, 17864u))), ~(vec4<u32>(52763u, arg_1.x, 1u, arg_1.x) << (~vec4<u32>(arg_1.x, 1u, arg_1.x, 4294967295u) % vec4<u32>(32u))));
    var var_1 = ~_wgslsmith_add_vec4_i32(select(u_input.b, reverseBits(u_input.a >> (vec4<u32>(8295u, 4294967295u, global2[_wgslsmith_index_u32(33097u, 3u)], 50314u) % vec4<u32>(32u))), any(vec4<bool>(true, false, false, true))), countOneBits(-u_input.b) << (var_0 % vec4<u32>(32u)));
    let var_2 = true;
    var var_3 = arg_0.c;
    let var_4 = all(!vec3<bool>(false, !(var_3.c == 27861u), var_2));
    return u_input.a;
}

fn func_1() -> i32 {
    var var_0 = ~func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70659u, 3u)], 3u)], 3u)], 5u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(117065u, 3u)], 5u)])), -298f, abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)], global2[_wgslsmith_index_u32(63838u, 3u)]), vec2<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 15697u)))), vec3<u32>(~select(global2[_wgslsmith_index_u32(80709u, 3u)], 34551u, false), _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(107469u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)], 1u, 6832u), 3u)], 3u)]), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~5982u, 3u)], 3u)]), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 5u)]);
    var var_1 = select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, false)), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, global4[_wgslsmith_index_u32(0u, 7u)] != 40460i), select(true, any(vec4<bool>(false, true, false, true)), var_0.x != -40197i))));
    var_0 = ~_wgslsmith_mult_vec4_i32(u_input.b, select(select(u_input.a ^ vec4<i32>(var_0.x, var_0.x, 14367i, u_input.b.x), ~u_input.a, select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x))), u_input.a, !select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x))));
    var var_2 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30507u, 3u)], 5u)])), global2[_wgslsmith_index_u32(1u, 3u)], vec3<i32>(-1i, min(1i, 82196i), -2147483647i >> (reverseBits(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(29385u, 3u)], global2[_wgslsmith_index_u32(6786u, 3u)])) % 32u)), max(global2[_wgslsmith_index_u32(4990u, 3u)], _wgslsmith_add_u32(~global2[_wgslsmith_index_u32(4294967295u, 3u)], func_3(Struct_2(1382f, vec2<f32>(755f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 20u)]), Struct_1(var_0.x, vec3<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(76705u, 3u)], 3u)], 20u)], -1123f, 842f), 0u, vec3<i32>(global4[_wgslsmith_index_u32(56813u, 7u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 7u)], var_0.x), global2[_wgslsmith_index_u32(114224u, 3u)]), vec3<f32>(-1521f, -1056f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 20u)]), Struct_1(56324i, global0[_wgslsmith_index_u32(1u, 5u)], 33310u, u_input.b.wxy, global2[_wgslsmith_index_u32(1u, 3u)]))))) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 62446u, 1u) >> ((vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92319u, 3u)], 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17767u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 1u) >> (vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)]) % vec3<u32>(32u))) % vec3<u32>(32u)), select(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 3u)], global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 3u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 1u, global2[_wgslsmith_index_u32(1u, 3u)]), vec3<u32>(11449u, 9500u, 0u)), global1[_wgslsmith_index_u32(50746u, 20u)] < 187f)));
    global4 = array<i32, 7>();
    return -max(2147483647i, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~_wgslsmith_sub_i32(~u_input.b.x, func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~vec2<u32>(global2[_wgslsmith_index_u32(85417u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(7487u, global2[_wgslsmith_index_u32(0u, 3u)]), vec2<u32>(global2[_wgslsmith_index_u32(29419u, 3u)], 0u)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)) << (max(~firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(6501u, 3u)], 29836u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(8561u, 3u)], 1u), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], 4001u) ^ vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81024u, 3u)], 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27944u, 3u)], 3u)]))) % vec2<u32>(32u)), vec4<u32>(global2[_wgslsmith_index_u32(66503u, 3u)], ~(~68786u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62859u, 3u)], 3u)], global2[_wgslsmith_index_u32(~0u, 3u)]));
}

