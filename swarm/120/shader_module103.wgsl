struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<f32> = vec3<f32>(1374f, 326f, 983f);

var<private> global2: vec4<bool>;

var<private> global3: array<u32, 4> = array<u32, 4>(1u, 26506u, 0u, 1u);

var<private> global4: array<bool, 14> = array<bool, 14>(false, false, true, false, true, true, false, false, true, false, false, true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> vec4<f32> {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~54304u), 14u)];
    var var_1 = global3[_wgslsmith_index_u32(0u, 4u)];
    var var_2 = Struct_3(!(!global4[_wgslsmith_index_u32(4294967295u, 14u)]));
    let var_3 = _wgslsmith_sub_i32(-(~u_input.c), _wgslsmith_mult_i32(firstLeadingBit(abs(u_input.d)), min(-2147483647i, _wgslsmith_div_i32(63677i, 2147483647i))) & abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(41169i, -10326i, -1931i, u_input.d), ~vec4<i32>(arg_1.x, u_input.c, arg_1.x, -2147483647i))));
    var var_4 = max(_wgslsmith_mod_vec4_i32(min(-(~vec4<i32>(0i, -2147483647i, u_input.d, 2147483647i)), -(~vec4<i32>(-2147483647i, arg_1.x, -2147483647i, 1i))), ~(~reverseBits(vec4<i32>(arg_1.x, -26035i, 2147483647i, var_3)))), ~(~max(vec4<i32>(u_input.d, arg_1.x, arg_1.x, var_3), vec4<i32>(-1i, -2147483647i, arg_1.x, var_3))) << ((~vec4<u32>(71695u, global3[_wgslsmith_index_u32(4294967295u, 4u)], u_input.b.x, global0.x) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, u_input.b.x), vec4<u32>(4294967295u, global0.x, global3[_wgslsmith_index_u32(u_input.b.x, 4u)], 26382u)) >> (select(vec4<u32>(u_input.b.x, 20649u, global0.x, global3[_wgslsmith_index_u32(1u, 4u)]), vec4<u32>(global3[_wgslsmith_index_u32(1u, 4u)], global0.x, 1u, global0.x), false) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) - global1.x), _wgslsmith_div_f32(752f, _wgslsmith_f_op_f32(global1.x + global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2013f, -1234f)))), global1.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    global2 = vec4<bool>(!arg_1, arg_1, global2.x, global2.x);
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, global1.x, arg_0.x), arg_0.wwy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.ywz, arg_0.xzx) - vec3<f32>(global1.x, global1.x, 166f)), false)))), arg_0.yzx, !(_wgslsmith_div_f32(global1.x, -762f) != 492f) & any(vec2<bool>(false, false != arg_1))));
    let var_0 = Struct_1(u_input.b.x > reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 35853u, global3[_wgslsmith_index_u32(global0.x, 4u)]), u_input.b)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(select(~global3[_wgslsmith_index_u32(4294967295u, 4u)], abs(1u), false), ~global0.x | u_input.b.x), global3[_wgslsmith_index_u32(0u, 4u)]), 4u)]);
    var var_1 = select(select(vec4<bool>(any(!vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 14u)], arg_1, var_0.a)), any(vec4<bool>(arg_1, var_0.a, false, arg_1)), any(select(vec3<bool>(true, global4[_wgslsmith_index_u32(26595u, 14u)], false), global2.zyy, global2.xww)), min(global0.x, var_0.b) > ~u_input.b.x), vec4<bool>(global2.x, select(global2.x, false, !arg_1), !(var_0.a || true), !(12213u != global0.x)), true), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-605f, -543f)) == _wgslsmith_f_op_f32(-arg_0.x), select(var_0.a, select(any(vec4<bool>(true, arg_1, true, true)), true, true), true), true, var_0.a | true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -357f), -1321f) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-arg_0.x)), global1.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_f32(-174f + _wgslsmith_f_op_f32(ceil(1000f)))))), -1124f, arg_0.x, _wgslsmith_f_op_f32(-global1.x));
    return -(reverseBits(arg_2.x) & u_input.a.x);
}

