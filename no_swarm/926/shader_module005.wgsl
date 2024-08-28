struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_4,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

var<private> global1: bool;

var<private> global2: vec2<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_5(Struct_2(Struct_1(-1137f, u_input.a.xy >> (vec2<u32>(15984u, 4294967295u) % vec2<u32>(32u)), u_input.a, !all(vec3<bool>(true, false, true)), 422f), firstLeadingBit(vec4<i32>(i32(-1i) * -14184i, min(global2.x, u_input.a.x), ~17872i, ~arg_0.b)), select(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(27355i, 49040i, global2.x), u_input.a), vec3<i32>(u_input.a.x, 2147483647i, -19258i)), ~vec3<i32>(25084i, u_input.a.x, global2.x), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1609f, _wgslsmith_f_op_f32(arg_0.a.x - 1f), _wgslsmith_f_op_f32(-251f - _wgslsmith_f_op_f32(1714f + arg_0.a.x)), arg_0.a.x)), Struct_4(Struct_3(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(round(-398f)), _wgslsmith_div_f32(1000f, arg_0.a.x)), global2.x), u_input.a, max(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 0u, 12655u, 39393u), vec4<u32>(1u, 1u, 17891u, 22565u)), min(vec4<u32>(60236u, 23160u, 0u, 27968u), vec4<u32>(0u, 44454u, 1u, 3636u)), vec4<u32>(4294967295u, 0u, 1u, 0u)), countOneBits(vec4<u32>(0u, 1u, 4294967295u, 4294967295u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), min(firstTrailingBit(~max(0u, 12066u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 39368u, 73299u), vec3<u32>(12686u, 64045u, 1u))), vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, -38224i, global2.x, arg_0.b)));
    var var_1 = var_0;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 18u)];
    var var_3 = Struct_2(var_0.a.a, vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(abs(var_0.a.b), vec4<i32>(firstTrailingBit(16201i), max(1i, var_0.c.a.b), 9984i, _wgslsmith_add_i32(2147483647i, -1i))), min(i32(-1i) * -21603i, reverseBits(var_1.e.x)) >> (countOneBits(max(1u, var_0.d)) % 32u), ~(u_input.a.x & 6738i) >> (_wgslsmith_dot_vec2_u32(var_1.c.c.wy | vec2<u32>(1u, 54000u), var_0.c.c.wx) % 32u)), abs(abs(var_0.a.b.yxx ^ var_0.e.wzz)) << (select(var_1.c.c.wxy, ~vec3<u32>(var_1.c.c.x, 4294967295u, var_0.d), vec3<bool>(true, true, all(vec4<bool>(true, var_1.a.a.d, true, var_1.a.a.d)))) % vec3<u32>(32u)));
    global2 = select(~(-vec2<i32>(-2147483647i, -1i) & _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_0.b), var_0.e.yx)), vec2<i32>(_wgslsmith_mult_i32(reverseBits(var_3.a.c.x), -60730i), firstTrailingBit(countOneBits(var_1.c.b.x))), select(select(select(vec2<bool>(var_3.a.d, false), vec2<bool>(false, var_0.a.a.d), var_1.a.a.d), !vec2<bool>(var_0.a.a.d, var_0.a.a.d), true), vec2<bool>(var_3.b.x <= global2.x, var_0.a.a.d), false)) << (var_1.c.c.yx % vec2<u32>(32u));
    return !(!any(!(!vec2<bool>(var_3.a.d, var_3.a.d))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool) -> i32 {
    global1 = true;
    let var_0 = !select(vec4<bool>(98697u >= _wgslsmith_div_u32(17151u, arg_0.x), arg_2, true, false), select(vec4<bool>(true, true, 406f < arg_1.a.x, all(vec2<bool>(arg_2, arg_2))), !(!vec4<bool>(true, true, arg_2, false)), true), vec4<bool>(func_3(arg_1), all(vec2<bool>(false, arg_2)), true, arg_2));
    global0 = array<vec4<f32>, 18>();
    let var_1 = 56894u;
    global2 = vec2<i32>(33215i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(countOneBits(select(vec4<i32>(-2147483647i, global2.x, 2147483647i, 1076i), vec4<i32>(global2.x, u_input.a.x, global2.x, arg_1.b), arg_2)), _wgslsmith_div_vec4_i32(vec4<i32>(global2.x, global2.x, arg_1.b, u_input.a.x) | vec4<i32>(0i, u_input.a.x, -2147483647i, arg_1.b), vec4<i32>(arg_1.b, 3522i, -2147483647i, -1i))), u_input.a.x));
    return u_input.a.x;
}

