struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_5, 26>;

var<private> global2: array<u32, 23> = array<u32, 23>(0u, 102252u, 1u, 1u, 1u, 55911u, 42283u, 17683u, 4294967295u, 48446u, 29648u, 8666u, 1u, 0u, 35254u, 4054u, 1u, 1u, 4294967295u, 1u, 12511u, 0u, 19082u);

var<private> global3: array<u32, 14> = array<u32, 14>(38566u, 9999u, 0u, 27202u, 29500u, 75809u, 0u, 0u, 1u, 4294967295u, 36396u, 80715u, 34525u, 1u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    global1 = array<Struct_5, 26>();
    let var_0 = ~vec4<u32>(38410u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(32234u, global3[_wgslsmith_index_u32(26831u, 14u)]), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 44633u)), 23u)], ~20944u ^ select(1u, 51910u, true), ~global3[_wgslsmith_index_u32(firstTrailingBit(12033u), 14u)]) | abs(select(min(abs(vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 23u)], global2[_wgslsmith_index_u32(arg_0, 23u)])), vec4<u32>(global3[_wgslsmith_index_u32(arg_0, 14u)], 1u, 1u, 22322u) | vec4<u32>(arg_0, arg_0, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)])), ~_wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(arg_0, 14u)], arg_0, arg_0, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 14u)], 23u)]), vec4<u32>(global2[_wgslsmith_index_u32(8024u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], 7959u, 36602u)), true));
    var var_1 = _wgslsmith_mult_vec3_u32(var_0.wzx, _wgslsmith_sub_vec3_u32(~(~vec3<u32>(52591u, 24208u, 5858u)), vec3<u32>(~(~4294967295u), var_0.x << (1u % 32u), ~_wgslsmith_add_u32(arg_0, global3[_wgslsmith_index_u32(1u, 14u)]))));
    var var_2 = any(select(select(!vec4<bool>(false, false, global0.x, false), select(!vec4<bool>(arg_1, false, global0.x, true), vec4<bool>(true, true, global0.x, false), vec4<bool>(true, true, true, true)), false), !select(!vec4<bool>(global0.x, arg_1, true, arg_1), !vec4<bool>(true, true, true, arg_1), select(vec4<bool>(false, global0.x, arg_1, false), vec4<bool>(false, global0.x, false, global0.x), false)), !(!(!vec4<bool>(true, false, false, global0.x)))));
    let var_3 = _wgslsmith_f_op_f32(-1254f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return ~(-1i) & u_input.a;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_5 {
    let var_0 = ~vec3<u32>(13739u, 72149u, countOneBits(arg_1.x));
    global0 = !(!arg_0.c.yxz);
    var var_1 = var_0.zy;
    let var_2 = arg_0.e;
    var var_3 = vec2<u32>(4294967295u, abs(reverseBits(~var_1.x)));
    return Struct_5(true, ~(vec2<i32>(-1i) * -vec2<i32>(var_2.a, 44562i)), vec4<bool>(any(arg_0.c.zxz) && false, false, !(!arg_0.c.x), !global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, -128f, arg_0.d.x, arg_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.d.x, -732f, 816f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d), vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d) * arg_0.d)), Struct_1(-func_3(18386u, arg_0.a), 0i));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<f32>) -> vec2<i32> {
    var var_0 = arg_1.e;
    global3 = array<u32, 14>();
    var var_1 = vec3<i32>(u_input.a, -16139i, reverseBits(((var_0.b << (1u % 32u)) ^ ~(-38346i)) | 3120i));
    var_0 = func_2(func_2(func_2(func_2(func_2(Struct_5(false, arg_0.b, vec4<bool>(true, false, true, false), vec4<f32>(arg_1.d.x, arg_1.d.x, 630f, -2371f), arg_1.e), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 14u)], 3486u), vec2<i32>(-1i, -782i)), _wgslsmith_mod_vec3_u32(vec3<u32>(13684u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11071u, 23u)], 14u)], 23u)], 14u)], global3[_wgslsmith_index_u32(30455u, 14u)]), vec3<u32>(49916u, 33652u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 23u)], 23u)])), var_1.yz >> (vec2<u32>(global2[_wgslsmith_index_u32(3510u, 23u)], global3[_wgslsmith_index_u32(0u, 14u)]) % vec2<u32>(32u))), ~vec3<u32>(0u, 52278u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 23u)], 23u)], 23u)], 23u)], 23u)], 14u)]) & ~vec3<u32>(global3[_wgslsmith_index_u32(0u, 14u)], 38786u, global2[_wgslsmith_index_u32(19574u, 23u)]), arg_0.b), ~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 23u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25827u, 14u)], 23u)])), _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27612u, 14u)], 23u)], 65930u, 1u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61343u, 14u)], 14u)], 14u)]))), -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(27412i, 1i)) ^ vec2<i32>(reverseBits(arg_0.e.b), u_input.a ^ 0i)), vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(36887u, 23u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3492u, 14u)], 23u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(15911u), 23u)], 23u)]), 23u)], 14u)], ~(~1u) << (_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80945u, 23u)], 23u)], 151053u, 4294967295u), 23u)], 4294967295u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)]) % 32u), min(~1u, max(_wgslsmith_div_u32(0u, global3[_wgslsmith_index_u32(1u, 14u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(3202u, 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(58122u, 14u)], 23u)], 14u)], 14u)], 23u)], 14u)]), vec2<u32>(1u, global2[_wgslsmith_index_u32(2464u, 23u)])), 14u)]))), vec2<i32>(arg_1.b.x | ~(-38399i ^ var_1.x), 22549i)).e;
    var var_2 = global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(45635u, 23u)] << (~(~0u) % 32u), 1u, !any(select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, global0.x, arg_1.c.x, arg_1.c.x), func_2(arg_1, vec3<u32>(0u, 1u, 0u), vec2<i32>(54274i, -1i)).c.x))), 23u)];
    return firstTrailingBit(_wgslsmith_sub_vec2_i32(~(~(~arg_0.b)), vec2<i32>(firstTrailingBit(1i >> (1u % 32u)), arg_1.e.a)));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>) -> bool {
    var var_0 = min(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, arg_1.x), arg_1.x)) | -17979i, arg_1.x);
    var var_1 = countOneBits(countOneBits(arg_1));
    var var_2 = Struct_4(!global0.x, countOneBits(25722u), !((arg_0.a | (false & arg_0.a)) | (true | arg_0.c.x)), Struct_3(~arg_1.wxx, _wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)]), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(15300u, 14u)])) <= global3[_wgslsmith_index_u32(~24366u, 14u)], _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 23u)], 14u)], 23u)], 14u)], 30277u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4533u, 23u)], 14u)])), vec3<u32>(19973u, 4294967295u, 4294967295u)) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(33156u, 23u)], 0u, 26151u), vec3<u32>(global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 14u)], global2[_wgslsmith_index_u32(4294967295u, 23u)])) << (firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(0u, 14u)], 4294967295u, global3[_wgslsmith_index_u32(1u, 14u)])) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(min(~vec2<u32>(global3[_wgslsmith_index_u32(49486u, 14u)], global3[_wgslsmith_index_u32(85947u, 14u)]), vec2<u32>(6067u, global3[_wgslsmith_index_u32(94726u, 14u)]) << (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 14u)], 14u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11659u, 14u)], 14u)], 14u)], 14u)], 23u)]) % vec2<u32>(32u)))), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57649u, 23u)], 23u)], 23u)], 23u)], global2[_wgslsmith_index_u32(69460u, 23u)], global2[_wgslsmith_index_u32(13099u, 23u)], global3[_wgslsmith_index_u32(0u, 14u)])), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46340u, 23u)], 14u)], 14u)], 23u)], 23u)], 4294967295u, 4294967295u, 1u))), _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(min(vec3<u32>(29660u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 14u)], global3[_wgslsmith_index_u32(1u, 14u)]), vec3<u32>(9294u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 23u)], global2[_wgslsmith_index_u32(51626u, 23u)])), max(vec3<u32>(4294967295u, 22121u, global3[_wgslsmith_index_u32(24448u, 14u)]), vec3<u32>(36089u, 4294967295u, 1u))), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(3842u, 0u, 3152u), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 23u)])), vec3<u32>(45509u, global3[_wgslsmith_index_u32(1u, 14u)], 81908u) >> (vec3<u32>(0u, 34101u, 1472u) % vec3<u32>(32u))), ~global2[_wgslsmith_index_u32(25409u, 23u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(36994u, 1u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50989u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33906u, 23u)], 14u)], 14u)], 64105u, global3[_wgslsmith_index_u32(54150u, 14u)], 4294967295u)))));
    var var_3 = min(vec2<u32>(var_2.e.x, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 23u)], ~78233u)), var_2.e.zx | vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 14u)] << (var_2.d.e.x % 32u), 4294967295u));
    var var_4 = var_2.d;
    return any(vec3<bool>(true, all(!arg_0.c.yyw), !arg_0.a | false)) == arg_0.c.x;
}

