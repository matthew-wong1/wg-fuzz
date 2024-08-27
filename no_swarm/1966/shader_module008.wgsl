struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 29908u);

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false, vec3<bool>(true, true, true), -403f, vec2<f32>(1000f, 125f), 106832u), Struct_1(true, vec3<bool>(false, true, true), 140f, vec2<f32>(275f, -2953f), 1u), Struct_1(false, vec3<bool>(false, true, false), -416f, vec2<f32>(888f, 1156f), 18268u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = select(vec4<bool>(true, false, true, u_input.d.x < -19305i), vec4<bool>(all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), !(any(vec2<bool>(true, false)) && true), true, ~u_input.a > _wgslsmith_mod_u32(firstLeadingBit(4294967295u), u_input.b >> (global0.x % 32u))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, true)))));
    let var_1 = vec4<i32>(-2147483647i, u_input.d.x, -abs(-26028i ^ u_input.d.x), 2147483647i) ^ (vec4<i32>(~_wgslsmith_sub_i32(-1i, u_input.d.x), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-2147483647i, u_input.d.x, -2147483647i), vec3<i32>(u_input.d.x, -23213i, u_input.d.x)), -vec3<i32>(u_input.d.x, u_input.d.x, 56802i)), u_input.d.x, u_input.d.x ^ _wgslsmith_div_i32(u_input.d.x, 1i)) | vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, ~u_input.d.x), u_input.d.x << (max(u_input.b, u_input.a) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, 1717i)), firstLeadingBit(_wgslsmith_add_i32(-53225i, 15377i))));
    global1 = array<Struct_1, 3>();
    let var_2 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(~21216u, global0.x), _wgslsmith_clamp_u32(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, global0.x) >> (vec3<u32>(global0.x, 51077u, 66234u) % vec3<u32>(32u)), select(vec3<u32>(u_input.a, u_input.a, u_input.c.x), vec3<u32>(13819u, 0u, global0.x), false)), u_input.a), ~u_input.c.x), var_1, var_0.yww, Struct_1(var_0.x, var_0.yyx, _wgslsmith_f_op_f32(-arg_0), vec2<f32>(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(arg_0, -858f), true)), _wgslsmith_f_op_f32(trunc(arg_0))), global0.x));
    var var_3 = vec3<bool>(!var_2.c.x, var_0.x, var_0.x);
    return ~abs(countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.x, 4294967295u, 4294967295u, global0.x)), vec4<u32>(u_input.c.x, 14888u, 1u, 1u))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    global0 = ~(vec3<u32>(~(~0u), func_3(arg_1.d.c), arg_1.d.e) << (select(vec3<u32>(27798u >> (1u % 32u), _wgslsmith_add_u32(0u, 82876u), firstLeadingBit(1u)), vec3<u32>(u_input.b, arg_3.x, 0u), arg_1.c.x) % vec3<u32>(32u)));
    var var_0 = arg_1;
    var var_1 = Struct_1(all(select(select(var_0.d.b, !vec3<bool>(arg_1.d.b.x, arg_1.d.b.x, true), vec3<bool>(var_0.d.b.x, true, arg_1.d.a)), select(vec3<bool>(arg_1.c.x, arg_1.d.b.x, var_0.c.x), !var_0.c, !var_0.d.b.x), vec3<bool>(!arg_1.d.a, all(vec2<bool>(true, false)), false))), arg_1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f * var_0.d.d.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.d.x, -1214f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.d))))), ~u_input.c.x);
    global1 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.d.x, arg_0, arg_2, var_0.b.x) ^ arg_1.b) ^ -select(var_0.b, vec4<i32>(arg_1.b.x, -29970i, 2147483647i, arg_2), arg_1.c.x), vec4<i32>(54061i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.b.x, arg_0, arg_0, var_0.b.x), reverseBits(var_0.b)), 2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-26618i, arg_1.b.x), vec2<i32>(var_0.b.x, arg_0)))) ^ abs(arg_0);
    return Struct_1(true, select(!select(!vec3<bool>(var_1.a, var_1.b.x, var_0.d.b.x), !arg_1.c, select(var_0.d.b, vec3<bool>(arg_1.d.a, true, true), var_0.d.b.x)), vec3<bool>(all(var_1.b.xx), !(false | var_0.c.x), true), select(vec3<bool>(any(vec4<bool>(true, var_1.a, var_1.a, var_1.b.x)), var_0.c.x, all(vec4<bool>(false, false, arg_1.d.b.x, true))), select(select(vec3<bool>(false, true, true), var_0.c, false), select(vec3<bool>(var_1.b.x, var_0.c.x, false), vec3<bool>(true, false, arg_1.d.a), var_1.b), var_0.d.a), arg_1.d.b.x)), -504f, _wgslsmith_f_op_vec2_f32(-var_1.d), arg_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_1(arg_0.a, vec3<bool>(arg_0.a, true, !(!arg_0.b.x & select(arg_0.b.x, false, false))), -1670f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d + _wgslsmith_f_op_vec2_f32(arg_0.d * arg_0.d))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, 985f) - _wgslsmith_div_f32(arg_0.d.x, arg_0.c)), _wgslsmith_f_op_f32(arg_0.c * arg_0.c))), max(u_input.a, firstLeadingBit(~4294967295u)));
    var var_1 = global0.zx;
    var var_2 = func_2(-35058i, Struct_2(~(~select(vec3<u32>(4294967295u, arg_2, 16977u), vec3<u32>(39594u, arg_2, 34397u), vec3<bool>(true, var_0.a, var_0.b.x))), vec4<i32>(_wgslsmith_div_i32(-arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 31318i, u_input.d.x, u_input.d.x), vec4<i32>(0i, 22877i, -2147483647i, arg_1.x))), -1i, u_input.d.x, 6570i), vec3<bool>(true, false, all(arg_0.b.zy) & var_0.a), func_2(u_input.d.x & arg_1.x, Struct_2(vec3<u32>(1u, 1u, u_input.b), -vec4<i32>(u_input.d.x, 2147483647i, arg_1.x, 1i), vec3<bool>(var_0.b.x, false, arg_0.b.x), Struct_1(arg_0.b.x, vec3<bool>(false, false, var_0.a), var_0.c, vec2<f32>(424f, -460f), 0u)), arg_1.x, global0.zx)), -arg_1.x, vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.e) >> (func_3(-431f) % 32u), select(firstLeadingBit(countOneBits(arg_0.e)), 1u, true))).e;
    let var_3 = Struct_2(_wgslsmith_add_vec3_u32(~select(vec3<u32>(1u, arg_0.e, 2425u), vec3<u32>(40487u, arg_0.e, var_1.x), arg_0.a) | firstTrailingBit(max(vec3<u32>(32299u, 0u, 131111u), vec3<u32>(global0.x, var_1.x, u_input.a))), select(vec3<u32>(1u, 4294967295u, 67336u) << (vec3<u32>(45975u, u_input.b, var_1.x) % vec3<u32>(32u)), reverseBits(vec3<u32>(38859u, 14861u, 87033u)), func_2(4773i, Struct_2(vec3<u32>(var_1.x, arg_0.e, 0u), vec4<i32>(44009i, arg_1.x, 38861i, u_input.d.x), arg_0.b, arg_0), -2147483647i, vec2<u32>(4294967295u, 4294967295u)).a) << (vec3<u32>(global0.x, countOneBits(68132u), global0.x) % vec3<u32>(32u))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -arg_1.x, u_input.d.x >> (var_0.e % 32u), 2147483647i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1.x, u_input.d.x, u_input.d.x, arg_1.x), vec4<i32>(-1i, arg_1.x, u_input.d.x, arg_1.x) & vec4<i32>(1933i, arg_1.x, arg_1.x, -9302i), vec4<i32>(u_input.d.x, -26542i, u_input.d.x, arg_1.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, -2147483647i, 1i, arg_1.x), vec4<i32>(arg_1.x, 8877i, u_input.d.x, -44023i))), firstLeadingBit(vec4<i32>(1i, -1i, -352i, -678i) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.a, 1u, arg_0.e), vec4<u32>(u_input.b, 0u, arg_0.e, 22216u)) % vec4<u32>(32u)))), var_0.b, arg_0);
    var_1 = vec2<u32>(123421u, global0.x);
    return -var_3.b;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.d.x, -(~0i), u_input.d.x, firstTrailingBit(1i)), -firstLeadingBit(countOneBits(vec4<i32>(0i, -1i, -1i, 29979i))) & firstTrailingBit(func_4(func_2(u_input.d.x, Struct_2(vec3<u32>(global0.x, 1u, u_input.a), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 0i), vec3<bool>(arg_0.b.x, false, false), global1[_wgslsmith_index_u32(67645u, 3u)]), 2147483647i, u_input.c), vec2<i32>(0i, -26022i) << (u_input.c % vec2<u32>(32u)), u_input.b >> (arg_0.e % 32u))));
    var var_1 = arg_0.b.x;
    let var_2 = select(!select(!vec4<bool>(false, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, any(vec2<bool>(arg_0.a, arg_0.a)), arg_0.b.x, all(vec4<bool>(true, arg_0.a, true, arg_0.b.x))), !vec4<bool>(arg_0.a, false, true, false)), select(vec4<bool>(true, true, true, (u_input.d.x ^ var_0.x) < _wgslsmith_div_i32(u_input.d.x, var_0.x)), vec4<bool>(true, select(true, func_2(u_input.d.x, Struct_2(vec3<u32>(arg_0.e, arg_0.e, 4294967295u), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, var_0.x), vec3<bool>(arg_0.b.x, arg_0.a, arg_0.a), Struct_1(false, vec3<bool>(arg_0.b.x, arg_0.a, false), arg_0.c, vec2<f32>(-227f, 1184f), 62559u)), u_input.d.x, global0.yy).b.x, func_2(u_input.d.x, Struct_2(vec3<u32>(0u, 76883u, 24614u), var_0, vec3<bool>(arg_0.b.x, true, arg_0.a), global1[_wgslsmith_index_u32(arg_0.e, 3u)]), var_0.x, vec2<u32>(global0.x, 35607u)).b.x), true, arg_0.b.x), vec4<bool>(true || func_2(1i, Struct_2(vec3<u32>(global0.x, u_input.a, arg_0.e), var_0, arg_0.b, global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), var_0.x, vec2<u32>(arg_0.e, u_input.a)).b.x, var_0.x < 48438i, all(select(vec3<bool>(arg_0.a, arg_0.b.x, false), vec3<bool>(arg_0.b.x, arg_0.b.x, false), arg_0.b)), arg_0.a)), !arg_0.a);
    let var_3 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(3055u, u_input.c.x, u_input.a) | (vec3<u32>(global0.x, global0.x, 1u) << (vec3<u32>(1u, u_input.c.x, global0.x) % vec3<u32>(32u))), ~firstTrailingBit(vec3<u32>(4294967295u, 37227u, 27494u))), select(~(~vec3<u32>(1u, u_input.c.x, global0.x)), max(abs(vec3<u32>(u_input.b, 44685u, 11165u)), ~vec3<u32>(u_input.b, u_input.b, u_input.c.x)), arg_0.b.x), vec3<u32>(u_input.c.x, arg_0.e, global0.x)), countOneBits(-vec4<i32>(u_input.d.x, u_input.d.x, -19112i, var_0.x)) << (abs(firstLeadingBit(~vec4<u32>(4294967295u, u_input.b, 52505u, u_input.c.x))) % vec4<u32>(32u)), select(var_2.zzx, vec3<bool>(all(!vec2<bool>(arg_0.a, arg_0.b.x)), -1000f < func_2(var_0.x, Struct_2(vec3<u32>(global0.x, 4294967295u, 79123u), var_0, vec3<bool>(false, true, false), Struct_1(var_2.x, arg_0.b, arg_0.d.x, vec2<f32>(arg_0.c, arg_0.d.x), 0u)), var_0.x, vec2<u32>(arg_0.e, 79796u)).c, true), var_2.xwx), arg_0);
    let var_4 = arg_0.d.x;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b, global0.x, 32345u, 4294967295u), vec4<u32>(0u, 1u, 1u, 22335u), vec4<bool>(false, false, true, true)), ~vec4<u32>(1u, 31403u, 1u, global0.x)), vec4<u32>(reverseBits(global0.x), 2464u, u_input.b, ~21934u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, _wgslsmith_mult_vec2_u32(u_input.c, u_input.c)), ~(vec2<u32>(u_input.a, 1u) ^ vec2<u32>(52655u, 4294967295u))), ~func_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, u_input.c.x, global0.x), vec4<u32>(0u, 19256u, u_input.a, u_input.b)), 3u)]));
    let var_0 = global1[_wgslsmith_index_u32(((global0.x << (max(u_input.b, 1u & global0.x) % 32u)) | func_2(48170i, Struct_2(vec3<u32>(u_input.b, 4294967295u, u_input.b), -vec4<i32>(1146i, u_input.d.x, u_input.d.x, 20278i), vec3<bool>(true, true, true), func_2(u_input.d.x, Struct_2(vec3<u32>(u_input.c.x, 60032u, global0.x), vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, 14994i), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(global0.x, 3u)]), u_input.d.x, u_input.c)), firstTrailingBit(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 23333u), global0.yz)).e) << (min(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, u_input.b, u_input.b), vec4<u32>(global0.x, 132128u, global0.x, global0.x)), min(_wgslsmith_div_u32(1u, global0.x), 26133u)), 28432u) % 32u), 3u)];
    var var_1 = -1000f;
    global1 = array<Struct_1, 3>();
    let var_2 = global1[_wgslsmith_index_u32(21630u, 3u)];
    let var_3 = 59743u;
    let var_4 = ~min(firstTrailingBit(_wgslsmith_mod_vec3_i32(func_4(Struct_1(true, vec3<bool>(false, var_2.a, false), -531f, var_2.d, 24036u), vec2<i32>(-1i, u_input.d.x), 4294967295u).wzz, -vec3<i32>(u_input.d.x, 0i, u_input.d.x))), -abs(firstTrailingBit(vec3<i32>(50023i, u_input.d.x, -46627i))));
    global1 = array<Struct_1, 3>();
    var var_5 = Struct_1(var_0.a, !(!vec3<bool>(all(vec4<bool>(var_2.a, var_0.a, false, var_2.b.x)), true, var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -129f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.c * var_2.c), var_2.c, all(var_0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1143f)), 937f), var_2.d) + vec2<f32>(_wgslsmith_f_op_f32(-781f + var_0.c), var_0.c)), abs(499u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~select(9855u, 4294967295u, true)), ~_wgslsmith_clamp_u32(29362u, 37391u, min(var_2.e, u_input.c.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_5.e, 1u, var_2.e), vec4<u32>(83359u, 0u, 1u, 22859u)), countOneBits(vec4<u32>(var_2.e, 117067u, 61457u, 67538u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_2.e, var_3, 0u), vec4<u32>(105623u, u_input.b, 56550u, var_2.e) << (vec4<u32>(62916u, var_3, 4294967295u, 53115u) % vec4<u32>(32u)), vec4<u32>(var_0.e, 1u, var_3, var_3))), var_3, global0.x));
}

