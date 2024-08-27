struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true));

var<private> global1: vec2<i32> = vec2<i32>(1i, i32(-2147483648));

var<private> global2: array<vec3<bool>, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(arg_0.x, 28u)];
    let var_1 = any(!select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x)), vec2<bool>(true, true), var_0.zx), var_0.yz, var_0.x));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1259f)))))), -(~global1.x));
    let var_3 = _wgslsmith_f_op_f32(exp2(var_2.a));
    var var_4 = Struct_5(_wgslsmith_f_op_f32(sign(var_3)), _wgslsmith_mod_i32(-(~(global1.x << (u_input.a % 32u))), global1.x));
    return _wgslsmith_f_op_f32(max(var_4.a, 704f));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_5) -> f32 {
    global2 = array<vec3<bool>, 28>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a - arg_1), 666f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, 1u))))));
    global2 = array<vec3<bool>, 28>();
    let var_1 = true;
    var var_2 = -vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(-36145i, arg_2.b, global1.x, 22617i), vec4<i32>(arg_0.x, arg_0.x, arg_2.b, global1.x), global0[_wgslsmith_index_u32(u_input.a, 27u)])), reverseBits(-vec4<i32>(-2147483647i, global1.x, -2147483647i, -1i))), _wgslsmith_mult_i32(reverseBits(firstTrailingBit(arg_0.x)), -(-2147483647i << (u_input.a % 32u))), 1i, 0i);
    return _wgslsmith_f_op_f32(trunc(arg_2.a));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(firstTrailingBit(-global1.x), 10154i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -754f)), _wgslsmith_f_op_f32(-arg_0.d.b.x))), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b.x)), 18182i))));
    let var_1 = true;
    global2 = array<vec3<bool>, 28>();
    let var_2 = arg_0.d.b.x;
    let var_3 = arg_0.a;
    return vec2<u32>(~(~(var_3.x << (arg_0.a.x % 32u))), ~85984u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec4<i32> {
    global0 = array<vec4<bool>, 27>();
    let var_0 = vec4<bool>(true && (select(true, 2147483647i > global1.x, true) || true), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1022f - -1000f)))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -354f))), _wgslsmith_f_op_f32(-474f + _wgslsmith_div_f32(418f, -1398f)))), true);
    var var_1 = ((vec4<i32>(0i, global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, arg_0.x), arg_0.zx), -1i) | max(countOneBits(vec4<i32>(-15109i, -22832i, arg_0.x, -46746i)), -vec4<i32>(1i, 2147483647i, 2147483647i, 8061i))) ^ ~abs(abs(vec4<i32>(2279i, global1.x, 2147483647i, -2147483647i)))) << (vec4<u32>(~(countOneBits(4294967295u) & max(arg_1.x, u_input.a)), u_input.a << (_wgslsmith_mod_u32(24493u, ~arg_1.x) % 32u), func_1(Struct_4(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, u_input.a), Struct_2(vec2<i32>(1i, 2147483647i), 4294967295u, global1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(47412u, 36869u, arg_1.x, 0u), vec4<u32>(arg_1.x, 4294967295u, 23786u, u_input.a)), Struct_3(Struct_1(var_0.x, 1001f, vec2<f32>(-358f, -466f), vec4<i32>(global1.x, 2147483647i, arg_0.x, arg_0.x)), vec3<f32>(924f, 969f, 127f), vec4<i32>(0i, 2147483647i, 47741i, 27975i), var_0.x, Struct_2(vec2<i32>(global1.x, -2147483647i), 48063u, global1.x))), ~(~arg_1.x), vec2<u32>(~arg_1.x, 8878u)).x, firstTrailingBit(u_input.a) | (arg_1.x >> (~4294967295u % 32u))) % vec4<u32>(32u));
    let var_2 = Struct_3(Struct_1(true, -423f, vec2<f32>(-579f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-610f, -814f, true))))), _wgslsmith_div_vec4_i32(vec4<i32>(~arg_0.x, _wgslsmith_div_i32(arg_0.x, var_1.x), global1.x, -2147483647i), countOneBits(vec4<i32>(arg_0.x, var_1.x, 41457i, 44132i)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-526f, 876f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1777f + -1235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a, u_input.a, 50218u))))))), select(~(_wgslsmith_mult_vec4_i32(vec4<i32>(7513i, var_1.x, 2147483647i, global1.x), vec4<i32>(0i, 53158i, -14864i, -29133i)) >> (countOneBits(vec4<u32>(0u, 38476u, u_input.a, 1u)) % vec4<u32>(32u))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, arg_0.x, var_1.x, arg_0.x) >> (vec4<u32>(arg_1.x, u_input.a, arg_1.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, global1.x, 2147483647i, arg_0.x), vec4<i32>(-2147483647i, 0i, 16270i, -51048i))), vec4<i32>(var_1.x, 1i, -var_1.x, var_1.x), all(vec2<bool>(true, false))), select(select(select(var_0, var_0, global0[_wgslsmith_index_u32(u_input.a, 27u)]), global0[_wgslsmith_index_u32(105082u, 27u)], true), var_0, true)), any(var_0.zy), Struct_2(~vec2<i32>(max(-2147483647i, 2147483647i), abs(arg_0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~4294967295u, _wgslsmith_mult_u32(7881u, u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(22444u, u_input.a, arg_1.x))), -1i));
    global2 = array<vec3<bool>, 28>();
    return var_2.c >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, ~0u, 23969u >> (arg_1.x % 32u), max(arg_1.x, var_2.e.b)), ~vec4<u32>(u_input.a, 36492u, arg_1.x, u_input.a) ^ abs(~vec4<u32>(56300u, arg_1.x, 1u, 38780u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!((25850u << (u_input.a % 32u)) <= _wgslsmith_mult_u32(~0u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1113f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1771f, 1148f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-463f, 397f) * vec2<f32>(-356f, 1000f)))))), func_4(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(2147483647i, -58700i, -46427i), vec3<i32>(24801i, global1.x, -21595i))), func_1(Struct_4(vec4<u32>(1u, 39274u, 71010u, 8177u), Struct_2(vec2<i32>(global1.x, -715i), u_input.a, -76436i), vec4<u32>(0u, 0u, 16913u, 7378u), Struct_3(Struct_1(true, 1298f, vec2<f32>(110f, 959f), vec4<i32>(global1.x, global1.x, global1.x, -2147483647i)), vec3<f32>(-2339f, -755f, -1398f), vec4<i32>(0i, 4170i, 71824i, global1.x), true, Struct_2(vec2<i32>(global1.x, global1.x), u_input.a, global1.x))), select(u_input.a, 0u, true), ~vec2<u32>(0u, 21428u))) >> ((~(vec4<u32>(39269u, u_input.a, u_input.a, 37063u) << (vec4<u32>(u_input.a, 4500u, 84627u, u_input.a) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 796u, 0u) << (vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u)), reverseBits(vec4<u32>(39830u, u_input.a, u_input.a, 51474u)))) % vec4<u32>(32u)));
    var var_1 = Struct_2(~var_0.d.yz, _wgslsmith_dot_vec2_u32(~(vec2<u32>(3275u, 33785u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u))) | ~u_input.a, min(2147483647i, global1.x));
    var var_2 = Struct_3(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 1315f, var_0.c.x), vec3<f32>(541f, var_0.c.x, -325f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.x, 436f, var_0.b), vec3<f32>(-403f, var_0.b, var_0.c.x)))))), ~vec4<i32>(_wgslsmith_sub_i32(var_1.a.x, 2147483647i) & -2147483647i, 0i, reverseBits(_wgslsmith_add_i32(-1314i, 39364i)), -1i), var_0.a, Struct_2(func_4(var_0.d.zzw ^ var_0.d.wzy, min(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, u_input.a))).yx, ~u_input.a, 2147483647i));
    let var_3 = firstLeadingBit(global1.x);
    let var_4 = -(~var_2.e.a);
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(var_2.b + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(185f, var_0.c.x)), -175f, _wgslsmith_f_op_f32(-var_2.b.x))))), (-vec4<i32>(10400i, 0i, -30814i, var_1.c) ^ var_2.c) << (~min(~vec4<u32>(u_input.a, 0u, var_2.e.b, var_1.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(48236u, var_2.e.b, var_2.e.b, u_input.a), vec4<u32>(1u, u_input.a, 49777u, var_1.b), vec4<u32>(67017u, 14483u, 1u, 8057u))) % vec4<u32>(32u)), var_2.d, var_2.e);
    var_1 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-300f, -784f, 305f, -2073f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2199f, 1603f, 826f, var_2.b.x) + vec4<f32>(var_2.b.x, -891f, var_0.c.x, 579f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -904f, 666f, -856f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.b, var_2.a.b, var_2.a.b, var_2.a.b), vec4<f32>(var_0.c.x, var_2.b.x, -1140f, var_0.c.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1057f, 378f, 601f, var_2.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, -533f, var_0.c.x, -941f), vec4<f32>(-573f, 298f, var_0.b, var_0.c.x))))), ~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(21659u, var_1.b, var_1.b, 4294967295u) >> (vec4<u32>(var_1.b, 62614u, 1u, u_input.a) % vec4<u32>(32u))), ~countOneBits(vec4<u32>(0u, 63576u, 46803u, 0u))));
}

