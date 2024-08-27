struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1i, true, vec3<i32>(47521i, 47908i, 0i), vec4<i32>(0i, 0i, 13246i, 12859i));

var<private> global1: Struct_1;

var<private> global2: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(62731u, vec2<u32>(0u, 65670u), vec4<u32>(1u, 0u, 1u, 58367u)), Struct_5(64293u, vec2<u32>(4294967295u, 1u), vec4<u32>(0u, 11783u, 0u, 66504u)), Struct_5(4294967295u, vec2<u32>(4294967295u, 0u), vec4<u32>(4294967295u, 16832u, 52633u, 32581u)), Struct_5(45875u, vec2<u32>(43224u, 20138u), vec4<u32>(0u, 0u, 4294967295u, 55562u)), Struct_5(70093u, vec2<u32>(1u, 37781u), vec4<u32>(0u, 33361u, 3632u, 81329u)), Struct_5(115690u, vec2<u32>(1u, 11636u), vec4<u32>(73156u, 1u, 31167u, 34150u)));

var<private> global3: Struct_2;

var<private> global4: array<i32, 15>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>) -> u32 {
    global0 = Struct_3(-2147483647i, false, abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, -6774i, global0.d.x) << (min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(19751u, u_input.a.x, 4991u)) % vec3<u32>(32u)), vec3<i32>(min(-17731i, global0.c.x), global4[_wgslsmith_index_u32(u_input.a.x, 15u)], ~(-5668i)))), global0.d);
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    global4 = array<i32, 15>();
    global0 = Struct_3(arg_0 ^ -global0.d.x, global0.b, abs(_wgslsmith_add_vec3_i32(global0.c, vec3<i32>(1i, 34006i, global4[_wgslsmith_index_u32(18819u, 15u)])) | vec3<i32>(63443i, global4[_wgslsmith_index_u32(25195u, 15u)], arg_0)) >> (vec3<u32>(~73124u, _wgslsmith_dot_vec2_u32(u_input.a, countOneBits(u_input.a)), 0u) % vec3<u32>(32u)), ~(max(_wgslsmith_add_vec4_i32(global0.d, vec4<i32>(1i, global4[_wgslsmith_index_u32(u_input.a.x, 15u)], arg_0, 0i)), global0.d) & _wgslsmith_clamp_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(9776u, 15u)], 2147483647i, arg_0, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(-79095i, -2147483647i, global0.d.x, arg_0), global0.d), ~vec4<i32>(1i, 3095i, arg_0, global0.c.x))));
    var var_0 = any(!global1.d);
    var var_1 = -_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-global0.c, global0.c | (vec3<i32>(15197i, 1i, 2147483647i) & global0.d.zwz)), min(vec3<i32>(global0.a, -78063i, abs(-20311i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], -1i, -1i), max(vec3<i32>(arg_0, -1i, 0i), vec3<i32>(global0.a, global4[_wgslsmith_index_u32(0u, 15u)], -48019i)))));
    let var_2 = _wgslsmith_clamp_vec2_u32(min(u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(26101u, u_input.a.x), select(u_input.a, u_input.a, vec2<bool>(global3.e.d.x, false)))), ~(~u_input.a), ~(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.a.x), ~4294967295u) & vec2<u32>(10789u, ~49672u)));
    return ~reverseBits(_wgslsmith_div_u32(~u_input.a.x & 4294967295u, func_3(arg_1, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, global1.b, arg_1.x), vec3<f32>(1070f, global3.c.c, 461f), true)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)) ^ ~vec3<u32>(12151u, 0u, arg_3), abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, 41469u), vec3<u32>(4294967295u, arg_3, arg_3)))), countOneBits(42812u), arg_3, 36839u);
    global1 = Struct_1(!vec2<bool>(global1.d.x, 0u != _wgslsmith_dot_vec3_u32(var_0.yzw, vec3<u32>(var_0.x, arg_3, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(499f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), select(true, true | global0.b, true))) - _wgslsmith_f_op_f32(trunc(arg_2))), _wgslsmith_f_op_f32(2067f - arg_2), vec3<bool>(select(false, all(vec4<bool>(false, global0.b, global3.c.a.x, global1.d.x)), global0.b), all(vec3<bool>(global3.a.d.x, !global0.b, global3.e.d.x | false)), false));
    global2 = array<Struct_5, 6>();
    let var_1 = 42852u;
    let var_2 = Struct_4(Struct_1(select(global3.e.d.yy, global3.e.d.zz, !select(vec2<bool>(true, true), global3.d.d.zx, global1.d.zx)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1008f)))), _wgslsmith_f_op_f32(f32(-1f) * -680f), global3.e.d), 12375i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(170f, -1204f, arg_2, 801f), vec4<f32>(global1.b, global3.c.c, global3.c.b, arg_2), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(729f, -1298f, global1.c, -1000f) * vec4<f32>(global1.c, global3.b, -276f, global3.a.c)))))), !vec4<bool>(any(!global1.d.xx), global1.a.x && false, all(select(vec3<bool>(global3.c.a.x, false, global0.b), global3.c.d, vec3<bool>(true, true, true))), true));
    return var_2.a;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_4(func_4(global0.d, global4[_wgslsmith_index_u32(~func_2(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], vec4<f32>(-1000f, -1691f, global1.b, arg_0)) & ~4294967295u, 15u)], global1.b, 33177u), _wgslsmith_sub_i32(((global4[_wgslsmith_index_u32(u_input.a.x, 15u)] & global4[_wgslsmith_index_u32(1u, 15u)]) >> (_wgslsmith_div_u32(4294967295u, 63075u) % 32u)) | global0.d.x, ~(_wgslsmith_sub_i32(global0.a, -7743i) ^ 63398i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1165f, 1014f, global3.a.b, -975f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -276f, arg_0, global1.b)))))), !select(!vec4<bool>(false, true, global0.b, true), select(select(vec4<bool>(false, false, global0.b, global3.c.a.x), vec4<bool>(true, true, false, true), vec4<bool>(global3.c.a.x, true, true, false)), vec4<bool>(false, global3.d.a.x, false, global3.a.d.x), !global3.c.d.x), true));
    let var_1 = vec3<i32>(select(1i, 0i & select(i32(-1i) * -1i, global0.a, var_0.d.x), !any(select(global1.d.yz, vec2<bool>(global1.a.x, global0.b), vec2<bool>(global0.b, global3.c.a.x)))), abs(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(global0.d, vec4<i32>(-10215i, global0.a, global4[_wgslsmith_index_u32(arg_1.x, 15u)], -1i)), vec4<i32>(0i, global4[_wgslsmith_index_u32(0u, 15u)], var_0.b, global0.a)))), max(_wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(arg_1.x, 15u)], -2147483647i, global0.a, global0.c.x), _wgslsmith_clamp_vec4_i32(global0.d, vec4<i32>(-5198i, 3597i, global0.c.x, var_0.b), vec4<i32>(var_0.b, global0.c.x, -34968i, 46748i))), -max(global0.c.x, var_0.b)) | abs(_wgslsmith_mod_i32(-40435i, i32(-1i) * -1i)));
    global0 = Struct_3(var_0.b, false, _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(0i), firstTrailingBit(-22675i), ~(-1i)), -(~vec3<i32>(-6689i, var_0.b, global4[_wgslsmith_index_u32(8192u, 15u)])), vec3<i32>(4978i, global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(4294967295u, arg_1.x)), 15u)], ~(~(-1i)))), vec4<i32>(~_wgslsmith_mult_i32(~global0.d.x, min(1203i, global4[_wgslsmith_index_u32(16386u, 15u)])), 1i, _wgslsmith_mult_i32(i32(-1i) * -35631i, -1i) & ~firstTrailingBit(-42047i), -27316i));
    global0 = Struct_3(-(var_0.b & ((i32(-1i) * -16828i) >> (0u % 32u))), global1.a.x, global0.d.wzz, _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 62789i, global0.d.x), vec3<i32>(2147483647i, -6167i, var_0.b)), 0i, ~1i, 1i), _wgslsmith_div_vec4_i32(abs(vec4<i32>(global4[_wgslsmith_index_u32(arg_1.x, 15u)], var_0.b, var_1.x, var_1.x) >> (vec4<u32>(1u, 33632u, arg_1.x, 1u) % vec4<u32>(32u))), select(global0.d >> (vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, arg_1.x) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(1i, 1i, 2147483647i, 28368i)), vec4<bool>(false, global3.c.d.x, global1.a.x, global3.e.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(0i ^ global4[_wgslsmith_index_u32(arg_1.x, 15u)], i32(-1i) * -65710i, -8718i | var_1.x, var_0.b), abs(firstTrailingBit(vec4<i32>(global4[_wgslsmith_index_u32(44013u, 15u)], var_0.b, global4[_wgslsmith_index_u32(u_input.a.x, 15u)], 2147483647i))))));
    let var_2 = u_input.a.x;
    return func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.b) * _wgslsmith_div_f32(arg_0, 3134f)), _wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - _wgslsmith_f_op_f32(select(var_0.c.x, 1000f, global0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c, arg_0, arg_0, -522f) + var_0.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1197f, global3.b, arg_0, arg_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1008f, var_0.c.x, -223f, 213f) * vec4<f32>(-1000f, var_0.a.c, global1.b, 326f)))))), vec3<f32>(889f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)), 660f));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> vec2<bool> {
    global0 = Struct_3(7621i, !(!(!(!global1.a.x))), ~(vec3<i32>(firstLeadingBit(1i), abs(-24611i), -2147483647i) >> (((vec3<u32>(arg_3, 4294967295u, arg_3) & vec3<u32>(19470u, u_input.a.x, arg_3)) | ~vec3<u32>(29028u, arg_3, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.d, vec4<i32>(1i, global0.d.x, global4[_wgslsmith_index_u32(117132u, 15u)], global0.c.x) & vec4<i32>(global0.c.x, -22921i, global4[_wgslsmith_index_u32(u_input.a.x, 15u)], global0.a), abs(_wgslsmith_clamp_vec4_i32(global0.d, global0.d, global0.d))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(11051u, 15u)], 56032i), -2147483647i), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(26633u, 15u)]), -2147483647i, _wgslsmith_mult_i32(1i, -35853i & global4[_wgslsmith_index_u32(arg_3, 15u)]))));
    let var_0 = Struct_1(vec2<bool>(true, 1i != (firstTrailingBit(global0.a) & firstLeadingBit(32203i))), func_4(~vec4<i32>(global4[_wgslsmith_index_u32(1u, 15u)], 5241i, _wgslsmith_mod_i32(22988i, 76161i), global0.c.x), 2147483647i, global3.e.b, ~40266u).b, arg_2, vec3<bool>(true, all(vec2<bool>(true, true)), all(!vec4<bool>(true, global0.b, global1.a.x, true))));
    global4 = array<i32, 15>();
    global3 = Struct_2(global3.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1655f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))), func_4(global0.d, ~(~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), arg_1.x))), ~u_input.a.x), var_0, var_0);
    global0 = Struct_3(1i, true, vec3<i32>(select(i32(-1i) * -61145i, global4[_wgslsmith_index_u32(1u << (arg_3 % 32u), 15u)], var_0.d.x) << (~(0u << (arg_3 % 32u)) % 32u), countOneBits(_wgslsmith_mod_i32(global0.a, global4[_wgslsmith_index_u32(4294967295u, 15u)] & global0.d.x)), -33070i), select(vec4<i32>(-1i) * -max(global0.d, global0.d), global0.d, !vec4<bool>(true, true, global0.b & false, all(vec4<bool>(global1.d.x, false, global3.e.a.x, var_0.a.x)))));
    return !(!vec2<bool>(var_0.a.x, select(true, all(global3.c.d), global1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 21810i;
    global2 = array<Struct_5, 6>();
    var var_1 = all(!(!func_5(!global3.a.a.x, vec3<f32>(global1.c, -960f, 1052f), -948f, func_1(300f, vec2<u32>(55652u, 41187u)))));
    global0 = Struct_3(_wgslsmith_div_i32(-1i, -45911i), true, vec3<i32>(2147483647i, firstTrailingBit(-29584i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), global0.c.zz), ~select(global0.d.x, 1i, global0.b))), select(-select(~global0.d, vec4<i32>(-2147483647i, -1i, global4[_wgslsmith_index_u32(82998u, 15u)], 1i), select(vec4<bool>(true, false, global1.d.x, false), vec4<bool>(true, global3.a.d.x, global1.d.x, false), vec4<bool>(true, global3.d.a.x, true, false))), ~select(_wgslsmith_add_vec4_i32(global0.d, vec4<i32>(global0.c.x, global4[_wgslsmith_index_u32(0u, 15u)], -36249i, -1i)), global0.d, !global3.e.d.x), true));
    let var_2 = global4[_wgslsmith_index_u32(u_input.a.x << ((~u_input.a.x >> (u_input.a.x % 32u)) % 32u), 15u)] & _wgslsmith_add_i32(global0.a, max(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(26149i, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), global0.d.wy)), -11524i));
    global2 = array<Struct_5, 6>();
    var_1 = reverseBits(~(-12134i)) > global4[_wgslsmith_index_u32(u_input.a.x & 1u, 15u)];
    var_0 = -32097i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~min(vec3<i32>(global4[_wgslsmith_index_u32(720u, 15u)], 2147483647i, var_2) >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), global0.d.xzz)), ((min(vec3<u32>(51653u, 70473u, 1u), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) >> (~vec3<u32>(55627u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) & vec3<u32>(1u, _wgslsmith_div_u32(u_input.a.x, 1u), 0u | u_input.a.x)) | countOneBits(~(~vec3<u32>(1u, 1u, u_input.a.x))), ~_wgslsmith_mod_vec4_i32(max(vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(u_input.a.x, 15u)], var_2, 21895i), vec4<i32>(21456i, -1i, -40128i, var_2)), countOneBits(~global0.d)));
}

