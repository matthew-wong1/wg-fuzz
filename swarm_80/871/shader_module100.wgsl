struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(783f, -1543f, 1000f), 1u, vec2<i32>(33782i, -27495i), vec4<bool>(true, true, false, true), 1i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = !global2.d.x | !(!any(vec4<bool>(arg_0.d.x, arg_0.d.x, global2.d.x, global1.d.x)) && global0[_wgslsmith_index_u32(global1.b, 22u)]);
    var var_1 = vec3<i32>(global1.c.x, ~48160i, 15888i);
    let var_2 = _wgslsmith_add_u32(global1.b, ~global2.b) | (4294967295u & firstLeadingBit(abs(global1.b)));
    var_1 = vec3<i32>(0i, ~(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.c.x), global1.c))), 25469i);
    return arg_0.a;
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = array<bool, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(161f, 1000f, global1.a.x), 0u, vec2<i32>(41666i, -18576i), vec4<bool>(global1.d.x, true, false, false), 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2.a))))), 50852u, global2.c, !select(select(!global1.d, global1.d, !vec4<bool>(global0[_wgslsmith_index_u32(global2.b, 22u)], global1.d.x, true, true)), vec4<bool>(true, select(global0[_wgslsmith_index_u32(1u, 22u)], true, global1.d.x), select(true, global0[_wgslsmith_index_u32(global2.b, 22u)], global1.d.x), u_input.c.x > u_input.c.x), select(!vec4<bool>(true, global2.d.x, global1.d.x, false), global1.d, true)), global1.c.x);
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, global1.a.x, -679f))), vec3<f32>(1346f, 1044f, arg_0))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(2122f, arg_0, global2.a.x) + global1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(786f, -311f, arg_0) + vec3<f32>(464f, global1.a.x, 156f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(252f, global1.a.x, global1.d.x)), arg_0, _wgslsmith_f_op_f32(sign(global1.a.x))) * global1.a))), 28366u, firstLeadingBit(var_0.c) | abs(var_0.c), vec4<bool>(true, !(-558f <= _wgslsmith_f_op_f32(floor(920f))), false, true), abs(countOneBits(-_wgslsmith_clamp_i32(global1.e, u_input.c.x, var_0.c.x))));
    var var_1 = var_0;
    var var_2 = true;
    return !select(vec4<bool>(any(global2.d.yw), global2.d.x, any(select(global2.d.zw, var_1.d.wz, global1.d.x)), global2.b < var_1.b), var_0.d, vec4<bool>(!global2.d.x & select(false, true, var_0.d.x), global1.d.x == true, true, false));
}

fn func_1(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = select(select(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a.x, global2.a.x)) - global1.a.x)), !global2.d, true), !select(vec4<bool>(true, true, any(vec2<bool>(global2.d.x, true)), true), select(vec4<bool>(global1.d.x, global0[_wgslsmith_index_u32(u_input.b, 22u)], global1.d.x, arg_0.x), global2.d, true), any(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]))), global2.d);
    var var_1 = max(_wgslsmith_mod_u32(select(~global1.b, 27280u, !(false & global2.d.x)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(21372u, global1.b, 19619u), vec3<u32>(13742u, global1.b, 1u))), 0u);
    return func_2(_wgslsmith_f_op_f32(-585f - -294f));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.a.x, -481f))), _wgslsmith_div_f32(arg_0.a.x, -1000f), 277f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_vec3_f32(func_3(arg_0)).x)), vec4<f32>(global2.a.x, -750f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)) - arg_0.a.x), arg_0.a.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, global2.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x))))));
    var var_1 = _wgslsmith_div_vec3_f32(global1.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-399f, arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-233f, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, global1.a.x) + _wgslsmith_f_op_f32(step(-1000f, var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = global2.d.x;
    var var_4 = abs(-1i);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 22>();
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(828f, 138f, 287f), vec3<f32>(global1.a.x, 1301f, global1.a.x))))), global2.b, ~global2.c, func_1(global1.d.yx), global2.e));
    global2 = Struct_1(vec3<f32>(-1782f, global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(1000f - global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x * 463f) + -412f), func_2(_wgslsmith_f_op_f32(f32(-1f) * -813f)).x))), max(~(u_input.b | global2.b) ^ firstLeadingBit(32073u), max(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 19700u, 48226u, 4294967295u), vec4<u32>(0u, 0u, global2.b, 10104u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(23479u, global1.b) >> (vec2<u32>(u_input.b, global1.b) % vec2<u32>(32u))))), vec2<i32>(_wgslsmith_clamp_i32(1i, var_0, 1963i), -2147483647i), global2.d, _wgslsmith_add_i32(abs(9630i), u_input.a));
    let var_1 = -(~(-(~vec4<i32>(0i, 23236i, var_0, -36874i))) & _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global1.e, -2147483647i, -1i, global1.e), vec4<i32>(var_0, -544i, global2.e, 9544i)), firstLeadingBit(-vec4<i32>(11295i, -5688i, -12839i, u_input.a))));
    var var_2 = global1.d.x;
    let var_3 = Struct_1(global1.a, global2.b, ~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(select(global1.c, u_input.c.zx, global1.d.zz), _wgslsmith_mult_vec2_i32(global2.c, vec2<i32>(var_0, var_0))), vec2<i32>(_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(var_0, global1.c.x, u_input.c.x, 34155i)), _wgslsmith_sub_i32(var_0, 1i))), vec4<bool>(any(vec4<bool>(958f == global1.a.x, true, true, true)), true, global1.d.x && global2.d.x, select(abs(global1.b), 0u, true) < 0u), countOneBits(0i));
    var var_4 = (_wgslsmith_dot_vec2_i32(-global2.c ^ vec2<i32>(1i, -56847i), ~vec2<i32>(var_1.x, -30166i)) << (reverseBits(_wgslsmith_div_u32(~64497u, global1.b)) % 32u)) >> (firstLeadingBit(u_input.b) % 32u);
    var var_5 = _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 0u) << (vec2<u32>(global2.b, var_3.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 34226u), firstTrailingBit(vec2<u32>(u_input.b, 1u))))), min(~(reverseBits(vec2<u32>(global2.b, 66777u)) >> (~vec2<u32>(0u, u_input.b) % vec2<u32>(32u))), select(vec2<u32>(max(29285u, global2.b), ~0u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(90334u, global1.b)), 1u), select(vec2<bool>(true, false), select(vec2<bool>(global0[_wgslsmith_index_u32(global1.b, 22u)], false), vec2<bool>(false, global2.d.x), false), func_1(vec2<bool>(global1.d.x, global2.d.x)).xw))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32((~vec3<u32>(u_input.b, global2.b, var_5.x) ^ vec3<u32>(50109u, 5459u, var_5.x)) << ((~vec3<u32>(u_input.b, var_5.x, var_5.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(27272u, global1.b, 0u), vec3<u32>(global1.b, global1.b, var_3.b))) % vec3<u32>(32u)), abs(select(vec3<u32>(0u, 0u, global2.b), vec3<u32>(var_3.b, global1.b, var_3.b), global2.d.wzy) | countOneBits(vec3<u32>(1u, global2.b, global1.b)))), ~(~0i), var_1);
}