fn func_1() -> f32 {
    let var_0 = vec4<bool>(false, !global0.x, !global0.x, global0.x);
    var var_1 = var_0.yy;
    var var_2 = Struct_3(_wgslsmith_add_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(5148i, -1i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), 1i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 2147483647i, ~u_input.a), countOneBits(abs(vec3<i32>(-36489i, -1i, u_input.a))))), func_5(Struct_5(false, func_4(func_2(global1[_wgslsmith_index_u32(43501u, 26u)], vec3<u32>(1950u, 75645u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 23u)], 23u)], 14u)]), vec2<i32>(-39363i, -2147483647i)), Struct_5(global0.x, vec2<i32>(-13194i, u_input.a), var_0, vec4<f32>(569f, -900f, 783f, 314f), Struct_1(25510i, u_input.a)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1000f), vec2<f32>(-738f, 918f))), vec4<bool>(false, true, -1i >= u_input.a, var_0.x || true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(851f, 1673f, -598f, -462f))) - vec4<f32>(-1020f, 394f, -409f, -1484f)), func_2(Struct_5(var_0.x, vec2<i32>(-1i, u_input.a), var_0, vec4<f32>(138f, 818f, 1000f, 665f), Struct_1(u_input.a, u_input.a)), reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21887u, 14u)], 23u)], 23u)], global3[_wgslsmith_index_u32(4294967295u, 14u)], 44080u)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i))).e), abs(vec4<i32>(func_2(Struct_5(true, vec2<i32>(u_input.a, -60341i), var_0, vec4<f32>(697f, 1338f, -1047f, -1000f), Struct_1(u_input.a, u_input.a)), vec3<u32>(global3[_wgslsmith_index_u32(83580u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], 55865u), vec2<i32>(1i, u_input.a)).e.b, i32(-1i) * -9172i, reverseBits(u_input.a), ~u_input.a))), _wgslsmith_mult_vec3_u32((~vec3<u32>(20980u, 4294967295u, 4294967295u) << (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 0u, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(reverseBits(global3[_wgslsmith_index_u32(12240u, 14u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 31535u, 9068u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 23u)], 42377u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], global3[_wgslsmith_index_u32(1u, 14u)])), 23u)], global2[_wgslsmith_index_u32(0u, 23u)] << (28388u % 32u)) % vec3<u32>(32u)), max(~vec3<u32>(3731u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32474u, 23u)], 23u)]), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(64574u, 14u)], 5323u, global3[_wgslsmith_index_u32(38618u, 14u)], global3[_wgslsmith_index_u32(38505u, 14u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 14u)], 14u)], 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 1u, 0u)), global3[_wgslsmith_index_u32(select(4294967295u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 14u)], true), 14u)]))), select(firstTrailingBit(min(vec2<u32>(1u, 1u), vec2<u32>(1u, global2[_wgslsmith_index_u32(1u, 23u)]) & vec2<u32>(global2[_wgslsmith_index_u32(97712u, 23u)], 22623u))), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)] & global2[_wgslsmith_index_u32(4294967295u, 23u)], max(0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 14u)])) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21810u, 14u)], 14u)], 1u, global3[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<u32>(global3[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32445u, 23u)], 14u)])), 1u) % vec2<u32>(32u)), select(!(!global0.yz), !select(global0.yy, global0.xx, var_0.x), true)), vec4<u32>(global3[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(4223u, 23u)]) | global3[_wgslsmith_index_u32(countOneBits(0u), 14u)], 14u)], global2[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(0u, 23u)]), 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)]), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(65852u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13133u, 14u)], 14u)]), vec2<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5447u, 14u)], 14u)], 23u)], 34772u)), vec2<u32>(37490u, 6554u) | vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 14u)]), countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 23u)], global2[_wgslsmith_index_u32(22856u, 23u)]))), _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(22125u, 23u)], 0u), vec2<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 14u)], 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 14u)], 14u)])) << (~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(52009u, 14u)], 14u)], 14u)], 23u)], 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]) % vec2<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(104f)), func_2(Struct_5(true, var_2.a.xy, vec4<bool>(false, true, var_2.b, false), vec4<f32>(121f, 1126f, -862f, 212f), Struct_1(u_input.a, 0i)), var_2.e.zwx, vec2<i32>(45878i, 32694i)).d.x, _wgslsmith_f_op_f32(624f + -1618f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 536f, -794f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-681f, -311f, 1216f) - vec3<f32>(402f, 1085f, 137f))))) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(445f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_2(Struct_5(true, vec2<i32>(-6657i, var_2.a.x), vec4<bool>(var_1.x, true, true, false), vec4<f32>(-1276f, -341f, -825f, 977f), Struct_1(u_input.a, 2147483647i)), var_2.e.zzw, var_2.a.yy).d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-337f)))))));
    global0 = !var_0.wyw;
    return 358f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(select(1498f, 1f, false | (global0.x || true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    global0 = !select(!func_2(global1[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44443u, 23u)], 23u)], 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11649u, 23u)], 14u)]), vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20366u, 14u)], 14u)], 23u)], 14u)], 4294967295u, 0u)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), true)).c.xzw, select(vec3<bool>(global0.x, global0.x, var_0.x > 1000f), func_2(Struct_5(false, vec2<i32>(23746i, u_input.a), vec4<bool>(global0.x, true, global0.x, false), vec4<f32>(1000f, -364f, -1603f, -1014f), Struct_1(1i, u_input.a)), ~vec3<u32>(global3[_wgslsmith_index_u32(0u, 14u)], 112715u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 14u)]), reverseBits(vec2<i32>(0i, -2147483647i))).c.zzw, (var_0.x < -1330f) | false), global0.x);
    global3 = array<u32, 14>();
    let var_1 = _wgslsmith_div_vec3_i32(select(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a << (global3[_wgslsmith_index_u32(8789u, 14u)] % 32u), u_input.a), -u_input.a, ~_wgslsmith_sub_i32(u_input.a, u_input.a)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 11568i), ~(~vec3<i32>(u_input.a, u_input.a, u_input.a))), select(select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), false), !vec3<bool>(true, global0.x, true), global0.x), select(!vec3<bool>(global0.x, false, true), !vec3<bool>(global0.x, false, global0.x), global0.x | false), func_2(Struct_5(global0.x, vec2<i32>(-2147483647i, -3640i), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<f32>(1062f, var_0.x, -1285f, 501f), Struct_1(-1i, 12518i)), ~vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 14u)], global3[_wgslsmith_index_u32(35786u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, -13584i), global0.xy)).a)), countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(-2869i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 24559i)) & (-vec3<i32>(u_input.a, u_input.a, 76547i) << (vec3<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18696u, 14u)], 23u)], 15001u, global3[_wgslsmith_index_u32(1u, 14u)]) % vec3<u32>(32u)))));
    let var_2 = vec3<bool>(select(all(!func_2(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20112u, 14u)], 26u)], vec3<u32>(4294967295u, 0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92686u, 23u)], 14u)]), var_1.xx).c.wz), global0.x, all(!vec2<bool>(global0.x, global0.x))), true, !func_5(func_2(Struct_5(true, var_1.zy, vec4<bool>(false, global0.x, false, global0.x), vec4<f32>(753f, -601f, -601f, var_0.x), Struct_1(-16211i, 2147483647i)), ~vec3<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 23u)], 68901u, 33997u), -var_1.xz), vec4<i32>(1i, u_input.a, -2147483647i, u_input.a)));
    var var_3 = Struct_2((~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(12452u, 14u)], 101397u) > select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 23u)], 14u)], 0u), 14u)], global2[_wgslsmith_index_u32(8905u, 23u)], true)) && ((true && (u_input.a < 2147483647i)) || true), Struct_1(firstTrailingBit(func_4(Struct_5(false, vec2<i32>(var_1.x, u_input.a), vec4<bool>(false, global0.x, true, true), vec4<f32>(1355f, 222f, var_0.x, var_0.x), Struct_1(u_input.a, u_input.a)), func_2(global1[_wgslsmith_index_u32(1u, 26u)], vec3<u32>(global3[_wgslsmith_index_u32(71627u, 14u)], 38794u, global3[_wgslsmith_index_u32(26402u, 14u)]), var_1.yy), var_0.zx).x), (func_4(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23428u, 23u)], 14u)], 14u)], 23u)], 23u)], 26u)], Struct_5(var_2.x, vec2<i32>(var_1.x, u_input.a), vec4<bool>(global0.x, global0.x, true, true), vec4<f32>(-1726f, -1287f, -448f, 1000f), Struct_1(var_1.x, 2147483647i)), var_0.yz).x ^ _wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x)) ^ ~35260i), -(-2147483647i | ~min(u_input.a, 40410i)));
    var var_4 = _wgslsmith_div_i32(i32(-1i) * -var_3.c, abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-83813i, -1i, 14209i)), var_1 << (vec3<u32>(0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38776u, 14u)], 23u)], 14u)], 0u) % vec3<u32>(32u))), _wgslsmith_mult_i32(12154i, ~u_input.a))));
    var var_5 = Struct_2(false && !(var_3.b.b == _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_3.c, 1i), var_1)), Struct_1(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_3.c, var_1.x, 2147483647i, 4137i)), reverseBits(vec4<i32>(-31834i, var_3.c, var_3.c, var_1.x)) & -vec4<i32>(69770i, 0i, var_3.b.b, u_input.a)), 2147483647i), ~min(22372i, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(943f)), -(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, 35997i, var_3.b.b, var_5.c), vec4<i32>(var_5.c, u_input.a, 0i, var_1.x)), vec4<i32>(var_1.x, var_3.b.b, -2147483647i, u_input.a) | vec4<i32>(2147483647i, -2147483647i, u_input.a, var_1.x)) ^ -(~var_3.b.b)));
}

