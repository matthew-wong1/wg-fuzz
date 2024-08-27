struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-1i, 1i, -16527i, -356i, i32(-2147483648), -1i, 2147483647i, i32(-2147483648), 2147483647i, -24235i, 2147483647i, 2147483647i, -22678i, -11362i, 27055i, 0i, -1i, i32(-2147483648), -1i, 10144i, -35916i, 2147483647i, 1i, i32(-2147483648), 1i, -18629i, 1i, 1i);

var<private> global1: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_2, 28u)], u_input.a.x, arg_0.c.x), vec3<i32>(8843i, -37744i, 29079i)), vec3<i32>(u_input.a.x, 18685i, -5855i), vec3<i32>(-50924i, 1i, global0[_wgslsmith_index_u32(arg_1.x, 28u)])), u_input.a)) & _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.c, 0i, -3701i), abs(-arg_0.b.zyw ^ ~u_input.a));
    global1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(arg_1.x | arg_2, ~_wgslsmith_mult_u32(1u, arg_1.x))), 4294967295u ^ ~_wgslsmith_dot_vec3_u32(arg_1 | vec3<u32>(arg_2, 31266u, arg_1.x), _wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(15811u, 28840u, 36042u))));
    var var_1 = Struct_4(arg_3, ~vec3<i32>(i32(-1i) * -3892i, _wgslsmith_clamp_i32(~(-19030i), 1i, ~u_input.a.x), max(1i, 19326i)), vec2<bool>(false, !((arg_0.d.x && arg_0.d.x) & true)), arg_0, arg_0);
    global0 = array<i32, 28>();
    var var_2 = var_1.a;
    return select(_wgslsmith_mult_vec4_i32(reverseBits(abs(vec4<i32>(u_input.a.x, var_2.a, arg_0.b.x, -1i))), _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(arg_0.b, vec4<i32>(var_0.x, var_2.c, 1i, -2147483647i)), var_1.d.b)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_2, 28u)], arg_3.a, 5272i, 1i), vec4<i32>(-1i, var_2.a, var_0.x, -10340i)), vec4<i32>(arg_3.a, 5842i, ~arg_0.b.x, _wgslsmith_mult_i32(var_2.c, 20327i))) ^ arg_0.b, arg_0.d.x);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    return 2147483647i;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 28u)];
    global0 = array<i32, 28>();
    var var_1 = Struct_2(func_4(max(abs(global0[_wgslsmith_index_u32(4294967295u, 28u)] & 783i), _wgslsmith_dot_vec4_i32(vec4<i32>(10541i, -1i, 50464i, u_input.a.x), vec4<i32>(u_input.a.x, -2750i, global0[_wgslsmith_index_u32(20617u, 28u)], -1i))), Struct_2(abs(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2437f * -489f)), -1i), arg_0.ww, Struct_1(vec3<f32>(_wgslsmith_div_f32(1000f, -1071f), -971f, _wgslsmith_div_f32(-810f, 124f)), func_3(Struct_3(u_input.a.x, vec4<i32>(3965i, 15311i, 38219i, u_input.a.x), vec2<i32>(u_input.a.x, 41996i), arg_0), vec3<u32>(1u, 1u, 1u), firstTrailingBit(4294967295u), Struct_2(u_input.a.x, -588f, -22764i)), any(arg_0.wx), vec4<f32>(_wgslsmith_f_op_f32(ceil(790f)), -1326f, -643f, _wgslsmith_div_f32(-1193f, -1337f)))), _wgslsmith_f_op_f32(1013f + 1f), countOneBits(~(~global0[_wgslsmith_index_u32(~25309u, 28u)])));
    global1 = reverseBits(_wgslsmith_mult_u32(1u, ~(~(~22206u))));
    var var_2 = abs(~max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 77781u, 0u)), countOneBits(~vec4<u32>(1u, 0u, 0u, 0u))));
    return Struct_2(global0[_wgslsmith_index_u32(reverseBits(reverseBits(~var_2.x)) >> (_wgslsmith_sub_u32(var_2.x, firstLeadingBit(4294967295u)) % 32u), 28u)], -627f, u_input.a.x);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = arg_2.e.b.zw | arg_2.b.yx;
    var var_1 = reverseBits(var_0.x);
    var var_2 = arg_2.e.d.yxw;
    var_0 = ~abs(_wgslsmith_mult_vec2_i32(u_input.a.xz << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(~u_input.a.zy, u_input.a.xz)));
    let var_3 = arg_2;
    return max(~vec3<i32>(firstLeadingBit(~u_input.a.x), -18874i, _wgslsmith_dot_vec2_i32(~u_input.a.xy, arg_2.e.b.yy)), u_input.a);
}

