struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-33979i, -27550i, -11016i, i32(-2147483648), 1i, 2147483647i, -62830i, 5866i, -37509i, -22318i, -168i, 0i, 46861i, -1i, -1i);

var<private> global1: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-29223i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-6972i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 27569i), vec2<i32>(-22386i, i32(-2147483648)), vec2<i32>(45993i, i32(-2147483648)), vec2<i32>(6663i, 51330i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 14233i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 4358i), vec2<i32>(60173i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(31195i, 2147483647i), vec2<i32>(i32(-2147483648), -77042i), vec2<i32>(14661i, 21297i), vec2<i32>(19544i, -24099i), vec2<i32>(-18767i, 13443i), vec2<i32>(-22519i, -1207i), vec2<i32>(-1i, 32791i), vec2<i32>(2147483647i, 7170i), vec2<i32>(41579i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-39060i, -83813i));

var<private> global2: vec4<f32>;

var<private> global3: array<u32, 23> = array<u32, 23>(0u, 1u, 1u, 84826u, 4294967295u, 0u, 1u, 4833u, 0u, 4294967295u, 21238u, 1158u, 1u, 21265u, 18807u, 1u, 21609u, 16436u, 1u, 92190u, 4294967295u, 0u, 21834u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> f32 {
    var var_0 = -1i;
    global3 = array<u32, 23>();
    global0 = array<i32, 15>();
    var_0 = arg_1.b | firstTrailingBit(9949i);
    global1 = array<vec2<i32>, 24>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1015f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: u32) -> Struct_2 {
    global3 = array<u32, 23>();
    global2 = vec4<f32>(arg_1.c.b.d.x, global2.x, 394f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_3(arg_0.a, 10327i), arg_0, arg_1.d)))), -804f)));
    global0 = array<i32, 15>();
    var var_0 = firstLeadingBit(arg_1.a.c.zyy);
    let var_1 = select(select(select(vec4<bool>(true, any(vec4<bool>(false, true, arg_1.d, arg_1.d)), all(vec4<bool>(arg_1.d, arg_1.d, arg_1.d, arg_1.d)), true), vec4<bool>(arg_1.d | false, true, arg_1.d, arg_1.d), select(!vec4<bool>(arg_1.d, true, false, true), select(vec4<bool>(arg_1.d, false, false, arg_1.d), vec4<bool>(true, false, arg_1.d, true), false), true)), vec4<bool>(arg_1.d & arg_1.d, false, -270f >= global2.x, (arg_1.d || true) == (false == arg_1.d)), arg_1.d), vec4<bool>(any(vec4<bool>(true, true, true, true)) || all(!vec4<bool>(arg_1.d, arg_1.d, arg_1.d, arg_1.d)), !(arg_1.c.b.c.x < _wgslsmith_f_op_f32(-arg_1.c.b.c.x)), arg_1.d, !arg_1.d), !select(select(!vec4<bool>(arg_1.d, true, false, arg_1.d), vec4<bool>(true, arg_1.d, arg_1.d, arg_1.d), vec4<bool>(arg_1.d, arg_1.d, arg_1.d, true)), select(vec4<bool>(arg_1.d, true, arg_1.d, arg_1.d), select(vec4<bool>(true, true, true, arg_1.d), vec4<bool>(arg_1.d, true, true, false), arg_1.d), !arg_1.d), !vec4<bool>(true, arg_1.d, false, false)));
    return arg_1.c;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0.a.b;
    var var_1 = arg_0.c;
    let var_2 = arg_0.c;
    global0 = array<i32, 15>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c.b.c.x, global2.x, arg_0.c.b.d.x, var_2.b.c.x))) + vec4<f32>(1785f, 820f, var_2.b.c.x, 1475f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0.c.x, -205f, 1455f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-818f, 1454f, 267f, -331f) - vec4<f32>(var_0.c.x, var_0.d.x, -1109f, var_2.b.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.d.x, var_1.b.c.x, global2.x, global2.x) + vec4<f32>(var_0.c.x, 1046f, var_0.d.x, -489f)), true))))));
    return arg_0.a.b;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    global0 = array<i32, 15>();
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(u_input.a, arg_1.e), Struct_3(u_input.a, u_input.c.x), arg_0.x)), global2.x, arg_1.d.x, _wgslsmith_f_op_f32(-1272f * -381f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, arg_1.d.x, global2.x, 466f) - vec4<f32>(arg_1.c.x, -1723f, -385f, arg_1.d.x))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 197f, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1029f, 616f, global2.x, -123f)))))))));
    var var_0 = func_2(arg_2, Struct_4(Struct_2(2147483647i, Struct_1(~0i, arg_1.b, _wgslsmith_f_op_vec2_f32(-arg_1.c), vec2<f32>(-823f, -349f), ~global0[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(-34682i, arg_2.b, u_input.c.x, global0[_wgslsmith_index_u32(55753u, 15u)]), vec4<i32>(42467i, 1i, u_input.c.x, u_input.c.x))), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~u_input.a.x, 23u)], 15u)], Struct_2(-2147483647i & (1070i << (arg_2.a.x % 32u)), Struct_1(-62886i, vec4<i32>(-19595i, arg_1.b.x, arg_2.b, u_input.c.x), _wgslsmith_f_op_vec2_f32(arg_1.d * vec2<f32>(arg_1.d.x, -507f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-555f, 460f)), global0[_wgslsmith_index_u32(arg_2.a.x, 15u)] | global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], 15u)]), ~(u_input.c << (vec4<u32>(arg_2.a.x, global3[_wgslsmith_index_u32(arg_2.a.x, 23u)], 19425u, 67314u) % vec4<u32>(32u)))), !(!(true | arg_0.x))), _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(~u_input.a.x, global3[_wgslsmith_index_u32(select(0u, 106218u, true), 23u)]) ^ 48082u, _wgslsmith_mod_u32(max(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_2.a.x, 62498u), vec3<u32>(4294967295u, 51927u, 1u)), 23u)], 23u)]), _wgslsmith_clamp_u32(~1u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.a.x, 23u)], 23u)] << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.a.x, 23u)], 23u)] % 32u)))), 4294967295u).b.b.xz;
    var var_1 = func_4(Struct_4(func_2(Struct_3(firstTrailingBit(u_input.a), arg_2.b), Struct_4(func_2(Struct_3(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 46571u), global0[_wgslsmith_index_u32(0u, 15u)]), Struct_4(Struct_2(1i, arg_1, vec4<i32>(arg_2.b, -11950i, arg_2.b, u_input.c.x)), global0[_wgslsmith_index_u32(31340u, 15u)], Struct_2(1i, Struct_1(-55846i, arg_1.b, vec2<f32>(348f, global2.x), vec2<f32>(global2.x, 1000f), arg_2.b), vec4<i32>(-2147483647i, 0i, var_0.x, var_0.x)), arg_0.x), 25290u, u_input.b), arg_2.b, func_2(Struct_3(arg_2.a, var_0.x), Struct_4(Struct_2(arg_2.b, Struct_1(0i, u_input.c, vec2<f32>(-415f, arg_1.d.x), global2.xy, 0i), vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15330u, 23u)], 23u)], 15u)], arg_1.b.x, 0i, 2147483647i)), -2147483647i, Struct_2(-22138i, arg_1, vec4<i32>(var_0.x, var_0.x, 56730i, arg_2.b)), arg_0.x), 45407u, global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), false), countOneBits(arg_2.a.x) >> (~59852u % 32u), _wgslsmith_div_u32(max(arg_2.a.x, arg_2.a.x), ~global3[_wgslsmith_index_u32(4294967295u, 23u)])), -1i | (var_0.x << (~arg_2.a.x % 32u)), Struct_2(i32(-1i) * -39852i, arg_1, -u_input.c), false), select(arg_0, arg_0, arg_0.x), !all(select(arg_0, arg_0, !arg_0)), arg_0);
    global3 = array<u32, 23>();
    return Struct_2(abs(1i), func_2(Struct_3(arg_2.a, 0i), Struct_4(Struct_2(var_1.a, func_2(Struct_3(vec2<u32>(1u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.b, 15u)]), Struct_4(Struct_2(-10141i, arg_1, u_input.c), var_1.a, Struct_2(var_1.b.x, Struct_1(arg_1.b.x, vec4<i32>(2147483647i, arg_1.e, -40386i, 3866i), var_1.d, global2.zz, 24420i), vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 2147483647i, 2147483647i)), arg_0.x), arg_2.a.x, 1u).b, ~u_input.c), -var_0.x, func_2(arg_2, Struct_4(Struct_2(1i, Struct_1(arg_2.b, vec4<i32>(82963i, -2147483647i, -1i, arg_1.a), var_1.d, var_1.d, var_1.b.x), arg_1.b), -9795i, Struct_2(4406i, arg_1, arg_1.b), arg_0.x), ~u_input.a.x, 50599u), arg_0.x), _wgslsmith_mult_u32(~u_input.a.x | 1u, 7552u), ~_wgslsmith_add_u32(1u, u_input.a.x << (0u % 32u))).b, ~(~(~func_2(arg_2, Struct_4(Struct_2(u_input.c.x, arg_1, arg_1.b), 2147483647i, Struct_2(19705i, Struct_1(0i, vec4<i32>(arg_1.b.x, 2147483647i, 2147483647i, u_input.c.x), arg_1.d, vec2<f32>(1555f, arg_1.d.x), var_1.a), arg_1.b), arg_0.x), 19954u, u_input.a.x).b.b)));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = func_5(select(!vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), !select(true, true, false), true)), func_4(Struct_4(func_2(Struct_3(vec2<u32>(1u, 2665u), 0i), Struct_4(Struct_2(u_input.c.x, Struct_1(-56474i, vec4<i32>(1059i, u_input.c.x, global0[_wgslsmith_index_u32(u_input.b, 15u)], u_input.c.x), global2.zy, vec2<f32>(650f, -202f), -39861i), u_input.c), 1i, Struct_2(8265i, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], 15u)], -1399i, u_input.c.x, 1i), global2.ww, global2.ww, -15713i), vec4<i32>(u_input.c.x, -4782i, -1139i, u_input.c.x)), false), abs(23584u), ~u_input.a.x), ~select(global0[_wgslsmith_index_u32(4294967295u, 15u)], -1292i, false), func_2(Struct_3(u_input.a, -2147483647i), Struct_4(Struct_2(u_input.c.x, Struct_1(-1i, vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], 0i, u_input.c.x, u_input.c.x), global2.xy, global2.wx, global0[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 52129i, u_input.c.x, -1i)), global0[_wgslsmith_index_u32(0u, 15u)], Struct_2(-5928i, Struct_1(118555i, u_input.c, global2.wx, global2.yy, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec4<i32>(u_input.c.x, u_input.c.x, -1i, 1i)), false), global3[_wgslsmith_index_u32(u_input.b, 23u)] & 4294967295u, 100080u), true), vec3<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false))), false, true), false, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), Struct_3(u_input.a, 2147483647i));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x)), 1534f, 1418f);
    let var_1 = 76362u;
    let var_2 = 4294967295u;
    let var_3 = vec2<f32>(954f, 754f);
    return firstTrailingBit(countOneBits(0i) ^ var_0.b.e);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    var var_0 = -(~u_input.c.wx);
    global3 = array<u32, 23>();
    var_0 = ~reverseBits(vec2<i32>(abs(1i), 1i));
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_add_i32(arg_2.c.x, 444i);
    global3 = array<u32, 23>();
    return (vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u), vec4<u32>(50967u, 0u, global3[_wgslsmith_index_u32(47460u, 23u)], 52276u) >> (vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33384u, 23u)], 23u)], 23u)], 4294967295u, 50196u) % vec4<u32>(32u))), max(22650u, u_input.b), 26320u) | _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 1u), global3[_wgslsmith_index_u32(0u, 23u)], u_input.b, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(16457u, 23u)], u_input.b, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.b), ~vec4<u32>(1u, 0u, u_input.a.x, u_input.b)))) >> (vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, u_input.a.x), 23u)], ~(~23730u), firstTrailingBit(u_input.a.x), _wgslsmith_add_u32(~4294967295u, u_input.b)) % vec4<u32>(32u));
}