fn func_5(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = Struct_3(global4[_wgslsmith_index_u32(firstLeadingBit(~(~33116u)), 14u)]);
    var var_1 = Struct_4(firstTrailingBit(~_wgslsmith_mod_i32(57323i, u_input.a.x) & ~_wgslsmith_add_i32(u_input.c, arg_0.a.x)), u_input.c, vec4<bool>(all(select(arg_0.c, arg_0.c, select(arg_0.c, vec4<bool>(arg_0.c.x, true, var_0.a, arg_0.c.x), arg_0.c.x))), !((arg_0.c.x | global2.x) & any(vec3<bool>(var_0.a, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33949u, 4u)], 14u)], true))), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 36725u), vec2<u32>(10945u, 1u))) < _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 4862u, 49302u, global3[_wgslsmith_index_u32(4294967295u, 4u)])), vec4<u32>(4294967295u, global0.x, global0.x, u_input.b.x)), false | global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 14u)]));
    let var_2 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(9804i ^ arg_0.b, var_1.b >> (global0.x % 32u)), _wgslsmith_mult_vec2_i32(~vec2<i32>(var_1.a, var_1.b), arg_0.a.xy)) << (~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 4u)], 0u) % 32u));
    return min(~_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.x, _wgslsmith_clamp_u32(17695u, 1u, u_input.b.x), global0.x, 4294967295u), firstLeadingBit(~vec4<u32>(u_input.b.x, 4294967295u, global0.x, global0.x))), select(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(global0.x, 4u)], 0u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global0.x, 1u, u_input.b.x))), ~vec4<u32>(2079u, 4914u, u_input.b.x, u_input.b.x), true) ^ vec4<u32>(_wgslsmith_mod_u32(global0.x, ~global3[_wgslsmith_index_u32(1u, 4u)]), ~(~global0.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 4u)], global0.x, u_input.b.x), vec4<u32>(global0.x, u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25197u, 4u)], 4u)]) & vec4<u32>(global3[_wgslsmith_index_u32(global0.x, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], 9206u, 26068u)), 4u)], ~(~global0.x)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~max(global0.x | 1u, global0.x), countOneBits(~(~u_input.b.x)), ~(~firstLeadingBit(global3[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.yx, u_input.b.yz), ~(~u_input.b.zy))), max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, 1u, 246u, 0u) | ~vec4<u32>(59291u, 0u, global0.x, global3[_wgslsmith_index_u32(1u, 4u)]), (vec4<u32>(0u, 4294967295u, u_input.b.x, global3[_wgslsmith_index_u32(53766u, 4u)]) >> (vec4<u32>(1u, 4294967295u, 0u, u_input.b.x) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(4294967295u, u_input.b.x, 68259u, 4294967295u)) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 4294967295u, 32326u, u_input.b.x) & _wgslsmith_add_vec4_u32(vec4<u32>(15089u, global3[_wgslsmith_index_u32(1u, 4u)], u_input.b.x, global0.x), vec4<u32>(0u, 12400u, 1u, global0.x))), select(~vec4<u32>(40963u, 1u, 0u, global3[_wgslsmith_index_u32(1u, 4u)]), vec4<u32>(83376u, ~4294967295u, ~u_input.b.x, ~1u), !any(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 14u)], true)))));
    var var_1 = _wgslsmith_div_i32(1i, abs(u_input.a.x));
    let var_2 = select(func_5(Struct_2(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.d), vec3<i32>(u_input.d, u_input.a.x, 1i), vec3<i32>(u_input.a.x, 2147483647i, u_input.d)), -vec3<i32>(u_input.d, 19423i, u_input.d), select(vec3<bool>(false, false, false), vec3<bool>(global2.x, global2.x, false), global2.zwx)), func_4(_wgslsmith_f_op_vec4_f32(func_3(false, vec3<i32>(u_input.d, -60863i, 25558i))), !global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 14u)], firstTrailingBit(vec2<i32>(u_input.a.x, 0i)), abs(19509i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global4[_wgslsmith_index_u32(global0.x, 14u)], true, arg_0), vec4<bool>(global4[_wgslsmith_index_u32(99798u, 14u)], false, global4[_wgslsmith_index_u32(34351u, 14u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36567u, 4u)], 14u)]), false), true))), vec4<u32>(4294967295u, ~23229u, u_input.b.x, u_input.b.x), vec4<bool>(false, all(vec4<bool>(any(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 14u)], arg_0, false)), global2.x, true, arg_0)), all(vec3<bool>(!global4[_wgslsmith_index_u32(global0.x, 14u)], all(vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 14u)], false, global4[_wgslsmith_index_u32(0u, 14u)])), true)), global2.x));
    let var_3 = global1.x;
    var var_4 = any(select(vec4<bool>(arg_0 && all(global2.wzy), true, false, all(select(global2.xz, global2.xw, vec2<bool>(global2.x, global2.x)))), !(!vec4<bool>(true, arg_0, false, global4[_wgslsmith_index_u32(var_2.x, 14u)])), vec4<bool>(true, false, any(select(vec4<bool>(true, global2.x, arg_0, true), vec4<bool>(global2.x, arg_0, arg_0, false), true)), true)));
    return Struct_1(global2.x, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~(~abs(3119u)), 4u)], ~(~10550u)));
}