fn func_6(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    var var_0 = select(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, 90813u, 76556u, 1u)), firstTrailingBit(firstTrailingBit(vec4<u32>(46180u, 6314u, 39439u, 0u)))), ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(82357u, 1u), vec2<u32>(47923u, 6362u)), _wgslsmith_div_u32(5006u, 44200u)), ~1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(29601u, 22670u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(104u, 0u, 1945u, 60836u)), ~0u), ~1u), vec4<bool>(false == all(vec2<bool>(true, true)), false, true, arg_1));
    let var_1 = !select(!select(!vec3<bool>(true, false, arg_1), !vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, true, arg_1)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, arg_1), !vec3<bool>(arg_1, arg_1, arg_1)), !vec3<bool>(true, var_0.x < var_0.x, arg_0.x >= global0[_wgslsmith_index_u32(4294967295u, 28u)]));
    let var_2 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 28u)], 1i), vec2<i32>(-33141i, u_input.a.x)), 0i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(14573i, u_input.a.x, arg_0.x, u_input.a.x), vec4<i32>(arg_0.x, global0[_wgslsmith_index_u32(32367u, 28u)], 0i, -18195i)))), _wgslsmith_sub_vec3_i32(arg_0, arg_0)), vec4<i32>(func_3(Struct_3(0i, ~vec4<i32>(arg_0.x, global0[_wgslsmith_index_u32(8712u, 28u)], -24397i, arg_0.x), min(vec2<i32>(6402i, u_input.a.x), vec2<i32>(-17193i, 2147483647i)), vec4<bool>(var_1.x, false, var_1.x, false)), ~min(var_0.zxx, vec3<u32>(var_0.x, var_0.x, 39435u)), var_0.x, Struct_2(firstLeadingBit(arg_0.x), _wgslsmith_f_op_f32(463f * -303f), _wgslsmith_add_i32(u_input.a.x, u_input.a.x))).x, -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 28u)], arg_0.x, u_input.a.x), u_input.a), arg_0), arg_0.x, abs(_wgslsmith_div_i32(u_input.a.x, 1i))), -((arg_0.xx ^ u_input.a.yz) & select(vec2<i32>(u_input.a.x, arg_0.x), vec2<i32>(61174i, arg_0.x), vec2<bool>(var_1.x, var_1.x))) >> ((var_0.wz >> (vec2<u32>(var_0.x, abs(1u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<bool>(any(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false), var_1), select(vec3<bool>(var_1.x, var_1.x, arg_1), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, false, arg_1)), var_1)), var_0.x > 1u, any(select(!var_1, select(var_1, var_1, var_1.x), !var_1)), arg_1));
    var var_3 = Struct_3(min(arg_0.x, arg_0.x), firstTrailingBit(-(var_2.b ^ var_2.b)) ^ vec4<i32>(-1332i, -2147483647i, -2147483647i, var_2.c.x), arg_0.yx, select(var_2.d, vec4<bool>(false, true, arg_1, true), false | !any(vec3<bool>(true, var_2.d.x, true))));
    global1 = _wgslsmith_add_u32(select(~(~_wgslsmith_mod_u32(28694u, var_0.x)), ~var_0.x & var_0.x, select(-2147483647i, var_2.a, all(vec4<bool>(true, arg_1, false, arg_1))) >= _wgslsmith_div_i32(2147483647i, -u_input.a.x)), firstLeadingBit(~(~var_0.x)));
    return 697f;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-41287i, u_input.a.x, abs(-47800i)), func_5(true, func_2(vec4<bool>(false, false, false, true)), Struct_4(Struct_2(49913i, 354f, u_input.a.x), u_input.a, vec2<bool>(true, false), Struct_3(1i, vec4<i32>(-15085i, 27213i, u_input.a.x, 0i), u_input.a.yy, vec4<bool>(true, true, false, false)), Struct_3(global0[_wgslsmith_index_u32(53416u, 28u)], vec4<i32>(10247i, global0[_wgslsmith_index_u32(0u, 28u)], u_input.a.x, u_input.a.x), vec2<i32>(-39818i, global0[_wgslsmith_index_u32(25609u, 28u)]), vec4<bool>(true, false, false, false)))), true), ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 0i, u_input.a.x), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 28u)], 11934i) << (vec3<u32>(47392u, 0u, 18648u) % vec3<u32>(32u)))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))));
    let var_1 = vec2<u32>(1u, 1u);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(func_3(Struct_3(2147483647i, vec4<i32>(u_input.a.x, u_input.a.x, -37678i, global0[_wgslsmith_index_u32(var_1.x, 28u)]), u_input.a.yy, vec4<bool>(true, true, true, false)), vec3<u32>(0u, 0u, 101041u), 0u, func_2(vec4<bool>(false, true, false, true))).x, _wgslsmith_add_i32(_wgslsmith_sub_i32(23366i, -1i), abs(1i)), _wgslsmith_div_i32(func_5(false, Struct_2(20055i, 611f, u_input.a.x), Struct_4(Struct_2(global0[_wgslsmith_index_u32(27426u, 28u)], 178f, u_input.a.x), u_input.a, vec2<bool>(true, true), Struct_3(0i, vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(34698u, 28u)], global0[_wgslsmith_index_u32(65091u, 28u)], 1795i), vec2<i32>(-19324i, u_input.a.x), vec4<bool>(false, false, true, true)), Struct_3(global0[_wgslsmith_index_u32(var_1.x, 28u)], vec4<i32>(-1i, global0[_wgslsmith_index_u32(81233u, 28u)], global0[_wgslsmith_index_u32(var_1.x, 28u)], u_input.a.x), vec2<i32>(48286i, 16211i), vec4<bool>(false, true, false, true)))).x, global0[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(var_1.x, 28u)], u_input.a.x, 0i) ^ vec4<i32>(8481i, global0[_wgslsmith_index_u32(0u, 28u)], 18419i, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, -25586i, global0[_wgslsmith_index_u32(54070u, 28u)], u_input.a.x))), 0i)), vec2<i32>(u_input.a.x, 0i));
    var var_3 = all(!(!select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), any(vec4<bool>(false, false, true, true)))));
    let var_4 = !(global0[_wgslsmith_index_u32(~var_1.x, 28u)] < _wgslsmith_mod_i32(i32(-1i) * -16043i, _wgslsmith_div_i32(-2147483647i, global0[_wgslsmith_index_u32(0u, 28u)]))) && !any(!select(vec2<bool>(false, false), vec2<bool>(true, false), true));
    return var_4;
}