fn func_8(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_4 {
    global3 = array<u32, 23>();
    let var_0 = Struct_1(_wgslsmith_sub_i32(arg_1.x, 1i), u_input.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(arg_2.c, _wgslsmith_f_op_vec2_f32(trunc(func_4(Struct_4(Struct_2(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13471u, 23u)], 23u)], 15u)], arg_2, u_input.c), 1i, Struct_2(-1i, arg_2, vec4<i32>(arg_2.b.x, global0[_wgslsmith_index_u32(arg_3.x, 15u)], global0[_wgslsmith_index_u32(9527u, 15u)], u_input.c.x)), false), vec3<bool>(false, false, false), false, vec3<bool>(false, false, false)).c)))))), vec2<f32>(_wgslsmith_f_op_f32(-520f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - arg_2.c.x))), -360f), max(max(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_3.x, 23u)] & arg_0.x, 15u)], arg_2.b.x), arg_2.b.x) >> (~_wgslsmith_mod_u32(u_input.b, ~u_input.b) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) - -1133f), _wgslsmith_f_op_f32(func_3(Struct_3(arg_3.xz, global0[_wgslsmith_index_u32(u_input.b, 15u)]), Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(11214u, global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), arg_3.yz), u_input.c.x), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)))), _wgslsmith_f_op_f32(step(1f, 882f)), _wgslsmith_f_op_f32(-616f - -1255f)));
    let var_2 = Struct_3(_wgslsmith_add_vec2_u32(select(~u_input.a, u_input.a, all(vec2<bool>(true, true))), select((u_input.a >> (vec2<u32>(u_input.b, 69496u) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)])), u_input.a, !select(true, true, true))), _wgslsmith_div_i32(~_wgslsmith_sub_i32(arg_2.b.x, global0[_wgslsmith_index_u32(1u, 15u)]) ^ _wgslsmith_div_i32(~10745i, 2147483647i), 68877i));
    var var_3 = arg_2.b;
    return Struct_4(Struct_2(~_wgslsmith_dot_vec2_i32(countOneBits(var_3.xw), vec2<i32>(u_input.c.x, var_0.a)), Struct_1(-func_4(Struct_4(Struct_2(-2147483647i, arg_2, arg_2.b), -56001i, Struct_2(arg_1.x, Struct_1(var_0.b.x, vec4<i32>(global0[_wgslsmith_index_u32(arg_3.x, 15u)], 0i, u_input.c.x, u_input.c.x), var_0.c, global2.zz, var_3.x), var_0.b), false), vec3<bool>(false, false, true), false, vec3<bool>(true, false, true)).b.x, var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, arg_2.d.x) * global2.wy) + vec2<f32>(166f, arg_2.d.x)), arg_2.c, _wgslsmith_sub_i32(~var_2.b, -1651i)), var_0.b), 0i >> (select(arg_0.x, _wgslsmith_sub_u32(min(arg_0.x, 1u), 88976u << (0u % 32u)), true) % 32u), func_2(var_2, Struct_4(func_2(Struct_3(vec2<u32>(arg_0.x, 61656u), -1i), Struct_4(Struct_2(2147483647i, Struct_1(var_3.x, vec4<i32>(0i, arg_2.b.x, 2147483647i, arg_2.e), vec2<f32>(global2.x, var_0.d.x), vec2<f32>(160f, 394f), 1i), vec4<i32>(-1i, -29675i, 2147483647i, 14312i)), -2147483647i, Struct_2(-1i, Struct_1(0i, vec4<i32>(u_input.c.x, var_2.b, -39246i, arg_1.x), vec2<f32>(1261f, global2.x), vec2<f32>(var_1.x, -2281f), u_input.c.x), vec4<i32>(var_0.b.x, 2147483647i, -1i, -2147483647i)), true), abs(var_2.a.x), select(var_2.a.x, global3[_wgslsmith_index_u32(arg_0.x, 23u)], true)), _wgslsmith_mod_i32(u_input.c.x, abs(u_input.c.x)), Struct_2(2147483647i, var_0, vec4<i32>(arg_2.b.x, 1i, arg_1.x, var_0.a)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), 43470u, abs(_wgslsmith_sub_u32(min(u_input.b, global3[_wgslsmith_index_u32(4294967295u, 23u)]), ~0u))), (1i >= arg_1.x) | any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_8(func_7(Struct_1(u_input.c.x, _wgslsmith_div_vec4_i32(vec4<i32>(2770i, -11894i, 5977i, u_input.c.x), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], -97066i, 1i, -1i)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(204f, global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.yy, global2.zw)), global0[_wgslsmith_index_u32(0u, 15u)] ^ ~global0[_wgslsmith_index_u32(80387u, 15u)]), func_6(Struct_1(26676i, abs(u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(141f, -1241f)), _wgslsmith_f_op_vec2_f32(global2.wx * vec2<f32>(-1139f, 817f)), func_1(-485f))), func_2(Struct_3(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38319u, 23u)], 23u)]), _wgslsmith_add_i32(u_input.c.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 23u)], 15u)])), Struct_4(Struct_2(29354i, Struct_1(2147483647i, u_input.c, global2.wy, global2.zx, -2147483647i), vec4<i32>(47225i, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 15u)], 24885i)), 37126i, Struct_2(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 23u)], 15u)], Struct_1(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 23u)], 15u)], vec4<i32>(global0[_wgslsmith_index_u32(5213u, 15u)], 40173i, 14264i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 23u)], 15u)]), global2.wy, global2.zz, -15924i), u_input.c), true), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b), vec4<u32>(4471u, u_input.a.x, 876u, 0u), vec4<u32>(25918u, 15438u, u_input.b, 4000u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], 1u, u_input.b, 1u), vec4<u32>(81326u, global3[_wgslsmith_index_u32(39195u, 23u)], 62831u, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), abs(select(u_input.b, global3[_wgslsmith_index_u32(4294967295u, 23u)], true)))), abs(vec3<i32>(1i, -3445i, 1i) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, 36287u), vec3<u32>(u_input.b, u_input.b, 71883u)) % vec3<u32>(32u))), Struct_1(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 15u)], func_5(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(false, false, false)), func_5(vec3<bool>(true, true, true), func_2(Struct_3(vec2<u32>(49122u, u_input.b), global0[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_4(Struct_2(48065i, Struct_1(u_input.c.x, vec4<i32>(-1i, -12394i, u_input.c.x, 48112i), global2.zx, global2.xz, 50796i), vec4<i32>(u_input.c.x, 53954i, u_input.c.x, 3237i)), -40303i, Struct_2(global0[_wgslsmith_index_u32(1u, 15u)], Struct_1(66118i, u_input.c, vec2<f32>(global2.x, 364f), global2.zw, -18633i), u_input.c), false), 4294967295u, u_input.a.x).b, Struct_3(vec2<u32>(43359u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)])).b, Struct_3(vec2<u32>(global3[_wgslsmith_index_u32(0u, 23u)], 1u), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x))).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1000f)), vec2<f32>(func_5(vec3<bool>(true, true, true), Struct_1(u_input.c.x, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(48680u, 15u)], 0i, 1i), vec2<f32>(552f, global2.x), global2.wy, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 15u)]), Struct_3(u_input.a, u_input.c.x)).b.c.x, -322f), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.wxx | u_input.c.zwy, reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(35823u, 15u)], 2147483647i, 2147483647i))), max(vec3<i32>(11639i, -1i, u_input.c.x), u_input.c.xxz & u_input.c.wxz))), countOneBits(firstLeadingBit(~abs(vec3<u32>(global3[_wgslsmith_index_u32(68784u, 23u)], 4294967295u, 96161u)))));
    var var_2 = select(select(select(select(select(vec3<bool>(var_1.d, var_1.d, false), vec3<bool>(var_1.d, var_1.d, var_1.d), vec3<bool>(var_1.d, false, var_1.d)), !vec3<bool>(var_1.d, true, var_1.d), var_1.d), select(select(vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(var_1.d, var_1.d, var_1.d), vec3<bool>(false, true, var_1.d)), select(vec3<bool>(var_1.d, var_1.d, true), vec3<bool>(false, var_1.d, var_1.d), vec3<bool>(var_1.d, var_1.d, var_1.d)), true), all(select(vec3<bool>(var_1.d, var_1.d, var_1.d), vec3<bool>(var_1.d, var_1.d, false), vec3<bool>(true, false, true)))), !select(vec3<bool>(var_1.d, true, var_1.d), select(vec3<bool>(var_1.d, var_1.d, var_1.d), vec3<bool>(false, true, var_1.d), true), var_1.d), vec3<bool>(firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a.x, 23u)]) >= 2003u, var_1.d, !var_1.d)), !vec3<bool>(true, var_1.d, true), any(select(select(!vec2<bool>(var_1.d, true), select(vec2<bool>(var_1.d, false), vec2<bool>(false, var_1.d), vec2<bool>(false, var_1.d)), !vec2<bool>(false, var_1.d)), vec2<bool>(true, 2147483647i > global0[_wgslsmith_index_u32(u_input.b, 15u)]), var_1.d || true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.c.zyy, abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.c.x) << (~vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)), vec3<i32>(-1i >> (1u % 32u), ~u_input.c.x, 65665i), u_input.c.wzw)), _wgslsmith_f_op_f32(select(1316f, -463f, select(!(!var_2.x), true, var_1.d))));
}

