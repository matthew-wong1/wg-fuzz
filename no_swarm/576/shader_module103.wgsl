struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: array<vec2<i32>, 2>;

var<private> global2: array<Struct_1, 4>;

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    global2 = array<Struct_1, 4>();
    var var_0 = select(global4.b.zw, select(vec2<bool>(global4.b.x, !global4.b.x), global4.b.zy, false), select(global4.b.yy, !(!global4.b.wy), !any(vec2<bool>(global4.b.x, false)) && true));
    return vec4<i32>(global4.c, -reverseBits(global4.c), -17538i, 12228i);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = -(firstTrailingBit(-vec4<i32>(global4.c, global4.c, -2147483647i, global4.c) | abs(vec4<i32>(global4.c, global4.c, global4.c, global4.c))) & vec4<i32>(_wgslsmith_dot_vec4_i32(func_3(), _wgslsmith_mod_vec4_i32(vec4<i32>(-3907i, global4.c, global4.c, -48420i), vec4<i32>(global4.c, global4.c, 65025i, global4.c))), global4.c, func_3().x, ~global4.c << (~36003u % 32u)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1101f)), -2301f) * -1078f);
    let var_1 = _wgslsmith_f_op_f32(ceil(-204f)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1075f)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -780f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(962f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -526f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-703f, _wgslsmith_f_op_f32(f32(-1f) * -1050f))))));
    var var_2 = reverseBits(_wgslsmith_add_u32(abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a, arg_0.x, u_input.a, u_input.a), vec4<u32>(46714u, global4.a, 478u, arg_0.x)), ~0u)), 0u));
    return 24972i;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(~global4.c, _wgslsmith_clamp_i32(func_2(vec2<u32>(4294967295u, u_input.a), global4.b), ~arg_0.c, 8880i), arg_0.c, global4.c), _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(1i, arg_0.c, 0i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 38256i, -8910i, 1885i), vec4<i32>(-2147483647i, 1i, arg_0.c, -19266i))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, ~global4.c, arg_0.c | -2147483647i, -26787i), vec4<i32>(-1i) * -vec4<i32>(global4.c, 1i, 9931i, global4.c))));
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, ~countOneBits(53322u), 4620u, ~(~0u)), max(~(~(vec4<u32>(u_input.a, 0u, u_input.a, global4.a) ^ vec4<u32>(u_input.a, u_input.a, global4.a, 118290u))), vec4<u32>(firstLeadingBit(0u), 47042u, u_input.a, _wgslsmith_mod_u32(global4.a, arg_0.a)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(26326u, u_input.a, arg_0.a, 0u), vec4<u32>(96714u, 1u, global4.a, arg_0.a)), vec4<u32>(u_input.a, 1u, 4294967295u, 71845u)) % vec4<u32>(32u)))), 4u)];
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-484f))))) - 1191f)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f - -104f) + -1000f)))) - -909f);
    var var_1 = ~(~arg_0.a);
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.a, max(u_input.a, 46825u) & max(arg_0.a, 110470u), _wgslsmith_sub_u32(u_input.a, ~u_input.a), 1u), abs(~vec4<u32>(4294967295u, global4.a, 41094u, global4.a))), arg_0.b, max(8672i, _wgslsmith_clamp_i32(1i, arg_0.c, global4.c >> ((0u | u_input.a) % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(0u), 4u)];
    let var_1 = Struct_1(72539u, !arg_0.b, _wgslsmith_dot_vec3_i32(arg_2 & _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_2, arg_2, vec3<i32>(2147483647i, arg_2.x, arg_0.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c, global4.c, arg_0.c), arg_2)), abs(vec3<i32>(23796i, firstTrailingBit(-22896i), arg_0.c << (14407u % 32u)))));
    let var_2 = ~vec4<u32>(~arg_0.a, ~_wgslsmith_sub_u32(arg_0.a, global4.a), max(_wgslsmith_sub_u32(min(19729u, u_input.a), arg_0.a), _wgslsmith_div_u32(select(arg_0.a, global4.a, true), _wgslsmith_clamp_u32(4294967295u, u_input.a, arg_1.x))), 1u);
    var_0 = global2[_wgslsmith_index_u32(~(~firstTrailingBit(arg_0.a)), 4u)];
    var var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(-arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.b.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), 403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(2905u, global4.b, global4.c)), vec3<u32>(1953u, 43260u, 0u) >> (vec3<u32>(4294967295u, global4.a, 4294967295u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global4.c, -2147483647i, global4.c), vec3<i32>(global4.c, -70386i, global4.c)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f + 1352f))))));
    let var_2 = _wgslsmith_mult_u32(4294967295u, ~u_input.a);
    let var_3 = global4.b.x;
    let var_4 = 4294967295u;
    global0 = array<vec4<f32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~select(1u, 19789u, global4.b.x)), _wgslsmith_mult_vec4_u32(max(~_wgslsmith_sub_vec4_u32(vec4<u32>(global4.a, var_4, 0u, 1992u), vec4<u32>(12298u, var_2, 1u, 7337u)), vec4<u32>(0u, 1u, var_2, 1u)), vec4<u32>(u_input.a, global4.a, ~(~1u), _wgslsmith_sub_u32(u_input.a, 24807u))), ~32395u, _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i) << (_wgslsmith_add_vec2_u32(~vec2<u32>(9869u, var_2), ~vec2<u32>(var_4, var_2)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(abs(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global4.a, 1u), 2u)]), select(vec2<i32>(37811i, -1i), global1[_wgslsmith_index_u32(u_input.a, 2u)], vec2<bool>(true, global4.b.x)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 62346u), vec2<u32>(11450u, var_4)) % vec2<u32>(32u)))), vec4<i32>(min(global4.c, ~global4.c) & -36055i, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, global4.c, -1i), ~vec3<i32>(2147483647i, -2147483647i, 0i)), global4.c), _wgslsmith_clamp_i32(global4.c, global4.c, global4.c)));
}

