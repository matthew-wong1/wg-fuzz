struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: array<bool, 9> = array<bool, 9>(true, true, false, false, true, false, true, true, false);

var<private> global3: array<vec4<u32>, 19>;

var<private> global4: Struct_3 = Struct_3(vec3<f32>(-257f, -1000f, 756f), Struct_1(vec3<i32>(2586i, 35644i, i32(-2147483648)), vec3<bool>(false, false, false), vec4<i32>(0i, 0i, 2147483647i, i32(-2147483648)), 2147483647i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_0.zz;
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-760f, global4.a.x))), global4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * global4.a.x), global4.a.x), global4.b);
    global4 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.a.x - global4.a.x))))), -1117f), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global4.b.d, u_input.a, -1i, 1i), -vec4<i32>(29388i, global4.b.d, 1i, u_input.c)), reverseBits(~(-27256i)), ~64959i), vec3<bool>(all(select(vec4<bool>(true, global4.b.b.x, global4.b.b.x, global2[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(8134u, 9u)], true), var_1.b.b.x)), arg_2.b.x, arg_0.x > _wgslsmith_f_op_f32(1563f + -375f)), vec4<i32>(max(abs(-1i), arg_2.a.x), var_1.b.d, _wgslsmith_add_i32(u_input.b, -2147483647i), -1466i), _wgslsmith_div_i32(12953i, global4.b.c.x)));
    var_1 = Struct_3(arg_0.wyz, arg_2);
    var var_2 = var_1.b.c;
    return -abs(arg_2.c);
}

fn func_2() -> Struct_2 {
    let var_0 = !all(select(global4.b.b, global4.b.b, !global4.b.b.x));
    var var_1 = ~countOneBits(firstLeadingBit(1u));
    let var_2 = Struct_2(global4.b, global4.b, ~vec3<i32>(0i, -1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, global4.b.d, -5248i, -726i), func_3(vec4<f32>(global4.a.x, -430f, 268f, 1171f), false, Struct_1(global4.b.a, global4.b.b, vec4<i32>(-2147483647i, -23399i, -15705i, -34710i), 0i)))), any(global4.b.b));
    let var_3 = global4.a.x;
    let var_4 = global4.b;
    return Struct_2(var_2.b, Struct_1(min(var_4.c.xzz, var_4.a), select(vec3<bool>(!var_0, global4.b.b.x | global4.b.b.x, false), select(vec3<bool>(false, true, false), !var_2.a.b, global2[_wgslsmith_index_u32(~72207u, 9u)]), true), global4.b.c, ~var_2.b.c.x), -global4.b.a, var_2.b.b.x);
}

