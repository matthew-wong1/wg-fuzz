struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: f32 = -778f;

var<private> global2: array<Struct_3, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> i32 {
    global2 = array<Struct_3, 10>();
    global1 = arg_1.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - arg_1.b) * arg_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1527f)), -1004f)))));
    var var_0 = Struct_3(arg_0.a, arg_1.c, Struct_2(arg_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -410f))), arg_0));
    var var_1 = !(!select(select(var_0.a.xx, var_0.b.a.zy, vec2<bool>(false, var_0.a.x)), vec2<bool>(!arg_0.a.x, false), arg_0.a.wz));
    return 1i;
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(true, true, true, false && all(vec4<bool>(true, true, true, true))), select(!all(global0[_wgslsmith_index_u32(17056u, 9u)]) != select(all(global0[_wgslsmith_index_u32(1u, 9u)]), select(true, true, true), arg_1 != arg_1), !(_wgslsmith_sub_i32(-2147483647i, arg_1) <= 26081i), !all(select(global0[_wgslsmith_index_u32(2960u, 9u)], global0[_wgslsmith_index_u32(39286u, 9u)], false))), u_input.b.zy, _wgslsmith_mult_i32(func_2(Struct_1(vec4<bool>(true, false, true, false), true, u_input.b.xx, arg_1, u_input.b.zyx), Struct_2(arg_0.wzy, -560f, Struct_1(vec4<bool>(true, true, false, false), false, u_input.b.yw, -1i, u_input.b.wwy)), ~arg_0.x) << (39200u % 32u), -1i), _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1299u, 134568u, u_input.b.x), vec3<u32>(u_input.a, 4294967295u, u_input.b.x), vec3<u32>(86552u, u_input.b.x, u_input.b.x)), vec3<u32>(0u, u_input.a, 14353u) ^ u_input.b.xwz), _wgslsmith_mult_vec3_u32(~select(u_input.b.ywz, vec3<u32>(u_input.b.x, 0u, 0u), vec3<bool>(true, false, false)), firstLeadingBit(vec3<u32>(u_input.b.x, 42783u, u_input.b.x)))));
    global2 = array<Struct_3, 10>();
    var var_1 = arg_0.yzx;
    global2 = array<Struct_3, 10>();
    var var_2 = Struct_2(~_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(var_0.d, var_1.x, 2147483647i)) | _wgslsmith_mult_vec3_i32(arg_0.yxy, vec3<i32>(arg_1, var_1.x, -44385i)), -vec3<i32>(-6344i, -1i, arg_0.x)), _wgslsmith_f_op_f32(524f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) - arg_2.x), _wgslsmith_f_op_f32(642f - _wgslsmith_f_op_f32(ceil(439f)))))), Struct_1(vec4<bool>(select(var_0.b, !var_0.a.x, true), !var_0.a.x | true, var_0.a.x, false), true, ~vec2<u32>(~var_0.c.x, var_0.c.x >> (4294967295u % 32u)), var_1.x, firstTrailingBit(min(vec3<u32>(var_0.e.x, var_0.c.x, 1u), var_0.e) >> (firstTrailingBit(vec3<u32>(19519u, u_input.b.x, var_0.e.x)) % vec3<u32>(32u)))));
    return Struct_2(countOneBits(~(vec3<i32>(-1i) * -var_2.a)), -1899f, var_2.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(reverseBits(arg_1.c.d), arg_1.c.d), ~1i);
    let var_1 = Struct_3(select(!arg_1.c.a, vec4<bool>(!arg_1.c.a.x, !arg_1.c.b, select(true, false, all(vec2<bool>(false, arg_1.c.b))), all(select(arg_0, vec2<bool>(arg_1.c.b, arg_0.x), arg_0.x))), (99185u & ~arg_1.c.e.x) >= (_wgslsmith_mult_u32(0u, u_input.a) << (_wgslsmith_sub_u32(1u, u_input.b.x) % 32u))), func_3(vec4<i32>(arg_1.c.d, min(-50147i, arg_1.c.d), _wgslsmith_add_i32(arg_1.c.d, 30443i), 2147483647i) | ~(~vec4<i32>(-1i, 10958i, arg_1.c.d, 6343i)), abs(var_0.x), vec2<f32>(arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))))).c, Struct_2(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -79638i, var_0.x)), arg_1.a), 523f, Struct_1(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), any(arg_1.c.a), vec2<u32>(arg_1.c.e.x << (66103u % 32u), 28216u), -arg_1.a.x, u_input.b.yxz)));
    let var_2 = select(select(var_1.b.a, select(var_1.a, arg_1.c.a, !vec4<bool>(arg_1.c.a.x, arg_0.x, arg_1.c.b, arg_1.c.b)), !func_3(vec4<i32>(21466i, -2147483647i, 0i, arg_1.c.d) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_mod_i32(arg_1.a.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.b, 2237f))).c.a), !arg_1.c.a, arg_1.c.b);
    var var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, var_1.c.c.c.x) & var_1.c.c.e.xx, arg_1.c.e.yy), func_3(vec4<i32>(-var_1.c.c.d, ~var_0.x, -2147483647i, _wgslsmith_mult_i32(var_1.b.d, -29502i)) & _wgslsmith_clamp_vec4_i32(~vec4<i32>(-13504i, arg_1.c.d, 7482i, arg_1.a.x), vec4<i32>(var_1.b.d, arg_1.a.x, -1i, -2147483647i), vec4<i32>(arg_1.a.x, var_1.b.d, var_1.c.c.d, var_0.x)), ~abs(func_3(vec4<i32>(-42114i, arg_1.a.x, var_1.c.a.x, var_1.b.d), arg_1.a.x, vec2<f32>(var_1.c.b, 435f)).c.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1186f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.b, var_1.c.b) * _wgslsmith_f_op_f32(trunc(arg_1.b))))).c.e.x);
    let var_4 = u_input.b;
    return Struct_1(var_2, 27744u >= var_4.x, ~(~(~(~vec2<u32>(u_input.b.x, var_3.x)))), -2147483647i, ~firstTrailingBit(~(~vec3<u32>(97543u, var_4.x, 1u))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<vec3<bool>, 9>();
    var var_0 = func_4(!vec2<bool>(false, all(vec2<bool>(true, true))), func_3(vec4<i32>(7288i >> (u_input.b.x % 32u), -24095i, 1i | select(-2954i, -9310i, true), firstLeadingBit(_wgslsmith_clamp_i32(-53621i, 0i, 2147483647i))), countOneBits(func_2(Struct_1(vec4<bool>(true, false, false, false), false, vec2<u32>(42210u, u_input.b.x), 0i, u_input.b.zzx), Struct_2(vec3<i32>(2147483647i, -2147483647i, 1i), arg_0.x, Struct_1(vec4<bool>(false, true, true, true), true, u_input.b.xz, 42766i, vec3<u32>(6342u, u_input.a, u_input.b.x))), -27918i) ^ -18716i), _wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(595f, arg_0.x), arg_0, true)), any(vec3<bool>(true, false, true))))), 176f);
    let var_1 = Struct_1(var_0.a, var_0.b, ~vec2<u32>(u_input.b.x, 41351u), -(~(-var_0.d)), ~vec3<u32>(var_0.c.x >> (~22305u % 32u), ~u_input.a, ~var_0.c.x));
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    return func_3(~vec4<i32>(i32(-1i) * -var_0.d, countOneBits(_wgslsmith_sub_i32(2147483647i, 0i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(36034i, var_1.d), vec2<i32>(3072i, -1i)), -19592i), 45957i, arg_0).c;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<f32> {
    var var_0 = 0u;
    var var_1 = Struct_1(vec4<bool>(func_3(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, 2147483647i, arg_2.d, arg_1.a.x), abs(vec4<i32>(arg_1.a.x, 2147483647i, arg_1.a.x, -1i))), ~arg_1.c.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.b) + vec2<f32>(arg_1.b, 416f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1325f, arg_1.b)))).c.b, all(select(vec4<bool>(arg_1.c.b, true, true, false), vec4<bool>(true, true, arg_3.x, arg_1.c.b), arg_1.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(649f * arg_1.b) - _wgslsmith_f_op_f32(sign(807f))) <= func_3(-vec4<i32>(8046i, 0i, arg_2.d, -1i), 28789i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2229f, 604f))).b, !any(func_1(vec2<f32>(1894f, arg_1.b)).a.xx)), all(vec2<bool>(arg_2.b, u_input.b.x > arg_1.c.c.x)), reverseBits(firstLeadingBit(arg_1.c.e.xz)), arg_1.c.d, reverseBits(~_wgslsmith_clamp_vec3_u32(~arg_1.c.e, vec3<u32>(arg_1.c.c.x, u_input.a, arg_1.c.c.x), ~u_input.b.yxx)));
    var var_2 = global0[_wgslsmith_index_u32(~(min(arg_2.e.x, ~(~arg_1.c.c.x)) << (select(firstLeadingBit(~arg_2.e.x), _wgslsmith_div_u32(arg_0, 0u), true) % 32u)), 9u)];
    let var_3 = Struct_3(vec4<bool>(!var_2.x, !arg_2.b, arg_3.x, select(true, arg_3.x, true)), Struct_1(vec4<bool>(!(true || var_2.x), var_2.x, arg_1.c.b, !(!arg_1.c.a.x)), true | any(global0[_wgslsmith_index_u32(0u, 9u)]), vec2<u32>(min(~arg_0, 49682u), min(abs(1u), arg_1.c.e.x)), ~arg_1.a.x, ~countOneBits(min(var_1.e, vec3<u32>(40776u, var_1.e.x, u_input.a)))), arg_1);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-func_3(vec4<i32>(arg_1.a.x, -12149i, var_1.d, var_3.c.a.x), 37794i, vec2<f32>(var_3.c.b, -1406f)).b), _wgslsmith_f_op_f32(abs(158f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-960f, var_3.c.b) - vec2<f32>(var_3.c.b, arg_1.b)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(361f, -548f) - vec2<f32>(-1304f, arg_1.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.b, -465f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -600f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-625f + -522f) * _wgslsmith_f_op_f32(f32(-1f) * -841f)), 1f))));
    var var_0 = !(1u != _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, 0u), u_input.a), u_input.b.x));
    global2 = array<Struct_3, 10>();
    global2 = array<Struct_3, 10>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(694f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(993f, -229f)) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f + 192f))))));
    let var_1 = vec2<u32>(0u, ~(71204u & u_input.b.x));
    var var_2 = vec4<bool>(true, true, all(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<bool>(true, true, true), all(vec2<bool>(false, false)))), select(!(!select(true, true, true)), true, true));
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, 0i, -1i, -6758i)) << (~(~u_input.b) % vec4<u32>(32u)), countOneBits(vec4<i32>(7680i, -14722i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 17274i, 14263i, 7538i), vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i)), abs(2147483647i)))), ~1i, ~(1i << (var_1.x % 32u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(200f, 1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_5(var_1.x, Struct_2(vec3<i32>(-16916i, 2147483647i, 42157i), 288f, Struct_1(vec4<bool>(var_2.x, var_2.x, false, false), var_2.x, vec2<u32>(4294967295u, u_input.a), -1947i, u_input.b.wwx)), func_1(vec2<f32>(-567f, -1281f)), select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, false), true))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(2060f, 1740f) - vec2<f32>(-1097f, 396f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1002f, 1544f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.x, var_4.x, -964f, -363f)))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<f32>(1214f, 496f, var_4.x, -687f))))))), func_3(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_3, -1i, -28288i, var_3), min(vec4<i32>(10109i, 54614i, var_3, var_3), vec4<i32>(var_3, var_3, var_3, -9243i)) << (vec4<u32>(u_input.a, u_input.b.x, u_input.a, 41252u) % vec4<u32>(32u))), ~2147483647i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_4.x, var_4.x)))))).a.x);
}