fn func_6(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = ~(~(u_input.b.zy ^ _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(u_input.b.x, u_input.b.x))));
    global1 = vec3<f32>(560f, global1.x, arg_1);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yy)));
    let var_1 = Struct_3(!global2.x);
    var var_2 = abs(u_input.a);
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = func_6(u_input.b.xz, global1.x, func_2(!(!select(global4[_wgslsmith_index_u32(21819u, 14u)], arg_0, arg_0))));
    let var_1 = vec2<i32>(abs(select(1i, ~(~u_input.c), true)), _wgslsmith_mult_i32(7856i, 2147483647i >> (~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(87246u, u_input.b.x, 15220u, arg_1), vec4<u32>(46747u, 1u, arg_1, 73782u)), 4u)] % 32u)));
    let var_2 = global4[_wgslsmith_index_u32(~1u, 14u)];
    global3 = array<u32, 4>();
    var var_3 = abs(select(~4294967295u, 12856u, true));
    return -1i & var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-u_input.c, u_input.a.x, 0i);
    let var_1 = ~func_1(any(vec4<bool>(global2.x, false, global2.x, global2.x)) && global2.x, global0.x);
    global2 = select(!select(vec4<bool>(global4[_wgslsmith_index_u32(func_5(Struct_2(vec3<i32>(u_input.c, -1i, 12724i), u_input.d, vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 14u)], true, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3366u, 4u)], 14u)], true))).x, 14u)], !global2.x, all(vec4<bool>(global2.x, true, false, global2.x)), select(global2.x, global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(26912u, 14u)])), select(!vec4<bool>(false, global2.x, global4[_wgslsmith_index_u32(4294967295u, 14u)], global2.x), select(vec4<bool>(global4[_wgslsmith_index_u32(58810u, 14u)], false, global2.x, global4[_wgslsmith_index_u32(global0.x, 14u)]), vec4<bool>(false, global2.x, true, global4[_wgslsmith_index_u32(0u, 14u)]), vec4<bool>(global2.x, true, global4[_wgslsmith_index_u32(0u, 14u)], true)), vec4<bool>(global2.x, global4[_wgslsmith_index_u32(global0.x, 14u)], false, global4[_wgslsmith_index_u32(global0.x, 14u)])), !(!vec4<bool>(false, global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], 14u)], global4[_wgslsmith_index_u32(u_input.b.x, 14u)]))), vec4<bool>(select(!all(vec4<bool>(true, global2.x, global2.x, global4[_wgslsmith_index_u32(16245u, 14u)])), global2.x, all(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 14u)]))), global2.x, abs(15965u) < select(0u, global3[_wgslsmith_index_u32(1u, 4u)], any(global2.yw)), global2.x), select(any(vec2<bool>(global2.x, global2.x)) & false, _wgslsmith_f_op_f32(399f * global1.x) != -1290f, !all(vec4<bool>(false, false, true, global2.x))) != true);
    let var_2 = ~min(~u_input.b.x, ~func_5(Struct_2(vec3<i32>(var_1, 10931i, var_0.x), 30396i, vec4<bool>(global2.x, true, global2.x, global4[_wgslsmith_index_u32(4294967295u, 14u)]))).x);
    let var_3 = vec2<bool>(!global4[_wgslsmith_index_u32(min(abs(0u) & _wgslsmith_clamp_u32(24036u, 62183u, 0u), var_2), 14u)], true);
    global2 = vec4<bool>(~_wgslsmith_dot_vec3_u32(u_input.b ^ vec3<u32>(global0.x, global0.x, 71538u), _wgslsmith_div_vec3_u32(vec3<u32>(12851u, global3[_wgslsmith_index_u32(57242u, 4u)], u_input.b.x), vec3<u32>(var_2, 2754u, 4294967295u))) != _wgslsmith_mod_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, global3[_wgslsmith_index_u32(var_2, 4u)], global3[_wgslsmith_index_u32(68057u, 4u)]), ~vec4<u32>(u_input.b.x, 84493u, 4294967295u, 34518u))), any(vec4<bool>(all(var_3), func_6(u_input.b.yx, global1.x, func_6(vec2<u32>(u_input.b.x, 4294967295u), 1161f, Struct_1(global2.x, u_input.b.x))).a, !var_3.x & false, global2.x)), true | all(!select(vec3<bool>(true, true, global4[_wgslsmith_index_u32(var_2, 14u)]), vec3<bool>(false, global2.x, global4[_wgslsmith_index_u32(var_2, 14u)]), var_3.x)), global1.x == -568f);
    let var_4 = u_input.b.x;
    var var_5 = Struct_2(~_wgslsmith_add_vec3_i32(min(abs(vec3<i32>(u_input.c, 28372i, u_input.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -375i, u_input.a.x), vec3<i32>(u_input.c, u_input.d, -25172i))), firstLeadingBit(vec3<i32>(-1863i, var_1, var_1))), ~(-min(-37669i, var_0.x)), select(vec4<bool>(func_6(u_input.b.zx, _wgslsmith_f_op_f32(-global1.x), Struct_1(global4[_wgslsmith_index_u32(1265u, 14u)], var_2)).a, all(select(var_3, vec2<bool>(false, true), global2.xw)), var_1 < -2147483647i, all(!global2.xyw)), vec4<bool>(any(var_3), global4[_wgslsmith_index_u32(var_2, 14u)], global2.x, true), !(!vec4<bool>(false, var_3.x, global4[_wgslsmith_index_u32(var_2, 14u)], global4[_wgslsmith_index_u32(26702u, 14u)]))));
    let var_6 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(-117f, vec4<i32>(var_5.b, -13351i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, -2147483647i, u_input.c, -59029i), vec4<i32>(0i, 1458i, var_5.a.x, var_0.x), vec4<i32>(-1i, 46340i, 1360i, u_input.d)), select(vec4<i32>(var_5.b, var_5.a.x, var_1, var_1), vec4<i32>(var_1, -477i, var_1, var_0.x), true)), -108318i), i32(-1i) * -27723i), -833f, -var_5.a, ~reverseBits(select(vec2<i32>(var_0.x, -1331i), var_5.a.zy, global2.x) & abs(var_5.a.yz)));
}

