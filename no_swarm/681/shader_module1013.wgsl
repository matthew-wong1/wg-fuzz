struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: f32 = -993f;

var<private> global2: Struct_1;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_mult_u32(arg_3.d.x, 24805u);
    var_0 = ~(~firstTrailingBit(firstTrailingBit(arg_3.d.x)));
    var_0 = 1u;
    var var_1 = true;
    var var_2 = 1f;
    return _wgslsmith_f_op_vec2_f32(arg_1.b * _wgslsmith_div_vec2_f32(arg_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(8786u, 19u)], -946f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.b, arg_1.b, false)) - arg_1.b))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = arg_0.d;
    let var_1 = arg_0;
    global0 = array<f32, 19>();
    var_0 = Struct_1(firstLeadingBit(vec4<i32>(min(-1i ^ global2.b, firstLeadingBit(-16756i)), u_input.c, ~_wgslsmith_dot_vec4_i32(var_1.a.a, vec4<i32>(u_input.c, var_1.a.c, 29880i, -1i)), -var_0.c >> (global2.d.x % 32u))), _wgslsmith_mod_i32(-arg_0.a.b, min(2147483647i, countOneBits(var_0.c)) ^ 1i), i32(-1i) * -25751i, countOneBits(var_0.d));
    let var_2 = Struct_2(arg_0.d, var_1.b, ~(~firstLeadingBit(u_input.b | 6780u)), arg_0.d, select(vec4<bool>(firstTrailingBit(0u) >= ~global2.d.x, true, all(select(vec3<bool>(true, global3.x, var_1.e.x), vec3<bool>(global3.x, var_1.e.x, true), arg_0.e.x)), !arg_0.e.x), var_1.e, true));
    return true;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global2 = arg_0;
    global2 = Struct_1(arg_0.a, arg_0.a.x, _wgslsmith_add_i32(0i, u_input.c), ~vec3<u32>(1u, ~4294967295u, ~countOneBits(47268u)));
    global0 = array<f32, 19>();
    var var_0 = func_4(Struct_2(Struct_1(vec4<i32>(arg_0.b ^ -24102i, ~arg_0.c, 2605i, arg_0.c >> (u_input.b % 32u)), -6243i & _wgslsmith_mod_i32(-23480i, global2.a.x), ~arg_0.a.x, ~vec3<u32>(global2.d.x, u_input.b, 1u) & arg_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(arg_0, Struct_2(arg_0, vec2<f32>(global0[_wgslsmith_index_u32(8403u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), 39516u, arg_0, vec4<bool>(false, global3.x, true, global3.x)), arg_0.d.x, Struct_1(vec4<i32>(arg_0.b, 0i, u_input.a.x, 0i), 32i, u_input.c, global2.d)))))), max(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(32878u, 0u, arg_0.d.x, u_input.b) << (vec4<u32>(44003u, 23759u, global2.d.x, u_input.b) % vec4<u32>(32u)), vec4<u32>(0u, u_input.b, 23168u, 1u) | vec4<u32>(arg_0.d.x, arg_0.d.x, 3990u, arg_0.d.x))), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, global2.a.x, -124i, global2.c), vec4<i32>(0i, global2.a.x, global2.a.x, global2.c)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d.x, 19132u, 23525u, global2.d.x), vec4<u32>(arg_0.d.x, 24319u, global2.d.x, arg_0.d.x), vec4<u32>(1u, 1u, u_input.b, arg_0.d.x)) % vec4<u32>(32u)), reverseBits(abs(25868i)), _wgslsmith_div_i32(~21777i, global2.a.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.d, arg_0.d), vec3<u32>(global2.d.x, global2.d.x, 0u))), vec4<bool>(any(!vec4<bool>(global3.x, global3.x, true, false)), true, true, false | (global2.b <= -1i))), select(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.x, arg_0.d.x, 60480u, arg_0.d.x) | firstLeadingBit(vec4<u32>(4294967295u, 0u, global2.d.x, 65814u)), vec4<u32>(1u, _wgslsmith_sub_u32(u_input.b, 32162u), 0u, ~u_input.b)), true));
    var var_1 = vec4<bool>(false, !all(vec2<bool>(!global3.x, true)), _wgslsmith_add_u32(~4294967295u ^ u_input.b, min(17829u, ~u_input.b)) > 65768u, arg_0.c > _wgslsmith_mult_i32(global2.b, ~u_input.c));
    return ~firstLeadingBit(vec3<u32>(0u, countOneBits(~53986u), 4294967295u));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.a.yw;
    var var_1 = Struct_2(arg_1.d, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 19u)] + arg_1.b.x) - _wgslsmith_div_f32(1232f, global0[_wgslsmith_index_u32(arg_1.a.d.x, 19u)])))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.b.x + 828f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(12062u, 19u)], -1095f), _wgslsmith_div_f32(1404f, global0[_wgslsmith_index_u32(u_input.b, 19u)]), true))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~1u, 4294967295u, global2.d.x), reverseBits(arg_1.d.d)), arg_1.d, select(vec4<bool>(false, any(vec4<bool>(true, arg_2.x, arg_3, false)), true, arg_2.x), vec4<bool>(true, select(true, false, true), !(true & arg_1.e.x), false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 19u)], 1322f)) <= -867f));
    var_1 = Struct_2(Struct_1(-vec4<i32>(global2.b, -2147483647i | arg_1.a.c, var_1.d.a.x, 5010i), firstTrailingBit(firstLeadingBit(var_0.x)) | ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a.x, 2147483647i, var_1.d.a.x, 40194i), vec4<i32>(2147483647i, -40937i, arg_1.a.a.x, -46198i)), max(select(1i, var_0.x, all(var_1.e.wy)), _wgslsmith_clamp_i32(var_0.x | 2147483647i, firstTrailingBit(global2.a.x), u_input.a.x)), ~_wgslsmith_sub_vec3_u32(global2.d, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, u_input.b), var_1.d.d))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_1.b)) + _wgslsmith_f_op_vec2_f32(ceil(var_1.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 19u)], 603f) * var_1.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, 1340f)), arg_1.b), true)))), _wgslsmith_mult_u32(1u, 1u), Struct_1(~select(vec4<i32>(global2.a.x, 5447i, 27910i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.c, var_0.x, -1i, var_0.x), vec4<i32>(global2.a.x, var_0.x, 1i, var_1.d.b), vec4<i32>(-1i, -12436i, -2147483647i, 2147483647i)), true), var_1.a.a.x, ~(_wgslsmith_add_i32(20145i, -19207i) >> (select(33230u, global2.d.x, arg_2.x) % 32u)), min(global2.d, ~select(vec3<u32>(0u, 30162u, 1u), arg_1.d.d, vec3<bool>(arg_3, global3.x, true)))), select(vec4<bool>(!(!var_1.e.x), !(!arg_2.x), arg_2.x, true), vec4<bool>(true, !var_1.e.x, select(arg_1.e.x, false, true) & false, true), vec4<bool>(true, global3.x, false, any(vec3<bool>(false, true, arg_1.e.x)) && arg_3)));
    var var_2 = abs(~vec2<i32>(max(31589i, 51741i), arg_1.d.a.x & -1i) & vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(arg_1.a.a), vec4<i32>(global2.a.x, -22908i, u_input.a.x, arg_1.d.b) >> (vec4<u32>(global2.d.x, 62187u, 41998u, 4294967295u) % vec4<u32>(32u))), max(firstTrailingBit(-5189i), min(1254i, 1i))));
    var var_3 = !(!select(select(select(vec4<bool>(arg_2.x, arg_3, false, arg_3), vec4<bool>(false, false, false, false), arg_2), var_1.e, true), var_1.e, false));
    return Struct_1(~var_1.a.a, _wgslsmith_dot_vec2_i32(min(vec2<i32>(_wgslsmith_add_i32(0i, 61418i), -11890i & var_1.a.b), vec2<i32>(2147483647i, 19946i)), vec2<i32>(var_2.x, ~1i)), global2.b, ~(~vec3<u32>(reverseBits(56786u), arg_1.d.d.x, ~global2.d.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = select(vec2<bool>(global3.x, select(any(vec2<bool>(global3.x, global3.x)), any(global3.yy), true) && global3.x), vec2<bool>(global3.x, !global3.x), vec2<bool>(!(!all(vec3<bool>(global3.x, global3.x, false))), global3.x));
    global2 = func_5(u_input.b, Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(arg_3, vec4<i32>(arg_3.x, u_input.c, 1i, global2.a.x)), select(vec4<i32>(arg_3.x, -20035i, arg_3.x, arg_3.x), vec4<i32>(arg_3.x, arg_3.x, global2.a.x, u_input.a.x), vec4<bool>(false, var_0.x, true, var_0.x))), 38269i, global2.a.x, func_2(Struct_1(vec4<i32>(-31303i, u_input.c, 2147483647i, -80688i), u_input.c, 22221i, global2.d))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(813f, 1000f) + _wgslsmith_f_op_vec2_f32(arg_1.xw * vec2<f32>(593f, -1299f))))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global2.d.yx, vec2<u32>(4294967295u, 0u)), 7291u), Struct_1(global2.a, 1i, global2.b, select(_wgslsmith_div_vec3_u32(vec3<u32>(global2.d.x, 7047u, 88832u), global2.d), countOneBits(global2.d), false)), select(select(vec4<bool>(false, global3.x, global3.x, global3.x), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(false, true, var_0.x, true), true), false), select(!vec4<bool>(global3.x, false, true, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(global3.x, var_0.x, true, false)), true)), !(!vec4<bool>(arg_3.x == u_input.c, true, all(global3.zx), false)), !(!select(false, global3.x, any(vec2<bool>(true, global3.x)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global2.c, arg_3.x), -1i, u_input.a.x << (u_input.b % 32u), -16273i), firstLeadingBit(global2.a) >> ((vec4<u32>(global2.d.x, u_input.b, global2.d.x, global2.d.x) ^ vec4<u32>(51767u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 1i), -global2.a.ww), u_input.a.x, vec3<u32>(_wgslsmith_mult_u32(func_2(Struct_1(arg_3, global2.c, -2147483647i, vec3<u32>(79015u, u_input.b, u_input.b))).x, 35821u | u_input.b), abs(reverseBits(global2.d.x)), ~(~global2.d.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.zy)))), arg_0), ~16311u, func_5(28160u, Struct_2(func_5(u_input.b, Struct_2(Struct_1(global2.a, -2147483647i, arg_3.x, vec3<u32>(global2.d.x, 5036u, global2.d.x)), arg_1.wy, u_input.b, Struct_1(global2.a, arg_3.x, 28296i, global2.d), vec4<bool>(var_0.x, global3.x, global3.x, true)), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(true, var_0.x, global3.x, global3.x), true), true && var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.yy) * _wgslsmith_f_op_vec2_f32(-arg_0)), ~firstTrailingBit(u_input.b), Struct_1(_wgslsmith_sub_vec4_i32(global2.a, global2.a), 0i, arg_3.x, ~global2.d), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))), vec4<bool>(arg_3.x != -1i, var_0.x, false, false), false), !vec4<bool>(global3.x, var_0.x, true, true));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_3(var_1.d, Struct_2(var_1.a, arg_2.yx, 1u, var_1.a, var_1.e), 65588u, var_1.d)).x, _wgslsmith_f_op_f32(-arg_1.x))))))) + arg_0.x);
    var var_2 = ~(-90509i);
    return Struct_2(func_5(var_1.c, Struct_2(func_5(global2.d.x, Struct_2(Struct_1(arg_3, global2.a.x, -3742i, vec3<u32>(u_input.b, var_1.c, global2.d.x)), arg_1.yx, 1u, var_1.d, vec4<bool>(false, global3.x, global3.x, true)), var_1.e, global3.x), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x))), var_1.c, var_1.d, select(!var_1.e, select(var_1.e, vec4<bool>(global3.x, var_1.e.x, var_1.e.x, true), global3.x), false)), var_1.e, var_1.e.x), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], var_1.b.x), ~1u, var_1.a, vec4<bool>(var_0.x, var_1.e.x, true, !var_1.e.x));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = 55280u;
    var var_1 = ~(~(~arg_1.x));
    var_1 = abs(~9854u);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-341f, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0.d.d.x, 19u)], -970f)) - _wgslsmith_div_vec2_f32(arg_0.b, vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global2.d.x, 19u)])), _wgslsmith_f_op_f32(f32(-1f) * -500f), -186f, _wgslsmith_f_op_f32(min(arg_0.b.x, -1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(131f, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, global0[_wgslsmith_index_u32(0u, 19u)], -108f))), vec4<i32>(-1i) * -global2.a).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x) - global0[_wgslsmith_index_u32(arg_1.x << (global2.d.x % 32u), 19u)]))) - vec3<f32>(global0[_wgslsmith_index_u32(~((4294967295u | global2.d.x) | _wgslsmith_div_u32(u_input.b, 4294967295u)), 19u)], -204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(952f)) * _wgslsmith_f_op_f32(-arg_0.b.x))));
    var_0 = ~u_input.b;
    return _wgslsmith_clamp_vec4_u32(reverseBits(select(vec4<u32>(arg_0.a.d.x, arg_1.x, 895u, 41593u) | vec4<u32>(arg_1.x, 42272u, 4827u, global2.d.x), reverseBits(vec4<u32>(14768u, arg_1.x, arg_0.d.d.x, arg_1.x)), !vec4<bool>(true, false, false, arg_0.e.x))), ~max(vec4<u32>(40187u, 1u, 28432u, u_input.b), vec4<u32>(4294967295u, global2.d.x, global2.d.x, arg_1.x)) & ~(~vec4<u32>(76761u, u_input.b, 0u, 8728u)), ~(~(~vec4<u32>(4294967295u, arg_1.x, 0u, u_input.b)))) & _wgslsmith_mult_vec4_u32(~vec4<u32>(~u_input.b, ~arg_0.d.d.x, 4294967295u, 4294967295u), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.x, 1u, global2.d.x, global2.d.x), vec4<u32>(2016u, u_input.b, 4294967295u, 44690u)), countOneBits(23586u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.d.x, u_input.b, global2.d.x, 4294967295u), vec4<u32>(4294967295u, global2.d.x, 4294967295u, 59998u)) >> (~(~vec4<u32>(56518u, 0u, 1922u, 1u)) % vec4<u32>(32u))) | (select(abs(vec4<u32>(u_input.b, global2.d.x, 25590u, 4294967295u)), vec4<u32>(7544u, 40093u, 1u, 83299u), true) | (abs(vec4<u32>(0u, global2.d.x, 4294967295u, global2.d.x)) | ~vec4<u32>(0u, global2.d.x, 0u, global2.d.x)))) & func_6(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, -753f)), vec4<f32>(-644f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(ceil(1889f)), -1660f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(33461u, 19u)], 1387f, global0[_wgslsmith_index_u32(66412u, 19u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1278f, global0[_wgslsmith_index_u32(72396u, 19u)]))), ~(vec4<i32>(2147483647i, global2.a.x, global2.b, -2147483647i) | vec4<i32>(-2147483647i, u_input.a.x, global2.a.x, u_input.c))), global2.d.yx);
    global2 = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(711f, -272f))))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, u_input.b), 19u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 19u)], -222f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-660f - global0[_wgslsmith_index_u32(53151u, 19u)]) - global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(120213u, global2.d.x), 19u)])), func_1(vec2<f32>(1296f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.d.x, 19u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(global2.d.x, 19u)], global0[_wgslsmith_index_u32(52386u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), vec4<f32>(1281f, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)], -1508f))), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 19u)], -100f, global0[_wgslsmith_index_u32(var_0.x, 19u)], 538f), select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x), global3.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(71621u, 19u)]))), u_input.a).b.x, global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(16164u, 4294967295u), vec2<u32>(var_0.x, var_0.x))), 19u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~52060u, 19u)], _wgslsmith_f_op_f32(-1189f * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30252u, 19u)]), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.x, 19u)]))), global0[_wgslsmith_index_u32(u_input.b, 19u)]) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-291f, global0[_wgslsmith_index_u32(4294967295u, 19u)], 1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1036f, 282f, -1000f), vec3<f32>(1638f, -309f, global0[_wgslsmith_index_u32(u_input.b, 19u)])))))), -vec4<i32>(46104i, ~(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(1i, max(75721i, u_input.a.x)), 6568i)).d;
    var var_1 = func_5(~var_0.x, Struct_2(Struct_1(abs(vec4<i32>(36546i, global2.b, -1i, 3868i)), -19563i, _wgslsmith_dot_vec3_i32(func_5(37102u, Struct_2(Struct_1(u_input.a, 5876i, -12833i, vec3<u32>(u_input.b, global2.d.x, global2.d.x)), vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)]), 4294967295u, Struct_1(vec4<i32>(u_input.c, 1i, 8520i, -24338i), global2.b, global2.a.x, var_0.yyz), vec4<bool>(true, global3.x, global3.x, true)), vec4<bool>(true, true, false, true), global3.x).a.wwz, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global2.c, global2.c), vec3<i32>(global2.b, u_input.c, -1360i))), global2.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(421f, -1154f) + vec2<f32>(-1609f, global0[_wgslsmith_index_u32(4294967295u, 19u)])) * vec2<f32>(1567f, global0[_wgslsmith_index_u32(global2.d.x, 19u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], -783f), vec2<f32>(-385f, global0[_wgslsmith_index_u32(1u, 19u)])))), func_2(Struct_1(vec4<i32>(-1i, -8852i, u_input.a.x, -22765i), func_1(vec2<f32>(-320f, global0[_wgslsmith_index_u32(var_0.x, 19u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 1046f, 1095f, 779f), vec3<f32>(-1232f, global0[_wgslsmith_index_u32(1u, 19u)], 246f), vec4<i32>(global2.a.x, -21570i, 0i, u_input.c)).d.c, 33233i, vec3<u32>(global2.d.x, 1u, var_0.x) ^ vec3<u32>(u_input.b, u_input.b, global2.d.x))).x, Struct_1(_wgslsmith_mult_vec4_i32(u_input.a << (vec4<u32>(u_input.b, 53765u, 16896u, 23500u) % vec4<u32>(32u)), -u_input.a), global2.b, 1i, vec3<u32>(var_0.x ^ u_input.b, ~30449u, select(global2.d.x, u_input.b, global3.x))), vec4<bool>(global3.x, !any(vec3<bool>(false, false, global3.x)), global3.x, func_4(func_1(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -1034f), vec4<f32>(-134f, global0[_wgslsmith_index_u32(0u, 19u)], -1244f, global0[_wgslsmith_index_u32(var_0.x, 19u)]), vec3<f32>(-1361f, global0[_wgslsmith_index_u32(var_0.x, 19u)], 1542f), u_input.a), global2.d.x))), !(!(!(!vec4<bool>(global3.x, false, true, global3.x)))), select(all(!select(vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(false, global3.x, global3.x, global3.x), global3.x)), all(select(global3.zy, func_1(vec2<f32>(-1462f, 829f), vec4<f32>(-158f, -1983f, global0[_wgslsmith_index_u32(u_input.b, 19u)], 1411f), vec3<f32>(global0[_wgslsmith_index_u32(59491u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], -1000f), vec4<i32>(global2.b, global2.a.x, -1i, 6014i)).e.zz, !vec2<bool>(global3.x, global3.x))), -6985i >= global2.a.x));
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1642f, 1019f) * vec2<f32>(global0[_wgslsmith_index_u32(10500u, 19u)], global0[_wgslsmith_index_u32(40721u, 19u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], 1411f, global0[_wgslsmith_index_u32(22938u, 19u)], 361f) + vec4<f32>(1188f, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(13918u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1175f, -1000f, global0[_wgslsmith_index_u32(1u, 19u)])) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(global2.d.x, 19u)], global0[_wgslsmith_index_u32(6427u, 19u)]), vec3<f32>(488f, -1665f, global0[_wgslsmith_index_u32(var_0.x, 19u)]), global3.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(8299u, 19u)], 362f, global0[_wgslsmith_index_u32(global2.d.x, 19u)]) - vec3<f32>(global0[_wgslsmith_index_u32(2737u, 19u)], global0[_wgslsmith_index_u32(var_1.d.x, 19u)], -1844f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1116f, global0[_wgslsmith_index_u32(var_0.x, 19u)])), -321f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 19u)], global0[_wgslsmith_index_u32(73369u, 19u)])))), vec4<i32>(i32(-1i) * -31587i, _wgslsmith_div_i32(abs(1i) << (func_5(global2.d.x, Struct_2(Struct_1(vec4<i32>(-2147483647i, var_1.a.x, global2.b, global2.c), var_1.c, var_1.b, vec3<u32>(4294967295u, global2.d.x, 41217u)), vec2<f32>(global0[_wgslsmith_index_u32(45811u, 19u)], global0[_wgslsmith_index_u32(var_1.d.x, 19u)]), 1231u, Struct_1(vec4<i32>(global2.c, u_input.c, -36072i, -1i), 2147483647i, u_input.a.x, var_1.d), vec4<bool>(true, global3.x, false, true)), vec4<bool>(global3.x, global3.x, global3.x, true), global3.x).d.x % 32u), -reverseBits(u_input.c)), _wgslsmith_div_i32(select(-32068i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.b, 1765i), u_input.a.xxy), any(vec2<bool>(true, global3.x))), _wgslsmith_mod_i32(-1i, -54015i)), global2.c | var_1.a.x)).e.xwx;
    var var_3 = ~reverseBits(func_5(0u, Struct_2(Struct_1(global2.a, global2.a.x, global2.a.x, var_0.xwz), vec2<f32>(394f, global0[_wgslsmith_index_u32(0u, 19u)]), ~1u, Struct_1(global2.a, u_input.a.x, u_input.a.x, vec3<u32>(var_1.d.x, 1u, 54739u)), !vec4<bool>(global3.x, true, false, global3.x)), !select(vec4<bool>(global3.x, var_2.x, false, true), vec4<bool>(global3.x, false, global3.x, false), true), !any(vec3<bool>(var_2.x, false, false))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec3_i32(-vec3<i32>(global2.c, -46763i, var_1.a.x), var_1.a.zwy << (~var_0.wyz % vec3<u32>(32u))), _wgslsmith_sub_vec2_i32(~vec2<i32>(reverseBits(u_input.c), _wgslsmith_mod_i32(5466i, -2147483647i)), ~(func_5(var_0.x, Struct_2(Struct_1(u_input.a, -1i, global2.c, vec3<u32>(var_1.d.x, var_1.d.x, global2.d.x)), vec2<f32>(514f, global0[_wgslsmith_index_u32(var_0.x, 19u)]), global2.d.x, Struct_1(vec4<i32>(global2.a.x, 34012i, 1i, global2.c), var_1.a.x, var_1.c, vec3<u32>(4294967295u, global2.d.x, 23728u)), vec4<bool>(global3.x, global3.x, false, global3.x)), vec4<bool>(var_2.x, false, var_2.x, false), false).a.yz >> (abs(vec2<u32>(25662u, 50578u)) % vec2<u32>(32u)))), func_5(~u_input.b << ((15736u | var_0.x) % 32u), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-465f, global0[_wgslsmith_index_u32(u_input.b, 19u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -862f, global0[_wgslsmith_index_u32(u_input.b, 19u)], 2109f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(64267u, 19u)], 142f, -1000f, -674f) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(36347u, 19u)], global0[_wgslsmith_index_u32(var_0.x, 19u)], 294f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1718f, 492f, -388f), vec3<f32>(global0[_wgslsmith_index_u32(global2.d.x, 19u)], global0[_wgslsmith_index_u32(var_0.x, 19u)], 473f), vec3<bool>(var_2.x, true, global3.x))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-967f, -664f, global0[_wgslsmith_index_u32(11356u, 19u)])))), vec4<i32>(~(-1i), global2.b, firstTrailingBit(-2147483647i), countOneBits(u_input.a.x))), vec4<bool>(false, var_2.x, func_1(vec2<f32>(1106f, 373f), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 19u)], global0[_wgslsmith_index_u32(var_1.d.x, 19u)], 866f, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], 1001f), vec4<i32>(u_input.a.x, var_1.a.x, u_input.c, global2.a.x)).b.x < -807f, -485f >= _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(19950u, 19u)], 107f))), var_2.x).a.zw);
}

