struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 29>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(34528u, 45048u, 4294967295u), -2075f);

var<private> global3: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-403f, -722f), vec2<f32>(287f, -929f), vec2<f32>(-1065f, -412f), vec2<f32>(114f, 259f), vec2<f32>(-693f, 1000f), vec2<f32>(-753f, 1092f), vec2<f32>(-361f, -1966f), vec2<f32>(-172f, -1415f), vec2<f32>(348f, 461f), vec2<f32>(1125f, 2243f), vec2<f32>(-1363f, 1126f), vec2<f32>(-149f, 2740f), vec2<f32>(-1279f, 471f), vec2<f32>(-256f, -466f), vec2<f32>(330f, 1000f), vec2<f32>(155f, 1577f), vec2<f32>(546f, 998f), vec2<f32>(-1680f, 1253f), vec2<f32>(-721f, -459f));

var<private> global4: u32 = 11834u;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    global2 = Struct_1(global2.a, global2.b);
    global2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global2.a.x, 42151u) << (global2.a.yz % vec2<u32>(32u)), global2.a.zy), vec2<u32>(4294967295u, 60686u)), ~abs(~global2.a.x), abs(global2.a.x >> (48380u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1420f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + -756f)), _wgslsmith_f_op_f32(f32(-1f) * -533f))));
    var var_0 = select(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(18874u, 35034u, 4294967295u, 13022u) % vec4<u32>(32u))), vec4<i32>(u_input.a, -u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), select(2147483647i, u_input.a, true))) & min(vec4<i32>(-1i, 5858i, u_input.a, 0i), vec4<i32>(min(2443i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(38298i, u_input.a, 32794i, -1i), vec4<i32>(27365i, -2147483647i, -29795i, -2147483647i)), ~u_input.a, 0i)), max(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, -29912i, u_input.a)), ~vec4<i32>(1i, u_input.a, 11713i, u_input.a)), vec4<i32>(countOneBits(u_input.a), u_input.a | u_input.a, 18400i, i32(-1i) * -2147483647i)) >> ((~reverseBits(vec4<u32>(global2.a.x, 5980u, 4745u, global2.a.x)) << (vec4<u32>(global2.a.x, 4294967295u, ~global2.a.x, _wgslsmith_div_u32(93198u, global2.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<bool>(false, true, true, global2.b <= _wgslsmith_f_op_f32(global2.b + global2.b)), !vec4<bool>(all(vec3<bool>(true, false, false)), true, true, any(vec3<bool>(false, true, true))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), all(vec2<bool>(true, false)))));
    var_0 = _wgslsmith_add_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(-1i, var_0.x, ~var_0.x, abs(1i)))), vec4<i32>(min(4910i, 1i & -u_input.a), -_wgslsmith_add_i32(u_input.a, 1i), 22428i, abs(var_0.x)));
    global4 = countOneBits(49421u);
    return select(select(vec3<bool>(false, false, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), -699f > global2.b)), vec3<bool>(false, true, true)), select(vec3<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true)), any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), (~global2.a.x != countOneBits(global2.a.x)) != all(vec3<bool>(false, true, false))), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_4(any(arg_0.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-100f, arg_3.d.b))))), !(!func_3().x), ~(~arg_3.c), Struct_3(_wgslsmith_add_vec4_i32((arg_3.b & arg_2.b) | arg_3.b, arg_2.b), vec2<i32>(arg_2.b.x, 1i) | max(arg_2.b.wy, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, arg_3.e), arg_2.b.yw)), reverseBits(countOneBits(vec3<i32>(2147483647i, 59308i, -1i))), Struct_2(_wgslsmith_add_i32(arg_2.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(782i, u_input.a, u_input.a, arg_1), -arg_2.b), arg_3.c, Struct_1(select(vec3<u32>(1u, 19335u, global2.a.x), vec3<u32>(3427u, global2.a.x, arg_2.c.x), arg_0), -176f), -(~(-2147483647i))), arg_2.d));
    var var_1 = arg_3.c.yx;
    let var_2 = Struct_4(global2.b <= _wgslsmith_f_op_f32(273f * _wgslsmith_f_op_f32(f32(-1f) * -1096f)), -615f, 1u == _wgslsmith_sub_u32(max(var_0.e.e.a.x, 16599u), ~reverseBits(arg_3.d.a.x)), _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.d.a.x, 77999u, global2.a.x, 5599u) ^ arg_3.c, vec4<u32>(global2.a.x, 15390u, global2.a.x, 5379u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(40730u, var_0.d.x, 0u, var_1.x) ^ var_0.e.d.c, var_0.e.d.c), _wgslsmith_mult_vec4_u32(select(arg_2.c, vec4<u32>(20905u, var_0.d.x, var_0.d.x, 59814u), vec4<bool>(var_0.a, false, false, true)), vec4<u32>(4294967295u, var_1.x, global2.a.x, var_0.e.e.a.x)), !select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(false, var_0.a, arg_0.x, var_0.c), vec4<bool>(var_0.a, arg_0.x, arg_0.x, true)))), var_0.e);
    var var_3 = reverseBits(~var_2.e.a.x);
    let var_4 = firstLeadingBit(var_2.e.c.yy) << (vec2<u32>(var_1.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global2.a.x) | arg_3.d.a, _wgslsmith_add_vec3_u32(var_0.e.e.a, vec3<u32>(4294967295u, 18205u, 49325u)))) % vec2<u32>(32u));
    return 0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec2<u32>(global2.a.x, _wgslsmith_sub_u32(func_4(func_3(), ~arg_0.x, Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, 1i, arg_0.x), vec4<i32>(arg_1, arg_1, arg_0.x, arg_0.x)), reverseBits(vec4<i32>(arg_0.x, -2147483647i, -2147483647i, -2147483647i)), ~vec4<u32>(global2.a.x, global2.a.x, global2.a.x, 0u), Struct_1(vec3<u32>(43166u, global2.a.x, global2.a.x), arg_2.x), ~(-4270i)), Struct_2(~1120i, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, 6995i, arg_1, -2147483647i), vec4<i32>(-64642i, 2147483647i, arg_0.x, -315i)), ~vec4<u32>(1u, 29374u, 37216u, global2.a.x), Struct_1(vec3<u32>(1u, 91063u, 130247u), global2.b), _wgslsmith_div_i32(u_input.a, -38767i))), abs(countOneBits(37134u))));
    let var_1 = _wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(global2.b - arg_2.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-466f, global2.b)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -630f))))));
    var var_2 = Struct_1(~((min(vec3<u32>(13783u, var_0.x, var_0.x), vec3<u32>(global2.a.x, var_0.x, global2.a.x)) | firstLeadingBit(vec3<u32>(57600u, 0u, 4294967295u))) ^ global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) - _wgslsmith_f_op_f32(step(1475f, global2.b)))))));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0, min(vec2<i32>(-38744i, 7571i) ^ vec2<i32>(7616i, arg_0.x), abs(vec2<i32>(arg_0.x, 19672i)))), 1i, (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, u_input.a), vec2<i32>(-2147483647i, arg_0.x))) | (arg_0.x >> ((countOneBits(var_0.x) & (72473u >> (0u % 32u))) % 32u)), u_input.a);
    var var_4 = Struct_2(1i, var_3, vec4<u32>(var_2.a.x, 20718u, _wgslsmith_add_u32(~1u, var_0.x), _wgslsmith_div_u32(~4294967295u >> ((4294967295u ^ var_0.x) % 32u), global2.a.x)), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(global2.a.x, 92299u, var_0.x), select(vec3<u32>(var_0.x, 0u, var_2.a.x), var_2.a, false)) >> (global2.a % vec3<u32>(32u)), _wgslsmith_div_f32(2228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2204f - global2.b)))), u_input.a);
    return var_4.d.b;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    global0 = -149f;
    let var_0 = Struct_4(!select(!all(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true)), true), -266f, false, arg_2.c, global1[_wgslsmith_index_u32(1u << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.a.x, 12306u, arg_2.c.x), arg_2.c)) % 32u), 29u)]);
    global1 = array<Struct_3, 29>();
    let var_1 = Struct_4(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1236f))), var_0.a, arg_2.c >> (_wgslsmith_div_vec4_u32(var_0.e.d.c, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.e.d.c.x, 4294967295u, global2.a.x, global2.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(40087u, 0u, arg_2.d.a.x, 1u), vec4<u32>(30450u, global2.a.x, 36632u, arg_2.c.x)))) % vec4<u32>(32u)), Struct_3(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a, var_0.e.b.x, arg_1, arg_2.b.x)), -var_0.e.d.b, -vec4<i32>(var_0.e.b.x, var_0.e.c.x, arg_1, var_0.e.a.x)), vec2<i32>(var_0.e.a.x, var_0.e.c.x ^ ~(-2979i)), ~(-vec3<i32>(arg_1, 48342i, var_0.e.b.x)), var_0.e.d, var_0.e.e));
    global2 = Struct_1(vec3<u32>(arg_2.c.x, 4294967295u, global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(948f * _wgslsmith_f_op_f32(step(var_0.b, arg_3.x))), arg_2.d.b)));
    return Struct_2(_wgslsmith_mod_i32(0i, abs(-10351i)), vec4<i32>(i32(-1i) * -2147483647i, 1i, 41210i, ~(-u_input.a | _wgslsmith_div_i32(658i, var_1.e.a.x))), vec4<u32>(11334u, abs(var_1.d.x), 1u << (countOneBits(global2.a.x) % 32u), var_0.e.e.a.x >> (_wgslsmith_mod_u32(arg_2.c.x, 5350u) % 32u)) >> (arg_2.c % vec4<u32>(32u)), arg_2.d, reverseBits(-8459i));
}

