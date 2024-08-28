struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 4>;

var<private> global2: array<u32, 3>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    global2 = array<u32, 3>();
    let var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 35047u, 1u), vec3<u32>(5230u, global2[_wgslsmith_index_u32(u_input.d, 3u)], 1u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.d, 2350u), vec3<u32>(u_input.d, 0u, u_input.d)), max(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44014u, 3u)], 3u)], 3u)], 1u), countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a, u_input.d)))), ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~u_input.d, 3u)], 3u)]), -1926f, reverseBits((abs(vec3<u32>(0u, 0u, 0u)) << (vec3<u32>(1u, 1u, u_input.a) % vec3<u32>(32u))) >> ((~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 6385u, global2[_wgslsmith_index_u32(u_input.d, 3u)]) | ~vec3<u32>(0u, global2[_wgslsmith_index_u32(1u, 3u)], u_input.d)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(min(143f, var_0.b)), _wgslsmith_f_op_f32(-var_0.b)))));
    let var_2 = ~select(var_0.c.x, ~1u, global0.x);
    global0 = select(select(select(select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, false, global0.x, global0.x), true), vec4<bool>(any(global0.yzz), true, global0.x, true), true), !(!vec4<bool>(global0.x, global0.x, global0.x, false)), true), !(!select(!vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), true)), !vec4<bool>(all(!vec4<bool>(true, global0.x, false, global0.x)), any(!vec4<bool>(global0.x, false, true, global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 95322u, 107844u), vec3<u32>(82997u, 1u, 5558u)) < ~var_0.a, global0.x));
    return firstTrailingBit(vec3<u32>(73905u, var_0.a, 0u >> (u_input.d % 32u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_2, var_2, 4294967295u), ~vec3<u32>(22109u, u_input.a, var_0.c.x)) % vec3<u32>(32u))) | (var_0.c << (~vec3<u32>(firstTrailingBit(44112u), var_2, 1u) % vec3<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(vec3<i32>(-(~(-2147483647i)), firstLeadingBit(~global1[_wgslsmith_index_u32(arg_2.x, 4u)]), ~firstTrailingBit(-34609i)) << (func_3() % vec3<u32>(32u)), 15721i);
    var var_1 = select(select(global0.xwz, global0.zzz, global0.zzw), select(!vec3<bool>(all(global0.yx), true, false), !(!global0.xyz), global0.x), true);
    global0 = !(!(!vec4<bool>(true, !arg_1.x, select(arg_1.x, var_1.x, arg_1.x), false)));
    global2 = array<u32, 3>();
    var var_2 = _wgslsmith_div_i32(-2147483647i, u_input.b.x);
    return var_0;
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_2(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -2147483647i), vec3<i32>(-2147483647i, u_input.c.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29238u, 3u)], 4u)])) | -3061i, select(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), ~global1[_wgslsmith_index_u32(1u, 4u)], global0.x)) >> (vec3<u32>(18471u, 4294967295u, countOneBits(~global2[_wgslsmith_index_u32(56339u, 3u)])) % vec3<u32>(32u)), ~_wgslsmith_dot_vec2_i32(-u_input.c ^ vec2<i32>(2147483647i, u_input.b.x), abs(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(38267i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17931u, 3u)], 4u)])))));
    let var_1 = func_2(978f, vec2<bool>(global0.x, false), vec2<u32>(~9617u, select(1u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.d, 3u)], u_input.a, global2[_wgslsmith_index_u32(u_input.a, 3u)]), global0.x)));
    var var_2 = vec4<i32>(global1[_wgslsmith_index_u32(26265u, 4u)], abs(u_input.b.x | select(i32(-1i) * -2631i, ~(-1i), global0.x)), var_0.a.x, i32(-1i) * -24185i);
    var_0 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-301f + -245f)))))), select(global0.yx, !global0.xy, select(select(select(global0.zx, vec2<bool>(global0.x, global0.x), global0.x), !global0.zx, !global0.x), !vec2<bool>(global0.x, global0.x), global0.xz)), ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(global2[_wgslsmith_index_u32(22287u, 3u)], 77359u)), vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.d, 50555u))));
    global1 = array<i32, 4>();
    return _wgslsmith_sub_vec3_i32(var_0.a, abs(_wgslsmith_div_vec3_i32((var_1.a ^ vec3<i32>(var_1.a.x, -1i, -29993i)) ^ -vec3<i32>(var_2.x, -59079i, global1[_wgslsmith_index_u32(4647u, 4u)]), vec3<i32>(-7850i, var_2.x, -22319i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), 2147483647i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -626f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1276f)))));
    var var_2 = func_2(_wgslsmith_f_op_f32(ceil(655f)), global0.yx, _wgslsmith_div_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(22686u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)]) | vec2<u32>(4294967295u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(65658u, 3u)], 1u, global2[_wgslsmith_index_u32(1u, 3u)])), vec2<u32>(0u, 7307u) | ~(~vec2<u32>(37113u, global2[_wgslsmith_index_u32(u_input.a, 3u)])))).a;
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2819f, 1000f, -246f)) * vec3<f32>(315f, 1203f, var_1.x))))));
    var var_3 = all(vec4<bool>(70492u < ~(u_input.a >> (u_input.d % 32u)), any(select(select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(false, global0.x, true, global0.x), true), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, global0.x, true, global0.x), global0.x), select(vec4<bool>(false, true, true, global0.x), vec4<bool>(global0.x, true, false, global0.x), false))), !global0.x, global0.x));
    let var_4 = Struct_1(21937u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_clamp_vec3_u32((vec3<u32>(23373u, global2[_wgslsmith_index_u32(23401u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)]) & vec3<u32>(u_input.d, 4294967295u, 4037u)) & (firstLeadingBit(vec3<u32>(4294967295u, u_input.d, 140856u)) & ~vec3<u32>(u_input.a, 11508u, u_input.d)), ~(~(vec3<u32>(global2[_wgslsmith_index_u32(11235u, 3u)], 34518u, 299u) | vec3<u32>(4294967295u, 1u, 4630u))), vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.d, 3u)], 15080u)), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.d & 4294967295u, 3u)], reverseBits(1u), 128297u), 67202u)));
    let var_5 = var_1.x;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(1i, -27301i), firstTrailingBit(46132i), _wgslsmith_mod_i32(0i, -12518i)), var_0.a), -(~reverseBits(-vec3<i32>(-1i, global1[_wgslsmith_index_u32(43695u, 4u)], -1i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-439f, -130f, var_1.x, -1120f))))))), var_4.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_4.a, 0u, 1u, var_4.a), vec4<u32>(21778u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 16127u, 95755u)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, var_4.c.x, u_input.d, 1u), vec4<u32>(1u, 4294967295u, u_input.a, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(44677u, 3u)], 8709u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61077u, 3u)], 3u)]), ~vec4<u32>(21143u, u_input.a, 1u, global2[_wgslsmith_index_u32(1u, 3u)]))) << (vec4<u32>(_wgslsmith_sub_u32(abs(28991u), var_4.a), var_4.a, firstLeadingBit(var_4.a) | 46799u, 5032u) % vec4<u32>(32u)));
}

