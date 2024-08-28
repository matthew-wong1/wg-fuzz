struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(-2300f, -1130f, -621f)), Struct_1(vec3<f32>(-396f, 1095f, -506f)), Struct_1(vec3<f32>(1052f, -592f, -591f)), Struct_1(vec3<f32>(837f, 993f, 1111f)), Struct_1(vec3<f32>(840f, -219f, -1533f)), Struct_1(vec3<f32>(300f, -881f, -550f)), Struct_1(vec3<f32>(184f, 730f, -1120f)), Struct_1(vec3<f32>(996f, 562f, 1000f)), Struct_1(vec3<f32>(287f, 318f, -118f)), Struct_1(vec3<f32>(386f, 1838f, -686f)), Struct_1(vec3<f32>(1279f, 1000f, 1000f)));

var<private> global2: Struct_1;

var<private> global3: array<i32, 28> = array<i32, 28>(i32(-2147483648), 21178i, 33893i, 1i, 41350i, -9215i, 17841i, -1i, i32(-2147483648), 58724i, 0i, 2147483647i, 22145i, 1i, 0i, 0i, 37722i, i32(-2147483648), 0i, -39426i, -1i, -16146i, -1i, 5373i, -39721i, -1i, -1i, -29968i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(0u, _wgslsmith_add_u32(1u, u_input.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(677f, -762f))) < _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_sub_u32(19639u, _wgslsmith_div_u32(u_input.b, u_input.a.x))), 11u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.a, global2.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) - vec3<f32>(146f, _wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_f32(step(var_0.a.x, 1627f))))));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(549f)) + 1106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + 597f))), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_div_f32(var_0.a.x, global2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1255f), _wgslsmith_f_op_f32(step(-1590f, -711f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1546f * -1117f), -2437f)))));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(var_3.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -868f, var_2.a.x), vec3<f32>(var_0.a.x, -555f, var_2.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), 778f, _wgslsmith_div_f32(1102f, var_3.a.x))))));
    return 0u;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec3<u32> {
    global0 = vec3<u32>(_wgslsmith_div_u32(~countOneBits(abs(arg_3.x)), ~func_3() >> ((~u_input.b | (u_input.a.x ^ global0.x)) % 32u)), ~_wgslsmith_dot_vec2_u32(max(global0.yz, arg_3.xz), global0.xy), 100074u);
    var var_0 = Struct_1(global2.a);
    global3 = array<i32, 28>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, 395f)) - _wgslsmith_f_op_f32(max(1000f, var_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.a)), vec3<f32>(_wgslsmith_f_op_f32(global2.a.x - var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -761f), var_0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -2347f), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(-710f - -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1112f + 1161f)))) - _wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * var_0.a), arg_0)))));
    return ~(~reverseBits(vec3<u32>(arg_3.x, arg_3.x, u_input.b)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-129f, arg_0.a.x)) + _wgslsmith_f_op_f32(-global2.a.x)))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x)))));
    let var_1 = ~_wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(-32971i, u_input.c), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-29988i, -15198i)), ~(-2147483647i)), _wgslsmith_sub_vec4_i32((vec4<i32>(-2147483647i, u_input.c, 1i, global3[_wgslsmith_index_u32(global0.x, 28u)]) >> (vec4<u32>(4294967295u, global0.x, 75196u, u_input.b) % vec4<u32>(32u))) & ~vec4<i32>(global3[_wgslsmith_index_u32(global0.x, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], u_input.d, 1i), abs(-vec4<i32>(u_input.c, 0i, -66904i, 60095i))));
    let var_2 = _wgslsmith_dot_vec4_u32(~reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(18496u, arg_2, 25249u, 0u), vec4<u32>(98807u, global0.x, 71676u, 26699u))), abs(~vec4<u32>(1u, arg_1.x, arg_2, 0u) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.x, u_input.a.x, 0u), vec4<u32>(82633u, global0.x, 1u, u_input.a.x))) << (vec4<u32>(73240u, min(4294967295u, firstTrailingBit(u_input.b)), arg_1.x, 4294967295u) % vec4<u32>(32u)));
    let var_3 = (((u_input.b & 38746u) <= 15596u) | all(vec3<bool>(all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, true)), true))) && !(!all(vec4<bool>(true, true, true, true)));
    let var_4 = ~max(min(0u, 1u), select(arg_1.x ^ arg_2, arg_2, any(vec3<bool>(var_3, var_3, var_3))) & var_2);
    return global1[_wgslsmith_index_u32(arg_1.x, 11u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: bool, arg_3: u32) -> vec2<i32> {
    global0 = vec3<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(min(~vec2<u32>(arg_3, 4294967295u), countOneBits(countOneBits(global0.yy))), firstTrailingBit(~u_input.a.zy) & vec2<u32>(~arg_0.x, arg_0.x)), min(arg_3, ~abs(1u)));
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -1393f, global2.a.x)), _wgslsmith_f_op_vec3_f32(-global2.a))) - vec3<f32>(367f, global2.a.x, -377f))), _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, arg_3), arg_0), arg_0), ~global0.yz), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a, func_2(vec3<bool>(arg_2, true, arg_2), -49116i, vec4<i32>(arg_1, -1605i, arg_1, global3[_wgslsmith_index_u32(1u, 28u)]), vec3<u32>(37861u, 9257u, 4294967295u))), countOneBits(vec3<u32>(1u, u_input.b, 48628u)), u_input.a), (u_input.a & min(vec3<u32>(0u, arg_3, 4294967295u), vec3<u32>(arg_0.x, arg_3, global0.x))) << (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), ~u_input.a) % vec3<u32>(32u))));
    global0 = ~(vec3<u32>(~4294967295u >> (0u % 32u), arg_3, arg_3 ^ 57436u) << (min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, arg_3, 7927u), reverseBits(vec3<u32>(global0.x, 0u, 23610u))), firstTrailingBit(~vec3<u32>(arg_3, 35072u, global0.x))) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)));
    let var_2 = vec4<i32>(firstLeadingBit(-39900i), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(arg_3, 28u)], -27175i), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(46058u, 28u)], -19190i, 1i, 0i), vec4<i32>(u_input.c, global3[_wgslsmith_index_u32(u_input.a.x, 28u)], 27899i, -2147483647i)), 0i, countOneBits(-2147483647i), i32(-1i) * -21115i), ~(~(~vec4<i32>(arg_1, u_input.d, global3[_wgslsmith_index_u32(arg_3, 28u)], arg_1)))));
    return max(vec2<i32>(_wgslsmith_div_i32(-39793i, -global3[_wgslsmith_index_u32(4294967295u, 28u)]), 0i), var_2.xx);
}

