struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 45510i;

var<private> global1: i32 = -1i;

var<private> global2: array<vec4<u32>, 29>;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(~(~u_input.a) << (26121u % 32u), 10u)];
    var var_1 = vec4<u32>(21636u, _wgslsmith_mult_u32(abs(u_input.a), ~max(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_add_u32(u_input.a, u_input.b.x))), select(_wgslsmith_div_u32(~18621u, _wgslsmith_sub_u32(u_input.a, u_input.b.x)) & u_input.a, u_input.a, true), 54735u);
    return _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0 >> (~1u % 32u), 32751i) << (var_1.x % 32u), i32(-1i) * -arg_0, arg_0);
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) + _wgslsmith_f_op_f32(1476f * 1155f)))), _wgslsmith_f_op_f32(-717f + -562f)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(63419u, 1u, 36238u) | vec3<u32>(1u, u_input.b.x, 1u)), ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), true), ~vec3<u32>(7034u, 3333u, 52214u)), vec3<u32>(4294967295u, ~u_input.b.x, 55846u) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, 3504u), abs(vec3<u32>(u_input.b.x, u_input.a, 4294967295u))) % vec3<u32>(32u))), ~(vec3<u32>(62198u, ~4294967295u, ~9355u) << (~(~vec3<u32>(u_input.a, 49723u, 17842u)) % vec3<u32>(32u)))), 29u)];
    global1 = -46977i;
    let var_2 = !vec4<bool>(_wgslsmith_div_i32(abs(-10212i), _wgslsmith_dot_vec2_i32(vec2<i32>(-15547i, -20085i), vec2<i32>(-2147483647i, 1558i))) <= 0i, false, true, all(!vec2<bool>(arg_0, false)) && (arg_0 && true));
    var var_3 = var_1.zww;
    return select(~vec4<i32>(1i, 1i, 1i, 1i) & ~_wgslsmith_mult_vec4_i32(vec4<i32>(-54042i, 0i, 21412i, 22192i) << (global2[_wgslsmith_index_u32(u_input.b.x, 29u)] % vec4<u32>(32u)), vec4<i32>(-23859i, 20588i, 38067i, -2147483647i) >> (global2[_wgslsmith_index_u32(var_3.x, 29u)] % vec4<u32>(32u))), vec4<i32>(func_2(-2147483647i), 19195i, _wgslsmith_mod_i32(0i, 1i) << (0u % 32u), -2147483647i), vec4<bool>(false, false, arg_0, true));
}

fn func_1() -> i32 {
    let var_0 = -vec3<i32>(-((i32(-1i) * -16403i) << (min(u_input.a, u_input.b.x) % 32u)), func_2(_wgslsmith_add_i32(-1i << (u_input.a % 32u), 0i)), -(~min(-60701i, 36713i)));
    let var_1 = Struct_4(Struct_3(all(vec2<bool>(true, all(vec4<bool>(true, true, false, true))))), abs(_wgslsmith_sub_vec2_i32(var_0.yz, reverseBits(-var_0.yx))), Struct_2(_wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 38804i, 7951i, var_0.x), vec4<i32>(var_0.x, 3871i, var_0.x, -51245i))), -func_3(false), reverseBits(~vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), all(vec2<bool>(false, false))))), true, u_input.a);
    global2 = array<vec4<u32>, 29>();
    global0 = min(func_2(-1i ^ max(~(-19719i), -var_0.x)), var_0.x);
    global1 = ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(-min(1i, var_0.x), _wgslsmith_mult_i32(i32(-1i) * -1i, 1i)), ~(~var_1.b.x >> (34509u % 32u)));
    return 4787i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 10>();
    global1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), ~_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, 0i, 8074i, 4088i), -countOneBits(vec4<i32>(-2147483647i, -26143i, -22922i, -31328i))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1293f, -1320f) + _wgslsmith_f_op_f32(select(219f, -394f, true))) + -343f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1475f - -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1856f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-459f, -661f, false)) * _wgslsmith_f_op_f32(min(-1852f, 295f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1004f))));
    var var_1 = firstLeadingBit(reverseBits(vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -53259i, ~(-37568i)), func_1(), 1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(11234i, -27945i), vec2<i32>(-15353i, 2147483647i)), -1i, 1i))));
    var var_2 = _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(79582u, u_input.b.x), vec2<u32>(0u, u_input.b.x))), u_input.b));
    let var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, firstTrailingBit(11639u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<u32>(72765u, u_input.b.x, 27895u)), vec3<u32>(u_input.a, 66305u, 0u))), vec3<u32>(~(~u_input.b.x), u_input.b.x, u_input.a)), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 68359u, func_3(true), _wgslsmith_div_vec3_i32(var_1.yxw, firstTrailingBit(var_1.xxz | var_1.zxy)) >> (~(~min(vec3<u32>(u_input.b.x, u_input.a, u_input.a), vec3<u32>(u_input.b.x, 68490u, 0u))) % vec3<u32>(32u)));
}