fn func_1(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = vec2<i32>(-2147483647i, arg_0.a.x);
    let var_1 = func_5(_wgslsmith_f_op_f32(func_2(arg_0.b, ~((var_0.x << (1u % 32u)) << (~19188u % 32u)), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(arg_0.e.a, arg_0.e.a)), 19u)])), _wgslsmith_div_i32(-(_wgslsmith_clamp_i32(var_0.x, u_input.a, -1i) ^ -1i), 1i), arg_0.d, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -904f), -1098f, _wgslsmith_f_op_f32(f32(-1f) * -2010f), _wgslsmith_f_op_f32(-global2.b))), vec4<f32>(global2.b, _wgslsmith_f_op_f32(-847f - _wgslsmith_f_op_f32(exp2(global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1231f + global2.b)), 875f))));
    var var_2 = ~36516u;
    let var_3 = _wgslsmith_f_op_f32(min(-173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-523f, 209f, true))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1482f)) * _wgslsmith_f_op_f32(ceil(var_1.d.b)))))));
    var var_4 = func_3().yy;
    return arg_0.a.yy;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32((vec2<i32>(arg_0.x, -23082i) >> (firstTrailingBit(vec2<u32>(82132u, 85461u)) % vec2<u32>(32u))) | firstTrailingBit(vec2<i32>(u_input.a, -5265i)), vec2<i32>(~0i, 2147483647i)), func_5(_wgslsmith_f_op_f32(min(arg_1.e.b, _wgslsmith_f_op_f32(arg_1.d.d.b - _wgslsmith_f_op_f32(abs(global2.b))))), ~(-2147483647i), Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-10677i, 2147483647i, 8220i), arg_1.d.b.xyw), 1i), select(vec4<i32>(-8237i, arg_0.x, u_input.a, arg_0.x), vec4<i32>(arg_0.x, u_input.a, 0i, 41709i) & arg_1.a, vec4<bool>(true, true, true, true)), vec4<u32>(global2.a.x, 6679u ^ global2.a.x, arg_1.d.d.a.x, ~global2.a.x), arg_1.e, 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(-1000f, -1i, arg_1.d, vec4<f32>(arg_1.e.b, -891f, arg_1.d.d.b, arg_1.d.d.b)).d.b, _wgslsmith_f_op_f32(round(arg_1.e.b)), _wgslsmith_f_op_f32(-arg_1.d.d.b), _wgslsmith_f_op_f32(-arg_1.d.d.b)))).b.xx);
    global4 = global2.a.x;
    global3 = array<vec2<f32>, 19>();
    global3 = array<vec2<f32>, 19>();
    let var_1 = -845f;
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(~(~(~vec3<u32>(global2.a.x, global2.a.x, 1u))), -516f);
    global3 = array<vec2<f32>, 19>();
    var var_0 = Struct_1(~abs(select(vec3<u32>(global2.a.x, global2.a.x, 0u), global2.a, true)), _wgslsmith_f_op_f32(floor(global2.b)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1702f * -862f) * global2.b) + _wgslsmith_f_op_f32(-1000f + -1575f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b - var_0.b)))), _wgslsmith_f_op_f32(floor(global2.b))));
    let var_1 = func_6(-func_1(Struct_3(vec4<i32>(-55272i, u_input.a, -45409i, u_input.a), vec2<i32>(u_input.a, u_input.a), vec3<i32>(1i, 19045i, u_input.a), Struct_2(12187i, vec4<i32>(-2147483647i, 16659i, 2147483647i, 45681i), vec4<u32>(global2.a.x, 4294967295u, 1u, 4294967295u), Struct_1(vec3<u32>(57100u, var_0.a.x, global2.a.x), 254f), -3059i), Struct_1(vec3<u32>(0u, 6483u, 2665u), -446f))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x ^ var_0.a.x, _wgslsmith_mult_u32(1u, global2.a.x)), func_5(_wgslsmith_f_op_f32(-global2.b), -u_input.a, Struct_2(-9491i, vec4<i32>(-11078i, u_input.a, -56570i, u_input.a), vec4<u32>(0u, global2.a.x, var_0.a.x, 1u), Struct_1(vec3<u32>(149372u, global2.a.x, 5008u), -861f), 1i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-277f, 999f, var_0.b, global2.b)))).d.a.zy) % vec2<u32>(32u)), Struct_3(select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 47661i, u_input.a, -30301i), vec4<i32>(u_input.a, u_input.a, -7252i, u_input.a)), vec4<i32>(u_input.a, 1i, -2147483647i, -4671i) & vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), abs(~vec4<i32>(u_input.a, u_input.a, -2147483647i, -10807i)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), select(false, true, true))), ((vec2<i32>(-1i, -45261i) & vec2<i32>(u_input.a, 1i)) ^ (vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(var_0.a.x, 4294967295u) % vec2<u32>(32u)))) << ((~global2.a.xz & global2.a.xz) % vec2<u32>(32u)), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(u_input.a, 14763i, u_input.a)), Struct_2(14784i, vec4<i32>(-1i) * -vec4<i32>(-21849i, 0i, u_input.a, 2147483647i), vec4<u32>(var_0.a.x | var_0.a.x, 1u, var_0.a.x, 22655u), Struct_1(~vec3<u32>(1u, global2.a.x, var_0.a.x), _wgslsmith_f_op_f32(-var_0.b)), abs(u_input.a)), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(abs(var_0.b))), ~u_input.a, func_5(_wgslsmith_f_op_f32(f32(-1f) * -362f), func_5(662f, u_input.a, Struct_2(2147483647i, vec4<i32>(43406i, u_input.a, 20188i, 0i), vec4<u32>(4294967295u, global2.a.x, var_0.a.x, global2.a.x), Struct_1(global2.a, -830f), u_input.a), vec4<f32>(-1161f, var_0.b, var_0.b, global2.b)).a, Struct_2(u_input.a, vec4<i32>(u_input.a, 18030i, 25393i, u_input.a), vec4<u32>(23288u, 1u, var_0.a.x, 0u), Struct_1(vec3<u32>(var_0.a.x, 16252u, var_0.a.x), -1000f), -9899i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, -291f, global2.b, global2.b))), vec4<f32>(-941f, _wgslsmith_f_op_f32(1034f - var_0.b), 1f, -886f)).d));
    global4 = ~(~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(0i, 423f, u_input.a, ~abs(~var_1.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 1u, 9095u), var_0.a) % 32u)), var_1.a.x);
}