fn func_4(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_2(func_2().a, func_2().a, _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-global4.b.d, global4.b.c.x, _wgslsmith_dot_vec3_i32(global4.b.a, arg_0.a.a))), (vec3<i32>(1i, u_input.a, u_input.b) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) << (vec3<u32>(~1u, ~552u, 32089u) % vec3<u32>(32u)), global4.b.c.yxx), false);
    let var_1 = ~vec2<u32>(1u, _wgslsmith_mod_u32(1u, ~_wgslsmith_mult_u32(12683u, 45984u)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(global4.a.x, -1216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x * 532f)), _wgslsmith_f_op_f32(-1419f + global4.a.x)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(max(global4.a, _wgslsmith_f_op_vec3_f32(select(global4.a, _wgslsmith_f_op_vec3_f32(min(global4.a, _wgslsmith_f_op_vec3_f32(-global4.a))), vec3<bool>(arg_0.d, -1564f >= global4.a.x, arg_0.b.b.x))))), Struct_1(abs(func_2().b.c.yxz), vec3<bool>(!all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 9u)], true, global4.b.b.x)), true, false), vec4<i32>(0i, -u_input.c, _wgslsmith_sub_i32(0i, global4.b.d), select(-1i, arg_0.a.d, arg_0.a.b.x)) | -vec4<i32>(16960i, 2147483647i, 2147483647i, var_0.b.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b, min(arg_0.c.x, 1i), firstTrailingBit(arg_0.a.a.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 47027i, u_input.c), vec3<i32>(arg_0.c.x, var_0.b.a.x, 32166i)))));
    let var_4 = global4.b.c.yx | reverseBits(_wgslsmith_mod_vec2_i32(arg_0.a.a.xz, arg_0.c.yz));
    return ~min(((arg_0.a.c.x >> (47803u % 32u)) & var_0.b.c.x) << (~_wgslsmith_div_u32(0u, var_1.x) % 32u), u_input.b);
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    global1 = reverseBits(arg_2);
    global3 = array<vec4<u32>, 19>();
    let var_0 = global4.b.c.yy ^ -global4.b.c.yx;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global4.a.x, global4.a.x, -315f), arg_1, vec4<bool>(false, false, global4.b.b.x, global4.b.b.x))) * arg_1) + _wgslsmith_div_vec4_f32(vec4<f32>(global4.a.x, arg_1.x, arg_1.x, global4.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, arg_1.x, arg_1.x, arg_1.x)))))) - arg_1);
    global2 = array<bool, 9>();
    return func_2();
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = func_5(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, ~1u), 31818u, _wgslsmith_dot_vec2_u32(vec2<u32>(87517u, 45134u), vec2<u32>(4902u, 4294967295u)) | reverseBits(98151u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) + -1416f), -207f, -595f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(round(-266f))))), countOneBits(~4294967295u << (0u % 32u)) | firstTrailingBit(_wgslsmith_mult_u32(1u, 11138u)), !(func_4(func_2()) <= 1i));
    let var_1 = vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(79141u, 37170u, 0u), vec3<u32>(1u, 1u, 0u)))), firstLeadingBit(30939u)) << (~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(0u, 2053u))), ~vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    return _wgslsmith_dot_vec2_i32(~(~(vec2<i32>(u_input.a, var_0.a.a.x) ^ vec2<i32>(global4.b.c.x, 22846i)) >> (select(vec2<u32>(4294967295u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 0u), var_1), global2[_wgslsmith_index_u32(0u, 9u)] & true) % vec2<u32>(32u))), max(vec2<i32>(abs(arg_0.b.a.x), -countOneBits(-1i)), ~firstLeadingBit(vec2<i32>(-15383i, 23282i)) ^ firstTrailingBit(~var_0.a.a.xz)));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = 1231f;
    global3 = array<vec4<u32>, 19>();
    global2 = array<bool, 9>();
    global3 = array<vec4<u32>, 19>();
    var var_1 = Struct_3(_wgslsmith_div_vec3_f32(global4.a, _wgslsmith_f_op_vec3_f32(global4.a - global4.a)), func_5(_wgslsmith_div_u32(~reverseBits(24858u), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), ~(~1u), select(1489f == _wgslsmith_f_op_f32(select(-408f, var_0, false)), true, (arg_0.x != 25017u) || all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)])))).a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_6(abs(vec3<u32>(_wgslsmith_mult_u32(select(21046u, 4294967295u, true), 0u), _wgslsmith_mult_u32(1u, firstLeadingBit(0u)), abs(1u))), vec3<i32>(func_1(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, global4.a.x, global4.a.x) * vec3<f32>(global4.a.x, global4.a.x, global4.a.x)), Struct_1(global4.b.a, vec3<bool>(false, true, global2[_wgslsmith_index_u32(49136u, 9u)]), global4.b.c, global4.b.d))), ~(~u_input.a), 1i));
    let var_2 = vec3<bool>(all(select(!vec3<bool>(true, var_1.d, true), var_1.a.b, var_1.a.b)), false, true);
    var_1 = func_6(countOneBits(abs(vec3<u32>(1u, countOneBits(1u), _wgslsmith_mod_u32(36735u, 1u)))), global4.b.a);
    let var_3 = _wgslsmith_f_op_f32(-global4.a.x);
    let var_4 = global4.a.x;
    global1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-365f, 0u, vec3<i32>(_wgslsmith_mult_i32(var_1.b.c.x, reverseBits(1i)), func_5(~4294967295u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, -1995f, -366f, global4.a.x) + vec4<f32>(-1782f, -331f, var_3, var_3)), 4294967295u, var_2.x).a.d >> (~firstLeadingBit(84821u) % 32u), u_input.b), _wgslsmith_f_op_vec2_f32(-global4.a.xz), ~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(23222u, 10515u), vec2<u32>(1u, 4294967295u), countOneBits(vec2<u32>(34560u, 22508u)))));
}

