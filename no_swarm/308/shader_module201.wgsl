struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<u32, 7> = array<u32, 7>(0u, 48545u, 1u, 4294967295u, 0u, 25724u, 59769u);

var<private> global2: vec3<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = select(vec3<bool>(any(vec2<bool>(true, true)), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), false)), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)], abs(global1[_wgslsmith_index_u32(1u, 7u)]), 1619u) <= _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(106354u, 7u)], 7u)], 7u)])), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 1u)))), vec3<bool>(true, true, true), true || !any(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_f32(334f + 387f);
    var var_2 = ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39117u, 7u)], 7u)], 7u)];
    var var_3 = vec3<bool>(var_0.x, var_0.x, var_0.x);
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~1u & _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(5937u, 7u)], 4587u)), global1[_wgslsmith_index_u32(100189u, 7u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9316u, 7u)], 7u)]), vec2<u32>(global1[_wgslsmith_index_u32(1u, 7u)], 63092u), true), vec2<u32>(global1[_wgslsmith_index_u32(1u, 7u)], 1u)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(33490u, 7u)]), 7u)] | countOneBits(0u))), vec3<u32>(8068u, firstLeadingBit(~1903u), 1u & global1[_wgslsmith_index_u32(1u, 7u)]) >> (~vec3<u32>(1u, ~1u, 7228u) % vec3<u32>(32u))), 6u)];
    return _wgslsmith_add_vec2_i32(~u_input.a, vec2<i32>(~1i, -16801i));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.c, ~8357u), arg_0.c), 6u)];
    let var_1 = ~(~_wgslsmith_sub_u32(1u | ~global1[_wgslsmith_index_u32(60695u, 7u)], countOneBits(var_0.c << (20322u % 32u))));
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    return !vec4<bool>(false, !arg_2, all(!vec4<bool>(arg_2, false, true, false)), select(select(arg_2, true, true), all(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, false), arg_2)), !(!arg_2)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = all(vec3<bool>(true, false, true));
    global1 = array<u32, 7>();
    let var_1 = firstTrailingBit(u_input.c);
    let var_2 = Struct_1(74212i, vec4<i32>(-reverseBits(global2.x >> (4294967295u % 32u)), global2.x, global2.x, _wgslsmith_div_i32(-52612i, ~firstLeadingBit(arg_0.b.x))), ~4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.d))), arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.e, _wgslsmith_div_f32(-1080f, arg_0.d.x))))));
    var_0 = !(_wgslsmith_f_op_f32(-arg_0.d.x) <= _wgslsmith_f_op_f32(step(920f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1699f * -336f) - -238f))));
    return !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), !func_4(Struct_1(52675i, vec4<i32>(-40113i, -22531i, var_1.x, arg_0.a), 79137u, var_2.d, var_2.d.x), func_3(), all(vec4<bool>(false, true, true, false))));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_1(-_wgslsmith_dot_vec3_i32(-u_input.b.xzz, select(vec3<i32>(u_input.b.x, global2.x, -12917i), u_input.c, false) >> (vec3<u32>(29533u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 0u) % vec3<u32>(32u))), select(vec4<i32>(countOneBits(2147483647i), u_input.b.x, -u_input.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global2.zz, vec2<i32>(-57430i, u_input.b.x)), 0i)), firstLeadingBit(u_input.b), func_2(Struct_1(_wgslsmith_sub_i32(global2.x, 46136i), -u_input.b, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 132f, arg_0.x)), arg_0.x))), 70776u, arg_0, arg_0.x);
    global2 = ~_wgslsmith_div_vec3_i32(vec3<i32>(~(~var_0.b.x), min(var_0.a, 6578i), ~(-36366i)), vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(global2.x, var_0.b.x)), 2147483647i, _wgslsmith_dot_vec3_i32(u_input.b.xyw ^ var_0.b.wzy, u_input.c)));
    let var_1 = true;
    global0 = array<Struct_1, 6>();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -289f, -342f, 885f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(561f, -715f, -916f, 418f) + vec4<f32>(-1845f, arg_0.x, 228f, var_0.e))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, -140f, -1100f, var_0.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, -257f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(round(2530f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.d.x, 936f, 950f) + vec4<f32>(var_0.e, arg_0.x, arg_0.x, 325f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, 467f, 138f, var_0.e))))));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(502f + 385f), _wgslsmith_f_op_f32(-856f + 1164f))))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-794f + -620f)))) * 1351f) - 227f);
    var var_2 = global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(0u, abs(select(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 7u)], 7u)], var_1 == 390f))), global1[_wgslsmith_index_u32(min(abs(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(56098u, 7u)]) | (4294967295u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)]), 7u)]), _wgslsmith_mult_u32(1u, ~_wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32226u, 7u)], 7u)]))), 7u)]), 6u)];
    global0 = array<Struct_1, 6>();
    global2 = -firstLeadingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.b.x, 2147483647i, global2.x), max(vec3<i32>(5463i, -2147483647i, var_2.a), var_2.b.yyw)), -(~vec3<i32>(u_input.a.x, -1i, 10617i)), var_2.b.zyw));
    let var_3 = ~global2.x >> (~_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.c, 7u)], 7u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)] % 32u), 7u)], select(var_2.c, 0u, false)), 7523u) % 32u);
    var var_4 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_add_u32(var_2.c, 1u)) ^ firstLeadingBit(vec2<u32>(73079u, var_2.c)), vec2<u32>(_wgslsmith_add_u32(var_2.c, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.c), vec2<u32>(7031u, 90089u))) >> (abs(~vec2<u32>(var_2.c, global1[_wgslsmith_index_u32(1u, 7u)])) % vec2<u32>(32u)));
    global2 = _wgslsmith_sub_vec3_i32(min(u_input.c, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 0i), var_2.b.xzy), _wgslsmith_clamp_vec3_i32(u_input.b.xyy, var_2.b.xwx, u_input.b.yxy))), abs(-abs(u_input.b.xxx))) >> (reverseBits(abs(_wgslsmith_div_vec3_u32(~vec3<u32>(var_2.c, var_4.x, var_4.x), vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_4.x, 7u)], 7u)], var_2.c)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-383f, var_2.e), 1526f, var_2.d.x, _wgslsmith_f_op_f32(func_1(var_2.d)))))), ~vec2<u32>(1u, 1u), vec4<f32>(var_2.d.x, 386f, -1603f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.e)))))));
}