fn func_5(arg_0: vec2<i32>) -> StorageBuffer {
    global0 = _wgslsmith_mod_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(58899u, 61373u, 0u), vec3<u32>(1u, u_input.b, global0.x)) ^ ~(vec3<u32>(1u, 4294967295u, global0.x) & vec3<u32>(u_input.a.x, global0.x, u_input.b))), ~u_input.a);
    global3 = array<i32, 28>();
    global3 = array<i32, 28>();
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, 2353f, -558f, 1000f), vec4<f32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -1000f, 164f, global2.a.x) * vec4<f32>(-1837f, 211f, global2.a.x, global2.a.x))))), ~_wgslsmith_div_vec2_u32(select(~vec2<u32>(global0.x, 69716u), vec2<u32>(95283u, 0u), vec2<bool>(true, true)), countOneBits(~vec2<u32>(42476u, 12031u))), ~max(vec2<u32>(abs(global0.x), ~global0.x), ~(~vec2<u32>(global0.x, global0.x))), global0.yz, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 11>();
    var var_0 = Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.x, -2286f)) * -770f)), global2.a.x));
    let var_1 = ~(~u_input.a.zz & vec2<u32>(~4294967295u, 42955u & _wgslsmith_add_u32(u_input.b, u_input.b)));
    var var_2 = -35300i;
    global3 = array<i32, 28>();
    let var_3 = (var_0.a.x > 154f) || true;
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x >> (u_input.a.x % 32u), 53792u, 22643u), reverseBits(vec3<u32>(global0.x, u_input.a.x, 7711u | u_input.b)) | (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 38779u, global0.x), vec3<u32>(1u, u_input.a.x, var_1.x)), u_input.b, global0.x << (var_1.x % 32u)) ^ vec3<u32>(25864u, var_1.x, 4294967295u))), 11u)];
    global3 = array<i32, 28>();
    let x = u_input.a;
    s_output = func_5(abs(min(vec2<i32>(2156i, global3[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec2<i32>(-1i, global3[_wgslsmith_index_u32(u_input.a.x, 28u)]) | vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.b, 28u)]))) ^ func_1(var_1, global3[_wgslsmith_index_u32(firstTrailingBit(17407u), 28u)] << (select(81234u, u_input.b, true) % 32u), _wgslsmith_f_op_f32(-global2.a.x) < global2.a.x, 33810u));
}