fn func_7(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    global1 = abs(0u);
    let var_0 = ~4294967295u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(737f, 515f, arg_3.x)))))))), -firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, arg_2, u_input.a.x), vec4<i32>(u_input.a.x, 24871i, global0[_wgslsmith_index_u32(var_0, 28u)], global0[_wgslsmith_index_u32(32205u, 28u)]))) << (~(~vec4<u32>(28957u, 0u, 1u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)) < arg_3.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(arg_3))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_3.x, arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, true)) - 335f), _wgslsmith_f_op_f32(-arg_3.x), -2171f)));
    var var_2 = Struct_2(func_3(Struct_3(1i, abs(var_1.b) >> (select(vec4<u32>(8747u, var_0, 29703u, var_0), vec4<u32>(10900u, 45158u, var_0, var_0), true) % vec4<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 27630i), vec2<i32>(-38100i, var_1.b.x) << (vec2<u32>(var_0, 35545u) % vec2<u32>(32u))), !(!vec4<bool>(arg_1, false, arg_0, true))), vec3<u32>(~4294967295u, ~var_0 << (var_0 % 32u), ~var_0), 1u, Struct_2(-1i, _wgslsmith_f_op_f32(trunc(2389f)), i32(-1i) * -2147483647i)).x, -1431f, global0[_wgslsmith_index_u32(~4294967295u, 28u)] & arg_2);
    let var_3 = func_2(!select(!(!vec4<bool>(arg_1, true, false, arg_1)), vec4<bool>(var_1.c & true, all(vec3<bool>(false, arg_0, true)), true, !var_1.c), true));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_u32(func_7(func_1(), any(vec2<bool>(true, true)), select(-5086i, _wgslsmith_div_i32(914i, 13464i), true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(181f, -873f, -1789f, -315f) * vec4<f32>(1505f, 129f, -616f, -735f))))), ~(~_wgslsmith_add_u32(17492u, 221u)), _wgslsmith_mult_u32(~(~1u), ~(~144382u))) & 1u;
    global0 = array<i32, 28>();
    global1 = 12341u;
    global0 = array<i32, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1889f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f))))));
    var var_1 = -859f;
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(1849f, -1479f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1576f + var_0.x))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1040f, var_0.x) - vec2<f32>(var_0.x, var_0.x))))))));
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), -131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(min(-1408f, -999f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-32550i);
}

