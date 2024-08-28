struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec3<u32>;

var<private> global2: vec3<i32> = vec3<i32>(-1i, -35649i, -50079i);

var<private> global3: array<Struct_3, 18>;

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = arg_0.a;
    let var_1 = (_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_clamp_i32(-1i, 0i, -1i)) << ((global1.x & arg_0.b.x) % 32u)) ^ select(max(-u_input.b.x, firstTrailingBit(~u_input.b.x)), ~min(global2.x, _wgslsmith_mod_i32(1i, global2.x)), true);
    var var_2 = (_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 26807i, 53544i), _wgslsmith_add_vec3_i32(vec3<i32>(global2.x, 6795i, var_1), vec3<i32>(u_input.b.x, var_1, -23292i))), vec3<i32>(var_1, u_input.c, 1i) << (vec3<u32>(global1.x, 0u, 26654u) % vec3<u32>(32u))) ^ max(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2262i, var_1, -2147483647i), vec3<i32>(-39484i, -2147483647i, -1684i))), ~(-vec3<i32>(-7140i, 1i, -20545i)))) >> (firstTrailingBit(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.e.x, u_input.d, u_input.a) | arg_0.b.wyw))) % vec3<u32>(32u));
    global2 = select(~firstLeadingBit(reverseBits(vec3<i32>(global2.x, global2.x, var_2.x))), vec3<i32>(_wgslsmith_div_i32(1i, -1i), var_2.x, _wgslsmith_mult_i32(20406i, u_input.c)), false) & select(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-6043i, -58730i, -13867i), -vec3<i32>(var_2.x, var_1, 0i), -vec3<i32>(0i, u_input.c, 1i)), -vec3<i32>(_wgslsmith_div_i32(global2.x, -27377i), -2490i, -u_input.b.x), select(arg_0.b.x & global1.x, 4294967295u, arg_0.b.x < 7407u) != (_wgslsmith_sub_u32(u_input.d, arg_0.b.x) & _wgslsmith_add_u32(global1.x, arg_0.b.x)));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-_wgslsmith_div_i32(-2147483647i, 13016i)), global2.x), countOneBits(vec2<i32>(_wgslsmith_add_i32(abs(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 22109i, -1i), vec3<i32>(var_1, -39942i, global2.x))), abs(var_2.x))));
    return min(vec3<i32>(-1i, _wgslsmith_mod_i32(firstLeadingBit(global2.x), var_2.x), -u_input.c), select(vec3<i32>(var_3, _wgslsmith_dot_vec2_i32(global2.yz, global2.zy), global2.x), countOneBits(-vec3<i32>(global2.x, 0i, 0i)), vec3<bool>(var_3 >= var_3, true, true))) << ((vec3<u32>(global1.x, ~abs(u_input.e.x), 0u) << (arg_0.b.yzw % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2388f)), -525f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f) + 118f), _wgslsmith_f_op_f32(f32(-1f) * -559f))));
    let var_2 = _wgslsmith_clamp_i32(i32(-1i) * -(~2147483647i), firstLeadingBit(u_input.b.x), global2.x);
    var var_3 = -(~(countOneBits(select(vec3<i32>(u_input.b.x, 0i, var_2), vec3<i32>(-2147483647i, var_2, u_input.c), arg_0.x)) & func_3(arg_1)));
    let var_4 = arg_0;
    return Struct_2(true, vec4<u32>(~global1.x & ~arg_1.b.x, arg_1.b.x, 1u, max(1u, reverseBits(arg_1.b.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-55086i, max(arg_1.d.x, arg_1.d.x)), -14499i), countOneBits(u_input.b.x | u_input.c)), firstLeadingBit(2147483647i), arg_1.d.x, _wgslsmith_mult_i32(-1i, u_input.b.x));
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(max(_wgslsmith_sub_i32(42568i, arg_1.d.x), var_0.x >> (arg_1.c.b.x % 32u)), select(u_input.b.x << (47747u % 32u), i32(-1i) * -35360i, true), select(var_0.x, 27509i, false) >> (global1.x % 32u), ~26736i), arg_1.b.a), arg_0.a);
    var var_2 = arg_1.b;
    global3 = array<Struct_3, 18>();
    var var_3 = global1.x;
    return ~(~_wgslsmith_mult_i32(min(_wgslsmith_mod_i32(var_2.a.x, 1i), -1i), var_0.x));
}

fn func_1() -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(u_input.e, ~u_input.e) >> (1u % 32u)), 18u)];
    let var_1 = ~func_4(func_2(vec2<bool>(any(vec3<bool>(var_0.b.b, false, true)), all(vec4<bool>(var_0.b.b, var_0.b.b, var_0.c.a, true))), Struct_2(!var_0.b.b, u_input.e)), Struct_3(_wgslsmith_f_op_f32(min(439f, _wgslsmith_f_op_f32(-var_0.a))), Struct_1(vec4<i32>(-1i, -2147483647i, global2.x, 1i), !var_0.c.a), func_2(vec2<bool>(true, true), var_0.c), vec3<i32>(var_0.d.x, var_0.b.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -2147483647i, -67210i, var_0.b.a.x), vec4<i32>(global2.x, global2.x, 2147483647i, 9433i)))));
    var var_2 = _wgslsmith_div_f32(268f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1242f) - -121f))) - -566f));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(step(var_0.a, 777f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a + -455f))), 200f)), var_0.a));
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.e.zxx, u_input.e.xyz), vec3<u32>(u_input.d, 4786u, 1u)) << (41534u % 32u), ~4294967295u, ~0u), ~select(var_0.c.b.xzx, var_0.c.b.xwy, select(select(vec3<bool>(false, var_0.b.b, var_0.c.a), vec3<bool>(var_0.b.b, var_0.b.b, false), var_0.c.a), vec3<bool>(false, var_0.c.a, var_0.b.b), !vec3<bool>(false, var_0.b.b, var_0.b.b))));
    return Struct_2(!(_wgslsmith_mod_u32(max(u_input.e.x, 0u), ~var_0.c.b.x) >= _wgslsmith_sub_u32(var_0.c.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 29638u), vec2<u32>(var_0.c.b.x, var_0.c.b.x)))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(var_0.c.b, vec4<u32>(~4294967295u, 1u, 0u, 61766u)), u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(~4294967295u, global1.x, min(u_input.a ^ u_input.e.x, ~0u), 0u));
    var var_1 = func_1();
    let var_2 = 1789f;
    global1 = var_0.zyw ^ vec3<u32>(~_wgslsmith_mod_u32(abs(var_1.b.x), _wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(global1.x, 4294967295u, var_0.x, global1.x))), u_input.e.x, max(_wgslsmith_add_u32(46841u, _wgslsmith_clamp_u32(4294967295u, global1.x, global1.x)), global1.x));
    global1 = vec3<u32>(64647u, 12607u, max(u_input.a, ~(~5775u)) | ~max(u_input.a, u_input.a));
    global3 = array<Struct_3, 18>();
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - 1787f), _wgslsmith_f_op_f32(1505f + 776f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 - -1279f), _wgslsmith_f_op_f32(select(-453f, -194f, false))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-618f, -1952f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1169f, 1979f)), vec2<f32>(357f, -656f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1102f) * vec2<f32>(var_2, var_2))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f * var_2) - _wgslsmith_f_op_f32(step(var_3.x, -154f)))), var_2));
}