fn func_1() -> Struct_4 {
    var var_0 = -u_input.a.x;
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) == 1u;
    var var_2 = Struct_2(Struct_1(683f, firstLeadingBit(min(abs(vec2<i32>(global2.x, 0i)), abs(u_input.a.yz))), vec3<i32>(max(u_input.a.x, 0i), abs(1i), ~func_2(vec3<u32>(47793u, 32087u, 4294967295u), Struct_3(vec3<f32>(734f, 550f, 943f), 33848i), true)), true, -1934f), vec4<i32>(1i, -(_wgslsmith_sub_i32(2147483647i, u_input.a.x) ^ u_input.a.x), max(select(_wgslsmith_sub_i32(-1i, -48437i), -2147483647i ^ global2.x, global2.x <= global2.x), -u_input.a.x >> (_wgslsmith_mult_u32(57951u, 0u) % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -58631i, u_input.a.x) | vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(global2.x, global2.x, 1i, global2.x))), ~u_input.a);
    let var_3 = vec3<f32>(1454f, var_2.a.e, 109f);
    let var_4 = 19482i == _wgslsmith_mult_i32(min(_wgslsmith_add_i32(~global2.x, firstTrailingBit(24386i)), global2.x), i32(-1i) * -global2.x);
    return Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3))), var_2.b.x), -countOneBits(reverseBits(u_input.a)) >> (vec3<u32>(1u, ~46394u, firstTrailingBit(47243u) >> (~13060u % 32u)) % vec3<u32>(32u)), vec4<u32>(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(26653u, 26773u, 105341u, 27405u), _wgslsmith_sub_vec4_u32(vec4<u32>(21164u, 4294967295u, 109768u, 56825u), vec4<u32>(0u, 0u, 18042u, 398u))), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(84745u, 4881u), 1u, 1u ^ select(4294967295u, 19419u, true)), reverseBits(1u)));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> vec2<bool> {
    global2 = vec2<i32>(_wgslsmith_mod_i32(select(~(~u_input.a.x), _wgslsmith_mult_i32(-12488i, u_input.a.x), !any(vec3<bool>(false, false, false))), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -32060i, -2147483647i, -86049i), vec4<i32>(1875i, arg_1, 43548i, -35164i)), 1i)), max(-1i, 17063i));
    let var_0 = !(!select(vec4<bool>(true, all(vec2<bool>(false, true)), 60849u != arg_0.c.x, false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1811f + arg_0.a.a.x))), u_input.a.yy, max(u_input.a, arg_0.b), _wgslsmith_f_op_f32(-arg_0.a.a.x) != _wgslsmith_f_op_f32(258f + -362f), arg_0.a.a.x), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global2.x, arg_1, arg_1), vec4<i32>(-4152i, 2147483647i, 12968i, global2.x)), -(vec4<i32>(39370i, arg_0.a.b, -12945i, u_input.a.x) >> (arg_0.c % vec4<u32>(32u)))), vec3<i32>(arg_1, 1i, 2147483647i ^ ~arg_0.b.x)), _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(~max(_wgslsmith_mult_u32(arg_0.c.x, 38752u), 70741u), 18u)])), Struct_4(arg_0.a, vec3<i32>(abs(1i), reverseBits(-20752i), _wgslsmith_mult_i32(arg_1, 1i)), arg_0.c), arg_0.c.x, -vec4<i32>(arg_1, global2.x & 0i, global2.x, func_2(~vec3<u32>(0u, arg_0.c.x, arg_0.c.x), func_1().a, var_0.x)));
    global1 = var_1.a.a.d;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1103f);
    return select(select(vec2<bool>(func_3(Struct_3(vec3<f32>(1916f, -1040f, var_1.c.a.a.x), -2147483647i)) & !var_0.x, true), vec2<bool>(var_0.x, true), var_0.zy), !select(vec2<bool>(false, false), select(vec2<bool>(true, false), !var_0.yx, vec2<bool>(var_0.x, var_0.x)), vec2<bool>(any(var_0.zx), any(vec3<bool>(var_0.x, var_0.x, var_1.a.a.d)))), var_0.zz);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_div_f32(arg_2.x, arg_1.a.x), _wgslsmith_div_vec2_i32(u_input.a.zx, ~(-(vec2<i32>(-32889i, 26195i) | vec2<i32>(-1i, arg_1.b)))), -u_input.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(986f - arg_1.a.x), u_input.a.xx, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 1i, arg_0), var_0.c), vec3<i32>(global2.x, global2.x, -27734i) | u_input.a), _wgslsmith_mod_vec3_i32(countOneBits(var_0.c), ~var_0.c), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-34012i, arg_0, u_input.a.x), u_input.a | vec3<i32>(13034i, 4118i, global2.x), vec3<i32>(-15781i, arg_1.b, -20981i))), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), var_0.a, false)), var_0.a))), _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.x, arg_0, arg_0, -1i), vec4<i32>(36383i, 29676i, 0i, -2995i))), -(vec4<i32>(-1i, global2.x, -1i, arg_0) ^ (vec4<i32>(-34035i, -55151i, u_input.a.x, 2147483647i) ^ vec4<i32>(-1i, arg_0, arg_0, -41077i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(var_0.c, var_0.c), _wgslsmith_mult_i32(u_input.a.x, arg_1.b), 0i), countOneBits(vec4<i32>(var_0.c.x, 8514i, u_input.a.x, -73023i)))), vec3<i32>(_wgslsmith_dot_vec2_i32(select(u_input.a.zy, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 7022i), vec2<i32>(global2.x, -23926i), u_input.a.xx), any(vec2<bool>(var_0.d, var_0.d))), ~countOneBits(var_0.c.yy)), ~(~func_1().b.x), 1i));
    let var_2 = _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a.x, firstTrailingBit(var_0.c.x)), max(-vec2<i32>(38661i, 1i), var_0.c.zx), true), select(~var_0.c.xz, _wgslsmith_add_vec2_i32(~vec2<i32>(1267i, var_1.a.b.x) | var_1.c.zy, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(19644i, var_1.c.x, -8566i), vec3<i32>(1i, arg_1.b, 0i)), select(66441i, -1i, arg_3))), !(!vec2<bool>(arg_3, arg_3))));
    global1 = true;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(701f + arg_1.a.x) - var_1.a.e), -525f));
    return _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -abs(var_1.b.zxy & vec3<i32>(arg_1.b, 0i, 1937i)), -(~(-u_input.a)) | ~var_1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(~min(~(~4294967295u), 1u)), 18u)];
    var var_1 = 22962i;
    let var_2 = 25170i;
    var_1 = 2147483647i;
    let var_3 = func_5(-(~(~(~var_2))), Struct_3(var_0.zzy, u_input.a.x), var_0.zzx, all(!func_4(func_1(), 1i)));
    global2 = var_3.zx;
    global2 = vec2<i32>(~(_wgslsmith_mult_i32(global2.x | global2.x, global2.x | global2.x) << ((func_1().c.x << (14057u % 32u)) % 32u)), ~2147483647i << (_wgslsmith_div_u32(39283u, ~func_1().c.x) % 32u));
    var var_4 = _wgslsmith_dot_vec3_i32(-var_3, countOneBits((select(u_input.a, var_3, vec3<bool>(true, true, true)) & -u_input.a) | vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -9738i), select(65005i, 15719i, false), u_input.a.x ^ 0i)));
    var var_5 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(min(var_0.yzy, vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(sign(var_0.x))))), u_input.a.x), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(9018i, 0i, global2.x), u_input.a)) | min(select(vec3<i32>(var_3.x, -1i, var_3.x), vec3<i32>(var_2, u_input.a.x, var_2), false), u_input.a), -min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 65164i), u_input.a), ~var_3)), vec4<u32>(min(_wgslsmith_mult_u32(func_1().c.x, 1u), 0u), func_1().c.x, select(countOneBits(1u), 4294967295u, false), ~31216u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))));
}

